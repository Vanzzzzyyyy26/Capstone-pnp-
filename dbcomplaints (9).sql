-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2025 at 02:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcomplaints`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `municipality` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `complainant` varchar(255) NOT NULL,
  `complaint_person` varchar(255) DEFAULT NULL,
  `respondent` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  `certificate_text` text NOT NULL,
  `secretary` varchar(255) NOT NULL,
  `captain` varchar(255) NOT NULL,
  `left_logo` varchar(255) DEFAULT NULL,
  `right_logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `barangay`, `municipality`, `province`, `complainant`, `complaint_person`, `respondent`, `date_created`, `certificate_text`, `secretary`, `captain`, `left_logo`, `right_logo`) VALUES
(33, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-02-28 01:15:00', 'zdsfsadfsedfsegrterogjaodksaspdkasdofjdxlcvmszdlcmdzlfjdssigjsodla;dles0udfodka:xzslcjdxfkjsdlkA;dkzdgodjgosdfsdfdfdsfgdfzdsfsadfsedfsegrterogjaodksaspdkasdofjdxlcvmszdlcmdzlfjdssigjsodla;dles0udfodka:xzslcjdxfkjsdlkA;dkzdgodjgosdfsdfdfdsfgdf', 'Lance', 'haryl', 'uploads/1.png', 'uploads/1.png'),
(34, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-02-06 01:22:00', 'zdsfsadfsedfsegrterogjaodksaspdkasdofjdxlcvmszdlcmdzlfjdssigjsodla;dles0udfodka:xzslcjdxfkjsdlkA;dkzdgodjgosdfsdfdfdsfgdfzdsfsadfsedfsegrterogjaodksaspdkasdofjdxlcvmszdlcmdzlfjdssigjsodla;dles0udfodka:xzslcjdxfkjsdlkA;dkzdgodjgosdfsdfdfdsfgdf', 'Lance', 'haryl', 'uploads/1.png', 'uploads/1.png'),
(35, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-02-06 01:22:00', 'zdsfsadfsedfsegrterogjaodksaspdkasdofjdxlcvmszdlcmdzlfjdssigjsodla;dles0udfodka:xzslcjdxfkjsdlkA;dkzdgodjgosdfsdfdfdsfgdfzdsfsadfsedfsegrterogjaodksaspdkasdofjdxlcvmszdlcmdzlfjdssigjsodla;dles0udfodka:xzslcjdxfkjsdlkA;dkzdgodjgosdfsdfdfdsfgdf', 'Lance', 'haryl', NULL, NULL),
(36, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-02-22 13:23:00', 'zdaSDdddddcfzdaSDdddddcfzdaSDdddddcfzdaSDdddddcfzdaSDdddddcfzdaSDdddddcfzdaSDdddddcfzdaSDdddddcfzdaSDdddddcfzdaSDdddddcfzdaSDdddddcfzdaSDdddddcf', 'Lance', 'haryl', NULL, NULL),
(37, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-01 01:28:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(38, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-01 01:32:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(39, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-02-28 13:54:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', 'uploads/1.png', 'uploads/1.png'),
(40, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-02-26 01:00:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', 'uploads/1.png', 'uploads/1.png'),
(41, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-07 02:04:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', 'uploads/6c4df07d-c979-4676-bf55-e2062404e9a6.jpg', 'uploads/6c4df07d-c979-4676-bf55-e2062404e9a6.jpg'),
(42, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-02-28 02:08:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', 'uploads/1.png', 'uploads/1.png'),
(43, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-02-28 02:08:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', 'uploads/1.png', 'uploads/1.png'),
(44, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-02-28 02:08:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', 'uploads/1.png', 'uploads/1.png'),
(45, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-02-28 02:08:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', 'uploads/1.png', 'uploads/1.png'),
(46, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-02-28 02:08:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', 'uploads/1.png', 'uploads/1.png'),
(47, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-02-28 02:08:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', 'uploads/1.png', 'uploads/1.png'),
(48, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(49, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(50, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(51, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(52, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(53, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(54, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(55, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(56, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(57, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(58, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(59, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(60, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(61, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(62, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(63, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(64, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(65, 'San Fabian', 'Echsgue', 'Isabela', 'Bj', 'Princess Mae  V  Aquino', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'Lance', 'haryl', NULL, NULL),
(66, 'San Fabian', 'Echsgue', 'Isabela', 'Brayan John V aquino', 'Princess Mae  V  Aquino', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'desday  D Nasyfa', 'Mark  haryl B conception', NULL, NULL),
(67, 'San Fabian', 'Echsgue', 'Isabela', 'Brayan John V aquino', 'Princess Mae  V  Aquino', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'desday  D Nasyfa', 'Mark  haryl B conception', NULL, NULL),
(68, 'San Fabian', 'Echsgue', 'Isabela', 'Brayan John V aquino', 'Princess Buraot  C Rosario', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'desday  D Nasyfa', 'Mark  haryl B conception', NULL, NULL),
(69, 'San Fabian', 'Echsgue', 'Isabela', 'Brayan John V aquino', 'Princess Buraot  C Rosario', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'desday  D Nasyfa', 'Mark  haryl B conception', NULL, NULL),
(70, 'San Fabian', 'Echsgue', 'Isabela', 'Brayan John V aquino', 'Princess Buraot  C Rosario', 'BArangay', '2025-03-01 02:22:00', 'zxcszfs zxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfszxcszfs', 'desday  D Nasyfa', 'Mark  haryl B conception', 'uploads/1.png', 'uploads/1.png'),
(71, 'San Fabian', 'Echsgue', 'Isabela', 'Brayan John V aquino', 'Princess Buraot  C Rosario', 'BArangay', '2025-03-08 02:48:00', 'efjwedokawpdoksoefjwedokawpdoksoefjwedokawpdoksoefjwedokawpdoksoefjwedokawpdoksoefjwedokawpdoksoefjwedokawpdoksoefjwedokawpdoksoefjwedokawpdokso', 'desday  D Nasyfa', 'Mark  haryl B conception', 'uploads/1.png', 'uploads/1.png'),
(72, 'San Fabian', 'Echsgue', 'Isabela', 'Brayan John V aquino', 'Princess Buraot  C Rosario', 'BArangay', '2025-03-08 02:48:00', 'efjwedokawpdoksoefjwedokawpdoksoefjwedokawpdoksoefjwedokawpdoksoefjwedokawpdoksoefjwedokawpdoksoefjwedokawpdoksoefjwedokawpdoksoefjwedokawpdokso', 'desday  D Nasyfa', 'Mark  haryl B conception', 'uploads/1.png', 'uploads/1.png'),
(73, 'San Fabian', 'Echsgue', 'Isabela', 'Brayan John V aquino', 'Princess Buraot  C Rosario', 'BArangay', '2025-03-08 02:48:00', 'efjwedokawpdoksoefjwedokawpdoksoefjwedokawpdoksoefjwedokawpdoksoefjwedokawpdoksoefjwedokawpdoksoefjwedokawpdoksoefjwedokawpdoksoefjwedokawpdokso', 'desday  D Nasyfa', 'Mark  haryl B conception', 'uploads/1.png', 'uploads/1.png'),
(74, 'San Fabian', 'Echsgue', 'Isabela', 'Brayan John V aquino', 'Princess Buraot  C Rosario', 'BArangay', '2025-03-08 07:55:00', '&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n', 'desday  D Nasyfa', 'Mark  haryl B conception', 'uploads/1.png', 'uploads/1.png'),
(75, 'San Fabian', 'Echsgue', 'Isabela', 'Brayan John V aquino', 'Princess Buraot  C Rosario', 'BArangay', '2025-03-08 07:55:00', '&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;https://cdn.jsdelivr.net/npm/sweetalert2@11&quot;&gt;&lt;/script&gt;\r\n', 'desday  D Nasyfa', 'Mark  haryl B conception', 'uploads/1.png', 'uploads/1.png'),
(76, 'San Fabian', 'Echsgue', 'Isabela', 'Brayan John V aquino', 'Princess Buraot  C Rosario', 'BArangay', '2025-03-08 03:04:00', 'fsdgsdfs', 'desday  D Nasyfa', 'Mark  haryl B conception', 'uploads/6c4df07d-c979-4676-bf55-e2062404e9a6.jpg', 'uploads/6c4df07d-c979-4676-bf55-e2062404e9a6.jpg'),
(77, 'San Fabian', 'Echsgue', 'Isabela', 'Brayan John V aquino', 'denver gorospe', 'trisha nicole', '2025-02-28 23:14:00', 'iwrrrbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', 'desday  D Nasyfa', 'Mark  haryl B conception', 'uploads/1.png', 'uploads/1.png'),
(78, 'Barangay Aromin', 'Echsgue', 'Isabela', 'Brayan John V aquino', 'Princess Buraot  C Rosario', 'trisha nicole', '2025-03-08 11:29:00', ';zcdszfjsoe[wqpe\\qe[3]pw494-64ro3prepriepti', 'desday  D Nasyfa', 'Mark  haryl B conception', 'uploads/1.png', 'uploads/1.png'),
(79, 'San Fabian', 'Echsgue', 'Isabela', 'Brayan John V aquino', 'Princess Buraot  C Rosario', 'trisha nicole', '2025-03-08 12:17:00', 'juggggguvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv000000000000000000000000000000000000000000000000000', 'desday  D Nasyfa', 'Mark  haryl B conception', 'uploads/1.png', 'uploads/1.png'),
(80, 'San Fabian', 'Echsgue', 'Isabela', 'Brayan John V aquino', 'Princess Buraot  C Rosario', 'trisha nicole', '2025-03-08 00:00:00', 'juggggguvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv000000000000000000000000000000000000000000000000000', 'desday  D Nasyfa', 'Mark  haryl B conception', 'uploads/1.png', 'uploads/1.png'),
(81, 'Gamis', 'Saguday', 'quirino', 'Reyven pili', 'Brauan john aquino', 'ivy pili', '2025-02-28 00:00:00', 'siojsepgkdprhl[pfthjl[ftjlf[hlfgggggggggggggggg;gfdgbdfbthrtjrtjtr6jt6', 'jong ojadas', 'Fernando poe  jr', 'uploads/1.png', 'uploads/1.png'),
(82, 'ipil', 'echague', 'isabela', 'tamad', 'juan', 'pnp', '2025-03-18 00:00:00', 'for higher case', 'jane', 'jose', NULL, NULL),
(83, 'San Fabian', 'Echsgue', 'Isabela', 'Brayan John V aquino', 'Kristan', 'BArangay', '2025-09-03 00:00:00', 'wowslq[slq[slq&#039;saxa.a', 'desday  D Nasyfa', 'Mark  haryl B conception', 'uploads/p.jpg', 'uploads/1.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_announcement`
--

CREATE TABLE `tbl_announcement` (
  `announcement_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `date_posted` date NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `share_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_announcement`
--

INSERT INTO `tbl_announcement` (`announcement_id`, `title`, `content`, `date_posted`, `image_path`, `deleted`, `share_count`) VALUES
(41, 'Theft Prevention Tips!', '#𝗦𝗮𝗕𝗮𝗴𝗼𝗻𝗴𝗣𝗶𝗹𝗶𝗽𝗶𝗻𝗮𝘀𝗔𝗻𝗴𝗚𝘂𝘀𝘁𝗼𝗻𝗴𝗣𝘂𝗹𝗶𝘀𝗟𝗶𝗴𝘁𝗮𝘀𝗞𝗮', '2025-02-27', '../uploads/theft.jpg', 0, 0),
(42, 'Campaign Against Rape!', '#𝗦𝗮𝗕𝗮𝗴𝗼𝗻𝗴𝗣𝗶𝗹𝗶𝗽𝗶𝗻𝗮𝘀𝗔𝗻𝗴𝗚𝘂𝘀𝘁𝗼𝗻𝗴𝗣𝘂𝗹𝗶𝘀𝗟𝗶𝗴𝘁𝗮𝘀𝗞𝗮', '2025-02-27', '../uploads/rapetips.jpg', 0, 0),
(43, 'Mga Tips Para makaiwas sa Robbery Hold-up!', '#𝗦𝗮𝗕𝗮𝗴𝗼𝗻𝗴𝗣𝗶𝗹𝗶𝗽𝗶𝗻𝗮𝘀𝗔𝗻𝗴𝗚𝘂𝘀𝘁𝗼𝗻𝗴𝗣𝘂𝗹𝗶𝘀𝗟𝗶𝗴𝘁𝗮𝘀𝗞𝗮', '2025-02-27', 'uploads/robbery.jpg', 1, 0),
(44, 'Campaign against Illegal Drugs!', '#𝗦𝗮𝗕𝗮𝗴𝗼𝗻𝗴𝗣𝗶𝗹𝗶𝗽𝗶𝗻𝗮𝘀𝗔𝗻𝗴𝗚𝘂𝘀𝘁𝗼𝗻𝗴𝗣𝘂𝗹𝗶𝘀𝗟𝗶𝗴𝘁𝗮𝘀𝗞𝗮', '2025-02-27', '../uploads/drugs.jpg', 0, 0),
(45, 'CONGRATULATION TO THE NEWLY PROMOTED PERSONNEL OF ECHAGUE POLICE STATION!', '𝗬𝗼𝘂𝗿 𝗵𝗮𝗿𝗱 𝘄𝗼𝗿𝗸, 𝗱𝗲𝗱𝗶𝗰𝗮𝘁𝗶𝗼𝗻, 𝗮𝗻𝗱 𝗹𝗲𝗮𝗱𝗲𝗿𝘀𝗵𝗶𝗽 𝗵𝗮𝘃𝗲 𝗲𝗮𝗿𝗻𝗲𝗱 𝘆𝗼𝘂 𝘁𝗵𝗶𝘀 𝘄𝗲𝗹𝗹-𝗱𝗲𝘀𝗲𝗿𝘃𝗲𝗱 𝗽𝗿𝗼𝗺𝗼𝘁𝗶𝗼𝗻. \r\n\r\n#SaBagongPilipinasAngGustongPulisLigtasKa', '2025-02-27', '../uploads/congrats.jpg', 0, 0),
(46, 'Mga Tips Para makaiwas sa Robbery Hold-up!\r\n', '#𝗦𝗮𝗕𝗮𝗴𝗼𝗻𝗴𝗣𝗶𝗹𝗶𝗽𝗶𝗻𝗮𝘀𝗔𝗻𝗴𝗚𝘂𝘀𝘁𝗼𝗻𝗴𝗣𝘂𝗹𝗶𝘀𝗟𝗶𝗴𝘁𝗮𝘀𝗞𝗮', '2025-02-27', '../uploads/robbery.jpg', 1, 0),
(47, 'Mga Tips Para makaiwas sa Robbery Hold-up!', '#𝗦𝗮𝗕𝗮𝗴𝗼𝗻𝗴𝗣𝗶𝗹𝗶𝗽𝗶𝗻𝗮𝘀𝗔𝗻𝗴𝗚𝘂𝘀𝘁𝗼𝗻𝗴𝗣𝘂𝗹𝗶𝘀𝗟𝗶𝗴𝘁𝗮𝘀𝗞𝗮', '2025-02-27', '../uploads/robbery.jpg', 0, 0),
(48, 'wanted', 'justine aquino', '2025-03-21', '../uploads/382cb8eb-dd55-4718-99c3-e91963573a9e (1) (1).jpg', 1, 0),
(49, 'hannah', 'hannah', '2025-03-21', '../uploads/dy.jpg', 1, 0),
(50, 'hannah', 'asasa', '2025-03-21', '../uploads/hannah1.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brg_official`
--

CREATE TABLE `tbl_brg_official` (
  `official_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `position` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `barangays_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_brg_official`
--

INSERT INTO `tbl_brg_official` (`official_id`, `name`, `position`, `image`, `barangays_id`, `is_deleted`) VALUES
(102, 'bj', 'Barangay Captain', '../uploads/d5b04cc3dcd8c17702549ebc5f1acf1a.jpg', 597, 0),
(103, 'reyven', 'Kagawad 1', '../uploads/d5b04cc3dcd8c17702549ebc5f1acf1a.jpg', 597, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaintcategories`
--

CREATE TABLE `tbl_complaintcategories` (
  `category_id` int(10) NOT NULL,
  `complaints_category` varchar(255) NOT NULL,
  `cert_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_complaintcategories`
--

INSERT INTO `tbl_complaintcategories` (`category_id`, `complaints_category`, `cert_path`) VALUES
(442, 'Using False Certificates (Art. 175)', ''),
(443, 'Physical Injuries Inflicted in a Tumultuous Affray (Art. 252)', ''),
(444, 'Theft (if the value of the property stolen does not exceed Php50.00) (Art. 309)', ''),
(445, 'Grave coercion (Art. 286)', ''),
(446, 'Qualified trespass to dwelling (without the use of violence and intimidation) (Art. 280)', ''),
(447, 'Alarms and Scandals (Art. 155)', ''),
(448, 'Light threats (Art. 283)', ''),
(449, 'Using Fictitious Names and Concealing True Names (Art. 178)', ''),
(450, 'Revealing secrets with abuse of authority (Art. 291)', ''),
(451, 'Simple seduction (Art. 338)', ''),
(452, 'Issuing checks without sufficient funds (B.P. 22)', ''),
(453, 'Occupation of real property or usurpation of real rights in property (Art. 312)', ''),
(454, 'Other', ''),
(455, 'Unlawful Use of Means of Publication and Unlawful Utterances (Art. 154)', ''),
(456, 'Fencing of stolen properties if the property involved is not more than Php50.00 (P.D. 1612)', ''),
(457, 'Slight physical injuries and maltreatment (Art. 266)', ''),
(458, 'Illegal Use of Uniforms and Insignias (Art. 179)', ''),
(459, 'sdsdsds', ''),
(460, 'Other forms of trespass (Art. 281)', ''),
(461, 'Unlawful arrest (Art. 269)', ''),
(462, 'rape', ''),
(463, 'Simple seduction (Art. 338)', ''),
(464, 'Less serious physical injuries (Art. 265)', ''),
(465, 'Qualified theft (if the amount does not exceed Php500) (Art. 310)', ''),
(466, 'Discovering secrets through seizure and correspondence (Art. 290)', ''),
(467, 'Giving Assistance to Consummated Suicide (Art. 253)', ''),
(468, 'Yung aso ginawang pulutan ', ''),
(469, 'dirty', ''),
(470, 'Masyadong maingay nakakalimutang boarding ang harap', ''),
(471, 'Incriminating innocent persons (Art. 363)', ''),
(472, 'Swindling or estafa (if the amount does not exceed Php200.00) (Art. 315)', ''),
(473, 'Theft', ''),
(474, 'Other deceits (Art. 318)', ''),
(475, 'Altering boundaries or landmarks (Art. 313)', ''),
(479, 'Killed a Dog', ''),
(480, 'biglang liko si manong driver', ''),
(481, 'Other light threats (Art. 285)', ''),
(482, 'Abandoning a minor (a child under seven (7) years old) (Art. 276)', ''),
(483, 'Nagbilad ng palay', ''),
(484, 'Abandonment of a person in danger and abandonment of one’s own victim (Art. 275)', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaints`
--

CREATE TABLE `tbl_complaints` (
  `complaints_id` int(15) NOT NULL,
  `complaint_name` varchar(255) NOT NULL,
  `complaints_person` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT '''Inprogress''',
  `complaints` text NOT NULL,
  `responds` enum('barangay','pnp') NOT NULL,
  `date_filed` date NOT NULL,
  `category_id` int(1) NOT NULL,
  `barangays_id` int(10) NOT NULL,
  `image_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ano` varchar(255) DEFAULT NULL,
  `barangay_saan` varchar(255) DEFAULT NULL,
  `kailan_date` date DEFAULT NULL,
  `kailan_time` varchar(255) NOT NULL,
  `paano` text DEFAULT NULL,
  `bakit` text DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `cert_id` int(15) DEFAULT NULL,
  `complaint_reference_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_complaints`
--

INSERT INTO `tbl_complaints` (`complaints_id`, `complaint_name`, `complaints_person`, `status`, `complaints`, `responds`, `date_filed`, `category_id`, `barangays_id`, `image_id`, `user_id`, `ano`, `barangay_saan`, `kailan_date`, `kailan_time`, `paano`, `bakit`, `file_path`, `cert_id`, `complaint_reference_id`) VALUES
(636, 'Eugene Gamiz Tobias ', 'Me, myself, and', 'pnp', 'HALIMAW SI BRYAN', 'pnp', '2025-02-26', 463, 575, 0, 467, 'Sinosolo ang development', 'San Fabian', '2025-02-26', '01:43:00 PM', 'Nagpa test ng Systems', 'Because is because', NULL, NULL, NULL),
(638, 'James Angeles Taming ', 'Princess Rosari', 'Approved', 'nanakal', '', '2025-02-26', 455, 576, 0, 468, 'nanakal', 'San Fabian', '2025-02-26', '02:01:00 PM', 'sinampal niy', 'sinampal niha', NULL, NULL, NULL),
(640, 'Eugene Gamiz Tobias ', 'andy', 'inprogress', 'i saw my friend andy molesting a dog', '', '2025-02-26', 451, 575, 0, 467, 'the dog was fatally wounded', 'Silauan Norte', '2024-11-25', '08:00:00 AM', 'i just saw my friend making love with a dog', 'wala sa sarili si andy mar', NULL, NULL, NULL),
(641, 'John lloyd Cabangbang Manuel ', 'Si Anelub', 'Approved', 'Nag takaw', '', '2025-02-26', 456, 464, 0, 471, 'Nang loob Ng bahay', 'San Fabian', '2025-02-26', '04:27:00 PM', 'Nakita ko', 'Bigla nalang pumasok', NULL, NULL, NULL),
(642, 'Jefferson Maddam-ot Soriano ', 'Kanor (witness)', 'Approved', 'Sinaksak ako', '', '2025-02-26', 464, 464, 0, 477, 'Maglalakad Ako tas bigla nalang Akong sinaksak sa tagiliran', 'San Fabian', '2025-02-25', '08:19:00 AM', 'Lalakeng naka sumbrero at nakablack, bigla Akong nilapitan, at Saka sinabi &quot; &#039;wag Kang sisigaw&quot;, tas sinaksak ako sa tagiliran, pagkatapos Akong sinaksak, kumaripas siya ng takbo.', 'Tinalo ko Kasi ng 1v1 sa ml, napikon, nanaksak', NULL, NULL, NULL),
(644, 'Tony Rence Torres Sernande ', 'Don don', 'inprogress', 'Ninakaw yung aso ko', '', '2025-02-26', 465, 464, 0, 478, 'Iniwan ko lang yung aso ko sa harap tapos bigla nalang nawala', 'San Fabian', '2025-02-26', '10:13:00 AM', 'Nagmml ako sa sala ng bigla kong narinig na kumakahol ang aso ko, tumakbo ako upang tignan kaso pitaka nalang naiwan, nahulog nung tumakas siya', 'Mahal kasi yung aso ko, Chihuahua kasi yun, napakacute, nainggit kaya ninakaw', NULL, NULL, NULL),
(645, 'Redentor Bernardo Dominguez ', 'Kagawad nelson', 'Rejected', 'Sinuntok ako sa kanto', '', '2025-02-26', 443, 464, 0, 475, 'Bibili lang tas sinuntok ako', 'San Fabian', '2025-02-26', '12:35:00 PM', 'May nag-iinuman tas bigla akong sinuntok sa panga', 'Dahil sa kalasingan', NULL, NULL, NULL),
(646, 'Jericho Maddam-ot Soriano ', 'Drew (scammer)', 'Rejected', 'Ginamit yung Id ko sa masamang gawain', '', '2025-02-26', 442, 464, 0, 480, 'Na wala ko yung id ko ', 'San Fabian', '2025-02-24', '10:33:00 AM', 'Nawala ko id ko, tapos ginamit pinangscam id ko', 'Nawala ko ito sa plasa', NULL, NULL, NULL),
(650, 'Ryan Gampoy Pascual ', 'Orlando at erwi', 'inprogress', 'Maingay na kapitbahay', '', '2025-02-26', 447, 464, 0, 481, 'Sumisigaw sa hating gabi', 'San Fabian', '2025-02-26', '11:11:00 PM', 'Nag inuman sila', 'Nalasing', NULL, NULL, NULL),
(667, 'Caesey Benigno Labitoria ', 'Bj', 'Approved', 'Trespassing ', '', '2025-02-27', 446, 587, 0, 489, 'Pumasok sa bahay walang paalam', 'San Fabian', '2025-02-27', '05:10:00 PM', 'A1', 'Aba', NULL, NULL, NULL),
(668, 'Maryje Menor Clasin ', 'Marites, marica', 'settled_in_barangay', 'She is a chismosa, ni reveal yung secret. Mali mali naman ang kwento medyo anga lang sya.', 'barangay', '2025-03-01', 466, 591, 0, 493, 'Chismosa yan sya! Mosang!', 'San Fabian', '2025-02-01', '03:00:00 PM', 'I heard that she chismis a secret, with her kamarites!', 'Kasi kwinento ko, sabi kasi nya trustworthy sya nung high school fake news yan sya!', NULL, NULL, NULL),
(670, 'Jay Ar Sumicbay Gumabon ', 'Princess Rosario', 'Approved', 'Sinuntok ako sa kanto', '', '2025-03-04', 443, 593, 0, 497, 'Sinuntok', 'Maligaya', '2025-03-03', '01:40:00 PM', 'Naglalakad ako ng bigla ako sinuntok', 'Gusto nia ng pera', NULL, NULL, NULL),
(671, 'Jay Ar Sumicbay Gumabon ', 'James Taming', 'settled_in_barangay', 'Sinuntok ako sa kanto', 'barangay', '2025-03-04', 443, 593, 0, 497, 'Sinuntok', 'Maligaya', '2025-03-03', '01:40:00 PM', 'Naglalakad ako ng bigla ako sinuntok', 'Gusto nia ng pera', NULL, NULL, NULL),
(673, 'Frank zander Bartolome Ibarra ', 'Kenedy dela cru', 'Approved', 'Kenedy was seduce and rape', '', '2025-03-06', 451, 464, 0, 501, 'Sineduce si kenedy dela cruz', 'San Fabian', '2025-03-06', '02:44:00 PM', 'minanyak sya', 'Maganda kasi si kenedy', NULL, NULL, NULL),
(674, 'IJ Cabilar Dumaguing ', 'Frank', 'inprogress', 'Nang rape si frank ng baka', '', '2025-03-06', 447, 598, 0, 504, 'Nirape ni frank sa bukid yung baka', 'San Fabian', '2025-03-04', '02:50:00 AM', 'Kinidnap ni frank', 'Nag droga siya', NULL, NULL, NULL),
(675, 'Ralph Don Villanueva Costales ', 'Kenedy Dela Cru', 'inprogress', 'Si Kenedy Dela Cruz ay laging nangunguna sa kaguluhan dito sa san fabian', '', '2025-03-06', 447, 596, 0, 502, 'Nagkaroon ng injury ang pinsan ko dahil kay Kenedy Dela Cruz', 'San Fabian', '2025-03-05', '11:36:00 PM', 'Nagsuntukan', 'Misunderstanding ', NULL, NULL, NULL),
(676, 'Brayan Villanueva Aquino ', 'jake', 'inprogress', 'hdjdhd', '', '2025-03-06', 443, 578, 0, 472, 'jdjdjd', 'San Fabian', '2025-03-29', '02:13:00 PM', 'jdjdjd', 'jdjdjdj', NULL, NULL, NULL),
(677, 'Yra Lei Garcia Garcia ', 'Husband ', 'inprogress', 'Binugbog ako ng asawa ko kase nanghingi ako ng pera sakanya para sa gagastusin ko para sa aming bahay ngunit ito’y bigla na lang nagalit at sinampal at binugbog na lang ako.', '', '2025-03-06', 443, 464, 0, 505, 'Binugbog at pinag sasampal ako ng asawa ko dahil galit siya', 'San Fabian', '2025-03-01', '01:50:00 PM', 'Binugbog ako dahil na rin sa kalasingan niya kaya nagawa niyang pagbuhatan ako ng kamay', 'Nanghingi ako ng pera bigla na lang nagalit', NULL, NULL, NULL),
(678, 'Ryan Esguerra Argonia ', 'Randy Lasingero', 'pnp', 'Yung aso ko hinukinat kintay ng kapit bahay naming manginginom na si Randy', 'pnp', '2025-03-07', 468, 599, 0, 506, 'Alas Ginko na ng hapon nag hahanao ng gagawing pulutan si Randy nakita niya aso namin', 'Silauan Norte', '2025-03-07', '02:59:00 PM', 'Inalit niya ng butonyung aso namin tapos nung nakalapit na oinalonniya sa ulo ang masaklap pa binigyan niya pa kami ', 'Alas Ginko na kasi ', NULL, NULL, NULL),
(680, 'Nino Christopher Gaffud San Jose ', 'dont know', 'inprogress', 'Trespassing', '', '2025-03-10', 460, 582, 0, 512, 'trespassing on our balcony and trashing bottles', 'Silauan Norte ', '2025-03-10', '05:00:00 PM', '', 'no idea', NULL, NULL, NULL),
(681, 'Eugene Gamiz Tobias ', 'Paguila&#039;s ', 'pnp', 'Maingay dito bilyaran sa harap kahit 11-12 na ng gabi', 'pnp', '2025-03-10', 470, 575, 0, 467, 'They make noise almost every night without realizing that theres a boarding house in front of the bilyaran', 'Silauan Sur ', '2025-02-20', '11:50:00 PM', 'Nag iinuman minsan hindi pero maingay', 'I do know', NULL, NULL, NULL),
(682, 'Diane Dizon Candalla ', 'Fatima Luna', 'Approved', 'Ninakaw ng kapitbahay namin yung wallet ng auntie ko. ', '', '2025-03-10', 444, 605, 0, 513, 'Nung araw na iyon, may birthday sa bahay namin. Since nakagawian ang paghahanda at pag-iimbita ng mga kapitbahay, ganon nga po ang nangyari. During kainan at dahil na rin busy kaming lahat sa pag-asikaso sa mga bisita, hindi na kami aware sa kung may mga ', 'Silauan Norte ', '2025-03-06', '03:50:00 PM', 'Busy po kami that time sa pag-aasikaso ng mga bisita, tsaka lang napansin ng auntie ko na nawawala yung wallet niya nung tapos na ang celebration at nagpapahinga na kaming lahat. Nung time na busy ang lahat, dun naman pumasok yung anak ng kapitbahay namin sa kwarto ng auntie ko. ', 'Need niya raw ng pambili ng gamot para sa kaniyang lolo', NULL, NULL, NULL),
(683, 'Jhea Mae Salvador Duco ', 'Mar Cadiente', 'inprogress', 'Pinasok nia ang aking bahay ng walang pahintulot ko', '', '2025-03-10', 446, 604, 0, 511, 'Pumunta sia sa bahay at nagsisigaw', 'Silauan Sur ', '2025-03-08', '08:30:00 PM', 'Pinagbawalan ko sia pumasok sa aking bahay dahil may nagawa itong masama sa akin', 'May gusto siang kunin sa aking bahay', NULL, NULL, NULL),
(685, 'Jana Cabigting Villafuerte ', 'Siya', 'inprogress', 'Ang daming iba diyan bakit s&#039;ya pa!!!', '', '2025-03-10', 457, 609, 0, 518, 'Nothing', 'San Fabian', '2025-03-10', '06:00:00 PM', '', 'Kasi na fall ako ', NULL, NULL, NULL),
(686, 'Jilian Sudio Labasan ', 'Jana Villafuerte', 'inprogress', 'nag rereview kame sa isang kapehan ng bigla siang nanggulo', '', '2025-03-10', 447, 464, 0, 514, 'nang gulo sia sa kapehan', 'San Fabian', '2025-02-28', '10:20:00 AM', 'nang rereview kame ng bigla siang pumasok sa kapehan', 'kulang sia sa attention ', NULL, NULL, NULL),
(687, 'Yra Lei Garcia Garcia ', 'Angel Rosario', 'inprogress', 'Ginamit nia ang pangalan ko sa pang scam ng tao', '', '2025-03-10', 449, 464, 0, 505, 'nang scam sia gamit ang pangalan ko', 'San Fabian', '2025-03-08', '10:35:00 AM', 'Gumamit ng pekeng pangalan pang scam', 'Nang sscam sia para mangutang ng pera', NULL, NULL, NULL),
(688, 'Yra Lei Garcia Garcia ', 'Franz Butac', 'inprogress', 'Bumili ako ng motor na hindi ko alam ay ninakaw lang pala', '', '2025-03-10', 456, 464, 0, 505, 'bumili ako ng motor ', 'Silauan Sur ', '2025-03-02', '10:15:00 AM', 'Naghahanap ako ng secondhand na motor at may nakita akong nagbebenta kaya binili ko, hindi ko alam na nakaw pala', 'nangangaylangan ng pera ang nagbenta ng motor', NULL, NULL, NULL),
(689, 'Yra Lei Garcia Garcia ', 'Mirasol Binavidez', 'settled_in_barangay', 'Bumili sia ng aking lupa at nag bayad sia gamit ang checke', 'barangay', '2025-03-10', 452, 464, 0, 505, 'Nag bayad gamit ang checke ngunit walang pondo ang kanyang account', 'Silauan Norte', '2025-03-10', '03:25:00 PM', 'binenta ko ang aking lupa', 'Gusto niang makuha ang titulo ng aking lupa', NULL, NULL, NULL),
(690, 'Jericho Maddam-ot Soriano ', 'Tony Valdez', 'inprogress', 'nilagay nia ang cellphone ng classmate ko sa aking bag', '', '2025-03-10', 471, 464, 0, 480, 'nilagay nia sa aking bag ang selpon ng aking classmate', 'Silauan Sur ', '2025-03-10', '11:05:00 AM', 'Pinag tripan nia ako para palabasin na magnanakaw ako', 'Gusto nia akong pag bintangan na nag nakaw', NULL, NULL, NULL),
(691, 'Jericho Maddam-ot Soriano ', 'JR Gumabon', 'Approved', 'Nagpapanggap para daw sa pag papagamot ng kanyang tatay', '', '2025-03-10', 472, 464, 0, 480, 'sia ay nagpapanggap', 'Silauan Norte ', '2025-03-01', '11:35:00 AM', 'naawa ako kaya binigyan ko hindi ko alam na nanloloko pala', 'para makakuha ng pera', NULL, NULL, NULL),
(693, 'Mark P Dacs ', 'Mark Reyzon Mabini', 'Approved', 'HENDE PA TAPOS CAPSTONE NAMIN', '', '2025-03-11', 474, 613, 0, 522, 'Hende ko alam', 'Silauan Norte ', '2025-03-02', '09:34:00 AM', 'Nagalit si teacher', 'Walang nagawa', NULL, NULL, NULL),
(694, 'John Lloyd C Manuel ', 'Juan dela Cruz', 'inprogress', 'natutulog ako ng bigla nalang may nag hahamon ng away sakin sa labas ng bahay', '', '2025-03-11', 447, 608, 0, 517, 'nagbabato ng bote at bato', 'Silauan Sur ', '2025-03-10', '05:40:00 AM', 'nagmumura mura', 'naghahamon lang ng away', NULL, NULL, NULL),
(695, 'Loraine Ann Manaligod Lagua ', 'mark domingo', 'inprogress', 'nais ko po magsampa ng reklamo dahil sa pananakit na kaniyang ginawa saakin.', '', '2025-03-11', 464, 602, 0, 509, 'ako po ay kaniyang tinulak sa hagdan at ako at nagtamo ng pasa at galos.', 'Silauan Sur ', '2025-03-10', '04:30:00 PM', 'bigla nalang niya akong tinulak.', 'dahil sa hindi pagkakaunawaan.', NULL, NULL, NULL),
(696, 'Olzen Corpuz Melendrez ', 'Adrian', 'inprogress', 'someone use a false certificates', '', '2025-03-11', 442, 603, 0, 523, 'someone use a false certificates to tye baranggay', 'Silauan Norte', '2025-03-04', '08:12:00 AM', 'when they submit some requirments to the baranggay i saw the false certification', 'i donth know', NULL, NULL, NULL),
(698, 'Carina Jane Sumibcay Gumabon ', 'Residence of Brgy maligaya', 'Rejected', 'Maraming nag papatayo ng bahay sa di nila lupa', '', '2025-03-11', 475, 614, 0, 524, 'Maraming nag papatayo ng bahay sa di nila lupa', 'Maligaya', '2025-03-11', '02:32:00 PM', 'ayon sa nakikita ko', 'mga agum sa lupa', NULL, NULL, NULL),
(699, 'Vhen Carl Maque Castillo ', 'Kuya Rico, Kuya Mando', 'Approved', 'Isang gabi sa Silauan Norte, may inuman sa tindahan ni aling Maricel malapit sa Basketball Court. Noong una ay nagkakatuwaan pa naman silang nagtatagay na magkukumpare at, ngunit nang tumagal, uminit ang ulo ng ilan dahil sa matagal nang alitan.\r\n\r\nSi Kuya Rico, isang tricycle driver dito sa amin, ay biglang nagtaas ng boses kay kuya Mando, isang construction worker, matapos nitong biruin siya tungkol sa pagkatalo sa pustahan sa basketball. Ang biro, na noong simula’y ay walang malisya, biglang nauwi sa matinding sagutan. Sinubukan ni Tatay Ernesto, asawa ni aling Maricel na may-ari ng tindahan, na awatin sila, ngunit hindi nagtagal ay nagsuntukan na ang dalawa.\r\n\r\nDahil sa kaingayan at tensyon, ang iba nilang kainuman na naroon ay nadamay. May humihila, may sumusuntok, at may iba namang nagtutulak sa mga nag-aaway. Isang upuan ang naihagis, at ang ilang bote ng alak ay nabasag sa sahig. Nagmistulang rambol ang buong eksena, at walang tiyak kung sino ang tunay na may kasalanan sa pananakit.\r\n\r\nAko naman, isang taong nadawit lamang, ay tinamaan ng isang bote na bagay sa ulo. Dumilim ang paningin ko at naramdaman kong bumagsak ako sa semento. Hindi ko na matandaan kung sino ang may nahagis ng bote ang alam ko lang, may dumugo sa sentido ko. Nang matauhan ako, nasa barangay hall na ako, at maraming nag-uusap tungkol sa nangyari.', '', '2025-03-11', 443, 615, 0, 525, 'May nagkasakitan dahil sa kalasingan at may mga tao na nasaktan na hindi naman kasali sa Gulo', 'Silauan Norte', '2025-01-01', '11:45:00 PM', 'Nagiinuman lang sila noong una, ng biglang pinagtaasan ng boses si kuya Rico si kuya Mando na siyang pinagsimupan ng init ng ulo ng dalawa', 'Dahil sa biniro ni kuya Rico i kuya mando tungkol sa pagkatalo sa pustahan sa basketball.', NULL, NULL, NULL),
(700, 'Helen Agcanas Labayog ', 'David Pinzon', 'inprogress', 'Kumuha sia ng pyesa sa shop namin', '', '2025-03-11', 465, 464, 0, 527, 'Pinag bantay namin sia shop ngunit nakita namin sa cctv na nag nakaw sia', 'Maligaya', '2025-03-10', '04:35:00 PM', 'Nakita sa cctv na nagnakaw sia', 'Wala siang pambayad', NULL, NULL, NULL),
(701, 'Benjamin Celestial Villanueva ', 'John Michael Gamboa', 'inprogress', 'Sinuntok ako sa public market, bumibili ako ng mangyari yin', '', '2025-03-11', 447, 617, 0, 528, 'Sinuntok ako sa muka', 'Maligaya', '2025-03-10', '04:50:00 PM', 'Nasa pamilihan ako ng bigla akong sinuntok', 'Bigla nalang nangyari yun', NULL, NULL, NULL),
(704, 'Jester Albento Hernandez ', 'Jericho Nemiada', 'inprogress', 'Nag paputok. Siya Ng baril noong nalasing', '', '2025-03-11', 447, 603, 0, 530, 'bigla Niya kinuha baril Niya at. Pinaputok niya', 'Silauan Norte', '2025-03-20', '10:00:00 PM', 'Narinig ko na may nag paputok Siya Ng baril', 'Sa sobrang kalasingan niya', NULL, NULL, NULL),
(705, 'JHON ERICO M. NEMIADA ', 'JESTER HERNANDEZ BARIKIS', 'Approved', '\r\n\r\nMark, a local journalist, rushed to publish an exposé on the mayor’s alleged corruption without verifying his source. The story went viral, igniting public outrage—but the evidence was fake.  \r\n\r\nAt a press conference, Mark accused the mayor without proof, committing *Unlawful Utterances*. Authorities intervened. His career crumbled, a victim of his own reckless reporting.', '', '2025-03-11', 455, 603, 0, 531, 'local journalist, rushed to publish an exposé on the mayor’s alleged corruption without verifying his source', 'Silauan Norte', '2025-03-02', '10:52:00 PM', 'Mark’s downfall began with a rush to break a sensational story. He received a tip about the mayor’s alleged corruption and, without verifying the details, published the article. The evidence he used was doctored, which meant his report was based on false information. When the story went viral and public pressure mounted, Mark confronted the mayor in a heated public exchange, making unsubstantiated accusations. This series of impulsive actions—publishing unverified information and issuing unlawful utterances—led to legal repercussions and ultimately ruined his career.', 'Mark&#039;s downfall occurred because he prioritized breaking a sensational story over verifying its accuracy. Eager to capture attention and make headlines, he relied on an unverified tip and published doctored evidence. This decision led to the spread of false information, and when public scrutiny intensified, his emotionally charged and unsubstantiated public accusations further undermined his credibility, ultimately resulting in legal and professional consequences.', NULL, NULL, NULL),
(706, 'James Russel Pascual Lemi ', 'no relative', 'inprogress', 'good evening ma&#039;am&amp;sir\r\nmagrereklamo po sana ako dahil yung umutang saken amabot na ng 2 years na hindi parin ako binabayaran at sa tueig china chat ko ini ignore lang ako na tila ba wala ng bayad mag bayad.', '', '2025-03-11', 454, 464, 0, 532, 'i didn&#039;t pay my money', 'Maligaya', '2025-03-11', '07:59:00 PM', '', 'i give him personally', NULL, NULL, NULL),
(707, 'Mark P Dacs ', 'Bj', 'inprogress', 'La nako kwarta', '', '2025-03-12', 471, 613, 0, 522, 'Naubos ', 'Ipil', '2025-03-10', '05:19:00 PM', 'Naubos', 'Diko alam', NULL, NULL, NULL),
(708, 'Mark P Dacs ', '', 'inprogress', 'Theft', '', '2025-03-12', 465, 613, 0, 522, 'Phone theft', 'Gucab', '2025-03-11', '05:24:00 PM', 'Stolen phone in street', 'The phone has been suddenly stolen', NULL, NULL, NULL),
(709, 'Mark P Dacs ', '', 'Rejected', 'Theft', '', '2025-03-12', 465, 613, 0, 522, 'Phone theft', 'Maligaya', '2025-03-11', '05:24:00 PM', 'Stolen phone in street', 'The phone has been suddenly stolen', NULL, NULL, NULL),
(710, 'Mark P Dacs ', 'Mario', 'Rejected', 'Theft', '', '2025-03-12', 465, 613, 0, 522, 'Phone theft', 'Silauan Norte', '2025-03-11', '05:24:00 PM', 'Stolen phone in street', 'The phone has been suddenly stolen', NULL, NULL, NULL),
(711, 'Eugene Gamiz Tobias ', 'Me', 'pnp', 'My dog has been killed in front of my house', 'pnp', '2025-03-12', 479, 575, 0, 467, 'I was at my office when the accident happen', 'Buneg', '2025-03-12', '01:53:00 PM', 'I check my cctv and one of my neighbors, do the killing', 'It seems like his trying to get inside of our house', NULL, NULL, NULL),
(712, 'Eugene Gamiz Tobias ', 'Me', 'inprogress', 'One of my classmate ha been bullied ', '', '2025-03-12', 454, 575, 0, 467, 'Wheenever they bullied the person, they trying to get all of his money under his wallet', 'Aromin', '2025-02-11', '06:00:00 PM', 'It happen when one of their classmate pushes the boy and they start stealing all of his money', 'They push the person', NULL, NULL, NULL),
(713, 'Dave Raphael Mores Ignacio ', 'The main person involved in the incident is Mr. Juan Dela Cruz, a resident of Barangay Fugu. Witnesses to the incident include several local residents, shop owners, and barangay officials who tried to mediate the situation before the police intervened.', 'inprogress', 'complaint regarding an incident that constitutes a violation of Article 155 of the Revised Penal Code, also known as &quot;Alarms and Scandals.&quot; The incident caused significant disturbance and public alarm in our community in Fugu, and I seek appropriate action to be taken against the responsible individual.', '', '2025-03-12', 447, 579, 0, 476, 'On the night of March 10, 2025, at approximately 11:30 PM, a loud and continuous commotion erupted near our residential area. A certain Mr. Juan Dela Cruz, a known resident of Barangay Fugu, was seen shouting profanities and aggressively banging on parked', 'Fugu', '2025-03-10', '11:30:00 PM', 'Mr. Dela Cruz was reportedly seen exiting a small store where he had been drinking with friends. Upon reaching the street, he suddenly started shouting aggressively and kicking garbage bins. He then proceeded to hit several parked motorcycles, triggering their alarms and further intensifying the disturbance. A group of residents attempted to calm him down, but he refused to cooperate and instead escalated his aggressive behavior. The barangay tanods (village watchmen) arrived and tried to restrain him, but he resisted, prompting them to call the police for further assistance.', 'According to several witnesses, Mr. Dela Cruz appeared to be under the influence of alcohol. It was reported that he had an altercation earlier in the evening at a local drinking establishment. His frustration seemingly boiled over, leading him to cause the public disturbance in question. His erratic behavior caused undue alarm and fear among the residents, particularly the elderly and children in the area.', NULL, NULL, NULL),
(714, 'Dave Raphael Mores Ignacio ', 'Dave - nagrereklamo Mark - inirereklamo Aleng Juliana at Tia Isabel - saksi', 'inprogress', 'Ako po si Dave Raphael Ignacio, isang residente ng Suyong. Ipinapahayag ko ang aking reklamo laban kay [Pangalan ng Inirereklamo] dahil sa pananakit na nagresulta sa di-gaanong pisikal na pinsala alinsunod sa Artikulo 265 ng Revised Penal Code.', '', '2025-03-12', 464, 579, 0, 476, 'Noong Marso 12, bandang 7:20 AM, habang ako ay nasa gilid ng daan, bigla akong nilapitan ni Mark at inakusahan ng isang bagay na hindi ko ginawa. Sa kabila ng aking pagpapaliwanag, nagalit siya at sinaktan ako. Sinaktan niya ako sa pamamagitan ng pananapa', 'Soyung', '2025-03-12', '07:20:00 AM', 'Habang ako ay naglalakad sa gilid ng daan, nilapitan ako ni Mark at agad akong sinigawan. Sinundan ito ng pananapak, na nagdulot sa akin ng sugat/pasa/kirot sa aking katawan. May mga saksi rin sa pangyayari, kabilang sina Aleng Juliana at Tia Isabel.\r\n\r\nDahil sa insidenteng ito, ako ay nakaranas ng sakit at hindi maayos na nakagalaw sa loob ng ilang araw. Dahil dito, nais kong sampahan ng reklamo si [Pangalan ng Inirereklamo] upang magkaroon ng hustisya sa aking sinapit. Inaasahan ko ang inyong agarang aksyon sa bagay na ito.', 'Ang pananakit ay nag-ugat mula sa isang hindi pagkakaunawaan tungkol sa pagkakalat ko raw na hindi siya nagbabayad ng uatng na pawang walang katotohanan. Sa halip na pag-usapan ito nang maayos, pinili ni Mark na gumamit ng dahas laban sa akin.', NULL, NULL, NULL),
(733, 'Christopher Lance Javellana Frias ', 'Ivan Ruel Baliton', 'Rejected', 'nag nakaw  siya ng manok', '', '2025-03-12', 444, 603, 0, 533, 'nag nakaw ng manok', 'Silauan Norte', '2025-03-06', '05:20:00 AM', 'may nakita  siyang manok  ng  pauwi  siya ng madaling  araw', 'tulog ang may  ari kaya  pumasom sa bakuran nghapit bahay namin', NULL, NULL, NULL),
(734, 'Christopher Lance Javellana Frias ', 'Ivan Ruel Baliton', 'inprogress', 'nag nakaw  siya ng manok', '', '2025-03-12', 444, 603, 0, 533, 'nag nakaw ng manok', 'Libertad', '2025-03-06', '05:20:00 AM', 'may nakita  siyang manok  ng  pauwi  siya ng madaling  araw', 'tulog ang may  ari kaya  pumasom sa bakuran nghapit bahay namin', NULL, NULL, NULL),
(735, 'Christopher Lance Javellana Frias ', 'Ivan Ruel Baliton', 'inprogress', 'nag nakaw  siya ng manok', '', '2025-03-12', 444, 603, 0, 533, 'nag nakaw ng manok', 'Malibago', '2025-03-06', '05:20:00 AM', 'may nakita  siyang manok  ng  pauwi  siya ng madaling  araw', 'tulog ang may  ari kaya  pumasom sa bakuran nghapit bahay namin', NULL, NULL, NULL),
(736, 'Christopher Lance Javellana Frias ', 'Ivan Ruel Baliton', 'inprogress', 'nag nakaw  siya ng manok', '', '2025-03-12', 444, 603, 0, 533, 'nag nakaw ng manok', 'Santa Ana', '2025-03-06', '05:20:00 AM', 'may nakita  siyang manok  ng  pauwi  siya ng madaling  araw', 'tulog ang may  ari kaya  pumasom sa bakuran nghapit bahay namin', NULL, NULL, NULL),
(737, 'Christopher Lance Javellana Frias ', 'Ivan Ruel Baliton', 'settled_in_barangay', 'nag nakaw  siya ng manok', 'barangay', '2025-03-12', 444, 603, 0, 533, 'nag nakaw ng manok', 'Maligaya', '2025-03-06', '05:20:00 AM', 'may nakita  siyang manok  ng  pauwi  siya ng madaling  araw', 'tulog ang may  ari kaya  pumasom sa bakuran nghapit bahay namin', NULL, NULL, NULL),
(738, 'Christopher Lance Javellana Frias ', 'Ivan Ruel Baliton', 'inprogress', 'nag nakaw  siya ng manok', '', '2025-03-12', 444, 603, 0, 533, 'nag nakaw ng manok', 'San Fabian', '2025-03-06', '05:20:00 AM', 'may nakita  siyang manok  ng  pauwi  siya ng madaling  araw', 'tulog ang may  ari kaya  pumasom sa bakuran nghapit bahay namin', NULL, NULL, NULL),
(739, 'Christopher Lance Javellana Frias ', 'Ivan Ruel Baliton', 'inprogress', 'nag nakaw  siya ng manok', '', '2025-03-12', 444, 603, 0, 533, 'nag nakaw ng manok', 'Garit Sur', '2025-03-06', '05:20:00 AM', 'may nakita  siyang manok  ng  pauwi  siya ng madaling  araw', 'tulog ang may  ari kaya  pumasom sa bakuran nghapit bahay namin', NULL, NULL, NULL),
(740, 'Christopher Lance Javellana Frias ', 'Ivan Ruel Baliton', 'inprogress', 'nag nakaw  siya ng manok', '', '2025-03-12', 444, 603, 0, 533, 'nag nakaw ng manok', 'Garit Norte', '2025-03-06', '05:20:00 AM', 'may nakita  siyang manok  ng  pauwi  siya ng madaling  araw', 'tulog ang may  ari kaya  pumasom sa bakuran nghapit bahay namin', NULL, NULL, NULL),
(741, 'Christopher Lance Javellana Frias ', 'Ivan Ruel Baliton', 'Rejected', 'nag nakaw  siya ng manok', '', '2025-03-12', 444, 603, 0, 533, 'nag nakaw ng manok', 'Silauan Norte', '2025-03-06', '05:20:00 AM', 'may nakita  siyang manok  ng  pauwi  siya ng madaling  araw', 'tulog ang may  ari kaya  pumasom sa bakuran nghapit bahay namin', NULL, NULL, NULL),
(742, 'Christopher Lance Javellana Frias ', 'Ivan Ruel Baliton', 'inprogress', 'nag nakaw  siya ng manok', '', '2025-03-12', 444, 603, 0, 533, 'nag nakaw ng manok', 'Buneg', '2025-03-06', '05:20:00 AM', 'may nakita  siyang manok  ng  pauwi  siya ng madaling  araw', 'tulog ang may  ari kaya  pumasom sa bakuran nghapit bahay namin', NULL, NULL, NULL),
(743, 'Christopher Lance Javellana Frias ', 'Ivan Ruel Baliton', 'inprogress', 'nag nakaw  siya ng manok', '', '2025-03-12', 444, 603, 0, 533, 'nag nakaw ng manok', 'Carulay', '2025-03-06', '05:20:00 AM', 'may nakita  siyang manok  ng  pauwi  siya ng madaling  araw', 'tulog ang may  ari kaya  pumasom sa bakuran nghapit bahay namin', NULL, NULL, NULL),
(744, 'Christopher Lance Javellana Frias ', 'Ivan Ruel Baliton', 'inprogress', 'nag nakaw  siya ng manok', '', '2025-03-12', 444, 603, 0, 533, 'nag nakaw ng manok', 'San Fabian', '2025-03-06', '05:20:00 AM', 'may nakita  siyang manok  ng  pauwi  siya ng madaling  araw', 'tulog ang may  ari kaya  pumasom sa bakuran nghapit bahay namin', NULL, NULL, NULL),
(745, 'Christopher Lance Javellana Frias ', 'Ivan Ruel Baliton', 'inprogress', 'nag nakaw  siya ng manok', '', '2025-03-12', 444, 603, 0, 533, 'nag nakaw ng manok', 'Dammang East', '2025-03-06', '05:20:00 AM', 'may nakita  siyang manok  ng  pauwi  siya ng madaling  araw', 'tulog ang may  ari kaya  pumasom sa bakuran nghapit bahay namin', NULL, NULL, NULL),
(746, 'Mica Ella Domine Mina ', 'Haryl Concepcion', 'inprogress', 'Inaakit niya ako kahit  parehas na kaming may  Asawa', '', '2025-03-12', 451, 616, 0, 526, 'Pag  dumadaaan ako sa bahay nila  Napapansin ko na lagi siyan nakatiginsakin at parang  unti uti niyang pinakapkita  maselang parte  ng katawan niya', 'Maligaya', '2025-03-14', '11:25:00 AM', 'lagi kong napapansin pag daan ko', 'Pag  lagi  akon dumadaan sa tapat ng bahay nila', NULL, NULL, NULL),
(747, 'Mica Ella Domine Mina ', 'Haryl Concepcion', 'inprogress', 'Inaakit niya ako kahit  parehas na kaming may  Asawa', '', '2025-03-12', 451, 616, 0, 526, 'Pag  dumadaaan ako sa bahay nila  Napapansin ko na lagi siyan nakatiginsakin at parang  unti uti niyang pinakapkita  maselang parte  ng katawan niya', 'Ipil', '2025-03-14', '11:25:00 AM', 'lagi kong napapansin pag daan ko', 'Pag  lagi  akon dumadaan sa tapat ng bahay nila', NULL, NULL, NULL),
(748, 'Mica Ella Domine Mina ', 'Haryl Concepcion', 'inprogress', 'Inaakit niya ako kahit  parehas na kaming may  Asawa', '', '2024-10-22', 451, 616, 0, 526, 'Pag  dumadaaan ako sa bahay nila  Napapansin ko na lagi siyan nakatiginsakin at parang  unti uti niyang pinakapkita  maselang parte  ng katawan niya', 'Silauan Norte', '2025-03-14', '11:25:00 AM', 'lagi kong napapansin pag daan ko', 'Pag  lagi  akon dumadaan sa tapat ng bahay nila', NULL, NULL, NULL),
(749, 'Mica Ella Domine Mina ', 'Haryl Concepcion', 'inprogress', 'Inaakit niya ako kahit  parehas na kaming may  Asawa', '', '2025-03-12', 451, 616, 0, 526, 'Pag  dumadaaan ako sa bahay nila  Napapansin ko na lagi siyan nakatiginsakin at parang  unti uti niyang pinakapkita  maselang parte  ng katawan niya', 'Fugu', '2025-03-14', '11:25:00 AM', 'lagi kong napapansin pag daan ko', 'Pag  lagi  akon dumadaan sa tapat ng bahay nila', NULL, NULL, NULL),
(750, 'Mica Ella Domine Mina ', 'Haryl Concepcion', 'inprogress', 'Inaakit niya ako kahit  parehas na kaming may  Asawa', '', '2025-03-12', 451, 616, 0, 526, 'Pag  dumadaaan ako sa bahay nila  Napapansin ko na lagi siyan nakatiginsakin at parang  unti uti niyang pinakapkita  maselang parte  ng katawan niya', 'Aromin', '2025-03-14', '11:25:00 AM', 'lagi kong napapansin pag daan ko', 'Pag  lagi  akon dumadaan sa tapat ng bahay nila', NULL, NULL, NULL),
(751, 'Mica Ella Domine Mina ', 'Haryl Concepcion', 'inprogress', 'Inaakit niya ako kahit  parehas na kaming may  Asawa', '', '2025-03-12', 451, 616, 0, 526, 'Pag  dumadaaan ako sa bahay nila  Napapansin ko na lagi siyan nakatiginsakin at parang  unti uti niyang pinakapkita  maselang parte  ng katawan niya', 'Silauan Norte', '2025-03-14', '11:25:00 AM', 'lagi kong napapansin pag daan ko', 'Pag  lagi  akon dumadaan sa tapat ng bahay nila', NULL, NULL, NULL),
(752, 'Mica Ella Domine Mina ', 'Haryl Concepcion', 'inprogress', 'Inaakit niya ako kahit  parehas na kaming may  Asawa', '', '2025-01-12', 451, 616, 0, 526, 'Pag  dumadaaan ako sa bahay nila  Napapansin ko na lagi siyan nakatiginsakin at parang  unti uti niyang pinakapkita  maselang parte  ng katawan niya', 'Silauan Norte', '2025-03-14', '11:25:00 AM', 'lagi kong napapansin pag daan ko', 'Pag  lagi  akon dumadaan sa tapat ng bahay nila', NULL, NULL, NULL),
(753, 'Mica Ella Domine Mina ', 'Haryl Concepcion', 'inprogress', 'Inaakit niya ako kahit  parehas na kaming may  Asawa', '', '2025-03-12', 451, 616, 0, 526, 'Pag  dumadaaan ako sa bahay nila  Napapansin ko na lagi siyan nakatiginsakin at parang  unti uti niyang pinakapkita  maselang parte  ng katawan niya', 'Garit Sur', '2025-03-14', '11:25:00 AM', 'lagi kong napapansin pag daan ko', 'Pag  lagi  akon dumadaan sa tapat ng bahay nila', NULL, NULL, NULL),
(754, 'Mica Ella Domine Mina ', 'Haryl Concepcion', 'inprogress', 'Inaakit niya ako kahit  parehas na kaming may  Asawa', '', '2025-03-12', 451, 616, 0, 526, 'Pag  dumadaaan ako sa bahay nila  Napapansin ko na lagi siyan nakatiginsakin at parang  unti uti niyang pinakapkita  maselang parte  ng katawan niya', 'Malibago', '2025-03-14', '11:25:00 AM', 'lagi kong napapansin pag daan ko', 'Pag  lagi  akon dumadaan sa tapat ng bahay nila', NULL, NULL, NULL),
(755, 'Mica Ella Domine Mina ', 'Haryl Concepcion', 'inprogress', 'Inaakit niya ako kahit  parehas na kaming may  Asawa', '', '2025-03-12', 451, 616, 0, 526, 'Pag  dumadaaan ako sa bahay nila  Napapansin ko na lagi siyan nakatiginsakin at parang  unti uti niyang pinakapkita  maselang parte  ng katawan niya', 'Gucab', '2025-03-14', '11:25:00 AM', 'lagi kong napapansin pag daan ko', 'Pag  lagi  akon dumadaan sa tapat ng bahay nila', NULL, NULL, NULL),
(756, 'Mica Ella Domine Mina ', 'Haryl Concepcion', 'inprogress', 'Inaakit niya ako kahit  parehas na kaming may  Asawa', '', '2025-03-12', 451, 616, 0, 526, 'Pag  dumadaaan ako sa bahay nila  Napapansin ko na lagi siyan nakatiginsakin at parang  unti uti niyang pinakapkita  maselang parte  ng katawan niya', 'Soyung', '2025-03-14', '11:25:00 AM', 'lagi kong napapansin pag daan ko', 'Pag  lagi  akon dumadaan sa tapat ng bahay nila', NULL, NULL, NULL),
(757, 'Mica Ella Domine Mina ', 'Haryl Concepcion', 'inprogress', 'Inaakit niya ako kahit  parehas na kaming may  Asawa', '', '2025-03-12', 451, 616, 0, 526, 'Pag  dumadaaan ako sa bahay nila  Napapansin ko na lagi siyan nakatiginsakin at parang  unti uti niyang pinakapkita  maselang parte  ng katawan niya', 'Fugu', '2025-03-14', '11:25:00 AM', 'lagi kong napapansin pag daan ko', 'Pag  lagi  akon dumadaan sa tapat ng bahay nila', NULL, NULL, NULL),
(758, 'Mica Ella Domine Mina ', 'Haryl Concepcion', 'inprogress', 'Inaakit niya ako kahit  parehas na kaming may  Asawa', '', '2025-03-12', 451, 616, 0, 526, 'Pag  dumadaaan ako sa bahay nila  Napapansin ko na lagi siyan nakatiginsakin at parang  unti uti niyang pinakapkita  maselang parte  ng katawan niya', 'Ipil', '2025-03-14', '11:25:00 AM', 'lagi kong napapansin pag daan ko', 'Pag  lagi  akon dumadaan sa tapat ng bahay nila', NULL, NULL, NULL),
(759, 'Mica Ella Domine Mina ', 'Haryl Concepcion', 'inprogress', 'Inaakit niya ako kahit  parehas na kaming may  Asawa', '', '2025-03-12', 451, 616, 0, 526, 'Pag  dumadaaan ako sa bahay nila  Napapansin ko na lagi siyan nakatiginsakin at parang  unti uti niyang pinakapkita  maselang parte  ng katawan niya', 'Buneg', '2025-03-14', '11:25:00 AM', 'lagi kong napapansin pag daan ko', 'Pag  lagi  akon dumadaan sa tapat ng bahay nila', NULL, NULL, NULL),
(760, 'Mica Ella Domine Mina ', 'Haryl Concepcion', 'inprogress', 'Inaakit niya ako kahit  parehas na kaming may  Asawa', '', '2025-02-12', 451, 616, 0, 526, 'Pag  dumadaaan ako sa bahay nila  Napapansin ko na lagi siyan nakatiginsakin at parang  unti uti niyang pinakapkita  maselang parte  ng katawan niya', 'Silauan Norte', '2025-03-14', '11:25:00 AM', 'lagi kong napapansin pag daan ko', 'Pag  lagi  akon dumadaan sa tapat ng bahay nila', NULL, NULL, NULL),
(761, 'Lean Mae Matias Agana ', 'Gigi ', 'inprogress', 'Nais kong ireklamo si Gigi', '', '2025-03-18', 466, 618, 0, 534, 'kaniyang ipipakalat ang napakasikretong pangyayari na di dapat malaman ng iba ', 'San Fabian', '2025-03-17', '01:30:00 PM', 'Kaniya itong ipinagkalat ', 'Dahil sa di mawaring kadahilanan ', NULL, NULL, NULL),
(762, 'Althea Hana Robles Mahor ', 'Kabataan', 'inprogress', '&quot;Isang hapon sa Barangay Siluan Sur, Echague, nagdaos kami ng salu-salo para sa pista. Habang naglalaro ng &#039;patintero,&#039; nagkaroon ng hindi pagkakaintindihan ang dalawang grupo ng kabataan. \r\n\r\nDahil dito, nagkaroon ng pagtutulakan at isang batang lalaki ang natumba, na nagdulot ng pasa sa kanyang braso. Agad na tumulong ang mga matatanda at tinawag ang barangay tanod para sa paunang lunas. \r\n\r\nSa huli, nagkaayos ang mga kabataan at natutunan ang halaga ng pagkakaintindihan. Nagpatuloy pa rin ang kasiyahan sa kabila ng insidente.&quot;', '', '2025-03-18', 464, 619, 0, 535, 'May mga nataong sugat ang ibang kabataan dahil sa kagulohan', 'Silauan Sur', '2025-01-16', '05:27:00 PM', '&quot;Isang hapon sa Barangay Siluan Sur, Echague, nagdaos kami ng salu-salo para sa pista. Habang naglalaro ng &#039;patintero,&#039; nagkaroon ng hindi pagkakaintindihan ang dalawang grupo ng kabataan. \r\n\r\nDahil dito, nagkaroon ng pagtutulakan at isang batang lalaki ang natumba, na nagdulot ng pasa sa kanyang braso. Agad na tumulong ang mga matatanda at tinawag ang barangay tanod para sa paunang lunas. \r\n\r\nSa huli, nagkaayos ang mga kabataan at natutunan ang halaga ng pagkakaintindihan. Nagpatuloy pa rin ang kasiyahan sa kabila ng insidente.&quot; ', 'May mga nagkapikonang kabataan', NULL, NULL, NULL),
(763, 'Lexter Corpuz Eugenio ', 'me and manong driver who biglang liko and the pasahero ', 'pnp', 'car accident due to biglang liko of the driver ', 'pnp', '2025-03-18', 480, 621, 0, 537, 'car accident ', 'Silauan Sur', '2025-03-18', '06:40:00 PM', 'chill ride and the this manong driver biglang liko then thats the cause of the accident ', 'Biglang liko ', NULL, NULL, NULL),
(764, 'Aiselle Nipales Obedoza ', 'marlita guzman', 'inprogress', 'nais kong ireklamo ang aming kapitbahay ', '', '2025-03-19', 481, 622, 0, 539, 'kami ay kaniyang binantaan gamit ang tabas', 'Silauan Sur', '2025-03-06', '03:30:00 PM', 'sumugod siya ng may bitbit na sandata, gamit yun kaniya kaming binantaan.', 'dahil sa hindi magandang pagkakaunawaan ', NULL, NULL, NULL),
(765, 'Realyn K Carlos ', 'jozel', 'inprogress', 'nais kong ireklamo ang isang babae itago natin sa pangalang jozel', '', '2025-03-19', 482, 623, 0, 540, 'kaniyang iniabandona ang kaniyang anak na 6 years old palamang', 'Silauan Sur', '2025-02-14', '09:35:00 AM', 'kaniyang inilagay ang kaniyang anak sa basket at iniwan ito.', 'wala siyang sapat na pera upang alagaan ang kaniyang anak', NULL, NULL, NULL),
(766, 'marlyn B Cabangbang ', 'jojo', 'inprogress', 'nais kong ireklamo si jojo ', '', '2025-03-19', 442, 608, 0, 543, 'siya ay nagiissue ng pekeng sertipiko ', 'Silauan Sur', '2025-02-25', '01:30:00 PM', 'kaniyang ginaya ang itsura ng mga orihinal na mga sertipiko', 'para makakuha ng pera', NULL, NULL, NULL),
(767, 'Ivan megg Icalla BAGTILAY ', 'Johnlloyd ', 'pnp', 'Pagbibilad ng palay sa kalsada', 'pnp', '2025-03-20', 483, 624, 0, 541, 'Pagkatapos namin mag laba ng damit at bedsheet nag bilag sila ng palay', 'Ipil', '2025-02-19', '12:05:00 AM', 'Nauna naman kami naka sampay at nakita nya na may nakabilad na damit, nag bilad padin ng palay', 'N/A', NULL, NULL, NULL),
(768, 'clarke zyfer miana sidamon ', 'thea', 'inprogress', 'nais kong ireklamo si thea', '', '2025-03-20', 448, 625, 0, 544, 'pinagbantaan niya ang aming bunsong kaptid', 'Silauan Sur', '2025-03-12', '10:00:00 AM', 'sinugod niya ang aming kapatid saka ito pinagbantaan ', 'misunderstanding', NULL, NULL, NULL),
(769, 'Billy Joe Aguila Bangsoy ', 'kagawad', 'inprogress', 'rumor is that one of our kagawad allegedly peeping. The story start with him when he is about to work but suddenly he feel like he needs to pee so he went back to his backyard to pee. Little did he know that place where he is peeing is visible to where the CR/Bathroom of the other house(His neighbor), and someone is taking a shower at that time. Bad timing is that the lola of the one who is taking a shower, her Granddaughter, went outside and saw Kagawad (A) coming from that place where the bathroom is visible and thought that kagawad A is peeping his granddaughter, so he spread a rumor in the barangay and worse part is that rumor spread like a wildfire not only in that barangay but also the neighboring barangay. P.S. this is kagawad As POV. after that incident, the wife of this kagawag want to take the rumor LEGALY whether her husband is truly guilty or not. last few days, the Granddaughter went back to Manila (she works there) and the lola vanished, few days later rumor has it that lola went to different place. No one knows if the rumor is true or not, but, actions speaks base on what happen few days later.', '', '2025-03-20', 455, 619, 0, 546, 'Allegedly peeping', 'Silauan Sur', '2025-03-15', '07:00:00 AM', 'if this question is asking how did such rumor spread? for the reason of the LOLA spread the rumor. ', 'Misunderstanding base on kagawad POV. no one knows the side of LOLA. ', NULL, NULL, NULL),
(770, 'mj v velasco ', 'jomari', 'inprogress', 'scammer', '', '2025-03-20', 474, 627, 0, 547, 'blah blah', 'Angoluan', '2025-03-20', '03:51:00 PM', 'blah blah', 'blah blah', NULL, NULL, NULL),
(771, 'Roniemar Flores Pacamo ', 'Randy Balaan', 'inprogress', 'Nag ccp habang nasa work', '', '2025-03-20', 455, 464, 0, 549, 'Nahule ng prof', 'San Fabian', '2025-03-20', '03:15:00 PM', 'Nag ccp kasi habang sa oras ng work/ojt', 'Oras ng work eh nahuli nag lalaro sa office', NULL, NULL, NULL),
(772, 'Amber Albero Alcause ', 'Ako at Boyfriend ko', 'inprogress', 'Iniwan ako ng taong nakabuntis sakin. We&#039;ve been in a relationship for almost 5 yrs.last year nabuntis ako at nung inamin ko sakanya hindi niya daw ako kayang panindigan kaya pinili nalang niya akong iwan. Di sa kagustohan ako ay nakunan at Wala siyang pake iniwan nalang akong dugoan', '', '2025-03-20', 484, 629, 0, 550, 'Nagkaroon ng maliit na alitan after Kong aminin na may nabusog kami. Nabuntis ako at ayaw niya daw akong panindigan', 'Silauan Sur', '2025-02-28', '06:12:00 PM', 'Nanghihina ako dahil sa ako ay nakunan iniwan niya nalang ako sa bahay ', 'Inamin Kong buntis ako', NULL, NULL, NULL),
(773, 'John C Agustin ', 'John Lloyd Manuel ', 'inprogress', 'Scammed', '', '2025-03-21', 465, 628, 0, 548, 'budol budol', 'Silauan Sur', '2025-03-21', '08:40:00 AM', 'nagpacash in siya pangscatter tinangay di nagbayad', 'wala na siyang pang scatter', NULL, NULL, NULL),
(774, 'diana c Sagnip ', 'robert', 'inprogress', 'Nais kong magreklamo patungkol sa aming kapitbahay ', '', '2025-03-21', 475, 608, 0, 551, 'kaniyang binago ang hangganan ng kanilang lupain', 'Maligaya', '2025-03-18', '10:30:00 AM', 'lumagpas hanggang sa boundary naming dalawa ang kabilang pinapatayo na kusina', 'dahil gusto nilang sakupin hanggang sa boundary ng aming lupa ', NULL, NULL, NULL),
(775, 'Brayan Villanueva Aquino ', 'JUSTINE V AQUINO', 'inprogress', 'SI JUSTINE MAG NANAKAW ', '', '2025-03-21', 444, 578, 0, 472, 'NINAKAW NIYA PERA KO', 'Maligaya', '2025-03-20', '10:38:00 AM', 'DAHIL WALA SIYANG PERA  KINUHA NIYA PERA SA PITAKA KO', 'WALA  SIYANG PERA KAYA KINUHA NIYA PERA KO ', NULL, NULL, NULL),
(776, 'Jomar P Nonan ', 'Mark ', 'inprogress', 'Nais ko magcomplain patungkol sa malubhang pamimilit ng isang di kilala na lalaki na sumama sakaniya sa maligaya sa echague ', '', '2025-03-22', 445, 631, 0, 553, 'Kami ay kaniyang pinipilit na sumama sakaniya ', 'Maligaya', '2025-03-17', '03:30:00 PM', 'Lumapit siya saamin at nagpupumilit na sumama kami sakaniya ', 'Dahil lasing siya at nais niya kaming isama sa kanilang tahanan ', NULL, NULL, NULL),
(777, 'Jefrey H Cabangbang ', 'martin', 'inprogress', 'nais kong magreklamo patungkol sa aming kapitbahay na itago natin sa pangalang martin', '', '2025-03-22', 449, 593, 0, 554, 'papalit palit siya ng pangalan upang hindi malaman kung ano ang tunay netong pangalan', 'Angoluan', '2025-03-13', '01:00:00 PM', 'sa tuwing may nakikilala ito na bagong biktima binabago bago neto ang kaniyang pangalan upang hindi malaman ano ang tunay niyang impormasyon matapos mascam ang mga tao na biktima neto.', 'upang hindi malaman kung ano ang tunay netong pangalan', NULL, NULL, NULL),
(778, 'CherryLou Olalan Nacario ', 'ME,Myself and I', 'Approved', 'PHYSICAL INURIES INFLICTED ', '', '2025-03-23', 443, 632, 0, 555, 'Secret', 'Maligaya', '2025-03-23', '10:25:00 AM', 'Secret', 'Secret', NULL, NULL, NULL),
(779, 'Yra Lei Garcia Garcia ', 'Jay Ar Gumabon', 'inprogress', 'binabantaan nia ako ng kung ano ano at hindi kona ito kayang tiisin', '', '2025-03-23', 448, 464, 0, 505, 'binabantaan ako', 'San Fabian', '2025-03-18', '12:15:00 PM', 'wala akong ginagawa basta binabantaan nalang ako', 'binabantaan nia ako, pinapadalhan ako ng sulat kung saan andun ako', NULL, NULL, NULL),
(780, 'Elija Villanueva ocampo ', 'sdsds', 'inprogress', 'sdfdfd', '', '2025-04-13', 447, 578, 0, 556, 'dfdfd', 'San Fabian', '2025-04-25', '02:00:00 PM', 'dsd', 'sdsds', NULL, NULL, NULL),
(792, 'Reyven Ojadas Pil ', 'olzen nation', 'Approved', 'thief', '', '2025-07-29', 442, 633, 0, 562, 'send false certificates', 'San Fabian', '2025-07-23', '03:29:00 PM', 'during job interview', 'false certification', NULL, NULL, NULL),
(793, 'estong B Agiran ', 'bombits', 'Approved', 'sinira motor', '', '2025-08-26', 447, 464, 0, 563, 'may sumira sa motor ko', 'San Fabian', '2025-08-14', '07:37:00 PM', 'dd', 'sdd', NULL, NULL, NULL),
(794, 'kristan baluyot dasig ', 'efef', 'settled_in_barangay', 'fefefeere', 'barangay', '2025-08-27', 455, 634, 0, 564, 'efefe', 'San Fabian', '0333-03-23', '07:24:00 PM', 'fefe', '3e3e', NULL, NULL, NULL),
(795, 'kristan baluyot dasig ', 'my fam', 'Approved', 'cryber crime', '', '2025-09-02', 442, 634, 0, 564, 'boardmate mistook me from having affair with his wife', 'San Fabian', '2025-09-02', '06:28:00 PM', 'yesterday, they mistook me that i ', 'i got a fight with my boardmates', NULL, NULL, NULL),
(797, 'asas', 'sdsd', 'Approved', 'asasa', '', '2025-09-04', 447, 635, 0, 503, 'asas', 'asa', '2025-09-13', '12:11:00 AM', 'sds', 'sds', NULL, NULL, NULL),
(798, 'asas', 'sdsd', 'Approved', 'asasa', '', '2025-09-04', 447, 635, 0, 503, 'asas', 'asa', '2025-09-13', '12:11:00 AM', 'sds', 'sds', NULL, NULL, NULL),
(799, 'asas', 'sdsd', 'Approved', 'asasa', '', '2025-09-04', 447, 635, 0, 503, 'asas', 'asa', '2025-09-13', '12:11:00 AM', 'sds', 'sds', NULL, NULL, NULL),
(800, 'asas', 'sdsd', 'Approved', 'asasa', '', '2025-09-04', 447, 635, 0, 503, 'asas', 'asa', '2025-09-13', '12:11:00 AM', 'sds', 'sds', NULL, NULL, NULL),
(801, 'asas', 'sdsd', 'Approved', 'asasa', '', '2025-09-04', 447, 635, 0, 503, 'asas', 'asa', '2025-09-13', '12:11:00 AM', 'sds', 'sds', NULL, NULL, NULL),
(802, 'asas', 'sdsd', 'Approved', 'asasa', '', '2025-09-04', 447, 635, 0, 503, 'asas', 'asa', '2025-09-13', '12:11:00 AM', 'sds', 'sds', NULL, NULL, NULL),
(803, 'asas', 'sdsd', 'Approved', 'asasa', '', '2025-09-04', 447, 635, 0, 503, 'asas', 'asa', '2025-09-13', '12:11:00 AM', 'sds', 'sds', NULL, NULL, NULL),
(804, 'asas', 'sdsd', 'Approved', 'asasa', '', '2025-09-04', 447, 635, 0, 503, 'asas', 'asa', '2025-09-13', '12:11:00 AM', 'sds', 'sds', NULL, NULL, NULL),
(805, 'asas', 'sdsd', 'Approved', 'asasa', '', '2025-09-04', 447, 635, 0, 503, 'asas', 'asa', '2025-09-13', '12:11:00 AM', 'sds', 'sds', NULL, NULL, NULL),
(806, 'asas', 'sdsd', 'Approved', 'asasa', '', '2025-09-04', 447, 635, 0, 503, 'asas', 'asa', '2025-09-13', '12:11:00 AM', 'sds', 'sds', NULL, NULL, NULL),
(807, 'asas', 'sdsd', 'Approved', 'asasa', '', '2025-09-04', 447, 635, 0, 503, 'asas', 'asa', '2025-09-13', '12:11:00 AM', 'sds', 'sds', NULL, NULL, NULL),
(808, 'asas', 'sdsd', 'Approved', 'asasa', '', '2025-09-04', 447, 635, 0, 503, 'asas', 'asa', '2025-09-13', '12:11:00 AM', 'sds', 'sds', NULL, NULL, NULL),
(809, 'asas', 'sdsd', 'Approved', 'asasa', '', '2025-09-04', 447, 635, 0, 503, 'asas', 'asa', '2025-09-13', '12:11:00 AM', 'sds', 'sds', NULL, NULL, NULL),
(810, 'asas', 'sdsd', 'Approved', 'asasa', '', '2025-09-04', 447, 635, 0, 503, 'asas', 'asa', '2025-09-13', '12:11:00 AM', 'sds', 'sds', NULL, NULL, NULL),
(811, 'asas', 'sdsd', 'Approved', 'asasa', '', '2025-09-04', 447, 635, 0, 503, 'asas', 'asa', '2025-09-13', '12:11:00 AM', 'sds', 'sds', NULL, NULL, NULL),
(812, 'asas', 'sdsd', 'Approved', 'asasa', '', '2025-09-04', 447, 635, 0, 503, 'asas', 'asa', '2025-09-13', '12:11:00 AM', 'sds', 'sds', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaints_certificates`
--

CREATE TABLE `tbl_complaints_certificates` (
  `cert_id` int(11) NOT NULL,
  `complaints_id` int(11) NOT NULL,
  `cert_path` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_complaints_certificates`
--

INSERT INTO `tbl_complaints_certificates` (`cert_id`, `complaints_id`, `cert_path`, `uploaded_at`) VALUES
(15, 638, '../uploads/certificates/1742280523_1.JPG', '2025-03-18 06:48:43'),
(16, 670, '../uploads/certificates/1742280571_1.JPG', '2025-03-18 06:49:31'),
(17, 670, '../uploads/certificates/1742285249_enfa grow.JPG', '2025-03-18 08:07:29'),
(18, 670, '../uploads/certificates/1742285277_eye.JPG', '2025-03-18 08:07:57'),
(19, 638, '../uploads/certificates/1742285616_1.JPG', '2025-03-18 08:13:36'),
(20, 668, '../uploads/certificates/1742287627_d.JPG', '2025-03-18 08:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_evidence`
--

CREATE TABLE `tbl_evidence` (
  `evidence_id` int(20) NOT NULL,
  `complaints_id` int(20) NOT NULL,
  `cert_path` varchar(255) DEFAULT NULL,
  `evidence_path` varchar(255) NOT NULL,
  `date_uploaded` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_evidence`
--

INSERT INTO `tbl_evidence` (`evidence_id`, `complaints_id`, `cert_path`, `evidence_path`, `date_uploaded`) VALUES
(0, 636, NULL, '../uploads/17405486151025246971378440704382.jpg', '2025-02-26'),
(0, 638, NULL, '../uploads/IMG_20250224_182015.jpg', '2025-02-26'),
(0, 640, NULL, '../uploads/Brown and Beige Vintage School Schedule Instagram Story.png', '2025-02-26'),
(0, 641, NULL, '../uploads/17405656966096304505521990046324.jpg', '2025-02-26'),
(0, 642, NULL, '../uploads/inbound8250802817729595109.jpg', '2025-02-26'),
(0, 644, NULL, '../uploads/inbound7888481048293537130.jpg', '2025-02-26'),
(0, 645, NULL, '../uploads/17405791604872481189765028924644.jpg', '2025-02-26'),
(0, 646, NULL, '../uploads/IMG20250224121326.jpg', '2025-02-26'),
(0, 650, NULL, '../uploads/inbound1305413182594044072.jpg', '2025-02-26'),
(0, 667, NULL, '../uploads/IMG_7163.jpeg', '2025-02-27'),
(0, 668, NULL, '../uploads/images (1).jpeg', '2025-03-01'),
(0, 671, NULL, '../uploads/IMG_9113.jpeg', '2025-03-04'),
(0, 673, NULL, '../uploads/17412355800721081642231924171120.jpg', '2025-03-06'),
(0, 674, NULL, '../uploads/17412358064623105845363577565086.jpg', '2025-03-06'),
(0, 675, NULL, '../uploads/17412357996381209082167026904229.jpg', '2025-03-06'),
(0, 676, NULL, '../uploads/IMG20250306004007.jpg', '2025-03-06'),
(0, 677, NULL, '../uploads/IMG_5897.jpeg', '2025-03-06'),
(0, 678, NULL, '../uploads/IMG_20250228_161857.jpg', '2025-03-07'),
(0, 680, NULL, '../uploads/adwadwasxg2424fsdF.png', '2025-03-10'),
(0, 681, NULL, '../uploads/17416002811921391244980198913454.jpg', '2025-03-10'),
(0, 682, NULL, '../uploads/inbound1454777433345308844.jpg', '2025-03-10'),
(0, 683, NULL, '../uploads/IMG_9440.jpeg', '2025-03-10'),
(0, 685, NULL, '../uploads/inbound5901427008504613955.jpg', '2025-03-10'),
(0, 686, NULL, '../uploads/Messenger_creation_7CA258B3-9C84-45F6-8336-94082C774927.jpeg', '2025-03-10'),
(0, 687, NULL, '../uploads/YraScam.jpg', '2025-03-10'),
(0, 688, NULL, '../uploads/StealMotor.jpg', '2025-03-10'),
(0, 689, NULL, '../uploads/checke.jpg', '2025-03-10'),
(0, 690, NULL, '../uploads/StealCP.jpg', '2025-03-10'),
(0, 691, NULL, '../uploads/theft.jpg', '2025-03-10'),
(0, 693, NULL, '../uploads/01da002360a7227e1b3c2d9786bcdb91.png', '2025-03-11'),
(0, 694, NULL, '../uploads/WIN_20240624_15_09_03_Pro.mp4', '2025-03-11'),
(0, 695, NULL, '../uploads/th.jpg', '2025-03-11'),
(0, 696, NULL, '../uploads/Screenshot (388).png', '2025-03-11'),
(0, 698, NULL, '../uploads/IMG_6113.jpeg', '2025-03-11'),
(0, 699, NULL, '../uploads/e4f8d8bea1f74c259466908cba8fb39e.png', '2025-03-11'),
(0, 700, NULL, '../uploads/IMG_9618.jpeg', '2025-03-11'),
(0, 701, NULL, '../uploads/image.jpg', '2025-03-11'),
(0, 704, NULL, '../uploads/IMG_20250304_091110.jpg', '2025-03-11'),
(0, 705, NULL, '../uploads/IMG_20250311_205702_545.jpg', '2025-03-11'),
(0, 706, NULL, '../uploads/inbound2061504963979511338.jpg', '2025-03-11'),
(0, 707, NULL, '../uploads/17417712038545182388281581867545.jpg', '2025-03-12'),
(0, 710, NULL, '../uploads/17417715116696859227511546760610.jpg', '2025-03-12'),
(0, 711, NULL, '../uploads/inbound1274849326823214052.jpg', '2025-03-12'),
(0, 712, NULL, '../uploads/inbound2286467069564210755.jpg', '2025-03-12'),
(0, 713, NULL, '../uploads/462547472_585609857349998_8713127292643828132_n.jpg', '2025-03-12'),
(0, 714, NULL, '../uploads/462547472_585609857349998_8713127292643828132_n.jpg', '2025-03-12'),
(0, 733, NULL, '../uploads/images (21).jpeg', '2025-03-12'),
(0, 734, NULL, '../uploads/images (21).jpeg', '2025-03-12'),
(0, 735, NULL, '../uploads/images (21).jpeg', '2025-03-12'),
(0, 736, NULL, '../uploads/images (21).jpeg', '2025-03-12'),
(0, 737, NULL, '../uploads/images (21).jpeg', '2025-03-12'),
(0, 738, NULL, '../uploads/images (21).jpeg', '2025-03-12'),
(0, 739, NULL, '../uploads/images (21).jpeg', '2025-03-12'),
(0, 740, NULL, '../uploads/images (21).jpeg', '2025-03-12'),
(0, 741, NULL, '../uploads/images (21).jpeg', '2025-03-12'),
(0, 742, NULL, '../uploads/images (21).jpeg', '2025-03-12'),
(0, 743, NULL, '../uploads/images (21).jpeg', '2025-03-12'),
(0, 744, NULL, '../uploads/images (21).jpeg', '2025-03-12'),
(0, 745, NULL, '../uploads/images (21).jpeg', '2025-03-12'),
(0, 746, NULL, '../uploads/images (6).jfif', '2025-03-12'),
(0, 747, NULL, '../uploads/images (6).jfif', '2025-03-12'),
(0, 748, NULL, '../uploads/images (6).jfif', '2025-03-12'),
(0, 749, NULL, '../uploads/images (6).jfif', '2025-03-12'),
(0, 750, NULL, '../uploads/images (6).jfif', '2025-03-12'),
(0, 751, NULL, '../uploads/images (6).jfif', '2025-03-12'),
(0, 752, NULL, '../uploads/images (6).jfif', '2025-03-12'),
(0, 753, NULL, '../uploads/images (6).jfif', '2025-03-12'),
(0, 754, NULL, '../uploads/images (6).jfif', '2025-03-12'),
(0, 755, NULL, '../uploads/images (6).jfif', '2025-03-12'),
(0, 756, NULL, '../uploads/images (6).jfif', '2025-03-12'),
(0, 757, NULL, '../uploads/images (6).jfif', '2025-03-12'),
(0, 758, NULL, '../uploads/images (6).jfif', '2025-03-12'),
(0, 759, NULL, '../uploads/images (6).jfif', '2025-03-12'),
(0, 760, NULL, '../uploads/images (6).jfif', '2025-03-12'),
(0, 761, NULL, '../uploads/images (4).jpeg', '2025-03-18'),
(0, 762, NULL, '../uploads/inbound8376392747667134648.jpg', '2025-03-18'),
(0, 763, NULL, '../uploads/IMG_20250318_124124_942.jpg', '2025-03-18'),
(0, 764, NULL, '../uploads/maxresdefault.jpg', '2025-03-19'),
(0, 765, NULL, '../uploads/maxresdefault (1).jpg', '2025-03-19'),
(0, 766, NULL, '../uploads/1670604136.webp', '2025-03-19'),
(0, 767, NULL, '../uploads/17424328420284213945078007290452.jpg', '2025-03-20'),
(0, 768, NULL, '../uploads/OIP.jpg', '2025-03-20'),
(0, 769, NULL, '../uploads/8d5d5887-407d-4bba-b522-2f99e8e5f0e3.jpg', '2025-03-20'),
(0, 770, NULL, '../uploads/30e71eb0-faf8-4c0b-97f7-d640590acd89.jpeg', '2025-03-20'),
(0, 771, NULL, '../uploads/IMG_20250320_144251_620.jpg', '2025-03-20'),
(0, 772, NULL, '../uploads/IMG20250318053707.jpg', '2025-03-20'),
(0, 773, NULL, '../uploads/image_2025-03-21_084215737.png', '2025-03-21'),
(0, 774, NULL, '../uploads/17425586384822794720746440461213.jpg', '2025-03-21'),
(0, 775, NULL, '../uploads/382cb8eb-dd55-4718-99c3-e91963573a9e (1) (1).jpg', '2025-03-21'),
(0, 776, NULL, '../uploads/17426096627002732186589247971624.jpg', '2025-03-22'),
(0, 777, NULL, '../uploads/page_1_thumb_950.webp', '2025-03-22'),
(0, 778, NULL, '../uploads/inbound894442779113418300.jpg', '2025-03-23'),
(0, 779, NULL, '../uploads/light threat.jpg', '2025-03-23'),
(0, 780, NULL, '../uploads/435559638_928560769060280_7584294412764526119_n.jpg', '2025-04-13'),
(0, 792, NULL, '../uploads/17537741713162851517019488047427.jpg', '2025-07-29'),
(0, 793, NULL, '../uploads/435559638_928560769060280_7584294412764526119_n.jpg', '2025-08-26'),
(0, 794, NULL, '../uploads/434253837_411480628245746_681097466344470380_n.jpg', '2025-08-27'),
(0, 795, NULL, '../uploads/Screenshot_20250902_064228.jpg', '2025-09-02'),
(0, 797, NULL, '../uploads/C71D52C9-29DC-4336-9C3A-701877EFFB48-1024x538.jpeg', '2025-09-04'),
(0, 798, NULL, '../uploads/C71D52C9-29DC-4336-9C3A-701877EFFB48-1024x538.jpeg', '2025-09-04'),
(0, 799, NULL, '../uploads/C71D52C9-29DC-4336-9C3A-701877EFFB48-1024x538.jpeg', '2025-09-04'),
(0, 800, NULL, '../uploads/C71D52C9-29DC-4336-9C3A-701877EFFB48-1024x538.jpeg', '2025-09-04'),
(0, 801, NULL, '../uploads/C71D52C9-29DC-4336-9C3A-701877EFFB48-1024x538.jpeg', '2025-09-04'),
(0, 802, NULL, '../uploads/C71D52C9-29DC-4336-9C3A-701877EFFB48-1024x538.jpeg', '2025-09-04'),
(0, 803, NULL, '../uploads/C71D52C9-29DC-4336-9C3A-701877EFFB48-1024x538.jpeg', '2025-09-04'),
(0, 804, NULL, '../uploads/C71D52C9-29DC-4336-9C3A-701877EFFB48-1024x538.jpeg', '2025-09-04'),
(0, 805, NULL, '../uploads/C71D52C9-29DC-4336-9C3A-701877EFFB48-1024x538.jpeg', '2025-09-04'),
(0, 806, NULL, '../uploads/C71D52C9-29DC-4336-9C3A-701877EFFB48-1024x538.jpeg', '2025-09-04'),
(0, 807, NULL, '../uploads/C71D52C9-29DC-4336-9C3A-701877EFFB48-1024x538.jpeg', '2025-09-04'),
(0, 808, NULL, '../uploads/C71D52C9-29DC-4336-9C3A-701877EFFB48-1024x538.jpeg', '2025-09-04'),
(0, 809, NULL, '../uploads/C71D52C9-29DC-4336-9C3A-701877EFFB48-1024x538.jpeg', '2025-09-04'),
(0, 810, NULL, '../uploads/C71D52C9-29DC-4336-9C3A-701877EFFB48-1024x538.jpeg', '2025-09-04'),
(0, 811, NULL, '../uploads/C71D52C9-29DC-4336-9C3A-701877EFFB48-1024x538.jpeg', '2025-09-04'),
(0, 812, NULL, '../uploads/C71D52C9-29DC-4336-9C3A-701877EFFB48-1024x538.jpeg', '2025-09-04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hearing_history`
--

CREATE TABLE `tbl_hearing_history` (
  `id` int(11) NOT NULL,
  `complaints_id` int(11) NOT NULL,
  `hearing_date` date NOT NULL,
  `hearing_time` varchar(255) NOT NULL,
  `hearing_type` varchar(50) NOT NULL,
  `hearing_status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_hearing_history`
--

INSERT INTO `tbl_hearing_history` (`id`, `complaints_id`, `hearing_date`, `hearing_time`, `hearing_type`, `hearing_status`, `created_at`) VALUES
(73, 641, '2025-02-27', '10:30:00 AM', 'First Hearing', '', '2025-02-26 10:35:42'),
(74, 642, '2025-03-08', '10:30:00 AM', 'First Hearing', '', '2025-02-26 14:29:53'),
(75, 667, '2025-03-01', '02:30:00 AM', 'First Hearing', '', '2025-02-27 09:32:48'),
(76, 638, '2025-03-07', '01:30:00 PM', 'First Hearing', '', '2025-02-27 13:33:18'),
(77, 668, '2025-03-05', '10:00:00 AM', 'First Hearing', '', '2025-03-01 12:49:58'),
(78, 671, '2025-03-07', '02:00:00 PM', 'First Hearing', '', '2025-03-04 05:44:18'),
(80, 673, '2025-03-15', '', 'First Hearing', 'Not Attended', '2025-03-06 04:47:29'),
(81, 676, '2025-03-12', '02:20:00 AM', 'First Hearing', '', '2025-03-06 06:20:38'),
(82, 682, '2025-03-13', '10:00:00 AM', 'First Hearing', '', '2025-03-10 12:26:24'),
(83, 689, '2025-04-11', '01:00:00 PM', 'First Hearing', 'Attended', '2025-04-10 01:44:47'),
(84, 793, '2025-08-27', '11:33:00 PM', 'First Hearing', '', '2025-08-26 11:33:54'),
(85, 794, '2025-08-28', '08:19:00 AM', 'First Hearing', '', '2025-08-27 11:22:52'),
(86, 795, '2025-09-20', '06:34:00 PM', 'First Hearing', '', '2025-09-02 10:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login_logs`
--

CREATE TABLE `tbl_login_logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `login_time` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_login_logs`
--

INSERT INTO `tbl_login_logs` (`log_id`, `user_id`, `login_time`) VALUES
(366, 409, '2025-02-25 22:08:01.000000'),
(377, 461, '2025-02-26 00:19:42.000000'),
(379, 462, '2025-02-26 00:24:18.000000'),
(381, 462, '2025-02-26 00:29:13.000000'),
(383, 462, '2025-02-26 00:35:12.000000'),
(386, 462, '2025-02-26 00:41:56.000000'),
(392, 409, '2025-02-26 02:51:18.000000'),
(394, 409, '2025-02-26 02:54:09.000000'),
(397, 409, '2025-02-26 03:40:06.000000'),
(399, 409, '2025-02-26 03:42:33.000000'),
(404, 467, '2025-02-26 13:37:55.000000'),
(405, 467, '2025-02-26 13:42:13.000000'),
(410, 467, '2025-02-26 15:14:42.000000'),
(413, 467, '2025-02-26 15:18:25.000000'),
(415, 468, '2025-02-26 16:00:12.000000'),
(421, 467, '2025-02-26 17:37:57.000000'),
(422, 470, '2025-02-26 18:04:05.000000'),
(423, 471, '2025-02-26 18:23:26.000000'),
(425, 471, '2025-02-26 18:39:01.000000'),
(426, 458, '2025-02-26 19:00:06.000000'),
(427, 409, '2025-02-26 20:17:01.000000'),
(429, 409, '2025-02-26 20:35:01.000000'),
(431, 472, '2025-02-26 21:15:00.000000'),
(432, 474, '2025-02-26 21:19:50.000000'),
(433, 472, '2025-02-26 21:28:31.000000'),
(436, 475, '2025-02-26 21:49:13.000000'),
(437, 475, '2025-02-26 21:53:16.000000'),
(438, 472, '2025-02-26 21:55:46.000000'),
(439, 476, '2025-02-26 21:59:33.000000'),
(440, 477, '2025-02-26 22:07:12.000000'),
(441, 409, '2025-02-26 22:07:16.000000'),
(442, 478, '2025-02-26 22:08:02.000000'),
(444, 480, '2025-02-26 22:16:24.000000'),
(446, 480, '2025-02-26 22:26:44.000000'),
(447, 472, '2025-02-26 22:30:00.000000'),
(449, 472, '2025-02-26 22:35:50.000000'),
(450, 409, '2025-02-26 22:53:23.000000'),
(452, 481, '2025-02-26 23:08:02.000000'),
(453, 481, '2025-02-26 23:10:33.000000'),
(454, 472, '2025-02-27 00:01:59.000000'),
(455, 483, '2025-02-27 00:35:53.000000'),
(461, 409, '2025-02-26 18:21:30.000000'),
(464, 472, '2025-02-26 18:24:02.000000'),
(466, 409, '2025-02-26 18:38:27.000000'),
(467, 409, '2025-02-26 18:50:02.000000'),
(469, 486, '2025-02-26 18:52:07.000000'),
(470, 486, '2025-02-26 18:55:06.000000'),
(471, 486, '2025-02-26 18:58:38.000000'),
(472, 472, '2025-02-26 19:13:40.000000'),
(473, 409, '2025-02-26 19:16:14.000000'),
(474, 458, '2025-02-27 02:44:52.000000'),
(475, 458, '2025-02-27 02:48:54.000000'),
(476, 409, '2025-02-27 02:50:03.000000'),
(477, 472, '2025-02-27 02:53:02.000000'),
(479, 409, '2025-02-27 05:43:35.000000'),
(480, 409, '2025-02-27 06:04:05.000000'),
(481, 486, '2025-02-27 06:36:24.000000'),
(482, 409, '2025-02-27 06:43:56.000000'),
(483, 472, '2025-02-27 06:50:08.000000'),
(484, 409, '2025-02-27 06:50:36.000000'),
(485, 488, '2025-02-27 06:52:56.000000'),
(486, 472, '2025-02-27 07:39:55.000000'),
(487, 489, '2025-02-27 09:13:01.000000'),
(488, 488, '2025-02-27 09:20:03.000000'),
(489, 490, '2025-02-27 11:12:27.000000'),
(490, 409, '2025-02-27 13:35:54.000000'),
(491, 491, '2025-02-27 15:13:57.000000'),
(492, 491, '2025-02-27 15:17:29.000000'),
(493, 491, '2025-02-27 15:18:03.000000'),
(494, 409, '2025-02-28 11:27:18.000000'),
(495, 409, '2025-02-28 15:31:08.000000'),
(496, 493, '2025-03-01 06:04:16.000000'),
(497, 493, '2025-03-01 06:07:06.000000'),
(498, 493, '2025-03-01 11:54:44.000000'),
(499, 493, '2025-03-01 12:02:34.000000'),
(500, 493, '2025-03-01 12:04:27.000000'),
(501, 409, '2025-03-01 12:43:49.000000'),
(502, 494, '2025-03-01 12:47:36.000000'),
(503, 470, '2025-03-02 03:13:04.000000'),
(504, 409, '2025-03-04 03:03:49.000000'),
(505, 495, '2025-03-04 03:06:42.000000'),
(506, 488, '2025-03-04 03:26:03.000000'),
(507, 409, '2025-03-04 04:46:59.000000'),
(508, 495, '2025-03-04 04:51:03.000000'),
(509, 472, '2025-03-04 05:08:24.000000'),
(510, 409, '2025-03-04 05:16:55.000000'),
(511, 496, '2025-03-04 05:20:29.000000'),
(512, 488, '2025-03-04 05:34:58.000000'),
(513, 497, '2025-03-04 05:35:34.000000'),
(514, 497, '2025-03-04 05:38:32.000000'),
(515, 496, '2025-03-04 05:40:05.000000'),
(516, 498, '2025-03-04 06:03:57.000000'),
(517, 472, '2025-03-04 06:06:18.000000'),
(518, 472, '2025-03-04 06:09:58.000000'),
(519, 472, '2025-03-04 06:11:03.000000'),
(521, 488, '2025-03-04 14:40:46.000000'),
(522, 472, '2025-03-06 04:09:42.000000'),
(523, 500, '2025-03-06 04:29:00.000000'),
(524, 501, '2025-03-06 04:29:05.000000'),
(525, 409, '2025-03-06 04:31:23.000000'),
(526, 502, '2025-03-06 04:31:50.000000'),
(527, 503, '2025-03-06 04:33:10.000000'),
(528, 504, '2025-03-06 04:35:09.000000'),
(529, 500, '2025-03-06 04:42:00.000000'),
(530, 503, '2025-03-06 04:43:38.000000'),
(531, 503, '2025-03-06 04:43:38.000000'),
(532, 503, '2025-03-06 04:43:39.000000'),
(533, 409, '2025-03-06 05:42:42.000000'),
(534, 503, '2025-03-06 06:12:59.000000'),
(535, 472, '2025-03-06 06:13:19.000000'),
(536, 409, '2025-03-06 06:24:39.000000'),
(537, 472, '2025-03-06 06:27:15.000000'),
(538, 503, '2025-03-06 06:27:45.000000'),
(539, 497, '2025-03-06 06:28:41.000000'),
(540, 503, '2025-03-06 06:39:33.000000'),
(541, 503, '2025-03-06 07:04:05.000000'),
(542, 409, '2025-03-06 12:21:55.000000'),
(543, 505, '2025-03-06 12:43:02.000000'),
(544, 503, '2025-03-06 12:57:51.000000'),
(545, 506, '2025-03-07 06:53:12.000000'),
(546, 472, '2025-03-07 11:41:59.000000'),
(547, 506, '2025-03-07 11:49:27.000000'),
(548, 472, '2025-03-07 13:04:16.000000'),
(549, 508, '2025-03-08 12:38:01.000000'),
(550, 510, '2025-03-10 07:12:13.000000'),
(551, 510, '2025-03-10 07:13:39.000000'),
(552, 511, '2025-03-10 08:21:21.000000'),
(553, 511, '2025-03-10 08:25:30.000000'),
(554, 511, '2025-03-10 08:26:19.000000'),
(555, 497, '2025-03-10 08:28:24.000000'),
(556, 503, '2025-03-10 08:31:22.000000'),
(557, 409, '2025-03-10 08:32:27.000000'),
(558, 511, '2025-03-10 08:37:14.000000'),
(559, 511, '2025-03-10 08:42:02.000000'),
(560, 511, '2025-03-10 08:42:04.000000'),
(561, 512, '2025-03-10 09:03:22.000000'),
(562, 467, '2025-03-10 09:43:20.000000'),
(563, 513, '2025-03-10 11:49:04.000000'),
(564, 511, '2025-03-10 12:02:27.000000'),
(565, 511, '2025-03-10 12:16:55.000000'),
(566, 409, '2025-03-10 12:19:17.000000'),
(567, 515, '2025-03-10 12:22:06.000000'),
(569, 517, '2025-03-10 12:38:06.000000'),
(570, 475, '2025-03-10 12:39:42.000000'),
(571, 503, '2025-03-10 12:48:17.000000'),
(572, 409, '2025-03-10 12:49:43.000000'),
(573, 503, '2025-03-10 12:51:31.000000'),
(574, 514, '2025-03-10 13:06:29.000000'),
(575, 518, '2025-03-10 13:06:53.000000'),
(576, 518, '2025-03-10 13:08:41.000000'),
(577, 514, '2025-03-10 13:09:17.000000'),
(578, 514, '2025-03-10 13:27:34.000000'),
(579, 488, '2025-03-10 13:29:31.000000'),
(580, 505, '2025-03-10 14:04:37.000000'),
(581, 409, '2025-03-10 14:08:40.000000'),
(582, 409, '2025-03-10 14:16:25.000000'),
(583, 486, '2025-03-10 14:19:23.000000'),
(584, 505, '2025-03-10 14:19:50.000000'),
(585, 486, '2025-03-10 14:23:11.000000'),
(586, 409, '2025-03-10 14:23:35.000000'),
(587, 519, '2025-03-10 14:24:57.000000'),
(588, 503, '2025-03-10 14:26:38.000000'),
(589, 497, '2025-03-10 14:29:29.000000'),
(590, 497, '2025-03-10 14:31:01.000000'),
(591, 409, '2025-03-10 14:32:05.000000'),
(592, 496, '2025-03-10 14:34:28.000000'),
(593, 486, '2025-03-10 14:40:18.000000'),
(594, 503, '2025-03-10 14:41:30.000000'),
(595, 503, '2025-03-10 14:43:11.000000'),
(596, 519, '2025-03-10 14:44:04.000000'),
(597, 515, '2025-03-10 14:45:18.000000'),
(598, 496, '2025-03-10 14:49:32.000000'),
(599, 486, '2025-03-10 14:50:37.000000'),
(600, 409, '2025-03-10 14:52:31.000000'),
(601, 503, '2025-03-10 14:54:59.000000'),
(602, 503, '2025-03-10 14:56:09.000000'),
(603, 480, '2025-03-10 14:56:43.000000'),
(604, 503, '2025-03-10 14:57:12.000000'),
(605, 480, '2025-03-10 15:00:45.000000'),
(606, 519, '2025-03-10 15:06:38.000000'),
(607, 409, '2025-03-10 15:25:11.000000'),
(608, 458, '2025-03-10 15:32:22.000000'),
(609, 480, '2025-03-10 15:32:47.000000'),
(610, 409, '2025-03-10 15:36:48.000000'),
(611, 515, '2025-03-10 15:38:06.000000'),
(612, 519, '2025-03-10 15:38:23.000000'),
(613, 409, '2025-03-10 15:43:38.000000'),
(615, 515, '2025-03-11 01:31:54.000000'),
(616, 522, '2025-03-11 01:33:15.000000'),
(618, 522, '2025-03-11 01:39:05.000000'),
(619, 515, '2025-03-11 01:44:13.000000'),
(620, 409, '2025-03-11 01:49:47.000000'),
(621, 517, '2025-03-11 02:22:47.000000'),
(622, 517, '2025-03-11 02:27:41.000000'),
(623, 519, '2025-03-11 02:36:50.000000'),
(624, 517, '2025-03-11 02:38:18.000000'),
(625, 509, '2025-03-11 02:39:58.000000'),
(626, 519, '2025-03-11 02:46:07.000000'),
(627, 519, '2025-03-11 02:47:44.000000'),
(628, 509, '2025-03-11 02:50:04.000000'),
(629, 519, '2025-03-11 03:00:36.000000'),
(630, 523, '2025-03-11 03:34:15.000000'),
(631, 409, '2025-03-11 04:18:28.000000'),
(632, 519, '2025-03-11 05:24:32.000000'),
(633, 409, '2025-03-11 05:26:14.000000'),
(634, 524, '2025-03-11 06:30:57.000000'),
(635, 409, '2025-03-11 06:34:14.000000'),
(636, 496, '2025-03-11 06:35:24.000000'),
(637, 525, '2025-03-11 07:18:47.000000'),
(638, 525, '2025-03-11 07:22:41.000000'),
(639, 525, '2025-03-11 07:22:42.000000'),
(640, 409, '2025-03-11 07:31:07.000000'),
(641, 472, '2025-03-11 07:43:39.000000'),
(642, 526, '2025-03-11 07:59:30.000000'),
(643, 496, '2025-03-11 08:06:23.000000'),
(644, 409, '2025-03-11 08:10:41.000000'),
(645, 409, '2025-03-11 08:10:49.000000'),
(646, 526, '2025-03-11 08:21:26.000000'),
(647, 526, '2025-03-11 08:26:17.000000'),
(648, 409, '2025-03-11 08:29:39.000000'),
(649, 526, '2025-03-11 08:29:45.000000'),
(650, 527, '2025-03-11 08:35:41.000000'),
(651, 496, '2025-03-11 08:39:05.000000'),
(652, 528, '2025-03-11 08:49:31.000000'),
(653, 528, '2025-03-11 08:55:59.000000'),
(654, 496, '2025-03-11 09:00:28.000000'),
(655, 409, '2025-03-11 09:44:42.000000'),
(656, 496, '2025-03-11 09:50:35.000000'),
(660, 519, '2025-03-11 10:12:06.000000'),
(661, 503, '2025-03-11 10:14:29.000000'),
(662, 503, '2025-03-11 11:31:20.000000'),
(663, 519, '2025-03-11 11:48:18.000000'),
(664, 496, '2025-03-11 11:49:03.000000'),
(665, 503, '2025-03-11 11:59:53.000000'),
(666, 530, '2025-03-11 12:38:27.000000'),
(667, 531, '2025-03-11 12:41:00.000000'),
(669, 503, '2025-03-11 12:43:17.000000'),
(670, 496, '2025-03-11 12:44:51.000000'),
(672, 496, '2025-03-11 12:49:04.000000'),
(673, 519, '2025-03-11 12:51:20.000000'),
(674, 515, '2025-03-11 12:52:14.000000'),
(675, 515, '2025-03-11 12:56:14.000000'),
(676, 409, '2025-03-11 13:01:12.000000'),
(677, 532, '2025-03-11 14:43:48.000000'),
(678, 528, '2025-03-11 14:59:54.000000'),
(679, 528, '2025-03-11 15:01:37.000000'),
(680, 497, '2025-03-11 15:03:07.000000'),
(681, 497, '2025-03-11 15:09:15.000000'),
(682, 497, '2025-03-11 15:12:45.000000'),
(683, 532, '2025-03-11 15:14:26.000000'),
(684, 497, '2025-03-11 15:17:00.000000'),
(685, 527, '2025-03-11 15:39:14.000000'),
(686, 496, '2025-03-11 15:40:51.000000'),
(687, 519, '2025-03-11 16:19:42.000000'),
(688, 409, '2025-03-11 16:23:09.000000'),
(689, 526, '2025-03-12 00:55:12.000000'),
(690, 526, '2025-03-12 00:59:04.000000'),
(691, 409, '2025-03-12 08:29:10.000000'),
(692, 522, '2025-03-12 09:18:33.000000'),
(693, 467, '2025-03-12 09:50:29.000000'),
(694, 476, '2025-03-12 10:06:15.000000'),
(695, 533, '2025-03-12 13:29:23.000000'),
(696, 533, '2025-03-12 13:33:05.000000'),
(697, 533, '2025-03-12 13:33:07.000000'),
(698, 533, '2025-03-12 13:33:50.000000'),
(699, 533, '2025-03-12 13:39:25.000000'),
(700, 533, '2025-03-12 13:41:19.000000'),
(701, 515, '2025-03-12 13:47:22.000000'),
(702, 409, '2025-03-12 13:58:27.000000'),
(703, 526, '2025-03-12 14:22:28.000000'),
(704, 409, '2025-03-12 14:30:05.000000'),
(705, 533, '2025-03-12 14:52:40.000000'),
(706, 496, '2025-03-12 16:05:44.000000'),
(707, 497, '2025-03-12 16:06:19.000000'),
(708, 409, '2025-03-12 16:13:02.000000'),
(709, 409, '2025-03-13 08:48:38.000000'),
(710, 515, '2025-03-13 08:49:20.000000'),
(711, 496, '2025-03-13 12:03:25.000000'),
(712, 409, '2025-03-13 12:51:16.000000'),
(713, 472, '2025-03-13 13:24:53.000000'),
(714, 409, '2025-03-13 13:51:14.000000'),
(715, 496, '2025-03-13 14:49:14.000000'),
(716, 409, '2025-03-13 14:56:54.000000'),
(717, 497, '2025-03-13 15:13:12.000000'),
(718, 409, '2025-03-13 15:13:43.000000'),
(719, 409, '2025-03-13 15:18:00.000000'),
(720, 458, '2025-03-13 15:29:13.000000'),
(721, 515, '2025-03-13 15:32:13.000000'),
(722, 496, '2025-03-13 15:45:02.000000'),
(723, 503, '2025-03-13 15:46:43.000000'),
(724, 503, '2025-03-13 15:47:33.000000'),
(725, 472, '2025-03-13 17:34:57.000000'),
(726, 409, '2025-03-14 03:08:37.000000'),
(727, 496, '2025-03-14 03:12:01.000000'),
(728, 515, '2025-03-14 03:14:26.000000'),
(729, 472, '2025-03-14 03:48:42.000000'),
(730, 409, '2025-03-14 03:50:32.000000'),
(731, 409, '2025-03-15 03:52:50.000000'),
(732, 409, '2025-03-15 07:39:26.000000'),
(733, 409, '2025-03-15 08:17:36.000000'),
(734, 409, '2025-03-15 10:25:37.000000'),
(735, 409, '2025-03-15 10:56:41.000000'),
(736, 409, '2025-03-17 09:40:18.000000'),
(737, 496, '2025-03-18 03:53:49.000000'),
(738, 497, '2025-03-18 03:54:34.000000'),
(739, 496, '2025-03-18 04:26:49.000000'),
(740, 409, '2025-03-18 04:28:12.000000'),
(741, 496, '2025-03-18 04:35:34.000000'),
(742, 519, '2025-03-18 04:38:23.000000'),
(743, 515, '2025-03-18 04:39:57.000000'),
(744, 519, '2025-03-18 04:41:20.000000'),
(745, 519, '2025-03-18 04:41:56.000000'),
(746, 515, '2025-03-18 04:42:29.000000'),
(747, 496, '2025-03-18 04:42:46.000000'),
(748, 486, '2025-03-18 04:43:13.000000'),
(749, 503, '2025-03-18 04:43:54.000000'),
(750, 519, '2025-03-18 04:49:48.000000'),
(751, 515, '2025-03-18 04:50:14.000000'),
(752, 409, '2025-03-18 04:56:43.000000'),
(753, 497, '2025-03-18 05:06:50.000000'),
(754, 496, '2025-03-18 05:08:38.000000'),
(755, 409, '2025-03-18 05:14:20.000000'),
(756, 496, '2025-03-18 05:25:43.000000'),
(757, 515, '2025-03-18 05:45:37.000000'),
(758, 505, '2025-03-18 05:47:52.000000'),
(759, 517, '2025-03-18 05:50:28.000000'),
(760, 517, '2025-03-18 05:50:49.000000'),
(761, 497, '2025-03-18 05:54:09.000000'),
(762, 409, '2025-03-18 05:56:32.000000'),
(763, 497, '2025-03-18 05:57:42.000000'),
(764, 515, '2025-03-18 06:03:25.000000'),
(765, 496, '2025-03-18 06:09:52.000000'),
(766, 409, '2025-03-18 09:26:04.000000'),
(767, 409, '2025-03-18 09:26:04.000000'),
(768, 534, '2025-03-18 11:47:27.000000'),
(769, 534, '2025-03-18 11:48:55.000000'),
(770, 409, '2025-03-18 13:31:44.000000'),
(771, 535, '2025-03-18 14:16:08.000000'),
(772, 536, '2025-03-18 14:53:18.000000'),
(773, 409, '2025-03-18 17:51:24.000000'),
(774, 537, '2025-03-18 23:40:47.000000'),
(775, 409, '2025-03-19 00:33:29.000000'),
(776, 538, '2025-03-19 01:55:27.000000'),
(777, 496, '2025-03-19 05:08:19.000000'),
(778, 409, '2025-03-19 05:57:32.000000'),
(779, 517, '2025-03-19 06:43:07.000000'),
(780, 517, '2025-03-19 06:45:27.000000'),
(781, 517, '2025-03-19 08:23:28.000000'),
(782, 409, '2025-03-19 12:02:54.000000'),
(783, 539, '2025-03-19 12:25:38.000000'),
(784, 540, '2025-03-19 12:30:17.000000'),
(785, 409, '2025-03-19 12:32:11.000000'),
(786, 541, '2025-03-19 12:32:26.000000'),
(787, 409, '2025-03-19 12:40:03.000000'),
(788, 540, '2025-03-19 12:46:32.000000'),
(789, 409, '2025-03-19 12:47:03.000000'),
(790, 543, '2025-03-19 12:58:40.000000'),
(791, 409, '2025-03-19 13:07:19.000000'),
(792, 409, '2025-03-19 13:17:54.000000'),
(793, 517, '2025-03-19 13:24:33.000000'),
(794, 541, '2025-03-19 22:28:05.000000'),
(795, 409, '2025-03-20 00:32:52.000000'),
(796, 541, '2025-03-20 01:01:29.000000'),
(797, 409, '2025-03-20 01:15:05.000000'),
(798, 544, '2025-03-20 02:55:33.000000'),
(799, 545, '2025-03-20 03:24:26.000000'),
(800, 534, '2025-03-20 03:27:38.000000'),
(801, 546, '2025-03-20 04:06:17.000000'),
(802, 409, '2025-03-20 06:45:05.000000'),
(803, 496, '2025-03-20 06:51:33.000000'),
(804, 409, '2025-03-20 06:54:55.000000'),
(805, 496, '2025-03-20 06:56:19.000000'),
(806, 409, '2025-03-20 06:57:09.000000'),
(807, 497, '2025-03-20 07:00:44.000000'),
(808, 547, '2025-03-20 07:44:21.000000'),
(809, 547, '2025-03-20 07:50:21.000000'),
(810, 409, '2025-03-20 11:41:32.000000'),
(811, 548, '2025-03-20 12:01:00.000000'),
(812, 549, '2025-03-20 13:22:22.000000'),
(813, 550, '2025-03-20 15:06:56.000000'),
(814, 550, '2025-03-20 15:07:40.000000'),
(815, 548, '2025-03-21 00:37:45.000000'),
(816, 409, '2025-03-21 05:58:33.000000'),
(817, 551, '2025-03-21 11:56:40.000000'),
(818, 409, '2025-03-21 11:57:26.000000'),
(819, 551, '2025-03-21 11:58:32.000000'),
(820, 496, '2025-03-21 11:58:42.000000'),
(821, 551, '2025-03-21 11:59:28.000000'),
(822, 472, '2025-03-21 12:35:49.000000'),
(823, 496, '2025-03-21 12:41:53.000000'),
(824, 409, '2025-03-21 12:42:33.000000'),
(825, 553, '2025-03-22 01:40:17.000000'),
(826, 409, '2025-03-22 01:43:15.000000'),
(827, 517, '2025-03-22 01:53:52.000000'),
(828, 543, '2025-03-22 01:56:13.000000'),
(829, 551, '2025-03-22 02:02:43.000000'),
(830, 534, '2025-03-22 02:06:40.000000'),
(831, 553, '2025-03-22 02:07:13.000000'),
(832, 553, '2025-03-22 02:09:46.000000'),
(833, 409, '2025-03-22 11:33:01.000000'),
(834, 409, '2025-03-22 11:33:16.000000'),
(835, 554, '2025-03-22 14:27:23.000000'),
(836, 554, '2025-03-22 15:11:31.000000'),
(837, 409, '2025-03-23 01:54:23.000000'),
(838, 555, '2025-03-23 02:22:28.000000'),
(839, 409, '2025-03-23 05:53:25.000000'),
(840, 409, '2025-03-23 14:39:43.000000'),
(841, 505, '2025-03-23 14:41:39.000000'),
(842, 409, '2025-03-23 16:09:31.000000'),
(843, 409, '2025-03-23 16:29:19.000000'),
(844, 496, '2025-03-23 16:29:44.000000'),
(845, 517, '2025-03-24 00:43:04.000000'),
(846, 497, '2025-03-24 00:48:28.000000'),
(847, 472, '2025-03-24 02:22:25.000000'),
(848, 472, '2025-03-24 02:33:33.000000'),
(849, 409, '2025-03-24 02:39:44.000000'),
(850, 515, '2025-03-24 02:43:53.000000'),
(851, 409, '2025-04-09 20:34:48.000000'),
(852, 496, '2025-04-09 20:50:06.000000'),
(853, 409, '2025-04-10 09:32:57.000000'),
(854, 496, '2025-04-10 09:41:29.000000'),
(855, 486, '2025-04-10 09:42:12.000000'),
(856, 515, '2025-04-10 09:42:43.000000'),
(857, 496, '2025-04-13 14:21:34.000000'),
(858, 556, '2025-04-13 14:57:44.000000'),
(859, 503, '2025-04-13 15:00:12.000000'),
(860, 503, '2025-04-21 09:12:18.000000'),
(861, 503, '2025-04-22 19:51:53.000000'),
(862, 409, '2025-04-22 19:52:29.000000'),
(863, 503, '2025-05-08 16:55:13.000000'),
(864, 515, '2025-05-11 15:21:53.000000'),
(865, 458, '2025-05-21 13:38:17.000000'),
(866, 458, '2025-05-21 13:39:34.000000'),
(867, 458, '2025-05-21 13:39:50.000000'),
(868, 556, '2025-05-21 13:43:09.000000'),
(869, 503, '2025-05-24 15:45:41.000000'),
(870, 503, '2025-05-27 20:23:35.000000'),
(871, 503, '2025-05-28 10:49:19.000000'),
(872, 503, '2025-06-03 10:05:33.000000'),
(873, 409, '2025-06-03 10:51:16.000000'),
(874, 503, '2025-06-07 17:32:12.000000'),
(875, 503, '2025-07-07 13:53:54.000000'),
(876, 503, '2025-07-16 18:02:27.000000'),
(877, 515, '2025-07-16 18:02:58.000000'),
(878, 458, '2025-07-16 18:09:43.000000'),
(879, 503, '2025-07-16 18:12:06.000000'),
(880, 557, '2025-07-16 18:43:35.000000'),
(883, 557, '2025-07-29 15:06:45.000000'),
(885, 503, '2025-07-29 15:11:33.000000'),
(888, 562, '2025-07-29 15:28:44.000000'),
(889, 503, '2025-07-29 15:53:03.000000'),
(890, 503, '2025-07-29 16:05:08.000000'),
(891, 458, '2025-08-20 12:07:24.000000'),
(892, 563, '2025-08-26 19:31:19.000000'),
(893, 503, '2025-08-26 19:33:16.000000'),
(894, 564, '2025-08-27 19:19:45.000000'),
(895, 503, '2025-08-27 19:20:55.000000'),
(896, 458, '2025-08-29 09:37:14.000000'),
(897, 503, '2025-08-31 21:56:15.000000'),
(898, 458, '2025-08-31 21:59:20.000000'),
(899, 503, '2025-09-01 12:21:23.000000'),
(900, 458, '2025-09-01 13:23:57.000000'),
(901, 503, '2025-09-01 14:55:39.000000'),
(902, 458, '2025-09-01 15:07:43.000000'),
(903, 564, '2025-09-02 18:24:54.000000'),
(904, 503, '2025-09-02 18:25:01.000000'),
(905, 458, '2025-09-02 18:45:59.000000'),
(906, 503, '2025-09-03 08:10:18.000000'),
(907, 503, '2025-09-03 08:53:17.000000'),
(908, 562, '2025-09-03 08:54:11.000000'),
(909, 503, '2025-09-03 09:05:14.000000'),
(910, 515, '2025-09-03 09:43:12.000000'),
(911, 458, '2025-09-03 09:56:14.000000'),
(912, 515, '2025-09-03 10:19:26.000000'),
(913, 503, '2025-09-03 11:58:35.000000'),
(914, 515, '2025-09-03 11:59:13.000000'),
(915, 503, '2025-09-03 12:39:48.000000'),
(916, 515, '2025-09-03 13:56:28.000000'),
(917, 503, '2025-09-03 14:00:38.000000'),
(918, 564, '2025-09-03 14:03:40.000000'),
(919, 515, '2025-09-03 14:23:50.000000'),
(920, 503, '2025-09-04 21:41:39.000000'),
(921, 503, '2025-09-04 21:47:26.000000'),
(922, 503, '2025-09-04 21:47:49.000000'),
(923, 503, '2025-09-04 21:49:44.000000'),
(924, 503, '2025-09-04 21:51:48.000000'),
(925, 503, '2025-09-04 21:53:28.000000'),
(926, 503, '2025-09-04 21:55:49.000000'),
(927, 503, '2025-09-04 21:57:45.000000'),
(928, 503, '2025-09-04 22:02:48.000000'),
(929, 503, '2025-09-04 22:05:50.000000'),
(930, 503, '2025-09-04 22:12:31.000000'),
(931, 515, '2025-09-04 22:13:01.000000'),
(932, 503, '2025-09-04 22:14:24.000000'),
(933, 503, '2025-09-04 22:17:02.000000'),
(934, 503, '2025-09-04 22:19:32.000000'),
(935, 503, '2025-09-04 22:20:18.000000'),
(936, 515, '2025-09-04 22:20:56.000000'),
(937, 503, '2025-09-04 22:21:25.000000'),
(938, 515, '2025-09-04 22:22:01.000000'),
(939, 503, '2025-09-04 22:23:02.000000'),
(940, 503, '2025-09-04 22:24:28.000000'),
(941, 503, '2025-09-04 22:26:11.000000'),
(942, 503, '2025-09-04 22:27:19.000000'),
(943, 503, '2025-09-04 22:27:37.000000'),
(944, 515, '2025-09-04 22:27:54.000000'),
(945, 503, '2025-09-04 22:28:54.000000'),
(946, 515, '2025-09-04 22:29:06.000000'),
(947, 503, '2025-09-04 22:30:51.000000'),
(948, 503, '2025-09-04 22:31:19.000000'),
(949, 515, '2025-09-04 22:31:45.000000'),
(950, 503, '2025-09-04 22:35:15.000000'),
(951, 486, '2025-09-04 22:35:26.000000'),
(952, 519, '2025-09-04 22:35:44.000000'),
(953, 515, '2025-09-04 22:36:08.000000'),
(954, 496, '2025-09-04 22:36:25.000000'),
(955, 565, '2025-09-04 22:43:55.000000'),
(956, 503, '2025-09-04 22:44:54.000000'),
(957, 503, '2025-09-04 22:57:06.000000'),
(958, 515, '2025-09-04 22:57:20.000000'),
(959, 503, '2025-09-05 07:09:31.000000'),
(960, 515, '2025-09-05 07:13:14.000000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `extension_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `age` int(255) NOT NULL,
  `birth_date` date NOT NULL,
  `selfie_path` varchar(255) NOT NULL,
  `image_type` enum('ID') NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `date_uploaded` datetime(6) NOT NULL,
  `cp_number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `accountType` enum('Resident','Barangay Official','PNP Officer') NOT NULL,
  `barangays_id` int(11) DEFAULT NULL,
  `place_of_birth` varchar(255) NOT NULL,
  `purok` varchar(255) NOT NULL,
  `civil_status` enum('Single','Married','Separated','Live-in','Divorced','Widowed') NOT NULL,
  `educational_background` enum('No Formal Education','Elementary','Highschool','College','Post Graduate') NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `pic_data` varchar(255) NOT NULL,
  `security_question` varchar(255) NOT NULL,
  `security_answer` varchar(255) NOT NULL,
  `login_attempts` int(11) DEFAULT 0,
  `lockout_time` datetime DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `first_name`, `middle_name`, `last_name`, `extension_name`, `gender`, `age`, `birth_date`, `selfie_path`, `image_type`, `image_path`, `date_uploaded`, `cp_number`, `password`, `accountType`, `barangays_id`, `place_of_birth`, `purok`, `civil_status`, `educational_background`, `nationality`, `pic_data`, `security_question`, `security_answer`, `login_attempts`, `lockout_time`, `is_verified`) VALUES
(409, 'Marizen', '', 'Benabese', '', '', 0, '0000-00-00', '', 'ID', '', '0000-00-00 00:00:00.000000', '09141414141', '$2y$10$tkJk8MHXiHgGSJ.aU/KU0u5Htfl7y0ubJygDMK04mfHa.3tGUJwZ6', 'PNP Officer', 525, '', '', 'Single', 'No Formal Education', '', '../uploads/images (5).jfif', 'What was your childhood nickname?', '$2y$10$gYNc8cGDrnRwgkm28Ln3NOQWj/g4Wjo.xL21bG57wEH2n6bGCVb8S', 3, '2025-08-29 09:36:58', 0),
(458, 'brayan johns', 'villanueva', 'Aquino', '', '', 0, '0000-00-00', '', 'ID', '', '0000-00-00 00:00:00.000000', '09098503472', '$2y$10$5sCLYb2g5Eyufojg1J7DU.J8qfYd1biKd2/bSXdFUr9hq.WG7kcCm', 'PNP Officer', 572, '', '', 'Single', 'No Formal Education', '', '../uploads/435559638_928560769060280_7584294412764526119_n.jpg', 'What was your childhood nickname?', '$2y$10$pAwcLVY8VFWYvMIZnn8xruczWZddL3gOGUbCu4muAatxGPRpxh0Si', 0, NULL, 0),
(461, 'Precious', 'Coma', 'Abana', '', 'Female', 21, '2003-05-09', '', 'ID', '', '0000-00-00 00:00:00.000000', '09975922996', '$2y$10$bO2bJ5sBiq9cUTlo1zRVtutNrM4sgQw9Jsac3X8Di7PYwCgMM6zJ2', 'Resident', 525, 'Syoyung', 'Purok 2', 'Single', 'College', 'Filipino', '../uploads/dp.png', 'What was your childhood nickname?', '$2y$10$8CMnyGManijcu/cb4elDZe/vpDw8gbHVLD8lVXCXSUPXmHYTe/aT.', 0, NULL, 0),
(462, 'Marcial', 'Lim', 'Rosario', '', 'Female', 76, '1948-04-13', '', 'ID', '', '0000-00-00 00:00:00.000000', '09602752571', '$2y$10$IQZSrh/zIVBK5fcRLT5WQ.TvS.89OD/ohhSwzhaB5xeM0jHkQfx.O', 'Resident', 572, 'Bohol', 'Purok 1', 'Separated', 'Elementary', 'Pilipino', '../uploads/Papa.jpg', 'What was your childhood nickname?', '$2y$10$i2zBt0UtUDDPzbAM/I6Df.IHs74.CXsFTuMH8BMRMxg5izwiIVueu', 0, NULL, 0),
(467, 'Eugene', 'Gamiz', 'Tobias', '', 'Male', 20, '2004-08-09', '', 'ID', '', '0000-00-00 00:00:00.000000', '09050845168', '$2y$10$F2kVO5yGo2PEvjZZoaUc/eBM2p/kyq13njhfZXVwqlsX62rjxPv5u', 'Resident', 575, 'San Francisco', 'Purok 1', 'Single', 'Elementary', 'Filipino', '', 'What was your childhood nickname?', '$2y$10$wuL7Z3CkF04I4WMsePf2vesru4zeB2rs6BKeCcGE1767xa2Vk6oRG', 0, NULL, 0),
(468, 'James', 'Angeles', 'Taming', 'na', 'Male', 21, '0000-00-00', '', 'ID', '', '0000-00-00 00:00:00.000000', '09560962661', '$2y$10$6MZMiz9TvCGKBnHlyjTd2.p82BebeFQ40ZekEmLvHjK5UmqayKn6S', 'Resident', 576, 'Echague, Isabela', 'Purok 3', 'Single', 'College', 'Filipino', '', 'What was your childhood nickname?', '$2y$10$Iut0qgQJ8bw5VT96K2JLF.44q0Rx0yza3ky0qMNDGu3uSUwagaocO', 0, NULL, 0),
(470, 'Genesis', 'Saraos', 'Dela Pena', '', 'Male', 24, '2001-11-03', '', 'ID', '', '0000-00-00 00:00:00.000000', '09661866662', '$2y$10$3IcJQ1vqNxGW8MyGQBfe2.5HU0Sh4hmWv5Rk3IPQ9WcZdptSwxyLe', 'Resident', 577, 'Ramon, Isabela', 'Purok 4', 'Single', 'College', 'Filipino', '', 'What is the name of your first pet?', '$2y$10$vUQes6Y/0DBQ0Ip8W5Ssb.eY6CbBc4FownVI4JnNhEmW17mOFj9LC', 0, NULL, 0),
(471, 'John lloyd', 'Cabangbang', 'Manuel', 'NA', 'Male', 0, '2003-07-15', '', 'ID', '', '0000-00-00 00:00:00.000000', '09071119169', '$2y$10$kIPpzwUoBfVDgvUOwB3whuqeLreoj5kmWiwYoHhXHOX12bPrDVGYS', 'Resident', 464, 'San Fabian Echague', 'Purok 1', 'Single', 'College', 'Filipino', '', 'What was your childhood nickname?', '$2y$10$1HILIJ7FyKzcaX85bWpsN.3Ho5YZOAmDc1QgaIa7Wo40zAFRcHR.W', 0, NULL, 0),
(472, 'Brayan', 'Villanueva', 'Aquino', '', 'Male', 24, '2001-02-22', '../uploads/17412418379732632080172981025188.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09278433509', '$2y$10$slLWS6B55A6TEddz8u.IjuqFAlB0ySwiRAUZRQ30F4x.0miCcMZHa', 'Resident', 578, 'isu', 'Purok 1', 'Single', 'No Formal Education', 'filipino', '../uploads/435559638_928560769060280_7584294412764526119_n.jpg', 'What was your childhood nickname?', '$2y$10$m3xSIGt4fRXbnORJCtSgzuFzoCbWStTm7qmUBKmnLQHe6U/cfo67a', 1, NULL, 0),
(474, 'Sunshine', 'Makino', 'Crusanto', '', 'Male', 28, '1997-02-26', '', 'ID', '', '0000-00-00 00:00:00.000000', '09675487502', '$2y$10$XzI38fZ8NMu/SF7wQqMSCuUIGwPzJJoYOnUnOZyl5vbziRKILtyK.', 'Resident', 464, 'Ifugao', 'Purok 6', 'Single', 'College', 'Filipino', '', 'What was your childhood nickname?', '$2y$10$2J.8Rw/YWRCA0fyC1IhraOTXmec2kftb6IdKbHDpAYSoCiHwVP9JC', 2, NULL, 0),
(475, 'Redentor', 'Bernardo', 'Dominguez', '', 'Male', 22, '2002-08-13', '../uploads/IMG_20250226_215513_766.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09306342718', '$2y$10$nRKmYSryMhaHqve94GrYJeMYNkLTlkYokXdjMuFvxCJ2UB63mj0Ly', 'Resident', 464, 'Ilagan', 'Purok 7', 'Single', 'College', 'Filipino', '../uploads/IMG_20250226_215524_038.jpg', 'What was your childhood nickname?', '$2y$10$k4yXf1TVOW/lynzZMOjupO9/qNZvNxdJAGoc3rJJtGjqgVK5YfgT2', 0, NULL, 0),
(476, 'Dave Raphael', 'Mores', 'Ignacio', '', 'Male', 19, '2005-07-10', '', 'ID', '', '0000-00-00 00:00:00.000000', '09655570560', '$2y$10$xor40z.sm.GhfAN.U//6E.4GDhiKeD9r5ZnQiymt1z6FplcBsIi1G', 'Resident', 579, 'Sta. Maria, Maddela, Quirino', 'Purok 1', 'Single', 'College', 'Filipino', '', 'What is the name of your first pet?', '$2y$10$aHlumWGuro8LcVS/Tl/XHedmXVXI5wL8EOjGufIc8EqtIhGLE4A8y', 0, NULL, 0),
(477, 'Jefferson', 'Maddam-ot', 'Soriano', '', 'Male', 20, '2004-12-19', '../uploads/inbound6758030476416146146.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09616151150', '$2y$10$f0yEJhuyvXAHAzRuDzCTVuAjZ2G2ZnG69hQdFYIF4k0Nih6D190OS', 'Resident', 464, 'Javonillo hospital', 'Purok 2', 'Single', 'College', 'FILIPINO', '../uploads/inbound7171172236682996807.jpg', 'What was your childhood nickname?', '$2y$10$tvR6NwDtrdAltKvNZ/rNpu36YBmilHmkDzIOymVal/qNDzydek0iq', 2, NULL, 0),
(478, 'Tony Rence', 'Torres', 'Sernande', '', 'Male', 20, '2004-10-15', '../uploads/inbound7786151375228409129.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09302682249', '$2y$10$vS6P002lD31b2ihdXBfk/.x4ZG8JizvWRh1yb5zYZEuqlDh6PCn3G', 'Resident', 464, 'Ilagan city', 'Purok 5', 'Single', 'College', 'Filipino', '../uploads/inbound7749617693277271083.jpg', 'What was your childhood nickname?', '$2y$10$LbemwtuGhTnvVTzFrewGFeopaXo49NjmlEVmzJzeFCVBohPyzgRx6', 0, NULL, 0),
(480, 'Jericho', 'Maddam-ot', 'Soriano', '', 'Male', 0, '2006-05-22', '', 'ID', '', '0000-00-00 00:00:00.000000', '09284699022', '$2y$10$SWkPceh7yOx7f0M4J6.myeSbIzGijieEm/S34WHKq96e.0awTdIg.', 'Resident', 464, 'Cordon, Isabela', 'Purok 1', 'Single', 'College', 'Filipino', '../uploads/jeco.jpg', 'What was your childhood nickname?', '$2y$10$1cu/XK6ibAbgoTUPE0h/3.X18YGscElj31pUgQrnRlitRGqVIpwAK', 0, NULL, 0),
(481, 'Ryan', 'Gampoy', 'Pascual', 'Na', 'Male', 22, '2002-06-05', '', 'ID', '', '0000-00-00 00:00:00.000000', '09666231720', '$2y$10$t2iXEmKVj5Y8HwypIKHMk.mBULtSoONSYqYhvahsSGKOjxdI2xgl2', 'Resident', 464, 'San Fabian', 'Purok 1', 'Single', 'College', 'Filipino', '', 'What is the name of your first pet?', '$2y$10$kD96f0GFpFe1n0bLc5jh6O597lQu.FoweH8bMcMENz2s6HGeU4Ew6', 0, NULL, 0),
(483, 'Orlando', 'Montero', 'Santos', 'Jr.', 'Male', 25, '0000-00-00', '', 'ID', '', '0000-00-00 00:00:00.000000', '09262626262', '$2y$10$ZJXB7kbhRDOOT3OwgHHtquKiHkcdg20Wz1GEGzH//QLVrtJ0aJEz2', 'Resident', 582, 'Bohol', 'Purok 2', 'Single', 'College', 'Filipino', '', 'What was your childhood nickname?', '$2y$10$.cLsOazN1JHZAxWaLiAelem/BECyD17qqKsuLLEA99vP71oqVyrgK', 0, NULL, 0),
(486, 'Vergel', 'V', 'Natividad', '', '', 0, '0000-00-00', '', 'ID', '', '0000-00-00 00:00:00.000000', '09222222222', '$2y$10$dzpnS9oLGeG0syH4ZDX0IOO0jNeDuWvirUSfNLtgznrQr42d67f7K', 'Barangay Official', 584, '', '', 'Single', 'No Formal Education', '', '../uploads/BRGYcaptain.jpg', 'What was your childhood nickname?', '$2y$10$UxdKnein4u7hOBHG/rR.HOz3i2gy1SP4R/bpynfy664OqEt.2qSWK', 0, NULL, 0),
(488, 'Marites', 'Aroyo', 'Delos Santos', '', '', 0, '0000-00-00', '', 'ID', '', '0000-00-00 00:00:00.000000', '09141414144', '$2y$10$WukZWisP1Wsq.hztBE4i9.Vq44g4FP5C8Dyb.o0KYlhzhVT1ChE7u', 'Barangay Official', 586, '', '', 'Single', 'No Formal Education', '', '../uploads/yra.jpg', 'What was your childhood nickname?', '$2y$10$sODoUnDTVXk7UnwuoTZRout0ma5MrFONKn3Lv2KpmJelkMyjIfCeC', 1, NULL, 0),
(489, 'Caesey', 'Benigno', 'Labitoria', '', 'Female', 21, '0000-00-00', '../uploads/profile_67c02c899f4ca.jpeg', 'ID', '', '0000-00-00 00:00:00.000000', '09311233662', '$2y$10$CcHwSFAIOaLK1o8VmKAIFOSjdMijNdpcXAMyym/3PhFLS0WcWrCdS', 'Resident', 587, 'San Fabian', 'Purok 5', 'Married', 'No Formal Education', 'Italian', '../uploads/IMG_7059.jpeg', 'What is the name of your first pet?', '$2y$10$qcHQzosLML5igRy07B12u.59JiVuaHSuw3I7PCOMurVwZV3ypku6e', 0, NULL, 0),
(490, 'Neal', 'Reyes', 'Concepcion', '', 'Male', 0, '0000-00-00', '../uploads/profile_67c0481d70b97.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09569945422', '$2y$10$srV7KEYnzPZZVhvoL8PuVOz/NxrA18uu/A31OXhqbhvAqPr8AwsYa', 'Resident', 588, 'Cordon Isabela', 'Purok 4', 'Married', 'College', 'Filipino', '../uploads/selfie_67c0481d70edf.jpg', 'What is the name of your first pet?', '$2y$10$8uLUNOykiJcFm58l5gbHnOapJqO9yJpR7I8AdrFZ77LRHIJwmu/QO', 0, NULL, 0),
(491, 'Mark', 'Balicat', 'De Guzman', '', 'Male', 0, '2003-08-22', '../uploads/profile_67c08113188f4.png', 'ID', '', '0000-00-00 00:00:00.000000', '09694545983', '$2y$10$eo0jniYNLXiwrk.LU35ZSej3D6THoACILpfIOlo7LvZHckRjo7cCO', 'Resident', 589, 'santiago city', 'Purok 3', 'Single', 'College', 'Filipino', '../uploads/selfie_67c0811318a99.png', 'What was your childhood nickname?', '$2y$10$NWkjY3iiFPwXkjmGoHda/.rpBlhwWTUvXVOhYz/pxJnvAHa2f2lLW', 3, '2025-03-19 13:29:03', 0),
(493, 'Maryje', 'Menor', 'Clasin', '', 'Female', 23, '2001-07-30', '../uploads/profile_67c2a33677044.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09684506926', '$2y$10$Qu8GjDsEBSQ6EZQsu1DuzednQhs82tXo7fjIdgPSe7eryqm0vorMG', 'Resident', 591, 'Caliguian Burgos Isabela', 'Purok 2', 'Single', 'College', 'Filipino', '../uploads/selfie_67c2a33677e9f.jpg', 'What was your childhood nickname?', '$2y$10$LGefjb6Xr8X8lx/EzWXlEuKpjKHHwDLdbYhrTxl2ADV15pGFRtqae', 0, NULL, 0),
(494, 'bksksk', 'jxjzn', 'jsjsn', '', '', 0, '0000-00-00', '', 'ID', '', '0000-00-00 00:00:00.000000', '09999999999', '$2y$10$oJTuMESUcDyENZmbu4FYk.FsHQE/UoGRe38uhZKL0iZ87rSEykJ0G', 'Barangay Official', 592, '', '', 'Single', 'No Formal Education', '', 'profile_67c301bd52dce.jpg', 'What was your childhood nickname?', '$2y$10$dnZWDrH0.2SMUYj3Kcmo8OtRNF0e2CXKo3b0rrH/WFExio0eL7TMm', 0, NULL, 0),
(495, 'Barangay', 'Maligaya', 'Echague', '', '', 0, '0000-00-00', '', 'ID', '', '0000-00-00 00:00:00.000000', '09888888888', '$2y$10$66Phl/2NFzXMbC1xqapdlebqOEPioyfSpi2DGH8w.oY1d//LD5paK', 'Barangay Official', 593, '', '', 'Single', 'No Formal Education', '', '../uploads/images (20).jpeg', 'What was your childhood nickname?', '$2y$10$B5EKlaYIRjvOruxzsTzteu.zEIyLmmQ7hlBDzGvVSfNXG0GfBDqz.', 3, '2025-03-04 05:16:38', 0),
(496, 'Oscar', 'M.', 'Gumabon', '', '', 0, '0000-00-00', '', 'ID', '', '0000-00-00 00:00:00.000000', '09666666666', '$2y$10$OmE1l993scnBoc32AIgY9enV25M1MeVuEUygTM/vHTHTfNCG6YGhO', 'Barangay Official', 594, '', '', 'Single', 'No Formal Education', '', '../uploads/CapOscar.jpg', 'What was your childhood nickname?', '$2y$10$KXfE9tA24pARrWflF/BQDehiWhFyTiEm7cwYHN2i6HTgnLVe7dvJS', 0, NULL, 0),
(497, 'Jay Ar', 'Sumicbay', 'Gumabon', '', 'Male', 21, '2003-07-15', '../uploads/profile_67c691093076b.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09602752579', '$2y$10$/Zc/X6rS0wLFIEvJQHbeWeQscFZ2tjlKQD.au06ERJy86SrrVYCmG', 'Resident', 593, 'Echague', 'Purok 2', 'Single', 'College', 'Filipino', '../uploads/FB_IMG_1741705670939.jpg', 'What is the name of your first pet?', '$2y$10$E4TlG1EScENCjkGbFRqkauHUHDzIYFA6ABx.wqj95F1QiGX6AY7XW', 0, NULL, 0),
(498, 'Jean', 'Martillano', 'Calangan', '', 'Female', 57, '1968-01-19', '../uploads/profile_67c6978b24ebc.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09165532977', '$2y$10$SVzQ.AE4tsu3hGet9wYQEemZBnCI7SEYnjbyAxXv3LI2R3bAwIwpS', 'Resident', 593, 'Burgos isabela', 'Purok 4', 'Widowed', 'Highschool', 'Filipino', '../uploads/selfie_67c6978b25793.jpg', 'What was your childhood nickname?', '$2y$10$o6rQ31Gm.HWwIMo1iqzu1O.Kok2TSjU2EU4g7t.NXOr964IwYYGmm', 0, NULL, 0),
(500, 'Kenedy', 'Maximo', 'Dela Cruz', '', 'Male', 19, '2006-02-15', '../uploads/profile_67c92426adfa4.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09942550526', '$2y$10$SO0dGnEdzWcJLVvIcfdFyeAZfV9jHYDFjgrpzRf3MN6AKeRTuTjG.', 'Resident', 464, 'San Fabian', 'Purok 5', 'Single', 'College', 'Filipino', '../uploads/selfie_67c92426ae40e.jpg', 'What was your childhood nickname?', '$2y$10$lhWy0muoUcttnMDl5ZadRexbNnMKcZVnRhdJbCj/JKrOTW.VLLZti', 0, NULL, 0),
(501, 'Frank zander', 'Bartolome', 'Ibarra', '', 'Male', 18, '2006-04-26', '../uploads/profile_67c9243ff310b.jpeg', 'ID', '', '0000-00-00 00:00:00.000000', '09613498556', '$2y$10$eyIS.n76X2aiHqJlYCv7ZuElj.odjYKcRXJ1Nl/adwS/GaQ4FMfuK', 'Resident', 464, 'Santiago city', 'Purok 4', 'Single', 'No Formal Education', 'Filipino', '../uploads/selfie_67c9243ff32a0.jpg', 'What was your childhood nickname?', '$2y$10$ZAfytcbHneSD5kVANrxShOZeGqBHxa39l.kotlwAtc9r2X/Sm3seK', 0, NULL, 0),
(502, 'Ralph Don', 'Villanueva', 'Costales', '', 'Male', 23, '2002-03-06', '../uploads/profile_67c924d6ee415.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09534253249', '$2y$10$3JiqZ8SsGxquH.Jl5bIvX.9adeEhdm.ePomZH6pU591V8GaDn3Cz.', 'Resident', 596, 'Baguio', 'Purok 3', 'Married', 'College', 'Filipino', '../uploads/selfie_67c924d6eedf9.jpg', 'What was your childhood nickname?', '$2y$10$8Zzf7N4/.ryh6WCqGAfISOt9eamGpRkpvMDxVdVRFvtiN0ImfkZQ6', 0, NULL, 0),
(503, 'Maria Katrina Jessica', 'G.', 'Dy', '', '', 0, '0000-00-00', '', 'ID', '', '0000-00-00 00:00:00.000000', '09111111111', '$2y$10$LpSRq/PcFzAHBWtboO2AfehNEV5seVNbgKIOavjqCRb.5dIviNqum', 'Barangay Official', 597, '', '', 'Single', 'No Formal Education', '', '../uploads/d5b04cc3dcd8c17702549ebc5f1acf1a.jpg', 'What was your childhood nickname?', '$2y$10$sMVtYwYTqRfPsFqkv50a5exop1gHG2ZaMMzmOMSrxygctHrvQ9vfO', 0, NULL, 0),
(504, 'IJ', 'Cabilar', 'Dumaguing', 'III', 'Male', 19, '2005-10-12', '../uploads/profile_67c925dc96c31.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09066394059', '$2y$10$Oh9jduQLknXaVP9wWSDtJeeyDLZvxWKr9a8lb.HV0VIu4NTLoh.pq', 'Resident', 598, 'Echague Isabela', 'Purok 4', 'Single', 'College', 'Filipino', '../uploads/selfie_67c925dc97182.jpg', 'What was your childhood nickname?', '$2y$10$E.Wc/FsY8qnrKM9fB5.x4uBWqxPiXXAhjRnTLccaqJ3CJG/19lqdi', 0, NULL, 0),
(505, 'Yra Lei', 'Garcia', 'Garcia', '', 'Female', 21, '2004-02-03', '../uploads/profile_67c997de4b4c0.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09625880387', '$2y$10$KQnJ7fTXTCsF7XnXaBnNKeItdww7sHIf45mqb.IFEJZtXz2AujPhO', 'Resident', 464, 'Cauayan City, Isabela', 'Purok 2', 'Single', 'College', 'Filipino', '../uploads/yra.jpg', 'What is the name of your first pet?', '$2y$10$sDUHsQY14qVob8LZ1udssOteVDCpZGqwO1Y/qLCVbVgL01JGwNUx2', 0, NULL, 0),
(506, 'Ryan', 'Esguerra', 'Argonia', '', 'Male', 24, '2001-09-17', '../uploads/profile_67ca976cd2851.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09457296692', '$2y$10$eErCQqL.g7slVslhwF/5/e3CtlHfMxygoqBacrobvaJobX4mBqeLS', 'Resident', 599, 'Echague', 'Purok 1', 'Single', 'College', 'Filipino', '../uploads/Messenger_creation_1180333906919394.jpeg', 'What was your childhood nickname?', '$2y$10$I7et9GuLHINlTPK1aSSpne71EdQ7KE/.45fm3GkHzF7M9ikLy4a4G', 0, NULL, 0),
(507, 'Jonathan', 'Bautista', 'Vercida', '', 'Male', 25, '2000-03-08', '../uploads/profile_67cbbca6310bf.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09959871984', '$2y$10$1b3awcYMJV7EBW9pMJrxDeiUJv.oTdUpJ9xCvKAwn4KuuamP.XVBS', 'Resident', 600, 'Echague', 'Purok 3', 'Single', 'College', 'Filipino', '../uploads/selfie_67cbbca63147e.jpg', 'What is the name of your first pet?', '$2y$10$oU/XN504s/82HBJuB.dJk.lUkDMXT1X1qA6s4dslPScDbgo7xiZCK', 0, NULL, 0),
(508, 'austin', 'yala', 'vizcarra', '', 'Male', 22, '2002-10-27', '../uploads/profile_67cc39955c0b1.png', 'ID', '', '0000-00-00 00:00:00.000000', '09292122943', '$2y$10$8SLgHy7uEDP7gkN4ozp4WuUk.zpyfyLQuDzsMUrSfGc8.BxAecQvG', 'Resident', 601, 'Alicia, Isabela', 'Purok 1', 'Single', 'College', 'Filipino', '../uploads/selfie_67cc39955c41f.png', 'What is the name of your first pet?', '$2y$10$RM1sw3wBG8.E95XkvI5oau0lvjptPsvrdSHnfQwSYvNv7nf7bWc0.', 0, NULL, 0),
(509, 'Loraine Ann', 'Manaligod', 'Lagua', '', 'Female', 21, '2003-05-07', '../uploads/profile_67cd389f12c86.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09555086005', '$2y$10$.QnP2rUGgUskHm/O24VxQO8OPuEOVasNUGh8B3EWB/Lw1lR9S.OfK', 'Resident', 602, 'Santiago City', 'Purok 2', 'Single', 'College', 'Filipino', '../uploads/selfie_67cd389f12edd.jpg', 'What was your childhood nickname?', '$2y$10$z41qPffx6.A9NjeKtjGQBOoLP.b82shMDeSeO.tp03ded2VAd4aUW', 0, NULL, 0),
(510, 'Randy', 'Ramirez', 'Balaan', 'jr.', 'Male', 23, '2002-04-20', '../uploads/profile_67ce90954ca69.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09538370436', '$2y$10$PRysZsejICk/mHoQBHYah.o6Pyji8xSrv7DPnW49XsATLD0N/qNKK', 'Resident', 603, 'Echague Isabela', 'Purok 1', 'Single', 'College', 'Filipino', '../uploads/selfie_67ce90954cedd.jpg', 'What was your childhood nickname?', '$2y$10$9T38qF5DJPD2Y7.y6NmSlO0C7l20YxlJj5iuXaojSNosMP9KTHz1m', 0, NULL, 0),
(511, 'Jhea Mae', 'Salvador', 'Duco', '', 'Female', 24, '2000-08-30', '../uploads/profile_67cea0b304c47.jpeg', 'ID', '', '0000-00-00 00:00:00.000000', '09079372530', '$2y$10$Tzya5OhGJtAqqB.90v3vruQHemd.rTwbZGrdg.iIKpB7caUZo8aOW', 'Resident', 604, 'San Manuel Isabela', 'Purok 2', 'Single', 'Highschool', 'Filipino', '../uploads/selfie_67cea0b305040.jpg', 'What was your childhood nickname?', '$2y$10$FdQwzWZymQqrDVib8ljiueV9Wp3wroOOpPqCElEmalVZ2HH8YRqE.', 0, NULL, 0),
(512, 'Nino Christopher', 'Gaffud', 'San Jose', '', 'Male', 21, '2003-09-27', '../uploads/profile_67cea90628f8c.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09613478448', '$2y$10$BrggSx9aUkAWjJ47Ue9MOe.KW2NFNVcbUyfIKJsYN19l4Ea2ZVpcS', 'Resident', 582, 'Santiago', 'Purok 4', 'Single', 'College', 'Filipino', '../uploads/selfie_67cea90629134.png', 'What was your childhood nickname?', '$2y$10$SoS1VQpjz5QSjA5E.SdtDevbZo8csyXxqU/QL9bNGkqAPP9J8r4tq', 1, '2025-03-12 10:15:59', 0),
(513, 'Diane', 'Dizon', 'Candalla', '', 'Female', 19, '2005-09-02', '../uploads/profile_67ced1606d4f2.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09217365786', '$2y$10$xBaJ8ige2y4HYU09uuhwIu0rdBmB3BNQIx8K.AFVVdw33c7bMoFYm', 'Resident', 605, 'Silauan, norte', 'Purok 2', 'Single', 'College', 'Filipino', '../uploads/selfie_67ced1606d9bc.jpg', 'What is the name of your first pet?', '$2y$10$GKp8e4Z6yKuQIDnyvL/2XOzdWsVTkDZ0T1eSNNajuxBC0qq2WdmEW', 0, NULL, 0),
(514, 'Jilian', 'Sudio', 'Labasan', '', 'Male', 18, '2006-06-06', '../uploads/profile_67ced6feeb1ea.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09359521712', '$2y$10$FKvJXL5KzMflI4.o9Rb.QuKPBEOImg36JXlWPxkanlq05IxJhDJsG', 'Resident', 464, 'San mateo, isabela', 'Purok 5', 'Single', 'College', 'Filipino', '../uploads/selfie_67ced6feeb333.jpg', 'What was your childhood nickname?', '$2y$10$6iRJayR3aABy4dekL4WyD.pspVJgAFLfpgpZA86IOPu1wv09i8Y7q', 0, NULL, 0),
(515, 'Jennifer', 'I.', 'Decapia', '', '', 0, '0000-00-00', '', 'ID', '', '0000-00-00 00:00:00.000000', '09555555555', '$2y$10$KQnJ7fTXTCsF7XnXaBnNKeItdww7sHIf45mqb.IFEJZtXz2AujPhO', 'Barangay Official', 606, '', '', 'Single', 'No Formal Education', '', '../uploads/d5b04cc3dcd8c17702549ebc5f1acf1a.jpg', 'What was your childhood nickname?', '$2y$10$pH5LKj/1WdKoxsirJd/OpumdueX1nEew5zOD5UHOe.5hclFEumEpu', 0, NULL, 0),
(517, 'John Lloyd', 'C', 'Manuel', '', 'Male', 21, '2003-07-15', '../uploads/profile_67cedcee25221.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09318313622', '$2y$10$NyNc2g7zvQC8NGjZTVEpye/9/QheQbkSIqT79fpLu5fyVtpjyL4Ju', 'Resident', 608, 'Santiago', 'Purok 3', 'Single', 'No Formal Education', 'Filipino', '../uploads/selfie_67cedcee255d0.jpg', 'What was your childhood nickname?', '$2y$10$von4B33Lbo.CtVp84PfbyeG2dYngOPIshx8OC1lvP9ZHKgdQyp44y', 0, NULL, 0),
(518, 'Jana', 'Cabigting', 'Villafuerte', '', 'Female', 19, '2005-11-02', '../uploads/profile_67cedca22617a.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09558310622', '$2y$10$jX/3YHHKSD7eE/I0KzOBt..BlTfxoZu2R0CZg/V7OKNK97QgmSt3O', 'Resident', 609, 'San mateo, Isabela', 'Purok 2', 'Single', 'College', 'Filipino', '../uploads/selfie_67cedca2262f5.jpg', 'What was your childhood nickname?', '$2y$10$elQ81Rw8ei8ee5Fjt1g4lOJqNIKGyaCf6zIrGunEEUa1cYl9jrM8S', 0, NULL, 0),
(519, 'Openia', 'M.', 'Gadduang', '', '', 0, '0000-00-00', '', 'ID', '', '0000-00-00 00:00:00.000000', '09333333333', '$2y$10$BA0e4G/sOx73mNSB9IXwyeyd0qQPl2YVhY63aJKEVXCsZDStPPFUW', 'Barangay Official', 610, '', '', 'Single', 'No Formal Education', '', '../uploads/BRGYcaptain.jpg', 'What was your childhood nickname?', '$2y$10$UmHMbrZ.MTrvv/lMPWfB0.Ob3STYcPP5KJw.a0oEYa/otGegVJJVG', 0, NULL, 0),
(521, 'Lance', 'Gante', 'Lazaro', '', 'Male', 19, '2005-10-29', '../uploads/profile_67cf925a935e1.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09626461594', '$2y$10$j4QgiPEwwLxWqAaJyEcnB.jD1W2h3ewozI0/75xIwdQDgsOXjuKOq', 'Resident', 612, 'Silauan Norte', 'Purok 3', 'Single', 'College', 'Filipino', '../uploads/selfie_67cf925a9373f.jpg', 'What was your childhood nickname?', '$2y$10$lDO6UfPvnlURMx2pkNow6OrMGOVVyZcoMBuFY4azt.rt.1xFrqEmS', 0, NULL, 0),
(522, 'Mark', 'P', 'Dacs', 'N/A', 'Male', 43, '1982-03-11', '../uploads/profile_67cf92bbc0da6.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09752998039', '$2y$10$85ONOxj3WQxHklSrFPo4Eeypwy/cW/R/a/JKAwersn9n62GjANHQi', 'Resident', 613, 'Echague, Isabela', 'Purok 7', 'Single', 'Highschool', 'Filipino', '../uploads/selfie_67cf92bbc1320.jpg', 'What was the make and model of your first car?', '$2y$10$A/2tHg0EbAsbXYQLUxk83O46CXnjVGaByHo.ko5YnoW1ocG4iBk5C', 0, NULL, 0),
(523, 'Olzen', 'Corpuz', 'Melendrez', '', 'Male', 0, '2002-02-24', '../uploads/profile_67cfae9a84370.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09859013010', '$2y$10$ymvm9oeygLJkVZK8VnfBqujdMtdJDf54qbc4IUEoCzzvx/tuSfKse', 'Resident', 603, 'Diffun', 'Purok 2', 'Single', 'College', 'Filipino', '../uploads/selfie_67cfae9a84541.jpg', 'What is the name of your first pet?', '$2y$10$VkigicYOwBTmpW2ehomNX.7eUl7ejdWbzu2u679gUvxcIL6rgwE3W', 3, '2025-05-21 13:47:44', 0),
(524, 'Carina Jane', 'Sumibcay', 'Gumabon', '', 'Female', 24, '2000-09-02', '../uploads/profile_67cfd809635da.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09772176700', '$2y$10$DrpbYDgknY5QaEz6b48FR.6iRbqypBTMV3dfbS5xvC4ckLnRyrChu', 'Resident', 614, 'Echague, Isabela', 'Purok 4', 'Single', 'No Formal Education', 'Filipino', '../uploads/selfie_67cfd80964690.jpg', 'What is the name of your first pet?', '$2y$10$3rfAxKDHQYEB0kqrabfBgO0IUxaTZj3GHZh./oB2HfZ2zIkp.EQq6', 0, NULL, 0),
(525, 'Vhen Carl', 'Maque', 'Castillo', '', 'Male', 21, '2003-03-12', '../uploads/profile_67cfe3b76d314.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09066662003', '$2y$10$/ukYR5C/Usks2zAvvA.e7..0XUnRMJa3cZU4Gp1UJIA/14RYTB1R2', 'Resident', 615, 'Santiago City', 'Purok 1', 'Single', 'College', 'Filipino', '../uploads/selfie_67cfe3b76e011.jpg', 'What was your childhood nickname?', '$2y$10$exkge6ceg4rXzNgHJ7SWdeEWPPR.x3xAqOQtcFNzcRm5QWX5RV9oi', 0, NULL, 0),
(526, 'Mica Ella', 'Domine', 'Mina', '', 'Female', 24, '2000-11-17', '../uploads/IMG_20250312_085826.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09611396400', '$2y$10$OmE1l993scnBoc32AIgY9enV25M1MeVuEUygTM/vHTHTfNCG6YGhO', 'Resident', 616, 'joemama', 'Purok 6', 'Single', 'Elementary', 'Italian', '../uploads/480918719_2255224431525801_2005300953469394227_n.jpg', 'What is the name of your first pet?', '$2y$10$ZE8f3quDT5x7QxGtLk3Zp.QqcUzg96bapHytbFZJIRrbvCPAcpRe.', 0, NULL, 0),
(527, 'Helen', 'Agcanas', 'Labayog', '', 'Female', 35, '1989-09-09', '../uploads/profile_67cff55de525b.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09611597691', '$2y$10$nA25sP0anx26A4MC3OTGz.i3ayw.N7EyOzZO.LAkmlKhLACfcV9pq', 'Resident', 464, 'San Manuel', 'Purok 6', 'Married', 'College', 'Filipino', '../uploads/TaHelen.jpg', 'What is the name of your first pet?', '$2y$10$OPXs8Jt/8XB80Ci8WDn2nOmn.z3HuzGnR0k3e8kdel6Hb2skW.X2u', 0, NULL, 0),
(528, 'Benjamin', 'Celestial', 'Villanueva', '', 'Male', 26, '1998-07-29', '../uploads/profile_67cff86e9d532.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09056917985', '$2y$10$FLQlf2HmoOBV4y/cFpRZj.GEpQFSBdKtm89HGqChBVubaWcM87QjK', 'Resident', 617, 'Alicia, Isabela', 'Purok 3', 'Single', 'Highschool', 'Filipino', '../uploads/Screenshot_2025-03-11-23-00-35-99_a23b203fd3aafc6dcb84e438dda678b6.jpg', 'What is the name of your first pet?', '$2y$10$Brj7VEzdl18EESNG4/s3reTYVOJQPN5fFfhXvIhydtq7Q494a/7zW', 0, NULL, 0),
(530, 'Jester', 'Albento', 'Hernandez', '', 'Male', 20, '2004-11-09', '../uploads/IMG_20250311_203710.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09954316021', '$2y$10$WEL/2XhIvEb8VaNVsU322ewQxcIh.LhrIS208A6.zc3rXmJG2EO8i', 'Resident', 603, 'Roxas', 'Purok 5', 'Single', 'No Formal Education', 'Filipino', '../uploads/IMG_20250311_131837.jpg', 'What was your childhood nickname?', '$2y$10$E.HCypDYfVbgLjjJ6CugAusz/MDcpEspsmMoWheN.AC7jzXsna63C', 0, NULL, 0),
(531, 'JHON ERICO', 'M.', 'NEMIADA', '', 'Male', 19, '2005-03-18', '../uploads/IMG_20250311_203810_770.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09631597017', '$2y$10$hGoJ7n0kWojbRQI4IeaEdeaDHDwsc6meV/cw06QRg2w15pLS1N9r6', 'Resident', 603, 'Sta.Cruz', 'Purok 4', 'Single', 'College', 'FILIPINO', '../uploads/BodyEditor_20250303_172304578.jpg', 'What was your childhood nickname?', '$2y$10$I44GyH102ret9Pqy4HjTN.P5uSLH9SOqgOlBJ5Iw.OrfOVcuT0gvK', 0, NULL, 0),
(532, 'James Russel', 'Pascual', 'Lemi', '', 'Male', 23, '2001-03-31', '../uploads/profile_67d049654b47a.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09162815960', '$2y$10$XchrRZwSBPJk/Eoa3mYHxOEys6DOl8kn/JNBLVbDfovNqqNSBYzuq', 'Resident', 464, 'Jones, Isabela', 'Purok 3', 'Single', 'College', 'Filipino', '../uploads/selfie_67d049654c7f5.jpeg', 'What is the name of your first pet?', '$2y$10$mzaKgaeXzoB8cn3LQM0.MuqKvsdaSmUk4jNLfGa4jFy45pB2pxq42', 0, NULL, 0),
(533, 'Christopher Lance', 'Javellana', 'Frias', '', 'Male', 19, '2005-03-27', '../uploads/profile_67d18c030bb98.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09818062801', '$2y$10$WoWgEQEHZ72z0vgkh./06.vKPzD2eo8IoWoR79GHXfQ1nXHE3qmpy', 'Resident', 603, 'Cebu, San Isidro Isabela', 'Purok 5', 'Single', 'College', 'Filipino', '../uploads/selfie_67d18c030bda7.jpg', 'What was your childhood nickname?', '$2y$10$Er.UqZpxVj7DtO5ksDayhuIRjPrCitlQ14a7xldMUwnkP.AkQTD6W', 0, NULL, 0),
(534, 'Lean Mae', 'Matias', 'Agana', '', 'Female', 21, '2003-09-16', '../uploads/profile_67d95cfb7d638.jpeg', 'ID', '', '0000-00-00 00:00:00.000000', '09059352014', '$2y$10$qjhAckTEZ2HcPKYcC4yJpOTKMyg3GAtedjB2Re8mGFAvynzqt0LyO', 'Resident', 618, 'Maligaya Echague', 'Purok 1', 'Single', 'College', 'Filipino', '../uploads/selfie_67d95cfb7d8ba.jpeg', 'What is the name of your first pet?', '$2y$10$2QA3FhbE.YQBRqCnG3smgekZ6SxR4.mDBzhkfjlLLZ2UpIRDA2yo6', 0, NULL, 0),
(535, 'Althea Hana', 'Robles', 'Mahor', '', 'Female', 0, '2003-09-16', '../uploads/profile_67d98001ac4a4.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09161083147', '$2y$10$R2br5zgTO.gy6w7XSvSWt.OAykpPJSV1dNGnLKW.y5BqOIBdxQNeO', 'Resident', 619, 'Siluan Sur, Echague', 'Purok 1', 'Single', 'College', 'Pilipino', '../uploads/selfie_67d98001ad37e.jpg', 'What is the name of your first pet?', '$2y$10$O2nwv/PUcQ4nb/Z1aCcyF.lsKpssYIJ6/M1uWRGAyvncAuivWZSBq', 0, NULL, 0),
(536, 'Irah', 'Bubod', 'Bucca', '', 'Female', 0, '2002-09-14', '../uploads/profile_67d98801bce42.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09367110432', '$2y$10$ySIJbsLKn2RxT4jmmg1uaehNBE7gAauI.8Lhkjq0iclH49/smtRai', 'Resident', 620, 'Wigan,Cordon,Isabela', 'Purok 1', 'Single', 'College', 'Filipino', '../uploads/selfie_67d98801bd9d1.jpg', 'What was your childhood nickname?', '$2y$10$8YDZZWlBOXgsvb..oGC2Su2W.nDIjrCGWMhZbIwVoDsbeGZ6bt.7K', 3, '2025-03-18 17:18:52', 0),
(537, 'Lexter', 'Corpuz', 'Eugenio', '', 'Male', 0, '2002-03-19', '../uploads/profile_67da046591b11.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09311212301', '$2y$10$0eAUxSRmxpthWzZvUNHSbOM4hNXCuj1dXXlLRv/9le/ywsDfOM6Ja', 'Resident', 621, 'Quirino Provincial Hospital', 'Purok 1', 'Single', 'College', 'Filipino', '../uploads/selfie_67da046591d82.jpg', 'What was your childhood nickname?', '$2y$10$R/vuvXZ1PF383VJBp3Z6pOt2a9tmurtHVfYFr73ojSkpKiQv1CoLy', 0, NULL, 0),
(538, 'joanna', 'tiamson', 'briones', '', 'Female', 22, '2002-08-11', '../uploads/profile_67da20785d33e.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09970674728', '$2y$10$.RsF73PjosZYj/eW4ad2..zWZXolywbERPtnEcChyygy6Xnqolrgm', 'Resident', 619, 'siluan sur, echague', 'Purok 1', 'Single', 'College', 'filipino', '../uploads/selfie_67da20785d547.jpg', 'What is the name of your first pet?', '$2y$10$ubwGSrlGNwc4VCbRfV7yXu4qRkFLUSe3s0oippxcGt/yRRp7mfBKq', 0, NULL, 0),
(539, 'Aiselle', 'Nipales', 'Obedoza', '', 'Female', 19, '2005-11-23', '../uploads/profile_67dab6322ef74.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09533141128', '$2y$10$J9OfEuuAN.dUqN1vtT73su1Y7M/ayxPbO/5Dzk.r7cZO36331abcm', 'Resident', 622, 'Santiago City Isabela', 'Purok 5', 'Single', 'College', 'Filipino', '../uploads/selfie_67dab6322fb6c.jpeg', 'What was your childhood nickname?', '$2y$10$S5bJFs3eVxKmS0Gn98zaiendvcEf.S/qeuLZmLgoUzr11VLrdE9gy', 0, NULL, 0),
(540, 'Realyn', 'K', 'Carlos', '', 'Female', 25, '2000-02-19', '../uploads/profile_67dab89069369.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09386927913', '$2y$10$goeZiePIhrMrIzNKQT.GPu9t5XRnbixkJoI2nDI7/N9IfUe4j4Se2', 'Resident', 623, 'Dinapigue', 'Purok 6', 'Single', 'College', 'Filipino', '../uploads/selfie_67dab8906952c.jpg', 'What was your childhood nickname?', '$2y$10$XZ8VqZr/qjN7FcjzZvrFwOG0Pf/nyNjrlK14vacFqx0qeabCntllS', 0, NULL, 0),
(541, 'Ivan megg', 'Icalla', 'BAGTILAY', '', 'Male', 24, '2000-08-15', '../uploads/profile_67dab8b12e28a.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09269249821', '$2y$10$.G3EU8SON/i9N0ac556pJ.mLIy0o3159Jlf4BUMjpe9O4Z/EGDP7.', 'Resident', 624, 'Santiago Isabela', 'Purok 3', 'Single', '', 'Filipino', '../uploads/selfie_67dab8b12effb.jpg', 'What is the name of your first pet?', '$2y$10$3.h//EUI5dm15SH36NMO7uQAvQ3r/ZzSJlsRNSl5R/GKh72eVjWP.', 0, NULL, 0),
(542, 'Yuri', 'bentillo', 'lopez', '', 'Male', 19, '2005-07-14', '../uploads/profile_67dababf31fab.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09262449626', '$2y$10$2MXN5CAR/PnurgHO1Gf5JeloSVv1AH7qKUftMGvf2hu0.MBLdonGy', 'Resident', 623, 'Angadanan', 'Purok 7', 'Single', 'Highschool', 'Filipino', '../uploads/selfie_67dababf321a6.jpg', 'What was your childhood nickname?', '$2y$10$SP4byMu3hgw3L07v8RoybevUmA8UmE2wIDhjdY5GxeYyTIPbWEtpy', 0, NULL, 0),
(543, 'marlyn', 'B', 'Cabangbang', '', 'Male', 0, '1999-02-03', '../uploads/profile_67dabeca9260e.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09051971801', '$2y$10$PLQU5Ds6YenxspDOnvTPVOumINFvnuIhM6RjhW4J0AFIqTr2HaqrS', 'Resident', 608, 'santaiago', 'Purok 7', 'Married', 'Highschool', 'Filipino', '../uploads/selfie_67dabeca92780.jpg', 'What was your childhood nickname?', '$2y$10$e6TBytN13x2c5YQFxaxakO/JAe2DvQ7esPQPTVjRYIBJWd0ZdMeiy', 0, NULL, 0),
(544, 'clarke zyfer', 'miana', 'sidamon', '', 'Male', 29, '1995-07-19', '../uploads/profile_67db82cfe537d.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09774275354', '$2y$10$doE43ZUZFUFPwZ/MObHSg.xzzsP36ZcUk9QVLZ4/ckhuaxXNabSS2', 'Resident', 625, 'echague', 'Purok 1', 'Single', 'College', 'filipino', '../uploads/selfie_67db82cfe55b8.jpg', 'What is the name of your first pet?', '$2y$10$Ujqql.s/j9f8y1ZNDygqNuluPgoyzOoLmdXOGkOnCDyTiNNgOemai', 0, NULL, 0),
(545, 'Billy Joe', 'Aguila', 'Bangsoy', '', 'Male', 21, '2003-03-25', '../uploads/profile_67db8a43388ce.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09163319690', '$2y$10$tBV0YfhnGbrNOdEDHk6Uu.E71QiywQ7czKdYljzADPer8JSRApSWu', 'Resident', 626, 'San Mateo Isabela', 'Purok 2', 'Single', 'College', 'Filipino', '../uploads/selfie_67db8a433904d.jpg', 'What was your childhood nickname?', '$2y$10$4cxH82uduxZDaTTyU13wuevEoWNorvm1fKckry1WMmiJD7WZSlTAO', 2, NULL, 0),
(546, 'Billy Joe', 'Aguila', 'Bangsoy', '', 'Male', 21, '2003-03-25', '../uploads/profile_67db941d2f479.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09756582719', '$2y$10$sP/W0dqNBnwDFLgEHAIFLunFoY/jX0edLvked5hu7JaYezmsblc3.', 'Resident', 619, 'Echague', 'Purok 2', 'Single', 'College', 'Filipino', '../uploads/selfie_67db941d2fb9a.jpg', 'What was your childhood nickname?', '$2y$10$NSxOsj3Sl6WPMa0cIrY6femHYbAF22NXYURKRbL9WiRsy/Ny/Mzdq', 0, NULL, 0),
(547, 'mj', 'v', 'velasco', '', 'Male', 0, '2003-03-20', '../uploads/profile_67dbc18e6778a.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09650485755', '$2y$10$jZDzPyTGsPydYg93jzoUAO6v25TxM78KavDzyE4d6jmQKax0FSaV6', 'Resident', 627, 'Santiago city', 'Purok 2', 'Single', 'College', 'filipino', '../uploads/selfie_67dbc18e6799b.jpg', 'What was your childhood nickname?', '$2y$10$GS/XbTLtIr1qskQyCwdt1u1eCTqlh0atqJf5EZSUgyb81sbW76H8y', 0, NULL, 0),
(548, 'John', 'C', 'Agustin', '', 'Male', 0, '2001-05-23', '../uploads/profile_67dc035e877ed.png', 'ID', '', '0000-00-00 00:00:00.000000', '09281908812', '$2y$10$OyOHTSOtnyXFzw5b2za94uw0CFnXmS3ryI4FB.TwEZ44Q53Rc5mcS', 'Resident', 628, 'Echague', 'Purok 7', 'Single', 'College', 'Filipino', '../uploads/selfie_67dc035e882c7.png', 'What is the name of your first pet?', '$2y$10$mnZ493SfUVuJuCVdXl7laea2IQAB6IoXEqilvrPVPd9FhUQzQlm3C', 0, NULL, 0),
(549, 'Roniemar', 'Flores', 'Pacamo', '', 'Male', 22, '2002-09-18', '../uploads/profile_67dc165d0885c.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09817498214', '$2y$10$47I6aUtxhNgmBviCBC4BWO.cxNofqfh44ArTZYysk6SXGIwvLg5ae', 'Resident', 464, 'San fabian, echague, isabela', 'Purok 7', 'Single', 'College', 'Filipino', '../uploads/selfie_67dc165d095ab.png', 'What was your childhood nickname?', '$2y$10$8O7Z2XVbcLyoZU2O4auwT./Fs7s/t/Z98vwwqMf.RYVMXO/ndLw3u', 0, NULL, 0),
(550, 'Amber', 'Albero', 'Alcause', '', 'Female', 20, '2004-06-01', '../uploads/profile_67dc2e69a1c83.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09457096559', '$2y$10$a6pKIiWL9re7mGmuuGWoneN2wRNrZbA6iJNvwCQXw9O41IVg/17Cm', 'Resident', 629, 'Tagudin Ilocos Sur', 'Purok 2', 'Single', 'No Formal Education', 'Filipino', '../uploads/selfie_67dc2e69a2459.jpg', 'What was your childhood nickname?', '$2y$10$Hx3fXrxViOURJh2lTusNruUtTj3dKrW6Qu4XaqumZ4Bl3dLUYTTai', 0, NULL, 0),
(551, 'diana', 'c', 'Sagnip', '', 'Male', 22, '2002-06-04', '../uploads/profile_67dd538ec78c8.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09301068108', '$2y$10$cQWol4zWib0aiUQWLlEjaeeXSSIwlvM8MKqMDUINeNV5QTDmt/PP2', 'Resident', 608, 'santiago', 'Purok 6', 'Single', 'No Formal Education', 'Filipino', '../uploads/selfie_67dd538ec7a10.jpg', 'What was your childhood nickname?', '$2y$10$rbBVuyHFn1RsxnBnaQJ6neurBuO8v2rx5w/alU5xE8GzoogrIyOju', 0, NULL, 0),
(552, 'Eadrian Klein', 'Uminga', 'Alcaide', '', 'Male', 0, '2001-09-04', '../uploads/profile_67dd762051b53.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09553012662', '$2y$10$t9sU1LIpnwU3SB0zmBeDteK7kH2twnpjEe9czadjTPsPpFXJyWdTe', 'Resident', 630, 'Cauayan City', 'Purok 1', 'Single', 'College', 'Filipino Citizen', '../uploads/selfie_67dd762052351.jpg', 'What was your childhood nickname?', '$2y$10$gm5KIJzzKoXOnvzNzj381.fvWVS8x8QvItEffY1VLazQlJS0bUojm', 0, NULL, 0),
(553, 'Jomar', 'P', 'Nonan', '', 'Male', 22, '2003-01-06', '../uploads/profile_67de14698a574.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09122121681', '$2y$10$0s8F2KI0Qw.GU/Z5qUZQd.CWThAeEnKpEsTxlENZTEZk.jfAad4H2', 'Resident', 631, 'Angadanan', 'Purok 5', 'Single', 'College', 'Filipino', '../uploads/selfie_67de14698a6a9.jpg', 'What was your childhood nickname?', '$2y$10$kz1c9ZfP4RsEkTS6HdYauOE/wKbUqN4C4rfNmZFkz37SgDxs5/Md6', 0, NULL, 0),
(554, 'Jefrey', 'H', 'Cabangbang', '', 'Male', 0, '2003-03-22', '../uploads/profile_67dea2e9c956a.jpeg', 'ID', '', '0000-00-00 00:00:00.000000', '09162755308', '$2y$10$5g37D3fi0H7KP/RuHDIDfeHMmFCEr35FP5.K1M/avfDie/7wgzVwS', 'Resident', 593, 'Santiago', 'Purok 4', 'Single', 'No Formal Education', 'Filipino', '../uploads/selfie_67dea2e9c97ee.jpeg', 'What was your childhood nickname?', '$2y$10$I151UygyxJvomzRL52HtqeNDH3ECVAnic.GX.lKwaVdICfgV5/BWG', 0, NULL, 0),
(555, 'CherryLou', 'Olalan', 'Nacario', '', 'Female', 0, '2019-07-11', '../uploads/profile_67df704503de9.png', 'ID', '', '0000-00-00 00:00:00.000000', '09495505240', '$2y$10$pDq/lje7O320FnGefs0TZO2pEQhJAxGd5HRRqibAgdVcUhwo41QH6', 'Resident', 632, 'SANTIAGO', 'Purok 2', 'Single', 'College', 'FILIPINO', '../uploads/selfie_67df704504019.png', 'What is the name of your first pet?', '$2y$10$lKZgCycjjE5g9d8KmAwBQupN5LjYhwv9vflyo5Zt4fWcoTwCNg8bK', 0, NULL, 0),
(556, 'Elija', 'Villanueva', 'ocampo', '', 'Male', 18, '2006-12-15', '../uploads/profile_67fb5f3e0483c.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09534857634', '$2y$10$ymvm9oeygLJkVZK8VnfBqujdMtdJDf54qbc4IUEoCzzvx/tuSfKse', 'Resident', 578, 'DCDDC', 'Purok 1', 'Single', 'College', 'DESFDFD', '../uploads/selfie_67fb5f3e05cfc.jpg', 'What was your childhood nickname?', '$2y$10$7nUui0f4eOUzzGsNLc3PceYOy9Jr0GrQl3Bbs.lEI3s0BOkirjYyO', 0, NULL, 0),
(557, 'ivan', 'U', 'Ojadas', '', 'Male', 24, '2001-02-22', '../uploads/profile_6877821e4b5bd.png', 'ID', '', '0000-00-00 00:00:00.000000', '09984749011', '$2y$10$TFCVLzcpCaGZJw6Q24ZxGuLwqb961ol5YEJXwqzFIcqSTbXL1Geku', 'Resident', 578, 'gamis', 'Purok 1', 'Single', 'College', 'Filipino', '../uploads/selfie_6877821e4c65d.png', 'What was your childhood nickname?', '$2y$10$XUe4xBqbkdhj6vYUiGzeIODpmIgZ7Y.qObS7J8Uf8PZ7Cjl8b9GKW', 0, NULL, 0),
(562, 'Reyven', 'Ojadas', 'Pil', '', 'Male', 22, '2003-07-29', '../uploads/467481047_1363514587948463_7463127039056127664_n.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09278433509', '$2y$10$5sCLYb2g5Eyufojg1J7DU.J8qfYd1biKd2/bSXdFUr9hq.WG7kcCm', 'Resident', 633, 'San pascual', 'Purok 4', 'Single', 'College', 'filipino', '../uploads/d5b04cc3dcd8c17702549ebc5f1acf1a.jpg', 'What was your childhood nickname?', '$2y$10$Wm7Eqzp5NfG7E39wd2Vf1eLD3tHd6Ue714WYUHHNjQBE6dt5NOFtS', 1, NULL, 0),
(563, 'estong', 'B', 'Agiran', '', 'Male', 24, '2001-02-22', '../uploads/selfie_68ad9a0f01e38.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09539983378', '$2y$10$0l3tM8xjv0SNdtirZZus1.2ZTobztLvz/3kQkcA/q.3Qib2UNHR2a', 'Resident', 464, 'sa damo', 'Purok 2', 'Single', 'College', 'Filipino', '../uploads/profile_68ad9a0f013d0.jpg', 'What was your childhood nickname?', '$2y$10$o7RJEN8HkDZpkfoPDqn9o.6VE.m9JbgR7i47ETNIonnRRkUXtVHO6', 0, NULL, 0),
(564, 'kristan', 'baluyot', 'dasig', '', 'Male', 18, '2007-05-13', '../uploads/selfie_68aee92116ca9.jpg', 'ID', '', '0000-00-00 00:00:00.000000', '09162758423', '$2y$10$HqdB/mtog2nOsCOS5gGGfOLpnAi6NR0chT.kswLDAaiANzsk8Hd7e', 'Resident', 634, 'MARDH', 'Purok 4', 'Single', 'College', 'Filipino', '../uploads/Messenger_creation_7D1EB1BB-6251-486E-9B9B-C48AD2F8EE3A.jpeg', 'What is the name of your first pet?', '$2y$10$t7oHQQw1P0esxc7jCzZKW.rZqErj8nCcLaXoAF7vGYR4iAkykRSE6', 0, NULL, 0),
(565, 'ernalf', 'calamba', 'aranda', '', 'Male', 22, '2003-02-12', '../uploads/selfie_68b9a58a4d633.jpeg', 'ID', '', '0000-00-00 00:00:00.000000', '09569760896', '$2y$10$dw81Z53amjpgOJ/jOdkn8eMiD4iEJ6Q5Lo2waFxY3lmaEt3MsW.F6', 'Resident', 464, 'Bohol', 'Purok 7', 'Single', 'College', 'Filipino', '../uploads/profile_68b9a58a4d412.jpg', 'What was your childhood nickname?', '$2y$10$EvtcXPxYdj.cApRawQSyBOIsYM.DXS5CskpZ67O0xRc3KCa2r8u2i', 0, NULL, 0),
(566, '', '', '', NULL, 'Male', 23, '2001-12-11', '', 'ID', '', '0000-00-00 00:00:00.000000', '', '', 'Resident', NULL, 'sdsdsd', 'Purok 2', 'Widowed', 'Highschool', 'sdsdsd', '', '', '', 0, NULL, 0),
(567, '', '', '', NULL, 'Male', 23, '2001-12-11', '', 'ID', '', '0000-00-00 00:00:00.000000', '', '', 'Resident', NULL, 'sdsdsd', 'Purok 2', 'Widowed', 'Highschool', 'sdsdsd', '', '', '', 0, NULL, 0),
(568, '', '', '', NULL, 'Male', 23, '2001-12-11', '', 'ID', '', '0000-00-00 00:00:00.000000', '', '', 'Resident', NULL, 'sdsdsd', 'Purok 2', 'Widowed', 'Highschool', 'sdsdsd', '', '', '', 0, NULL, 0),
(569, '', '', '', NULL, 'Male', 23, '2001-12-11', '', 'ID', '', '0000-00-00 00:00:00.000000', '', '', 'Resident', NULL, 'sdsdsd', 'Purok 2', 'Widowed', 'Highschool', 'sdsdsd', '', '', '', 0, NULL, 0),
(570, '', '', '', NULL, 'Male', 23, '2001-12-11', '', 'ID', '', '0000-00-00 00:00:00.000000', '', '', 'Resident', NULL, 'sdsdsd', 'Purok 2', 'Widowed', 'Highschool', 'sdsdsd', '', '', '', 0, NULL, 0),
(571, '', '', '', NULL, 'Male', 23, '2001-12-11', '', 'ID', '', '0000-00-00 00:00:00.000000', '', '', 'Resident', NULL, 'sdsdsd', 'Purok 2', 'Widowed', 'Highschool', 'sdsdsd', '', '', '', 0, NULL, 0),
(572, '', '', '', NULL, 'Male', 23, '2001-12-11', '', 'ID', '', '0000-00-00 00:00:00.000000', '', '', 'Resident', NULL, 'sdsdsd', 'Purok 2', 'Widowed', 'Highschool', 'sdsdsd', '', '', '', 0, NULL, 0),
(573, '', '', '', NULL, 'Male', 23, '2001-12-11', '', 'ID', '', '0000-00-00 00:00:00.000000', '', '', 'Resident', NULL, 'sdsdsd', 'Purok 2', 'Widowed', 'Highschool', 'sdsdsd', '', '', '', 0, NULL, 0),
(574, '', '', '', NULL, 'Male', 23, '2001-12-11', '', 'ID', '', '0000-00-00 00:00:00.000000', '', '', 'Resident', NULL, 'sdsdsd', 'Purok 2', 'Widowed', 'Highschool', 'sdsdsd', '', '', '', 0, NULL, 0),
(575, '', '', '', NULL, 'Male', 23, '2001-12-11', '', 'ID', '', '0000-00-00 00:00:00.000000', '', '', 'Resident', NULL, 'sdsdsd', 'Purok 2', 'Widowed', 'Highschool', 'sdsdsd', '', '', '', 0, NULL, 0),
(576, '', '', '', NULL, 'Male', 23, '2001-12-11', '', 'ID', '', '0000-00-00 00:00:00.000000', '', '', 'Resident', NULL, 'sdsdsd', 'Purok 2', 'Widowed', 'Highschool', 'sdsdsd', '', '', '', 0, NULL, 0),
(577, '', '', '', NULL, 'Male', 23, '2001-12-11', '', 'ID', '', '0000-00-00 00:00:00.000000', '', '', 'Resident', NULL, 'sdsdsd', 'Purok 2', 'Widowed', 'Highschool', 'sdsdsd', '', '', '', 0, NULL, 0),
(578, '', '', '', NULL, 'Male', 23, '2001-12-11', '', 'ID', '', '0000-00-00 00:00:00.000000', '', '', 'Resident', NULL, 'sdsdsd', 'Purok 2', 'Widowed', 'Highschool', 'sdsdsd', '', '', '', 0, NULL, 0),
(579, '', '', '', NULL, 'Male', 23, '2001-12-11', '', 'ID', '', '0000-00-00 00:00:00.000000', '', '', 'Resident', NULL, 'sdsdsd', 'Purok 2', 'Widowed', 'Highschool', 'sdsdsd', '', '', '', 0, NULL, 0),
(580, '', '', '', NULL, 'Male', 23, '2001-12-11', '', 'ID', '', '0000-00-00 00:00:00.000000', '', '', 'Resident', NULL, 'sdsdsd', 'Purok 2', 'Widowed', 'Highschool', 'sdsdsd', '', '', '', 0, NULL, 0),
(581, '', '', '', NULL, 'Male', 23, '2001-12-11', '', 'ID', '', '0000-00-00 00:00:00.000000', '', '', 'Resident', NULL, 'sdsdsd', 'Purok 2', 'Widowed', 'Highschool', 'sdsdsd', '', '', '', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_barangay`
--

CREATE TABLE `tbl_users_barangay` (
  `barangays_id` int(11) NOT NULL,
  `barangay_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users_barangay`
--

INSERT INTO `tbl_users_barangay` (`barangays_id`, `barangay_name`) VALUES
(464, 'San Fabian'),
(525, 'Angoluan'),
(572, 'San Fabian'),
(573, 'North kor'),
(574, 'San Fabian'),
(575, 'San Francisco Alicia'),
(576, 'Echague, Isabela'),
(577, 'alicia, isabela'),
(578, 'gamis'),
(579, 'Sta. Maria, Maddela, Quirino'),
(580, 'San Fabian'),
(581, 'ASD'),
(582, 'Soyung, Echague, Isabela'),
(583, 'Cabatuan'),
(584, 'Castillo'),
(585, 'Hshsh'),
(586, 'San Fabian'),
(587, 'San Fab'),
(588, 'Calaocan'),
(589, 'quezon san isidro'),
(590, 'Cahel, Diffun, Quirino'),
(591, 'Caliguian Burgos Isabela'),
(592, 'Benguet'),
(593, 'Maligaya'),
(594, 'Maligaya'),
(595, 'Purok 2, Calabayan Minanga'),
(596, 'San Fabian, Echague, Isabela'),
(597, 'San Fabian'),
(598, 'Purok4 sanfabian echague isabela'),
(599, 'Siluan Norte'),
(600, 'Silauan Sur'),
(601, 'paddad, alicia, isabela'),
(602, 'Santiago City'),
(603, 'Silauan norte'),
(604, 'Santa Maria, Alfonso Lista, Ifugao'),
(605, 'Silauan Norte '),
(606, 'Silauan Norte '),
(607, 'Grande'),
(608, 'Santiago'),
(609, 'San Mateo, Isabela'),
(610, 'Silauan Sur '),
(611, 'Silauan norte'),
(612, 'Silauan norte'),
(613, 'Silauan norte'),
(614, 'Maligaya, Echague, Isabela'),
(615, 'inanama'),
(616, 'Silauan Norte'),
(617, 'Alicia'),
(618, 'Maligaya, Echague'),
(619, 'Siluan Sur, Echague'),
(620, 'Siluan Sur Echague'),
(621, 'Silluan Sur'),
(622, 'Patul'),
(623, 'Siluan sur'),
(624, 'Ramos west san isidro isabela'),
(625, 'soyung, echague'),
(626, 'Old Centro 1, San Mateo Isabela'),
(627, 'CALAO EAST'),
(628, 'Silauan Sur, Echague Isabela'),
(629, 'Calaocan Santiago Isabela'),
(630, 'Purok Aurora'),
(631, 'Angadanan'),
(632, 'DIVISORIA SANTIAGO CIRY'),
(633, 'Gamisline,Quadro Singko'),
(634, 'San Fabian'),
(635, 'asas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_announcement`
--
ALTER TABLE `tbl_announcement`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `tbl_brg_official`
--
ALTER TABLE `tbl_brg_official`
  ADD PRIMARY KEY (`official_id`),
  ADD KEY `tbl_brg_official_ibfk_1` (`barangays_id`);

--
-- Indexes for table `tbl_complaintcategories`
--
ALTER TABLE `tbl_complaintcategories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_complaints`
--
ALTER TABLE `tbl_complaints`
  ADD PRIMARY KEY (`complaints_id`),
  ADD UNIQUE KEY `complaint_reference_id` (`complaint_reference_id`),
  ADD KEY `tbl_complaints_ibfk_2` (`category_id`),
  ADD KEY `tbl_complaints_ibfk_3` (`image_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `tbl_complaints_ibfk_5` (`barangays_id`),
  ADD KEY `cert_id` (`cert_id`);

--
-- Indexes for table `tbl_complaints_certificates`
--
ALTER TABLE `tbl_complaints_certificates`
  ADD PRIMARY KEY (`cert_id`),
  ADD KEY `tbl_complaints_certificates_ibfk_1` (`complaints_id`);

--
-- Indexes for table `tbl_evidence`
--
ALTER TABLE `tbl_evidence`
  ADD KEY `tbl_evidence_ibfk_1` (`complaints_id`);

--
-- Indexes for table `tbl_hearing_history`
--
ALTER TABLE `tbl_hearing_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaints_id` (`complaints_id`);

--
-- Indexes for table `tbl_login_logs`
--
ALTER TABLE `tbl_login_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `tbl_users_ibfk_2` (`barangays_id`),
  ADD KEY `tbl_users_ibfk_3` (`pic_data`);

--
-- Indexes for table `tbl_users_barangay`
--
ALTER TABLE `tbl_users_barangay`
  ADD PRIMARY KEY (`barangays_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `tbl_announcement`
--
ALTER TABLE `tbl_announcement`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_brg_official`
--
ALTER TABLE `tbl_brg_official`
  MODIFY `official_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `tbl_complaintcategories`
--
ALTER TABLE `tbl_complaintcategories`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=485;

--
-- AUTO_INCREMENT for table `tbl_complaints`
--
ALTER TABLE `tbl_complaints`
  MODIFY `complaints_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=813;

--
-- AUTO_INCREMENT for table `tbl_complaints_certificates`
--
ALTER TABLE `tbl_complaints_certificates`
  MODIFY `cert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_hearing_history`
--
ALTER TABLE `tbl_hearing_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tbl_login_logs`
--
ALTER TABLE `tbl_login_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=961;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=582;

--
-- AUTO_INCREMENT for table `tbl_users_barangay`
--
ALTER TABLE `tbl_users_barangay`
  MODIFY `barangays_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=636;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_brg_official`
--
ALTER TABLE `tbl_brg_official`
  ADD CONSTRAINT `tbl_brg_official_ibfk_1` FOREIGN KEY (`barangays_id`) REFERENCES `tbl_users_barangay` (`barangays_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_complaints`
--
ALTER TABLE `tbl_complaints`
  ADD CONSTRAINT `tbl_complaints_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `tbl_complaintcategories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_complaints_ibfk_5` FOREIGN KEY (`barangays_id`) REFERENCES `tbl_users_barangay` (`barangays_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_complaints_ibfk_6` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_complaints_certificates`
--
ALTER TABLE `tbl_complaints_certificates`
  ADD CONSTRAINT `tbl_complaints_certificates_ibfk_1` FOREIGN KEY (`complaints_id`) REFERENCES `tbl_complaints` (`complaints_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_evidence`
--
ALTER TABLE `tbl_evidence`
  ADD CONSTRAINT `tbl_evidence_ibfk_1` FOREIGN KEY (`complaints_id`) REFERENCES `tbl_complaints` (`complaints_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_hearing_history`
--
ALTER TABLE `tbl_hearing_history`
  ADD CONSTRAINT `tbl_hearing_history_ibfk_1` FOREIGN KEY (`complaints_id`) REFERENCES `tbl_complaints` (`complaints_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_login_logs`
--
ALTER TABLE `tbl_login_logs`
  ADD CONSTRAINT `tbl_login_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD CONSTRAINT `tbl_users_ibfk_2` FOREIGN KEY (`barangays_id`) REFERENCES `tbl_users_barangay` (`barangays_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
