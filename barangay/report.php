<?php
session_start();
require_once '../connection/dbconn.php';



$firstName = $_SESSION['first_name'] ?? '';
$middleName = $_SESSION['middle_name'] ?? '';
$lastName = $_SESSION['last_name'] ?? '';
$extensionName = $_SESSION['extension_name'] ?? '';
$cp_number = $_SESSION['cp_number'] ?? '';
$barangay_name = $_SESSION['barangay_name'] ?? '';
$barangay_saan = $_SESSION['barangay_saan'] ?? '';
$pic_data = $_SESSION['pic_data'] ?? '';

if (!isset($_SESSION['barangay_name'])) {
    echo "Unauthorized access.";
    exit;
}

$barangayName = $_SESSION['barangay_name'];

$fromDate = $_GET['from_date'] ?? null;
$toDate = $_GET['to_date'] ?? null;

$sql = "
    SELECT 
        c.complaints_category, 
        COUNT(*) AS complaint_count
    FROM tbl_complaints comp
    JOIN tbl_complaintcategories c ON comp.category_id = c.category_id
    WHERE comp.barangay_saan = :barangay_name
";

if ($fromDate && $toDate) {
    $sql .= " AND comp.date_filed BETWEEN :from_date AND :to_date";
} elseif ($fromDate) {
    $sql .= " AND comp.date_filed >= :from_date";
} elseif ($toDate) {
    $sql .= " AND comp.date_filed <= :to_date";
}

$sql .= " GROUP BY c.complaints_category ORDER BY c.complaints_category";

$stmt = $pdo->prepare($sql);
$stmt->bindParam(':barangay_name', $barangayName, PDO::PARAM_STR);
if ($fromDate) {
    $stmt->bindParam(':from_date', $fromDate, PDO::PARAM_STR);
}
if ($toDate) {
    $stmt->bindParam(':to_date', $toDate, PDO::PARAM_STR);
}
$stmt->execute();
$complaints = $stmt->fetchAll(PDO::FETCH_ASSOC);

$totalComplaints = array_sum(array_column($complaints, 'complaint_count'));

// Summary label logic
$reportPeriod = '';
if ($fromDate && $toDate) {
    $from = date('F Y', strtotime($fromDate));
    $to = date('F Y', strtotime($toDate));
    $reportPeriod = ($from === $to) ? "The Summary Report for $from" : "The Summary Report from $from to $to";
} elseif ($fromDate) {
    $from = date('F Y', strtotime($fromDate));
    $reportPeriod = "The Summary Report from $from onwards";
} elseif ($toDate) {
    $to = date('F Y', strtotime($toDate));
    $reportPeriod = "The Summary Report until $to";
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Complaint Report - Barangay</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
      <!-- Bootstrap CSS -->
      <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../styles/style.css">
</head>
<body class="bg-light">

<style>
    .navbar{
  background-color: #082759;

}



</style>

<?php 

include '../includes/navbar.php';
include '../includes/sidebar.php';
include '../includes/edit-profile.php';
?>
 <div class="content">
    <div class="container py-4">

    <div class="card shadow" style="border-radius: 3rem ;">
    <div class="card-body">

                <h2 class="mb-4 text-center">
                    Complaint Report for Barangay: <strong><?= htmlspecialchars($barangayName) ?></strong>
                </h2>

                <!-- Filter Form -->
                <form method="get" action="" class="mb-3">
                    <div class="row justify-content-center">
                        <div class="col-md-3">
                            <label for="from_date" class="form-label">From Date</label>
                            <input type="date" id="from_date" name="from_date" class="form-control"
                                value="<?= isset($_GET['from_date']) ? htmlspecialchars($_GET['from_date']) : '' ?>"
                                onchange="this.form.submit()">
                        </div>
                        <div class="col-md-3">
                            <label for="to_date" class="form-label">To Date</label>
                            <input type="date" id="to_date" name="to_date" class="form-control"
                                value="<?= isset($_GET['to_date']) ? htmlspecialchars($_GET['to_date']) : '' ?>"
                                onchange="this.form.submit()">
                        </div>
                    </div>
                </form>

                <!-- Export to Excel Button -->
                <form method="get" action="export_excel.php" class="text-end mb-3">
                    <input type="hidden" name="from_date" value="<?= htmlspecialchars($fromDate) ?>">
                    <input type="hidden" name="to_date" value="<?= htmlspecialchars($toDate) ?>">
<center><button type="submit" class="btn btn-primary">
                        Export to Word
                    </button></center>
                </form>

                <!-- Summary Header -->
                <?php if ($reportPeriod): ?>
                    <h4 class="text-center mb-3 text-primary"><?= $reportPeriod ?></h4>
                <?php endif; ?>

                <!-- Complaints Table -->
                <?php if ($complaints): ?>
                    <div class="d-flex justify-content-center">
                        <div class="table-responsive" style="max-width: 700px; width: 100%;">
                        <table class="table table-bordered table-hover bg-white text-center">
    <thead class="table-light">
        <tr>
            <th>#</th> <!-- New Column -->
            <th>Complaint Category</th>
            <th>Total Complaints</th>
        </tr>
    </thead>
    <tbody>
        <?php 
        $count = 1;
        foreach ($complaints as $row): ?>
            <tr>
                <td><?= $count++ ?></td> <!-- Row number -->
                <td><?= htmlspecialchars($row['complaints_category']) ?></td>
                <td><?= htmlspecialchars($row['complaint_count']) ?></td>
            </tr>
        <?php endforeach; ?>
        <tr class="fw-bold table-secondary">
            <td colspan="2">Total</td>
            <td><?= $totalComplaints ?></td>
        </tr>
    </tbody>
</table>

                        </div>
                    </div>
                <?php else: ?>
                    <div class="alert alert-warning text-center">
                        No complaints found for Barangay <?= htmlspecialchars($barangayName) ?>.
                    </div>
                <?php endif; ?>

            </div>
        </div>

    </div>
</div>



</body>
</html>
<script src="../scripts/script.js"></script>
