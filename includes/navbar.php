<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top shadow-sm">
    <div class="container-fluid">

        <!-- Left Section: Logo + Barangay Name -->
        <div class="d-flex align-items-center">
            <!-- Hamburger Button -->
            <button class="sidebar-toggler me-3" type="button" onclick="toggleSidebar()">
                <span class="hamburger">
                    <span class="line"></span>
                    <span class="line"></span>
                    <span class="line"></span>
                </span>
            </button>

            <!-- Logo -->
            <img src="../assets/logo.png" alt="Logo" class="logo-img me-2">

            <!-- Barangay Name -->
            <a class="navbar-brand" href="#">
                Barangay <?php echo "$barangay_name"; ?>
            </a>
        </div>

        <!-- Right Section: Search + Notifications + User -->
        <div class="d-flex align-items-center ms-auto">

            <!-- Search Bar (Desktop) -->
            <form class="d-none d-lg-flex me-3" role="search" method="get" action="./barangaylogs.php">
                <input class="form-control form-control-sm me-2 search-input"
                    type="search"
                    name="search"
                    placeholder="Search Complainants"
                    aria-label="Search"
                    value="<?= htmlspecialchars($_GET['search'] ?? '') ?>">
                <button class="btn btn-outline-light btn-sm" type="submit">
                    <i class="bi bi-search"></i>
                </button>
            </form>

            <!-- Search Icon for Mobile -->
            <button class="btn btn-icon d-lg-none me-2" data-bs-toggle="collapse" data-bs-target="#mobileSearch">
                <i class="bi bi-search"></i>
            </button>

            <!-- Notification Button -->
            <button type="button" class="btn btn-icon position-relative me-2" id="notificationButton"
                data-bs-toggle="popover" data-bs-html="true" title="Notifications"
                data-bs-content="<div id='notificationList' class='d-flex flex-column p-2' style='max-height: 300px; overflow-y: auto;'><div class='dropdown-item text-center'>No new notifications</div></div>">
                <i class="bi bi-bell" style="color: yellow;"></i>
                <span class="badge bg-danger position-absolute top-0 start-100 translate-middle d-none" id="notificationCount">0</span>
            </button>

            <!-- User Icon -->
         
        </div>
    </div>

    <!-- Mobile Search (Collapsible) -->
    <div class="collapse" id="mobileSearch">
        <form class="p-2 d-flex bg-dark" role="search" method="get" action="./barangaylogs.php">
            <input class="form-control me-2" type="search" name="search" placeholder="Search Complainants"
                value="<?= htmlspecialchars($_GET['search'] ?? '') ?>">
            <button class="btn btn-outline-light" type="submit"><i class="bi bi-search"></i></button>
        </form>
    </div>
</nav>
