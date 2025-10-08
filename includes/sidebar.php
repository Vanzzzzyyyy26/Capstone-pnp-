<div class="container-fluid d-flex">

    <!-- Sidebar -->
    <div id="sidebar" class="sidebar">
        <!-- User Info -->
        <div class="user-info px-3 py-2 text-center">
            <?php
            include '../connection/dbconn.php'; 

            if (isset($_SESSION['pic_data'])) {
                $pic_data = $_SESSION['pic_data'];
                echo "<img class='profile' src='$pic_data' alt='Profile Picture'>";
            }
            ?>
            <p class="white-text"><?php echo $_SESSION['accountType']; ?></p>
            <p class="white-text"><?php echo "$firstName $middleName $lastName $extensionName"; ?></p>
        </div>

        <!-- Sidebar Menu -->
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link" href="barangay_dashboard.php">
                    <i class="bi bi-graph-up"></i><span class="nav-text">Dashboard</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="manage-complaints.php">
                    <i class="bi bi-file-earmark-text"></i><span class="nav-text">Manage Complaints</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="barangaylogs.php">
                    <i class="bi bi-file-earmark-check-fill"></i><span class="nav-text">Complaints History</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="barangay-official.php">
                    <i class="bi bi-person"></i><span class="nav-text">Barangay Officials</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="login_logs.php">
                    <i class="bi bi-people-fill"></i><span class="nav-text">Login Logs</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="report.php">
                    <i class="bi bi-clipboard-data"></i><span class="nav-text">Reports</span>
                </a>
            </li>
        </ul>

        <!-- Logout Button -->
        <form action="../logout.php" method="post" id="logoutForm">
            <div class="logout-btn text-center">
                <button type="button" class="btn btn-danger btn-sm" onclick="confirmLogout()">
                    <i class="bi bi-box-arrow-left"></i><span class="nav-text">Logout</span>
                </button>
            </div>
        </form>
    </div>

    <!-- Overlay for Mobile -->
    <div id="overlay" class="overlay" onclick="toggleSidebar()"></div>
</div>
