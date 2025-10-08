<?php
session_start();  // ✅ VERY IMPORTANT
require_once '../connection/dbconn.php';
require './vendor/autoload.php';

use Dompdf\Dompdf;
use Dompdf\Options;

if (!isset($_GET['category_id']) || !isset($_GET['category_name'])) {
    die("Invalid request."); // ✅ Safety check
}

$categoryId = $_GET['category_id'];
$categoryName = $_GET['category_name'];
$barangayName = $_SESSION['barangay_name'] ?? '';

if (empty($barangayName)) {
    die("Barangay name not found in session.");
}

// ✅ Fetch complaint persons
$stmt = $pdo->prepare("
    SELECT complaint_name, complaints_person, date_filed
    FROM tbl_complaints
    WHERE category_id = :category_id
    AND barangay_saan = :barangay_name
");
$stmt->execute([
    'category_id' => $categoryId,
    'barangay_name' => $barangayName
]);
$complaints = $stmt->fetchAll(PDO::FETCH_ASSOC);

// ✅ Dompdf config
$options = new Options();
$options->set('isRemoteEnabled', true);
$dompdf = new Dompdf($options);

$html = '
<style>
body { font-family: Arial, sans-serif; font-size: 12px; }
h2 { text-align: center; color: #333; }
table { width: 100%; border-collapse: collapse; margin-top: 10px; }
th, td { border: 1px solid #666; padding: 8px; text-align: center; }
th { background-color: #f1f1f1; }
</style>

<h2>Complaint Persons - ' . htmlspecialchars($categoryName) . '</h2>
<h4>Barangay: ' . htmlspecialchars($barangayName) . '</h4>
<table>
<thead>
<tr>
    <th>#</th>
    <th>Complaint Name</th>
    <th>Complainant</th>
    <th>Date Filed</th>
</tr>
</thead>
<tbody>';

if ($complaints) {
    $count = 1;
    foreach ($complaints as $row) {
        $html .= '<tr>
            <td>' . $count++ . '</td>
            <td>' . htmlspecialchars($row['complaint_name']) . '</td>
            <td>' . htmlspecialchars($row['complaints_person']) . '</td>
            <td>' . htmlspecialchars(date("F d, Y", strtotime($row['date_filed']))) . '</td>
        </tr>';
    }
} else {
    $html .= '<tr><td colspan="4">No complaint records found.</td></tr>';
}

$html .= '</tbody></table>';

$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'portrait');
$dompdf->render();

// ✅ Open PDF in browser
$dompdf->stream("complaints_list.pdf", ["Attachment" => false]);
?>
