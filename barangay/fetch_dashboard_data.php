<?php
if (!function_exists('fetchDashboardData')) {
    function fetchDashboardData($pdo, $from_date, $to_date, $barangay_name) {
        try {
            $whereClauses = ["c.barangay_saan = ?"];
            $params = [$barangay_name];

            if ($from_date && $to_date) {
                $whereClauses[] = "c.date_filed BETWEEN ? AND ?";
                $params[] = $from_date;
                $params[] = $to_date;
            } elseif ($from_date) {
                $whereClauses[] = "c.date_filed >= ?";
                $params[] = $from_date;
            } elseif ($to_date) {
                $whereClauses[] = "c.date_filed <= ?";
                $params[] = $to_date;
            }

            $whereSql = ' WHERE ' . implode(' AND ', $whereClauses);

            $stmt = $pdo->prepare("
                SELECT 
                    SUM(CASE WHEN c.status = 'Rejected' THEN 1 ELSE 0 END) AS rejected,
                    SUM(CASE WHEN c.status = 'settled_in_barangay' THEN 1 ELSE 0 END) AS settled_in_barangay,
                    SUM(CASE WHEN c.status = 'Approved' THEN 1 ELSE 0 END) AS approved,
                    SUM(CASE WHEN c.status = 'inprogress' THEN 1 ELSE 0 END) AS inprogress,
                    SUM(CASE WHEN c.status = 'pnp' THEN 1 ELSE 0 END) AS pnp
                FROM tbl_complaints c
                $whereSql
            ");
            $stmt->execute($params);
            return $stmt->fetch(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            return ['error' => $e->getMessage()];
        }
    }
}

if (!function_exists('fetchComplaintsByBarangay')) {
    function fetchComplaintsByBarangay($pdo, $from_date, $to_date) {
        try {
            $whereClauses = [];
            $params = [];

            if ($from_date && $to_date) {
                $whereClauses[] = "c.date_filed BETWEEN ? AND ?";
                $params[] = $from_date;
                $params[] = $to_date;
            } elseif ($from_date) {
                $whereClauses[] = "c.date_filed >= ?";
                $params[] = $from_date;
            } elseif ($to_date) {
                $whereClauses[] = "c.date_filed <= ?";
                $params[] = $to_date;
            }

            $whereSql = $whereClauses ? 'WHERE ' . implode(' AND ', $whereClauses) : '';

            $stmt = $pdo->prepare("
                SELECT c.barangay_saan, COUNT(c.complaints_id) AS complaint_count
                FROM tbl_complaints c
                $whereSql
                GROUP BY c.barangay_saan
            ");
            $stmt->execute($params);
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            return [];
        }
    }
}

if (!function_exists('fetchPurokData')) {
    function fetchPurokData($pdo, $from_date, $to_date, $barangay_name) {
        try {
            $whereClauses = ["ub.barangay_name = ?"];
            $params = [$barangay_name];

            if ($from_date && $to_date) {
                $whereClauses[] = "c.date_filed BETWEEN ? AND ?";
                $params[] = $from_date;
                $params[] = $to_date;
            } elseif ($from_date) {
                $whereClauses[] = "c.date_filed >= ?";
                $params[] = $from_date;
            } elseif ($to_date) {
                $whereClauses[] = "c.date_filed <= ?";
                $params[] = $to_date;
            }

            $whereSql = ' AND ' . implode(' AND ', $whereClauses);

            $stmt = $pdo->prepare("
                SELECT u.purok, COUNT(u.user_id) AS purok_count
                FROM tbl_complaints c
                JOIN tbl_users u ON c.user_id = u.user_id
                JOIN tbl_users_barangay ub ON c.barangays_id = ub.barangays_id
                WHERE 1=1 $whereSql
                GROUP BY u.purok
            ");
            $stmt->execute($params);
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            return [];
        }
    }
}

if (!function_exists('fetchComplaintCategoriesData')) {
    function fetchComplaintCategoriesData($pdo, $from_date, $to_date, $barangay_name) {
        try {
            $whereClauses = ["c.barangay_saan = ?"];
            $params = [$barangay_name];

            if ($from_date && $to_date) {
                $whereClauses[] = "c.date_filed BETWEEN ? AND ?";
                $params[] = $from_date;
                $params[] = $to_date;
            } elseif ($from_date) {
                $whereClauses[] = "c.date_filed >= ?";
                $params[] = $from_date;
            } elseif ($to_date) {
                $whereClauses[] = "c.date_filed <= ?";
                $params[] = $to_date;
            }

            $whereSql = ' AND ' . implode(' AND ', $whereClauses);

            $stmt = $pdo->prepare("
                SELECT cc.complaints_category, COUNT(c.complaints_id) AS category_count
                FROM tbl_complaints c
                JOIN tbl_complaintcategories cc ON c.category_id = cc.category_id
                WHERE 1=1 $whereSql
                GROUP BY cc.complaints_category
            ");
            $stmt->execute($params);
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            return [];
        }
    }
}
?>
