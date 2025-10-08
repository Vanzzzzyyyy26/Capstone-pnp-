
<?php
session_start();
require_once '../connection/dbconn.php';

// Fetch session data
$firstName     = $_SESSION['first_name'] ?? '';
$middleName    = $_SESSION['middle_name'] ?? '';
$lastName      = $_SESSION['last_name'] ?? '';
$extensionName = $_SESSION['extension_name'] ?? '';
$cp_number     = $_SESSION['cp_number'] ?? '';
$barangay_name = $_SESSION['barangay_name'] ?? '';  // ✅ Barangay is optional now
$barangay_saan = $_SESSION['barangay_saan'] ?? '';
$pic_data      = $_SESSION['pic_data'] ?? '';

$barangayName = $barangay_name; // ✅ We will allow empty barangay name

// Get filters from URL
$fromDate = $_GET['from_date'] ?? null;
$toDate   = $_GET['to_date'] ?? null;
$category = $_GET['category'] ?? '';

// Build SQL query for complaints
$sql = "
    SELECT 
        c.category_id,
        c.complaints_category, 
        COUNT(*) AS complaint_count
    FROM tbl_complaints comp
    JOIN tbl_complaintcategories c ON comp.category_id = c.category_id
    WHERE 1=1
";

// ✅ Barangay filter only if available
if (!empty($barangayName)) {
    $sql .= " AND comp.barangay_saan = :barangay_name";
}

// ✅ Date filters
if ($fromDate && $toDate) {
    $sql .= " AND comp.date_filed BETWEEN :from_date AND :to_date";
} elseif ($fromDate) {
    $sql .= " AND comp.date_filed >= :from_date";
} elseif ($toDate) {
    $sql .= " AND comp.date_filed <= :to_date";
}

// ✅ Category filter
if (!empty($category)) {
    $sql .= " AND comp.category_id = :category_id";
}

$sql .= " GROUP BY c.category_id, c.complaints_category ORDER BY c.complaints_category";

// Prepare statement
$stmt = $pdo->prepare($sql);

// ✅ Bind parameters safely
if (!empty($barangayName)) {
    $stmt->bindParam(':barangay_name', $barangayName, PDO::PARAM_STR);
}
if ($fromDate) {
    $stmt->bindParam(':from_date', $fromDate, PDO::PARAM_STR);
}
if ($toDate) {
    $stmt->bindParam(':to_date', $toDate, PDO::PARAM_STR);
}
if (!empty($category)) {
    $stmt->bindParam(':category_id', $category, PDO::PARAM_INT);
}
$stmt->execute();
$complaints = $stmt->fetchAll(PDO::FETCH_ASSOC);

// ✅ Calculate total complaints
$totalComplaints = array_sum(array_column($complaints, 'complaint_count'));

// ✅ Fetch only categories available in this barangay or overall
$sqlCategory = "
    SELECT DISTINCT c.category_id, c.complaints_category
    FROM tbl_complaints comp
    JOIN tbl_complaintcategories c ON comp.category_id = c.category_id
    WHERE 1=1
";
if (!empty($barangayName)) {
    $sqlCategory .= " AND comp.barangay_saan = :barangay_name";
}
$sqlCategory .= " ORDER BY c.complaints_category";

$stmtCategory = $pdo->prepare($sqlCategory);

if (!empty($barangayName)) {
    $stmtCategory->bindParam(':barangay_name', $barangayName, PDO::PARAM_STR);
}
$stmtCategory->execute();
$availableCategories = $stmtCategory->fetchAll(PDO::FETCH_ASSOC);

// ✅ Summary label logic
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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Complaint Summary Report</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../styles/style.css">
</head>
<body class="bg-light">

<style>
.navbar {
    background-color: #082759 !important;
    padding: 10px 15px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
}
.navbar-brand {
    color: whitesmoke !important;
    font-weight: bold;
    margin-left: 1rem;
}
.navbar-brand:hover {
    color: #ffc107 !important;
}

/* ======== Logo Styling ======== */
.logo-img {
    width: 40px;
    height: 40px;
    object-fit: cover;
    border-radius: 50%;
}
.logo-text {
    font-size: 16px;
    font-weight: bold;
    color: #fff;
}

/* ======== Sidebar Toggler (Hamburger) ======== */
.sidebar-toggler {
    display: flex;
    align-items: center;
    background-color: transparent;
    border: none;
    cursor: pointer;
    color: white;
    padding: 8px;
    margin-right: 10px;
}
.hamburger {
    display: flex;
    flex-direction: column;
    justify-content: center;
    gap: 5px;
}
.hamburger .line {
    width: 22px;
    height: 2.5px;
    background: white;
    border-radius: 3px;
    transition: all 0.3s ease;
}

/* ======== Search Input Styling ======== */
.search-input {
    width: 220px;
    padding: 6px 10px;
    border-radius: 5px;
}
.btn-outline-light {
    border-color: white;
    color: white;
}
.btn-outline-light:hover {
    background-color: white;
    color: #082759;
}

/* ======== Notification Badge ======== */
#notificationButton {
    position: relative;
}
#notificationCount {
    font-size: 10px;
    padding: 2px 5px;
}

/* ======== Responsive Adjustments ======== */

body {
    background-color: #ffffff;
}



/* === Sidebar Base === */
.sidebar {
    background-color: #082759;
    width: 250px;
    min-height: 100vh;
    padding-top: 20px;
    position: fixed;
    top: 60px; /* Below navbar */
    left: 0;
    z-index: 1050;
    transition: all 0.3s ease-in-out;
}

/* Sidebar Links */
.sidebar .nav-link {
    color: white;
    padding: 12px 15px;
    display: flex;
    align-items: center;
    transition: 0.2s;
}
.sidebar .nav-link:hover {
    background-color: #0b3a80;
    color: #ffc107;
    border-radius: 5px;
}
.sidebar .nav-link i {
    margin-right: 8px;
    font-size: 18px;
}

/* Profile Image */
.sidebar .profile {
    width: 80px;
    height: 80px;
    object-fit: cover;
    border-radius: 50%;
    margin-bottom: 10px;
    border: 3px solid #fff;
}
.white-text {
    color: #fff;
    font-size: 14px;
    margin: 0;
}


.content {
    
    margin-left: 250px; /* Same as initial width of the sidebar */
    transition: margin-left 0.3s ease;
    padding: 60px; /* Adjust padding as needed */
    width: 80%; /* Calculate remaining width */
}
/* === Overlay for Mobile === */
.overlay {
    display: none;
    position: fixed;
    top: 60px; /* Below navbar */
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.4);
    z-index: 1049;
}


.view-complaints {
    cursor: pointer;
    color: #007bff;
    text-decoration: underline;
}
.view-complaints:hover {
    color: #0056b3;
}
</style>

<?php 
include '../includes/navbar.php';
include '../includes/sidebar.php';
include '../includes/edit-profile.php';
?>
<div class="d-flex justify-content-center align-items-center" style="min-height:100vh;">

<div class="content">
    <div class="container py-4">
        <div class="card shadow" style="border-radius: 3rem;">
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
                        <div class="col-md-3">
                            <label class="form-label">Filter by Category:</label>
                            <select id="categoryDropdown" name="category" class="form-select" onchange="this.form.submit()">
                                <option value="">All</option>
                                <?php foreach ($availableCategories as $rowCategory): ?>
                                    <?php $selected = isset($_GET['category']) && $_GET['category'] == $rowCategory['category_id'] ? 'selected' : ''; ?>
                                    <option value="<?= $rowCategory['category_id'] ?>" <?= $selected ?>>
                                        <?= htmlspecialchars($rowCategory['complaints_category']) ?>
                                    </option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>
                </form>

                <!-- Export to Word Button -->
                <form method="get" action="export_excel.php" class="text-center mb-3">
                    <input type="hidden" name="from_date" value="<?= htmlspecialchars($fromDate) ?>">
                    <input type="hidden" name="to_date" value="<?= htmlspecialchars($toDate) ?>">
                    <input type="hidden" name="category" value="<?= htmlspecialchars($category) ?>">
                    <button type="submit" class="btn btn-primary">
                        Export to Word
                    </button>
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
                                        <th>#</th>
                                        <th>Complaint Category</th>
                                        <th>Total Complaints</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                    $count = 1;
                                    foreach ($complaints as $row): ?>
                                        <tr>
                                            <td><?= $count++ ?></td>
                                            <td>
                                                <a href="javascript:void(0);" 
                                                    class="view-complaints" 
                                                    data-category-id="<?= $row['category_id'] ?>" 
                                                    data-category-name="<?= htmlspecialchars($row['complaints_category']) ?>">
                                                    <?= htmlspecialchars($row['complaints_category']) ?>
                                                </a>
                                            </td>
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

<!-- View Complaint Persons Modal -->
<div class="modal fade" id="viewModal" tabindex="-1" aria-labelledby="viewModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title" id="viewModalLabel">Complaint Persons</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div id="complaintPersonsContent" class="table-responsive text-center">
                    <p class="text-muted">Select a category to view complaint persons...</p>
                </div>
            </div>
            <div class="modal-footer">
                <a id="printPdfBtn" href="#" target="_blank" class="btn btn-danger">
                    <i class="bi bi-file-earmark-pdf"></i> Print PDF
                </a>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<!-- JS Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
document.addEventListener("DOMContentLoaded", function() {
    const complaintLinks = document.querySelectorAll(".view-complaints");
    const printPdfBtn = document.getElementById("printPdfBtn");

    complaintLinks.forEach(link => {
        link.addEventListener("click", function() {
            const categoryId = this.dataset.categoryId;
            const categoryName = this.dataset.categoryName;
            const barangayName = "<?= $barangayName ?>";

            // Update modal title
            document.getElementById("viewModalLabel").innerText = `Complaint Persons - ${categoryName}`;

            // Hide print button until data loads
            printPdfBtn.style.display = "none";

            // Update the print PDF button link dynamically
            printPdfBtn.href = `print_complaints_pdf.php?category_id=${categoryId}&category_name=${encodeURIComponent(categoryName)}&barangay_name=${encodeURIComponent(barangayName)}`;

            // Show loading text
            document.getElementById("complaintPersonsContent").innerHTML = `
                <div class="text-center p-3">
                    <div class="spinner-border text-primary" role="status"></div>
                    <p class="mt-2">Loading complaint persons...</p>
                </div>
            `;

            // Show modal
            const viewModal = new bootstrap.Modal(document.getElementById("viewModal"));
            viewModal.show();

            // Fetch complaint persons via AJAX
            fetch("fetch_complaint_persons.php", {
                method: "POST",
                headers: { "Content-Type": "application/x-www-form-urlencoded" },
                body: `category_id=${categoryId}&barangay_name=${barangayName}`
            })
            .then(response => response.text())
            .then(data => {
                document.getElementById("complaintPersonsContent").innerHTML = data;

                // Show print button only if there are complaint persons
                if (data.trim() !== "") {
                    printPdfBtn.style.display = "inline-block";
                }
            })
            .catch(error => {
                document.getElementById("complaintPersonsContent").innerHTML =
                    `<div class="alert alert-danger text-center">Error fetching data!</div>`;
                printPdfBtn.style.display = "none";
            });
        });
    });
});
</script>
 
</body>
</html>


    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.2/dist/sweetalert2.all.min.js"></script>

<script src="../scripts/script.js"></script>
<script> 



    function confirmLogout() {
        Swal.fire({
            title: "Are you sure?",
            text: "You will be logged out.",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#212529",
            cancelButtonColor: "#d33",
            confirmButtonText: "Yes, logout"
        }).then((result) => {
            if (result.isConfirmed) {
                // Redirect to logout URL
                window.location.href = " ../reg/login.php?logout=<?php echo $_SESSION['user_id']; ?>";
            }
        });

    }
</script>
