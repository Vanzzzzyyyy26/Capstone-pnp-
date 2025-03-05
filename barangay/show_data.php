<?php
// Include your database connection file
include 'db_conn.php'; // Adjust filename if different
include '../connection/dbconn.php';
include '../includes/bypass.php';

// Start session if not already started
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// Fetch barangay name from session
$barangay_name = $_SESSION['barangay_name'] ?? '';

try {
    // SQL Query to fetch users who registered under a specific barangay
    $sql = "SELECT u.first_name, u.middle_name, u.last_name, u.cp_number 
            FROM tbl_users u
            JOIN tbl_users_barangay ub ON u.barangays_id = ub.barangays_id
            WHERE ub.barangay_name = :barangay_name";

    $stmt = $pdo->prepare($sql); // Assuming $pdo is in db_conn.php
    $stmt->bindParam(':barangay_name', $barangay_name, PDO::PARAM_STR);
    $stmt->execute();

    // Fetch all results as an associative array
    $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    die("Error fetching data: " . $e->getMessage());
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Users Registered in Barangay</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { padding: 10px; border: 1px solid #ddd; text-align: left; }
        th { background-color: #f4f4f4; }
    </style>
</head>
<body>

    <h2>Users Registered in Barangay: <?= htmlspecialchars($barangay_name) ?></h2>
    <table>
        <thead>
            <tr>
                <th>First Name</th>
                <th>Middle Name</th>
                <th>Last Name</th>
                <th>Contact Number</th>
            </tr>
        </thead>
        <tbody>
            <?php if (!empty($users)): ?>
                <?php foreach ($users as $user): ?>
                    <tr>
                        <td><?= htmlspecialchars($user['first_name']) ?></td>
                        <td><?= htmlspecialchars($user['middle_name']) ?></td>
                        <td><?= htmlspecialchars($user['last_name']) ?></td>
                        <td><?= htmlspecialchars($user['cp_number']) ?></td>
                    </tr>
                <?php endforeach; ?>
            <?php else: ?>
                <tr><td colspan="4">No records found.</td></tr>
            <?php endif; ?>
        </tbody>
    </table>

</body>
</html>
