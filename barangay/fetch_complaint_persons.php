<?php
require_once '../connection/dbconn.php';

if (isset($_POST['category_id']) && isset($_POST['barangay_name'])) {
    $categoryId = $_POST['category_id'];
    $barangayName = $_POST['barangay_name'];

    $stmt = $pdo->prepare("
        SELECT complaint_name, complaints_person, date_filed
        FROM tbl_complaints
        WHERE category_id = :category_id
        AND barangay_saan = :barangay_saan
        ORDER BY date_filed DESC
    ");
    $stmt->bindParam(':category_id', $categoryId, PDO::PARAM_INT);
    $stmt->bindParam(':barangay_saan', $barangayName, PDO::PARAM_STR);
    $stmt->execute();
    $complaints = $stmt->fetchAll(PDO::FETCH_ASSOC);

    if ($complaints) {
        echo '<table class="table table-bordered table-hover bg-white text-center">';
        echo '<thead class="table-light">';
        echo '<tr><th>#</th><th>Complainant Name</th><th>Complaint Person</th><th>Date Filed</th></tr>';
        echo '</thead><tbody>';

        $count = 1;
        foreach ($complaints as $row) {
            echo '<tr>';
            echo '<td>' . $count++ . '</td>';
            echo '<td>' . htmlspecialchars($row['complaint_name']) . '</td>';
            echo '<td>' . htmlspecialchars($row['complaints_person']) . '</td>';
            echo '<td>' . date("F d, Y", strtotime($row['date_filed'])) . '</td>';
            echo '</tr>';
        }

        echo '</tbody></table>';
    } else {
        echo '<div class="alert alert-warning text-center">No complaint persons found for this category.</div>';
    }
} else {
    echo '<div class="alert alert-danger text-center">Invalid request!</div>';
}
?>
