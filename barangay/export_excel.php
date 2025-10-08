<?php
session_start();
require_once '../connection/dbconn.php';
require './vendor/autoload.php';

use Dompdf\Dompdf;
use Dompdf\Options;

if (!isset($_SESSION['barangay_name'])) {
    echo "Unauthorized access.";
    exit;
}

$barangayName = $_SESSION['barangay_name'];
$firstName = $_SESSION['first_name'] ?? '';
$middleName = $_SESSION['middle_name'] ?? '';
$lastName = $_SESSION['last_name'] ?? '';
$fullName = trim("$firstName $middleName $lastName");

// Get filters
$fromDate = $_GET['from_date'] ?? null;
$toDate   = $_GET['to_date'] ?? null;
$category = $_GET['category'] ?? null;

// Build SQL query
$sql = "
    SELECT 
        c.complaints_category, 
        COUNT(*) AS complaint_count
    FROM tbl_complaints comp
    JOIN tbl_complaintcategories c ON comp.category_id = c.category_id
    WHERE comp.barangay_saan = :barangay_name
";

// Filter by selected category if provided
if (!empty($category)) {
    $sql .= " AND comp.category_id = :category_id";
}

// Add date filters
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
if (!empty($category)) {
    $stmt->bindParam(':category_id', $category, PDO::PARAM_INT);
}
if ($fromDate) {
    $stmt->bindParam(':from_date', $fromDate, PDO::PARAM_STR);
}
if ($toDate) {
    $stmt->bindParam(':to_date', $toDate, PDO::PARAM_STR);
}
$stmt->execute();
$complaints = $stmt->fetchAll(PDO::FETCH_ASSOC);

$totalComplaints = array_sum(array_column($complaints, 'complaint_count'));

// Report period text
$reportPeriod = '';
if ($fromDate && $toDate) {
    $from = date('F Y', strtotime($fromDate));
    $to = date('F Y', strtotime($toDate));
    $reportPeriod = ($from === $to) ? "Report for $from" : "Report from $from to $to";
} elseif ($fromDate) {
    $from = date('F Y', strtotime($fromDate));
    $reportPeriod = "Report from $from onwards";
} elseif ($toDate) {
    $to = date('F Y', strtotime($toDate));
    $reportPeriod = "Report until $to";
}

// Build HTML for PDF
$html = "<h2>Complaint Report for Barangay: " . htmlspecialchars($barangayName) . "</h2>";

if (!empty($category)) {
    // Show selected category name
    $stmtCat = $pdo->prepare("SELECT complaints_category FROM tbl_complaintcategories WHERE category_id = :category_id");
    $stmtCat->bindParam(':category_id', $category, PDO::PARAM_INT);
    $stmtCat->execute();
    $categoryName = $stmtCat->fetchColumn();
    $html .= "<h3>Category: " . htmlspecialchars($categoryName) . "</h3>";
}

$html .= "<p><strong>$reportPeriod</strong></p>";
$html .= "<table border='1' cellpadding='8' cellspacing='0' width='100%'>";
$html .= "<tr><th>Complaint Category</th><th>Total Complaints</th></tr>";

foreach ($complaints as $row) {
    $html .= "<tr>";
    $html .= "<td>" . htmlspecialchars($row['complaints_category']) . "</td>";
    $html .= "<td>" . htmlspecialchars($row['complaint_count']) . "</td>";
    $html .= "</tr>";
}

$html .= "<tr><td><strong>Total</strong></td><td><strong>$totalComplaints</strong></td></tr>";
$html .= "</table>";

$html .= "<br><br><p><strong>Prepared by:</strong><br>$fullName</p>";

// Initialize Dompdf
$options = new Options();
$options->set('isHtml5ParserEnabled', true);
$options->set('isRemoteEnabled', true);

$dompdf = new Dompdf($options);
$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'portrait');
$dompdf->render();
$dompdf->stream("Complaint_Report_" . date('Ymd') . ".pdf", ["Attachment" => true]);
exit;

?>
