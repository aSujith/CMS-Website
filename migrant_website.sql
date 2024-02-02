-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2024 at 05:03 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `migrant_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `s_no` int(10) NOT NULL,
  `name` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mob_no` varchar(12) DEFAULT NULL,
  `username` text DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`s_no`, `name`, `email`, `mob_no`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@123', '1234567890', 'admin', 'pass@123', '2023-07-13 08:33:03', '2023-07-13 08:33:03');

-- --------------------------------------------------------

--
-- Table structure for table `w_register_details`
--

CREATE TABLE `w_register_details` (
  `s_no` int(10) NOT NULL,
  `w_name` text DEFAULT NULL,
  `w_age` int(100) DEFAULT NULL,
  `w_dob` date DEFAULT NULL,
  `w_mob_no` varchar(12) DEFAULT NULL,
  `w_gender` text DEFAULT NULL,
  `w_address` text DEFAULT NULL,
  `w_iname` text DEFAULT NULL,
  `w_iid` varchar(10) DEFAULT NULL,
  `w_work` text DEFAULT NULL,
  `w_aadhar_no` varchar(15) DEFAULT NULL,
  `w_state` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `w_register_details`
--

INSERT INTO `w_register_details` (`s_no`, `w_name`, `w_age`, `w_dob`, `w_mob_no`, `w_gender`, `w_address`, `w_iname`, `w_iid`, `w_work`, `w_aadhar_no`, `w_state`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 18, '2004-11-24', '9342239553', 'male', '1234 - admin, TN', 'Sujith', 'IID-1234', 'Construction worker', '1234 5678 9012', 'Tamil Nadu', '2023-07-13 10:29:02', '2023-07-13 10:29:02'),
(2, 'Admin', 18, '2004-11-24', '9342239553', 'male', '1234 - admin, TN', 'Sujith', 'IID-1234', 'Construction worker', '1234 5678 9012', 'Tamil Nadu', '2023-07-13 10:29:13', '2023-07-13 10:29:13'),
(3, 'qwywtgriyqw', 23, '2022-02-02', '3547635757', 'male', 'sytruwreetgure', 'aytwtreuw', 'IID-4365', 'Construction worker', '3422 4534 4635', 'Tamil Nadu', '2023-07-13 11:58:59', '2023-07-13 11:58:59'),
(4, 'qwywtgriyqw', 23, '2022-02-02', '3547635757', 'male', 'sytruwreetgure', 'aytwtreuw', 'IID-4365', 'Construction worker', '3422 4534 4635', 'Tamil Nadu', '2023-07-13 11:59:03', '2023-07-13 11:59:03'),
(5, 'Sujith', 18, '2007-02-02', '3547635757', 'male', '23grstgdgsg', 'Sujith', 'IID-4365', 'Construction worker', '3422 4534 4635', 'Tamil Nadu', '2023-07-13 15:13:03', '2023-07-13 15:13:03'),
(6, 'Sujith', 18, '2007-02-02', '3547635757', 'male', '23grstgdgsg', 'Sujith', 'IID-4365', 'Construction worker', '3422 4534 4635', 'Tamil Nadu', '2023-07-13 15:13:09', '2023-07-13 15:13:09'),
(7, 'Sujith', 18, '2007-02-02', '3547635757', 'male', '23grstgdgsg', 'Sujith', 'IID-4365', 'Construction worker', '3422 4534 4635', 'Tamil Nadu', '2023-07-13 15:13:14', '2023-07-13 15:13:14'),
(8, 'Sujith', 18, '2007-02-02', '3547635757', 'male', '23grstgdgsg', 'Sujith', 'IID-4365', 'Construction worker', '3422 4534 4635', 'Tamil Nadu', '2023-07-13 15:13:18', '2023-07-13 15:13:18'),
(9, 'Nanditha', 18, '2005-01-02', '3244364653', 'female', '2323/trezree/ gfdttwxttd,jhjttdthdfhcv', 'aytwtreuw', 'IID-3421', 'Construction worker', '9876 4567 4321', 'Tamil Nadu', '2023-07-18 14:32:36', '2023-07-18 14:32:36'),
(10, 'padma', 34, '1984-01-02', '12345', 'female', 'hrrswtsghc hffsgfcnb, twtrdsd/hrsgtx', 'ak', 'IID-6567', 'Construction worker', '3423 ', 'Tamil Nadu', '2023-07-18 18:30:20', '2023-07-18 18:30:20'),
(11, 'padma', 34, '1984-01-02', '12345', 'female', 'hrrswtsghc hffsgfcnb, twtrdsd/hrsgtx', 'ak', 'IID-6567', 'Construction worker', '3423 ', 'Tamil Nadu', '2023-07-18 18:30:49', '2023-07-18 18:30:49'),
(12, 'poorani', 21, '2002-04-04', '4354654653', 'female', 'quteikgdfgfgifiuwigiwfgiq21624375427', 'admin', 'IID-9124', 'Construction worker', '3245 5486 2537', 'Tamil Nadu', '2023-08-25 12:03:13', '2023-08-25 12:03:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `w_register_details`
--
ALTER TABLE `w_register_details`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `s_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `w_register_details`
--
ALTER TABLE `w_register_details`
  MODIFY `s_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
