<?php
session_start();
include 'connection/dbconn.php';
require_once 'vendor/autoload.php';

// Allowed security questions (use only these)
$security_questions = [
    "What was your childhood nickname?",
    "What is the name of your first pet?",
    "What was the make and model of your first car?"
];

// OTP helper
function generateOTP($length = 6) {
    $otp = '';
    for ($i = 0; $i < $length; $i++) {
        $otp .= mt_rand(0, 9);
    }
    return $otp;
}

function sendOTP($number, $otp) {
    $ch = curl_init();
    $parameters = array(
    'apikey' => '0a1c1d98b58a36653a8b7c1486b78786', // Replace with actual API key
        'number' => $number, 
        'message' => "Your One Time Password  code is: $otp",
        'sendername' => 'Copwatch'
    );

    curl_setopt($ch, CURLOPT_URL, 'https://semaphore.co/api/v4/messages');
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($parameters));
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    $output = curl_exec($ch);
    curl_close($ch);

    return $output;
}

// Initialize variables
$cp_number = $new_password = $confirm_password = $security_answer = $chosen_question = "";
$cp_number_err = $new_password_err = $confirm_password_err = $security_answer_err = $chosen_question_err = $otp_err = "";
$message = "";
$step = $_GET['step'] ?? 1;
$show_success = false;
$success_message = "";

// Handle Step 1: submit phone number and send OTP (redirect to step=2)
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['submit_cp_number'])) {
    $cp_number = trim($_POST['cp_number'] ?? '');
    if ($cp_number === '') {
        $cp_number_err = "Please enter your phone number.";
    } else {
        // Fetch user record
        $stmt = $pdo->prepare("SELECT user_id, security_question FROM tbl_users WHERE cp_number = ?");
        $stmt->execute([$cp_number]);
        $user = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($user) {
            // Save necessary info in session
            $_SESSION['fp_user_id'] = $user['user_id'];
            $_SESSION['fp_cp_number'] = $cp_number;
            $_SESSION['fp_security_question'] = $user['security_question'];

            // generate OTP, store hashed OTP and expiry in session
            $otp = generateOTP(6);
            $_SESSION['fp_otp_hash'] = password_hash($otp, PASSWORD_DEFAULT);
            $_SESSION['fp_otp_expires'] = time() + 300; // 5 minutes
            $_SESSION['fp_otp_attempts'] = 0;

            // send OTP SMS (non-blocking: you can log $output)
            $sms_output = sendOTP($cp_number, $otp);

            // redirect to OTP entry
            header("Location: forgot-password.php?step=2");
            exit();
        } else {
            $cp_number_err = "Phone number not found!";
        }
    }
}

// Handle Step 2: verify OTP
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['submit_otp'])) {
    $entered_otp = trim($_POST['otp'] ?? '');
    $user_id = $_SESSION['fp_user_id'] ?? null;

    if (!$user_id) {
        $_SESSION['fp_error'] = "Session expired. Please start again.";
        header("Location: forgot-password.php");
        exit();
    }

    // check expiry
    if (empty($_SESSION['fp_otp_hash']) || empty($_SESSION['fp_otp_expires']) || time() > $_SESSION['fp_otp_expires']) {
        $otp_err = "OTP expired. Please request a new one.";
    } else {
        $_SESSION['fp_otp_attempts'] = ($_SESSION['fp_otp_attempts'] ?? 0) + 1;
        if ($_SESSION['fp_otp_attempts'] > 5) {
            $otp_err = "Too many attempts. Please try again later.";
        } else {
            if (password_verify($entered_otp, $_SESSION['fp_otp_hash'])) {
                // OTP verified
                unset($_SESSION['fp_otp_hash'], $_SESSION['fp_otp_expires'], $_SESSION['fp_otp_attempts']);
                $_SESSION['fp_otp_verified'] = true;
                header("Location: forgot-password.php?step=3");
                exit();
            } else {
                $otp_err = "Incorrect OTP. Please try again.";
            }
        }
    }
}

// Handle Step 3: verify chosen question + answer and update password
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['submit_answers'])) {
    // Ensure OTP was verified
    if (empty($_SESSION['fp_otp_verified'])) {
        $_SESSION['fp_error'] = "OTP not verified. Please start again.";
        header("Location: forgot-password.php");
        exit();
    }

    // Retrieve user id and stored question from session
    $user_id = $_SESSION['fp_user_id'] ?? null;
    $stored_question = $_SESSION['fp_security_question'] ?? null;

    if (!$user_id || !$stored_question) {
        $_SESSION['fp_error'] = "Session expired. Please start again.";
        header("Location: forgot-password.php");
        exit();
    }

    $chosen_question = trim($_POST['chosen_question'] ?? '');
    $security_answer = trim($_POST['security_answer'] ?? '');
    $new_password = trim($_POST['new_password'] ?? '');
    $confirm_password = trim($_POST['confirm_password'] ?? '');

    // Validate inputs
    if ($chosen_question === '') {
        $chosen_question_err = "Please choose the security question you set.";
    } elseif ($chosen_question !== $stored_question) {
        $chosen_question_err = "Selected question does not match our records.";
    }

    if ($security_answer === '') {
        $security_answer_err = "Please answer the security question.";
    }
    if ($new_password === '') {
        $new_password_err = "Please enter a new password.";
    } elseif (strlen($new_password) < 8) {
        $new_password_err = "Password must have at least 8 characters.";
    }
    if ($new_password !== $confirm_password) {
        $confirm_password_err = "Passwords do not match.";
    }

    if (empty($chosen_question_err) && empty($security_answer_err) && empty($new_password_err) && empty($confirm_password_err)) {
        try {
            // Fetch stored security answer for this user
            $stmt_check = $pdo->prepare("SELECT security_answer FROM tbl_users WHERE user_id = ?");
            $stmt_check->execute([$user_id]);
            $user = $stmt_check->fetch(PDO::FETCH_ASSOC);

            if ($user) {
                $stored_answer = $user['security_answer'];

                // Support either hashed or plain-text stored answers:
                $answer_matches = false;
                if (!empty($stored_answer)) {
                    if (password_get_info($stored_answer)['algo'] !== 0) {
                        $answer_matches = password_verify($security_answer, $stored_answer);
                    } else {
                        $answer_matches = (mb_strtolower(trim($security_answer)) === mb_strtolower(trim($stored_answer)));
                    }
                }

                if ($answer_matches) {
                    // Update password
                    $hashedPassword = password_hash($new_password, PASSWORD_DEFAULT);
                    $stmt_update = $pdo->prepare("UPDATE tbl_users SET password = ? WHERE user_id = ?");
                    if ($stmt_update->execute([$hashedPassword, $user_id])) {
                        // Clear session keys used for reset
                        unset($_SESSION['fp_user_id'], $_SESSION['fp_cp_number'], $_SESSION['fp_security_question'], $_SESSION['fp_security_options'], $_SESSION['fp_otp_verified']);
                        // Show SweetAlert success and redirect (handled in page output)
                        $show_success = true;
                        $success_message = "Password reset successful. Redirecting to login...";
                        // do not redirect immediately with header(); JS will redirect after alert
                    } else {
                        $message = "<div class='alert alert-danger'>Failed to update password. Please try again later.</div>";
                    }
                } else {
                    $security_answer_err = "Incorrect security answer!";
                }
            } else {
                $message = "<div class='alert alert-danger'>User not found. Start again.</div>";
            }
        } catch (PDOException $e) {
            $message = "<div class='alert alert-danger'>Database Error: " . htmlspecialchars($e->getMessage()) . "</div>";
        }
    }
}

// Determine step by session if needed
if (!isset($_GET['step']) && isset($_SESSION['fp_security_question']) && !empty($_SESSION['fp_otp_verified'])) {
    $step = 3;
} elseif (!isset($_GET['step']) && isset($_SESSION['fp_security_question'])) {
    // If OTP not verified but session has security_question, default to step 2
    $step = 2;
} else {
    $step = (int)$step;
}

// Use options saved in session (from step 1) or default list
$security_options = $_SESSION['fp_security_options'] ?? $security_questions;
$security_question = $_SESSION['fp_security_question'] ?? "";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Reset Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { display:flex; justify-content:center; align-items:center; min-height:100vh; background:#f8f9fa; }
        .container { max-width:600px; width:100%; padding:20px; background:#fff; border-radius:2rem; box-shadow:0 0 10px rgba(0,0,0,0.1); }
          body {
            background-image: url('reg/poles.jpg');
            background-size: cover;
            background-position: center top;
            background-repeat: no-repeat;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: whitesmoke;
        }
   

         .container h1 {
            margin-bottom: 1rem;
            font-size: 1.5rem;
            color: #333;
            text-align: center;
        }

        .input-group-text {
            background-color: transparent;
           
        }

        .input-group-text i {
            color: #5bc0de; 
        }
   </style>
</head>
<body>
<div class="container">
    <h1 class="text-center mb-4">Reset Password</h1>

    <?php if (!empty($_SESSION['fp_error'])) { echo "<div class='alert alert-warning'>".htmlspecialchars($_SESSION['fp_error'])."</div>"; unset($_SESSION['fp_error']); } ?>
    <?php if ($message) echo $message; ?>

    <?php if ($step === 1): ?>
        <!-- Step 1: Enter CP number -->
        <form method="post" novalidate>
            <div class="mb-3">
                <label for="cp_number" class="form-label">CP Number</label>
                <input type="text" id="cp_number" name="cp_number" class="form-control <?php echo (!empty($cp_number_err)) ? 'is-invalid' : ''; ?>" value="<?php echo htmlspecialchars($cp_number); ?>" required>
                <div class="invalid-feedback"><?php echo $cp_number_err; ?></div>
            </div>
            <button type="submit" name="submit_cp_number" class="btn btn-primary w-100">Send OTP</button>
        </form>

    <?php elseif ($step === 2): ?>
        <!-- Step 2: Enter OTP -->
        <form method="post" novalidate>
            <div class="mb-3">
                <label for="otp" class="form-label">Enter OTP (sent via SMS)</label>
                <input type="text" id="otp" name="otp" class="form-control <?php echo (!empty($otp_err)) ? 'is-invalid' : ''; ?>" required>
                <div class="invalid-feedback"><?php echo $otp_err; ?></div>
            </div>
            <div class="d-grid gap-2">
                <button type="submit" name="submit_otp" class="btn btn-primary">Verify OTP</button>
                <a href="forgot-password.php?step=1" class="btn btn-link">Start over</a>
            </div>
        </form>

    <?php elseif ($step === 3 && $security_question): ?>
        <!-- Step 3: Choose question + reset password -->
        <form method="post" novalidate>
            <div class="mb-3">
                <label class="form-label">Choose the security question you set</label>
                <?php foreach ($security_options as $idx => $opt): ?>
                    <div class="form-check mb-2">
                        <input class="form-check-input <?php echo (!empty($chosen_question_err)) ? 'is-invalid' : ''; ?>" type="radio" name="chosen_question" id="q_<?php echo $idx; ?>" value="<?php echo htmlspecialchars($opt); ?>" <?php echo ($chosen_question === $opt) ? 'checked' : ''; ?>>
                        <label class="form-check-label" for="q_<?php echo $idx; ?>">
                            <?php echo htmlspecialchars($opt); ?>
                        </label>
                    </div>
                <?php endforeach; ?>
                <?php if ($chosen_question_err): ?>
                    <div class="text-danger small"><?php echo $chosen_question_err; ?></div>
                <?php endif; ?>
            </div>

            <div class="mb-3">
                <label for="security_answer" class="form-label">Answer</label>
                <input type="text" id="security_answer" name="security_answer" class="form-control <?php echo (!empty($security_answer_err)) ? 'is-invalid' : ''; ?>" value="<?php echo htmlspecialchars($security_answer); ?>" required>
                <div class="invalid-feedback"><?php echo $security_answer_err; ?></div>
            </div>

            <div class="mb-3">
                <label for="new_password" class="form-label">New Password</label>
                <input type="password" id="new_password" name="new_password" class="form-control <?php echo (!empty($new_password_err)) ? 'is-invalid' : ''; ?>" required>
                <div class="invalid-feedback"><?php echo $new_password_err; ?></div>
            </div>

            <div class="mb-3">
                <label for="confirm_password" class="form-label">Confirm New Password</label>
                <input type="password" id="confirm_password" name="confirm_password" class="form-control <?php echo (!empty($confirm_password_err)) ? 'is-invalid' : ''; ?>" required>
                <div class="invalid-feedback"><?php echo $confirm_password_err; ?></div>
            </div>

            <button type="submit" name="submit_answers" class="btn btn-primary w-100">Reset Password</button>
        </form>
    <?php else: ?>
        <div class="alert alert-warning">Invalid step. <a href="forgot-password.php">Start over</a></div>
    <?php endif; ?>
    <br>

    <button  type="submit"class="btn btn-warning w-100 "><a href="reg/login.php">Back to Login</a></button>
</div>

<!-- Include SweetAlert2 and trigger success if needed -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.2/dist/sweetalert2.all.min.js"></script>
<?php if (!empty($show_success)): ?>
<script>
    Swal.fire({
      position: "top-end",
      icon: "success",
      title: "Your work has been saved",
      showConfirmButton: false,
      timer: 1500
    }).then(() => {
        window.location.href = 'reg/login.php';
    });
</script>
<?php endif; ?>
</body>
</html>
