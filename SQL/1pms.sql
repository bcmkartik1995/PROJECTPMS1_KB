-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2022 at 07:52 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `1pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `installer`
--

CREATE TABLE `installer` (
  `id` int(1) NOT NULL,
  `installer_flag` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts`
--

CREATE TABLE `tbl_accounts` (
  `account_id` int(11) NOT NULL,
  `account_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `balance` decimal(18,2) NOT NULL DEFAULT 0.00,
  `permission` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_accounts`
--

INSERT INTO `tbl_accounts` (`account_id`, `account_name`, `description`, `balance`, `permission`) VALUES
(1, 'Main Account', '', '-7000.00', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account_details`
--

CREATE TABLE `tbl_account_details` (
  `account_details_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employment_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'en_US',
  `address` varchar(64) COLLATE utf8_unicode_ci DEFAULT '-',
  `phone` varchar(32) COLLATE utf8_unicode_ci DEFAULT '-',
  `mobile` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `skype` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `language` varchar(40) COLLATE utf8_unicode_ci DEFAULT 'english',
  `designations_id` int(11) DEFAULT 0,
  `avatar` varchar(200) COLLATE utf8_unicode_ci DEFAULT 'uploads/default_avatar.jpg',
  `joining_date` date DEFAULT NULL,
  `present_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maratial_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direction` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_account_details`
--

INSERT INTO `tbl_account_details` (`account_details_id`, `user_id`, `fullname`, `employment_id`, `company`, `city`, `country`, `locale`, `address`, `phone`, `mobile`, `skype`, `language`, `designations_id`, `avatar`, `joining_date`, `present_address`, `date_of_birth`, `gender`, `maratial_status`, `father_name`, `mother_name`, `passport`, `direction`) VALUES
(1, 1, 'Minesh Patel', NULL, NULL, NULL, NULL, 'en_GB', '-', '', '', '', 'english', 0, 'uploads/UWB_CMYK_Palette_Logo-PNG_18-09.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 'Mr. Kunjal Lalitkumar Patel', '', '0', NULL, NULL, 'gu_IN', '-', '', '', '', 'english', 8, 'uploads/Kunjal-Patel.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(3, 3, 'Mr. Minesh Natubhai Patel', '', '0', NULL, NULL, 'gu_IN', '-', '', '', '', 'english', 10, 'uploads/minesh-patel-220x220(1).jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(4, 4, 'Mr. Hemant Shah', '', '0', NULL, NULL, 'gu_IN', '-', '', '', '', 'english', 11, 'uploads/hemant.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(5, 5, 'Mr. Shivinder Singh Chawla', '', '0', NULL, NULL, 'gu_IN', '-', '', '', '', 'english', 12, 'uploads/chawla.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(6, 6, 'Mr. Rakesh Agrawal', '', '0', NULL, NULL, 'gu_IN', '-', '', '', '', 'english', 2, 'uploads/rakesh.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(7, 7, 'Mr. Atul Patel', '', '0', NULL, NULL, 'gu_IN', '-', '', '', '', 'english', 2, 'uploads/atul_smal(1).jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(8, 8, 'Mrs. Pritty Vimalbhai Patel', '', '0', NULL, NULL, 'gu_IN', '-', '', '', '', 'english', 2, 'uploads/Pritty-Patel-uway-500x500-450x450.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(9, 9, 'Mr. Paresh Saraiya', '', '0', NULL, NULL, 'gu_IN', '-', '', '', '', 'english', 2, 'uploads/paresh.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(10, 10, 'Mr. Bharat Patel', '', '0', NULL, NULL, 'gu_IN', '-', '', '', '', 'english', 2, 'uploads/Bharat_U_Patel_(15-06-2015).jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(11, 11, 'Mr. Pinakin Shah', '', '0', NULL, NULL, 'gu_IN', '-', '', '', '', 'english', 2, 'uploads/Pinakin-Shah.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(12, 12, 'Mr. Samir Parikh', '', '0', NULL, NULL, 'gu_IN', '-', '', '', '', 'english', 2, 'uploads/samir-parikh.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(13, 13, 'Mr. Arvind Nopany', '', '0', NULL, NULL, 'gu_IN', '-', '', '', '', 'english', 2, 'uploads/images.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(14, 14, 'Mrs. Harleen Chawla', '', '0', NULL, NULL, 'gu_IN', '-', '', '', '', 'english', 2, 'uploads/images.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(15, 15, 'MR. ANIL JADAV', '', '0', NULL, NULL, 'en_GB', '-', '', '', '', 'english', 3, 'uploads/anil_jadhav.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(16, 16, 'MRS. NILAM ACHARYA', '', '0', NULL, NULL, 'gu_IN', '-', '', '9537707322', '', 'english', 1, 'uploads/nilam_medam.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(17, 17, 'MR. MUNAVAR TAI', '', '0', NULL, NULL, 'en_GB', '-', '', '8000089218', '', 'english', 15, 'uploads/munavar_tai.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(18, 18, 'MR. NIKUL DAVDA', '', '0', NULL, NULL, 'gu_IN', '-', '', '9687475352', '', 'english', 16, 'uploads/nikul_davda.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(19, 19, 'MS. ISHA PANDYA', '', '0', NULL, NULL, 'gu_IN', '-', '', '7046450336', '', 'english', 17, 'uploads/isha_pandya.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(20, 20, 'MR. SUNNY DEVNANI', '', '0', NULL, NULL, 'en_GB', '-', '', '9723085895', '', 'english', 18, 'uploads/sunny_devnani.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(21, 21, 'MS. HEENA MONDAL', '', '0', NULL, NULL, 'gu_IN', '-', '', '8320054664', '', 'english', 18, 'uploads/heena_paranjape.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(22, 22, 'MS. JIGISHA ACHARYA', '', '0', NULL, NULL, 'gu_IN', '-', '', '8460768035', '', 'english', 18, 'uploads/jigisha_medam.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(23, 23, 'MS. ROSHNI SONAR', '', '0', NULL, NULL, 'gu_IN', '-', '', '', '', 'english', 19, 'uploads/roshni_sonar.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(24, 24, 'MR. VISHAL SONI', '', '0', NULL, NULL, 'en_GB', '-', '', '9998008249', '', 'english', 20, 'uploads/vishal_soni.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(25, 25, 'MS. AKSHA RATHOD', '', '0', NULL, NULL, 'gu_IN', '-', '', '8200074153', '', 'english', 21, 'uploads/aksha_rathod.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(26, 26, 'MS. EKTA SHAH', '', '0', NULL, NULL, 'gu_IN', '-', '', '9664736295', '', 'english', 22, 'uploads/ekta_shah.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(27, 27, 'RAM MAHAVADIYA', '', '0', NULL, NULL, 'gu_IN', '-', '', '', '', 'english', 4, 'uploads/rambhai.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(28, 28, 'NISHI SHAH', '', '0', NULL, NULL, 'en_GB', '-', '', '', '', 'english', 22, 'uploads/nishi_shah.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(29, 29, 'MRS. SOSAMMA THOMAS', '', '0', NULL, NULL, 'en_GB', '-', '', '', '', 'english', 7, 'uploads/sujan_thomas.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activities`
--

CREATE TABLE `tbl_activities` (
  `activities_id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_field_id` int(11) DEFAULT NULL,
  `activity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `icon` varchar(32) COLLATE utf8_unicode_ci DEFAULT 'fa-coffee',
  `link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `value2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_activities`
--

INSERT INTO `tbl_activities` (`activities_id`, `user`, `module`, `module_field_id`, `activity`, `activity_date`, `icon`, `link`, `value1`, `value2`, `deleted`) VALUES
(1, 1, 'settings', 1, 'activity_save_general_settings', '2022-11-28 12:43:36', 'fa-coffee', NULL, 'UNITED WAY OF BARODA', NULL, 0),
(2, 1, 'settings', 1, 'activity_save_system_settings', '2022-11-28 12:44:46', 'fa-coffee', NULL, 'english', NULL, 0),
(3, 1, 'settings', 1, 'activity_save_theme_settings', '2022-11-28 12:45:39', 'fa-coffee', NULL, 'UNITED WAY OF BARODA', NULL, 0),
(4, 1, 'settings', 1, 'activity_password_update', '2022-11-28 12:47:17', 'fa-coffee', NULL, 'admin', NULL, 0),
(5, 1, 'settings', 1, 'activity_update_profile', '2022-11-28 12:48:03', 'fa-coffee', NULL, 'Minesh Patel', NULL, 0),
(6, 1, 'settings', 1, 'activity_save_system_settings', '2022-11-28 12:49:18', 'fa-coffee', NULL, 'english', NULL, 0),
(7, 1, 'settings', 1, 'activity_save_theme_settings', '2022-11-28 12:50:27', 'fa-coffee', NULL, 'UNITED WAY OF BARODA', NULL, 0),
(8, 1, 'settings', 1, 'activity_save_theme_settings', '2022-11-28 12:52:05', 'fa-coffee', NULL, 'UNITED WAY OF BARODA', NULL, 0),
(9, 1, 'settings', 1, 'activity_backup_delete_success', '2022-11-28 12:54:03', 'fa-coffee', NULL, 'BD-backup_2020-06-20_04-04.zip', NULL, 0),
(10, 1, 'settings', 1, 'activity_backup_delete_success', '2022-11-28 12:54:06', 'fa-coffee', NULL, 'BD-backup_2020-05-18_03-50.zip', NULL, 0),
(11, 1, 'settings', 1, 'activity_database_backup', '2022-11-28 12:54:11', 'fa-coffee', NULL, 'BD-backup_2022-11-28_18-24', NULL, 0),
(12, 1, 'settings', 1, 'activity_backup_delete_success', '2022-11-28 12:54:17', 'fa-coffee', NULL, 'BD-backup_2022-11-28_18-24.zip', NULL, 0),
(13, 1, 'settings', 1, 'activity_save_theme_settings', '2022-11-28 13:14:31', 'fa-coffee', NULL, 'UNITED WAY OF BARODA', NULL, 0),
(14, 1, 'settings', 1, 'activity_save_theme_settings', '2022-11-28 13:16:34', 'fa-coffee', NULL, 'UNITED WAY OF BARODA', NULL, 0),
(15, 1, 'settings', 1, 'activity_save_email_settings', '2022-11-28 13:35:13', 'fa-coffee', NULL, 'admin@unitedwayofbaroda.org', NULL, 0),
(16, 1, 'settings', 1, 'activity_save_invoice_settings', '2022-11-29 06:43:37', 'fa-coffee', NULL, 'INV', NULL, 0),
(17, 1, 'settings', 1, 'activity_update_working_days', '2022-11-29 06:45:00', 'fa-coffee', NULL, 'same_time', NULL, 0),
(18, 1, 'settings', 1, 'activity_save_invoice_settings', '2022-11-29 06:55:41', 'fa-coffee', NULL, 'INV', NULL, 0),
(19, 1, 'departments', NULL, 'activity_added_a_department', '2022-11-29 07:45:02', 'fa-coffee', NULL, 'ADMINISTRATION', NULL, 0),
(20, 1, 'departments', NULL, 'activity_added_a_department', '2022-11-29 07:49:01', 'fa-coffee', NULL, 'MANAGEMENT', NULL, 0),
(21, 1, 'settings', 1, 'activity_save_theme_settings', '2022-12-01 07:24:31', 'fa-coffee', NULL, 'UNITED WAY OF BARODA', NULL, 0),
(22, 1, 'settings', 1, 'activity_save_system_settings', '2022-12-01 07:25:40', 'fa-coffee', NULL, 'english', NULL, 0),
(23, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 07:49:52', 'fa-coffee', NULL, 'ACCOUNTS & FINANCE ', NULL, 0),
(24, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 07:57:55', 'fa-coffee', NULL, 'CSR PROJECT DEPARTMENT', NULL, 0),
(25, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 07:59:04', 'fa-coffee', NULL, 'CIC PROJECT DEPARTMENT', NULL, 0),
(26, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 07:59:39', 'fa-coffee', NULL, 'CORE PROJECT DEPARTMENT', NULL, 0),
(27, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 08:00:11', 'fa-coffee', NULL, 'HR DEPARTMENT', NULL, 0),
(28, 1, 'user', 2, 'activity_added_new_user', '2022-12-01 08:12:23', 'fa-user', NULL, 'Kunjal', NULL, 0),
(29, 1, 'user', 2, 'activity_change_status', '2022-12-01 08:12:32', 'fa-user', NULL, 'Kunjal Deactive', NULL, 0),
(30, 1, 'user', 2, 'activity_change_status', '2022-12-01 08:12:33', 'fa-user', NULL, 'Kunjal Active', NULL, 0),
(31, 1, 'user', 2, 'activity_change_status', '2022-12-01 08:28:16', 'fa-user', NULL, 'Kunjal Deactive', NULL, 0),
(32, 1, 'user', 2, 'activity_added_new_user', '2022-12-01 08:28:30', 'fa-user', NULL, 'Kunjal', NULL, 0),
(33, 1, 'user', 3, 'activity_added_new_user', '2022-12-01 08:53:29', 'fa-user', NULL, 'Minesh', NULL, 0),
(34, 1, 'departments', 2, 'activity_added_a_department', '2022-12-01 08:58:16', 'fa-coffee', NULL, 'MANAGEMENT', NULL, 0),
(35, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 08:59:22', 'fa-coffee', NULL, 'MANAGEMENT', NULL, 0),
(36, 1, 'user', 2, 'activity_added_new_user', '2022-12-01 09:00:48', 'fa-user', NULL, 'Kunjal', NULL, 0),
(37, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 09:02:56', 'fa-coffee', NULL, 'MANAGEMENT', NULL, 0),
(38, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 09:03:54', 'fa-coffee', NULL, 'MANAGEMENT', NULL, 0),
(39, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 09:04:15', 'fa-coffee', NULL, 'MANAGEMENT', NULL, 0),
(40, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 09:04:32', 'fa-coffee', NULL, 'MANAGEMENT', NULL, 0),
(41, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 09:05:07', 'fa-coffee', NULL, 'MANAGEMENT', NULL, 0),
(42, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 09:05:45', 'fa-coffee', NULL, 'MANAGEMENT', NULL, 0),
(43, 1, 'user', 3, 'activity_added_new_user', '2022-12-01 09:06:22', 'fa-user', NULL, 'Minesh', NULL, 0),
(44, 1, 'user', 4, 'activity_added_new_user', '2022-12-01 09:08:19', 'fa-user', NULL, 'Hemant', NULL, 0),
(45, 1, 'user', 5, 'activity_added_new_user', '2022-12-01 09:09:54', 'fa-user', NULL, 'Shivinder', NULL, 0),
(46, 1, 'user', 2, 'activity_change_status', '2022-12-01 09:09:59', 'fa-user', NULL, 'Kunjal Active', NULL, 0),
(47, 1, 'user', 6, 'activity_added_new_user', '2022-12-01 09:11:41', 'fa-user', NULL, 'Rakesh', NULL, 0),
(48, 1, 'user', 7, 'activity_added_new_user', '2022-12-01 09:13:56', 'fa-user', NULL, 'Atul', NULL, 0),
(49, 1, 'user', 8, 'activity_added_new_user', '2022-12-01 09:16:09', 'fa-user', NULL, 'Pritty', NULL, 0),
(50, 1, 'user', 9, 'activity_added_new_user', '2022-12-01 09:17:14', 'fa-user', NULL, 'Paresh', NULL, 0),
(51, 1, 'user', 10, 'activity_added_new_user', '2022-12-01 09:18:24', 'fa-user', NULL, 'Bharat', NULL, 0),
(52, 1, 'user', 11, 'activity_added_new_user', '2022-12-01 09:19:59', 'fa-user', NULL, 'Pinakin', NULL, 0),
(53, 1, 'user', 12, 'activity_added_new_user', '2022-12-01 09:21:19', 'fa-user', NULL, 'Samir', NULL, 0),
(54, 1, 'user', 13, 'activity_added_new_user', '2022-12-01 09:26:24', 'fa-user', NULL, 'Arvind', NULL, 0),
(55, 1, 'user', 14, 'activity_added_new_user', '2022-12-01 09:27:33', 'fa-user', NULL, 'Harleen', NULL, 0),
(56, 1, 'user', 15, 'activity_added_new_user', '2022-12-01 09:32:58', 'fa-user', NULL, 'Anil', NULL, 0),
(57, 1, 'user', 15, 'activity_added_new_user', '2022-12-01 09:33:51', 'fa-user', NULL, 'Anil', NULL, 0),
(58, 1, 'user', 16, 'activity_added_new_user', '2022-12-01 09:36:03', 'fa-user', NULL, 'Nilam', NULL, 0),
(59, 1, 'user', 17, 'activity_added_new_user', '2022-12-01 09:41:05', 'fa-user', NULL, 'Munavar', NULL, 0),
(60, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 09:42:04', 'fa-coffee', NULL, 'ADMINISTRATION', NULL, 0),
(61, 1, 'user', 17, 'activity_added_new_user', '2022-12-01 09:42:38', 'fa-user', NULL, 'Munavar', NULL, 0),
(62, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 09:46:05', 'fa-coffee', NULL, 'CSR PROJECT DEPARTMENT', NULL, 0),
(63, 1, 'user', 18, 'activity_added_new_user', '2022-12-01 09:46:12', 'fa-user', NULL, 'Nikul', NULL, 0),
(64, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 09:50:19', 'fa-coffee', NULL, 'ADMINISTRATION', NULL, 0),
(65, 1, 'user', 19, 'activity_added_new_user', '2022-12-01 09:50:27', 'fa-user', NULL, 'Isha', NULL, 0),
(66, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 09:54:17', 'fa-coffee', NULL, 'CSR PROJECT DEPARTMENT', NULL, 0),
(67, 1, 'user', 20, 'activity_added_new_user', '2022-12-01 09:54:27', 'fa-user', NULL, 'Sunny', NULL, 0),
(68, 1, 'user', 20, 'activity_added_new_user', '2022-12-01 09:55:04', 'fa-user', NULL, 'Sunny', NULL, 0),
(69, 1, 'user', 21, 'activity_added_new_user', '2022-12-01 09:57:12', 'fa-user', NULL, 'Heena', NULL, 0),
(70, 1, 'user', 22, 'activity_added_new_user', '2022-12-01 09:59:09', 'fa-user', NULL, 'Jigisha', NULL, 0),
(71, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 10:01:25', 'fa-coffee', NULL, 'ACCOUNTS & FINANCE ', NULL, 0),
(72, 1, 'user', 23, 'activity_added_new_user', '2022-12-01 10:01:29', 'fa-user', NULL, 'Roshni', NULL, 0),
(73, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 10:03:37', 'fa-coffee', NULL, 'CSR PROJECT DEPARTMENT', NULL, 0),
(74, 1, 'user', 24, 'activity_added_new_user', '2022-12-01 10:03:44', 'fa-user', NULL, 'Vishal', NULL, 0),
(75, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 10:05:45', 'fa-coffee', NULL, 'CORE PROJECT DEPARTMENT', NULL, 0),
(76, 1, 'user', 25, 'activity_added_new_user', '2022-12-01 10:05:49', 'fa-user', NULL, 'Aksha', NULL, 0),
(77, 1, 'departments', NULL, 'activity_added_a_department', '2022-12-01 10:08:08', 'fa-coffee', NULL, 'CORE PROJECT DEPARTMENT', NULL, 0),
(78, 1, 'user', 26, 'activity_added_new_user', '2022-12-01 10:08:13', 'fa-user', NULL, 'Ekta', NULL, 0),
(79, 1, 'user', 27, 'activity_added_new_user', '2022-12-01 10:11:13', 'fa-user', NULL, 'Ram', NULL, 0),
(80, 1, 'user', 28, 'activity_added_new_user', '2022-12-01 10:13:29', 'fa-user', NULL, 'Nishi', NULL, 0),
(81, 1, 'user', 29, 'activity_added_new_user', '2022-12-01 10:15:42', 'fa-user', NULL, 'Sosamma', NULL, 0),
(82, 1, 'user', 21, 'activity_change_status', '2022-12-01 10:19:22', 'fa-user', NULL, 'Heena Deactive', NULL, 0),
(83, 1, 'user', 21, 'activity_change_status', '2022-12-01 10:19:26', 'fa-user', NULL, 'Heena Active', NULL, 0),
(84, 1, 'user', 21, 'activity_change_status', '2022-12-01 10:19:59', 'fa-user', NULL, 'Heena Deactive', NULL, 0),
(85, 1, 'user', 21, 'activity_change_status', '2022-12-01 10:20:05', 'fa-user', NULL, 'Heena Active', NULL, 0),
(86, 1, 'user', 21, 'activity_added_new_user', '2022-12-01 10:20:33', 'fa-user', NULL, 'Heena', NULL, 0),
(87, 1, 'user', 21, 'activity_change_status', '2022-12-01 10:23:11', 'fa-user', NULL, 'Heena Deactive', NULL, 0),
(88, 1, 'user', 21, 'activity_change_status', '2022-12-01 10:24:07', 'fa-user', NULL, 'Heena Active', NULL, 0),
(89, 1, 'user', 15, 'activity_change_status', '2022-12-01 10:29:07', 'fa-user', NULL, '1', NULL, 0),
(90, 1, 'user', 15, 'activity_change_status', '2022-12-01 10:29:19', 'fa-user', NULL, '0', NULL, 0),
(91, 1, 'user', 21, 'activity_change_status', '2022-12-01 10:29:30', 'fa-user', NULL, '1', NULL, 0),
(92, 1, 'user', 21, 'activity_change_status', '2022-12-01 10:29:36', 'fa-user', NULL, '0', NULL, 0),
(93, 1, 'user', 21, 'activity_change_status', '2022-12-01 10:30:34', 'fa-user', NULL, '1', NULL, 0),
(94, 1, 'user', 21, 'activity_change_status', '2022-12-01 10:30:49', 'fa-user', NULL, 'Heena Active', NULL, 0),
(95, 1, 'user', 21, 'activity_change_status', '2022-12-01 10:30:53', 'fa-user', NULL, '0', NULL, 0),
(96, 1, 'settings', 1, 'activity_added_a_allowed_ip', '2022-12-01 10:37:32', 'fa-coffee', NULL, '127.0.0.1', NULL, 0),
(97, 1, 'settings', 1, 'activity_save_system_settings', '2022-12-01 10:38:39', 'fa-coffee', NULL, 'english', NULL, 0),
(98, 1, 'user', 25, 'activity_added_new_user', '2022-12-02 06:16:16', 'fa-user', NULL, 'Aksha', NULL, 0),
(99, 1, 'client', 2, 'activity_update_company', '2022-12-02 07:06:27', 'fa-user', NULL, 'GALAXY SIVTEX', NULL, 0),
(100, 1, 'projects', 1, 'activity_save_project', '2022-12-02 07:09:38', 'fa-folder-open-o', 'admin/projects/project_details/1', 'SOLAR POWER DIGITAL CLASSROOM', NULL, 0),
(101, 1, 'departments', 4, 'activity_added_a_department', '2022-12-02 07:11:38', 'fa-coffee', NULL, 'CSR PROJECT DEPARTMENT', NULL, 0),
(102, 1, 'departments', 4, 'activity_added_a_department', '2022-12-02 07:12:15', 'fa-coffee', NULL, 'CSR PROJECT DEPARTMENT', NULL, 0),
(103, 1, 'departments', 4, 'activity_added_a_department', '2022-12-02 07:12:32', 'fa-coffee', NULL, 'CSR PROJECT DEPARTMENT', NULL, 0),
(104, 1, 'departments', 4, 'activity_added_a_department', '2022-12-02 07:12:48', 'fa-coffee', NULL, 'CSR PROJECT DEPARTMENT', NULL, 0),
(105, 1, 'projects', 1, 'activity_update_project', '2022-12-02 07:13:36', 'fa-folder-open-o', 'admin/projects/project_details/1', 'SOLAR POWER DIGITAL CLASSROOM', NULL, 0),
(106, 1, 'tasks', 1, 'activity_update_task', '2022-12-02 07:25:42', 'fa-tasks', 'admin/tasks/view_task_details/1', 'WALL PAINTING', NULL, 0),
(108, 1, 'projects', 1, 'activity_update_project', '2022-12-02 07:27:12', 'fa-folder-open-o', 'admin/projects/project_details/1', 'SOLAR POWER DIGITAL CLASSROOM', NULL, 0),
(114, 1, 'projects', 1, 'activity_tasks_timer_on', '2022-12-02 07:51:50', 'fa-folder-open-o', 'admin/projects/project_details/1/7', 'SOLAR POWER DIGITAL CLASSROOM', NULL, 0),
(115, 22, 'settings', 1, 'customer_group_added', '2022-12-02 07:54:17', 'fa-coffee', NULL, 'ELECTRONICS ITEM', NULL, 0),
(116, 22, 'invoice', 1, 'activity_taxt_rate_add', '2022-12-02 07:54:42', 'fa-shopping-cart', NULL, 'GST', NULL, 0),
(117, 22, 'invoice', 2, 'activity_taxt_rate_add', '2022-12-02 07:54:49', 'fa-shopping-cart', NULL, 'GST', NULL, 0),
(118, 22, 'invoice', 3, 'activity_taxt_rate_add', '2022-12-02 07:54:57', 'fa-shopping-cart', NULL, 'GST', NULL, 0),
(119, 22, 'invoice', 4, 'activity_taxt_rate_add', '2022-12-02 07:55:04', 'fa-shopping-cart', NULL, 'GST', NULL, 0),
(120, 22, 'invoice', 5, 'activity_taxt_rate_add', '2022-12-02 07:55:18', 'fa-shopping-cart', NULL, 'GST', NULL, 0),
(121, 22, 'invoice', 6, 'activity_taxt_rate_add', '2022-12-02 07:55:45', 'fa-shopping-cart', NULL, 'GST', NULL, 0),
(122, 22, 'items', 1, 'activity_save_items', '2022-12-02 07:56:40', 'fa-circle-o', NULL, 'HDMI CABLE', NULL, 0),
(123, 22, 'supplier', 1, 'save_supplier', '2022-12-02 07:57:43', 'fa-circle-o', NULL, 'SEVENSOFT TECHNOLOGIES', NULL, 0),
(124, 22, 'supplier', 1, 'update_supplier', '2022-12-02 07:57:59', 'fa-circle-o', NULL, 'SEVENSOFT TECHNOLOGIES', NULL, 0),
(125, 22, 'purchase', 1, 'purchase_created', '2022-12-02 07:59:01', 'fa fa-truck', 'admin/purchase/purchase_details/1', '[INV]-2022-Dec-02-0001', NULL, 0),
(126, 1, 'purchase', 2, 'purchase_created', '2022-12-02 08:02:37', 'fa fa-truck', 'admin/purchase/purchase_details/2', '[INV]-2022-Dec-02-0002', NULL, 0),
(130, 1, 'tasks', 2, 'activity_update_task', '2022-12-02 08:05:58', 'fa-tasks', 'admin/tasks/view_task_details/2', 'PROJECTOR FITTING', NULL, 0),
(131, 1, 'tasks', 2, 'activity_tasks_timer_on', '2022-12-02 08:10:31', 'fa-tasks', 'admin/tasks/view_task_details/2/5', 'PROJECTOR FITTING', NULL, 0),
(132, 1, 'tasks', 1, 'activity_tasks_timer_on', '2022-12-02 08:10:35', 'fa-tasks', 'admin/tasks/view_task_details/1/5', 'WALL PAINTING', NULL, 0),
(133, 1, 'purchase', 1, 'activity_new_payment', '2022-12-02 08:25:50', 'fa-shopping-cart', 'admin/purchase/purchase_details/1', '? 7.000,00', '[INV]-2022-Dec-02-0001', 0),
(134, 1, 'transactions', 1, 'activity_new_expense', '2022-12-02 08:25:50', 'fa-building-o', 'admin/transactions/view_details/1', 'Main Account', '7000', 0),
(135, 1, 'purchase', 1, 'activity_send_payment', '2022-12-02 08:25:50', 'fa-shopping-cart', 'admin/purchase/purchase_details/1', '', '? ', 0),
(138, 1, 'estimates', 1, 'activity_estimates_created', '2022-12-02 08:32:00', 'fa-shopping-cart', 'admin/estimates/index/estimates_details/1', '[INV]-2022-Dec-02-0001', NULL, 0),
(139, 1, 'tasks', 2, 'activity_tasks_timer_off', '2022-12-02 08:33:42', 'fa-tasks', 'admin/tasks/view_task_details/2/5', 'PROJECTOR FITTING', NULL, 0),
(140, 1, 'purchase', 3, 'purchase_created', '2022-12-02 09:06:14', 'fa fa-truck', 'admin/purchase/purchase_details/3', '[INV]-2022-Dec-02-0003', NULL, 0),
(141, 1, 'purchase', 3, 'activity_delete_purchase', '2022-12-02 09:44:18', 'fa fa-truck', NULL, '[INV]-2022-Dec-02-0003', NULL, 0),
(142, 1, 'purchase', 3, 'activity_delete_purchase', '2022-12-02 09:44:23', 'fa fa-truck', NULL, NULL, NULL, 0),
(143, 1, 'settings', 1, 'activity_save_theme_settings', '2022-12-06 08:07:23', 'fa-coffee', NULL, 'UNITED WAY OF BARODA', NULL, 0),
(144, 1, 'projects', 1, 'activity_project_deleted', '2022-12-06 08:08:37', 'fa-folder-open-o', NULL, 'SOLAR POWER DIGITAL CLASSROOM', NULL, 0),
(145, 1, 'tasks', 6, 'activity_delete_tasks_timesheet', '2022-12-13 08:16:56', 'fa-tasks', 'admin/tasks/view_task_details/3/5', 'HDMI', NULL, 0),
(146, 1, 'transactions', 1, 'activity_update_expense', '2022-12-13 09:24:46', 'fa-building-o', 'admin/transactions/view_details/1', 'Main Account', '7000.00', 0),
(147, 1, 'settings', 1, 'activity_save_theme_settings', '2022-12-14 03:41:19', 'fa-coffee', NULL, 'UNITED WAY OF BARODA', NULL, 0),
(148, 1, 'projects', 2, 'activity_save_project', '2022-12-14 04:25:39', 'fa-folder-open-o', 'admin/projects/project_details/2', 'csrr 1', NULL, 0),
(149, 1, 'tasks', 4, 'activity_update_task', '2022-12-14 04:27:42', 'fa-tasks', 'admin/tasks/view_task_details/4', 'partty1', NULL, 0),
(150, 1, 'user', 15, 'activity_added_new_user', '2022-12-14 04:29:31', 'fa-user', NULL, 'Anil', NULL, 0),
(151, 1, 'tasks', 5, 'activity_update_task', '2022-12-14 04:30:35', 'fa-tasks', 'admin/tasks/view_task_details/5', 'parsr2', NULL, 0),
(152, 1, 'invoice', 1, 'activity_project_invoice_generated', '2022-12-14 04:35:39', 'fa-shopping-cart', 'admin/invoice/manage_invoice/invoice_details/1', 'Projects: csrr 1Invoice : INV-2022-Dec-14-0001', NULL, 0),
(153, 1, 'projects', 3, 'activity_save_project', '2022-12-19 06:49:58', 'fa-folder-open-o', 'admin/projects/project_details/3', 'test', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advance_salary`
--

CREATE TABLE `tbl_advance_salary` (
  `advance_salary_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `advance_amount` varchar(200) NOT NULL,
  `deduct_month` varchar(30) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `request_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0 =pending,1=accpect , 2 = reject and 3 = paid',
  `approve_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_allowed_ip`
--

CREATE TABLE `tbl_allowed_ip` (
  `allowed_ip_id` int(11) NOT NULL,
  `allowed_ip` varchar(100) NOT NULL,
  `status` enum('active','reject','pending') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_allowed_ip`
--

INSERT INTO `tbl_allowed_ip` (`allowed_ip_id`, `allowed_ip`, `status`) VALUES
(1, '127.0.0.1', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_announcements`
--

CREATE TABLE `tbl_announcements` (
  `announcements_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('published','unpublished') NOT NULL DEFAULT 'unpublished' COMMENT '0 = unpublished, 1 = published',
  `view_status` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Read 2=Unread',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `all_client` varchar(20) DEFAULT NULL,
  `attachment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assign_item`
--

CREATE TABLE `tbl_assign_item` (
  `assign_item_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `assign_inventory` int(5) NOT NULL,
  `assign_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `attendance_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `leave_application_id` int(11) DEFAULT 0,
  `date_in` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `attendance_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'status 0=absent 1=present 3 = onleave',
  `clocking_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`attendance_id`, `user_id`, `leave_application_id`, `date_in`, `date_out`, `attendance_status`, `clocking_status`) VALUES
(1, 1, 0, '2022-12-01', '2022-12-01', 1, 0),
(2, 1, 0, '2022-12-02', '2022-12-02', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bug`
--

CREATE TABLE `tbl_bug` (
  `bug_id` int(11) NOT NULL,
  `issue_no` varchar(50) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `opportunities_id` int(11) DEFAULT NULL,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `bug_title` varchar(200) NOT NULL,
  `bug_description` text NOT NULL,
  `bug_status` varchar(30) DEFAULT NULL,
  `notes` text NOT NULL,
  `priority` varchar(20) NOT NULL,
  `severity` varchar(20) DEFAULT NULL,
  `reproducibility` text DEFAULT NULL,
  `reporter` int(11) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `permission` text DEFAULT NULL,
  `client_visible` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_calls`
--

CREATE TABLE `tbl_calls` (
  `calls_id` int(11) NOT NULL,
  `leads_id` int(11) DEFAULT NULL,
  `opportunities_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(20) CHARACTER SET latin1 NOT NULL,
  `call_summary` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_checklists`
--

CREATE TABLE `tbl_checklists` (
  `checklist_id` int(11) NOT NULL,
  `module` varchar(32) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `finished` int(11) DEFAULT 0,
  `create_datetime` datetime DEFAULT NULL,
  `added_from` int(11) DEFAULT NULL,
  `finished_from` int(11) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client`
--

CREATE TABLE `tbl_client` (
  `client_id` int(11) NOT NULL,
  `primary_contact` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `currency` varchar(32) COLLATE utf8_unicode_ci DEFAULT 'USD',
  `skype_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vat` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hosting_company` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_status` tinyint(1) NOT NULL COMMENT '1 = person and 2 = company',
  `profile_photo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `leads_id` int(11) NOT NULL,
  `latitude` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `active` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sms_notification` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_client`
--

INSERT INTO `tbl_client` (`client_id`, `primary_contact`, `name`, `email`, `short_note`, `website`, `phone`, `mobile`, `fax`, `address`, `city`, `zipcode`, `currency`, `skype_id`, `linkedin`, `facebook`, `twitter`, `language`, `country`, `vat`, `hosting_company`, `hostname`, `port`, `password`, `username`, `client_status`, `profile_photo`, `date_added`, `leads_id`, `latitude`, `longitude`, `customer_group_id`, `active`, `sms_notification`) VALUES
(1, 0, 'UNITEDWAY OF BARODA', 'harsh0105190@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, NULL, NULL, NULL, 'english', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-12-01 10:34:40', 0, NULL, NULL, NULL, '', NULL),
(2, NULL, 'GALAXY SIVTEX', 'ADBC@GMAIL.COM', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, 'India', '', '', '', '', 'VWdlQzJLSWtlbklET0JhOGRZd3BMZz09', 'Ram', 0, NULL, '2022-12-02 07:06:27', 0, '', '', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_menu`
--

CREATE TABLE `tbl_client_menu` (
  `menu_id` int(11) NOT NULL,
  `label` varchar(20) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `icon` varchar(50) NOT NULL,
  `parent` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sort` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_client_menu`
--

INSERT INTO `tbl_client_menu` (`menu_id`, `label`, `link`, `icon`, `parent`, `time`, `sort`, `status`) VALUES
(1, 'projects', 'client/projects', 'fa fa-folder-open-o', 0, '2017-04-20 01:18:26', 3, 0),
(2, 'bugs', 'client/bugs', 'fa fa-bug', 0, '2017-04-20 01:18:39', 4, 0),
(3, 'invoices', 'client/invoice/manage_invoice', 'fa fa-shopping-cart', 0, '2017-04-20 01:18:42', 5, 0),
(4, 'estimates', 'client/estimates', 'fa fa-tachometer', 0, '2017-04-20 01:18:45', 6, 0),
(5, 'payments', 'client/invoice/all_payments', 'fa fa-money', 0, '2017-04-20 01:18:48', 7, 0),
(6, 'tickets', 'client/tickets', 'fa fa-ticket', 0, '2017-04-20 01:18:52', 8, 0),
(7, 'quotations', 'client/quotations', 'fa fa-paste', 0, '2017-04-20 01:18:56', 9, 0),
(8, 'users', 'client/user/user_list', 'fa fa-users', 0, '2017-04-20 01:18:59', 10, 0),
(9, 'settings', 'client/settings', 'fa fa-cogs', 0, '2017-04-20 01:19:03', 11, 0),
(17, 'dashboard', 'client/dashboard', 'icon-speedometer', 0, '2017-04-20 01:17:21', 1, 0),
(18, 'mailbox', 'client/mailbox', 'fa fa-envelope', 0, '2017-04-20 01:17:21', 2, 0),
(19, 'private_chat', 'chat/conversations', 'fa fa-envelope', 0, '2022-11-28 12:38:58', 12, 0),
(20, 'filemanager', 'client/filemanager', 'fa fa-file', 0, '2017-06-03 13:08:23', 2, 1),
(21, 'proposals', 'client/proposals', 'fa fa-leaf', 0, '2017-07-21 17:21:08', 7, 1),
(22, 'knowledgebase', 'knowledgebase', 'fa fa-question-circle', 0, '2022-11-28 12:38:58', 12, 1),
(23, 'refund_items', 'client/invoice/refund_itemslist', 'icon-share-alt', 0, '2022-11-28 12:38:58', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_role`
--

CREATE TABLE `tbl_client_role` (
  `client_role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_client_role`
--

INSERT INTO `tbl_client_role` (`client_role_id`, `user_id`, `menu_id`) VALUES
(1, 30, 17),
(2, 30, 20),
(3, 30, 18),
(4, 30, 1),
(5, 30, 2),
(6, 30, 3),
(7, 30, 23),
(8, 30, 4),
(9, 30, 5),
(10, 30, 21),
(11, 30, 6),
(12, 30, 7),
(13, 30, 8),
(14, 30, 9),
(15, 30, 19),
(16, 30, 22);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clock`
--

CREATE TABLE `tbl_clock` (
  `clock_id` int(11) NOT NULL,
  `attendance_id` int(11) NOT NULL,
  `clockin_time` time DEFAULT NULL,
  `clockout_time` time DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `clocking_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1= clockin_time',
  `ip_address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_clock`
--

INSERT INTO `tbl_clock` (`clock_id`, `attendance_id`, `clockin_time`, `clockout_time`, `comments`, `clocking_status`, `ip_address`) VALUES
(1, 1, '16:08:43', '16:09:58', NULL, 0, '127.0.0.1'),
(2, 2, '12:01:06', '12:57:38', NULL, 0, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clock_history`
--

CREATE TABLE `tbl_clock_history` (
  `clock_history_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `clock_id` int(11) NOT NULL,
  `clockin_edit` time NOT NULL,
  `clockout_edit` time DEFAULT NULL,
  `reason` varchar(300) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=pending and 2 = accept  3= reject',
  `notify_me` tinyint(4) NOT NULL DEFAULT 1,
  `view_status` tinyint(4) NOT NULL DEFAULT 2,
  `request_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_config`
--

CREATE TABLE `tbl_config` (
  `config_key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_config`
--

INSERT INTO `tbl_config` (`config_key`, `value`) VALUES
('2checkout_private_key', 'CE6B7C6E-CDC4-404A-80D7-08F40CC0C65D'),
('2checkout_publishable_key', 'D188F8DC-3B8A-408E-A479-15A54113C461'),
('2checkout_seller_id', '901386312'),
('2checkout_status', 'deactive'),
('absent_color', 'rgba(247,23,36,0.92)'),
('absent_on_calendar', 'on'),
('accounting_snapshot', '0'),
('active_background', '#1c7086'),
('active_color', '#c1c1c1'),
('active_cronjob', 'on'),
('active_custom_color', '1'),
('active_pre_loader', '1'),
('advance_salary', 'true'),
('advance_salary_email', '1'),
('aim_api_login_id', '7F6eJh7uFyD'),
('aim_authorize_live ', 'FALSE'),
('aim_authorize_status', 'deactive'),
('aim_authorize_transaction_key', '64uhZ93mqH6c3MWf'),
('allowed_files', 'gif|png|jpeg|jpg|pdf|doc|txt|docx|xls|zip|rar|xls|mp4|ico'),
('allow_apply_job_from_login', 'TRUE'),
('allow_client_project', NULL),
('allow_client_registration', 'TRUE'),
('allow_customer_edit_amount', 'No'),
('allow_multiple_client_in_project', NULL),
('allow_sub_tasks', 'TRUE'),
('amount_to_words', 'Yes'),
('amount_to_words_lowercase', 'Yes'),
('announcements_email', '1'),
('api_signature', 'AZxbwZ9bPVPFFf7hCCNemacLJwlCAqoMULHXAenCuJAwtzfjGbkbaIhV'),
('aside-collapsed', 'aside-collapsed'),
('aside-float', NULL),
('attendance_report', '1'),
('authorize', 'login id'),
('authorize_status', 'active'),
('authorize_transaction_key', 'transfer key'),
('automatic_database_backup', 'on'),
('automatic_email_on_recur', 'TRUE'),
('auto_check_for_new_notifications', '0'),
('auto_close_ticket', '72'),
('award_email', '1'),
('bank_cash', '0'),
('bitcoin_address', NULL),
('bitcoin_status', 'active'),
('body_background', 'rgba(229,252,252,0.81)'),
('braintree_default_account', NULL),
('braintree_live_or_sandbox', 'TRUE'),
('braintree_merchant_id', '9m2qzhrptx7wyccy'),
('braintree_private_key', 'aa804bc269d4a9c8d8170ab8aed353b3'),
('braintree_public_key', '62grv2dnvfpg599v'),
('braintree_status', 'active'),
('bugs_color', '#1f3d1c'),
('bugs_on_calendar', 'on'),
('build', '0'),
('ccavenue_access_code', 'AVEB75FA40AM89BEMA'),
('ccavenue_enable_test_mode', 'TRUE'),
('ccavenue_key', '201F5203749670E18D664192B594B74E'),
('ccavenue_merchant_id', '161761'),
('ccavenue_status', 'active'),
('client_default_menu', 'a:1:{s:19:\"client_default_menu\";a:16:{i:0;s:2:\"17\";i:1;s:2:\"20\";i:2;s:2:\"18\";i:3;s:1:\"1\";i:4;s:1:\"2\";i:5;s:1:\"3\";i:6;s:2:\"23\";i:7;s:1:\"4\";i:8;s:1:\"5\";i:9;s:2:\"21\";i:10;s:1:\"6\";i:11;s:1:\"7\";i:12;s:1:\"8\";i:13;s:1:\"9\";i:14;s:2:\"19\";i:15;s:2:\"22\";}}'),
('company_address', '9TH FLOOR,SIDCUP TOWER,RACE COURSE CIRCLE,VADODARA'),
('company_city', 'VADODARA'),
('company_country', 'India'),
('company_domain', 'www.unitedwayofbaroda.org'),
('company_email', 'admin@unitedwayofbaroda.org'),
('company_legal_name', 'UNITED WAY OF BARODA'),
('company_logo', 'uploads/WhatsApp_Image_2022-12-07_at_20_07_29.jpeg'),
('company_name', 'UNITED WAY OF BARODA'),
('company_phone', '+91-265-6627715'),
('company_phone_2', ''),
('company_vat', ''),
('company_zip_code', '390007'),
('config_additional_flag', '/novalidate-cert'),
('config_host', 'mail.coderitems.com'),
('config_imap', '0'),
('config_imap_or_pop', 'on'),
('config_mailbox', 'INBOX'),
('config_password', '1c896e7d0fcbf64bb0921dd4bec18c947d34a5397472bb13b9f9ed95e4fd10dea45f365dde644233b2eef83f34e67cfd2fcc29b99c2835b89e8ecde5cdf233081hQfQaY72VtMiijV4wlVI6nmPwdsrMgJHALC3GCDw8E='),
('config_pop3', '0'),
('config_port', '993'),
('config_ssl', 'on'),
('config_username', 'support@coderitems.com'),
('contact_person', ''),
('contract_expiration_reminder', ''),
('copyright_name', 'Uniquecoder'),
('copyright_url', 'https://codecanyon.net/user/unique_coder'),
('country', '0'),
('cron_key', '34WI2L12L87I1A65M90M9A42N41D08A26I'),
('currency_position', '1'),
('date_format', '%m-%d-%Y'),
('date_php_format', 'm-d-Y'),
('date_picker_format', 'mm-dd-yyyy'),
('decimal_separator', '2'),
('default_account', '1'),
('default_currency', 'INR'),
('default_currency_symbol', '$'),
('default_department', NULL),
('default_language', 'english'),
('default_leads_source', '1'),
('default_lead_permission', 'all'),
('default_lead_status', '1'),
('default_payment_method', '0'),
('default_priority', 'Medium'),
('default_status', 'open'),
('default_tax', 'N;'),
('default_terms', 'Thank you for <span xss=\"removed\">your</span> busasiness. Please process this invoice within the due date.'),
('delete_mail_after_import', NULL),
('demo_mode', 'FALSE'),
('deposit_email', '1'),
('desktop_notifications', '1'),
('developer', 'ig63Yd/+yuA8127gEyTz9TY4pnoeKq8dtocVP44+BJvtlRp8Vqcetwjk51dhSB6Rx8aVIKOPfUmNyKGWK7C/gg=='),
('display_estimate_badge', '0'),
('display_invoice_badge', 'FALSE'),
('email_account_details', 'TRUE'),
('email_estimate_message', 'Hi {CLIENT}<br>Thanks for your business inquiry. <br>The estimate EST {REF} is attached with this email. <br>Estimate Overview:<br>Estimate # : EST {REF}<br>Amount: {CURRENCY} {AMOUNT}<br> You can view the estimate online at:<br>{LINK}<br>Best Regards,<br>{COMPANY}'),
('email_invoice_message', 'Hello {CLIENT}<br>Here is the invoice of {CURRENCY} {AMOUNT}<br>You can view the invoice online at:<br>{LINK}<br>Best Regards,<br>{COMPANY}'),
('email_staff_tickets', 'TRUE'),
('enable_languages', 'TRUE'),
('encryption', 'ssl'),
('estimate_color', 'rgba(160,29,171,1)'),
('estimate_footer', '<span style=\"font-weight: bold; line-height: 21.4px; text-align: right;\">Estimate&nbsp;</span>was created on a computer and is valid without the signature and seal'),
('estimate_language', 'en'),
('estimate_number_format', '[INV]-[yyyy]-[mm]-[dd]-[number]'),
('estimate_on_calendar', 'on'),
('estimate_prefix', 'EST'),
('estimate_start_no', '1'),
('estimate_state', 'block'),
('estimate_terms', 'Hey Looking forward to doing business with you.'),
('expense_email', '1'),
('favicon', 'uploads/WhatsApp_Image_2022-12-07_at_20_07_28.jpeg'),
('file_max_size', '80000'),
('for_invoice', '0'),
('for_leads', NULL),
('for_tickets', NULL),
('gcal_api_key', 'AIzaSyBXcmmcboEyAgtoUtXjKXe4TfpsnEtoUDQ'),
('gcal_id', 'kla83orf1u7hrj6p0u5gdmpji4@group.calendar.google.com'),
('goal_tracking_color', '#537015'),
('goal_tracking_on_calendar', 'on'),
('google_api_key', ''),
('gst_state', 'GJ'),
('holiday_on_calendar', 'on'),
('imap_search', '0'),
('imap_search_for_leads', NULL),
('imap_search_for_tickets', NULL),
('increment_estimate_number', 'TRUE'),
('increment_invoice_number', 'TRUE'),
('increment_proposal_number', 'TRUE'),
('installed', 'TRUE'),
('invoices_due_after', '5'),
('invoice_color', '#53b567'),
('invoice_footer', 'Invoice was created on a computer and is valid without the signature and seal'),
('invoice_language', 'en'),
('invoice_logo', 'uploads/UWB_CMYK_Palette_Logo-PNG_18-09.png'),
('invoice_number_format', '[INV]-[yyyy]-[mm]-[dd]-[number]'),
('invoice_on_calendar', 'on'),
('invoice_prefix', 'INV'),
('invoice_start_no', '1'),
('invoice_state', 'block'),
('invoice_view', '2'),
('item_total_qty_alert', 'Yes'),
('job_circular_email', '1'),
('language', 'english'),
('languages', 'spanish'),
('last_autobackup', '1515398440'),
('last_check', '1436363002'),
('last_cronjob_run', '1515398438'),
('last_postmaster_run', '1532751856'),
('last_seen_activities', '0'),
('last_tickets_postmaster_run', '1532750363'),
('layout-boxed', NULL),
('layout-fixed', 'layout-fixed'),
('layout-h', NULL),
('leads_color', '#783131'),
('leads_keyword', NULL),
('leads_on_calendar', 'on'),
('leave_email', '1'),
('locale', 'en_GB'),
('login_background', 'uploads/WhatsApp_Image_2022-11-28_at_11_47_15.jpeg'),
('login_bg', 'bg-login.jpg'),
('login_position', 'center'),
('logofile', '0'),
('logo_or_icon', 'logo'),
('mark_attendance_from_login', 'Yes'),
('max_file_size', '5000'),
('milestone_color', '#a86495'),
('milestone_on_calendar', 'on'),
('mollie_api_key', 'test_tkjFqFF6fP92FDSwBDHpeCzBRMBQBD'),
('mollie_partner_id', '3106644'),
('mollie_status', 'active'),
('money_format', '2'),
('navbar_logo_background', '#005191'),
('notified_user', '[\"1\"]'),
('notify_bug_assignment', 'TRUE'),
('notify_bug_comments', 'TRUE'),
('notify_bug_status', 'TRUE'),
('notify_message_received', 'TRUE'),
('notify_project_assignments', 'TRUE'),
('notify_project_comments', 'TRUE'),
('notify_project_files', 'TRUE'),
('notify_task_assignments', 'TRUE'),
('notify_ticket_reopened', 'TRUE'),
('office_hours', '8'),
('office_time', 'same_time'),
('only_allowed_ip_can_clock', NULL),
('on_leave_color', '#bd1a10'),
('on_leave_on_calendar', 'on'),
('opportunities_color', '#349685'),
('opportunities_on_calendar', 'on'),
('overtime_email', '1'),
('payments_color', '#7f21c9'),
('payments_on_calendar', 'on'),
('paypal_api_password', 'e64448f3fd988dda8ad7e0b1ba21a14c3e59a959008623d9c8bcfca8ca8f73677a82bc6d14075614ea192a98fa0494259859dd0e229ff831c1cdd7751f440cb0cS8v4CPtSoiC4rDwMliNLKtf35DXaZih8pZ7W6mRM9UJg9jYeKg0wwsnFA5Kqywv'),
('paypal_api_username', 'billing_api1.itsolidity.com'),
('paypal_cancel_url', 'paypal/cancel'),
('paypal_email', 'billing@coderitems.com'),
('paypal_ipn_url', 'paypal/t_ipn/ipn'),
('paypal_live', 'TRUE'),
('paypal_status', 'active'),
('paypal_success_url', 'paypal/success'),
('payslip_email', '1'),
('payumoney_enable_test_mode', NULL),
('payumoney_key', '3424'),
('payumoney_salt', '342342'),
('payumoney_status', 'active'),
('pdf_engine', 'invoicr'),
('performance_email', '1'),
('postmark_api_key', ''),
('postmark_from_address', ''),
('project_color', '#e61755'),
('project_details_view', '1'),
('project_on_calendar', 'on'),
('project_prefix', 'PRO'),
('proposal_footer', '<span style=\"font-weight: 700; text-align: right;\">This Proposal&nbsp;</span>was created on a computer and is valid without the signature and seal'),
('proposal_number_format', '[INV]-[yyyy]-[mm]-[dd]-[number]'),
('proposal_prefix', 'PRO-'),
('proposal_start_no', '1'),
('proposal_terms', 'Hey Looking forward to doing business with you.'),
('protocol', 'smtp'),
('purchase_code', ''),
('purchase_number_format', '[INV]-[yyyy]-[mm]-[dd]-[number]'),
('purchase_prefix', 'PUR'),
('purchase_start_no', '1'),
('pusher_app_id', '401479'),
('pusher_app_key', '4cf88668659dc9c987c3'),
('pusher_app_secret', '6fce183b214d17c20dd5'),
('pusher_cluster', 'ap2'),
('qty_calculation_from_items', 'Yes'),
('realtime_notification', '0'),
('recaptcha_secret_key', ''),
('recaptcha_site_key', ''),
('recurring_invoice', '0'),
('reminder_message', 'Hello {CLIENT}<br>This is a friendly reminder to pay your invoice of {CURRENCY} {AMOUNT}<br>You can view the invoice online at:<br>{LINK}<br>Best Regards,<br>{COMPANY}'),
('reset_key', '34WI2L12L87I1A65M90M9A42N41D08A26I'),
('return_stock_number_format', '[INV]-[yyyy]-[mm]-[dd]-[number]'),
('return_stock_prefix', 'R'),
('return_stock_start_no', '1'),
('rows_per_table', '25'),
('RTL', '0'),
('security_token', '5027133599'),
('send_clock_email', '1'),
('send_email_when_recur', 'TRUE'),
('settings', 'theme'),
('show-scrollbar', 'show-scrollbar'),
('show_estimate_tax', 'TRUE'),
('show_invoice_tax', 'TRUE'),
('show_item_tax', '0'),
('show_login_image', 'TRUE'),
('show_only_logo', 'FALSE'),
('show_proposal_tax', 'TRUE'),
('sidebar_active_background', '#539ed0'),
('sidebar_active_color', '#cccccc'),
('sidebar_background', '#f7f7f7'),
('sidebar_color', '#545454'),
('sidebar_theme', 'bg-info'),
('site_appleicon', 'logo.png'),
('site_author', 'William M.'),
('site_desc', 'Ultimate Project Manager CRM Pro is a Web based PHP application for Freelancers - buy it on Codecanyon'),
('site_favicon', 'logo.png'),
('site_icon', 'fa-flask'),
('smtp_encryption', 'ssl'),
('smtp_host', 'smtp.gmail.com'),
('smtp_pass', 'RWpPUURodjVVaEdZdlBWSlkwVEhNdz09'),
('smtp_port', '465'),
('smtp_user', 'admin@unitedwayofbaroda.org'),
('stripe_private_key', 'sk_test_g7PUZTcwwFnxdlHrWSOicHfu'),
('stripe_public_key', 'pk_test_x9as1c9jBDpODI7IbC7D0MEB'),
('stripe_status', 'active'),
('submenu_open_background', '#f7f7f7'),
('system_font', 'roboto_condensed'),
('tables_pagination_limit', '10'),
('tasks_color', '#0239c7'),
('tasks_on_calendar', 'on'),
('task_details_view', '1'),
('thousand_separator', ','),
('tickets_keyword', NULL),
('timezone', 'Indian/Cocos'),
('time_format', 'g:i a'),
('top_bar_background', '#005191'),
('top_bar_color', '#d9d9d9'),
('training_email', '1'),
('two_checkout_live ', 'FALSE'),
('unread_email', 'on'),
('use_gravatar', 'TRUE'),
('use_postmark', 'FALSE'),
('valid_license', 'TRUE'),
('version', '1.6.1'),
('webmaster_email', 'support@example.com'),
('website_name', 'UNITED WAY OF BARODA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contract_type`
--

CREATE TABLE `tbl_contract_type` (
  `contract_type_id` int(11) NOT NULL,
  `contract_type` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(500) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(6) NOT NULL,
  `value` varchar(250) CHARACTER SET latin1 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `value`) VALUES
(1, 'Afghanistan'),
(2, 'Aringland Islands'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Anguilla'),
(9, 'Antarctica'),
(10, 'Antigua and Barbuda'),
(11, 'Argentina'),
(12, 'Armenia'),
(13, 'Aruba'),
(14, 'Australia'),
(15, 'Austria'),
(16, 'Azerbaijan'),
(17, 'Bahamas'),
(18, 'Bahrain'),
(19, 'Bangladesh'),
(20, 'Barbados'),
(21, 'Belarus'),
(22, 'Belgium'),
(23, 'Belize'),
(24, 'Benin'),
(25, 'Bermuda'),
(26, 'Bhutan'),
(27, 'Bolivia'),
(28, 'Bosnia and Herzegovina'),
(29, 'Botswana'),
(30, 'Bouvet Island'),
(31, 'Brazil'),
(32, 'British Indian Ocean territory'),
(33, 'Brunei Darussalam'),
(34, 'Bulgaria'),
(35, 'Burkina Faso'),
(36, 'Burundi'),
(37, 'Cambodia'),
(38, 'Cameroon'),
(39, 'Canada'),
(40, 'Cape Verde'),
(41, 'Cayman Islands'),
(42, 'Central African Republic'),
(43, 'Chad'),
(44, 'Chile'),
(45, 'China'),
(46, 'Christmas Island'),
(47, 'Cocos (Keeling) Islands'),
(48, 'Colombia'),
(49, 'Comoros'),
(50, 'Congo'),
(51, 'Congo'),
(52, ' Democratic Republic'),
(53, 'Cook Islands'),
(54, 'Costa Rica'),
(55, 'Ivory Coast (Ivory Coast)'),
(56, 'Croatia (Hrvatska)'),
(57, 'Cuba'),
(58, 'Cyprus'),
(59, 'Czech Republic'),
(60, 'Denmark'),
(61, 'Djibouti'),
(62, 'Dominica'),
(63, 'Dominican Republic'),
(64, 'East Timor'),
(65, 'Ecuador'),
(66, 'Egypt'),
(67, 'El Salvador'),
(68, 'Equatorial Guinea'),
(69, 'Eritrea'),
(70, 'Estonia'),
(71, 'Ethiopia'),
(72, 'Falkland Islands'),
(73, 'Faroe Islands'),
(74, 'Fiji'),
(75, 'Finland'),
(76, 'France'),
(77, 'French Guiana'),
(78, 'French Polynesia'),
(79, 'French Southern Territories'),
(80, 'Gabon'),
(81, 'Gambia'),
(82, 'Georgia'),
(83, 'Germany'),
(84, 'Ghana'),
(85, 'Gibraltar'),
(86, 'Greece'),
(87, 'Greenland'),
(88, 'Grenada'),
(89, 'Guadeloupe'),
(90, 'Guam'),
(91, 'Guatemala'),
(92, 'Guinea'),
(93, 'Guinea-Bissau'),
(94, 'Guyana'),
(95, 'Haiti'),
(96, 'Heard and McDonald Islands'),
(97, 'Honduras'),
(98, 'Hong Kong'),
(99, 'Hungary'),
(100, 'Iceland'),
(101, 'India'),
(102, 'Indonesia'),
(103, 'Iran'),
(104, 'Iraq'),
(105, 'Ireland'),
(106, 'Israel'),
(107, 'Italy'),
(108, 'Jamaica'),
(109, 'Japan'),
(110, 'Jordan'),
(111, 'Kazakhstan'),
(112, 'Kenya'),
(113, 'Kiribati'),
(114, 'Korea (north)'),
(115, 'Korea (south)'),
(116, 'Kuwait'),
(117, 'Kyrgyzstan'),
(118, 'Lao People\'s Democratic Republic'),
(119, 'Latvia'),
(120, 'Lebanon'),
(121, 'Lesotho'),
(122, 'Liberia'),
(123, 'Libyan Arab Jamahiriya'),
(124, 'Liechtenstein'),
(125, 'Lithuania'),
(126, 'Luxembourg'),
(127, 'Macao'),
(128, 'Macedonia'),
(129, 'Madagascar'),
(130, 'Malawi'),
(131, 'Malaysia'),
(132, 'Maldives'),
(133, 'Mali'),
(134, 'Malta'),
(135, 'Marshall Islands'),
(136, 'Martinique'),
(137, 'Mauritania'),
(138, 'Mauritius'),
(139, 'Mayotte'),
(140, 'Mexico'),
(141, 'Micronesia'),
(142, 'Moldova'),
(143, 'Monaco'),
(144, 'Mongolia'),
(145, 'Montserrat'),
(146, 'Morocco'),
(147, 'Mozambique'),
(148, 'Myanmar'),
(149, 'Namibia'),
(150, 'Nauru'),
(151, 'Nepal'),
(152, 'Netherlands'),
(153, 'Netherlands Antilles'),
(154, 'New Caledonia'),
(155, 'New Zealand'),
(156, 'Nicaragua'),
(157, 'Niger'),
(158, 'Nigeria'),
(159, 'Niue'),
(160, 'Norfolk Island'),
(161, 'Northern Mariana Islands'),
(162, 'Norway'),
(163, 'Oman'),
(164, 'Pakistan'),
(165, 'Palau'),
(166, 'Palestinian Territories'),
(167, 'Panama'),
(168, 'Papua New Guinea'),
(169, 'Paraguay'),
(170, 'Peru'),
(171, 'Philippines'),
(172, 'Pitcairn'),
(173, 'Poland'),
(174, 'Portugal'),
(175, 'Puerto Rico'),
(176, 'Qatar'),
(177, 'Runion'),
(178, 'Romania'),
(179, 'Russian Federation'),
(180, 'Rwanda'),
(181, 'Saint Helena'),
(182, 'Saint Kitts and Nevis'),
(183, 'Saint Lucia'),
(184, 'Saint Pierre and Miquelon'),
(185, 'Saint Vincent and the Grenadines'),
(186, 'Samoa'),
(187, 'San Marino'),
(188, 'Sao Tome and Principe'),
(189, 'Saudi Arabia'),
(190, 'Senegal'),
(191, 'Serbia and Montenegro'),
(192, 'Seychelles'),
(193, 'Sierra Leone'),
(194, 'Singapore'),
(195, 'Slovakia'),
(196, 'Slovenia'),
(197, 'Solomon Islands'),
(198, 'Somalia'),
(199, 'South Africa'),
(200, 'South Georgia and the South Sandwich Islands'),
(201, 'Spain'),
(202, 'Sri Lanka'),
(203, 'Sudan'),
(204, 'Suriname'),
(205, 'Svalbard and Jan Mayen Islands'),
(206, 'Swaziland'),
(207, 'Sweden'),
(208, 'Switzerland'),
(209, 'Syria'),
(210, 'Taiwan'),
(211, 'Tajikistan'),
(212, 'Tanzania'),
(213, 'Thailand'),
(214, 'Togo'),
(215, 'Tokelau'),
(216, 'Tonga'),
(217, 'Trinidad and Tobago'),
(218, 'Tunisia'),
(219, 'Turkey'),
(220, 'Turkmenistan'),
(221, 'Turks and Caicos Islands'),
(222, 'Tuvalu'),
(223, 'Uganda'),
(224, 'Ukraine'),
(225, 'United Arab Emirates'),
(226, 'United Kingdom'),
(227, 'United States of America'),
(228, 'Uruguay'),
(229, 'Uzbekistan'),
(230, 'Vanuatu'),
(231, 'Vatican City'),
(232, 'Venezuela'),
(233, 'Vietnam'),
(234, 'Virgin Islands (British)'),
(235, 'Virgin Islands (US)'),
(236, 'Wallis and Futuna Islands'),
(237, 'Western Sahara'),
(238, 'Yemen'),
(239, 'Zaire'),
(240, 'Zambia'),
(241, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_credit_note`
--

CREATE TABLE `tbl_credit_note` (
  `credit_note_id` int(11) NOT NULL,
  `reference_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT 0,
  `credit_note_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `credit_note_month` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `credit_note_year` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'USD',
  `discount_percent` int(2) DEFAULT NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` int(11) NOT NULL DEFAULT 0,
  `total_tax` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `date_saved` timestamp NOT NULL DEFAULT '2018-12-12 06:30:00',
  `emailed` varchar(11) DEFAULT NULL,
  `permission` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_visible` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `discount_type` enum('before_tax','after_tax') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT 'sales agent',
  `adjustment` decimal(18,2) NOT NULL DEFAULT 0.00,
  `discount_total` decimal(18,2) NOT NULL DEFAULT 0.00,
  `show_quantity_as` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_credit_note_items`
--

CREATE TABLE `tbl_credit_note_items` (
  `credit_note_items_id` int(11) NOT NULL,
  `credit_note_id` int(11) NOT NULL,
  `saved_items_id` int(11) DEFAULT 0,
  `item_tax_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `item_tax_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Item Name',
  `item_desc` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_cost` decimal(10,2) DEFAULT 0.00,
  `quantity` decimal(10,2) DEFAULT 0.00,
  `item_tax_total` decimal(10,2) DEFAULT 0.00,
  `total_cost` decimal(10,2) DEFAULT 0.00,
  `date_saved` timestamp NOT NULL DEFAULT '2018-12-12 06:30:00',
  `unit` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hsn_code` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_credit_used`
--

CREATE TABLE `tbl_credit_used` (
  `credit_used_id` int(11) NOT NULL,
  `invoices_id` int(11) NOT NULL,
  `credit_note_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `date_applied` datetime NOT NULL,
  `amount` decimal(18,3) NOT NULL,
  `payments_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currencies`
--

CREATE TABLE `tbl_currencies` (
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xrate` decimal(12,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_currencies`
--

INSERT INTO `tbl_currencies` (`code`, `name`, `symbol`, `xrate`) VALUES
('AUD', 'Australian Dollar', '$', NULL),
('BAN', 'Bangladesh', 'BDT', NULL),
('BRL', 'Brazilian Real', 'R$', NULL),
('CAD', 'Canadian Dollar', '$', NULL),
('CHF', 'Swiss Franc', 'Fr', NULL),
('CLP', 'Chilean Peso', '$', NULL),
('CNY', 'Chinese Yuan', '├é┬Ñ', NULL),
('CZK', 'Czech Koruna', 'K├ä', NULL),
('DKK', 'Danish Krone', 'kr', NULL),
('EUR', 'Euro', '├óÔÇÜ', NULL),
('GBP', 'British Pound', '├é┬ú', NULL),
('HKD', 'Hong Kong Dollar', '$', NULL),
('HUF', 'Hungarian Forint', 'Ft', NULL),
('IDR', 'Indonesian Rupiah', 'Rp', NULL),
('ILS', 'Israeli New Shekel', '?', NULL),
('INR', 'Indian Rupee', '?', NULL),
('JPY', 'Japanese Yen', '├é┬Ñ', NULL),
('KRW', 'Korean Won', '├óÔÇÜ', NULL),
('MXN', 'Mexican Peso', '$', NULL),
('MYR', 'Malaysian Ringgit', 'RM', NULL),
('NOK', 'Norwegian Krone', 'kr', NULL),
('NZD', 'New Zealand Dollar', '$', NULL),
('PHP', 'Philippine Peso', '├óÔÇÜ', NULL),
('PKR', 'Pakistan Rupee', 'PKR', NULL),
('PLN', 'Polish Zloty', 'zl', NULL),
('RUB', 'Russian Ruble', ' RUB', NULL),
('SAR', 'Riyal', 'SAR', NULL),
('SEK', 'Swedish Krona', 'kr', NULL),
('SGD', 'Singapore Dollar', 'S$', NULL),
('THB', 'Thai Baht', '├á┬©?', NULL),
('TRY', 'Turkish Lira', ' TRY', NULL),
('TWD', 'Taiwan Dollar', 'NT$', NULL),
('USD', 'US Dollar', '$', '1.00000'),
('VEF', 'Bol?var Fuerte', 'Bs.', NULL),
('ZAR', 'South African Rand', 'R', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_group`
--

CREATE TABLE `tbl_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL COMMENT 'customer group,item group',
  `customer_group` varchar(200) NOT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer_group`
--

INSERT INTO `tbl_customer_group` (`customer_group_id`, `type`, `customer_group`, `description`) VALUES
(1, 'items', 'ELECTRONICS ITEM', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_custom_field`
--

CREATE TABLE `tbl_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `field_label` varchar(100) NOT NULL,
  `default_value` text DEFAULT NULL,
  `help_text` varchar(200) NOT NULL,
  `field_type` enum('text','textarea','dropdown','date','checkbox','numeric','url','email') NOT NULL,
  `required` varchar(5) NOT NULL DEFAULT 'false',
  `status` enum('active','deactive') NOT NULL DEFAULT 'deactive',
  `show_on_table` varchar(5) DEFAULT NULL,
  `visible_for_admin` varchar(5) DEFAULT NULL,
  `visible_for_client` varchar(11) DEFAULT NULL,
  `show_on_details` varchar(5) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dashboard`
--

CREATE TABLE `tbl_dashboard` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `col` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `order_no` int(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `report` tinyint(1) NOT NULL DEFAULT 0,
  `for_staff` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_dashboard`
--

INSERT INTO `tbl_dashboard` (`id`, `name`, `col`, `order_no`, `status`, `report`, `for_staff`) VALUES
(1, 'income_expenses_report', 'col-sm-4', 1, 1, 1, 1),
(2, 'invoice_payment_report', 'col-sm-4', 2, 1, 1, 1),
(3, 'ticket_tasks_report', 'col-sm-4', 3, 1, 1, 1),
(5, 'goal_report', 'col-md-12 ', 7, 1, 0, 1),
(6, 'overdue_report', 'col-md-12', 10, 1, 0, 1),
(11, 'my_project', 'col-md-6', 24, 1, 0, 1),
(12, 'my_tasks', 'col-md-6', 27, 1, 0, 1),
(14, 'announcements', 'col-md-6', 30, 1, 0, 1),
(15, 'payments_report', 'col-md-6', 39, 1, 0, 1),
(16, 'income_expense', 'col-md-6', 15, 1, 0, 1),
(17, 'income_report', 'col-md-6', 42, 1, 0, 1),
(18, 'expense_report', 'col-md-6', 36, 1, 0, 1),
(19, 'recently_paid_invoices', 'col-md-6', 21, 1, 0, 1),
(20, 'recent_activities', 'col-md-6', 18, 2, 0, 0),
(21, 'finance_overview', 'col-sm-12', 1, 1, 0, 1),
(22, 'todo_list', 'col-md-6', 32, 1, 0, 1),
(23, 'paid_amount', 'col-md-3', 2, 1, 2, 1),
(24, 'due_amount', 'col-md-3', 4, 1, 2, 1),
(25, 'invoice_amount', 'col-md-3', 1, 1, 2, 1),
(26, 'paid_percentage', 'col-md-3', 3, 1, 2, 1),
(27, 'recently_paid_invoices', 'col-sm-6', 2, 1, 3, 1),
(28, 'payments', 'col-sm-6', 1, 1, 3, 1),
(29, 'recent_invoice', 'col-sm-6', 3, 1, 3, 1),
(30, 'recent_projects', 'col-sm-6', 4, 1, 3, 1),
(31, 'recent_emails', 'col-sm-4', 5, 1, 3, 1),
(32, 'recent_activities', 'col-sm-4', 6, 1, 3, 1),
(33, 'announcements', 'col-sm-4', 7, 1, 3, 1),
(34, 'my_calendar', 'col-sm-6', 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_days`
--

CREATE TABLE `tbl_days` (
  `day_id` int(5) NOT NULL,
  `day` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_days`
--

INSERT INTO `tbl_days` (`day_id`, `day`) VALUES
(1, 'Saturday'),
(2, 'Sunday'),
(3, 'Monday'),
(4, 'Tuesday'),
(5, 'Wednesday'),
(6, 'Thursday'),
(7, 'Friday');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departments`
--

CREATE TABLE `tbl_departments` (
  `departments_id` int(10) NOT NULL,
  `deptname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_head_id` int(11) DEFAULT NULL COMMENT 'department_head_id == user_id',
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encryption` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `mailbox` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `unread_email` tinyint(1) NOT NULL DEFAULT 0,
  `delete_mail_after_import` tinyint(1) NOT NULL DEFAULT 0,
  `last_postmaster_run` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_departments`
--

INSERT INTO `tbl_departments` (`departments_id`, `deptname`, `department_head_id`, `email`, `encryption`, `host`, `username`, `password`, `mailbox`, `unread_email`, `delete_mail_after_import`, `last_postmaster_run`) VALUES
(1, 'ADMINISTRATION', 16, NULL, '', '', '', '', '', 0, 0, NULL),
(2, 'MANAGEMENT', 2, NULL, '', '', '', '', '', 0, 0, NULL),
(3, 'ACCOUNTS & FINANCE ', 15, NULL, '', '', '', '', '', 0, 0, NULL),
(4, 'CSR PROJECT DEPARTMENT', 27, NULL, '', '', '', '', '', 0, 0, NULL),
(5, 'CIC PROJECT DEPARTMENT', NULL, NULL, '', '', '', '', '', 0, 0, NULL),
(6, 'CORE PROJECT DEPARTMENT', 25, NULL, '', '', '', '', '', 0, 0, NULL),
(7, 'HR DEPARTMENT', 29, NULL, '', '', '', '', '', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designations`
--

CREATE TABLE `tbl_designations` (
  `designations_id` int(5) NOT NULL,
  `departments_id` int(11) NOT NULL,
  `designations` varchar(100) NOT NULL,
  `permission` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_designations`
--

INSERT INTO `tbl_designations` (`designations_id`, `departments_id`, `designations`, `permission`) VALUES
(1, 1, 'DEPUTY DIRETOR', NULL),
(2, 2, 'TRUSTEES', NULL),
(3, 3, 'ACCOUNT HEAD', NULL),
(4, 4, 'CRS HEAD', NULL),
(5, 5, 'CIC HEAD', NULL),
(6, 6, 'CORE PROJECT HEAD', NULL),
(7, 7, 'HR HEAD', NULL),
(8, 2, 'CHAIRMAN', NULL),
(9, 2, 'VICE CHAIRPERSON', NULL),
(10, 2, 'TREASURER & CHAIR- PUBLIC EDUCATION COMMITTEE', NULL),
(11, 2, 'RESOURCE DEVELOPMENT COMMITTEE', NULL),
(12, 2, 'CHAIR-COMMUNITY IMPACT COMMITTEE', NULL),
(13, 2, 'PERMANENT INVITEE', NULL),
(14, 2, 'CHIEF EXECUTIVE OFFICER', NULL),
(15, 1, 'ADMIN LEAD', NULL),
(16, 4, 'PROGRAMME LEAD', NULL),
(17, 1, 'DOCUMENTATION OFFICER', NULL),
(18, 4, 'Project Co-ordinator', NULL),
(19, 3, 'Account Assistant', NULL),
(20, 4, 'PROGRAMME COORDINATOR', NULL),
(21, 6, 'Project Co-ordinator Education', NULL),
(22, 6, 'Project Assistant', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discipline`
--

CREATE TABLE `tbl_discipline` (
  `discipline_id` int(5) NOT NULL,
  `user_id` int(11) NOT NULL,
  `offence_id` int(5) NOT NULL,
  `penalty_id` int(5) NOT NULL,
  `discipline_break_date` varchar(100) NOT NULL,
  `discipline_action_date` varchar(100) NOT NULL,
  `discipline_remarks` varchar(200) NOT NULL,
  `discipline_comments` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_draft`
--

CREATE TABLE `tbl_draft` (
  `draft_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `to` text NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message_body` text NOT NULL,
  `attach_file` text DEFAULT NULL,
  `attach_file_path` text DEFAULT NULL,
  `attach_filename` text DEFAULT NULL,
  `message_time` datetime NOT NULL,
  `deleted` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_templates`
--

CREATE TABLE `tbl_email_templates` (
  `email_templates_id` int(11) NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_group` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template_body` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_email_templates`
--

INSERT INTO `tbl_email_templates` (`email_templates_id`, `code`, `email_group`, `subject`, `template_body`) VALUES
(60, 'en', 'deposit_email', 'Deposit Confirmation', '<p>Hi there,</p>\r\n\r\n<p>The&nbsp;<strong>{NAME}</strong>&nbsp;deposit&nbsp;<strong>{AMOUNT}&nbsp;</strong>has been deposit to &nbsp;<strong>{ACCOUNT}.</strong></p>\r\n\r\n<p>You can view this deposit by logging in to the portal using the link below.<br />\r\n<br />\r\n<big><strong><a href=\"{URL}\">View Deposit</a></strong></big><br />\r\n<br />\r\n<br />\r\nRegards,<br />\r\n<br />\r\nThe&nbsp;<strong>{SITE_NAME}</strong>&nbsp;Team</p>\r\n'),
(61, 'en', 'proposal_email', 'New Proposal', '<p>Proposal <strong>{PROPOSAL_REF}</strong></p> <p>Hi <strong>{CLIENT}</strong></p> <p>Thanks for your business inquiry.</p> <p>The Proposal <strong>{PROPOSAL_REF} </strong>is attached with this email.<br /> Proposal&nbsp;Overview:<br /> Proposal&nbsp;# :<strong> {PROPOSAL_REF}</strong><br /> Amount: <strong>{CURRENCY} {AMOUNT}</strong><br /> <br /> You can view the estimate online at:<br /> <big><strong><a href=\"{PROPOSAL_LINK}\">View Proposal</a></strong></big><br /> <br /> Best Regards,<br /> The <strong>{SITE_NAME}</strong> Team</p> '),
(62, 'en', 'call_for_interview', 'You have an interview offer!!!', '<p>Hello&nbsp;<strong>{NAME}</strong>,</p> <p>You have an interview offer for you.please see the details.&nbsp;<br /> <br /> <strong>Job Summary</strong>:<br /> Job Title # :<strong>&nbsp;{JOB_TITLE}</strong><br /> Designation # :<strong>&nbsp;{DESIGNATION}</strong><br /> Interview Date: <strong>{DATE}</strong></p> <p><strong>Postal Address</strong><br /> PO Box 16122 Collins Street West<br /> Victoria 8007 Australia<br /> 121 King Street, Melbourne<br /> Victoria 3000 Australia &ndash;&nbsp;<a href=\"https://www.google.com.au/maps/place/Envato/@-37.8173306,144.9534631,17z/data=!3m1!4b1!4m2!3m1!1s0x6ad65d4c2b349649:0xb6899234e561db11\" target=\"_blank\">Map</a></p> <p><br /> You can view the circular details online at:<br /> <big><strong><a href=\"{LINK}\">View Job Circular</a></strong></big><br /> <br /> Best Regards,<br /> The&nbsp;<strong>{SITE_NAME}</strong>&nbsp;Team</p> '),
(63, 'en', 'ticket_reopened_email', 'Ticket [SUBJECT] reopened', '<p>Ticket re-opened</p> <p>Hi {RECIPIENT},</p> <p>Ticket&nbsp;<strong>{SUBJECT}</strong>&nbsp;was re-opened by&nbsp;<strong>{USER}</strong>.<br /> Status :&nbsp;Open<br /> Click on the below link to see the ticket details and post replies:&nbsp;<br /> <a href=\"{TICKET_LINK}\"><strong>View Ticket</strong></a><br /> <br /> <br /> Best Regards,<br /> {SITE_NAME}</p> '),
(67, 'en', 'clock_in_email', 'The {NAME} Just clock in', '<p>Hi there,</p>\r\n\r\n<p>The┬á<strong>{NAME}</strong> just┬áClock In by using The IP. The IP is:┬á<strong>{IP}</strong> and the time is: ┬á<strong>{TIME}</strong><strong> </strong></p>\r\n\r\n<p>You can view this attendance by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"{URL}\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nThe┬á<strong>{SITE_NAME}</strong>┬áTeam</p>\r\n'),
(68, 'en', 'trying_clock_email', 'The {NAME} Trying to clock', '<p>Hi there,</p>\r\n\r\n<p>The┬á<strong>{NAME} </strong> Trying to clock┬áin by Unknown IP.The IP is: <strong>{IP}</strong> and the time is: <strong>{TIME}</strong></p>\r\n\r\n<p>You can view this IP by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"{URL}\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nThe┬á<strong>{SITE_NAME}</strong>┬áTeam</p>\r\n'),
(69, 'en', 'clock_out_email', 'The {NAME} Just clock Out', '<p>Hi there,</p>\r\n\r\n<p>The┬á<strong>{NAME}</strong>┬ájust┬áClock Out by using The IP. The IP is:┬á<strong>{IP}</strong>┬áand the time is: ┬á<strong>{TIME}</strong></p>\r\n\r\n<p>You can view this attendance by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"{URL}\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nThe┬á<strong>{SITE_NAME}</strong>┬áTeam</p>\r\n'),
(70, 'en', 'invoice_item_refund_request', 'A new Refunded request recived for Invoice {REF}', '<p><strong>Hello </strong><br> <br> A new item refunded request received for Invoice {REF}.<br> <br> You can view the invoice online at:<br> <big><strong><a href=\"{LINK}\">View Refund Stock </a></strong></big><br> <br> Best Regards<br> <br> The {SITE_NAME} Team</p> '),
(71, 'en', 'credit_note_email', 'New Credit Note', '<p>Credit Note {credit_note_REF}</p> <p>Hi {CLIENT}</p> <p>Thanks for your business inquiry.</p> <p>The Credit Note {credit_note_REF} is attached with this email.<br /> Credit Note Overview:<br /> Credit Note # : {credit_note_REF}<br /> Amount: {CURRENCY} {AMOUNT}<br /> <br /> You can view the Credit Note online at:<br /> <big><strong><a href=\"{credit_note_LINK}\">View Credit Note</a></strong></big><br /> <br /> Best Regards,<br /> The {SITE_NAME} Team</p> '),
(72, 'en', 'wellcome_email', 'Welcome to PMS Management of United Way of Baroda', '<p>Dear Sir<br></p><p>                                                                {NAME}</p><p>{COMPANY_NAME}</p><p>{COMPANY_URL}</p>'),
(73, 'en', 'activate_account', 'Your Account Has beed Activaed Sucessfully', '                                <p>                                Dear Sir / Madam</p><p><br></p><p>{SITE_NAME}</p><p>{ACTIVATE_URL}</p><p>{USERNAME}</p><p>{EMAIL}</p><p>{PASSWORD}</p><p><br></p><p>Thanks & Regards</p><p>IT Admin </p><p>United Way of Baroda<br></p><p><br></p><p><br></p>'),
(74, 'en', 'registration', 'User Registed Sucessfully', '<p>                                {SITE_NAME}</p><p>{SITE_URL}</p><p>{USERNAME}</p><p>{EMAIL}</p><p>{PASSWORD}</p><p><br></p><p>Thanks & Regards<br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_award`
--

CREATE TABLE `tbl_employee_award` (
  `employee_award_id` int(11) NOT NULL,
  `award_name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gift_item` varchar(300) NOT NULL,
  `award_amount` int(5) NOT NULL,
  `award_date` varchar(10) NOT NULL,
  `view_status` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Read 2=Unread',
  `given_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_bank`
--

CREATE TABLE `tbl_employee_bank` (
  `employee_bank_id` int(5) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bank_name` varchar(300) NOT NULL,
  `branch_name` varchar(300) NOT NULL,
  `account_name` varchar(300) NOT NULL,
  `account_number` varchar(300) NOT NULL,
  `routing_number` varchar(50) DEFAULT NULL,
  `type_of_account` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_document`
--

CREATE TABLE `tbl_employee_document` (
  `document_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `resume` text DEFAULT NULL,
  `resume_path` text DEFAULT NULL,
  `resume_filename` text DEFAULT NULL,
  `offer_letter` text DEFAULT NULL,
  `offer_letter_filename` text DEFAULT NULL,
  `offer_letter_path` text DEFAULT NULL,
  `joining_letter` text DEFAULT NULL,
  `joining_letter_filename` text DEFAULT NULL,
  `joining_letter_path` text DEFAULT NULL,
  `contract_paper` text DEFAULT NULL,
  `contract_paper_filename` text DEFAULT NULL,
  `contract_paper_path` text DEFAULT NULL,
  `id_proff` text DEFAULT NULL,
  `id_proff_filename` text DEFAULT NULL,
  `id_proff_path` text DEFAULT NULL,
  `other_document` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_payroll`
--

CREATE TABLE `tbl_employee_payroll` (
  `payroll_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `salary_template_id` int(11) DEFAULT NULL,
  `hourly_rate_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_estimates`
--

CREATE TABLE `tbl_estimates` (
  `estimates_id` int(11) NOT NULL,
  `reference_no` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT 0,
  `estimate_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estimate_month` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estimate_year` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `due_date` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alert_overdue` tinyint(1) NOT NULL DEFAULT 0,
  `currency` varchar(32) COLLATE utf8_unicode_ci DEFAULT 'USD',
  `discount_percent` int(2) DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` int(11) NOT NULL DEFAULT 0,
  `total_tax` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `date_sent` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `est_deleted` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `date_saved` timestamp NOT NULL DEFAULT current_timestamp(),
  `emailed` enum('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
  `show_client` enum('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
  `invoiced` enum('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
  `invoices_id` int(11) NOT NULL DEFAULT 0,
  `permission` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `discount_type` enum('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT 'sales agent',
  `adjustment` decimal(18,2) NOT NULL DEFAULT 0.00,
  `discount_total` decimal(18,2) NOT NULL DEFAULT 0.00,
  `show_quantity_as` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_estimate_items`
--

CREATE TABLE `tbl_estimate_items` (
  `estimate_items_id` int(11) NOT NULL,
  `estimates_id` int(11) NOT NULL,
  `saved_items_id` int(11) DEFAULT 0,
  `item_tax_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `item_tax_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT 'Item Name',
  `item_desc` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_cost` decimal(10,2) DEFAULT 0.00,
  `quantity` decimal(10,2) DEFAULT 0.00,
  `item_tax_total` decimal(10,2) DEFAULT 0.00,
  `total_cost` decimal(10,2) DEFAULT 0.00,
  `date_saved` timestamp NOT NULL DEFAULT current_timestamp(),
  `unit` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hsn_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expense_category`
--

CREATE TABLE `tbl_expense_category` (
  `expense_category_id` int(11) NOT NULL,
  `expense_category` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `files_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `uploaded_by` int(11) NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_form`
--

CREATE TABLE `tbl_form` (
  `form_id` int(11) NOT NULL,
  `form_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `tbl_name` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `table_id` varchar(110) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_form`
--

INSERT INTO `tbl_form` (`form_id`, `form_name`, `tbl_name`, `table_id`) VALUES
(1, 'proposal', 'tbl_proposals', 'proposals_id'),
(2, 'client', 'tbl_client', 'client_id'),
(3, 'users', 'tbl_account_details', 'account_details_id'),
(4, 'recruitment', 'tbl_job_circular', 'job_circular_id'),
(5, 'training', 'tbl_training', 'training_id'),
(6, 'announcements', 'tbl_announcements', 'announcements_id'),
(7, 'leave_management', 'tbl_leave_application', 'leave_application_id'),
(8, 'items', 'tbl_saved_items', 'saved_items_id'),
(9, 'supplier', 'tbl_suppliers', 'supplier_id'),
(10, 'purchases', 'tbl_purchases', 'purchase_id'),
(11, 'Account', 'tbl_accounts', 'account_id'),
(12, 'credit_note', 'tbl_credit_note', 'credit_note_id');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_goal_tracking`
--

CREATE TABLE `tbl_goal_tracking` (
  `goal_tracking_id` int(11) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `goal_type_id` int(11) NOT NULL,
  `achievement` int(10) NOT NULL,
  `start_date` varchar(20) NOT NULL,
  `end_date` varchar(20) NOT NULL,
  `account_id` int(11) DEFAULT 0,
  `description` mediumtext NOT NULL,
  `notify_goal_achive` varchar(5) DEFAULT NULL,
  `notify_goal_not_achive` varchar(5) DEFAULT NULL,
  `permission` mediumtext DEFAULT NULL,
  `email_send` varchar(5) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_goal_type`
--

CREATE TABLE `tbl_goal_type` (
  `goal_type_id` int(11) NOT NULL,
  `type_name` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `tbl_name` varchar(200) NOT NULL,
  `query` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holiday`
--

CREATE TABLE `tbl_holiday` (
  `holiday_id` int(11) NOT NULL,
  `event_name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `location` varchar(200) DEFAULT NULL,
  `color` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hourly_rate`
--

CREATE TABLE `tbl_hourly_rate` (
  `hourly_rate_id` int(11) NOT NULL,
  `hourly_grade` varchar(200) NOT NULL,
  `hourly_rate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `to` varchar(100) NOT NULL,
  `from` varchar(100) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message_body` text NOT NULL,
  `attach_file` text DEFAULT NULL,
  `attach_file_path` text DEFAULT NULL,
  `attach_filename` text DEFAULT NULL,
  `message_time` datetime NOT NULL,
  `view_status` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Read 2=Unread',
  `favourites` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= no 1=yes',
  `notify_me` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=on 0=off',
  `deleted` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_income_category`
--

CREATE TABLE `tbl_income_category` (
  `income_category_id` int(11) NOT NULL,
  `income_category` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoices`
--

CREATE TABLE `tbl_invoices` (
  `invoices_id` int(11) NOT NULL,
  `recur_start_date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `recur_end_date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `reference_no` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `invoice_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_month` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_year` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `due_date` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alert_overdue` tinyint(1) NOT NULL DEFAULT 0,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_tax` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_percent` int(2) DEFAULT NULL,
  `recurring` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `recuring_frequency` int(11) NOT NULL DEFAULT 31,
  `recur_frequency` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recur_next_date` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'USD',
  `status` enum('Cancelled','Unpaid','Paid','draft','partially_paid') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Unpaid',
  `archived` int(11) DEFAULT 0,
  `date_sent` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inv_deleted` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `date_saved` timestamp NOT NULL DEFAULT current_timestamp(),
  `emailed` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `show_client` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `viewed` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `allow_paypal` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `allow_stripe` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `allow_2checkout` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `allow_authorize` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `allow_ccavenue` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `allow_braintree` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `allow_mollie` enum('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
  `allow_payumoney` enum('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
  `allow_tapPayment` enum('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'Yes',
  `allow_razorpay` enum('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
  `permission` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_visible` enum('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
  `discount_type` enum('before_tax','after_tax') COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT 'sales agent',
  `adjustment` decimal(18,2) NOT NULL DEFAULT 0.00,
  `discount_total` decimal(18,2) NOT NULL DEFAULT 0.00,
  `show_quantity_as` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_invoices`
--

INSERT INTO `tbl_invoices` (`invoices_id`, `recur_start_date`, `recur_end_date`, `reference_no`, `client_id`, `project_id`, `invoice_date`, `invoice_month`, `invoice_year`, `due_date`, `alert_overdue`, `notes`, `tax`, `total_tax`, `discount_percent`, `recurring`, `recuring_frequency`, `recur_frequency`, `recur_next_date`, `currency`, `status`, `archived`, `date_sent`, `inv_deleted`, `date_saved`, `emailed`, `show_client`, `viewed`, `allow_paypal`, `allow_stripe`, `allow_2checkout`, `allow_authorize`, `allow_ccavenue`, `allow_braintree`, `allow_mollie`, `allow_payumoney`, `allow_tapPayment`, `allow_razorpay`, `permission`, `client_visible`, `discount_type`, `user_id`, `adjustment`, `discount_total`, `show_quantity_as`) VALUES
(1, '', '', 'INV-2022-Dec-14-0001', 1, 2, '2022-12-14', '2022-12', '2022', '2022-12-14', 0, 'Thank you for <span xss=\"removed\">your</span> busasiness. Please process this invoice within the due date.', '0.00', '{\"tax_name\":null,\"total_tax\":null}', 0, 'No', 31, NULL, NULL, 'USD', 'Unpaid', 0, NULL, 'No', '2022-12-14 04:35:39', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'all', 'Yes', '', 1, '0.00', '0.00', 'qty');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

CREATE TABLE `tbl_items` (
  `items_id` int(11) NOT NULL,
  `invoices_id` int(11) NOT NULL,
  `item_tax_rate` decimal(18,2) NOT NULL DEFAULT 0.00,
  `item_tax_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_tax_total` decimal(18,2) NOT NULL DEFAULT 0.00,
  `quantity` decimal(18,2) DEFAULT 0.00,
  `total_cost` decimal(18,2) DEFAULT 0.00,
  `item_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Item Name',
  `item_desc` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_cost` decimal(18,2) DEFAULT 0.00,
  `order` int(11) DEFAULT 0,
  `date_saved` timestamp NOT NULL DEFAULT current_timestamp(),
  `unit` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hsn_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `saved_items_id` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`items_id`, `invoices_id`, `item_tax_rate`, `item_tax_name`, `item_tax_total`, `quantity`, `total_cost`, `item_name`, `item_desc`, `unit_cost`, `order`, `date_saved`, `unit`, `hsn_code`, `saved_items_id`) VALUES
(1, 1, '0.00', NULL, '0.00', '1.00', '1500000.00', 'csrr 1', 'csrr 1 - 00 : 00  Hours┬á ┬á', '1500000.00', 0, '2022-12-14 04:35:39', '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_history`
--

CREATE TABLE `tbl_item_history` (
  `item_history_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `inventory` int(5) NOT NULL,
  `purchase_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_appliactions`
--

CREATE TABLE `tbl_job_appliactions` (
  `job_appliactions_id` int(11) NOT NULL,
  `job_circular_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `cover_letter` text NOT NULL,
  `resume` text NOT NULL,
  `application_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending 1=accept 2 = reject',
  `apply_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `send_email` varchar(20) DEFAULT NULL,
  `interview_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_circular`
--

CREATE TABLE `tbl_job_circular` (
  `job_circular_id` int(11) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `designations_id` int(11) NOT NULL,
  `vacancy_no` varchar(50) NOT NULL,
  `posted_date` date NOT NULL,
  `employment_type` enum('contractual','full_time','part_time') NOT NULL DEFAULT 'full_time',
  `experience` varchar(200) DEFAULT NULL,
  `age` varchar(200) DEFAULT NULL,
  `salary_range` varchar(200) DEFAULT NULL,
  `last_date` date NOT NULL,
  `description` text NOT NULL,
  `status` enum('published','unpublished') NOT NULL DEFAULT 'unpublished' COMMENT '1=publish 2=unpublish',
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `permission` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kb_category`
--

CREATE TABLE `tbl_kb_category` (
  `kb_category_id` int(11) NOT NULL,
  `category` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `sort` int(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_knowledgebase`
--

CREATE TABLE `tbl_knowledgebase` (
  `kb_id` int(11) NOT NULL,
  `kb_category_id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `for_all` enum('Yes','No') DEFAULT 'No',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `total_view` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_languages`
--

CREATE TABLE `tbl_languages` (
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_languages`
--

INSERT INTO `tbl_languages` (`code`, `name`, `icon`, `active`) VALUES
('ar', 'arabic', 'ae', 1),
('cs', 'czech', 'cs', 0),
('da', 'danish', 'dk', 0),
('de', 'german', 'de', 0),
('el', 'greek', 'gr', 0),
('en', 'english', 'us', 1),
('es', 'spanish', 'es', 0),
('fr', 'french', 'fr', 0),
('gu', 'gujarati', 'in', 0),
('hi', 'hindi', 'in', 0),
('id', 'indonesian', 'id', 0),
('it', 'italian', 'it', 0),
('ja', 'japanese', 'jp', 0),
('nl', 'dutch', 'nl', 0),
('no', 'norwegian', 'no', 0),
('pl', 'polish', 'pl', 0),
('pt', 'portuguese', 'pt', 0),
('ro', 'romanian', 'ro', 0),
('ru', 'russian', 'ru', 0),
('tr', 'turkish', 'tr', 0),
('vi', 'vietnamese', 'vn', 0),
('zh', 'chinese', 'cn', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leads`
--

CREATE TABLE `tbl_leads` (
  `leads_id` int(11) NOT NULL,
  `lead_name` varchar(50) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `organization` varchar(50) NOT NULL,
  `lead_status_id` int(11) DEFAULT NULL,
  `lead_source_id` int(11) DEFAULT NULL,
  `imported_from_email` tinyint(1) DEFAULT 0,
  `email_integration_uid` varchar(30) DEFAULT NULL,
  `company_name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `mobile` varchar(32) NOT NULL,
  `facebook` varchar(32) NOT NULL,
  `notes` text NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `skype` varchar(200) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `permission` text DEFAULT NULL,
  `converted_client_id` int(11) NOT NULL DEFAULT 0,
  `index_no` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lead_source`
--

CREATE TABLE `tbl_lead_source` (
  `lead_source_id` int(11) NOT NULL,
  `lead_source` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lead_status`
--

CREATE TABLE `tbl_lead_status` (
  `lead_status_id` int(11) NOT NULL,
  `lead_status` varchar(50) NOT NULL,
  `lead_type` varchar(20) DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leave_application`
--

CREATE TABLE `tbl_leave_application` (
  `leave_application_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `leave_category_id` int(2) NOT NULL,
  `reason` text NOT NULL,
  `leave_type` enum('single_day','multiple_days','hours') NOT NULL DEFAULT 'single_day',
  `hours` varchar(20) DEFAULT NULL,
  `leave_start_date` date NOT NULL,
  `leave_end_date` date DEFAULT NULL,
  `application_status` int(2) NOT NULL DEFAULT 1 COMMENT '1=pending,2=accepted 3=rejected',
  `view_status` tinyint(1) NOT NULL DEFAULT 2,
  `application_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `attachment` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `approve_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leave_category`
--

CREATE TABLE `tbl_leave_category` (
  `leave_category_id` int(2) NOT NULL,
  `leave_category` varchar(100) NOT NULL,
  `leave_quota` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_locales`
--

CREATE TABLE `tbl_locales` (
  `locale` varchar(10) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `name` varchar(250) NOT NULL DEFAULT '',
  `icon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_locales`
--

INSERT INTO `tbl_locales` (`locale`, `code`, `language`, `name`, `icon`) VALUES
('aa_DJ', 'aa', 'afar', 'Afar (Djibouti)', 'dj'),
('aa_ER', 'aa', 'afar', 'Afar (Eritrea)', 'dj'),
('aa_ET', 'aa', 'afar', 'Afar (Ethiopia)', 'dj'),
('af_ZA', 'af', 'afrikaans', 'Afrikaans (South Africa)', 'za'),
('am_ET', 'am', 'amharic', 'Amharic (Ethiopia)', 'et'),
('an_ES', 'an', 'aragonese', 'Aragonese (Spain)', 'es'),
('ar_AE', 'ar', 'arabic', 'Arabic (United Arab Emirates)', 'es'),
('ar_BH', 'ar', 'arabic', 'Arabic (Bahrain)', NULL),
('ar_DZ', 'ar', 'arabic', 'Arabic (Algeria)', NULL),
('ar_EG', 'ar', 'arabic', 'Arabic (Egypt)', NULL),
('ar_IN', 'ar', 'arabic', 'Arabic (India)', NULL),
('ar_IQ', 'ar', 'arabic', 'Arabic (Iraq)', NULL),
('ar_JO', 'ar', 'arabic', 'Arabic (Jordan)', NULL),
('ar_KW', 'ar', 'arabic', 'Arabic (Kuwait)', NULL),
('ar_LB', 'ar', 'arabic', 'Arabic (Lebanon)', NULL),
('ar_LY', 'ar', 'arabic', 'Arabic (Libya)', NULL),
('ar_MA', 'ar', 'arabic', 'Arabic (Morocco)', NULL),
('ar_OM', 'ar', 'arabic', 'Arabic (Oman)', NULL),
('ar_QA', 'ar', 'arabic', 'Arabic (Qatar)', NULL),
('ar_SA', 'ar', 'arabic', 'Arabic (Saudi Arabia)', NULL),
('ar_SD', 'ar', 'arabic', 'Arabic (Sudan)', NULL),
('ar_SY', 'ar', 'arabic', 'Arabic (Syria)', NULL),
('ar_TN', 'ar', 'arabic', 'Arabic (Tunisia)', NULL),
('ar_YE', 'ar', 'arabic', 'Arabic (Yemen)', NULL),
('ast_ES', 'ast', 'asturian', 'Asturian (Spain)', NULL),
('as_IN', 'as', 'assamese', 'Assamese (India)', NULL),
('az_AZ', 'az', 'azerbaijani', 'Azerbaijani (Azerbaijan)', NULL),
('az_TR', 'az', 'azerbaijani', 'Azerbaijani (Turkey)', NULL),
('bem_ZM', 'bem', 'bemba', 'Bemba (Zambia)', NULL),
('ber_DZ', 'ber', 'berber', 'Berber (Algeria)', NULL),
('ber_MA', 'ber', 'berber', 'Berber (Morocco)', NULL),
('be_BY', 'be', 'belarusian', 'Belarusian (Belarus)', NULL),
('bg_BG', 'bg', 'bulgarian', 'Bulgarian (Bulgaria)', NULL),
('bn_BD', 'bn', 'bengali', 'Bengali (Bangladesh)', NULL),
('bn_IN', 'bn', 'bengali', 'Bengali (India)', NULL),
('bo_CN', 'bo', 'tibetan', 'Tibetan (China)', NULL),
('bo_IN', 'bo', 'tibetan', 'Tibetan (India)', NULL),
('br_FR', 'br', 'breton', 'Breton (France)', NULL),
('bs_BA', 'bs', 'bosnian', 'Bosnian (Bosnia and Herzegovina)', NULL),
('byn_ER', 'byn', 'blin', 'Blin (Eritrea)', NULL),
('ca_AD', 'ca', 'catalan', 'Catalan (Andorra)', NULL),
('ca_ES', 'ca', 'catalan', 'Catalan (Spain)', NULL),
('ca_FR', 'ca', 'catalan', 'Catalan (France)', NULL),
('ca_IT', 'ca', 'catalan', 'Catalan (Italy)', NULL),
('crh_UA', 'crh', 'crimean turkish', 'Crimean Turkish (Ukraine)', NULL),
('csb_PL', 'csb', 'kashubian', 'Kashubian (Poland)', NULL),
('cs_CZ', 'cs', 'czech', 'Czech (Czech Republic)', NULL),
('cv_RU', 'cv', 'chuvash', 'Chuvash (Russia)', NULL),
('cy_GB', 'cy', 'welsh', 'Welsh (United Kingdom)', NULL),
('da_DK', 'da', 'danish', 'Danish (Denmark)', NULL),
('de_AT', 'de', 'german', 'German (Austria)', NULL),
('de_BE', 'de', 'german', 'German (Belgium)', NULL),
('de_CH', 'de', 'german', 'German (Switzerland)', NULL),
('de_DE', 'de', 'german', 'German (Germany)', NULL),
('de_LI', 'de', 'german', 'German (Liechtenstein)', NULL),
('de_LU', 'de', 'german', 'German (Luxembourg)', NULL),
('dv_MV', 'dv', 'divehi', 'Divehi (Maldives)', NULL),
('dz_BT', 'dz', 'dzongkha', 'Dzongkha (Bhutan)', NULL),
('ee_GH', 'ee', 'ewe', 'Ewe (Ghana)', NULL),
('el_CY', 'el', 'greek', 'Greek (Cyprus)', NULL),
('el_GR', 'el', 'greek', 'Greek (Greece)', NULL),
('en_AG', 'en', 'english', 'English (Antigua and Barbuda)', NULL),
('en_AS', 'en', 'english', 'English (American Samoa)', NULL),
('en_AU', 'en', 'english', 'English (Australia)', NULL),
('en_BW', 'en', 'english', 'English (Botswana)', NULL),
('en_CA', 'en', 'english', 'English (Canada)', NULL),
('en_DK', 'en', 'english', 'English (Denmark)', NULL),
('en_GB', 'en', 'english', 'English (United Kingdom)', NULL),
('en_GU', 'en', 'english', 'English (Guam)', NULL),
('en_HK', 'en', 'english', 'English (Hong Kong SAR China)', NULL),
('en_IE', 'en', 'english', 'English (Ireland)', NULL),
('en_IN', 'en', 'english', 'English (India)', NULL),
('en_JM', 'en', 'english', 'English (Jamaica)', NULL),
('en_MH', 'en', 'english', 'English (Marshall Islands)', NULL),
('en_MP', 'en', 'english', 'English (Northern Mariana Islands)', NULL),
('en_MU', 'en', 'english', 'English (Mauritius)', NULL),
('en_NG', 'en', 'english', 'English (Nigeria)', NULL),
('en_NZ', 'en', 'english', 'English (New Zealand)', NULL),
('en_PH', 'en', 'english', 'English (Philippines)', NULL),
('en_SG', 'en', 'english', 'English (Singapore)', NULL),
('en_TT', 'en', 'english', 'English (Trinidad and Tobago)', NULL),
('en_US', 'en', 'english', 'English (United States)', NULL),
('en_VI', 'en', 'english', 'English (Virgin Islands)', NULL),
('en_ZA', 'en', 'english', 'English (South Africa)', NULL),
('en_ZM', 'en', 'english', 'English (Zambia)', NULL),
('en_ZW', 'en', 'english', 'English (Zimbabwe)', NULL),
('eo', 'eo', 'esperanto', 'Esperanto', NULL),
('es_AR', 'es', 'spanish', 'Spanish (Argentina)', NULL),
('es_BO', 'es', 'spanish', 'Spanish (Bolivia)', NULL),
('es_CL', 'es', 'spanish', 'Spanish (Chile)', NULL),
('es_CO', 'es', 'spanish', 'Spanish (Colombia)', NULL),
('es_CR', 'es', 'spanish', 'Spanish (Costa Rica)', NULL),
('es_DO', 'es', 'spanish', 'Spanish (Dominican Republic)', NULL),
('es_EC', 'es', 'spanish', 'Spanish (Ecuador)', NULL),
('es_ES', 'es', 'spanish', 'Spanish (Spain)', NULL),
('es_GT', 'es', 'spanish', 'Spanish (Guatemala)', NULL),
('es_HN', 'es', 'spanish', 'Spanish (Honduras)', NULL),
('es_MX', 'es', 'spanish', 'Spanish (Mexico)', NULL),
('es_NI', 'es', 'spanish', 'Spanish (Nicaragua)', NULL),
('es_PA', 'es', 'spanish', 'Spanish (Panama)', NULL),
('es_PE', 'es', 'spanish', 'Spanish (Peru)', NULL),
('es_PR', 'es', 'spanish', 'Spanish (Puerto Rico)', NULL),
('es_PY', 'es', 'spanish', 'Spanish (Paraguay)', NULL),
('es_SV', 'es', 'spanish', 'Spanish (El Salvador)', NULL),
('es_US', 'es', 'spanish', 'Spanish (United States)', NULL),
('es_UY', 'es', 'spanish', 'Spanish (Uruguay)', NULL),
('es_VE', 'es', 'spanish', 'Spanish (Venezuela)', NULL),
('et_EE', 'et', 'estonian', 'Estonian (Estonia)', NULL),
('eu_ES', 'eu', 'basque', 'Basque (Spain)', NULL),
('eu_FR', 'eu', 'basque', 'Basque (France)', NULL),
('fa_AF', 'fa', 'persian', 'Persian (Afghanistan)', NULL),
('fa_IR', 'fa', 'persian', 'Persian (Iran)', NULL),
('ff_SN', 'ff', 'fulah', 'Fulah (Senegal)', NULL),
('fil_PH', 'fil', 'filipino', 'Filipino (Philippines)', NULL),
('fi_FI', 'fi', 'finnish', 'Finnish (Finland)', NULL),
('fo_FO', 'fo', 'faroese', 'Faroese (Faroe Islands)', NULL),
('fr_BE', 'fr', 'french', 'French (Belgium)', NULL),
('fr_BF', 'fr', 'french', 'French (Burkina Faso)', NULL),
('fr_BI', 'fr', 'french', 'French (Burundi)', NULL),
('fr_BJ', 'fr', 'french', 'French (Benin)', NULL),
('fr_CA', 'fr', 'french', 'French (Canada)', NULL),
('fr_CF', 'fr', 'french', 'French (Central African Republic)', NULL),
('fr_CG', 'fr', 'french', 'French (Congo)', NULL),
('fr_CH', 'fr', 'french', 'French (Switzerland)', NULL),
('fr_CM', 'fr', 'french', 'French (Cameroon)', NULL),
('fr_FR', 'fr', 'french', 'French (France)', NULL),
('fr_GA', 'fr', 'french', 'French (Gabon)', NULL),
('fr_GN', 'fr', 'french', 'French (Guinea)', NULL),
('fr_GP', 'fr', 'french', 'French (Guadeloupe)', NULL),
('fr_GQ', 'fr', 'french', 'French (Equatorial Guinea)', NULL),
('fr_KM', 'fr', 'french', 'French (Comoros)', NULL),
('fr_LU', 'fr', 'french', 'French (Luxembourg)', NULL),
('fr_MC', 'fr', 'french', 'French (Monaco)', NULL),
('fr_MG', 'fr', 'french', 'French (Madagascar)', NULL),
('fr_ML', 'fr', 'french', 'French (Mali)', NULL),
('fr_MQ', 'fr', 'french', 'French (Martinique)', NULL),
('fr_NE', 'fr', 'french', 'French (Niger)', NULL),
('fr_SN', 'fr', 'french', 'French (Senegal)', NULL),
('fr_TD', 'fr', 'french', 'French (Chad)', NULL),
('fr_TG', 'fr', 'french', 'French (Togo)', NULL),
('fur_IT', 'fur', 'friulian', 'Friulian (Italy)', NULL),
('fy_DE', 'fy', 'western frisian', 'Western Frisian (Germany)', NULL),
('fy_NL', 'fy', 'western frisian', 'Western Frisian (Netherlands)', NULL),
('ga_IE', 'ga', 'irish', 'Irish (Ireland)', NULL),
('gd_GB', 'gd', 'scottish gaelic', 'Scottish Gaelic (United Kingdom)', NULL),
('gez_ER', 'gez', 'geez', 'Geez (Eritrea)', NULL),
('gez_ET', 'gez', 'geez', 'Geez (Ethiopia)', NULL),
('gl_ES', 'gl', 'galician', 'Galician (Spain)', NULL),
('gu_IN', 'gu', 'gujarati', 'Gujarati (India)', NULL),
('gv_GB', 'gv', 'manx', 'Manx (United Kingdom)', NULL),
('ha_NG', 'ha', 'hausa', 'Hausa (Nigeria)', NULL),
('he_IL', 'he', 'hebrew', 'Hebrew (Israel)', NULL),
('hi_IN', 'hi', 'hindi', 'Hindi (India)', NULL),
('hr_HR', 'hr', 'croatian', 'Croatian (Croatia)', NULL),
('hsb_DE', 'hsb', 'upper sorbian', 'Upper Sorbian (Germany)', NULL),
('ht_HT', 'ht', 'haitian', 'Haitian (Haiti)', NULL),
('hu_HU', 'hu', 'hungarian', 'Hungarian (Hungary)', NULL),
('hy_AM', 'hy', 'armenian', 'Armenian (Armenia)', NULL),
('ia', 'ia', 'interlingua', 'Interlingua', NULL),
('id_ID', 'id', 'indonesian', 'Indonesian (Indonesia)', NULL),
('ig_NG', 'ig', 'igbo', 'Igbo (Nigeria)', NULL),
('ik_CA', 'ik', 'inupiaq', 'Inupiaq (Canada)', NULL),
('is_IS', 'is', 'icelandic', 'Icelandic (Iceland)', NULL),
('it_CH', 'it', 'italian', 'Italian (Switzerland)', NULL),
('it_IT', 'it', 'italian', 'Italian (Italy)', NULL),
('iu_CA', 'iu', 'inuktitut', 'Inuktitut (Canada)', NULL),
('ja_JP', 'ja', 'japanese', 'Japanese (Japan)', NULL),
('ka_GE', 'ka', 'georgian', 'Georgian (Georgia)', NULL),
('kk_KZ', 'kk', 'kazakh', 'Kazakh (Kazakhstan)', NULL),
('kl_GL', 'kl', 'kalaallisut', 'Kalaallisut (Greenland)', NULL),
('km_KH', 'km', 'khmer', 'Khmer (Cambodia)', NULL),
('kn_IN', 'kn', 'kannada', 'Kannada (India)', NULL),
('kok_IN', 'kok', 'konkani', 'Konkani (India)', NULL),
('ko_KR', 'ko', 'korean', 'Korean (South Korea)', NULL),
('ks_IN', 'ks', 'kashmiri', 'Kashmiri (India)', NULL),
('ku_TR', 'ku', 'kurdish', 'Kurdish (Turkey)', NULL),
('kw_GB', 'kw', 'cornish', 'Cornish (United Kingdom)', NULL),
('ky_KG', 'ky', 'kirghiz', 'Kirghiz (Kyrgyzstan)', NULL),
('lg_UG', 'lg', 'ganda', 'Ganda (Uganda)', NULL),
('li_BE', 'li', 'limburgish', 'Limburgish (Belgium)', NULL),
('li_NL', 'li', 'limburgish', 'Limburgish (Netherlands)', NULL),
('lo_LA', 'lo', 'lao', 'Lao (Laos)', NULL),
('lt_LT', 'lt', 'lithuanian', 'Lithuanian (Lithuania)', NULL),
('lv_LV', 'lv', 'latvian', 'Latvian (Latvia)', NULL),
('mai_IN', 'mai', 'maithili', 'Maithili (India)', NULL),
('mg_MG', 'mg', 'malagasy', 'Malagasy (Madagascar)', NULL),
('mi_NZ', 'mi', 'maori', 'Maori (New Zealand)', NULL),
('mk_MK', 'mk', 'macedonian', 'Macedonian (Macedonia)', NULL),
('ml_IN', 'ml', 'malayalam', 'Malayalam (India)', NULL),
('mn_MN', 'mn', 'mongolian', 'Mongolian (Mongolia)', NULL),
('mr_IN', 'mr', 'marathi', 'Marathi (India)', NULL),
('ms_BN', 'ms', 'malay', 'Malay (Brunei)', NULL),
('ms_MY', 'ms', 'malay', 'Malay (Malaysia)', NULL),
('mt_MT', 'mt', 'maltese', 'Maltese (Malta)', NULL),
('my_MM', 'my', 'burmese', 'Burmese (Myanmar)', NULL),
('naq_NA', 'naq', 'namibia', 'Namibia', NULL),
('nb_NO', 'nb', 'norwegian bokm?l', 'Norwegian Bokm?l (Norway)', NULL),
('nds_DE', 'nds', 'low german', 'Low German (Germany)', NULL),
('nds_NL', 'nds', 'low german', 'Low German (Netherlands)', NULL),
('ne_NP', 'ne', 'nepali', 'Nepali (Nepal)', NULL),
('nl_AW', 'nl', 'dutch', 'Dutch (Aruba)', NULL),
('nl_BE', 'nl', 'dutch', 'Dutch (Belgium)', NULL),
('nl_NL', 'nl', 'dutch', 'Dutch (Netherlands)', NULL),
('nn_NO', 'nn', 'norwegian nynorsk', 'Norwegian Nynorsk (Norway)', NULL),
('no_NO', 'no', 'norwegian', 'Norwegian (Norway)', NULL),
('nr_ZA', 'nr', 'south ndebele', 'South Ndebele (South Africa)', NULL),
('nso_ZA', 'nso', 'northern sotho', 'Northern Sotho (South Africa)', NULL),
('oc_FR', 'oc', 'occitan', 'Occitan (France)', NULL),
('om_ET', 'om', 'oromo', 'Oromo (Ethiopia)', NULL),
('om_KE', 'om', 'oromo', 'Oromo (Kenya)', NULL),
('or_IN', 'or', 'oriya', 'Oriya (India)', NULL),
('os_RU', 'os', 'ossetic', 'Ossetic (Russia)', NULL),
('pap_AN', 'pap', 'papiamento', 'Papiamento (Netherlands Antilles)', NULL),
('pa_IN', 'pa', 'punjabi', 'Punjabi (India)', NULL),
('pa_PK', 'pa', 'punjabi', 'Punjabi (Pakistan)', NULL),
('pl_PL', 'pl', 'polish', 'Polish (Poland)', NULL),
('ps_AF', 'ps', 'pashto', 'Pashto (Afghanistan)', NULL),
('pt_BR', 'pt', 'portuguese', 'Portuguese (Brazil)', NULL),
('pt_GW', 'pt', 'portuguese', 'Portuguese (Guinea-Bissau)', NULL),
('pt_PT', 'pt', 'portuguese', 'Portuguese (Portugal)', NULL),
('ro_MD', 'ro', 'romanian', 'Romanian (Moldova)', NULL),
('ro_RO', 'ro', 'romanian', 'Romanian (Romania)', NULL),
('ru_RU', 'ru', 'russian', 'Russian (Russia)', NULL),
('ru_UA', 'ru', 'russian', 'Russian (Ukraine)', NULL),
('rw_RW', 'rw', 'kinyarwanda', 'Kinyarwanda (Rwanda)', NULL),
('sa_IN', 'sa', 'sanskrit', 'Sanskrit (India)', NULL),
('sc_IT', 'sc', 'sardinian', 'Sardinian (Italy)', NULL),
('sd_IN', 'sd', 'sindhi', 'Sindhi (India)', NULL),
('seh_MZ', 'seh', 'sena', 'Sena (Mozambique)', NULL),
('se_NO', 'se', 'northern sami', 'Northern Sami (Norway)', NULL),
('sid_ET', 'sid', 'sidamo', 'Sidamo (Ethiopia)', NULL),
('si_LK', 'si', 'sinhala', 'Sinhala (Sri Lanka)', NULL),
('sk_SK', 'sk', 'slovak', 'Slovak (Slovakia)', NULL),
('sl_SI', 'sl', 'slovenian', 'Slovenian (Slovenia)', NULL),
('sn_ZW', 'sn', 'shona', 'Shona (Zimbabwe)', NULL),
('so_DJ', 'so', 'somali', 'Somali (Djibouti)', NULL),
('so_ET', 'so', 'somali', 'Somali (Ethiopia)', NULL),
('so_KE', 'so', 'somali', 'Somali (Kenya)', NULL),
('so_SO', 'so', 'somali', 'Somali (Somalia)', NULL),
('sq_AL', 'sq', 'albanian', 'Albanian (Albania)', NULL),
('sq_MK', 'sq', 'albanian', 'Albanian (Macedonia)', NULL),
('sr_BA', 'sr', 'serbian', 'Serbian (Bosnia and Herzegovina)', NULL),
('sr_ME', 'sr', 'serbian', 'Serbian (Montenegro)', NULL),
('sr_RS', 'sr', 'serbian', 'Serbian (Serbia)', NULL),
('ss_ZA', 'ss', 'swati', 'Swati (South Africa)', NULL),
('st_ZA', 'st', 'southern sotho', 'Southern Sotho (South Africa)', NULL),
('sv_FI', 'sv', 'swedish', 'Swedish (Finland)', NULL),
('sv_SE', 'sv', 'swedish', 'Swedish (Sweden)', NULL),
('sw_KE', 'sw', 'swahili', 'Swahili (Kenya)', NULL),
('sw_TZ', 'sw', 'swahili', 'Swahili (Tanzania)', NULL),
('ta_IN', 'ta', 'tamil', 'Tamil (India)', NULL),
('teo_UG', 'teo', 'teso', 'Teso (Uganda)', NULL),
('te_IN', 'te', 'telugu', 'Telugu (India)', NULL),
('tg_TJ', 'tg', 'tajik', 'Tajik (Tajikistan)', NULL),
('th_TH', 'th', 'thai', 'Thai (Thailand)', NULL),
('tig_ER', 'tig', 'tigre', 'Tigre (Eritrea)', NULL),
('ti_ER', 'ti', 'tigrinya', 'Tigrinya (Eritrea)', NULL),
('ti_ET', 'ti', 'tigrinya', 'Tigrinya (Ethiopia)', NULL),
('tk_TM', 'tk', 'turkmen', 'Turkmen (Turkmenistan)', NULL),
('tl_PH', 'tl', 'tagalog', 'Tagalog (Philippines)', NULL),
('tn_ZA', 'tn', 'tswana', 'Tswana (South Africa)', NULL),
('to_TO', 'to', 'tongan', 'Tongan (Tonga)', NULL),
('tr_CY', 'tr', 'turkish', 'Turkish (Cyprus)', NULL),
('tr_TR', 'tr', 'turkish', 'Turkish (Turkey)', NULL),
('ts_ZA', 'ts', 'tsonga', 'Tsonga (South Africa)', NULL),
('tt_RU', 'tt', 'tatar', 'Tatar (Russia)', NULL),
('ug_CN', 'ug', 'uighur', 'Uighur (China)', NULL),
('uk_UA', 'uk', 'ukrainian', 'Ukrainian (Ukraine)', NULL),
('ur_PK', 'ur', 'urdu', 'Urdu (Pakistan)', NULL),
('uz_UZ', 'uz', 'uzbek', 'Uzbek (Uzbekistan)', NULL),
('ve_ZA', 've', 'venda', 'Venda (South Africa)', NULL),
('vi_VN', 'vi', 'vietnamese', 'Vietnamese (Vietnam)', NULL),
('wa_BE', 'wa', 'walloon', 'Walloon (Belgium)', NULL),
('wo_SN', 'wo', 'wolof', 'Wolof (Senegal)', NULL),
('xh_ZA', 'xh', 'xhosa', 'Xhosa (South Africa)', NULL),
('yi_US', 'yi', 'yiddish', 'Yiddish (United States)', NULL),
('yo_NG', 'yo', 'yoruba', 'Yoruba (Nigeria)', NULL),
('zh_CN', 'zh', 'chinese', 'Chinese (China)', NULL),
('zh_HK', 'zh', 'chinese', 'Chinese (Hong Kong SAR China)', NULL),
('zh_SG', 'zh', 'chinese', 'Chinese (Singapore)', NULL),
('zh_TW', 'zh', 'chinese', 'Chinese (Taiwan)', NULL),
('zu_ZA', 'zu', 'zulu', 'Zulu (South Africa)', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menu_id` int(11) NOT NULL,
  `label` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(1) DEFAULT 1 COMMENT '1= active 0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`menu_id`, `label`, `link`, `icon`, `parent`, `sort`, `time`, `status`) VALUES
(1, 'dashboard', 'admin/dashboard', 'fa fa-dashboard', 0, 0, '2017-04-22 23:09:36', 1),
(2, 'calendar', 'admin/calendar', 'fa fa-calendar', 0, 1, '2017-04-23 17:27:23', 1),
(4, 'client', 'admin/client/manage_client', 'fa fa-users', 0, 12, '2017-06-10 11:46:25', 1),
(5, 'mailbox', 'admin/mailbox', 'fa fa-envelope-o', 0, 2, '2017-06-10 11:46:25', 1),
(6, 'tickets', 'admin/tickets', 'fa fa-ticket', 0, 10, '2022-11-28 12:38:58', 1),
(12, 'sales', '#', 'fa fa-shopping-cart', 0, 9, '2017-06-10 11:32:58', 1),
(13, 'invoice', 'admin/invoice/manage_invoice', 'fa fa-circle-o', 12, 0, '2017-04-23 17:27:23', 1),
(14, 'estimates', 'admin/estimates', 'fa fa-circle-o', 12, 1, '2017-06-10 11:32:05', 1),
(15, 'payments_received', 'admin/invoice/all_payments', 'fa fa-circle-o', 12, 3, '2017-04-23 17:27:24', 1),
(16, 'tax_rates', 'admin/invoice/tax_rates', 'fa fa-circle-o', 12, 4, '2017-04-23 17:27:24', 1),
(21, 'quotations', '#', 'fa fa-paste', 12, 6, '2017-06-10 11:35:47', 1),
(22, 'quotations_list', 'admin/quotations', 'fa fa-circle-o', 21, 0, '2017-05-18 14:19:03', 1),
(23, 'quotations_form', 'admin/quotations/quotations_form', 'fa fa-circle-o', 21, 1, '2016-05-30 06:20:23', 1),
(24, 'user', 'admin/user/user_list', 'fa fa-users', 0, 24, '2017-06-10 11:47:24', 1),
(25, 'settings', 'admin/settings', 'fa fa-cogs', 0, 25, '2017-06-10 11:47:24', 1),
(26, 'database_backup', 'admin/settings/database_backup', 'fa fa-database', 0, 26, '2017-06-10 11:35:47', 1),
(29, 'transactions_menu', '#', 'fa fa-building-o', 0, 11, '2022-11-28 12:38:58', 1),
(30, 'deposit', 'admin/transactions/deposit', 'fa fa-circle-o', 29, 1, '2017-06-10 11:31:30', 1),
(31, 'expense', 'admin/transactions/expense', 'fa fa-circle-o', 29, 0, '2017-06-10 11:31:30', 1),
(32, 'transfer', 'admin/transactions/transfer', 'fa fa-circle-o', 29, 2, '2017-06-10 11:31:30', 1),
(33, 'transactions_report', 'admin/transactions/transactions_report', 'fa fa-circle-o', 29, 3, '2017-04-23 18:07:15', 1),
(34, 'balance_sheet', 'admin/transactions/balance_sheet', 'fa fa-circle-o', 29, 5, '2017-04-23 18:07:16', 1),
(36, 'bank_cash', 'admin/account/manage_account', 'fa fa-money', 29, 6, '2017-06-10 11:31:30', 1),
(39, 'items', 'admin/items/items_list', 'fa fa-cube', 150, 0, '2022-11-28 12:38:58', 1),
(42, 'report', '#', 'fa fa-bar-chart', 0, 23, '2017-06-10 11:47:24', 1),
(43, 'account_statement', 'admin/report/account_statement', 'fa fa-circle-o', 146, 5, '2022-11-28 12:38:58', 1),
(44, 'income_report', 'admin/report/income_report', 'fa fa-circle-o', 146, 6, '2022-11-28 12:38:58', 1),
(45, 'expense_report', 'admin/report/expense_report', 'fa fa-circle-o', 146, 7, '2022-11-28 12:38:58', 1),
(46, 'income_expense', 'admin/report/income_expense', 'fa fa-circle-o', 146, 8, '2022-11-28 12:38:58', 1),
(47, 'date_wise_report', 'admin/report/date_wise_report', 'fa fa-circle-o', 146, 9, '2022-11-28 12:38:58', 1),
(48, 'all_income', 'admin/report/all_income', 'fa fa-circle-o', 146, 10, '2022-11-28 12:38:58', 1),
(49, 'all_expense', 'admin/report/all_expense', 'fa fa-circle-o', 146, 11, '2022-11-28 12:38:58', 1),
(50, 'all_transaction', 'admin/report/all_transaction', 'fa fa-circle-o', 146, 12, '2022-11-28 12:38:58', 1),
(51, 'recurring_invoice', 'admin/invoice/recurring_invoice', 'fa fa-circle-o', 12, 2, '2017-06-10 11:32:05', 1),
(52, 'transfer_report', 'admin/transactions/transfer_report', 'fa fa-circle-o', 29, 4, '2017-06-10 11:31:30', 1),
(53, 'report_by_month', 'admin/report/report_by_month', 'fa fa-circle-o', 146, 13, '2022-11-28 12:38:58', 1),
(54, 'tasks', 'admin/tasks/all_task', 'fa fa-tasks', 0, 5, '2017-06-10 11:46:25', 1),
(55, 'leads', 'admin/leads', 'fa fa-rocket', 0, 8, '2017-06-10 11:46:25', 1),
(56, 'opportunities', 'admin/opportunities', 'fa fa-filter', 0, 7, '2017-06-10 11:46:25', 1),
(57, 'projects', 'admin/projects', 'fa fa-folder-open-o', 0, 4, '2017-06-10 11:46:25', 1),
(58, 'bugs', 'admin/bugs', 'fa fa-bug', 0, 6, '2017-06-10 11:46:25', 1),
(59, 'project', '#', 'fa fa-folder-open-o', 42, 0, '2016-05-30 06:20:22', 1),
(60, 'tasks_report', 'admin/report/tasks_report', 'fa fa-circle-o', 42, 1, '2016-05-30 06:20:22', 1),
(61, 'bugs_report', 'admin/report/bugs_report', 'fa fa-circle-o', 42, 2, '2016-05-30 06:20:22', 1),
(62, 'tickets_report', 'admin/report/tickets_report', 'fa fa-circle-o', 42, 3, '2016-05-30 06:20:22', 1),
(63, 'client_report', 'admin/report/client_report', 'fa fa-circle-o', 42, 4, '2016-05-30 06:20:23', 1),
(66, 'tasks_assignment', 'admin/report/tasks_assignment', 'fa fa-dot-circle-o', 59, 0, '2016-05-30 06:25:02', 1),
(67, 'bugs_assignment', 'admin/report/bugs_assignment', 'fa fa-dot-circle-o', 59, 1, '2016-05-30 06:25:02', 1),
(68, 'project_report', 'admin/report/project_report', 'fa fa-dot-circle-o', 59, 2, '2016-05-30 06:25:02', 1),
(69, 'goal_tracking', 'admin/goal_tracking', 'fa fa-shield', 73, 1, '2017-06-10 11:35:47', 1),
(70, 'departments', 'admin/departments', 'fa fa-user-secret', 0, 13, '2017-06-10 11:46:25', 1),
(71, 'holiday', 'admin/holiday', 'fa fa-calendar-plus-o', 73, 0, '2017-06-10 11:35:47', 1),
(72, 'leave_management', 'admin/leave_management', 'fa fa-plane', 0, 19, '2017-06-10 11:47:24', 1),
(73, 'utilities', '#', 'fa fa-gift', 0, 22, '2017-06-10 11:47:24', 1),
(74, 'overtime', 'admin/utilities/overtime', 'fa fa-clock-o', 89, 9, '2017-06-10 11:34:23', 1),
(75, 'office_stock', '#', 'fa fa-codepen', 0, 14, '2022-11-28 12:38:58', 1),
(76, 'stock_category', 'admin/stock/stock_category', 'fa fa-sliders', 75, 0, '2016-05-30 06:20:23', 1),
(77, 'manage_stock', '#', 'fa fa-archive', 75, 2, '2017-04-26 13:41:10', 1),
(78, 'assign_stock', '#', 'fa fa-align-left', 75, 3, '2017-04-26 13:41:10', 1),
(79, 'stock_report', 'admin/stock/report', 'fa fa-line-chart', 75, 4, '2017-04-25 16:18:25', 1),
(81, 'stock_list', 'admin/stock/stock_list', 'fa fa-stack-exchange', 75, 1, '2017-04-26 13:41:10', 1),
(82, 'assign_stock', 'admin/stock/assign_stock', 'fa fa-align-left', 78, 0, '2016-05-30 06:25:02', 1),
(83, 'assign_stock_report', 'admin/stock/assign_stock_report', 'fa fa-bar-chart', 78, 1, '2016-05-30 06:25:02', 1),
(84, 'stock_history', 'admin/stock/stock_history', 'fa fa-file-text-o', 77, 0, '2016-05-30 06:25:02', 1),
(85, 'performance', '#', 'fa fa-dribbble', 0, 18, '2017-06-10 11:47:24', 1),
(86, 'performance_indicator', 'admin/performance/performance_indicator', 'fa fa-random', 85, 0, '2016-05-30 06:20:23', 1),
(87, 'performance_report', 'admin/performance/performance_report', 'fa fa-calendar-o', 85, 2, '2016-05-30 06:20:23', 1),
(88, 'give_appraisal', 'admin/performance/give_performance_appraisal', 'fa fa-plus', 85, 1, '2016-05-30 06:20:23', 1),
(89, 'payroll', '#', 'fa fa-usd', 0, 17, '2017-06-10 11:47:24', 1),
(90, 'manage_salary_details', 'admin/payroll/manage_salary_details', 'fa fa-usd', 89, 2, '2017-04-23 05:36:37', 1),
(91, 'employee_salary_list', 'admin/payroll/employee_salary_list', 'fa fa-user-secret', 89, 3, '2017-04-23 05:36:37', 1),
(92, 'make_payment', 'admin/payroll/make_payment', 'fa fa-tasks', 89, 4, '2017-04-23 05:36:37', 1),
(93, 'generate_payslip', 'admin/payroll/generate_payslip', 'fa fa-list-ul', 89, 5, '2017-04-23 05:36:37', 1),
(94, 'salary_template', 'admin/payroll/salary_template', 'fa fa-money', 89, 0, '2017-04-23 05:36:37', 1),
(95, 'hourly_rate', 'admin/payroll/hourly_rate', 'fa fa-clock-o', 89, 1, '2017-04-23 05:36:37', 1),
(96, 'payroll_summary', 'admin/payroll/payroll_summary', 'fa fa-camera-retro', 89, 6, '2017-04-23 05:36:37', 1),
(97, 'provident_fund', 'admin/payroll/provident_fund', 'fa fa-briefcase', 89, 8, '2017-06-10 11:34:23', 1),
(98, 'advance_salary', 'admin/payroll/advance_salary', 'fa fa-cc-mastercard', 89, 7, '2017-06-10 11:34:23', 1),
(99, 'employee_award', 'admin/award', 'fa fa-trophy', 89, 10, '2017-06-10 11:35:47', 1),
(100, 'announcements', 'admin/announcements', 'fa fa-bullhorn icon', 0, 21, '2017-06-10 11:47:24', 1),
(101, 'training', 'admin/training', 'fa fa-suitcase', 0, 20, '2017-06-10 11:47:24', 1),
(102, 'job_circular', '#', 'fa fa-globe', 0, 16, '2017-06-10 11:47:24', 1),
(103, 'jobs_posted', 'admin/job_circular/jobs_posted', 'fa fa-ticket', 102, 0, '2016-05-30 06:20:21', 1),
(104, 'jobs_applications', 'admin/job_circular/jobs_applications', 'fa fa-compass', 102, 1, '2016-05-30 06:20:21', 1),
(105, 'attendance', '#', 'fa fa-file-text', 0, 15, '2017-06-10 11:47:24', 1),
(106, 'timechange_request', 'admin/attendance/timechange_request', 'fa fa-calendar-o', 105, 1, '2016-05-30 06:20:21', 1),
(107, 'attendance_report', 'admin/attendance/attendance_report', 'fa fa-file-text', 105, 2, '2016-05-30 06:20:21', 1),
(108, 'time_history', 'admin/attendance/time_history', 'fa fa-clock-o', 105, 0, '2016-05-30 06:20:21', 1),
(109, 'pull-down', '', '', 0, 0, '2016-05-31 10:13:20', 0),
(110, 'filemanager', 'admin/filemanager', 'fa fa-file', 0, 3, '2017-06-10 11:46:25', 1),
(111, 'company_details', 'admin/settings', 'fa fa-fw fa-info-circle', 25, 1, '2017-04-25 14:38:46', 2),
(112, 'system_settings', 'admin/settings/system', 'fa fa-fw fa-desktop', 25, 2, '2017-04-25 14:38:46', 2),
(113, 'email_settings', 'admin/settings/email', 'fa fa-fw fa-envelope', 25, 3, '2017-04-25 14:38:46', 2),
(114, 'email_templates', 'admin/settings/templates', 'fa fa-fw fa-pencil-square', 25, 4, '2017-04-25 14:38:46', 2),
(115, 'email_integration', 'admin/settings/email_integration', 'fa fa-fw fa-envelope-o', 25, 5, '2017-04-25 14:38:46', 2),
(116, 'payment_settings', 'admin/settings/payments', 'fa fa-fw fa-dollar', 25, 6, '2017-04-25 14:38:46', 2),
(117, 'invoice_settings', 'admin/settings/invoice', 'fa fa-fw fa-money', 25, 0, '2017-04-25 14:38:46', 2),
(118, 'estimate_settings', 'admin/settings/estimate', 'fa fa-fw fa-file-o', 25, 0, '2017-04-25 14:38:46', 2),
(119, 'tickets_leads_settings', 'admin/settings/tickets', 'fa fa-fw fa-ticket', 25, 0, '2017-04-25 14:38:46', 2),
(120, 'theme_settings', 'admin/settings/theme', 'fa fa-fw fa-code', 25, 0, '2017-04-25 14:38:46', 2),
(121, 'working_days', 'admin/settings/working_days', 'fa fa-fw fa-calendar', 25, 0, '2017-04-25 14:43:41', 2),
(122, 'leave_category', 'admin/settings/leave_category', 'fa fa-fw fa-pagelines', 25, 0, '2017-04-25 14:43:41', 2),
(123, 'income_category', 'admin/settings/income_category', 'fa fa-fw fa-certificate', 25, 0, '2017-04-25 14:43:41', 2),
(124, 'expense_category', 'admin/settings/expense_category', 'fa fa-fw fa-tasks', 25, 0, '2017-04-25 14:43:41', 2),
(125, 'customer_group', 'admin/settings/customer_group', 'fa fa-fw fa-users', 25, 0, '2017-04-25 14:43:41', 2),
(126, 'contract_type', 'admin/settings/contract_type', 'fa fa-fw fa-file-o', 25, 0, '2017-04-25 14:43:41', 2),
(127, 'lead_status', 'admin/settings/lead_status', 'fa fa-fw fa-list-ul', 25, 0, '2017-04-25 14:43:41', 2),
(128, 'lead_source', 'admin/settings/lead_source', 'fa fa-fw fa-arrow-down', 25, 0, '2017-04-25 14:43:41', 2),
(129, 'opportunities_state_reason', 'admin/settings/opportunities_state_reason', 'fa fa-fw fa-dot-circle-o', 25, 0, '2017-04-25 14:43:41', 2),
(130, 'custom_field', 'admin/settings/custom_field', 'fa fa-fw fa-star-o', 25, 0, '2017-04-25 14:43:41', 2),
(131, 'payment_method', 'admin/settings/payment_method', 'fa fa-fw fa-money', 25, 0, '2017-04-25 14:43:41', 2),
(132, 'cronjob', 'admin/settings/cronjob', 'fa fa-fw fa-contao', 25, 0, '2017-04-25 14:46:20', 2),
(133, 'menu_allocation', 'admin/settings/menu_allocation', 'fa fa-fw fa fa-compass', 25, 0, '2017-04-25 14:46:20', 2),
(134, 'notification', 'admin/settings/notification', 'fa fa-fw fa-bell-o', 25, 0, '2017-04-25 14:46:20', 2),
(135, 'email_notification', 'admin/settings/email_notification', 'fa fa-fw fa-bell-o', 25, 0, '2017-04-25 14:46:20', 2),
(136, 'database_backup', 'admin/settings/database_backup', 'fa fa-fw fa-database', 25, 0, '2017-04-25 14:46:20', 2),
(137, 'translations', 'admin/settings/translations', 'fa fa-fw fa-language', 25, 0, '2017-04-25 14:46:20', 2),
(138, 'system_update', 'admin/settings/system_update', 'fa fa-fw fa-pencil-square-o', 25, 0, '2017-04-25 14:46:20', 2),
(139, 'private_chat', 'chat/conversations', 'fa fa-envelope', 0, 27, '2022-11-28 12:38:58', 1),
(140, 'proposals', 'admin/proposals', 'fa fa-circle-o', 12, 3, '2017-07-16 10:04:15', 1),
(141, 'knowledgebase', '#', 'fa fa-question-circle', 0, 10, '2022-11-28 12:38:58', 1),
(142, 'knowledgebase', 'admin/knowledgebase', 'fa fa-circle-o', 141, 1, '2022-11-28 12:38:58', 1),
(143, 'categories', 'admin/knowledgebase/categories', 'fa fa-circle-o', 141, 3, '2022-11-28 12:38:58', 1),
(144, 'articles', 'admin/knowledgebase/articles', 'fa fa-circle-o', 141, 2, '2022-11-28 12:38:58', 1),
(145, 'dashboard_settings', 'admin/settings/dashboard', 'fa fa-fw fa-dashboard', 25, 11, '2017-04-26 06:38:46', 2),
(146, 'transactions_reports', '#', 'fa fa-building-o', 42, 0, '2022-11-28 12:38:58', 1),
(147, 'sales', 'admin/report/sales_report', 'fa fa-shopping-cart', 42, 0, '2022-11-28 12:38:58', 1),
(148, 'mark_attendance', 'admin/mark_attendance', 'fa fa-file-text', 105, 2, '2022-11-28 12:38:58', 1),
(149, 'allowed_ip', 'admin/settings/allowed_ip', 'fa fa-server', 25, 1, '2022-11-28 12:38:58', 2),
(150, 'stock', '#', 'fa fa-layers', 0, 8, '2018-11-15 10:22:20', 1),
(151, 'supplier', 'admin/supplier', 'icon-briefcase', 150, 1, '2019-05-01 18:40:52', 1),
(152, 'purchase', 'admin/purchase', 'icon-handbag', 150, 2, '2019-05-01 18:40:52', 1),
(153, 'return_stock', 'admin/return_stock', 'icon-share-alt', 150, 3, '2019-05-01 18:40:52', 1),
(154, 'purchase_payment', 'admin/purchase/all_payments', 'icon-credit-card', 150, 4, '2019-05-01 19:12:49', 1),
(155, 'purchase_settings', 'admin/settings/purchase', 'fa-fw icon-handbag', 25, 0, '2017-04-25 17:38:46', 2),
(156, 'credit_note', 'admin/credit_note', 'fa fa-circle-o', 12, 1, '2017-06-09 20:32:05', 1),
(157, 'credit_note_settings', 'admin/settings/credit_note', 'fa fa-fw fa-money', 25, 0, '2017-04-24 23:38:46', 2),
(158, 'proposals_settings', 'admin/settings/proposals', 'fa fa-fw fa-leaf', 25, 0, '2017-04-24 23:38:46', 2),
(159, 'projects_settings', 'admin/settings/projects', 'fa fa-fw fa-folder-open-o', 25, 0, '2017-04-24 23:38:46', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mettings`
--

CREATE TABLE `tbl_mettings` (
  `mettings_id` int(11) NOT NULL,
  `leads_id` int(11) DEFAULT NULL,
  `opportunities_id` int(11) DEFAULT NULL,
  `meeting_subject` varchar(200) NOT NULL,
  `attendees` varchar(300) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_migrations`
--

CREATE TABLE `tbl_migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_migrations`
--

INSERT INTO `tbl_migrations` (`version`) VALUES
(161);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_milestones`
--

CREATE TABLE `tbl_milestones` (
  `milestones_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `milestone_name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `start_date` varchar(20) NOT NULL,
  `end_date` varchar(20) NOT NULL,
  `client_visible` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notes`
--

CREATE TABLE `tbl_notes` (
  `notes_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_client` enum('Yes','No') NOT NULL DEFAULT 'No',
  `notes` mediumtext DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifications`
--

CREATE TABLE `tbl_notifications` (
  `notifications_id` int(11) NOT NULL,
  `read` int(11) NOT NULL DEFAULT 0,
  `read_inline` tinyint(1) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL,
  `description` text NOT NULL,
  `from_user_id` int(11) NOT NULL DEFAULT 0,
  `to_user_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(200) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `icon` varchar(200) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_notifications`
--

INSERT INTO `tbl_notifications` (`notifications_id`, `read`, `read_inline`, `date`, `description`, `from_user_id`, `to_user_id`, `name`, `link`, `icon`, `value`) VALUES
(1, 1, 0, '2022-12-02 12:39:38', 'assign_to_you_the_project', 1, 27, 'Minesh Patel', 'admin/projects/project_details/1', NULL, 'SOLAR POWER DIGITAL CLASSROOM'),
(2, 1, 0, '2022-12-02 12:43:36', 'assign_to_you_the_project', 1, 27, 'Minesh Patel', 'admin/projects/project_details/1', NULL, 'SOLAR POWER DIGITAL CLASSROOM'),
(3, 0, 0, '2022-12-02 12:43:36', 'assign_to_you_the_project', 1, 20, 'Minesh Patel', 'admin/projects/project_details/1', NULL, 'SOLAR POWER DIGITAL CLASSROOM'),
(4, 1, 0, '2022-12-02 12:43:36', 'assign_to_you_the_project', 1, 21, 'Minesh Patel', 'admin/projects/project_details/1', NULL, 'SOLAR POWER DIGITAL CLASSROOM'),
(5, 1, 0, '2022-12-02 12:51:14', 'not_changed_status', 1, 27, 'Minesh Patel', 'admin/projects/project_details/1', NULL, 'Status : Started to On Hold'),
(6, 0, 0, '2022-12-02 12:51:14', 'not_changed_status', 1, 20, 'Minesh Patel', 'admin/projects/project_details/1', NULL, 'Status : Started to On Hold'),
(7, 1, 0, '2022-12-02 12:51:14', 'not_changed_status', 1, 21, 'Minesh Patel', 'admin/projects/project_details/1', NULL, 'Status : Started to On Hold'),
(8, 1, 0, '2022-12-02 12:51:21', 'not_changed_status', 1, 27, 'Minesh Patel', 'admin/projects/project_details/1', NULL, 'Status : On Hold to Started'),
(9, 0, 0, '2022-12-02 12:51:21', 'not_changed_status', 1, 20, 'Minesh Patel', 'admin/projects/project_details/1', NULL, 'Status : On Hold to Started'),
(10, 1, 0, '2022-12-02 12:51:21', 'not_changed_status', 1, 21, 'Minesh Patel', 'admin/projects/project_details/1', NULL, 'Status : On Hold to Started'),
(11, 0, 0, '2022-12-02 12:55:42', 'not_task_update', 1, 20, 'Minesh Patel', 'admin/tasks/view_task_details/1', NULL, 'Task WALL PAINTING'),
(12, 1, 0, '2022-12-02 12:56:39', 'not_task_update', 1, 21, 'Minesh Patel', 'admin/tasks/view_task_details/2', NULL, 'Task PROJECTOR FITTING'),
(13, 1, 0, '2022-12-02 12:57:12', 'assign_to_you_the_project', 1, 27, 'Minesh Patel', 'admin/projects/project_details/1', NULL, 'SOLAR POWER DIGITAL CLASSROOM'),
(14, 0, 0, '2022-12-02 12:57:12', 'assign_to_you_the_project', 1, 20, 'Minesh Patel', 'admin/projects/project_details/1', NULL, 'SOLAR POWER DIGITAL CLASSROOM'),
(15, 1, 0, '2022-12-02 12:57:12', 'assign_to_you_the_project', 1, 21, 'Minesh Patel', 'admin/projects/project_details/1', NULL, 'SOLAR POWER DIGITAL CLASSROOM'),
(16, 1, 0, '2022-12-02 12:57:12', 'assign_to_you_the_project', 1, 22, 'Minesh Patel', 'admin/projects/project_details/1', NULL, 'SOLAR POWER DIGITAL CLASSROOM'),
(17, 0, 0, '2022-12-02 12:57:12', 'assign_to_you_the_project', 1, 24, 'Minesh Patel', 'admin/projects/project_details/1', NULL, 'SOLAR POWER DIGITAL CLASSROOM'),
(18, 1, 0, '2022-12-02 13:00:33', 'assign_to_you_the_tasks', 21, 22, 'MS. HEENA MONDAL', 'admin/tasks/view_task_details/2', NULL, 'Task PROJECTOR FITTING'),
(19, 1, 0, '2022-12-02 13:01:20', 'not_task_update', 21, 22, 'MS. HEENA MONDAL', 'admin/tasks/view_task_details/3', NULL, 'Task HDMI'),
(20, 1, 0, '2022-12-02 13:21:50', 'not_timer_start', 1, 27, 'Minesh Patel', 'admin/projects/project_details/1/7', NULL, 'Projects SOLAR POWER DIGITAL CLASSROOM'),
(21, 0, 0, '2022-12-02 13:21:50', 'not_timer_start', 1, 20, 'Minesh Patel', 'admin/projects/project_details/1/7', NULL, 'Projects SOLAR POWER DIGITAL CLASSROOM'),
(22, 0, 0, '2022-12-02 13:21:50', 'not_timer_start', 1, 21, 'Minesh Patel', 'admin/projects/project_details/1/7', NULL, 'Projects SOLAR POWER DIGITAL CLASSROOM'),
(23, 0, 0, '2022-12-02 13:21:50', 'not_timer_start', 1, 22, 'Minesh Patel', 'admin/projects/project_details/1/7', NULL, 'Projects SOLAR POWER DIGITAL CLASSROOM'),
(24, 0, 0, '2022-12-02 13:21:50', 'not_timer_start', 1, 24, 'Minesh Patel', 'admin/projects/project_details/1/7', NULL, 'Projects SOLAR POWER DIGITAL CLASSROOM'),
(25, 0, 0, '2022-12-02 13:33:59', 'not_timer_start', 1, 22, 'Minesh Patel', 'admin/tasks/view_task_details/3/5', NULL, 'Task HDMI'),
(26, 0, 0, '2022-12-02 13:34:07', 'not_changed_status', 1, 22, 'Minesh Patel', 'admin/tasks/view_task_details/3', NULL, 'Status : waiting_for_someone to completed'),
(27, 0, 0, '2022-12-02 13:34:07', 'not_timer_stop', 1, 22, 'Minesh Patel', 'admin/tasks/view_task_details/3/5', NULL, 'Task HDMI'),
(28, 0, 0, '2022-12-02 13:35:58', 'not_task_update', 1, 21, 'Minesh Patel', 'admin/tasks/view_task_details/2', NULL, 'Task PROJECTOR FITTING'),
(29, 0, 0, '2022-12-02 13:35:58', 'not_task_update', 1, 22, 'Minesh Patel', 'admin/tasks/view_task_details/2', NULL, 'Task PROJECTOR FITTING'),
(30, 0, 0, '2022-12-02 13:40:31', 'not_timer_start', 1, 21, 'Minesh Patel', 'admin/tasks/view_task_details/2/5', NULL, 'Task PROJECTOR FITTING'),
(31, 0, 0, '2022-12-02 13:40:31', 'not_timer_start', 1, 22, 'Minesh Patel', 'admin/tasks/view_task_details/2/5', NULL, 'Task PROJECTOR FITTING'),
(32, 0, 0, '2022-12-02 13:40:35', 'not_timer_start', 1, 20, 'Minesh Patel', 'admin/tasks/view_task_details/1/5', NULL, 'Task WALL PAINTING'),
(33, 0, 0, '2022-12-02 13:58:49', 'not_task_update', 1, 22, 'Minesh Patel', 'admin/tasks/view_task_details/3', NULL, 'Task HDMI'),
(34, 0, 0, '2022-12-02 13:59:00', 'not_changed_status', 1, 22, 'Minesh Patel', 'admin/tasks/view_task_details/3', NULL, 'Status : completed to in_progress'),
(35, 0, 0, '2022-12-02 14:03:42', 'not_timer_stop', 1, 21, 'Minesh Patel', 'admin/tasks/view_task_details/2/5', NULL, 'Task PROJECTOR FITTING'),
(36, 0, 0, '2022-12-02 14:03:42', 'not_timer_stop', 1, 22, 'Minesh Patel', 'admin/tasks/view_task_details/2/5', NULL, 'Task PROJECTOR FITTING'),
(37, 0, 0, '2022-12-13 13:46:56', 'not_update_timer', 1, 22, 'Minesh Patel', 'admin/tasks/view_task_details/3/5', NULL, 'Task HDMI'),
(38, 0, 0, '2022-12-13 14:54:46', 'not_expense_update', 0, 2, NULL, 'admin/transactions/view_details/1', 'building-o', 'Title Purchase Payment Date 12-02-2022'),
(39, 0, 0, '2022-12-13 14:54:46', 'not_expense_update', 0, 3, NULL, 'admin/transactions/view_details/1', 'building-o', 'Title Purchase Payment Date 12-02-2022'),
(40, 0, 0, '2022-12-13 14:54:46', 'not_expense_update', 0, 4, NULL, 'admin/transactions/view_details/1', 'building-o', 'Title Purchase Payment Date 12-02-2022'),
(41, 0, 0, '2022-12-13 14:54:46', 'not_expense_update', 0, 5, NULL, 'admin/transactions/view_details/1', 'building-o', 'Title Purchase Payment Date 12-02-2022'),
(42, 0, 0, '2022-12-13 14:54:46', 'not_expense_update', 0, 6, NULL, 'admin/transactions/view_details/1', 'building-o', 'Title Purchase Payment Date 12-02-2022'),
(43, 0, 0, '2022-12-13 14:54:46', 'not_expense_update', 0, 7, NULL, 'admin/transactions/view_details/1', 'building-o', 'Title Purchase Payment Date 12-02-2022'),
(44, 0, 0, '2022-12-13 14:54:46', 'not_expense_update', 0, 8, NULL, 'admin/transactions/view_details/1', 'building-o', 'Title Purchase Payment Date 12-02-2022'),
(45, 0, 0, '2022-12-13 14:54:46', 'not_expense_update', 0, 9, NULL, 'admin/transactions/view_details/1', 'building-o', 'Title Purchase Payment Date 12-02-2022'),
(46, 0, 0, '2022-12-13 14:54:46', 'not_expense_update', 0, 10, NULL, 'admin/transactions/view_details/1', 'building-o', 'Title Purchase Payment Date 12-02-2022'),
(47, 0, 0, '2022-12-13 14:54:46', 'not_expense_update', 0, 11, NULL, 'admin/transactions/view_details/1', 'building-o', 'Title Purchase Payment Date 12-02-2022'),
(48, 0, 0, '2022-12-13 14:54:46', 'not_expense_update', 0, 12, NULL, 'admin/transactions/view_details/1', 'building-o', 'Title Purchase Payment Date 12-02-2022'),
(49, 0, 0, '2022-12-13 14:54:46', 'not_expense_update', 0, 13, NULL, 'admin/transactions/view_details/1', 'building-o', 'Title Purchase Payment Date 12-02-2022'),
(50, 0, 0, '2022-12-13 14:54:46', 'not_expense_update', 0, 14, NULL, 'admin/transactions/view_details/1', 'building-o', 'Title Purchase Payment Date 12-02-2022'),
(51, 0, 0, '2022-12-14 09:55:30', 'assign_to_you_the_project', 1, 16, 'Minesh Patel', 'admin/projects/project_details/2', NULL, 'csrr 1'),
(52, 0, 0, '2022-12-14 09:55:35', 'assign_to_you_the_project', 1, 15, 'Minesh Patel', 'admin/projects/project_details/2', NULL, 'csrr 1'),
(53, 1, 0, '2022-12-14 09:55:39', 'assign_to_you_the_project', 1, 27, 'Minesh Patel', 'admin/projects/project_details/2', NULL, 'csrr 1'),
(54, 0, 0, '2022-12-14 09:57:42', 'not_task_update', 1, 15, 'Minesh Patel', 'admin/tasks/view_task_details/4', NULL, 'Task partty1'),
(55, 1, 0, '2022-12-14 10:00:35', 'not_task_update', 1, 27, 'Minesh Patel', 'admin/tasks/view_task_details/5', NULL, 'Task parsr2'),
(56, 0, 0, '2022-12-19 13:19:50', 'assign_to_you_the_project', 1, 2, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(57, 0, 0, '2022-12-19 13:19:50', 'assign_to_you_the_project', 1, 3, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(58, 0, 0, '2022-12-19 13:19:50', 'assign_to_you_the_project', 1, 4, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(59, 0, 0, '2022-12-19 13:19:51', 'assign_to_you_the_project', 1, 5, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(60, 0, 0, '2022-12-19 13:19:51', 'assign_to_you_the_project', 1, 6, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(61, 0, 0, '2022-12-19 13:19:52', 'assign_to_you_the_project', 1, 7, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(62, 0, 0, '2022-12-19 13:19:52', 'assign_to_you_the_project', 1, 8, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(63, 0, 0, '2022-12-19 13:19:53', 'assign_to_you_the_project', 1, 9, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(64, 0, 0, '2022-12-19 13:19:53', 'assign_to_you_the_project', 1, 10, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(65, 0, 0, '2022-12-19 13:19:53', 'assign_to_you_the_project', 1, 11, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(66, 0, 0, '2022-12-19 13:19:54', 'assign_to_you_the_project', 1, 12, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(67, 0, 0, '2022-12-19 13:19:54', 'assign_to_you_the_project', 1, 13, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(68, 0, 0, '2022-12-19 13:19:54', 'assign_to_you_the_project', 1, 14, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(69, 0, 0, '2022-12-19 13:19:55', 'assign_to_you_the_project', 1, 16, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(70, 0, 0, '2022-12-19 13:19:55', 'assign_to_you_the_project', 1, 15, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(71, 0, 0, '2022-12-19 13:19:55', 'assign_to_you_the_project', 1, 27, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(72, 0, 0, '2022-12-19 13:19:56', 'assign_to_you_the_project', 1, 29, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(73, 0, 0, '2022-12-19 13:19:56', 'assign_to_you_the_project', 1, 17, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(74, 0, 0, '2022-12-19 13:19:57', 'assign_to_you_the_project', 1, 18, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(75, 0, 0, '2022-12-19 13:19:57', 'assign_to_you_the_project', 1, 20, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(76, 0, 0, '2022-12-19 13:19:57', 'assign_to_you_the_project', 1, 21, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(77, 0, 0, '2022-12-19 13:19:58', 'assign_to_you_the_project', 1, 22, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test'),
(78, 0, 0, '2022-12-19 13:19:58', 'assign_to_you_the_project', 1, 24, 'Minesh Patel', 'admin/projects/project_details/3', NULL, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offence_category`
--

CREATE TABLE `tbl_offence_category` (
  `offence_id` int(2) NOT NULL,
  `offence_category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_online_payment`
--

CREATE TABLE `tbl_online_payment` (
  `online_payment_id` int(11) NOT NULL,
  `gateway_name` varchar(20) CHARACTER SET latin1 NOT NULL,
  `icon` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_online_payment`
--

INSERT INTO `tbl_online_payment` (`online_payment_id`, `gateway_name`, `icon`) VALUES
(1, 'Mollie', 'ideal_mollie.png'),
(2, 'PayUmoney', 'payumoney.jpg'),
(3, 'Razorpay', 'razorpay.png'),
(4, 'TapPayment', 'tappayment.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_opportunities`
--

CREATE TABLE `tbl_opportunities` (
  `opportunities_id` int(11) NOT NULL,
  `opportunity_name` varchar(100) NOT NULL,
  `stages` varchar(20) NOT NULL,
  `probability` varchar(20) NOT NULL,
  `close_date` varchar(20) NOT NULL,
  `opportunities_state_reason_id` int(2) NOT NULL,
  `expected_revenue` decimal(10,2) NOT NULL,
  `new_link` varchar(20) NOT NULL,
  `next_action` varchar(100) NOT NULL,
  `next_action_date` varchar(20) NOT NULL,
  `notes` text DEFAULT NULL,
  `permission` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_opportunities_state_reason`
--

CREATE TABLE `tbl_opportunities_state_reason` (
  `opportunities_state_reason_id` int(2) NOT NULL,
  `opportunities_state` varchar(20) NOT NULL,
  `opportunities_state_reason` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_outgoing_emails`
--

CREATE TABLE `tbl_outgoing_emails` (
  `id` int(11) UNSIGNED NOT NULL,
  `sent_to` varchar(64) DEFAULT NULL,
  `sent_from` varchar(64) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `date_sent` timestamp NULL DEFAULT current_timestamp(),
  `delivered` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_outgoing_emails`
--

INSERT INTO `tbl_outgoing_emails` (`id`, `sent_to`, `sent_from`, `subject`, `message`, `date_sent`, `delivered`) VALUES
(1, 'zain.cwf@gmail.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', '[ UNITED WAY OF BARODA ] The Minesh Patel() Just clock in', '<p>Hi there,</p>\r\n\r\n<p>The┬á<strong>Minesh Patel()</strong> just┬áClock In by using The IP. The IP is:┬á<strong>127.0.0.1</strong> and the time is: ┬á<strong>12-02-2022 12:01 pm</strong><strong> </strong></p>\r\n\r\n<p>You can view this attendance by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"http://localhost/1pms/admin/attendance/time_history\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nThe┬á<strong>UNITED WAY OF BARODA</strong>┬áTeam</p>\r\n', '2022-12-02 06:31:06', 0),
(2, 'klp_jmd@voltamptransformers.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', '[ UNITED WAY OF BARODA ] The Minesh Patel() Just clock in', '<p>Hi there,</p>\r\n\r\n<p>The┬á<strong>Minesh Patel()</strong> just┬áClock In by using The IP. The IP is:┬á<strong>127.0.0.1</strong> and the time is: ┬á<strong>12-02-2022 12:01 pm</strong><strong> </strong></p>\r\n\r\n<p>You can view this attendance by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"http://localhost/1pms/admin/attendance/time_history\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nThe┬á<strong>UNITED WAY OF BARODA</strong>┬áTeam</p>\r\n', '2022-12-02 06:31:06', 0),
(3, 'miral9@gmail.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', '[ UNITED WAY OF BARODA ] The Minesh Patel() Just clock in', '<p>Hi there,</p>\r\n\r\n<p>The┬á<strong>Minesh Patel()</strong> just┬áClock In by using The IP. The IP is:┬á<strong>127.0.0.1</strong> and the time is: ┬á<strong>12-02-2022 12:01 pm</strong><strong> </strong></p>\r\n\r\n<p>You can view this attendance by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"http://localhost/1pms/admin/attendance/time_history\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nThe┬á<strong>UNITED WAY OF BARODA</strong>┬áTeam</p>\r\n', '2022-12-02 06:31:06', 0),
(4, 'hemant@hemant.in', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', '[ UNITED WAY OF BARODA ] The Minesh Patel() Just clock in', '<p>Hi there,</p>\r\n\r\n<p>The┬á<strong>Minesh Patel()</strong> just┬áClock In by using The IP. The IP is:┬á<strong>127.0.0.1</strong> and the time is: ┬á<strong>12-02-2022 12:01 pm</strong><strong> </strong></p>\r\n\r\n<p>You can view this attendance by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"http://localhost/1pms/admin/attendance/time_history\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nThe┬á<strong>UNITED WAY OF BARODA</strong>┬áTeam</p>\r\n', '2022-12-02 06:31:06', 0),
(5, 'chawlashivinder@gmail.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', '[ UNITED WAY OF BARODA ] The Minesh Patel() Just clock in', '<p>Hi there,</p>\r\n\r\n<p>The┬á<strong>Minesh Patel()</strong> just┬áClock In by using The IP. The IP is:┬á<strong>127.0.0.1</strong> and the time is: ┬á<strong>12-02-2022 12:01 pm</strong><strong> </strong></p>\r\n\r\n<p>You can view this attendance by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"http://localhost/1pms/admin/attendance/time_history\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nThe┬á<strong>UNITED WAY OF BARODA</strong>┬áTeam</p>\r\n', '2022-12-02 06:31:06', 0),
(6, 'rakesh.agrawal@shivapharmachem.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', '[ UNITED WAY OF BARODA ] The Minesh Patel() Just clock in', '<p>Hi there,</p>\r\n\r\n<p>The┬á<strong>Minesh Patel()</strong> just┬áClock In by using The IP. The IP is:┬á<strong>127.0.0.1</strong> and the time is: ┬á<strong>12-02-2022 12:01 pm</strong><strong> </strong></p>\r\n\r\n<p>You can view this attendance by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"http://localhost/1pms/admin/attendance/time_history\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nThe┬á<strong>UNITED WAY OF BARODA</strong>┬áTeam</p>\r\n', '2022-12-02 06:31:06', 0),
(7, 'atul@tarakchemicals.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', '[ UNITED WAY OF BARODA ] The Minesh Patel() Just clock in', '<p>Hi there,</p>\r\n\r\n<p>The┬á<strong>Minesh Patel()</strong> just┬áClock In by using The IP. The IP is:┬á<strong>127.0.0.1</strong> and the time is: ┬á<strong>12-02-2022 12:01 pm</strong><strong> </strong></p>\r\n\r\n<p>You can view this attendance by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"http://localhost/1pms/admin/attendance/time_history\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nThe┬á<strong>UNITED WAY OF BARODA</strong>┬áTeam</p>\r\n', '2022-12-02 06:31:06', 0),
(8, 'prittymody@hotmail.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', '[ UNITED WAY OF BARODA ] The Minesh Patel() Just clock in', '<p>Hi there,</p>\r\n\r\n<p>The┬á<strong>Minesh Patel()</strong> just┬áClock In by using The IP. The IP is:┬á<strong>127.0.0.1</strong> and the time is: ┬á<strong>12-02-2022 12:01 pm</strong><strong> </strong></p>\r\n\r\n<p>You can view this attendance by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"http://localhost/1pms/admin/attendance/time_history\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nThe┬á<strong>UNITED WAY OF BARODA</strong>┬áTeam</p>\r\n', '2022-12-02 06:31:06', 0),
(9, 'paresh@tsilbrd.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', '[ UNITED WAY OF BARODA ] The Minesh Patel() Just clock in', '<p>Hi there,</p>\r\n\r\n<p>The┬á<strong>Minesh Patel()</strong> just┬áClock In by using The IP. The IP is:┬á<strong>127.0.0.1</strong> and the time is: ┬á<strong>12-02-2022 12:01 pm</strong><strong> </strong></p>\r\n\r\n<p>You can view this attendance by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"http://localhost/1pms/admin/attendance/time_history\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nThe┬á<strong>UNITED WAY OF BARODA</strong>┬áTeam</p>\r\n', '2022-12-02 06:31:06', 0),
(10, 'bharat@dineshmills.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', '[ UNITED WAY OF BARODA ] The Minesh Patel() Just clock in', '<p>Hi there,</p>\r\n\r\n<p>The┬á<strong>Minesh Patel()</strong> just┬áClock In by using The IP. The IP is:┬á<strong>127.0.0.1</strong> and the time is: ┬á<strong>12-02-2022 12:01 pm</strong><strong> </strong></p>\r\n\r\n<p>You can view this attendance by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"http://localhost/1pms/admin/attendance/time_history\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nThe┬á<strong>UNITED WAY OF BARODA</strong>┬áTeam</p>\r\n', '2022-12-02 06:31:06', 0),
(11, 'ceo@prakashteleservices.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', '[ UNITED WAY OF BARODA ] The Minesh Patel() Just clock in', '<p>Hi there,</p>\r\n\r\n<p>The┬á<strong>Minesh Patel()</strong> just┬áClock In by using The IP. The IP is:┬á<strong>127.0.0.1</strong> and the time is: ┬á<strong>12-02-2022 12:01 pm</strong><strong> </strong></p>\r\n\r\n<p>You can view this attendance by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"http://localhost/1pms/admin/attendance/time_history\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nThe┬á<strong>UNITED WAY OF BARODA</strong>┬áTeam</p>\r\n', '2022-12-02 06:31:06', 0),
(12, 'parikhsamir27@hotmail.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', '[ UNITED WAY OF BARODA ] The Minesh Patel() Just clock in', '<p>Hi there,</p>\r\n\r\n<p>The┬á<strong>Minesh Patel()</strong> just┬áClock In by using The IP. The IP is:┬á<strong>127.0.0.1</strong> and the time is: ┬á<strong>12-02-2022 12:01 pm</strong><strong> </strong></p>\r\n\r\n<p>You can view this attendance by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"http://localhost/1pms/admin/attendance/time_history\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nThe┬á<strong>UNITED WAY OF BARODA</strong>┬áTeam</p>\r\n', '2022-12-02 06:31:06', 0),
(13, 'arvind.nopany@rishifibc.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', '[ UNITED WAY OF BARODA ] The Minesh Patel() Just clock in', '<p>Hi there,</p>\r\n\r\n<p>The┬á<strong>Minesh Patel()</strong> just┬áClock In by using The IP. The IP is:┬á<strong>127.0.0.1</strong> and the time is: ┬á<strong>12-02-2022 12:01 pm</strong><strong> </strong></p>\r\n\r\n<p>You can view this attendance by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"http://localhost/1pms/admin/attendance/time_history\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nThe┬á<strong>UNITED WAY OF BARODA</strong>┬áTeam</p>\r\n', '2022-12-02 06:31:06', 0),
(14, 'chawlatinu@gmail.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', '[ UNITED WAY OF BARODA ] The Minesh Patel() Just clock in', '<p>Hi there,</p>\r\n\r\n<p>The┬á<strong>Minesh Patel()</strong> just┬áClock In by using The IP. The IP is:┬á<strong>127.0.0.1</strong> and the time is: ┬á<strong>12-02-2022 12:01 pm</strong><strong> </strong></p>\r\n\r\n<p>You can view this attendance by logging in to the portal using the link below.<br>\r\n<br>\r\n<big><strong><a href=\"http://localhost/1pms/admin/attendance/time_history\">View Details</a></strong></big><br>\r\n<br>\r\n<br>\r\nRegards,<br>\r\n<br>\r\nThe┬á<strong>UNITED WAY OF BARODA</strong>┬áTeam</p>\r\n', '2022-12-02 06:31:06', 0),
(15, 'ADBC@GMAIL.COM', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-02 07:09:38', 0),
(16, 'ram.mahavadiya@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-02 07:09:38', 0),
(17, 'ram.mahavadiya@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-02 07:13:36', 0),
(18, 'sunny.devnani@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-02 07:13:36', 0),
(19, 'heena.mondal@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-02 07:13:36', 0),
(20, 'sunny.devnani@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-02 07:25:42', 0),
(21, 'heena.mondal@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-02 07:26:39', 0),
(22, 'ram.mahavadiya@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-02 07:27:12', 0),
(23, 'sunny.devnani@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-02 07:27:12', 0),
(24, 'heena.mondal@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-02 07:27:12', 0),
(25, 'jigisha.acharya@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-02 07:27:12', 0),
(26, 'vishal.soni@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-02 07:27:12', 0),
(27, 'heena.mondal@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-02 07:30:21', 0),
(28, 'jigisha.acharya@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-02 07:30:33', 0),
(29, 'jigisha.acharya@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-02 07:31:20', 0),
(30, 'heena.mondal@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-02 08:05:58', 0),
(31, 'jigisha.acharya@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-02 08:05:58', 0),
(32, 'harsh0105190@gmail.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:49', 0),
(33, 'zain.cwf@gmail.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:50', 0),
(34, 'klp_jmd@voltamptransformers.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:50', 0),
(35, 'miral9@gmail.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:50', 0),
(36, 'hemant@hemant.in', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:50', 0),
(37, 'chawlashivinder@gmail.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:51', 0),
(38, 'rakesh.agrawal@shivapharmachem.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:51', 0),
(39, 'atul@tarakchemicals.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:52', 0),
(40, 'prittymody@hotmail.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:52', 0),
(41, 'paresh@tsilbrd.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:52', 0),
(42, 'bharat@dineshmills.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:53', 0),
(43, 'ceo@prakashteleservices.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:53', 0),
(44, 'parikhsamir27@hotmail.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:54', 0),
(45, 'arvind.nopany@rishifibc.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:54', 0),
(46, 'chawlatinu@gmail.com', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:54', 0),
(47, 'nilam.acharya@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:55', 0),
(48, 'anil.jadav@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:55', 0),
(49, 'ram.mahavadiya@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:55', 0),
(50, 'susan.thomas@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:56', 0),
(51, 'munavvar.tai@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:56', 0),
(52, 'nikul.davda@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:56', 0),
(53, 'sunny.devnani@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:57', 0),
(54, 'heena.mondal@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:57', 0),
(55, 'jigisha.acharya@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:57', 0),
(56, 'vishal.soni@unitedwayofbaroda.org', 'admin@unitedwayofbaroda.org UNITED WAY OF BARODA', NULL, '', '2022-12-19 06:49:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_overtime`
--

CREATE TABLE `tbl_overtime` (
  `overtime_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `overtime_date` date NOT NULL,
  `overtime_hours` varchar(20) NOT NULL,
  `notes` text DEFAULT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payments`
--

CREATE TABLE `tbl_payments` (
  `payments_id` int(11) NOT NULL,
  `invoices_id` int(11) NOT NULL,
  `trans_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payer_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(64) COLLATE utf8_unicode_ci DEFAULT 'USD',
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_date` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month_paid` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year_paid` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid_by` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `account_id` int(11) NOT NULL DEFAULT 0 COMMENT 'account_id means tracking deposit from which account'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_methods`
--

CREATE TABLE `tbl_payment_methods` (
  `payment_methods_id` int(11) NOT NULL,
  `method_name` varchar(64) NOT NULL DEFAULT 'Paypal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penalty_category`
--

CREATE TABLE `tbl_penalty_category` (
  `penalty_id` int(2) NOT NULL,
  `penalty_type` varchar(100) NOT NULL,
  `fine_amount` int(11) NOT NULL,
  `penalty_days` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_performance_apprisal`
--

CREATE TABLE `tbl_performance_apprisal` (
  `performance_appraisal_id` int(5) NOT NULL,
  `user_id` int(2) NOT NULL,
  `general_remarks` text NOT NULL,
  `appraisal_month` varchar(100) NOT NULL,
  `customer_experiece_management` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `marketing` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `management` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `administration` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `presentation_skill` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `quality_of_work` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `efficiency` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `integrity` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
  `professionalism` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
  `team_work` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
  `critical_thinking` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
  `conflict_management` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
  `attendance` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
  `ability_to_meed_deadline` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_performance_indicator`
--

CREATE TABLE `tbl_performance_indicator` (
  `performance_indicator_id` int(5) NOT NULL,
  `designations_id` int(2) NOT NULL,
  `customer_experiece_management` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `marketing` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `management` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `administration` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `presentation_skill` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `quality_of_work` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `efficiency` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `integrity` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
  `professionalism` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
  `team_work` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
  `critical_thinking` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
  `conflict_management` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
  `attendance` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
  `ability_to_meed_deadline` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pinaction`
--

CREATE TABLE `tbl_pinaction` (
  `pinaction_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `module_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pinaction`
--

INSERT INTO `tbl_pinaction` (`pinaction_id`, `user_id`, `module_id`, `module_name`) VALUES
(1, 1, 3, 'tasks');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_priorities`
--

CREATE TABLE `tbl_priorities` (
  `priority` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_priority`
--

CREATE TABLE `tbl_priority` (
  `priority_id` int(11) NOT NULL,
  `priority` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_priority`
--

INSERT INTO `tbl_priority` (`priority_id`, `priority`) VALUES
(1, 'High'),
(2, 'Medium'),
(3, 'Low');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_private_chat`
--

CREATE TABLE `tbl_private_chat` (
  `private_chat_id` int(11) NOT NULL,
  `chat_title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_private_chat_messages`
--

CREATE TABLE `tbl_private_chat_messages` (
  `private_chat_messages_id` int(11) NOT NULL,
  `private_chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `message_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_private_chat_users`
--

CREATE TABLE `tbl_private_chat_users` (
  `private_chat_users_id` int(11) NOT NULL,
  `private_chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `active` int(11) NOT NULL COMMENT '0 == minimize chat,1 == open chat and  2 == close chat ',
  `unread` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0 COMMENT 'keep last message id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project`
--

CREATE TABLE `tbl_project` (
  `project_id` int(11) NOT NULL,
  `project_no` varchar(100) DEFAULT NULL,
  `project_name` varchar(100) NOT NULL,
  `client_id` text DEFAULT NULL,
  `progress` varchar(50) NOT NULL,
  `calculate_progress` varchar(50) DEFAULT NULL,
  `start_date` varchar(20) NOT NULL,
  `end_date` varchar(20) NOT NULL,
  `alert_overdue` tinyint(1) NOT NULL DEFAULT 0,
  `project_cost` decimal(18,2) NOT NULL DEFAULT 0.00,
  `demo_url` varchar(100) NOT NULL,
  `project_status` varchar(20) NOT NULL,
  `description` text DEFAULT NULL,
  `notify_client` enum('Yes','No') NOT NULL,
  `timer_status` enum('on','off') DEFAULT NULL,
  `timer_started_by` int(11) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `logged_time` int(11) DEFAULT NULL,
  `permission` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `hourly_rate` varchar(200) DEFAULT NULL,
  `fixed_rate` varchar(200) DEFAULT NULL,
  `project_settings` text DEFAULT NULL,
  `with_tasks` enum('yes','no') NOT NULL DEFAULT 'no',
  `estimate_hours` varchar(50) DEFAULT NULL,
  `billing_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_project`
--

INSERT INTO `tbl_project` (`project_id`, `project_no`, `project_name`, `client_id`, `progress`, `calculate_progress`, `start_date`, `end_date`, `alert_overdue`, `project_cost`, `demo_url`, `project_status`, `description`, `notify_client`, `timer_status`, `timer_started_by`, `start_time`, `logged_time`, `permission`, `notes`, `created_time`, `hourly_rate`, `fixed_rate`, `project_settings`, `with_tasks`, `estimate_hours`, `billing_type`) VALUES
(2, '0000', 'csrr 1', '1', '0', NULL, '2022-12-14', '2022-12-15', 0, '1500000.00', '', 'started', 'kjjji', 'Yes', NULL, NULL, NULL, NULL, '{\"16\":[\"view\"],\"15\":[\"view\"],\"27\":[\"view\"]}', NULL, '2022-12-14 04:25:23', '0', NULL, '[\"show_team_members\",\"show_milestones\",\"show_project_tasks\",\"show_project_attachments\",\"show_timesheets\",\"show_project_bugs\",\"show_project_history\",\"show_project_calendar\",\"show_project_comments\",\"show_gantt_chart\",\"show_project_hours\",\"comment_on_project_tasks\",\"show_project_tasks_attachments\",\"show_tasks_hours\",\"show_finance_overview\",\"show_staff_finance_overview\"]', 'no', '0:00', 'fixed_rate'),
(3, '0003', 'test', '1', '0', NULL, '2022-12-19', '2022-12-20', 0, '0.00', '', 'started', 'test', 'Yes', NULL, NULL, NULL, NULL, 'all', NULL, '2022-12-19 06:49:48', '0', NULL, '[\"show_team_members\",\"show_milestones\",\"show_project_tasks\",\"show_project_attachments\",\"show_timesheets\",\"show_project_bugs\",\"show_project_history\",\"show_project_calendar\",\"show_project_comments\",\"show_gantt_chart\",\"show_project_hours\",\"comment_on_project_tasks\",\"show_project_tasks_attachments\",\"show_tasks_hours\",\"show_finance_overview\",\"show_staff_finance_overview\"]', 'no', '0:00', 'fixed_rate');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_settings`
--

CREATE TABLE `tbl_project_settings` (
  `settings_id` int(11) NOT NULL,
  `settings` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_project_settings`
--

INSERT INTO `tbl_project_settings` (`settings_id`, `settings`, `description`) VALUES
(1, 'show_team_members', 'view team members'),
(2, 'show_milestones', 'view project milestones'),
(5, 'show_project_tasks', 'view project tasks'),
(6, 'show_project_attachments', 'view project attachments'),
(7, 'show_timesheets', 'view project timesheets'),
(8, 'show_project_bugs', 'view project bugs'),
(9, 'show_project_history', 'view project history'),
(10, 'show_project_calendar', 'view project calendars'),
(11, 'show_project_comments', 'view project comments'),
(13, 'show_gantt_chart', 'view Gantt chart'),
(14, 'show_project_hours', 'view project hours'),
(15, 'comment_on_project_tasks', 'access To comment on project tasks'),
(16, 'show_project_tasks_attachments', 'view task attachments'),
(20, 'show_tasks_hours', 'show_tasks_hours'),
(21, 'show_finance_overview', 'show_finance_overview'),
(22, 'show_staff_finance_overview', 'admin and staff can see the price');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_proposals`
--

CREATE TABLE `tbl_proposals` (
  `proposals_id` int(11) NOT NULL,
  `reference_no` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_id` int(11) DEFAULT 0,
  `proposal_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proposal_month` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `proposal_year` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `due_date` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alert_overdue` tinyint(1) DEFAULT 0,
  `currency` varchar(32) COLLATE utf8_unicode_ci DEFAULT 'USD',
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `tax` int(11) NOT NULL DEFAULT 0,
  `total_tax` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `date_sent` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proposal_deleted` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `emailed` enum('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
  `show_client` enum('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
  `convert` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `convert_module` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `convert_module_id` int(11) DEFAULT 0,
  `converted_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `permission` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_type` enum('before_tax','after_tax') COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_percent` int(2) NOT NULL DEFAULT 0,
  `discount_total` decimal(18,2) NOT NULL DEFAULT 0.00,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `adjustment` decimal(18,2) NOT NULL DEFAULT 0.00,
  `show_quantity_as` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allowed_cmments` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_proposals_items`
--

CREATE TABLE `tbl_proposals_items` (
  `proposals_items_id` int(11) NOT NULL,
  `proposals_id` int(11) NOT NULL,
  `saved_items_id` int(11) DEFAULT 0,
  `item_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT 'Item Name',
  `item_desc` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT 0.00,
  `unit_cost` decimal(10,2) DEFAULT 0.00,
  `item_tax_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `item_tax_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_tax_total` decimal(10,2) DEFAULT 0.00,
  `total_cost` decimal(10,2) DEFAULT 0.00,
  `date_saved` timestamp NOT NULL DEFAULT current_timestamp(),
  `order` int(11) DEFAULT 0,
  `unit` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `hsn_code` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchases`
--

CREATE TABLE `tbl_purchases` (
  `purchase_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `total` decimal(20,2) DEFAULT NULL,
  `update_stock` enum('Yes','No') DEFAULT 'Yes',
  `status` varchar(20) DEFAULT NULL,
  `emailed` enum('Yes','No') DEFAULT NULL,
  `date_sent` varchar(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `discount_type` enum('before_tax','after_tax') DEFAULT NULL,
  `discount_percent` decimal(10,2) DEFAULT NULL,
  `adjustment` decimal(18,2) DEFAULT NULL,
  `discount_total` decimal(18,2) DEFAULT NULL,
  `show_quantity_as` varchar(10) DEFAULT NULL,
  `permission` text DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_tax` text DEFAULT NULL,
  `tax` decimal(20,2) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_purchases`
--

INSERT INTO `tbl_purchases` (`purchase_id`, `supplier_id`, `reference_no`, `total`, `update_stock`, `status`, `emailed`, `date_sent`, `created_by`, `user_id`, `purchase_date`, `due_date`, `discount_type`, `discount_percent`, `adjustment`, `discount_total`, `show_quantity_as`, `permission`, `created`, `total_tax`, `tax`, `notes`) VALUES
(1, 1, '[INV]-2022-Dec-02-0001', NULL, 'Yes', 'partially_paid', NULL, NULL, 22, 22, '2022-12-02', '2022-12-02', '', '0.00', '0.00', '0.00', 'qty', 'all', '2022-12-02 07:59:01', '{\"tax_name\":[\"GST|12.00\"],\"total_tax\":[\"6000.00\"]}', '6000.00', ''),
(2, 1, '[INV]-2022-Dec-02-0002', NULL, 'Yes', NULL, NULL, NULL, 1, 22, '2022-12-02', '2022-12-10', 'before_tax', '10.00', '0.00', '200.00', 'qty', 'all', '2022-12-02 08:02:37', '{\"tax_name\":[\"GST|12.00\"],\"total_tax\":[\"216.00\"]}', '216.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_items`
--

CREATE TABLE `tbl_purchase_items` (
  `items_id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `item_tax_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `item_tax_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_tax_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quantity` decimal(10,2) DEFAULT 0.00,
  `total_cost` decimal(10,2) DEFAULT 0.00,
  `item_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Item Name',
  `item_desc` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_cost` decimal(10,2) DEFAULT 0.00,
  `order` int(11) DEFAULT 0,
  `date_saved` timestamp NOT NULL DEFAULT current_timestamp(),
  `unit` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hsn_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `saved_items_id` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_purchase_items`
--

INSERT INTO `tbl_purchase_items` (`items_id`, `purchase_id`, `item_tax_rate`, `item_tax_name`, `item_tax_total`, `quantity`, `total_cost`, `item_name`, `item_desc`, `unit_cost`, `order`, `date_saved`, `unit`, `hsn_code`, `saved_items_id`) VALUES
(1, 1, '0.00', '[\"GST|12.00\"]', '6000.00', '500.00', '50000.00', 'HDMI CABLE', '', '100.00', 1, '2022-12-02 07:59:01', 'NOS', '85731000', 1),
(2, 2, '0.00', '[\"GST|12.00\"]', '240.00', '20.00', '2000.00', 'HDMI CABLE', '', '100.00', 1, '2022-12-02 08:02:37', 'NOS', '85731000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_payments`
--

CREATE TABLE `tbl_purchase_payments` (
  `payments_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `trans_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(64) COLLATE utf8_unicode_ci DEFAULT 'USD',
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `month_paid` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year_paid` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid_to` int(11) NOT NULL,
  `paid_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `account_id` int(11) NOT NULL DEFAULT 0 COMMENT 'account_id means tracking deduct from which account'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_purchase_payments`
--

INSERT INTO `tbl_purchase_payments` (`payments_id`, `purchase_id`, `trans_id`, `payment_method`, `amount`, `currency`, `notes`, `payment_date`, `month_paid`, `year_paid`, `paid_to`, `paid_by`, `created_date`, `account_id`) VALUES
(1, 1, '478126', '0', '7000', '?', '', '2022-12-02', '12', '2022', 1, 1, '2022-12-02 08:25:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotationforms`
--

CREATE TABLE `tbl_quotationforms` (
  `quotationforms_id` int(11) NOT NULL,
  `quotationforms_title` varchar(200) NOT NULL,
  `quotationforms_code` text NOT NULL,
  `quotationforms_status` varchar(20) NOT NULL DEFAULT 'enabled' COMMENT 'enabled/disabled',
  `quotations_created_by_id` int(11) NOT NULL,
  `quotationforms_date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotations`
--

CREATE TABLE `tbl_quotations` (
  `quotations_id` int(11) NOT NULL,
  `quotations_form_title` varchar(250) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `quotations_amount` decimal(10,2) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `reviewer_id` int(11) DEFAULT NULL,
  `reviewed_date` date DEFAULT NULL,
  `quotations_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `quotations_status` varchar(15) DEFAULT 'pending' COMMENT 'completed/pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotation_details`
--

CREATE TABLE `tbl_quotation_details` (
  `quotation_details_id` int(11) NOT NULL,
  `quotations_id` int(11) NOT NULL,
  `quotation_form_data` text DEFAULT NULL,
  `quotation_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reminders`
--

CREATE TABLE `tbl_reminders` (
  `reminder_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `notified` enum('Yes','No') NOT NULL DEFAULT 'No',
  `module` varchar(200) NOT NULL,
  `module_id` int(11) NOT NULL,
  `user_id` varchar(40) NOT NULL,
  `notify_by_email` enum('Yes','No') NOT NULL DEFAULT 'No',
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_return_stock`
--

CREATE TABLE `tbl_return_stock` (
  `return_stock_id` int(11) NOT NULL,
  `module` enum('client','supplier') DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `main_status` varchar(200) DEFAULT NULL,
  `invoices_id` int(11) DEFAULT NULL,
  `reference_no` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `total` decimal(20,2) DEFAULT NULL,
  `update_stock` enum('Yes','No') CHARACTER SET utf8 DEFAULT 'Yes',
  `status` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `emailed` enum('Yes','No') CHARACTER SET utf8 DEFAULT NULL,
  `date_sent` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `return_stock_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `discount_type` enum('before_tax','after_tax') CHARACTER SET utf8 DEFAULT NULL,
  `discount_percent` decimal(10,2) DEFAULT NULL,
  `adjustment` decimal(18,2) DEFAULT NULL,
  `discount_total` decimal(18,2) DEFAULT NULL,
  `show_quantity_as` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `permission` text CHARACTER SET utf8 DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT '2019-05-05 07:00:00',
  `total_tax` text CHARACTER SET utf8 DEFAULT NULL,
  `tax` decimal(20,2) DEFAULT NULL,
  `notes` text CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_return_stock_items`
--

CREATE TABLE `tbl_return_stock_items` (
  `items_id` int(11) NOT NULL,
  `return_stock_id` int(11) NOT NULL,
  `invoice_items_id` int(11) DEFAULT NULL,
  `item_tax_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `item_tax_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_tax_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quantity` decimal(10,2) DEFAULT 0.00,
  `total_cost` decimal(10,2) DEFAULT 0.00,
  `item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Item Name',
  `item_desc` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_cost` decimal(10,2) DEFAULT 0.00,
  `order` int(11) DEFAULT 0,
  `date_saved` timestamp NOT NULL DEFAULT '2019-05-05 07:00:00',
  `unit` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hsn_code` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `saved_items_id` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_return_stock_payments`
--

CREATE TABLE `tbl_return_stock_payments` (
  `payments_id` int(11) NOT NULL,
  `return_stock_id` int(11) DEFAULT NULL,
  `trans_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(64) COLLATE utf8_unicode_ci DEFAULT 'USD',
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `month_paid` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year_paid` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid_to` int(11) DEFAULT NULL,
  `paid_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  `account_id` int(11) NOT NULL DEFAULT 0 COMMENT 'account_id means tracking deduct from which account'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_allowance`
--

CREATE TABLE `tbl_salary_allowance` (
  `salary_allowance_id` int(11) NOT NULL,
  `salary_template_id` int(11) NOT NULL,
  `allowance_label` varchar(200) NOT NULL,
  `allowance_value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_deduction`
--

CREATE TABLE `tbl_salary_deduction` (
  `salary_deduction_id` int(11) NOT NULL,
  `salary_template_id` int(11) NOT NULL,
  `deduction_label` varchar(200) NOT NULL,
  `deduction_value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_payment`
--

CREATE TABLE `tbl_salary_payment` (
  `salary_payment_id` int(5) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_month` varchar(20) NOT NULL,
  `fine_deduction` varchar(200) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `comments` text DEFAULT NULL,
  `paid_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `deduct_from` int(11) NOT NULL DEFAULT 0 COMMENT 'deduct from means tracking deduct from which account'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_payment_allowance`
--

CREATE TABLE `tbl_salary_payment_allowance` (
  `salary_payment_allowance_id` int(11) NOT NULL,
  `salary_payment_id` int(11) NOT NULL,
  `salary_payment_allowance_label` varchar(200) NOT NULL,
  `salary_payment_allowance_value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_payment_deduction`
--

CREATE TABLE `tbl_salary_payment_deduction` (
  `salary_payment_deduction` int(11) NOT NULL,
  `salary_payment_id` int(11) NOT NULL,
  `salary_payment_deduction_label` varchar(200) NOT NULL,
  `salary_payment_deduction_value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_payment_details`
--

CREATE TABLE `tbl_salary_payment_details` (
  `salary_payment_details_id` int(11) NOT NULL,
  `salary_payment_id` int(11) NOT NULL,
  `salary_payment_details_label` varchar(200) NOT NULL,
  `salary_payment_details_value` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_payslip`
--

CREATE TABLE `tbl_salary_payslip` (
  `payslip_id` int(5) NOT NULL,
  `payslip_number` varchar(100) DEFAULT NULL,
  `salary_payment_id` int(5) NOT NULL,
  `payslip_generate_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_template`
--

CREATE TABLE `tbl_salary_template` (
  `salary_template_id` int(11) NOT NULL,
  `salary_grade` varchar(200) NOT NULL,
  `basic_salary` varchar(200) NOT NULL,
  `overtime_salary` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_saved_items`
--

CREATE TABLE `tbl_saved_items` (
  `saved_items_id` int(11) NOT NULL,
  `item_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT 'Item Name',
  `item_desc` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_cost` decimal(18,2) DEFAULT 0.00,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `unit_type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_rates_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_tax_rate` decimal(18,2) DEFAULT 0.00,
  `item_tax_total` decimal(18,2) DEFAULT 0.00,
  `quantity` decimal(18,2) DEFAULT 0.00,
  `total_cost` decimal(18,2) DEFAULT 0.00,
  `hsn_code` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_saved_items`
--

INSERT INTO `tbl_saved_items` (`saved_items_id`, `item_name`, `item_desc`, `unit_cost`, `customer_group_id`, `unit_type`, `tax_rates_id`, `item_tax_rate`, `item_tax_total`, `quantity`, `total_cost`, `hsn_code`) VALUES
(1, 'HDMI CABLE', '', '100.00', 1, 'NOS', '[\"1\"]', '0.00', '12.00', '522.00', '112.00', '85731000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sent`
--

CREATE TABLE `tbl_sent` (
  `sent_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `to` varchar(100) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message_body` text NOT NULL,
  `attach_file` text DEFAULT NULL,
  `attach_file_path` text DEFAULT NULL,
  `attach_filename` text DEFAULT NULL,
  `message_time` datetime NOT NULL,
  `deleted` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sessions`
--

CREATE TABLE `tbl_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sessions`
--

INSERT INTO `tbl_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('v3q4obrrf5h4kc3s593f4dgoj2geo0k8', '::1', 1671735152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637313733333134343b6d656e755f6163746976655f69647c613a323a7b693a303b733a313a2231223b693a313b733a313a2230223b7d757365725f6e616d657c733a353a2261646d696e223b656d61696c7c733a31383a227a61696e2e63776640676d61696c2e636f6d223b6e616d657c733a31323a224d696e65736820506174656c223b70686f746f7c733a34333a2275706c6f6164732f5557425f434d594b5f50616c657474655f4c6f676f2d504e475f31382d30392e706e67223b64657369676e6174696f6e735f69647c733a313a2230223b757365725f69647c733a313a2231223b6c6173745f6c6f67696e7c733a31393a22323032322d31322d31342031303a30303a3430223b6f6e6c696e655f74696d657c693a313637313733333138313b6c6f67676564696e7c623a313b757365725f747970657c733a313a2231223b757365725f666c61677c693a313b646972656374696f6e7c733a333a226c7472223b75726c7c733a31353a2261646d696e2f64617368626f617264223b757365725f726f6c6c7c613a3133393a7b693a303b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a313a2231223b733a353a226c6162656c223b733a393a2264617368626f617264223b733a343a226c696e6b223b733a31353a2261646d696e2f64617368626f617264223b733a343a2269636f6e223b733a31353a2266612066612d64617368626f617264223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32332030353a33393a3336223b733a363a22737461747573223b733a313a2231223b7d693a313b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a313a2232223b733a353a226c6162656c223b733a383a2263616c656e646172223b733a343a226c696e6b223b733a31343a2261646d696e2f63616c656e646172223b733a343a2269636f6e223b733a31343a2266612066612d63616c656e646172223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323031372d30342d32332032333a35373a3233223b733a363a22737461747573223b733a313a2231223b7d693a323b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a313a2234223b733a353a226c6162656c223b733a363a22636c69656e74223b733a343a226c696e6b223b733a32363a2261646d696e2f636c69656e742f6d616e6167655f636c69656e74223b733a343a2269636f6e223b733a31313a2266612066612d7573657273223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223132223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31363a3235223b733a363a22737461747573223b733a313a2231223b7d693a333b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a313a2235223b733a353a226c6162656c223b733a373a226d61696c626f78223b733a343a226c696e6b223b733a31333a2261646d696e2f6d61696c626f78223b733a343a2269636f6e223b733a31363a2266612066612d656e76656c6f70652d6f223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31363a3235223b733a363a22737461747573223b733a313a2231223b7d693a343b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a313a2236223b733a353a226c6162656c223b733a373a227469636b657473223b733a343a226c696e6b223b733a31333a2261646d696e2f7469636b657473223b733a343a2269636f6e223b733a31323a2266612066612d7469636b6574223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223130223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a353b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223132223b733a353a226c6162656c223b733a353a2273616c6573223b733a343a226c696e6b223b733a313a2223223b733a343a2269636f6e223b733a31393a2266612066612d73686f7070696e672d63617274223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2239223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a30323a3538223b733a363a22737461747573223b733a313a2231223b7d693a363b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223133223b733a353a226c6162656c223b733a373a22696e766f696365223b733a343a226c696e6b223b733a32383a2261646d696e2f696e766f6963652f6d616e6167655f696e766f696365223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a323a223132223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32332032333a35373a3233223b733a363a22737461747573223b733a313a2231223b7d693a373b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223134223b733a353a226c6162656c223b733a393a22657374696d61746573223b733a343a226c696e6b223b733a31353a2261646d696e2f657374696d61746573223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a323a223132223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a30323a3035223b733a363a22737461747573223b733a313a2231223b7d693a383b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223135223b733a353a226c6162656c223b733a31373a227061796d656e74735f7265636569766564223b733a343a226c696e6b223b733a32363a2261646d696e2f696e766f6963652f616c6c5f7061796d656e7473223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a323a223132223b733a343a22736f7274223b733a313a2233223b733a343a2274696d65223b733a31393a22323031372d30342d32332032333a35373a3234223b733a363a22737461747573223b733a313a2231223b7d693a393b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223136223b733a353a226c6162656c223b733a393a227461785f7261746573223b733a343a226c696e6b223b733a32333a2261646d696e2f696e766f6963652f7461785f7261746573223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a323a223132223b733a343a22736f7274223b733a313a2234223b733a343a2274696d65223b733a31393a22323031372d30342d32332032333a35373a3234223b733a363a22737461747573223b733a313a2231223b7d693a31303b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223231223b733a353a226c6162656c223b733a31303a2271756f746174696f6e73223b733a343a226c696e6b223b733a313a2223223b733a343a2269636f6e223b733a31313a2266612066612d7061737465223b733a363a22706172656e74223b733a323a223132223b733a343a22736f7274223b733a313a2236223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a30353a3437223b733a363a22737461747573223b733a313a2231223b7d693a31313b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223232223b733a353a226c6162656c223b733a31353a2271756f746174696f6e735f6c697374223b733a343a226c696e6b223b733a31363a2261646d696e2f71756f746174696f6e73223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a323a223231223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30352d31382032303a34393a3033223b733a363a22737461747573223b733a313a2231223b7d693a31323b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223233223b733a353a226c6162656c223b733a31353a2271756f746174696f6e735f666f726d223b733a343a226c696e6b223b733a33323a2261646d696e2f71756f746174696f6e732f71756f746174696f6e735f666f726d223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a323a223231223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35303a3233223b733a363a22737461747573223b733a313a2231223b7d693a31333b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223234223b733a353a226c6162656c223b733a343a2275736572223b733a343a226c696e6b223b733a32303a2261646d696e2f757365722f757365725f6c697374223b733a343a2269636f6e223b733a31313a2266612066612d7573657273223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223234223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31373a3234223b733a363a22737461747573223b733a313a2231223b7d693a31343b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223235223b733a353a226c6162656c223b733a383a2273657474696e6773223b733a343a226c696e6b223b733a31343a2261646d696e2f73657474696e6773223b733a343a2269636f6e223b733a31303a2266612066612d636f6773223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223235223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31373a3234223b733a363a22737461747573223b733a313a2231223b7d693a31353b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223236223b733a353a226c6162656c223b733a31353a2264617461626173655f6261636b7570223b733a343a226c696e6b223b733a33303a2261646d696e2f73657474696e67732f64617461626173655f6261636b7570223b733a343a2269636f6e223b733a31343a2266612066612d6461746162617365223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223236223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a30353a3437223b733a363a22737461747573223b733a313a2231223b7d693a31363b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223239223b733a353a226c6162656c223b733a31373a227472616e73616374696f6e735f6d656e75223b733a343a226c696e6b223b733a313a2223223b733a343a2269636f6e223b733a31363a2266612066612d6275696c64696e672d6f223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223131223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a31373b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223330223b733a353a226c6162656c223b733a373a226465706f736974223b733a343a226c696e6b223b733a32363a2261646d696e2f7472616e73616374696f6e732f6465706f736974223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a323a223239223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a30313a3330223b733a363a22737461747573223b733a313a2231223b7d693a31383b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223331223b733a353a226c6162656c223b733a373a22657870656e7365223b733a343a226c696e6b223b733a32363a2261646d696e2f7472616e73616374696f6e732f657870656e7365223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a323a223239223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a30313a3330223b733a363a22737461747573223b733a313a2231223b7d693a31393b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223332223b733a353a226c6162656c223b733a383a227472616e73666572223b733a343a226c696e6b223b733a32373a2261646d696e2f7472616e73616374696f6e732f7472616e73666572223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a323a223239223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a30313a3330223b733a363a22737461747573223b733a313a2231223b7d693a32303b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223333223b733a353a226c6162656c223b733a31393a227472616e73616374696f6e735f7265706f7274223b733a343a226c696e6b223b733a33383a2261646d696e2f7472616e73616374696f6e732f7472616e73616374696f6e735f7265706f7274223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a323a223239223b733a343a22736f7274223b733a313a2233223b733a343a2274696d65223b733a31393a22323031372d30342d32342030303a33373a3135223b733a363a22737461747573223b733a313a2231223b7d693a32313b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223334223b733a353a226c6162656c223b733a31333a2262616c616e63655f7368656574223b733a343a226c696e6b223b733a33323a2261646d696e2f7472616e73616374696f6e732f62616c616e63655f7368656574223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a323a223239223b733a343a22736f7274223b733a313a2235223b733a343a2274696d65223b733a31393a22323031372d30342d32342030303a33373a3136223b733a363a22737461747573223b733a313a2231223b7d693a32323b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223336223b733a353a226c6162656c223b733a393a2262616e6b5f63617368223b733a343a226c696e6b223b733a32383a2261646d696e2f6163636f756e742f6d616e6167655f6163636f756e74223b733a343a2269636f6e223b733a31313a2266612066612d6d6f6e6579223b733a363a22706172656e74223b733a323a223239223b733a343a22736f7274223b733a313a2236223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a30313a3330223b733a363a22737461747573223b733a313a2231223b7d693a32333b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223339223b733a353a226c6162656c223b733a353a226974656d73223b733a343a226c696e6b223b733a32323a2261646d696e2f6974656d732f6974656d735f6c697374223b733a343a2269636f6e223b733a31303a2266612066612d63756265223b733a363a22706172656e74223b733a333a22313530223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a32343b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223432223b733a353a226c6162656c223b733a363a227265706f7274223b733a343a226c696e6b223b733a313a2223223b733a343a2269636f6e223b733a31353a2266612066612d6261722d6368617274223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223233223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31373a3234223b733a363a22737461747573223b733a313a2231223b7d693a32353b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223433223b733a353a226c6162656c223b733a31373a226163636f756e745f73746174656d656e74223b733a343a226c696e6b223b733a33303a2261646d696e2f7265706f72742f6163636f756e745f73746174656d656e74223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a333a22313436223b733a343a22736f7274223b733a313a2235223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a32363b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223434223b733a353a226c6162656c223b733a31333a22696e636f6d655f7265706f7274223b733a343a226c696e6b223b733a32363a2261646d696e2f7265706f72742f696e636f6d655f7265706f7274223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a333a22313436223b733a343a22736f7274223b733a313a2236223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a32373b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223435223b733a353a226c6162656c223b733a31343a22657870656e73655f7265706f7274223b733a343a226c696e6b223b733a32373a2261646d696e2f7265706f72742f657870656e73655f7265706f7274223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a333a22313436223b733a343a22736f7274223b733a313a2237223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a32383b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223436223b733a353a226c6162656c223b733a31343a22696e636f6d655f657870656e7365223b733a343a226c696e6b223b733a32373a2261646d696e2f7265706f72742f696e636f6d655f657870656e7365223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a333a22313436223b733a343a22736f7274223b733a313a2238223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a32393b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223437223b733a353a226c6162656c223b733a31363a22646174655f776973655f7265706f7274223b733a343a226c696e6b223b733a32393a2261646d696e2f7265706f72742f646174655f776973655f7265706f7274223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a333a22313436223b733a343a22736f7274223b733a313a2239223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a33303b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223438223b733a353a226c6162656c223b733a31303a22616c6c5f696e636f6d65223b733a343a226c696e6b223b733a32333a2261646d696e2f7265706f72742f616c6c5f696e636f6d65223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a333a22313436223b733a343a22736f7274223b733a323a223130223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a33313b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223439223b733a353a226c6162656c223b733a31313a22616c6c5f657870656e7365223b733a343a226c696e6b223b733a32343a2261646d696e2f7265706f72742f616c6c5f657870656e7365223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a333a22313436223b733a343a22736f7274223b733a323a223131223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a33323b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223530223b733a353a226c6162656c223b733a31353a22616c6c5f7472616e73616374696f6e223b733a343a226c696e6b223b733a32383a2261646d696e2f7265706f72742f616c6c5f7472616e73616374696f6e223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a333a22313436223b733a343a22736f7274223b733a323a223132223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a33333b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223531223b733a353a226c6162656c223b733a31373a22726563757272696e675f696e766f696365223b733a343a226c696e6b223b733a33313a2261646d696e2f696e766f6963652f726563757272696e675f696e766f696365223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a323a223132223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a30323a3035223b733a363a22737461747573223b733a313a2231223b7d693a33343b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223532223b733a353a226c6162656c223b733a31353a227472616e736665725f7265706f7274223b733a343a226c696e6b223b733a33343a2261646d696e2f7472616e73616374696f6e732f7472616e736665725f7265706f7274223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a323a223239223b733a343a22736f7274223b733a313a2234223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a30313a3330223b733a363a22737461747573223b733a313a2231223b7d693a33353b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223533223b733a353a226c6162656c223b733a31353a227265706f72745f62795f6d6f6e7468223b733a343a226c696e6b223b733a32383a2261646d696e2f7265706f72742f7265706f72745f62795f6d6f6e7468223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a333a22313436223b733a343a22736f7274223b733a323a223133223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a33363b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223534223b733a353a226c6162656c223b733a353a227461736b73223b733a343a226c696e6b223b733a32303a2261646d696e2f7461736b732f616c6c5f7461736b223b733a343a2269636f6e223b733a31313a2266612066612d7461736b73223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2235223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31363a3235223b733a363a22737461747573223b733a313a2231223b7d693a33373b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223535223b733a353a226c6162656c223b733a353a226c65616473223b733a343a226c696e6b223b733a31313a2261646d696e2f6c65616473223b733a343a2269636f6e223b733a31323a2266612066612d726f636b6574223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2238223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31363a3235223b733a363a22737461747573223b733a313a2231223b7d693a33383b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223536223b733a353a226c6162656c223b733a31333a226f70706f7274756e6974696573223b733a343a226c696e6b223b733a31393a2261646d696e2f6f70706f7274756e6974696573223b733a343a2269636f6e223b733a31323a2266612066612d66696c746572223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2237223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31363a3235223b733a363a22737461747573223b733a313a2231223b7d693a33393b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223537223b733a353a226c6162656c223b733a383a2270726f6a65637473223b733a343a226c696e6b223b733a31343a2261646d696e2f70726f6a65637473223b733a343a2269636f6e223b733a31393a2266612066612d666f6c6465722d6f70656e2d6f223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2234223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31363a3235223b733a363a22737461747573223b733a313a2231223b7d693a34303b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223538223b733a353a226c6162656c223b733a343a2262756773223b733a343a226c696e6b223b733a31303a2261646d696e2f62756773223b733a343a2269636f6e223b733a393a2266612066612d627567223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2236223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31363a3235223b733a363a22737461747573223b733a313a2231223b7d693a34313b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223539223b733a353a226c6162656c223b733a373a2270726f6a656374223b733a343a226c696e6b223b733a313a2223223b733a343a2269636f6e223b733a31393a2266612066612d666f6c6465722d6f70656e2d6f223b733a363a22706172656e74223b733a323a223432223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35303a3232223b733a363a22737461747573223b733a313a2231223b7d693a34323b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223630223b733a353a226c6162656c223b733a31323a227461736b735f7265706f7274223b733a343a226c696e6b223b733a32353a2261646d696e2f7265706f72742f7461736b735f7265706f7274223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a323a223432223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35303a3232223b733a363a22737461747573223b733a313a2231223b7d693a34333b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223631223b733a353a226c6162656c223b733a31313a22627567735f7265706f7274223b733a343a226c696e6b223b733a32343a2261646d696e2f7265706f72742f627567735f7265706f7274223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a323a223432223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35303a3232223b733a363a22737461747573223b733a313a2231223b7d693a34343b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223632223b733a353a226c6162656c223b733a31343a227469636b6574735f7265706f7274223b733a343a226c696e6b223b733a32373a2261646d696e2f7265706f72742f7469636b6574735f7265706f7274223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a323a223432223b733a343a22736f7274223b733a313a2233223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35303a3232223b733a363a22737461747573223b733a313a2231223b7d693a34353b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223633223b733a353a226c6162656c223b733a31333a22636c69656e745f7265706f7274223b733a343a226c696e6b223b733a32363a2261646d696e2f7265706f72742f636c69656e745f7265706f7274223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a323a223432223b733a343a22736f7274223b733a313a2234223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35303a3233223b733a363a22737461747573223b733a313a2231223b7d693a34363b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223636223b733a353a226c6162656c223b733a31363a227461736b735f61737369676e6d656e74223b733a343a226c696e6b223b733a32393a2261646d696e2f7265706f72742f7461736b735f61737369676e6d656e74223b733a343a2269636f6e223b733a31383a2266612066612d646f742d636972636c652d6f223b733a363a22706172656e74223b733a323a223539223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35353a3032223b733a363a22737461747573223b733a313a2231223b7d693a34373b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223637223b733a353a226c6162656c223b733a31353a22627567735f61737369676e6d656e74223b733a343a226c696e6b223b733a32383a2261646d696e2f7265706f72742f627567735f61737369676e6d656e74223b733a343a2269636f6e223b733a31383a2266612066612d646f742d636972636c652d6f223b733a363a22706172656e74223b733a323a223539223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35353a3032223b733a363a22737461747573223b733a313a2231223b7d693a34383b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223638223b733a353a226c6162656c223b733a31343a2270726f6a6563745f7265706f7274223b733a343a226c696e6b223b733a32373a2261646d696e2f7265706f72742f70726f6a6563745f7265706f7274223b733a343a2269636f6e223b733a31383a2266612066612d646f742d636972636c652d6f223b733a363a22706172656e74223b733a323a223539223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35353a3032223b733a363a22737461747573223b733a313a2231223b7d693a34393b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223639223b733a353a226c6162656c223b733a31333a22676f616c5f747261636b696e67223b733a343a226c696e6b223b733a31393a2261646d696e2f676f616c5f747261636b696e67223b733a343a2269636f6e223b733a31323a2266612066612d736869656c64223b733a363a22706172656e74223b733a323a223733223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a30353a3437223b733a363a22737461747573223b733a313a2231223b7d693a35303b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223730223b733a353a226c6162656c223b733a31313a226465706172746d656e7473223b733a343a226c696e6b223b733a31373a2261646d696e2f6465706172746d656e7473223b733a343a2269636f6e223b733a31373a2266612066612d757365722d736563726574223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223133223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31363a3235223b733a363a22737461747573223b733a313a2231223b7d693a35313b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223731223b733a353a226c6162656c223b733a373a22686f6c69646179223b733a343a226c696e6b223b733a31333a2261646d696e2f686f6c69646179223b733a343a2269636f6e223b733a32313a2266612066612d63616c656e6461722d706c75732d6f223b733a363a22706172656e74223b733a323a223733223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a30353a3437223b733a363a22737461747573223b733a313a2231223b7d693a35323b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223732223b733a353a226c6162656c223b733a31363a226c656176655f6d616e6167656d656e74223b733a343a226c696e6b223b733a32323a2261646d696e2f6c656176655f6d616e6167656d656e74223b733a343a2269636f6e223b733a31313a2266612066612d706c616e65223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223139223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31373a3234223b733a363a22737461747573223b733a313a2231223b7d693a35333b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223733223b733a353a226c6162656c223b733a393a227574696c6974696573223b733a343a226c696e6b223b733a313a2223223b733a343a2269636f6e223b733a31303a2266612066612d67696674223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223232223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31373a3234223b733a363a22737461747573223b733a313a2231223b7d693a35343b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223734223b733a353a226c6162656c223b733a383a226f76657274696d65223b733a343a226c696e6b223b733a32343a2261646d696e2f7574696c69746965732f6f76657274696d65223b733a343a2269636f6e223b733a31333a2266612066612d636c6f636b2d6f223b733a363a22706172656e74223b733a323a223839223b733a343a22736f7274223b733a313a2239223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a30343a3233223b733a363a22737461747573223b733a313a2231223b7d693a35353b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223735223b733a353a226c6162656c223b733a31323a226f66666963655f73746f636b223b733a343a226c696e6b223b733a313a2223223b733a343a2269636f6e223b733a31333a2266612066612d636f646570656e223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223134223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a35363b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223736223b733a353a226c6162656c223b733a31343a2273746f636b5f63617465676f7279223b733a343a226c696e6b223b733a32363a2261646d696e2f73746f636b2f73746f636b5f63617465676f7279223b733a343a2269636f6e223b733a31333a2266612066612d736c6964657273223b733a363a22706172656e74223b733a323a223735223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35303a3233223b733a363a22737461747573223b733a313a2231223b7d693a35373b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223737223b733a353a226c6162656c223b733a31323a226d616e6167655f73746f636b223b733a343a226c696e6b223b733a313a2223223b733a343a2269636f6e223b733a31333a2266612066612d61726368697665223b733a363a22706172656e74223b733a323a223735223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323031372d30342d32362032303a31313a3130223b733a363a22737461747573223b733a313a2231223b7d693a35383b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223738223b733a353a226c6162656c223b733a31323a2261737369676e5f73746f636b223b733a343a226c696e6b223b733a313a2223223b733a343a2269636f6e223b733a31363a2266612066612d616c69676e2d6c656674223b733a363a22706172656e74223b733a323a223735223b733a343a22736f7274223b733a313a2233223b733a343a2274696d65223b733a31393a22323031372d30342d32362032303a31313a3130223b733a363a22737461747573223b733a313a2231223b7d693a35393b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223739223b733a353a226c6162656c223b733a31323a2273746f636b5f7265706f7274223b733a343a226c696e6b223b733a31383a2261646d696e2f73746f636b2f7265706f7274223b733a343a2269636f6e223b733a31363a2266612066612d6c696e652d6368617274223b733a363a22706172656e74223b733a323a223735223b733a343a22736f7274223b733a313a2234223b733a343a2274696d65223b733a31393a22323031372d30342d32352032323a34383a3235223b733a363a22737461747573223b733a313a2231223b7d693a36303b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223831223b733a353a226c6162656c223b733a31303a2273746f636b5f6c697374223b733a343a226c696e6b223b733a32323a2261646d696e2f73746f636b2f73746f636b5f6c697374223b733a343a2269636f6e223b733a32303a2266612066612d737461636b2d65786368616e6765223b733a363a22706172656e74223b733a323a223735223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323031372d30342d32362032303a31313a3130223b733a363a22737461747573223b733a313a2231223b7d693a36313b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223832223b733a353a226c6162656c223b733a31323a2261737369676e5f73746f636b223b733a343a226c696e6b223b733a32343a2261646d696e2f73746f636b2f61737369676e5f73746f636b223b733a343a2269636f6e223b733a31363a2266612066612d616c69676e2d6c656674223b733a363a22706172656e74223b733a323a223738223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35353a3032223b733a363a22737461747573223b733a313a2231223b7d693a36323b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223833223b733a353a226c6162656c223b733a31393a2261737369676e5f73746f636b5f7265706f7274223b733a343a226c696e6b223b733a33313a2261646d696e2f73746f636b2f61737369676e5f73746f636b5f7265706f7274223b733a343a2269636f6e223b733a31353a2266612066612d6261722d6368617274223b733a363a22706172656e74223b733a323a223738223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35353a3032223b733a363a22737461747573223b733a313a2231223b7d693a36333b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223834223b733a353a226c6162656c223b733a31333a2273746f636b5f686973746f7279223b733a343a226c696e6b223b733a32353a2261646d696e2f73746f636b2f73746f636b5f686973746f7279223b733a343a2269636f6e223b733a31373a2266612066612d66696c652d746578742d6f223b733a363a22706172656e74223b733a323a223737223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35353a3032223b733a363a22737461747573223b733a313a2231223b7d693a36343b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223835223b733a353a226c6162656c223b733a31313a22706572666f726d616e6365223b733a343a226c696e6b223b733a313a2223223b733a343a2269636f6e223b733a31343a2266612066612d6472696262626c65223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223138223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31373a3234223b733a363a22737461747573223b733a313a2231223b7d693a36353b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223836223b733a353a226c6162656c223b733a32313a22706572666f726d616e63655f696e64696361746f72223b733a343a226c696e6b223b733a33393a2261646d696e2f706572666f726d616e63652f706572666f726d616e63655f696e64696361746f72223b733a343a2269636f6e223b733a31323a2266612066612d72616e646f6d223b733a363a22706172656e74223b733a323a223835223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35303a3233223b733a363a22737461747573223b733a313a2231223b7d693a36363b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223837223b733a353a226c6162656c223b733a31383a22706572666f726d616e63655f7265706f7274223b733a343a226c696e6b223b733a33363a2261646d696e2f706572666f726d616e63652f706572666f726d616e63655f7265706f7274223b733a343a2269636f6e223b733a31363a2266612066612d63616c656e6461722d6f223b733a363a22706172656e74223b733a323a223835223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35303a3233223b733a363a22737461747573223b733a313a2231223b7d693a36373b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223838223b733a353a226c6162656c223b733a31343a22676976655f61707072616973616c223b733a343a226c696e6b223b733a34343a2261646d696e2f706572666f726d616e63652f676976655f706572666f726d616e63655f61707072616973616c223b733a343a2269636f6e223b733a31303a2266612066612d706c7573223b733a363a22706172656e74223b733a323a223835223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35303a3233223b733a363a22737461747573223b733a313a2231223b7d693a36383b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223839223b733a353a226c6162656c223b733a373a22706179726f6c6c223b733a343a226c696e6b223b733a313a2223223b733a343a2269636f6e223b733a393a2266612066612d757364223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223137223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31373a3234223b733a363a22737461747573223b733a313a2231223b7d693a36393b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223930223b733a353a226c6162656c223b733a32313a226d616e6167655f73616c6172795f64657461696c73223b733a343a226c696e6b223b733a33353a2261646d696e2f706179726f6c6c2f6d616e6167655f73616c6172795f64657461696c73223b733a343a2269636f6e223b733a393a2266612066612d757364223b733a363a22706172656e74223b733a323a223839223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323031372d30342d32332031323a30363a3337223b733a363a22737461747573223b733a313a2231223b7d693a37303b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223931223b733a353a226c6162656c223b733a32303a22656d706c6f7965655f73616c6172795f6c697374223b733a343a226c696e6b223b733a33343a2261646d696e2f706179726f6c6c2f656d706c6f7965655f73616c6172795f6c697374223b733a343a2269636f6e223b733a31373a2266612066612d757365722d736563726574223b733a363a22706172656e74223b733a323a223839223b733a343a22736f7274223b733a313a2233223b733a343a2274696d65223b733a31393a22323031372d30342d32332031323a30363a3337223b733a363a22737461747573223b733a313a2231223b7d693a37313b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223932223b733a353a226c6162656c223b733a31323a226d616b655f7061796d656e74223b733a343a226c696e6b223b733a32363a2261646d696e2f706179726f6c6c2f6d616b655f7061796d656e74223b733a343a2269636f6e223b733a31313a2266612066612d7461736b73223b733a363a22706172656e74223b733a323a223839223b733a343a22736f7274223b733a313a2234223b733a343a2274696d65223b733a31393a22323031372d30342d32332031323a30363a3337223b733a363a22737461747573223b733a313a2231223b7d693a37323b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223933223b733a353a226c6162656c223b733a31363a2267656e65726174655f706179736c6970223b733a343a226c696e6b223b733a33303a2261646d696e2f706179726f6c6c2f67656e65726174655f706179736c6970223b733a343a2269636f6e223b733a31333a2266612066612d6c6973742d756c223b733a363a22706172656e74223b733a323a223839223b733a343a22736f7274223b733a313a2235223b733a343a2274696d65223b733a31393a22323031372d30342d32332031323a30363a3337223b733a363a22737461747573223b733a313a2231223b7d693a37333b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223934223b733a353a226c6162656c223b733a31353a2273616c6172795f74656d706c617465223b733a343a226c696e6b223b733a32393a2261646d696e2f706179726f6c6c2f73616c6172795f74656d706c617465223b733a343a2269636f6e223b733a31313a2266612066612d6d6f6e6579223b733a363a22706172656e74223b733a323a223839223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32332031323a30363a3337223b733a363a22737461747573223b733a313a2231223b7d693a37343b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223935223b733a353a226c6162656c223b733a31313a22686f75726c795f72617465223b733a343a226c696e6b223b733a32353a2261646d696e2f706179726f6c6c2f686f75726c795f72617465223b733a343a2269636f6e223b733a31333a2266612066612d636c6f636b2d6f223b733a363a22706172656e74223b733a323a223839223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323031372d30342d32332031323a30363a3337223b733a363a22737461747573223b733a313a2231223b7d693a37353b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223936223b733a353a226c6162656c223b733a31353a22706179726f6c6c5f73756d6d617279223b733a343a226c696e6b223b733a32393a2261646d696e2f706179726f6c6c2f706179726f6c6c5f73756d6d617279223b733a343a2269636f6e223b733a31383a2266612066612d63616d6572612d726574726f223b733a363a22706172656e74223b733a323a223839223b733a343a22736f7274223b733a313a2236223b733a343a2274696d65223b733a31393a22323031372d30342d32332031323a30363a3337223b733a363a22737461747573223b733a313a2231223b7d693a37363b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223937223b733a353a226c6162656c223b733a31343a2270726f766964656e745f66756e64223b733a343a226c696e6b223b733a32383a2261646d696e2f706179726f6c6c2f70726f766964656e745f66756e64223b733a343a2269636f6e223b733a31353a2266612066612d627269656663617365223b733a363a22706172656e74223b733a323a223839223b733a343a22736f7274223b733a313a2238223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a30343a3233223b733a363a22737461747573223b733a313a2231223b7d693a37373b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223938223b733a353a226c6162656c223b733a31343a22616476616e63655f73616c617279223b733a343a226c696e6b223b733a32383a2261646d696e2f706179726f6c6c2f616476616e63655f73616c617279223b733a343a2269636f6e223b733a31393a2266612066612d63632d6d617374657263617264223b733a363a22706172656e74223b733a323a223839223b733a343a22736f7274223b733a313a2237223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a30343a3233223b733a363a22737461747573223b733a313a2231223b7d693a37383b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a323a223939223b733a353a226c6162656c223b733a31343a22656d706c6f7965655f6177617264223b733a343a226c696e6b223b733a31313a2261646d696e2f6177617264223b733a343a2269636f6e223b733a31323a2266612066612d74726f706879223b733a363a22706172656e74223b733a323a223839223b733a343a22736f7274223b733a323a223130223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a30353a3437223b733a363a22737461747573223b733a313a2231223b7d693a37393b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313030223b733a353a226c6162656c223b733a31333a22616e6e6f756e63656d656e7473223b733a343a226c696e6b223b733a31393a2261646d696e2f616e6e6f756e63656d656e7473223b733a343a2269636f6e223b733a31393a2266612066612d62756c6c686f726e2069636f6e223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223231223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31373a3234223b733a363a22737461747573223b733a313a2231223b7d693a38303b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313031223b733a353a226c6162656c223b733a383a22747261696e696e67223b733a343a226c696e6b223b733a31343a2261646d696e2f747261696e696e67223b733a343a2269636f6e223b733a31343a2266612066612d7375697463617365223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223230223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31373a3234223b733a363a22737461747573223b733a313a2231223b7d693a38313b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313032223b733a353a226c6162656c223b733a31323a226a6f625f63697263756c6172223b733a343a226c696e6b223b733a313a2223223b733a343a2269636f6e223b733a31313a2266612066612d676c6f6265223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223136223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31373a3234223b733a363a22737461747573223b733a313a2231223b7d693a38323b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313033223b733a353a226c6162656c223b733a31313a226a6f62735f706f73746564223b733a343a226c696e6b223b733a33303a2261646d696e2f6a6f625f63697263756c61722f6a6f62735f706f73746564223b733a343a2269636f6e223b733a31323a2266612066612d7469636b6574223b733a363a22706172656e74223b733a333a22313032223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35303a3231223b733a363a22737461747573223b733a313a2231223b7d693a38333b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313034223b733a353a226c6162656c223b733a31373a226a6f62735f6170706c69636174696f6e73223b733a343a226c696e6b223b733a33363a2261646d696e2f6a6f625f63697263756c61722f6a6f62735f6170706c69636174696f6e73223b733a343a2269636f6e223b733a31333a2266612066612d636f6d70617373223b733a363a22706172656e74223b733a333a22313032223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35303a3231223b733a363a22737461747573223b733a313a2231223b7d693a38343b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313035223b733a353a226c6162656c223b733a31303a22617474656e64616e6365223b733a343a226c696e6b223b733a313a2223223b733a343a2269636f6e223b733a31353a2266612066612d66696c652d74657874223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223135223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31373a3234223b733a363a22737461747573223b733a313a2231223b7d693a38353b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313036223b733a353a226c6162656c223b733a31383a2274696d656368616e67655f72657175657374223b733a343a226c696e6b223b733a33353a2261646d696e2f617474656e64616e63652f74696d656368616e67655f72657175657374223b733a343a2269636f6e223b733a31363a2266612066612d63616c656e6461722d6f223b733a363a22706172656e74223b733a333a22313035223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35303a3231223b733a363a22737461747573223b733a313a2231223b7d693a38363b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313037223b733a353a226c6162656c223b733a31373a22617474656e64616e63655f7265706f7274223b733a343a226c696e6b223b733a33343a2261646d696e2f617474656e64616e63652f617474656e64616e63655f7265706f7274223b733a343a2269636f6e223b733a31353a2266612066612d66696c652d74657874223b733a363a22706172656e74223b733a333a22313035223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35303a3231223b733a363a22737461747573223b733a313a2231223b7d693a38373b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313038223b733a353a226c6162656c223b733a31323a2274696d655f686973746f7279223b733a343a226c696e6b223b733a32393a2261646d696e2f617474656e64616e63652f74696d655f686973746f7279223b733a343a2269636f6e223b733a31333a2266612066612d636c6f636b2d6f223b733a363a22706172656e74223b733a333a22313035223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031362d30352d33302031323a35303a3231223b733a363a22737461747573223b733a313a2231223b7d693a38383b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313039223b733a353a226c6162656c223b733a393a2270756c6c2d646f776e223b733a343a226c696e6b223b733a303a22223b733a343a2269636f6e223b733a303a22223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031362d30352d33312031363a34333a3230223b733a363a22737461747573223b733a313a2230223b7d693a38393b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313130223b733a353a226c6162656c223b733a31313a2266696c656d616e61676572223b733a343a226c696e6b223b733a31373a2261646d696e2f66696c656d616e61676572223b733a343a2269636f6e223b733a31303a2266612066612d66696c65223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2233223b733a343a2274696d65223b733a31393a22323031372d30362d31302031383a31363a3235223b733a363a22737461747573223b733a313a2231223b7d693a39303b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313131223b733a353a226c6162656c223b733a31353a22636f6d70616e795f64657461696c73223b733a343a226c696e6b223b733a31343a2261646d696e2f73657474696e6773223b733a343a2269636f6e223b733a32333a2266612066612d66772066612d696e666f2d636972636c65223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a30383a3436223b733a363a22737461747573223b733a313a2232223b7d693a39313b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313132223b733a353a226c6162656c223b733a31353a2273797374656d5f73657474696e6773223b733a343a226c696e6b223b733a32313a2261646d696e2f73657474696e67732f73797374656d223b733a343a2269636f6e223b733a31393a2266612066612d66772066612d6465736b746f70223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a30383a3436223b733a363a22737461747573223b733a313a2232223b7d693a39323b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313133223b733a353a226c6162656c223b733a31343a22656d61696c5f73657474696e6773223b733a343a226c696e6b223b733a32303a2261646d696e2f73657474696e67732f656d61696c223b733a343a2269636f6e223b733a32303a2266612066612d66772066612d656e76656c6f7065223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2233223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a30383a3436223b733a363a22737461747573223b733a313a2232223b7d693a39333b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313134223b733a353a226c6162656c223b733a31353a22656d61696c5f74656d706c61746573223b733a343a226c696e6b223b733a32343a2261646d696e2f73657474696e67732f74656d706c61746573223b733a343a2269636f6e223b733a32353a2266612066612d66772066612d70656e63696c2d737175617265223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2234223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a30383a3436223b733a363a22737461747573223b733a313a2232223b7d693a39343b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313135223b733a353a226c6162656c223b733a31373a22656d61696c5f696e746567726174696f6e223b733a343a226c696e6b223b733a33323a2261646d696e2f73657474696e67732f656d61696c5f696e746567726174696f6e223b733a343a2269636f6e223b733a32323a2266612066612d66772066612d656e76656c6f70652d6f223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2235223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a30383a3436223b733a363a22737461747573223b733a313a2232223b7d693a39353b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313136223b733a353a226c6162656c223b733a31363a227061796d656e745f73657474696e6773223b733a343a226c696e6b223b733a32333a2261646d696e2f73657474696e67732f7061796d656e7473223b733a343a2269636f6e223b733a31383a2266612066612d66772066612d646f6c6c6172223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2236223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a30383a3436223b733a363a22737461747573223b733a313a2232223b7d693a39363b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313137223b733a353a226c6162656c223b733a31363a22696e766f6963655f73657474696e6773223b733a343a226c696e6b223b733a32323a2261646d696e2f73657474696e67732f696e766f696365223b733a343a2269636f6e223b733a31373a2266612066612d66772066612d6d6f6e6579223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a30383a3436223b733a363a22737461747573223b733a313a2232223b7d693a39373b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313138223b733a353a226c6162656c223b733a31373a22657374696d6174655f73657474696e6773223b733a343a226c696e6b223b733a32333a2261646d696e2f73657474696e67732f657374696d617465223b733a343a2269636f6e223b733a31383a2266612066612d66772066612d66696c652d6f223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a30383a3436223b733a363a22737461747573223b733a313a2232223b7d693a39383b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313139223b733a353a226c6162656c223b733a32323a227469636b6574735f6c656164735f73657474696e6773223b733a343a226c696e6b223b733a32323a2261646d696e2f73657474696e67732f7469636b657473223b733a343a2269636f6e223b733a31383a2266612066612d66772066612d7469636b6574223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a30383a3436223b733a363a22737461747573223b733a313a2232223b7d693a39393b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313230223b733a353a226c6162656c223b733a31343a227468656d655f73657474696e6773223b733a343a226c696e6b223b733a32303a2261646d696e2f73657474696e67732f7468656d65223b733a343a2269636f6e223b733a31363a2266612066612d66772066612d636f6465223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a30383a3436223b733a363a22737461747573223b733a313a2232223b7d693a3130303b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313231223b733a353a226c6162656c223b733a31323a22776f726b696e675f64617973223b733a343a226c696e6b223b733a32373a2261646d696e2f73657474696e67732f776f726b696e675f64617973223b733a343a2269636f6e223b733a32303a2266612066612d66772066612d63616c656e646172223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a31333a3431223b733a363a22737461747573223b733a313a2232223b7d693a3130313b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313232223b733a353a226c6162656c223b733a31343a226c656176655f63617465676f7279223b733a343a226c696e6b223b733a32393a2261646d696e2f73657474696e67732f6c656176655f63617465676f7279223b733a343a2269636f6e223b733a32313a2266612066612d66772066612d706167656c696e6573223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a31333a3431223b733a363a22737461747573223b733a313a2232223b7d693a3130323b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313233223b733a353a226c6162656c223b733a31353a22696e636f6d655f63617465676f7279223b733a343a226c696e6b223b733a33303a2261646d696e2f73657474696e67732f696e636f6d655f63617465676f7279223b733a343a2269636f6e223b733a32333a2266612066612d66772066612d6365727469666963617465223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a31333a3431223b733a363a22737461747573223b733a313a2232223b7d693a3130333b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313234223b733a353a226c6162656c223b733a31363a22657870656e73655f63617465676f7279223b733a343a226c696e6b223b733a33313a2261646d696e2f73657474696e67732f657870656e73655f63617465676f7279223b733a343a2269636f6e223b733a31373a2266612066612d66772066612d7461736b73223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a31333a3431223b733a363a22737461747573223b733a313a2232223b7d693a3130343b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313235223b733a353a226c6162656c223b733a31343a22637573746f6d65725f67726f7570223b733a343a226c696e6b223b733a32393a2261646d696e2f73657474696e67732f637573746f6d65725f67726f7570223b733a343a2269636f6e223b733a31373a2266612066612d66772066612d7573657273223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a31333a3431223b733a363a22737461747573223b733a313a2232223b7d693a3130353b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313236223b733a353a226c6162656c223b733a31333a22636f6e74726163745f74797065223b733a343a226c696e6b223b733a32383a2261646d696e2f73657474696e67732f636f6e74726163745f74797065223b733a343a2269636f6e223b733a31383a2266612066612d66772066612d66696c652d6f223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a31333a3431223b733a363a22737461747573223b733a313a2232223b7d693a3130363b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313237223b733a353a226c6162656c223b733a31313a226c6561645f737461747573223b733a343a226c696e6b223b733a32363a2261646d696e2f73657474696e67732f6c6561645f737461747573223b733a343a2269636f6e223b733a31393a2266612066612d66772066612d6c6973742d756c223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a31333a3431223b733a363a22737461747573223b733a313a2232223b7d693a3130373b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313238223b733a353a226c6162656c223b733a31313a226c6561645f736f75726365223b733a343a226c696e6b223b733a32363a2261646d696e2f73657474696e67732f6c6561645f736f75726365223b733a343a2269636f6e223b733a32323a2266612066612d66772066612d6172726f772d646f776e223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a31333a3431223b733a363a22737461747573223b733a313a2232223b7d693a3130383b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313239223b733a353a226c6162656c223b733a32363a226f70706f7274756e69746965735f73746174655f726561736f6e223b733a343a226c696e6b223b733a34313a2261646d696e2f73657474696e67732f6f70706f7274756e69746965735f73746174655f726561736f6e223b733a343a2269636f6e223b733a32343a2266612066612d66772066612d646f742d636972636c652d6f223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a31333a3431223b733a363a22737461747573223b733a313a2232223b7d693a3130393b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313330223b733a353a226c6162656c223b733a31323a22637573746f6d5f6669656c64223b733a343a226c696e6b223b733a32373a2261646d696e2f73657474696e67732f637573746f6d5f6669656c64223b733a343a2269636f6e223b733a31383a2266612066612d66772066612d737461722d6f223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a31333a3431223b733a363a22737461747573223b733a313a2232223b7d693a3131303b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313331223b733a353a226c6162656c223b733a31343a227061796d656e745f6d6574686f64223b733a343a226c696e6b223b733a32393a2261646d696e2f73657474696e67732f7061796d656e745f6d6574686f64223b733a343a2269636f6e223b733a31373a2266612066612d66772066612d6d6f6e6579223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a31333a3431223b733a363a22737461747573223b733a313a2232223b7d693a3131313b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313332223b733a353a226c6162656c223b733a373a2263726f6e6a6f62223b733a343a226c696e6b223b733a32323a2261646d696e2f73657474696e67732f63726f6e6a6f62223b733a343a2269636f6e223b733a31383a2266612066612d66772066612d636f6e74616f223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a31363a3230223b733a363a22737461747573223b733a313a2232223b7d693a3131323b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313333223b733a353a226c6162656c223b733a31353a226d656e755f616c6c6f636174696f6e223b733a343a226c696e6b223b733a33303a2261646d696e2f73657474696e67732f6d656e755f616c6c6f636174696f6e223b733a343a2269636f6e223b733a32323a2266612066612d66772066612066612d636f6d70617373223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a31363a3230223b733a363a22737461747573223b733a313a2232223b7d693a3131333b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313334223b733a353a226c6162656c223b733a31323a226e6f74696669636174696f6e223b733a343a226c696e6b223b733a32373a2261646d696e2f73657474696e67732f6e6f74696669636174696f6e223b733a343a2269636f6e223b733a31383a2266612066612d66772066612d62656c6c2d6f223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a31363a3230223b733a363a22737461747573223b733a313a2232223b7d693a3131343b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313335223b733a353a226c6162656c223b733a31383a22656d61696c5f6e6f74696669636174696f6e223b733a343a226c696e6b223b733a33333a2261646d696e2f73657474696e67732f656d61696c5f6e6f74696669636174696f6e223b733a343a2269636f6e223b733a31383a2266612066612d66772066612d62656c6c2d6f223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a31363a3230223b733a363a22737461747573223b733a313a2232223b7d693a3131353b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313336223b733a353a226c6162656c223b733a31353a2264617461626173655f6261636b7570223b733a343a226c696e6b223b733a33303a2261646d696e2f73657474696e67732f64617461626173655f6261636b7570223b733a343a2269636f6e223b733a32303a2266612066612d66772066612d6461746162617365223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a31363a3230223b733a363a22737461747573223b733a313a2232223b7d693a3131363b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313337223b733a353a226c6162656c223b733a31323a227472616e736c6174696f6e73223b733a343a226c696e6b223b733a32373a2261646d696e2f73657474696e67732f7472616e736c6174696f6e73223b733a343a2269636f6e223b733a32303a2266612066612d66772066612d6c616e6775616765223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a31363a3230223b733a363a22737461747573223b733a313a2232223b7d693a3131373b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313338223b733a353a226c6162656c223b733a31333a2273797374656d5f757064617465223b733a343a226c696e6b223b733a32383a2261646d696e2f73657474696e67732f73797374656d5f757064617465223b733a343a2269636f6e223b733a32373a2266612066612d66772066612d70656e63696c2d7371756172652d6f223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352032313a31363a3230223b733a363a22737461747573223b733a313a2232223b7d693a3131383b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313339223b733a353a226c6162656c223b733a31323a22707269766174655f63686174223b733a343a226c696e6b223b733a31383a22636861742f636f6e766572736174696f6e73223b733a343a2269636f6e223b733a31343a2266612066612d656e76656c6f7065223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223237223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a3131393b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313430223b733a353a226c6162656c223b733a393a2270726f706f73616c73223b733a343a226c696e6b223b733a31353a2261646d696e2f70726f706f73616c73223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a323a223132223b733a343a22736f7274223b733a313a2233223b733a343a2274696d65223b733a31393a22323031372d30372d31362031363a33343a3135223b733a363a22737461747573223b733a313a2231223b7d693a3132303b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313431223b733a353a226c6162656c223b733a31333a226b6e6f776c6564676562617365223b733a343a226c696e6b223b733a313a2223223b733a343a2269636f6e223b733a32313a2266612066612d7175657374696f6e2d636972636c65223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a323a223130223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a3132313b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313432223b733a353a226c6162656c223b733a31333a226b6e6f776c6564676562617365223b733a343a226c696e6b223b733a31393a2261646d696e2f6b6e6f776c6564676562617365223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a333a22313431223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a3132323b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313433223b733a353a226c6162656c223b733a31303a2263617465676f72696573223b733a343a226c696e6b223b733a33303a2261646d696e2f6b6e6f776c65646765626173652f63617465676f72696573223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a333a22313431223b733a343a22736f7274223b733a313a2233223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a3132333b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313434223b733a353a226c6162656c223b733a383a2261727469636c6573223b733a343a226c696e6b223b733a32383a2261646d696e2f6b6e6f776c65646765626173652f61727469636c6573223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a333a22313431223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a3132343b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313435223b733a353a226c6162656c223b733a31383a2264617368626f6172645f73657474696e6773223b733a343a226c696e6b223b733a32343a2261646d696e2f73657474696e67732f64617368626f617264223b733a343a2269636f6e223b733a32313a2266612066612d66772066612d64617368626f617264223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a323a223131223b733a343a2274696d65223b733a31393a22323031372d30342d32362031333a30383a3436223b733a363a22737461747573223b733a313a2232223b7d693a3132353b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313436223b733a353a226c6162656c223b733a32303a227472616e73616374696f6e735f7265706f727473223b733a343a226c696e6b223b733a313a2223223b733a343a2269636f6e223b733a31363a2266612066612d6275696c64696e672d6f223b733a363a22706172656e74223b733a323a223432223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a3132363b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313437223b733a353a226c6162656c223b733a353a2273616c6573223b733a343a226c696e6b223b733a32353a2261646d696e2f7265706f72742f73616c65735f7265706f7274223b733a343a2269636f6e223b733a31393a2266612066612d73686f7070696e672d63617274223b733a363a22706172656e74223b733a323a223432223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a3132373b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313438223b733a353a226c6162656c223b733a31353a226d61726b5f617474656e64616e6365223b733a343a226c696e6b223b733a32313a2261646d696e2f6d61726b5f617474656e64616e6365223b733a343a2269636f6e223b733a31353a2266612066612d66696c652d74657874223b733a363a22706172656e74223b733a333a22313035223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2231223b7d693a3132383b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313439223b733a353a226c6162656c223b733a31303a22616c6c6f7765645f6970223b733a343a226c696e6b223b733a32353a2261646d696e2f73657474696e67732f616c6c6f7765645f6970223b733a343a2269636f6e223b733a31323a2266612066612d736572766572223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323032322d31312d32382031393a30383a3538223b733a363a22737461747573223b733a313a2232223b7d693a3132393b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313530223b733a353a226c6162656c223b733a353a2273746f636b223b733a343a226c696e6b223b733a313a2223223b733a343a2269636f6e223b733a31323a2266612066612d6c6179657273223b733a363a22706172656e74223b733a313a2230223b733a343a22736f7274223b733a313a2238223b733a343a2274696d65223b733a31393a22323031382d31312d31352031363a35323a3230223b733a363a22737461747573223b733a313a2231223b7d693a3133303b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313531223b733a353a226c6162656c223b733a383a22737570706c696572223b733a343a226c696e6b223b733a31343a2261646d696e2f737570706c696572223b733a343a2269636f6e223b733a31343a2269636f6e2d627269656663617365223b733a363a22706172656e74223b733a333a22313530223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323031392d30352d30322030313a31303a3532223b733a363a22737461747573223b733a313a2231223b7d693a3133313b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313532223b733a353a226c6162656c223b733a383a227075726368617365223b733a343a226c696e6b223b733a31343a2261646d696e2f7075726368617365223b733a343a2269636f6e223b733a31323a2269636f6e2d68616e64626167223b733a363a22706172656e74223b733a333a22313530223b733a343a22736f7274223b733a313a2232223b733a343a2274696d65223b733a31393a22323031392d30352d30322030313a31303a3532223b733a363a22737461747573223b733a313a2231223b7d693a3133323b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313533223b733a353a226c6162656c223b733a31323a2272657475726e5f73746f636b223b733a343a226c696e6b223b733a31383a2261646d696e2f72657475726e5f73746f636b223b733a343a2269636f6e223b733a31343a2269636f6e2d73686172652d616c74223b733a363a22706172656e74223b733a333a22313530223b733a343a22736f7274223b733a313a2233223b733a343a2274696d65223b733a31393a22323031392d30352d30322030313a31303a3532223b733a363a22737461747573223b733a313a2231223b7d693a3133333b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313534223b733a353a226c6162656c223b733a31363a2270757263686173655f7061796d656e74223b733a343a226c696e6b223b733a32373a2261646d696e2f70757263686173652f616c6c5f7061796d656e7473223b733a343a2269636f6e223b733a31363a2269636f6e2d6372656469742d63617264223b733a363a22706172656e74223b733a333a22313530223b733a343a22736f7274223b733a313a2234223b733a343a2274696d65223b733a31393a22323031392d30352d30322030313a34323a3439223b733a363a22737461747573223b733a313a2231223b7d693a3133343b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313535223b733a353a226c6162656c223b733a31373a2270757263686173655f73657474696e6773223b733a343a226c696e6b223b733a32333a2261646d696e2f73657474696e67732f7075726368617365223b733a343a2269636f6e223b733a31383a2266612d66772069636f6e2d68616e64626167223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32362030303a30383a3436223b733a363a22737461747573223b733a313a2232223b7d693a3133353b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313536223b733a353a226c6162656c223b733a31313a226372656469745f6e6f7465223b733a343a226c696e6b223b733a31373a2261646d696e2f6372656469745f6e6f7465223b733a343a2269636f6e223b733a31343a2266612066612d636972636c652d6f223b733a363a22706172656e74223b733a323a223132223b733a343a22736f7274223b733a313a2231223b733a343a2274696d65223b733a31393a22323031372d30362d31302030333a30323a3035223b733a363a22737461747573223b733a313a2231223b7d693a3133363b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313537223b733a353a226c6162656c223b733a32303a226372656469745f6e6f74655f73657474696e6773223b733a343a226c696e6b223b733a32363a2261646d696e2f73657474696e67732f6372656469745f6e6f7465223b733a343a2269636f6e223b733a31373a2266612066612d66772066612d6d6f6e6579223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352030363a30383a3436223b733a363a22737461747573223b733a313a2232223b7d693a3133373b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313538223b733a353a226c6162656c223b733a31383a2270726f706f73616c735f73657474696e6773223b733a343a226c696e6b223b733a32343a2261646d696e2f73657474696e67732f70726f706f73616c73223b733a343a2269636f6e223b733a31363a2266612066612d66772066612d6c656166223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352030363a30383a3436223b733a363a22737461747573223b733a313a2232223b7d693a3133383b4f3a383a22737464436c617373223a383a7b733a373a226d656e755f6964223b733a333a22313539223b733a353a226c6162656c223b733a31373a2270726f6a656374735f73657474696e6773223b733a343a226c696e6b223b733a32333a2261646d696e2f73657474696e67732f70726f6a65637473223b733a343a2269636f6e223b733a32353a2266612066612d66772066612d666f6c6465722d6f70656e2d6f223b733a363a22706172656e74223b733a323a223235223b733a343a22736f7274223b733a313a2230223b733a343a2274696d65223b733a31393a22323031372d30342d32352030363a30383a3436223b733a363a22737461747573223b733a313a2232223b7d7d);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `status_id` int(11) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock`
--

CREATE TABLE `tbl_stock` (
  `stock_id` int(11) NOT NULL,
  `stock_sub_category_id` int(11) NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `total_stock` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock_category`
--

CREATE TABLE `tbl_stock_category` (
  `stock_category_id` int(11) NOT NULL,
  `stock_category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock_sub_category`
--

CREATE TABLE `tbl_stock_sub_category` (
  `stock_sub_category_id` int(11) NOT NULL,
  `stock_category_id` int(11) NOT NULL,
  `stock_sub_category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suppliers`
--

CREATE TABLE `tbl_suppliers` (
  `supplier_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `permission` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_suppliers`
--

INSERT INTO `tbl_suppliers` (`supplier_id`, `name`, `mobile`, `phone`, `email`, `address`, `permission`) VALUES
(1, 'SEVENSOFT TECHNOLOGIES', '9662611617', '', 'HARSH0105190@GMAILLCOM', '', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_task`
--

CREATE TABLE `tbl_task` (
  `task_id` int(5) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `milestones_id` int(11) DEFAULT NULL,
  `opportunities_id` int(11) DEFAULT NULL,
  `goal_tracking_id` int(11) DEFAULT NULL,
  `sub_task_id` int(11) DEFAULT NULL,
  `transactions_id` int(11) DEFAULT NULL,
  `task_name` varchar(200) NOT NULL,
  `task_description` text NOT NULL,
  `task_start_date` date NOT NULL,
  `due_date` date NOT NULL,
  `task_created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `task_status` varchar(30) DEFAULT NULL,
  `task_progress` int(2) NOT NULL,
  `calculate_progress` varchar(200) DEFAULT NULL,
  `task_hour` varchar(10) NOT NULL,
  `tasks_notes` text DEFAULT NULL,
  `timer_status` enum('on','off') NOT NULL DEFAULT 'off',
  `timer_started_by` int(11) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `logged_time` int(11) NOT NULL DEFAULT 0,
  `leads_id` int(11) DEFAULT NULL,
  `bug_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `permission` text DEFAULT NULL,
  `client_visible` varchar(5) DEFAULT NULL,
  `custom_date` text DEFAULT NULL,
  `hourly_rate` decimal(18,2) DEFAULT 0.00,
  `billable` varchar(20) NOT NULL DEFAULT 'No',
  `index_no` int(10) NOT NULL,
  `milestones_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_task`
--

INSERT INTO `tbl_task` (`task_id`, `project_id`, `milestones_id`, `opportunities_id`, `goal_tracking_id`, `sub_task_id`, `transactions_id`, `task_name`, `task_description`, `task_start_date`, `due_date`, `task_created_date`, `task_status`, `task_progress`, `calculate_progress`, `task_hour`, `tasks_notes`, `timer_status`, `timer_started_by`, `start_time`, `logged_time`, `leads_id`, `bug_id`, `created_by`, `permission`, `client_visible`, `custom_date`, `hourly_rate`, `billable`, `index_no`, `milestones_order`) VALUES
(3, NULL, NULL, NULL, NULL, 2, NULL, 'HDMI', '', '2022-12-05', '2022-12-05', '2022-12-14 04:30:40', 'completed', 100, NULL, '0:00', NULL, 'off', 1, 0, 1670988806, NULL, NULL, 21, '{\"22\":[\"edit\",\"view\"]}', NULL, NULL, '0.00', 'Yes', 3, 0),
(4, 2, 0, NULL, NULL, NULL, NULL, 'partty1', '', '2022-12-14', '2022-12-14', '2022-12-14 04:27:38', 'not_started', 0, NULL, '0:00', NULL, 'off', NULL, NULL, 0, NULL, NULL, 1, '{\"15\":[\"edit\",\"delete\",\"view\"]}', 'Yes', NULL, '0.00', 'No', 4, 0),
(5, 2, 0, NULL, NULL, NULL, NULL, 'parsr2', '', '2022-12-14', '2022-12-14', '2022-12-14 04:30:31', 'not_started', 0, NULL, '0:00', NULL, 'off', NULL, NULL, 0, NULL, NULL, 1, '{\"27\":[\"edit\",\"delete\",\"view\"]}', NULL, NULL, '0.00', 'No', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tasks_timer`
--

CREATE TABLE `tbl_tasks_timer` (
  `tasks_timer_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `timer_status` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'off',
  `start_time` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_time` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_timed` timestamp NOT NULL DEFAULT current_timestamp(),
  `reason` text CHARACTER SET utf8 DEFAULT NULL,
  `edited_by` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_tasks_timer`
--

INSERT INTO `tbl_tasks_timer` (`tasks_timer_id`, `task_id`, `user_id`, `timer_status`, `start_time`, `end_time`, `date_timed`, `reason`, `edited_by`, `project_id`) VALUES
(1, 3, 22, 'on', '1669963406', NULL, '2022-12-02 07:43:26', NULL, NULL, NULL),
(2, 3, 22, 'off', '1669963406', '1669963572', '2022-12-02 07:46:12', NULL, NULL, NULL),
(5, 3, 22, 'off', '0', '1669964465', '2022-12-02 08:01:05', NULL, NULL, NULL),
(9, 3, 1, 'off', '0', '1670985691', '2022-12-14 03:41:31', NULL, NULL, NULL),
(10, 3, 1, 'off', '0', '1670988477', '2022-12-14 04:27:57', NULL, NULL, NULL),
(11, 3, 1, 'off', '0', '1670988640', '2022-12-14 04:30:40', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_task_attachment`
--

CREATE TABLE `tbl_task_attachment` (
  `task_attachment_id` int(5) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `upload_time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `leads_id` int(11) DEFAULT NULL,
  `opportunities_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `bug_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_task_comment`
--

CREATE TABLE `tbl_task_comment` (
  `task_comment_id` int(5) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment` text NOT NULL,
  `comments_attachment` text DEFAULT NULL,
  `comment_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `leads_id` int(11) DEFAULT NULL,
  `opportunities_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `bug_id` int(11) DEFAULT NULL,
  `goal_tracking_id` int(11) DEFAULT NULL,
  `task_attachment_id` int(11) DEFAULT 0,
  `uploaded_files_id` int(11) DEFAULT 0,
  `comments_reply_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_task_uploaded_files`
--

CREATE TABLE `tbl_task_uploaded_files` (
  `uploaded_files_id` int(11) NOT NULL,
  `task_attachment_id` int(11) NOT NULL,
  `files` text NOT NULL,
  `uploaded_path` text NOT NULL,
  `file_name` text NOT NULL,
  `size` int(10) NOT NULL,
  `ext` varchar(100) NOT NULL,
  `is_image` int(2) NOT NULL,
  `image_width` int(5) NOT NULL,
  `image_height` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tax_rates`
--

CREATE TABLE `tbl_tax_rates` (
  `tax_rates_id` int(11) NOT NULL,
  `tax_rate_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `tax_rate_percent` decimal(10,2) NOT NULL DEFAULT 0.00,
  `permission` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_tax_rates`
--

INSERT INTO `tbl_tax_rates` (`tax_rates_id`, `tax_rate_name`, `tax_rate_percent`, `permission`) VALUES
(1, 'GST', '12.00', 'all'),
(2, 'GST', '18.00', 'all'),
(3, 'GST', '28.00', 'all'),
(4, 'GST', '5.00', 'all'),
(5, 'GST', '3.00', 'all'),
(6, 'GST', '0.00', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tickets`
--

CREATE TABLE `tbl_tickets` (
  `tickets_id` int(10) NOT NULL,
  `project_id` int(11) DEFAULT 0,
  `ticket_code` varchar(32) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `subject` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `departments_id` int(11) DEFAULT NULL,
  `reporter` int(10) DEFAULT 0,
  `priority` varchar(50) DEFAULT NULL,
  `upload_file` text DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `permission` text DEFAULT NULL,
  `last_reply` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tickets_replies`
--

CREATE TABLE `tbl_tickets_replies` (
  `tickets_replies_id` int(10) NOT NULL,
  `tickets_id` bigint(10) DEFAULT NULL,
  `ticket_reply_id` int(11) DEFAULT 0,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `replier` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `replierid` int(10) DEFAULT NULL,
  `attachment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_todo`
--

CREATE TABLE `tbl_todo` (
  `todo_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `due_date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '1= in_progress 2= on hold 3= done',
  `assigned` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_training`
--

CREATE TABLE `tbl_training` (
  `training_id` int(5) NOT NULL,
  `user_id` int(11) NOT NULL,
  `assigned_by` int(11) NOT NULL,
  `training_name` varchar(100) NOT NULL,
  `vendor_name` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `finish_date` date NOT NULL,
  `training_cost` varchar(300) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = pending, 1 = started, 2 = completed, 3 = terminated',
  `performance` tinyint(1) DEFAULT 0 COMMENT '0 = not concluded, 1 = satisfactory, 2 = average, 3 = poor, 4 = excellent',
  `remarks` text NOT NULL,
  `upload_file` text DEFAULT NULL,
  `permission` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transactions`
--

CREATE TABLE `tbl_transactions` (
  `transactions_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `invoices_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(200) DEFAULT NULL,
  `type` enum('Income','Expense','Transfer') NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `amount` decimal(18,2) NOT NULL,
  `recurring_type` varchar(20) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` enum('Yes','No') DEFAULT NULL,
  `total_cycles` int(11) DEFAULT NULL,
  `done_cycles` int(11) DEFAULT NULL,
  `custom_recurring` tinyint(1) DEFAULT 0,
  `last_recurring_date` date DEFAULT NULL,
  `recurring_from` int(11) DEFAULT NULL,
  `paid_by` int(11) NOT NULL DEFAULT 0,
  `payment_methods_id` int(11) NOT NULL,
  `reference` varchar(200) NOT NULL,
  `status` enum('Cleared','Uncleared','Reconciled','Void','non_approved','paid') NOT NULL DEFAULT 'non_approved',
  `notes` text NOT NULL,
  `tags` text NOT NULL,
  `tax` decimal(18,2) NOT NULL DEFAULT 0.00,
  `date` date NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `debit` decimal(18,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(18,2) NOT NULL DEFAULT 0.00,
  `total_balance` decimal(18,2) NOT NULL DEFAULT 0.00,
  `transfer_id` int(11) NOT NULL DEFAULT 0,
  `permission` text DEFAULT NULL,
  `attachement` text DEFAULT NULL,
  `client_visible` enum('Yes','No') NOT NULL DEFAULT 'No',
  `added_by` int(11) NOT NULL DEFAULT 0,
  `paid` int(11) NOT NULL DEFAULT 0,
  `billable` enum('Yes','No') NOT NULL DEFAULT 'No',
  `deposit` text DEFAULT NULL,
  `deposit_2` text DEFAULT NULL,
  `under_55` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_transactions`
--

INSERT INTO `tbl_transactions` (`transactions_id`, `project_id`, `account_id`, `invoices_id`, `name`, `type`, `category_id`, `amount`, `recurring_type`, `repeat_every`, `recurring`, `total_cycles`, `done_cycles`, `custom_recurring`, `last_recurring_date`, `recurring_from`, `paid_by`, `payment_methods_id`, `reference`, `status`, `notes`, `tags`, `tax`, `date`, `create_date`, `debit`, `credit`, `total_balance`, `transfer_id`, `permission`, `attachement`, `client_visible`, `added_by`, `paid`, `billable`, `deposit`, `deposit_2`, `under_55`) VALUES
(1, NULL, 1, 0, 'Purchase Payment', 'Expense', 0, '7000.00', NULL, 0, 'No', 0, 0, 0, NULL, NULL, 0, 0, '478126', 'paid', 'This Expense from purchase payment.The Reference is Purchase Ref No: <a href=\'http://localhost/1pms/admin/purchase/purchase_details/1\'>[INV]-2022-Dec-02-0001</a> and trans id: <a href=\'http://localhost/1pms/admin/purchase/payments_details/1\'>478126</a>', '', '0.00', '2022-12-02', NULL, '7000.00', '0.00', '-7000.00', 0, '{\"15\":[\"view\"]}', NULL, 'No', 0, 0, 'No', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfer`
--

CREATE TABLE `tbl_transfer` (
  `transfer_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `payment_methods_id` int(11) NOT NULL,
  `reference` varchar(200) NOT NULL,
  `status` enum('Cleared','Uncleared','Reconciled','Void') NOT NULL DEFAULT 'Cleared',
  `notes` text NOT NULL,
  `date` date NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'Transfer',
  `permission` mediumtext DEFAULT NULL,
  `attachement` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_uploaded_files`
--

CREATE TABLE `tbl_uploaded_files` (
  `uploaded_files_id` int(11) NOT NULL,
  `files_id` int(11) NOT NULL,
  `files` text NOT NULL,
  `uploaded_path` text NOT NULL,
  `file_name` text NOT NULL,
  `size` int(10) NOT NULL,
  `ext` varchar(100) NOT NULL,
  `is_image` int(2) NOT NULL,
  `image_width` int(5) NOT NULL,
  `image_height` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `banned` tinyint(4) NOT NULL DEFAULT 0,
  `ban_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_password_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_email_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `online_time` int(32) NOT NULL DEFAULT 0 COMMENT '1 = online 0 = offline ',
  `permission` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_email` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_email_type` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_encription` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_action` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_host_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_additional_flag` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_postmaster_run` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_path_slug` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `username`, `password`, `email`, `role_id`, `activated`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`, `online_time`, `permission`, `active_email`, `smtp_email_type`, `smtp_encription`, `smtp_action`, `smtp_host_name`, `smtp_username`, `smtp_password`, `smtp_port`, `smtp_additional_flag`, `last_postmaster_run`, `media_path_slug`) VALUES
(1, 'admin', '34ac75ac66847f2ec50f885529b21d6b9d9a0307c4c98f148f612eed800e4e05ac881510a3434d7a97015e7a8e891d858cd190473c4ea7b25c0937c5100afe12', 'zain.cwf@gmail.com', 1, 1, 0, NULL, 'e3d0a4d04df9ac631b611a5eac5b58b4', '2020-12-11 00:32:47', 'info@example.com', 'f7759397a92158586467ea7eb7fe5336', NULL, '2022-12-14 10:00:40', '2019-09-06 16:55:13', '2022-12-22 18:19:55', 1671733195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Kunjal', '70fa0ccb45dd9c7fd2cae6975b80f2dadff65da96b7655c68407a68b22e88e42e47cdced6ff1187ab48c13c2ae9779d041472b8c531b342c4ad3ad6e1cdc19aa', 'klp_jmd@voltamptransformers.com', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 09:09:59', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Minesh', '34ac75ac66847f2ec50f885529b21d6b9d9a0307c4c98f148f612eed800e4e05ac881510a3434d7a97015e7a8e891d858cd190473c4ea7b25c0937c5100afe12', 'miral9@gmail.com', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 08:53:29', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Hemant', '6c89e7b980f3cd2b7c87f89c5b48838f0c9265e2d658acee3746da896f5e919fcba984ec18335674e35c9602dec5040d4d663bd0469fa4d4ac0c9f07b768ad3c', 'hemant@hemant.in', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 09:08:19', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Shivinder', 'c3d3a93489cad8a4bf3e9b1aba141d36629e9e0825c501096f49c87b343127b1de4040c0fadbfa235dbd92fdc43fdf438d0fc105d7bb117a9eada4913e992528', 'chawlashivinder@gmail.com', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 09:09:53', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Rakesh', 'e6fbe1b30cab20b29e84f32424ad2dbf5badb80184665c6d91c2fb5a277a40078d3da69f5468ef5e33eab10c71b22f4b5a05ca18523266dd95c9a0cd56604cd7', 'rakesh.agrawal@shivapharmachem.com', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 09:11:40', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Atul', '84b567b024d72508c6299b5a038dd4ad1c127eb78c4bbda8a2ec855a362af23bd387df6ec3b7feb36b781a61a1a7e799e2367e78813cde87586e26dfab27949f', 'atul@tarakchemicals.com', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 09:13:56', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Pritty', '21b26dec6c2ba39422caee064314767b1b3b4eefaf42f04ed28c6e889e5d877134496643de3c84dd2bec2f20a07b2ca0d17a4aec8568bb5512f1543699a47e6b', 'prittymody@hotmail.com', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 09:16:09', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Paresh', '965589cd500cba8535228a7a4bc0608681321bec55fc64a84ac8aba328ff5f41c299aa7ebe91c280fbb8f5107f2dd329dbacfb7c0a0b12ff72abb71a71f03c98', 'paresh@tsilbrd.com', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 09:17:14', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Bharat', 'db70c30247eb10b0b1d2a6e641bdf9440af335261e6da9394acfd2de87611e5f0be79aa73e5380393056bb17f628daeffe48ee652ef30aefeef8372dc6e16ad7', 'bharat@dineshmills.com', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 09:18:24', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Pinakin', '6dbe9eda0f26b23579545df27fdcde86522b16b7a0ab52274644d3e00701cf1c10b797f72468e18e51f442e6212106894489c6276529f5d2ef67c4455187299a', 'ceo@prakashteleservices.com', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 09:19:59', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Samir', '04d1c462671c0b571aef5076eba4fae149462ae88d1ce1c070a77a03b08460b8496ac73824e4bfe3c700161f7772de414527811762ef424c6d3d7f077ee78f47', 'parikhsamir27@hotmail.com', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 09:21:19', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Arvind', '8d0668e7e0dd550575c76335b1a2f9499b79cb7eb769778b54d85131df0fef85269cb440428418293126e9dff5ba7538a92263bce112d485c02baec422fb7ae6', 'arvind.nopany@rishifibc.com', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 09:26:23', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Harleen', '206c46e115f93e8195ae2272cb2bd403ab8b88717122d7403b114b2b802f7976367e32c24bb48b94b783eac70e65a1884cd997fc0594f326ac6c51fdd029880e', 'chawlatinu@gmail.com', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 09:27:33', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Anil', '8190f673a9f3c6673bc3fa9dd04b503d172db61c0b708696231a8964e0276cdf9938c5b2b3a2380649ee05e315cd7b3693c18769233a0d40acf18b8c2a2e7522', 'anil.jadav@unitedwayofbaroda.org', 3, 1, 0, 'bannd', NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 10:29:19', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Nilam', '49e899f49a85b66e6f3cf935dbb2c3a98e01b8dfdec229e1364ac2b55ca0c5bacd4422b5cead8dea6f1cc0aba75a2fb14bc9f9ccffd2ff9116854a249ed9dd2a', 'nilam.acharya@unitedwayofbaroda.org', 3, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 09:36:03', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Munavar', '1407b173c9e143b2846c12d1c67b7dad8681b1dc042ea4ffd50e83722497f8fc092fc5a093fca89d0dd5bc691c4a1d8210966b40c1e5eebea10864dc5e390610', 'munavvar.tai@unitedwayofbaroda.org', 3, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 09:42:38', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Nikul', '13088cb647a560e64d932c4575cb52aa76e8b9f4d3a68ede9d0a0e4eea16c7ed4e91145375f361f4fb3ffe43a40539d71295bf62bb5261ef87f3931a961bfcc7', 'nikul.davda@unitedwayofbaroda.org', 3, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 09:46:12', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Isha', 'b63716aa33fea84a452f62ecb291fdcb02988f390736545453b1e78b323c6d2aade1e2dca81effae18638c82d5a1d1e5669f53cc0aae4ada6ff9c5648a5fe178', 'isha.pandya@unitedwayofbaroda.org', 3, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 09:50:27', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Sunny', '7e59d61dd5feb57e43b29d117b416ce5a74de6b9c3f3c3ac843c4bb41b6d7ffb5ba85ca82469d6d48af51b3ad17d79e28a19111e0321342d6f00e5901d894294', 'sunny.devnani@unitedwayofbaroda.org', 3, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 09:54:26', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Heena', 'd405e65ad3981ed9dff7b2270f1046ed4d4bd8b0bfa3e1ed457a59b7bc19f9a80d3747a69ad36a7107322ca1234132fd82ee8e89c958134fda7ec899d2f66ff0', 'heena.mondal@unitedwayofbaroda.org', 3, 1, 0, 'banned', NULL, NULL, NULL, NULL, '127.0.0.1', '2022-12-02 13:11:35', NULL, '2022-12-02 07:41:35', 1669963019, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Jigisha', 'ee179eafb3c85c10a026b689d1ee7c8eb89ff945c0cbd73efefa0aab29ac0e7850149a5c6a368cd2647d7f8762f536f7d2e46ffe3af24bc031ae0c62f89731ba', 'jigisha.acharya@unitedwayofbaroda.org', 3, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '2022-12-02 13:31:05', NULL, '2022-12-02 08:01:05', 1669964414, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Roshni', 'cea6d2276f1af9d89cdf55219668d86cbed4141b76adfb107a403abe6ce49a5ea8b1a8cc83040f95ae1194a0530556ca219d8da93fe0d69f0700a7aed29fd73f', 'roshni.sonar@unitedwayofbaroda.org', 3, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 10:01:29', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Vishal', '841d22b06b68f7517e7b21ee4dbc686ba21e4b8ecda3e76545a210f4abd18189f027dfa064a25eedb52b1dc9100e64334e713c229abe2cd1d9e9bfa113bc47b0', 'vishal.soni@unitedwayofbaroda.org', 3, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 10:03:44', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Aksha', '4f862e4f9cc620ab4415b71e612e1d748080c52378317998d8d4ae706e614b7cffc7f297917b867ac21ef940dceb00ee21cf68ecc6054a6bc14942a2a542d44c', 'aksha.rathod@unitedwayofbaroda.org', 3, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 10:05:49', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Ekta', '1b343c72e0b8d7836e9fde58016072da45c6c13a3fdaca267ccc64319cb92b915245b849fb9c71717c6e7937411704aa8b618730810dcf6329d96d93501482d4', 'ekta.shah@unitedwayofbaroda.org', 3, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 10:08:12', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Ram', 'd074cb43af643ad1514037e671e18edf67ae67bac0ddab042f733a2607482766b1415431e89fe6c53892c8465bb6d611088e1f00c3e106e36a62bb21ec8def82', 'ram.mahavadiya@unitedwayofbaroda.org', 3, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '2022-12-14 10:01:49', NULL, '2022-12-14 04:31:49', 1670988670, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Nishi', '685bcc928bc12faacee30ab5a52e34a8251f58c48cf7785eb050c2f3d703529c59b1f9850423e736a869f59033acfbe963d67499339d030de62321a7ba22cea4', 'uwb-fsf@unitedwayofbaroda.org', 3, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 10:13:29', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Sosamma', '2bb2a6274ad44d40b876c48f2bb1d370d3acb4033e2e73a0dd64a4c9ccb4da9ed97abfa69d3572c0c843eee8c053b380dc0a70a48ffe0eb2213f7e883d8759b4', 'susan.thomas@unitedwayofbaroda.org', 3, 1, 0, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, '2022-12-01 10:15:42', 0, 'all', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_role`
--

CREATE TABLE `tbl_user_role` (
  `user_role_id` int(11) NOT NULL,
  `designations_id` int(11) DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `view` int(11) DEFAULT 0,
  `created` int(11) DEFAULT 0,
  `edited` int(11) DEFAULT 0,
  `deleted` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_role`
--

INSERT INTO `tbl_user_role` (`user_role_id`, `designations_id`, `menu_id`, `view`, `created`, `edited`, `deleted`) VALUES
(1, 1, 1, 1, 0, 0, 0),
(2, 1, 2, 2, 0, 0, 0),
(3, 1, 5, 5, 0, 0, 0),
(4, 1, 110, 110, 0, 0, 0),
(5, 1, 57, 57, 57, 57, 57),
(6, 1, 54, 54, 54, 54, 54),
(7, 1, 58, 58, 58, 58, 58),
(8, 1, 56, 56, 56, 56, 56),
(9, 1, 150, 150, 150, 150, 150),
(10, 1, 39, 39, 39, 39, 39),
(11, 1, 151, 151, 151, 151, 151),
(12, 1, 152, 152, 152, 152, 152),
(13, 1, 153, 153, 153, 153, 153),
(14, 1, 154, 154, 154, 154, 154),
(15, 1, 55, 55, 55, 55, 55),
(16, 1, 12, 12, 12, 12, 12),
(17, 1, 13, 13, 13, 13, 13),
(18, 1, 156, 156, 156, 156, 156),
(19, 1, 14, 14, 14, 14, 14),
(20, 1, 51, 51, 51, 51, 51),
(21, 1, 15, 15, 15, 15, 15),
(22, 1, 140, 140, 140, 140, 140),
(23, 1, 16, 16, 16, 16, 16),
(24, 1, 21, 0, 0, 0, 0),
(25, 1, 22, 22, 0, 0, 0),
(26, 1, 23, 23, 23, 23, 23),
(27, 1, 141, 141, 141, 141, 141),
(28, 1, 142, 142, 0, 0, 0),
(29, 1, 144, 144, 144, 144, 144),
(30, 1, 143, 143, 143, 143, 143),
(31, 1, 6, 6, 6, 6, 6),
(32, 1, 29, 29, 29, 29, 29),
(33, 1, 31, 31, 31, 31, 31),
(34, 1, 30, 30, 30, 30, 30),
(35, 1, 32, 32, 32, 32, 32),
(36, 1, 33, 33, 0, 0, 0),
(37, 1, 52, 52, 0, 0, 0),
(38, 1, 34, 34, 0, 0, 0),
(39, 1, 36, 36, 36, 36, 36),
(40, 1, 4, 4, 4, 4, 4),
(41, 1, 70, 70, 70, 70, 70),
(42, 1, 75, 75, 75, 75, 75),
(43, 1, 76, 76, 76, 76, 76),
(44, 1, 81, 81, 81, 81, 81),
(45, 1, 77, 0, 0, 0, 0),
(46, 1, 84, 84, 0, 0, 0),
(47, 1, 78, 0, 0, 0, 0),
(48, 1, 82, 82, 82, 82, 82),
(49, 1, 83, 83, 0, 0, 0),
(50, 1, 79, 79, 0, 0, 0),
(51, 1, 105, 105, 105, 105, 105),
(52, 1, 108, 108, 0, 0, 0),
(53, 1, 106, 106, 0, 0, 0),
(54, 1, 148, 148, 148, 148, 148),
(55, 1, 107, 107, 0, 0, 0),
(56, 1, 102, 102, 102, 102, 102),
(57, 1, 103, 103, 103, 103, 103),
(58, 1, 104, 104, 0, 0, 0),
(59, 1, 89, 89, 89, 89, 89),
(60, 1, 94, 94, 94, 94, 94),
(61, 1, 95, 95, 95, 95, 95),
(62, 1, 90, 90, 0, 0, 0),
(63, 1, 91, 91, 0, 0, 0),
(64, 1, 92, 92, 0, 0, 0),
(65, 1, 93, 93, 0, 0, 0),
(66, 1, 96, 96, 0, 0, 0),
(67, 1, 98, 98, 0, 0, 0),
(68, 1, 97, 97, 0, 0, 0),
(69, 1, 74, 74, 0, 0, 0),
(70, 1, 99, 99, 99, 99, 99),
(71, 1, 85, 85, 85, 85, 85),
(72, 1, 86, 86, 86, 86, 0),
(73, 1, 88, 88, 88, 88, 0),
(74, 1, 87, 87, 0, 0, 0),
(75, 1, 72, 72, 0, 0, 0),
(76, 1, 101, 101, 101, 101, 101),
(77, 1, 100, 100, 100, 100, 100),
(78, 1, 73, 73, 73, 73, 73),
(79, 1, 71, 71, 71, 71, 71),
(80, 1, 69, 69, 69, 69, 69),
(81, 1, 42, 42, 42, 42, 42),
(82, 1, 59, 0, 0, 0, 0),
(83, 1, 66, 66, 0, 0, 0),
(84, 1, 67, 67, 0, 0, 0),
(85, 1, 68, 68, 0, 0, 0),
(86, 1, 146, 0, 0, 0, 0),
(87, 1, 43, 43, 0, 0, 0),
(88, 1, 44, 44, 0, 0, 0),
(89, 1, 45, 45, 0, 0, 0),
(90, 1, 46, 46, 0, 0, 0),
(91, 1, 47, 47, 0, 0, 0),
(92, 1, 48, 48, 0, 0, 0),
(93, 1, 49, 49, 0, 0, 0),
(94, 1, 50, 50, 0, 0, 0),
(95, 1, 53, 53, 0, 0, 0),
(96, 1, 147, 147, 147, 147, 147),
(97, 1, 60, 60, 0, 0, 0),
(98, 1, 61, 61, 0, 0, 0),
(99, 1, 62, 62, 0, 0, 0),
(100, 1, 63, 63, 0, 0, 0),
(101, 1, 24, 24, 24, 24, 24),
(102, 1, 25, 25, 25, 25, 25),
(103, 1, 120, 120, 0, 0, 0),
(104, 1, 121, 121, 0, 0, 0),
(105, 1, 122, 122, 122, 122, 122),
(106, 1, 123, 123, 123, 123, 123),
(107, 1, 124, 124, 124, 124, 124),
(108, 1, 125, 125, 125, 125, 125),
(109, 1, 126, 126, 126, 126, 126),
(110, 1, 127, 127, 127, 127, 127),
(111, 1, 128, 128, 128, 128, 128),
(112, 1, 119, 119, 0, 0, 0),
(113, 1, 118, 118, 0, 0, 0),
(114, 1, 117, 117, 0, 0, 0),
(115, 1, 129, 129, 129, 129, 129),
(116, 1, 130, 130, 130, 130, 130),
(117, 1, 155, 155, 155, 155, 155),
(118, 1, 157, 157, 157, 157, 157),
(119, 1, 158, 158, 158, 158, 158),
(120, 1, 138, 138, 0, 0, 0),
(121, 1, 137, 137, 0, 0, 0),
(122, 1, 131, 131, 0, 0, 0),
(123, 1, 132, 132, 0, 0, 0),
(124, 1, 133, 133, 0, 0, 0),
(125, 1, 159, 159, 159, 159, 159),
(126, 1, 136, 136, 0, 0, 0),
(127, 1, 134, 134, 0, 0, 0),
(128, 1, 135, 135, 0, 0, 0),
(129, 1, 111, 111, 0, 0, 0),
(130, 1, 149, 149, 149, 149, 149),
(131, 1, 112, 112, 0, 0, 0),
(132, 1, 113, 113, 0, 0, 0),
(133, 1, 114, 114, 0, 0, 0),
(134, 1, 115, 115, 0, 0, 0),
(135, 1, 116, 116, 0, 0, 0),
(136, 1, 145, 145, 0, 0, 0),
(137, 1, 26, 26, 0, 0, 0),
(138, 1, 139, 139, 0, 0, 0),
(277, 3, 1, 1, 0, 0, 0),
(278, 3, 2, 2, 0, 0, 0),
(279, 3, 5, 5, 0, 0, 0),
(280, 3, 110, 110, 0, 0, 0),
(281, 3, 57, 57, 57, 57, 57),
(282, 3, 54, 54, 54, 54, 54),
(283, 3, 58, 58, 58, 58, 58),
(284, 3, 56, 56, 56, 56, 56),
(285, 3, 150, 150, 150, 150, 150),
(286, 3, 39, 39, 39, 39, 39),
(287, 3, 151, 151, 151, 151, 151),
(288, 3, 152, 152, 152, 152, 152),
(289, 3, 153, 153, 153, 153, 153),
(290, 3, 154, 154, 154, 154, 154),
(291, 3, 55, 55, 55, 55, 55),
(292, 3, 12, 12, 12, 12, 12),
(293, 3, 13, 13, 13, 13, 13),
(294, 3, 156, 156, 156, 156, 156),
(295, 3, 14, 14, 14, 14, 14),
(296, 3, 51, 51, 51, 51, 51),
(297, 3, 15, 15, 15, 15, 15),
(298, 3, 140, 140, 140, 140, 140),
(299, 3, 16, 16, 16, 16, 16),
(300, 3, 21, 0, 0, 0, 0),
(301, 3, 22, 22, 0, 0, 0),
(302, 3, 23, 23, 23, 23, 23),
(303, 3, 141, 141, 141, 141, 141),
(304, 3, 142, 142, 0, 0, 0),
(305, 3, 144, 144, 144, 144, 144),
(306, 3, 143, 143, 143, 143, 143),
(307, 3, 6, 6, 6, 6, 6),
(308, 3, 29, 29, 29, 29, 29),
(309, 3, 31, 31, 31, 31, 31),
(310, 3, 30, 30, 30, 30, 30),
(311, 3, 32, 32, 32, 32, 32),
(312, 3, 33, 33, 0, 0, 0),
(313, 3, 52, 52, 0, 0, 0),
(314, 3, 34, 34, 0, 0, 0),
(315, 3, 36, 36, 36, 36, 36),
(316, 3, 4, 4, 4, 4, 4),
(317, 3, 70, 70, 70, 70, 70),
(318, 3, 75, 75, 75, 75, 75),
(319, 3, 76, 76, 76, 76, 76),
(320, 3, 81, 81, 81, 81, 81),
(321, 3, 77, 0, 0, 0, 0),
(322, 3, 84, 84, 0, 0, 0),
(323, 3, 78, 0, 0, 0, 0),
(324, 3, 82, 82, 82, 82, 82),
(325, 3, 83, 83, 0, 0, 0),
(326, 3, 79, 79, 0, 0, 0),
(327, 3, 105, 105, 105, 105, 105),
(328, 3, 108, 108, 0, 0, 0),
(329, 3, 106, 106, 0, 0, 0),
(330, 3, 148, 148, 148, 148, 148),
(331, 3, 107, 107, 0, 0, 0),
(332, 3, 102, 102, 102, 102, 102),
(333, 3, 103, 103, 103, 103, 103),
(334, 3, 104, 104, 0, 0, 0),
(335, 3, 89, 89, 89, 89, 89),
(336, 3, 94, 94, 94, 94, 94),
(337, 3, 95, 95, 95, 95, 95),
(338, 3, 90, 90, 0, 0, 0),
(339, 3, 91, 91, 0, 0, 0),
(340, 3, 92, 92, 0, 0, 0),
(341, 3, 93, 93, 0, 0, 0),
(342, 3, 96, 96, 0, 0, 0),
(343, 3, 98, 98, 0, 0, 0),
(344, 3, 97, 97, 0, 0, 0),
(345, 3, 74, 74, 0, 0, 0),
(346, 3, 99, 99, 99, 99, 99),
(347, 3, 85, 85, 85, 85, 85),
(348, 3, 86, 86, 86, 86, 0),
(349, 3, 88, 88, 88, 88, 0),
(350, 3, 87, 87, 0, 0, 0),
(351, 3, 72, 72, 0, 0, 0),
(352, 3, 101, 101, 101, 101, 101),
(353, 3, 100, 100, 100, 100, 100),
(354, 3, 73, 73, 73, 73, 73),
(355, 3, 71, 71, 71, 71, 71),
(356, 3, 69, 69, 69, 69, 69),
(357, 3, 42, 42, 42, 42, 42),
(358, 3, 59, 0, 0, 0, 0),
(359, 3, 66, 66, 0, 0, 0),
(360, 3, 67, 67, 0, 0, 0),
(361, 3, 68, 68, 0, 0, 0),
(362, 3, 146, 0, 0, 0, 0),
(363, 3, 43, 43, 0, 0, 0),
(364, 3, 44, 44, 0, 0, 0),
(365, 3, 45, 45, 0, 0, 0),
(366, 3, 46, 46, 0, 0, 0),
(367, 3, 47, 47, 0, 0, 0),
(368, 3, 48, 48, 0, 0, 0),
(369, 3, 49, 49, 0, 0, 0),
(370, 3, 50, 50, 0, 0, 0),
(371, 3, 53, 53, 0, 0, 0),
(372, 3, 147, 147, 147, 147, 147),
(373, 3, 60, 60, 0, 0, 0),
(374, 3, 61, 61, 0, 0, 0),
(375, 3, 62, 62, 0, 0, 0),
(376, 3, 63, 63, 0, 0, 0),
(377, 3, 24, 24, 24, 24, 24),
(378, 3, 25, 25, 25, 25, 25),
(379, 3, 120, 120, 0, 0, 0),
(380, 3, 121, 121, 0, 0, 0),
(381, 3, 122, 122, 122, 122, 122),
(382, 3, 123, 123, 123, 123, 123),
(383, 3, 124, 124, 124, 124, 124),
(384, 3, 125, 125, 125, 125, 125),
(385, 3, 126, 126, 126, 126, 126),
(386, 3, 127, 127, 127, 127, 127),
(387, 3, 128, 128, 128, 128, 128),
(388, 3, 119, 119, 0, 0, 0),
(389, 3, 118, 118, 0, 0, 0),
(390, 3, 117, 117, 0, 0, 0),
(391, 3, 129, 129, 129, 129, 129),
(392, 3, 130, 130, 130, 130, 130),
(393, 3, 155, 155, 155, 155, 155),
(394, 3, 157, 157, 157, 157, 157),
(395, 3, 158, 158, 158, 158, 158),
(396, 3, 138, 138, 0, 0, 0),
(397, 3, 137, 137, 0, 0, 0),
(398, 3, 131, 131, 0, 0, 0),
(399, 3, 132, 132, 0, 0, 0),
(400, 3, 133, 133, 0, 0, 0),
(401, 3, 159, 159, 159, 159, 159),
(402, 3, 136, 136, 0, 0, 0),
(403, 3, 134, 134, 0, 0, 0),
(404, 3, 135, 135, 0, 0, 0),
(405, 3, 111, 111, 0, 0, 0),
(406, 3, 149, 149, 149, 149, 149),
(407, 3, 112, 112, 0, 0, 0),
(408, 3, 113, 113, 0, 0, 0),
(409, 3, 114, 114, 0, 0, 0),
(410, 3, 115, 115, 0, 0, 0),
(411, 3, 116, 116, 0, 0, 0),
(412, 3, 145, 145, 0, 0, 0),
(413, 3, 26, 26, 0, 0, 0),
(414, 3, 139, 139, 0, 0, 0),
(415, 4, 1, 1, 0, 0, 0),
(416, 4, 2, 2, 0, 0, 0),
(417, 4, 5, 5, 0, 0, 0),
(418, 4, 110, 110, 0, 0, 0),
(419, 4, 57, 57, 57, 57, 57),
(420, 4, 54, 54, 54, 54, 54),
(421, 4, 58, 58, 58, 58, 58),
(422, 4, 56, 56, 56, 56, 56),
(423, 4, 150, 150, 150, 150, 150),
(424, 4, 39, 39, 39, 39, 39),
(425, 4, 151, 151, 151, 151, 151),
(426, 4, 152, 152, 152, 152, 152),
(427, 4, 153, 153, 153, 153, 153),
(428, 4, 154, 154, 154, 154, 154),
(429, 4, 55, 55, 55, 55, 55),
(430, 4, 12, 12, 12, 12, 12),
(431, 4, 13, 13, 13, 13, 13),
(432, 4, 156, 156, 156, 156, 156),
(433, 4, 14, 14, 14, 14, 14),
(434, 4, 51, 51, 51, 51, 51),
(435, 4, 15, 15, 15, 15, 15),
(436, 4, 140, 140, 140, 140, 140),
(437, 4, 16, 16, 16, 16, 16),
(438, 4, 21, 0, 0, 0, 0),
(439, 4, 22, 22, 0, 0, 0),
(440, 4, 23, 23, 23, 23, 23),
(441, 4, 141, 141, 141, 141, 141),
(442, 4, 142, 142, 0, 0, 0),
(443, 4, 144, 144, 144, 144, 144),
(444, 4, 143, 143, 143, 143, 143),
(445, 4, 6, 6, 6, 6, 6),
(446, 4, 29, 29, 29, 29, 29),
(447, 4, 31, 31, 31, 31, 31),
(448, 4, 30, 30, 30, 30, 30),
(449, 4, 32, 32, 32, 32, 32),
(450, 4, 33, 33, 0, 0, 0),
(451, 4, 52, 52, 0, 0, 0),
(452, 4, 34, 34, 0, 0, 0),
(453, 4, 36, 36, 36, 36, 36),
(454, 4, 4, 4, 4, 4, 4),
(455, 4, 70, 70, 70, 70, 70),
(456, 4, 75, 75, 75, 75, 75),
(457, 4, 76, 76, 76, 76, 76),
(458, 4, 81, 81, 81, 81, 81),
(459, 4, 77, 0, 0, 0, 0),
(460, 4, 84, 84, 0, 0, 0),
(461, 4, 78, 0, 0, 0, 0),
(462, 4, 82, 82, 82, 82, 82),
(463, 4, 83, 83, 0, 0, 0),
(464, 4, 79, 79, 0, 0, 0),
(465, 4, 105, 105, 105, 105, 105),
(466, 4, 108, 108, 0, 0, 0),
(467, 4, 106, 106, 0, 0, 0),
(468, 4, 148, 148, 148, 148, 148),
(469, 4, 107, 107, 0, 0, 0),
(470, 4, 102, 102, 102, 102, 102),
(471, 4, 103, 103, 103, 103, 103),
(472, 4, 104, 104, 0, 0, 0),
(473, 4, 89, 89, 89, 89, 89),
(474, 4, 94, 94, 94, 94, 94),
(475, 4, 95, 95, 95, 95, 95),
(476, 4, 90, 90, 0, 0, 0),
(477, 4, 91, 91, 0, 0, 0),
(478, 4, 92, 92, 0, 0, 0),
(479, 4, 93, 93, 0, 0, 0),
(480, 4, 96, 96, 0, 0, 0),
(481, 4, 98, 98, 0, 0, 0),
(482, 4, 97, 97, 0, 0, 0),
(483, 4, 74, 74, 0, 0, 0),
(484, 4, 99, 99, 99, 99, 99),
(485, 4, 85, 85, 85, 85, 85),
(486, 4, 86, 86, 86, 86, 0),
(487, 4, 88, 88, 88, 88, 0),
(488, 4, 87, 87, 0, 0, 0),
(489, 4, 72, 72, 0, 0, 0),
(490, 4, 101, 101, 101, 101, 101),
(491, 4, 100, 100, 100, 100, 100),
(492, 4, 73, 73, 73, 73, 73),
(493, 4, 71, 71, 71, 71, 71),
(494, 4, 69, 69, 69, 69, 69),
(495, 4, 42, 42, 42, 42, 42),
(496, 4, 59, 0, 0, 0, 0),
(497, 4, 66, 66, 0, 0, 0),
(498, 4, 67, 67, 0, 0, 0),
(499, 4, 68, 68, 0, 0, 0),
(500, 4, 146, 0, 0, 0, 0),
(501, 4, 43, 43, 0, 0, 0),
(502, 4, 44, 44, 0, 0, 0),
(503, 4, 45, 45, 0, 0, 0),
(504, 4, 46, 46, 0, 0, 0),
(505, 4, 47, 47, 0, 0, 0),
(506, 4, 48, 48, 0, 0, 0),
(507, 4, 49, 49, 0, 0, 0),
(508, 4, 50, 50, 0, 0, 0),
(509, 4, 53, 53, 0, 0, 0),
(510, 4, 147, 147, 147, 147, 147),
(511, 4, 60, 60, 0, 0, 0),
(512, 4, 61, 61, 0, 0, 0),
(513, 4, 62, 62, 0, 0, 0),
(514, 4, 63, 63, 0, 0, 0),
(515, 4, 24, 24, 24, 24, 24),
(516, 4, 25, 25, 25, 25, 25),
(517, 4, 120, 120, 0, 0, 0),
(518, 4, 121, 121, 0, 0, 0),
(519, 4, 122, 122, 122, 122, 122),
(520, 4, 123, 123, 123, 123, 123),
(521, 4, 124, 124, 124, 124, 124),
(522, 4, 125, 125, 125, 125, 125),
(523, 4, 126, 126, 126, 126, 126),
(524, 4, 127, 127, 127, 127, 127),
(525, 4, 128, 128, 128, 128, 128),
(526, 4, 119, 119, 0, 0, 0),
(527, 4, 118, 118, 0, 0, 0),
(528, 4, 117, 117, 0, 0, 0),
(529, 4, 129, 129, 129, 129, 129),
(530, 4, 130, 130, 130, 130, 130),
(531, 4, 155, 155, 155, 155, 155),
(532, 4, 157, 157, 157, 157, 157),
(533, 4, 158, 158, 158, 158, 158),
(534, 4, 138, 138, 0, 0, 0),
(535, 4, 137, 137, 0, 0, 0),
(536, 4, 131, 131, 0, 0, 0),
(537, 4, 132, 132, 0, 0, 0),
(538, 4, 133, 133, 0, 0, 0),
(539, 4, 159, 159, 159, 159, 159),
(540, 4, 136, 136, 0, 0, 0),
(541, 4, 134, 134, 0, 0, 0),
(542, 4, 135, 135, 0, 0, 0),
(543, 4, 111, 111, 0, 0, 0),
(544, 4, 149, 149, 149, 149, 149),
(545, 4, 112, 112, 0, 0, 0),
(546, 4, 113, 113, 0, 0, 0),
(547, 4, 114, 114, 0, 0, 0),
(548, 4, 115, 115, 0, 0, 0),
(549, 4, 116, 116, 0, 0, 0),
(550, 4, 145, 145, 0, 0, 0),
(551, 4, 26, 26, 0, 0, 0),
(552, 4, 139, 139, 0, 0, 0),
(553, 5, 1, 1, 0, 0, 0),
(554, 5, 2, 2, 0, 0, 0),
(555, 5, 5, 5, 0, 0, 0),
(556, 5, 110, 110, 0, 0, 0),
(557, 5, 57, 57, 57, 57, 57),
(558, 5, 54, 54, 54, 54, 54),
(559, 5, 58, 58, 58, 58, 58),
(560, 5, 56, 56, 56, 56, 56),
(561, 5, 150, 150, 150, 150, 150),
(562, 5, 39, 39, 39, 39, 39),
(563, 5, 151, 151, 151, 151, 151),
(564, 5, 152, 152, 152, 152, 152),
(565, 5, 153, 153, 153, 153, 153),
(566, 5, 154, 154, 154, 154, 154),
(567, 5, 55, 55, 55, 55, 55),
(568, 5, 12, 12, 12, 12, 12),
(569, 5, 13, 13, 13, 13, 13),
(570, 5, 156, 156, 156, 156, 156),
(571, 5, 14, 14, 14, 14, 14),
(572, 5, 51, 51, 51, 51, 51),
(573, 5, 15, 15, 15, 15, 15),
(574, 5, 140, 140, 140, 140, 140),
(575, 5, 16, 16, 16, 16, 16),
(576, 5, 21, 0, 0, 0, 0),
(577, 5, 22, 22, 0, 0, 0),
(578, 5, 23, 23, 23, 23, 23),
(579, 5, 141, 141, 141, 141, 141),
(580, 5, 142, 142, 0, 0, 0),
(581, 5, 144, 144, 144, 144, 144),
(582, 5, 143, 143, 143, 143, 143),
(583, 5, 6, 6, 6, 6, 6),
(584, 5, 29, 29, 29, 29, 29),
(585, 5, 31, 31, 31, 31, 31),
(586, 5, 30, 30, 30, 30, 30),
(587, 5, 32, 32, 32, 32, 32),
(588, 5, 33, 33, 0, 0, 0),
(589, 5, 52, 52, 0, 0, 0),
(590, 5, 34, 34, 0, 0, 0),
(591, 5, 36, 36, 36, 36, 36),
(592, 5, 4, 4, 4, 4, 4),
(593, 5, 70, 70, 70, 70, 70),
(594, 5, 75, 75, 75, 75, 75),
(595, 5, 76, 76, 76, 76, 76),
(596, 5, 81, 81, 81, 81, 81),
(597, 5, 77, 0, 0, 0, 0),
(598, 5, 84, 84, 0, 0, 0),
(599, 5, 78, 0, 0, 0, 0),
(600, 5, 82, 82, 82, 82, 82),
(601, 5, 83, 83, 0, 0, 0),
(602, 5, 79, 79, 0, 0, 0),
(603, 5, 105, 105, 105, 105, 105),
(604, 5, 108, 108, 0, 0, 0),
(605, 5, 106, 106, 0, 0, 0),
(606, 5, 148, 148, 148, 148, 148),
(607, 5, 107, 107, 0, 0, 0),
(608, 5, 102, 102, 102, 102, 102),
(609, 5, 103, 103, 103, 103, 103),
(610, 5, 104, 104, 0, 0, 0),
(611, 5, 89, 89, 89, 89, 89),
(612, 5, 94, 94, 94, 94, 94),
(613, 5, 95, 95, 95, 95, 95),
(614, 5, 90, 90, 0, 0, 0),
(615, 5, 91, 91, 0, 0, 0),
(616, 5, 92, 92, 0, 0, 0),
(617, 5, 93, 93, 0, 0, 0),
(618, 5, 96, 96, 0, 0, 0),
(619, 5, 98, 98, 0, 0, 0),
(620, 5, 97, 97, 0, 0, 0),
(621, 5, 74, 74, 0, 0, 0),
(622, 5, 99, 99, 99, 99, 99),
(623, 5, 85, 85, 85, 85, 85),
(624, 5, 86, 86, 86, 86, 0),
(625, 5, 88, 88, 88, 88, 0),
(626, 5, 87, 87, 0, 0, 0),
(627, 5, 72, 72, 0, 0, 0),
(628, 5, 101, 101, 101, 101, 101),
(629, 5, 100, 100, 100, 100, 100),
(630, 5, 73, 73, 73, 73, 73),
(631, 5, 71, 71, 71, 71, 71),
(632, 5, 69, 69, 69, 69, 69),
(633, 5, 42, 42, 42, 42, 42),
(634, 5, 59, 0, 0, 0, 0),
(635, 5, 66, 66, 0, 0, 0),
(636, 5, 67, 67, 0, 0, 0),
(637, 5, 68, 68, 0, 0, 0),
(638, 5, 146, 0, 0, 0, 0),
(639, 5, 43, 43, 0, 0, 0),
(640, 5, 44, 44, 0, 0, 0),
(641, 5, 45, 45, 0, 0, 0),
(642, 5, 46, 46, 0, 0, 0),
(643, 5, 47, 47, 0, 0, 0),
(644, 5, 48, 48, 0, 0, 0),
(645, 5, 49, 49, 0, 0, 0),
(646, 5, 50, 50, 0, 0, 0),
(647, 5, 53, 53, 0, 0, 0),
(648, 5, 147, 147, 147, 147, 147),
(649, 5, 60, 60, 0, 0, 0),
(650, 5, 61, 61, 0, 0, 0),
(651, 5, 62, 62, 0, 0, 0),
(652, 5, 63, 63, 0, 0, 0),
(653, 5, 24, 24, 24, 24, 24),
(654, 5, 25, 25, 25, 25, 25),
(655, 5, 120, 120, 0, 0, 0),
(656, 5, 121, 121, 0, 0, 0),
(657, 5, 122, 122, 122, 122, 122),
(658, 5, 123, 123, 123, 123, 123),
(659, 5, 124, 124, 124, 124, 124),
(660, 5, 125, 125, 125, 125, 125),
(661, 5, 126, 126, 126, 126, 126),
(662, 5, 127, 127, 127, 127, 127),
(663, 5, 128, 128, 128, 128, 128),
(664, 5, 119, 119, 0, 0, 0),
(665, 5, 118, 118, 0, 0, 0),
(666, 5, 117, 117, 0, 0, 0),
(667, 5, 129, 129, 129, 129, 129),
(668, 5, 130, 130, 130, 130, 130),
(669, 5, 155, 155, 155, 155, 155),
(670, 5, 157, 157, 157, 157, 157),
(671, 5, 158, 158, 158, 158, 158),
(672, 5, 138, 138, 0, 0, 0),
(673, 5, 137, 137, 0, 0, 0),
(674, 5, 131, 131, 0, 0, 0),
(675, 5, 132, 132, 0, 0, 0),
(676, 5, 133, 133, 0, 0, 0),
(677, 5, 159, 159, 159, 159, 159),
(678, 5, 136, 136, 0, 0, 0),
(679, 5, 134, 134, 0, 0, 0),
(680, 5, 135, 135, 0, 0, 0),
(681, 5, 111, 111, 0, 0, 0),
(682, 5, 149, 149, 149, 149, 149),
(683, 5, 112, 112, 0, 0, 0),
(684, 5, 113, 113, 0, 0, 0),
(685, 5, 114, 114, 0, 0, 0),
(686, 5, 115, 115, 0, 0, 0),
(687, 5, 116, 116, 0, 0, 0),
(688, 5, 145, 145, 0, 0, 0),
(689, 5, 26, 26, 0, 0, 0),
(690, 5, 139, 139, 0, 0, 0),
(691, 6, 1, 1, 0, 0, 0),
(692, 6, 2, 2, 0, 0, 0),
(693, 6, 5, 5, 0, 0, 0),
(694, 6, 110, 110, 0, 0, 0),
(695, 6, 57, 57, 57, 57, 57),
(696, 6, 54, 54, 54, 54, 54),
(697, 6, 58, 58, 58, 58, 58),
(698, 6, 56, 56, 56, 56, 56),
(699, 6, 150, 150, 150, 150, 150),
(700, 6, 39, 39, 39, 39, 39),
(701, 6, 151, 151, 151, 151, 151),
(702, 6, 152, 152, 152, 152, 152),
(703, 6, 153, 153, 153, 153, 153),
(704, 6, 154, 154, 154, 154, 154),
(705, 6, 55, 55, 55, 55, 55),
(706, 6, 12, 12, 12, 12, 12),
(707, 6, 13, 13, 13, 13, 13),
(708, 6, 156, 156, 156, 156, 156),
(709, 6, 14, 14, 14, 14, 14),
(710, 6, 51, 51, 51, 51, 51),
(711, 6, 15, 15, 15, 15, 15),
(712, 6, 140, 140, 140, 140, 140),
(713, 6, 16, 16, 16, 16, 16),
(714, 6, 21, 0, 0, 0, 0),
(715, 6, 22, 22, 0, 0, 0),
(716, 6, 23, 23, 23, 23, 23),
(717, 6, 141, 141, 141, 141, 141),
(718, 6, 142, 142, 0, 0, 0),
(719, 6, 144, 144, 144, 144, 144),
(720, 6, 143, 143, 143, 143, 143),
(721, 6, 6, 6, 6, 6, 6),
(722, 6, 29, 29, 29, 29, 29),
(723, 6, 31, 31, 31, 31, 31),
(724, 6, 30, 30, 30, 30, 30),
(725, 6, 32, 32, 32, 32, 32),
(726, 6, 33, 33, 0, 0, 0),
(727, 6, 52, 52, 0, 0, 0),
(728, 6, 34, 34, 0, 0, 0),
(729, 6, 36, 36, 36, 36, 36),
(730, 6, 4, 4, 4, 4, 4),
(731, 6, 70, 70, 70, 70, 70),
(732, 6, 75, 75, 75, 75, 75),
(733, 6, 76, 76, 76, 76, 76),
(734, 6, 81, 81, 81, 81, 81),
(735, 6, 77, 0, 0, 0, 0),
(736, 6, 84, 84, 0, 0, 0),
(737, 6, 78, 0, 0, 0, 0),
(738, 6, 82, 82, 82, 82, 82),
(739, 6, 83, 83, 0, 0, 0),
(740, 6, 79, 79, 0, 0, 0),
(741, 6, 105, 105, 105, 105, 105),
(742, 6, 108, 108, 0, 0, 0),
(743, 6, 106, 106, 0, 0, 0),
(744, 6, 148, 148, 148, 148, 148),
(745, 6, 107, 107, 0, 0, 0),
(746, 6, 102, 102, 102, 102, 102),
(747, 6, 103, 103, 103, 103, 103),
(748, 6, 104, 104, 0, 0, 0),
(749, 6, 89, 89, 89, 89, 89),
(750, 6, 94, 94, 94, 94, 94),
(751, 6, 95, 95, 95, 95, 95),
(752, 6, 90, 90, 0, 0, 0),
(753, 6, 91, 91, 0, 0, 0),
(754, 6, 92, 92, 0, 0, 0),
(755, 6, 93, 93, 0, 0, 0),
(756, 6, 96, 96, 0, 0, 0),
(757, 6, 98, 98, 0, 0, 0),
(758, 6, 97, 97, 0, 0, 0),
(759, 6, 74, 74, 0, 0, 0),
(760, 6, 99, 99, 99, 99, 99),
(761, 6, 85, 85, 85, 85, 85),
(762, 6, 86, 86, 86, 86, 0),
(763, 6, 88, 88, 88, 88, 0),
(764, 6, 87, 87, 0, 0, 0),
(765, 6, 72, 72, 0, 0, 0),
(766, 6, 101, 101, 101, 101, 101),
(767, 6, 100, 100, 100, 100, 100),
(768, 6, 73, 73, 73, 73, 73),
(769, 6, 71, 71, 71, 71, 71),
(770, 6, 69, 69, 69, 69, 69),
(771, 6, 42, 42, 42, 42, 42),
(772, 6, 59, 0, 0, 0, 0),
(773, 6, 66, 66, 0, 0, 0),
(774, 6, 67, 67, 0, 0, 0),
(775, 6, 68, 68, 0, 0, 0),
(776, 6, 146, 0, 0, 0, 0),
(777, 6, 43, 43, 0, 0, 0),
(778, 6, 44, 44, 0, 0, 0),
(779, 6, 45, 45, 0, 0, 0),
(780, 6, 46, 46, 0, 0, 0),
(781, 6, 47, 47, 0, 0, 0),
(782, 6, 48, 48, 0, 0, 0),
(783, 6, 49, 49, 0, 0, 0),
(784, 6, 50, 50, 0, 0, 0),
(785, 6, 53, 53, 0, 0, 0),
(786, 6, 147, 147, 147, 147, 147),
(787, 6, 60, 60, 0, 0, 0),
(788, 6, 61, 61, 0, 0, 0),
(789, 6, 62, 62, 0, 0, 0),
(790, 6, 63, 63, 0, 0, 0),
(791, 6, 24, 24, 24, 24, 24),
(792, 6, 25, 25, 25, 25, 25),
(793, 6, 120, 120, 0, 0, 0),
(794, 6, 121, 121, 0, 0, 0),
(795, 6, 122, 122, 122, 122, 122),
(796, 6, 123, 123, 123, 123, 123),
(797, 6, 124, 124, 124, 124, 124),
(798, 6, 125, 125, 125, 125, 125),
(799, 6, 126, 126, 126, 126, 126),
(800, 6, 127, 127, 127, 127, 127),
(801, 6, 128, 128, 128, 128, 128),
(802, 6, 119, 119, 0, 0, 0),
(803, 6, 118, 118, 0, 0, 0),
(804, 6, 117, 117, 0, 0, 0),
(805, 6, 129, 129, 129, 129, 129),
(806, 6, 130, 130, 130, 130, 130),
(807, 6, 155, 155, 155, 155, 155),
(808, 6, 157, 157, 157, 157, 157),
(809, 6, 158, 158, 158, 158, 158),
(810, 6, 138, 138, 0, 0, 0),
(811, 6, 137, 137, 0, 0, 0),
(812, 6, 131, 131, 0, 0, 0),
(813, 6, 132, 132, 0, 0, 0),
(814, 6, 133, 133, 0, 0, 0),
(815, 6, 159, 159, 159, 159, 159),
(816, 6, 136, 136, 0, 0, 0),
(817, 6, 134, 134, 0, 0, 0),
(818, 6, 135, 135, 0, 0, 0),
(819, 6, 111, 111, 0, 0, 0),
(820, 6, 149, 149, 149, 149, 149),
(821, 6, 112, 112, 0, 0, 0),
(822, 6, 113, 113, 0, 0, 0),
(823, 6, 114, 114, 0, 0, 0),
(824, 6, 115, 115, 0, 0, 0),
(825, 6, 116, 116, 0, 0, 0),
(826, 6, 145, 145, 0, 0, 0),
(827, 6, 26, 26, 0, 0, 0),
(828, 6, 139, 139, 0, 0, 0),
(829, 7, 1, 1, 0, 0, 0),
(830, 7, 2, 2, 0, 0, 0),
(831, 7, 5, 5, 0, 0, 0),
(832, 7, 110, 110, 0, 0, 0),
(833, 7, 57, 57, 57, 57, 57),
(834, 7, 54, 54, 54, 54, 54),
(835, 7, 58, 58, 58, 58, 58),
(836, 7, 56, 56, 56, 56, 56),
(837, 7, 150, 150, 150, 150, 150),
(838, 7, 39, 39, 39, 39, 39),
(839, 7, 151, 151, 151, 151, 151),
(840, 7, 152, 152, 152, 152, 152),
(841, 7, 153, 153, 153, 153, 153),
(842, 7, 154, 154, 154, 154, 154),
(843, 7, 55, 55, 55, 55, 55),
(844, 7, 12, 12, 12, 12, 12),
(845, 7, 13, 13, 13, 13, 13),
(846, 7, 156, 156, 156, 156, 156),
(847, 7, 14, 14, 14, 14, 14),
(848, 7, 51, 51, 51, 51, 51),
(849, 7, 15, 15, 15, 15, 15),
(850, 7, 140, 140, 140, 140, 140),
(851, 7, 16, 16, 16, 16, 16),
(852, 7, 21, 0, 0, 0, 0),
(853, 7, 22, 22, 0, 0, 0),
(854, 7, 23, 23, 23, 23, 23),
(855, 7, 141, 141, 141, 141, 141),
(856, 7, 142, 142, 0, 0, 0),
(857, 7, 144, 144, 144, 144, 144),
(858, 7, 143, 143, 143, 143, 143),
(859, 7, 6, 6, 6, 6, 6),
(860, 7, 29, 29, 29, 29, 29),
(861, 7, 31, 31, 31, 31, 31),
(862, 7, 30, 30, 30, 30, 30),
(863, 7, 32, 32, 32, 32, 32),
(864, 7, 33, 33, 0, 0, 0),
(865, 7, 52, 52, 0, 0, 0),
(866, 7, 34, 34, 0, 0, 0),
(867, 7, 36, 36, 36, 36, 36),
(868, 7, 4, 4, 4, 4, 4),
(869, 7, 70, 70, 70, 70, 70),
(870, 7, 75, 75, 75, 75, 75),
(871, 7, 76, 76, 76, 76, 76),
(872, 7, 81, 81, 81, 81, 81),
(873, 7, 77, 0, 0, 0, 0),
(874, 7, 84, 84, 0, 0, 0),
(875, 7, 78, 0, 0, 0, 0),
(876, 7, 82, 82, 82, 82, 82),
(877, 7, 83, 83, 0, 0, 0),
(878, 7, 79, 79, 0, 0, 0),
(879, 7, 105, 105, 105, 105, 105),
(880, 7, 108, 108, 0, 0, 0),
(881, 7, 106, 106, 0, 0, 0),
(882, 7, 148, 148, 148, 148, 148),
(883, 7, 107, 107, 0, 0, 0),
(884, 7, 102, 102, 102, 102, 102),
(885, 7, 103, 103, 103, 103, 103),
(886, 7, 104, 104, 0, 0, 0),
(887, 7, 89, 89, 89, 89, 89),
(888, 7, 94, 94, 94, 94, 94),
(889, 7, 95, 95, 95, 95, 95),
(890, 7, 90, 90, 0, 0, 0),
(891, 7, 91, 91, 0, 0, 0),
(892, 7, 92, 92, 0, 0, 0),
(893, 7, 93, 93, 0, 0, 0),
(894, 7, 96, 96, 0, 0, 0),
(895, 7, 98, 98, 0, 0, 0),
(896, 7, 97, 97, 0, 0, 0),
(897, 7, 74, 74, 0, 0, 0),
(898, 7, 99, 99, 99, 99, 99),
(899, 7, 85, 85, 85, 85, 85),
(900, 7, 86, 86, 86, 86, 0),
(901, 7, 88, 88, 88, 88, 0),
(902, 7, 87, 87, 0, 0, 0),
(903, 7, 72, 72, 0, 0, 0),
(904, 7, 101, 101, 101, 101, 101),
(905, 7, 100, 100, 100, 100, 100),
(906, 7, 73, 73, 73, 73, 73),
(907, 7, 71, 71, 71, 71, 71),
(908, 7, 69, 69, 69, 69, 69),
(909, 7, 42, 42, 42, 42, 42),
(910, 7, 59, 0, 0, 0, 0),
(911, 7, 66, 66, 0, 0, 0),
(912, 7, 67, 67, 0, 0, 0),
(913, 7, 68, 68, 0, 0, 0),
(914, 7, 146, 0, 0, 0, 0),
(915, 7, 43, 43, 0, 0, 0),
(916, 7, 44, 44, 0, 0, 0),
(917, 7, 45, 45, 0, 0, 0),
(918, 7, 46, 46, 0, 0, 0),
(919, 7, 47, 47, 0, 0, 0),
(920, 7, 48, 48, 0, 0, 0),
(921, 7, 49, 49, 0, 0, 0),
(922, 7, 50, 50, 0, 0, 0),
(923, 7, 53, 53, 0, 0, 0),
(924, 7, 147, 147, 147, 147, 147),
(925, 7, 60, 60, 0, 0, 0),
(926, 7, 61, 61, 0, 0, 0),
(927, 7, 62, 62, 0, 0, 0),
(928, 7, 63, 63, 0, 0, 0),
(929, 7, 24, 24, 24, 24, 24),
(930, 7, 25, 25, 25, 25, 25),
(931, 7, 120, 120, 0, 0, 0),
(932, 7, 121, 121, 0, 0, 0),
(933, 7, 122, 122, 122, 122, 122),
(934, 7, 123, 123, 123, 123, 123),
(935, 7, 124, 124, 124, 124, 124),
(936, 7, 125, 125, 125, 125, 125),
(937, 7, 126, 126, 126, 126, 126),
(938, 7, 127, 127, 127, 127, 127),
(939, 7, 128, 128, 128, 128, 128),
(940, 7, 119, 119, 0, 0, 0),
(941, 7, 118, 118, 0, 0, 0),
(942, 7, 117, 117, 0, 0, 0),
(943, 7, 129, 129, 129, 129, 129),
(944, 7, 130, 130, 130, 130, 130),
(945, 7, 155, 155, 155, 155, 155),
(946, 7, 157, 157, 157, 157, 157),
(947, 7, 158, 158, 158, 158, 158),
(948, 7, 138, 138, 0, 0, 0),
(949, 7, 137, 137, 0, 0, 0),
(950, 7, 131, 131, 0, 0, 0),
(951, 7, 132, 132, 0, 0, 0),
(952, 7, 133, 133, 0, 0, 0),
(953, 7, 159, 159, 159, 159, 159),
(954, 7, 136, 136, 0, 0, 0),
(955, 7, 134, 134, 0, 0, 0),
(956, 7, 135, 135, 0, 0, 0),
(957, 7, 111, 111, 0, 0, 0),
(958, 7, 149, 149, 149, 149, 149),
(959, 7, 112, 112, 0, 0, 0),
(960, 7, 113, 113, 0, 0, 0),
(961, 7, 114, 114, 0, 0, 0),
(962, 7, 115, 115, 0, 0, 0),
(963, 7, 116, 116, 0, 0, 0),
(964, 7, 145, 145, 0, 0, 0),
(965, 7, 26, 26, 0, 0, 0),
(966, 7, 139, 139, 0, 0, 0),
(967, 2, 1, 1, 0, 0, 0),
(968, 2, 2, 2, 0, 0, 0),
(969, 2, 5, 5, 0, 0, 0),
(970, 2, 110, 110, 0, 0, 0),
(971, 2, 57, 57, 57, 57, 57),
(972, 2, 54, 54, 54, 54, 54),
(973, 2, 58, 58, 58, 58, 58),
(974, 2, 56, 56, 56, 56, 56),
(975, 2, 150, 0, 0, 0, 0),
(976, 2, 39, 39, 39, 39, 39),
(977, 2, 151, 151, 151, 151, 151),
(978, 2, 152, 152, 152, 152, 152),
(979, 2, 153, 153, 153, 153, 153),
(980, 2, 154, 154, 154, 154, 154),
(981, 2, 55, 55, 55, 55, 55),
(982, 2, 12, 0, 0, 0, 0),
(983, 2, 13, 13, 13, 13, 13),
(984, 2, 156, 156, 156, 156, 156),
(985, 2, 14, 14, 14, 14, 14),
(986, 2, 51, 51, 51, 51, 51),
(987, 2, 15, 15, 15, 15, 15),
(988, 2, 140, 140, 140, 140, 140),
(989, 2, 16, 16, 16, 16, 16),
(990, 2, 21, 0, 0, 0, 0),
(991, 2, 22, 22, 0, 0, 0),
(992, 2, 23, 23, 23, 23, 23),
(993, 2, 141, 0, 0, 0, 0),
(994, 2, 142, 142, 0, 0, 0),
(995, 2, 144, 144, 144, 144, 144),
(996, 2, 143, 143, 143, 143, 143),
(997, 2, 6, 6, 6, 6, 6),
(998, 2, 29, 0, 0, 0, 0),
(999, 2, 31, 31, 31, 31, 31),
(1000, 2, 30, 30, 30, 30, 30),
(1001, 2, 32, 32, 32, 32, 32),
(1002, 2, 33, 33, 0, 0, 0),
(1003, 2, 52, 52, 0, 0, 0),
(1004, 2, 34, 34, 0, 0, 0),
(1005, 2, 36, 36, 36, 36, 36),
(1006, 2, 4, 4, 4, 4, 4),
(1007, 2, 70, 70, 70, 70, 70),
(1008, 2, 75, 0, 0, 0, 0),
(1009, 2, 76, 76, 76, 76, 76),
(1010, 2, 81, 81, 81, 81, 81),
(1011, 2, 77, 0, 0, 0, 0),
(1012, 2, 84, 84, 0, 0, 0),
(1013, 2, 78, 0, 0, 0, 0),
(1014, 2, 82, 82, 82, 82, 82),
(1015, 2, 83, 83, 0, 0, 0),
(1016, 2, 79, 79, 0, 0, 0),
(1017, 2, 105, 0, 0, 0, 0),
(1018, 2, 108, 108, 0, 0, 0),
(1019, 2, 106, 106, 0, 0, 0),
(1020, 2, 148, 148, 148, 148, 148),
(1021, 2, 107, 107, 0, 0, 0),
(1022, 2, 102, 0, 0, 0, 0),
(1023, 2, 103, 103, 103, 103, 103),
(1024, 2, 104, 104, 0, 0, 0),
(1025, 2, 89, 0, 0, 0, 0),
(1026, 2, 94, 94, 94, 94, 94),
(1027, 2, 95, 95, 95, 95, 95),
(1028, 2, 90, 90, 0, 0, 0),
(1029, 2, 91, 91, 0, 0, 0),
(1030, 2, 92, 92, 0, 0, 0),
(1031, 2, 93, 93, 0, 0, 0),
(1032, 2, 96, 96, 0, 0, 0),
(1033, 2, 98, 98, 0, 0, 0),
(1034, 2, 97, 97, 0, 0, 0),
(1035, 2, 74, 74, 0, 0, 0),
(1036, 2, 99, 99, 99, 99, 99),
(1037, 2, 85, 0, 0, 0, 0),
(1038, 2, 86, 86, 86, 86, 0),
(1039, 2, 88, 88, 88, 88, 0),
(1040, 2, 87, 87, 0, 0, 0),
(1041, 2, 72, 72, 0, 0, 0),
(1042, 2, 101, 101, 101, 101, 101),
(1043, 2, 100, 100, 100, 100, 100),
(1044, 2, 73, 0, 0, 0, 0),
(1045, 2, 71, 71, 71, 71, 71),
(1046, 2, 69, 69, 69, 69, 69),
(1047, 2, 42, 0, 0, 0, 0),
(1048, 2, 59, 0, 0, 0, 0),
(1049, 2, 66, 66, 0, 0, 0),
(1050, 2, 67, 67, 0, 0, 0),
(1051, 2, 68, 68, 0, 0, 0),
(1052, 2, 146, 0, 0, 0, 0),
(1053, 2, 43, 43, 0, 0, 0),
(1054, 2, 44, 44, 0, 0, 0),
(1055, 2, 45, 45, 0, 0, 0),
(1056, 2, 46, 46, 0, 0, 0),
(1057, 2, 47, 47, 0, 0, 0),
(1058, 2, 48, 48, 0, 0, 0),
(1059, 2, 49, 49, 0, 0, 0),
(1060, 2, 50, 50, 0, 0, 0),
(1061, 2, 53, 53, 0, 0, 0),
(1062, 2, 147, 147, 147, 147, 147),
(1063, 2, 60, 60, 0, 0, 0),
(1064, 2, 61, 61, 0, 0, 0),
(1065, 2, 62, 62, 0, 0, 0),
(1066, 2, 63, 63, 0, 0, 0),
(1067, 2, 24, 24, 24, 24, 24),
(1068, 2, 25, 0, 0, 0, 0),
(1069, 2, 120, 120, 0, 0, 0),
(1070, 2, 121, 121, 0, 0, 0),
(1071, 2, 122, 122, 122, 122, 122),
(1072, 2, 123, 123, 123, 123, 123),
(1073, 2, 124, 124, 124, 124, 124),
(1074, 2, 125, 125, 125, 125, 125),
(1075, 2, 126, 126, 126, 126, 126),
(1076, 2, 127, 127, 127, 127, 127),
(1077, 2, 128, 128, 128, 128, 128),
(1078, 2, 119, 119, 0, 0, 0),
(1079, 2, 118, 118, 0, 0, 0),
(1080, 2, 117, 117, 0, 0, 0),
(1081, 2, 129, 129, 129, 129, 129),
(1082, 2, 130, 130, 130, 130, 130),
(1083, 2, 155, 155, 155, 155, 155),
(1084, 2, 157, 157, 157, 157, 157),
(1085, 2, 158, 158, 158, 158, 158),
(1086, 2, 138, 138, 0, 0, 0),
(1087, 2, 137, 137, 0, 0, 0),
(1088, 2, 131, 131, 0, 0, 0),
(1089, 2, 132, 132, 0, 0, 0),
(1090, 2, 133, 133, 0, 0, 0),
(1091, 2, 159, 159, 159, 159, 159),
(1092, 2, 136, 136, 0, 0, 0),
(1093, 2, 134, 134, 0, 0, 0),
(1094, 2, 135, 135, 0, 0, 0),
(1095, 2, 111, 111, 0, 0, 0),
(1096, 2, 149, 149, 149, 149, 149),
(1097, 2, 112, 112, 0, 0, 0),
(1098, 2, 113, 113, 0, 0, 0),
(1099, 2, 114, 114, 0, 0, 0),
(1100, 2, 115, 115, 0, 0, 0),
(1101, 2, 116, 116, 0, 0, 0),
(1102, 2, 145, 145, 0, 0, 0),
(1103, 2, 26, 26, 0, 0, 0),
(1104, 2, 139, 139, 0, 0, 0),
(1105, 8, 1, 1, 0, 0, 0),
(1106, 8, 2, 2, 0, 0, 0),
(1107, 8, 5, 5, 0, 0, 0),
(1108, 8, 110, 110, 0, 0, 0),
(1109, 8, 57, 57, 57, 57, 57),
(1110, 8, 54, 54, 54, 54, 54),
(1111, 8, 58, 58, 58, 58, 58),
(1112, 8, 56, 56, 56, 56, 56),
(1113, 8, 150, 150, 150, 150, 150),
(1114, 8, 39, 39, 39, 39, 39),
(1115, 8, 151, 151, 151, 151, 151),
(1116, 8, 152, 152, 152, 152, 152),
(1117, 8, 153, 153, 153, 153, 153),
(1118, 8, 154, 154, 154, 154, 154),
(1119, 8, 55, 55, 55, 55, 55),
(1120, 8, 12, 12, 12, 12, 12),
(1121, 8, 13, 13, 13, 13, 13),
(1122, 8, 156, 156, 156, 156, 156),
(1123, 8, 14, 14, 14, 14, 14),
(1124, 8, 51, 51, 51, 51, 51),
(1125, 8, 15, 15, 15, 15, 15),
(1126, 8, 140, 140, 140, 140, 140),
(1127, 8, 16, 16, 16, 16, 16),
(1128, 8, 21, 0, 0, 0, 0),
(1129, 8, 22, 22, 0, 0, 0),
(1130, 8, 23, 23, 23, 23, 23),
(1131, 8, 141, 141, 141, 141, 141),
(1132, 8, 142, 142, 0, 0, 0),
(1133, 8, 144, 144, 144, 144, 144),
(1134, 8, 143, 143, 143, 143, 143),
(1135, 8, 6, 6, 6, 6, 6),
(1136, 8, 29, 29, 29, 29, 29),
(1137, 8, 31, 31, 31, 31, 31),
(1138, 8, 30, 30, 30, 30, 30),
(1139, 8, 32, 32, 32, 32, 32),
(1140, 8, 33, 33, 0, 0, 0),
(1141, 8, 52, 52, 0, 0, 0),
(1142, 8, 34, 34, 0, 0, 0),
(1143, 8, 36, 36, 36, 36, 36),
(1144, 8, 4, 4, 4, 4, 4),
(1145, 8, 70, 70, 70, 70, 70),
(1146, 8, 75, 75, 75, 75, 75),
(1147, 8, 76, 76, 76, 76, 76),
(1148, 8, 81, 81, 81, 81, 81),
(1149, 8, 77, 0, 0, 0, 0),
(1150, 8, 84, 84, 0, 0, 0),
(1151, 8, 78, 0, 0, 0, 0),
(1152, 8, 82, 82, 82, 82, 82),
(1153, 8, 83, 83, 0, 0, 0),
(1154, 8, 79, 79, 0, 0, 0),
(1155, 8, 105, 105, 105, 105, 105),
(1156, 8, 108, 108, 0, 0, 0),
(1157, 8, 106, 106, 0, 0, 0),
(1158, 8, 148, 148, 148, 148, 148),
(1159, 8, 107, 107, 0, 0, 0),
(1160, 8, 102, 102, 102, 102, 102),
(1161, 8, 103, 103, 103, 103, 103),
(1162, 8, 104, 104, 0, 0, 0),
(1163, 8, 89, 89, 89, 89, 89),
(1164, 8, 94, 94, 94, 94, 94),
(1165, 8, 95, 95, 95, 95, 95),
(1166, 8, 90, 90, 0, 0, 0),
(1167, 8, 91, 91, 0, 0, 0),
(1168, 8, 92, 92, 0, 0, 0),
(1169, 8, 93, 93, 0, 0, 0),
(1170, 8, 96, 96, 0, 0, 0),
(1171, 8, 98, 98, 0, 0, 0),
(1172, 8, 97, 97, 0, 0, 0),
(1173, 8, 74, 74, 0, 0, 0),
(1174, 8, 99, 99, 99, 99, 99),
(1175, 8, 85, 85, 85, 85, 85),
(1176, 8, 86, 86, 86, 86, 0),
(1177, 8, 88, 88, 88, 88, 0),
(1178, 8, 87, 87, 0, 0, 0),
(1179, 8, 72, 72, 0, 0, 0),
(1180, 8, 101, 101, 101, 101, 101),
(1181, 8, 100, 100, 100, 100, 100),
(1182, 8, 73, 73, 73, 73, 73),
(1183, 8, 71, 71, 71, 71, 71),
(1184, 8, 69, 69, 69, 69, 69),
(1185, 8, 42, 42, 42, 42, 42),
(1186, 8, 59, 0, 0, 0, 0),
(1187, 8, 66, 66, 0, 0, 0),
(1188, 8, 67, 67, 0, 0, 0),
(1189, 8, 68, 68, 0, 0, 0),
(1190, 8, 146, 0, 0, 0, 0),
(1191, 8, 43, 43, 0, 0, 0),
(1192, 8, 44, 44, 0, 0, 0),
(1193, 8, 45, 45, 0, 0, 0),
(1194, 8, 46, 46, 0, 0, 0),
(1195, 8, 47, 47, 0, 0, 0),
(1196, 8, 48, 48, 0, 0, 0),
(1197, 8, 49, 49, 0, 0, 0),
(1198, 8, 50, 50, 0, 0, 0),
(1199, 8, 53, 53, 0, 0, 0),
(1200, 8, 147, 147, 147, 147, 147),
(1201, 8, 60, 60, 0, 0, 0),
(1202, 8, 61, 61, 0, 0, 0),
(1203, 8, 62, 62, 0, 0, 0),
(1204, 8, 63, 63, 0, 0, 0),
(1205, 8, 24, 24, 24, 24, 24),
(1206, 8, 25, 25, 25, 25, 25),
(1207, 8, 120, 120, 0, 0, 0),
(1208, 8, 121, 121, 0, 0, 0),
(1209, 8, 122, 122, 122, 122, 122),
(1210, 8, 123, 123, 123, 123, 123),
(1211, 8, 124, 124, 124, 124, 124),
(1212, 8, 125, 125, 125, 125, 125),
(1213, 8, 126, 126, 126, 126, 126),
(1214, 8, 127, 127, 127, 127, 127),
(1215, 8, 128, 128, 128, 128, 128),
(1216, 8, 119, 119, 0, 0, 0),
(1217, 8, 118, 118, 0, 0, 0),
(1218, 8, 117, 117, 0, 0, 0),
(1219, 8, 129, 129, 129, 129, 129),
(1220, 8, 130, 130, 130, 130, 130),
(1221, 8, 155, 155, 155, 155, 155),
(1222, 8, 157, 157, 157, 157, 157),
(1223, 8, 158, 158, 158, 158, 158),
(1224, 8, 138, 138, 0, 0, 0),
(1225, 8, 137, 137, 0, 0, 0),
(1226, 8, 131, 131, 0, 0, 0),
(1227, 8, 132, 132, 0, 0, 0),
(1228, 8, 133, 133, 0, 0, 0),
(1229, 8, 159, 159, 159, 159, 159),
(1230, 8, 136, 136, 0, 0, 0),
(1231, 8, 134, 134, 0, 0, 0),
(1232, 8, 135, 135, 0, 0, 0),
(1233, 8, 111, 111, 0, 0, 0),
(1234, 8, 149, 149, 149, 149, 149),
(1235, 8, 112, 112, 0, 0, 0),
(1236, 8, 113, 113, 0, 0, 0),
(1237, 8, 114, 114, 0, 0, 0),
(1238, 8, 115, 115, 0, 0, 0),
(1239, 8, 116, 116, 0, 0, 0),
(1240, 8, 145, 145, 0, 0, 0),
(1241, 8, 26, 26, 0, 0, 0),
(1242, 8, 139, 139, 0, 0, 0),
(1243, 9, 1, 1, 0, 0, 0),
(1244, 9, 2, 2, 0, 0, 0),
(1245, 9, 5, 5, 0, 0, 0),
(1246, 9, 110, 110, 0, 0, 0),
(1247, 9, 57, 57, 57, 57, 57),
(1248, 9, 54, 54, 54, 54, 54),
(1249, 9, 58, 58, 58, 58, 58),
(1250, 9, 56, 56, 56, 56, 56),
(1251, 9, 150, 150, 150, 150, 150),
(1252, 9, 39, 39, 39, 39, 39),
(1253, 9, 151, 151, 151, 151, 151),
(1254, 9, 152, 152, 152, 152, 152),
(1255, 9, 153, 153, 153, 153, 153),
(1256, 9, 154, 154, 154, 154, 154),
(1257, 9, 55, 55, 55, 55, 55),
(1258, 9, 12, 12, 12, 12, 12),
(1259, 9, 13, 13, 13, 13, 13),
(1260, 9, 156, 156, 156, 156, 156),
(1261, 9, 14, 14, 14, 14, 14),
(1262, 9, 51, 51, 51, 51, 51),
(1263, 9, 15, 15, 15, 15, 15),
(1264, 9, 140, 140, 140, 140, 140),
(1265, 9, 16, 16, 16, 16, 16),
(1266, 9, 21, 0, 0, 0, 0),
(1267, 9, 22, 22, 0, 0, 0),
(1268, 9, 23, 23, 23, 23, 23),
(1269, 9, 141, 141, 141, 141, 141),
(1270, 9, 142, 142, 0, 0, 0),
(1271, 9, 144, 144, 144, 144, 144),
(1272, 9, 143, 143, 143, 143, 143),
(1273, 9, 6, 6, 6, 6, 6),
(1274, 9, 29, 29, 29, 29, 29),
(1275, 9, 31, 31, 31, 31, 31),
(1276, 9, 30, 30, 30, 30, 30),
(1277, 9, 32, 32, 32, 32, 32),
(1278, 9, 33, 33, 0, 0, 0),
(1279, 9, 52, 52, 0, 0, 0),
(1280, 9, 34, 34, 0, 0, 0),
(1281, 9, 36, 36, 36, 36, 36),
(1282, 9, 4, 4, 4, 4, 4),
(1283, 9, 70, 70, 70, 70, 70),
(1284, 9, 75, 75, 75, 75, 75),
(1285, 9, 76, 76, 76, 76, 76),
(1286, 9, 81, 81, 81, 81, 81),
(1287, 9, 77, 0, 0, 0, 0),
(1288, 9, 84, 84, 0, 0, 0),
(1289, 9, 78, 0, 0, 0, 0),
(1290, 9, 82, 82, 82, 82, 82),
(1291, 9, 83, 83, 0, 0, 0),
(1292, 9, 79, 79, 0, 0, 0),
(1293, 9, 105, 105, 105, 105, 105),
(1294, 9, 108, 108, 0, 0, 0),
(1295, 9, 106, 106, 0, 0, 0),
(1296, 9, 148, 148, 148, 148, 148),
(1297, 9, 107, 107, 0, 0, 0),
(1298, 9, 102, 102, 102, 102, 102),
(1299, 9, 103, 103, 103, 103, 103),
(1300, 9, 104, 104, 0, 0, 0),
(1301, 9, 89, 89, 89, 89, 89),
(1302, 9, 94, 94, 94, 94, 94),
(1303, 9, 95, 95, 95, 95, 95),
(1304, 9, 90, 90, 0, 0, 0),
(1305, 9, 91, 91, 0, 0, 0),
(1306, 9, 92, 92, 0, 0, 0),
(1307, 9, 93, 93, 0, 0, 0),
(1308, 9, 96, 96, 0, 0, 0),
(1309, 9, 98, 98, 0, 0, 0),
(1310, 9, 97, 97, 0, 0, 0),
(1311, 9, 74, 74, 0, 0, 0),
(1312, 9, 99, 99, 99, 99, 99),
(1313, 9, 85, 85, 85, 85, 85),
(1314, 9, 86, 86, 86, 86, 0),
(1315, 9, 88, 88, 88, 88, 0),
(1316, 9, 87, 87, 0, 0, 0),
(1317, 9, 72, 72, 0, 0, 0),
(1318, 9, 101, 101, 101, 101, 101),
(1319, 9, 100, 100, 100, 100, 100),
(1320, 9, 73, 73, 73, 73, 73),
(1321, 9, 71, 71, 71, 71, 71),
(1322, 9, 69, 69, 69, 69, 69),
(1323, 9, 42, 42, 42, 42, 42),
(1324, 9, 59, 0, 0, 0, 0),
(1325, 9, 66, 66, 0, 0, 0),
(1326, 9, 67, 67, 0, 0, 0),
(1327, 9, 68, 68, 0, 0, 0),
(1328, 9, 146, 0, 0, 0, 0),
(1329, 9, 43, 43, 0, 0, 0),
(1330, 9, 44, 44, 0, 0, 0),
(1331, 9, 45, 45, 0, 0, 0),
(1332, 9, 46, 46, 0, 0, 0),
(1333, 9, 47, 47, 0, 0, 0),
(1334, 9, 48, 48, 0, 0, 0),
(1335, 9, 49, 49, 0, 0, 0),
(1336, 9, 50, 50, 0, 0, 0),
(1337, 9, 53, 53, 0, 0, 0),
(1338, 9, 147, 147, 147, 147, 147),
(1339, 9, 60, 60, 0, 0, 0),
(1340, 9, 61, 61, 0, 0, 0),
(1341, 9, 62, 62, 0, 0, 0),
(1342, 9, 63, 63, 0, 0, 0),
(1343, 9, 24, 24, 24, 24, 24),
(1344, 9, 25, 25, 25, 25, 25),
(1345, 9, 120, 120, 0, 0, 0),
(1346, 9, 121, 121, 0, 0, 0),
(1347, 9, 122, 122, 122, 122, 122),
(1348, 9, 123, 123, 123, 123, 123),
(1349, 9, 124, 124, 124, 124, 124),
(1350, 9, 125, 125, 125, 125, 125),
(1351, 9, 126, 126, 126, 126, 126),
(1352, 9, 127, 127, 127, 127, 127),
(1353, 9, 128, 128, 128, 128, 128),
(1354, 9, 119, 119, 0, 0, 0),
(1355, 9, 118, 118, 0, 0, 0),
(1356, 9, 117, 117, 0, 0, 0),
(1357, 9, 129, 129, 129, 129, 129),
(1358, 9, 130, 130, 130, 130, 130),
(1359, 9, 155, 155, 155, 155, 155),
(1360, 9, 157, 157, 157, 157, 157),
(1361, 9, 158, 158, 158, 158, 158),
(1362, 9, 138, 138, 0, 0, 0),
(1363, 9, 137, 137, 0, 0, 0),
(1364, 9, 131, 131, 0, 0, 0),
(1365, 9, 132, 132, 0, 0, 0),
(1366, 9, 133, 133, 0, 0, 0),
(1367, 9, 159, 159, 159, 159, 159),
(1368, 9, 136, 136, 0, 0, 0),
(1369, 9, 134, 134, 0, 0, 0),
(1370, 9, 135, 135, 0, 0, 0),
(1371, 9, 111, 111, 0, 0, 0),
(1372, 9, 149, 149, 149, 149, 149),
(1373, 9, 112, 112, 0, 0, 0),
(1374, 9, 113, 113, 0, 0, 0),
(1375, 9, 114, 114, 0, 0, 0),
(1376, 9, 115, 115, 0, 0, 0),
(1377, 9, 116, 116, 0, 0, 0),
(1378, 9, 145, 145, 0, 0, 0),
(1379, 9, 26, 26, 0, 0, 0),
(1380, 9, 139, 139, 0, 0, 0),
(1381, 10, 1, 1, 0, 0, 0),
(1382, 10, 2, 2, 0, 0, 0),
(1383, 10, 5, 5, 0, 0, 0),
(1384, 10, 110, 110, 0, 0, 0),
(1385, 10, 57, 57, 57, 57, 57),
(1386, 10, 54, 54, 54, 54, 54),
(1387, 10, 58, 58, 58, 58, 58),
(1388, 10, 56, 56, 56, 56, 56),
(1389, 10, 150, 150, 150, 150, 150),
(1390, 10, 39, 39, 39, 39, 39),
(1391, 10, 151, 151, 151, 151, 151),
(1392, 10, 152, 152, 152, 152, 152),
(1393, 10, 153, 153, 153, 153, 153),
(1394, 10, 154, 154, 154, 154, 154),
(1395, 10, 55, 55, 55, 55, 55),
(1396, 10, 12, 12, 12, 12, 12),
(1397, 10, 13, 13, 13, 13, 13),
(1398, 10, 156, 156, 156, 156, 156),
(1399, 10, 14, 14, 14, 14, 14),
(1400, 10, 51, 51, 51, 51, 51),
(1401, 10, 15, 15, 15, 15, 15),
(1402, 10, 140, 140, 140, 140, 140),
(1403, 10, 16, 16, 16, 16, 16),
(1404, 10, 21, 0, 0, 0, 0),
(1405, 10, 22, 22, 0, 0, 0),
(1406, 10, 23, 23, 23, 23, 23),
(1407, 10, 141, 141, 141, 141, 141),
(1408, 10, 142, 142, 0, 0, 0),
(1409, 10, 144, 144, 144, 144, 144),
(1410, 10, 143, 143, 143, 143, 143),
(1411, 10, 6, 6, 6, 6, 6),
(1412, 10, 29, 29, 29, 29, 29),
(1413, 10, 31, 31, 31, 31, 31),
(1414, 10, 30, 30, 30, 30, 30),
(1415, 10, 32, 32, 32, 32, 32),
(1416, 10, 33, 33, 0, 0, 0),
(1417, 10, 52, 52, 0, 0, 0),
(1418, 10, 34, 34, 0, 0, 0),
(1419, 10, 36, 36, 36, 36, 36),
(1420, 10, 4, 4, 4, 4, 4),
(1421, 10, 70, 70, 70, 70, 70),
(1422, 10, 75, 75, 75, 75, 75),
(1423, 10, 76, 76, 76, 76, 76),
(1424, 10, 81, 81, 81, 81, 81),
(1425, 10, 77, 0, 0, 0, 0),
(1426, 10, 84, 84, 0, 0, 0),
(1427, 10, 78, 0, 0, 0, 0),
(1428, 10, 82, 82, 82, 82, 82),
(1429, 10, 83, 83, 0, 0, 0),
(1430, 10, 79, 79, 0, 0, 0),
(1431, 10, 105, 105, 105, 105, 105),
(1432, 10, 108, 108, 0, 0, 0),
(1433, 10, 106, 106, 0, 0, 0),
(1434, 10, 148, 148, 148, 148, 148),
(1435, 10, 107, 107, 0, 0, 0),
(1436, 10, 102, 102, 102, 102, 102),
(1437, 10, 103, 103, 103, 103, 103),
(1438, 10, 104, 104, 0, 0, 0),
(1439, 10, 89, 89, 89, 89, 89),
(1440, 10, 94, 94, 94, 94, 94),
(1441, 10, 95, 95, 95, 95, 95),
(1442, 10, 90, 90, 0, 0, 0),
(1443, 10, 91, 91, 0, 0, 0),
(1444, 10, 92, 92, 0, 0, 0),
(1445, 10, 93, 93, 0, 0, 0),
(1446, 10, 96, 96, 0, 0, 0),
(1447, 10, 98, 98, 0, 0, 0),
(1448, 10, 97, 97, 0, 0, 0),
(1449, 10, 74, 74, 0, 0, 0),
(1450, 10, 99, 99, 99, 99, 99),
(1451, 10, 85, 85, 85, 85, 85),
(1452, 10, 86, 86, 86, 86, 0),
(1453, 10, 88, 88, 88, 88, 0),
(1454, 10, 87, 87, 0, 0, 0),
(1455, 10, 72, 72, 0, 0, 0),
(1456, 10, 101, 101, 101, 101, 101),
(1457, 10, 100, 100, 100, 100, 100),
(1458, 10, 73, 73, 73, 73, 73),
(1459, 10, 71, 71, 71, 71, 71),
(1460, 10, 69, 69, 69, 69, 69),
(1461, 10, 42, 42, 42, 42, 42),
(1462, 10, 59, 0, 0, 0, 0),
(1463, 10, 66, 66, 0, 0, 0),
(1464, 10, 67, 67, 0, 0, 0),
(1465, 10, 68, 68, 0, 0, 0),
(1466, 10, 146, 0, 0, 0, 0),
(1467, 10, 43, 43, 0, 0, 0),
(1468, 10, 44, 44, 0, 0, 0),
(1469, 10, 45, 45, 0, 0, 0),
(1470, 10, 46, 46, 0, 0, 0),
(1471, 10, 47, 47, 0, 0, 0),
(1472, 10, 48, 48, 0, 0, 0),
(1473, 10, 49, 49, 0, 0, 0),
(1474, 10, 50, 50, 0, 0, 0),
(1475, 10, 53, 53, 0, 0, 0),
(1476, 10, 147, 147, 147, 147, 147),
(1477, 10, 60, 60, 0, 0, 0),
(1478, 10, 61, 61, 0, 0, 0),
(1479, 10, 62, 62, 0, 0, 0),
(1480, 10, 63, 63, 0, 0, 0),
(1481, 10, 24, 24, 24, 24, 24),
(1482, 10, 25, 25, 25, 25, 25),
(1483, 10, 120, 120, 0, 0, 0),
(1484, 10, 121, 121, 0, 0, 0),
(1485, 10, 122, 122, 122, 122, 122),
(1486, 10, 123, 123, 123, 123, 123),
(1487, 10, 124, 124, 124, 124, 124),
(1488, 10, 125, 125, 125, 125, 125),
(1489, 10, 126, 126, 126, 126, 126),
(1490, 10, 127, 127, 127, 127, 127),
(1491, 10, 128, 128, 128, 128, 128),
(1492, 10, 119, 119, 0, 0, 0),
(1493, 10, 118, 118, 0, 0, 0),
(1494, 10, 117, 117, 0, 0, 0),
(1495, 10, 129, 129, 129, 129, 129),
(1496, 10, 130, 130, 130, 130, 130),
(1497, 10, 155, 155, 155, 155, 155),
(1498, 10, 157, 157, 157, 157, 157),
(1499, 10, 158, 158, 158, 158, 158),
(1500, 10, 138, 138, 0, 0, 0),
(1501, 10, 137, 137, 0, 0, 0),
(1502, 10, 131, 131, 0, 0, 0),
(1503, 10, 132, 132, 0, 0, 0),
(1504, 10, 133, 133, 0, 0, 0),
(1505, 10, 159, 159, 159, 159, 159),
(1506, 10, 136, 136, 0, 0, 0),
(1507, 10, 134, 134, 0, 0, 0),
(1508, 10, 135, 135, 0, 0, 0),
(1509, 10, 111, 111, 0, 0, 0),
(1510, 10, 149, 149, 149, 149, 149),
(1511, 10, 112, 112, 0, 0, 0),
(1512, 10, 113, 113, 0, 0, 0),
(1513, 10, 114, 114, 0, 0, 0),
(1514, 10, 115, 115, 0, 0, 0),
(1515, 10, 116, 116, 0, 0, 0),
(1516, 10, 145, 145, 0, 0, 0),
(1517, 10, 26, 26, 0, 0, 0),
(1518, 10, 139, 139, 0, 0, 0),
(1519, 11, 1, 1, 0, 0, 0),
(1520, 11, 2, 2, 0, 0, 0),
(1521, 11, 5, 5, 0, 0, 0),
(1522, 11, 110, 110, 0, 0, 0),
(1523, 11, 57, 57, 57, 57, 57),
(1524, 11, 54, 54, 54, 54, 54),
(1525, 11, 58, 58, 58, 58, 58),
(1526, 11, 56, 56, 56, 56, 56),
(1527, 11, 150, 150, 150, 150, 150),
(1528, 11, 39, 39, 39, 39, 39),
(1529, 11, 151, 151, 151, 151, 151),
(1530, 11, 152, 152, 152, 152, 152),
(1531, 11, 153, 153, 153, 153, 153),
(1532, 11, 154, 154, 154, 154, 154),
(1533, 11, 55, 55, 55, 55, 55),
(1534, 11, 12, 12, 12, 12, 12),
(1535, 11, 13, 13, 13, 13, 13),
(1536, 11, 156, 156, 156, 156, 156),
(1537, 11, 14, 14, 14, 14, 14),
(1538, 11, 51, 51, 51, 51, 51),
(1539, 11, 15, 15, 15, 15, 15),
(1540, 11, 140, 140, 140, 140, 140),
(1541, 11, 16, 16, 16, 16, 16),
(1542, 11, 21, 0, 0, 0, 0),
(1543, 11, 22, 22, 0, 0, 0),
(1544, 11, 23, 23, 23, 23, 23),
(1545, 11, 141, 141, 141, 141, 141),
(1546, 11, 142, 142, 0, 0, 0),
(1547, 11, 144, 144, 144, 144, 144),
(1548, 11, 143, 143, 143, 143, 143),
(1549, 11, 6, 6, 6, 6, 6),
(1550, 11, 29, 29, 29, 29, 29),
(1551, 11, 31, 31, 31, 31, 31),
(1552, 11, 30, 30, 30, 30, 30),
(1553, 11, 32, 32, 32, 32, 32),
(1554, 11, 33, 33, 0, 0, 0),
(1555, 11, 52, 52, 0, 0, 0),
(1556, 11, 34, 34, 0, 0, 0),
(1557, 11, 36, 36, 36, 36, 36),
(1558, 11, 4, 4, 4, 4, 4),
(1559, 11, 70, 70, 70, 70, 70),
(1560, 11, 75, 75, 75, 75, 75),
(1561, 11, 76, 76, 76, 76, 76),
(1562, 11, 81, 81, 81, 81, 81),
(1563, 11, 77, 0, 0, 0, 0),
(1564, 11, 84, 84, 0, 0, 0),
(1565, 11, 78, 0, 0, 0, 0),
(1566, 11, 82, 82, 82, 82, 82),
(1567, 11, 83, 83, 0, 0, 0),
(1568, 11, 79, 79, 0, 0, 0),
(1569, 11, 105, 105, 105, 105, 105),
(1570, 11, 108, 108, 0, 0, 0),
(1571, 11, 106, 106, 0, 0, 0),
(1572, 11, 148, 148, 148, 148, 148),
(1573, 11, 107, 107, 0, 0, 0),
(1574, 11, 102, 102, 102, 102, 102),
(1575, 11, 103, 103, 103, 103, 103),
(1576, 11, 104, 104, 0, 0, 0),
(1577, 11, 89, 89, 89, 89, 89),
(1578, 11, 94, 94, 94, 94, 94),
(1579, 11, 95, 95, 95, 95, 95),
(1580, 11, 90, 90, 0, 0, 0),
(1581, 11, 91, 91, 0, 0, 0),
(1582, 11, 92, 92, 0, 0, 0),
(1583, 11, 93, 93, 0, 0, 0),
(1584, 11, 96, 96, 0, 0, 0),
(1585, 11, 98, 98, 0, 0, 0),
(1586, 11, 97, 97, 0, 0, 0),
(1587, 11, 74, 74, 0, 0, 0),
(1588, 11, 99, 99, 99, 99, 99),
(1589, 11, 85, 85, 85, 85, 85),
(1590, 11, 86, 86, 86, 86, 0),
(1591, 11, 88, 88, 88, 88, 0),
(1592, 11, 87, 87, 0, 0, 0),
(1593, 11, 72, 72, 0, 0, 0),
(1594, 11, 101, 101, 101, 101, 101),
(1595, 11, 100, 100, 100, 100, 100),
(1596, 11, 73, 73, 73, 73, 73),
(1597, 11, 71, 71, 71, 71, 71),
(1598, 11, 69, 69, 69, 69, 69),
(1599, 11, 42, 42, 42, 42, 42),
(1600, 11, 59, 0, 0, 0, 0),
(1601, 11, 66, 66, 0, 0, 0),
(1602, 11, 67, 67, 0, 0, 0),
(1603, 11, 68, 68, 0, 0, 0),
(1604, 11, 146, 0, 0, 0, 0),
(1605, 11, 43, 43, 0, 0, 0),
(1606, 11, 44, 44, 0, 0, 0),
(1607, 11, 45, 45, 0, 0, 0),
(1608, 11, 46, 46, 0, 0, 0),
(1609, 11, 47, 47, 0, 0, 0),
(1610, 11, 48, 48, 0, 0, 0),
(1611, 11, 49, 49, 0, 0, 0),
(1612, 11, 50, 50, 0, 0, 0),
(1613, 11, 53, 53, 0, 0, 0),
(1614, 11, 147, 147, 147, 147, 147),
(1615, 11, 60, 60, 0, 0, 0),
(1616, 11, 61, 61, 0, 0, 0),
(1617, 11, 62, 62, 0, 0, 0),
(1618, 11, 63, 63, 0, 0, 0),
(1619, 11, 24, 24, 24, 24, 24),
(1620, 11, 25, 25, 25, 25, 25),
(1621, 11, 120, 120, 0, 0, 0),
(1622, 11, 121, 121, 0, 0, 0),
(1623, 11, 122, 122, 122, 122, 122),
(1624, 11, 123, 123, 123, 123, 123),
(1625, 11, 124, 124, 124, 124, 124),
(1626, 11, 125, 125, 125, 125, 125),
(1627, 11, 126, 126, 126, 126, 126),
(1628, 11, 127, 127, 127, 127, 127),
(1629, 11, 128, 128, 128, 128, 128),
(1630, 11, 119, 119, 0, 0, 0),
(1631, 11, 118, 118, 0, 0, 0),
(1632, 11, 117, 117, 0, 0, 0),
(1633, 11, 129, 129, 129, 129, 129),
(1634, 11, 130, 130, 130, 130, 130),
(1635, 11, 155, 155, 155, 155, 155),
(1636, 11, 157, 157, 157, 157, 157),
(1637, 11, 158, 158, 158, 158, 158),
(1638, 11, 138, 138, 0, 0, 0),
(1639, 11, 137, 137, 0, 0, 0),
(1640, 11, 131, 131, 0, 0, 0),
(1641, 11, 132, 132, 0, 0, 0),
(1642, 11, 133, 133, 0, 0, 0),
(1643, 11, 159, 159, 159, 159, 159),
(1644, 11, 136, 136, 0, 0, 0),
(1645, 11, 134, 134, 0, 0, 0),
(1646, 11, 135, 135, 0, 0, 0),
(1647, 11, 111, 111, 0, 0, 0),
(1648, 11, 149, 149, 149, 149, 149),
(1649, 11, 112, 112, 0, 0, 0),
(1650, 11, 113, 113, 0, 0, 0),
(1651, 11, 114, 114, 0, 0, 0),
(1652, 11, 115, 115, 0, 0, 0),
(1653, 11, 116, 116, 0, 0, 0),
(1654, 11, 145, 145, 0, 0, 0),
(1655, 11, 26, 26, 0, 0, 0),
(1656, 11, 139, 139, 0, 0, 0),
(1657, 12, 1, 1, 0, 0, 0),
(1658, 12, 2, 2, 0, 0, 0),
(1659, 12, 5, 5, 0, 0, 0),
(1660, 12, 110, 110, 0, 0, 0),
(1661, 12, 57, 57, 57, 57, 57),
(1662, 12, 54, 54, 54, 54, 54),
(1663, 12, 58, 58, 58, 58, 58),
(1664, 12, 56, 56, 56, 56, 56),
(1665, 12, 150, 150, 150, 150, 150),
(1666, 12, 39, 39, 39, 39, 39),
(1667, 12, 151, 151, 151, 151, 151),
(1668, 12, 152, 152, 152, 152, 152),
(1669, 12, 153, 153, 153, 153, 153),
(1670, 12, 154, 154, 154, 154, 154),
(1671, 12, 55, 55, 55, 55, 55),
(1672, 12, 12, 12, 12, 12, 12),
(1673, 12, 13, 13, 13, 13, 13),
(1674, 12, 156, 156, 156, 156, 156),
(1675, 12, 14, 14, 14, 14, 14),
(1676, 12, 51, 51, 51, 51, 51),
(1677, 12, 15, 15, 15, 15, 15),
(1678, 12, 140, 140, 140, 140, 140),
(1679, 12, 16, 16, 16, 16, 16),
(1680, 12, 21, 0, 0, 0, 0),
(1681, 12, 22, 22, 0, 0, 0),
(1682, 12, 23, 23, 23, 23, 23),
(1683, 12, 141, 141, 141, 141, 141),
(1684, 12, 142, 142, 0, 0, 0),
(1685, 12, 144, 144, 144, 144, 144),
(1686, 12, 143, 143, 143, 143, 143),
(1687, 12, 6, 6, 6, 6, 6),
(1688, 12, 29, 29, 29, 29, 29),
(1689, 12, 31, 31, 31, 31, 31),
(1690, 12, 30, 30, 30, 30, 30),
(1691, 12, 32, 32, 32, 32, 32),
(1692, 12, 33, 33, 0, 0, 0),
(1693, 12, 52, 52, 0, 0, 0),
(1694, 12, 34, 34, 0, 0, 0),
(1695, 12, 36, 36, 36, 36, 36),
(1696, 12, 4, 4, 4, 4, 4),
(1697, 12, 70, 70, 70, 70, 70),
(1698, 12, 75, 75, 75, 75, 75),
(1699, 12, 76, 76, 76, 76, 76),
(1700, 12, 81, 81, 81, 81, 81),
(1701, 12, 77, 0, 0, 0, 0),
(1702, 12, 84, 84, 0, 0, 0),
(1703, 12, 78, 0, 0, 0, 0),
(1704, 12, 82, 82, 82, 82, 82),
(1705, 12, 83, 83, 0, 0, 0),
(1706, 12, 79, 79, 0, 0, 0),
(1707, 12, 105, 105, 105, 105, 105),
(1708, 12, 108, 108, 0, 0, 0),
(1709, 12, 106, 106, 0, 0, 0),
(1710, 12, 148, 148, 148, 148, 148),
(1711, 12, 107, 107, 0, 0, 0),
(1712, 12, 102, 102, 102, 102, 102),
(1713, 12, 103, 103, 103, 103, 103),
(1714, 12, 104, 104, 0, 0, 0),
(1715, 12, 89, 89, 89, 89, 89),
(1716, 12, 94, 94, 94, 94, 94),
(1717, 12, 95, 95, 95, 95, 95),
(1718, 12, 90, 90, 0, 0, 0),
(1719, 12, 91, 91, 0, 0, 0),
(1720, 12, 92, 92, 0, 0, 0),
(1721, 12, 93, 93, 0, 0, 0),
(1722, 12, 96, 96, 0, 0, 0),
(1723, 12, 98, 98, 0, 0, 0),
(1724, 12, 97, 97, 0, 0, 0),
(1725, 12, 74, 74, 0, 0, 0),
(1726, 12, 99, 99, 99, 99, 99),
(1727, 12, 85, 85, 85, 85, 85),
(1728, 12, 86, 86, 86, 86, 0),
(1729, 12, 88, 88, 88, 88, 0),
(1730, 12, 87, 87, 0, 0, 0),
(1731, 12, 72, 72, 0, 0, 0),
(1732, 12, 101, 101, 101, 101, 101),
(1733, 12, 100, 100, 100, 100, 100),
(1734, 12, 73, 73, 73, 73, 73),
(1735, 12, 71, 71, 71, 71, 71),
(1736, 12, 69, 69, 69, 69, 69),
(1737, 12, 42, 42, 42, 42, 42),
(1738, 12, 59, 0, 0, 0, 0),
(1739, 12, 66, 66, 0, 0, 0),
(1740, 12, 67, 67, 0, 0, 0),
(1741, 12, 68, 68, 0, 0, 0),
(1742, 12, 146, 0, 0, 0, 0),
(1743, 12, 43, 43, 0, 0, 0),
(1744, 12, 44, 44, 0, 0, 0),
(1745, 12, 45, 45, 0, 0, 0),
(1746, 12, 46, 46, 0, 0, 0),
(1747, 12, 47, 47, 0, 0, 0),
(1748, 12, 48, 48, 0, 0, 0),
(1749, 12, 49, 49, 0, 0, 0),
(1750, 12, 50, 50, 0, 0, 0),
(1751, 12, 53, 53, 0, 0, 0),
(1752, 12, 147, 147, 147, 147, 147),
(1753, 12, 60, 60, 0, 0, 0),
(1754, 12, 61, 61, 0, 0, 0),
(1755, 12, 62, 62, 0, 0, 0),
(1756, 12, 63, 63, 0, 0, 0),
(1757, 12, 24, 24, 24, 24, 24),
(1758, 12, 25, 25, 25, 25, 25),
(1759, 12, 120, 120, 0, 0, 0),
(1760, 12, 121, 121, 0, 0, 0),
(1761, 12, 122, 122, 122, 122, 122),
(1762, 12, 123, 123, 123, 123, 123),
(1763, 12, 124, 124, 124, 124, 124),
(1764, 12, 125, 125, 125, 125, 125),
(1765, 12, 126, 126, 126, 126, 126),
(1766, 12, 127, 127, 127, 127, 127),
(1767, 12, 128, 128, 128, 128, 128),
(1768, 12, 119, 119, 0, 0, 0),
(1769, 12, 118, 118, 0, 0, 0),
(1770, 12, 117, 117, 0, 0, 0),
(1771, 12, 129, 129, 129, 129, 129),
(1772, 12, 130, 130, 130, 130, 130),
(1773, 12, 155, 155, 155, 155, 155),
(1774, 12, 157, 157, 157, 157, 157),
(1775, 12, 158, 158, 158, 158, 158),
(1776, 12, 138, 138, 0, 0, 0),
(1777, 12, 137, 137, 0, 0, 0),
(1778, 12, 131, 131, 0, 0, 0),
(1779, 12, 132, 132, 0, 0, 0),
(1780, 12, 133, 133, 0, 0, 0),
(1781, 12, 159, 159, 159, 159, 159),
(1782, 12, 136, 136, 0, 0, 0),
(1783, 12, 134, 134, 0, 0, 0),
(1784, 12, 135, 135, 0, 0, 0),
(1785, 12, 111, 111, 0, 0, 0),
(1786, 12, 149, 149, 149, 149, 149),
(1787, 12, 112, 112, 0, 0, 0),
(1788, 12, 113, 113, 0, 0, 0),
(1789, 12, 114, 114, 0, 0, 0),
(1790, 12, 115, 115, 0, 0, 0),
(1791, 12, 116, 116, 0, 0, 0),
(1792, 12, 145, 145, 0, 0, 0),
(1793, 12, 26, 26, 0, 0, 0),
(1794, 12, 139, 139, 0, 0, 0),
(1795, 13, 1, 1, 0, 0, 0),
(1796, 13, 2, 2, 0, 0, 0),
(1797, 13, 5, 5, 0, 0, 0),
(1798, 13, 110, 110, 0, 0, 0),
(1799, 13, 57, 57, 57, 57, 57),
(1800, 13, 54, 54, 54, 54, 54),
(1801, 13, 58, 58, 58, 58, 58),
(1802, 13, 56, 56, 56, 56, 56),
(1803, 13, 150, 150, 150, 150, 150),
(1804, 13, 39, 39, 39, 39, 39),
(1805, 13, 151, 151, 151, 151, 151),
(1806, 13, 152, 152, 152, 152, 152),
(1807, 13, 153, 153, 153, 153, 153),
(1808, 13, 154, 154, 154, 154, 154),
(1809, 13, 55, 55, 55, 55, 55),
(1810, 13, 12, 12, 12, 12, 12),
(1811, 13, 13, 13, 13, 13, 13),
(1812, 13, 156, 156, 156, 156, 156),
(1813, 13, 14, 14, 14, 14, 14),
(1814, 13, 51, 51, 51, 51, 51),
(1815, 13, 15, 15, 15, 15, 15),
(1816, 13, 140, 140, 140, 140, 140),
(1817, 13, 16, 16, 16, 16, 16),
(1818, 13, 21, 0, 0, 0, 0),
(1819, 13, 22, 22, 0, 0, 0),
(1820, 13, 23, 23, 23, 23, 23),
(1821, 13, 141, 141, 141, 141, 141),
(1822, 13, 142, 142, 0, 0, 0),
(1823, 13, 144, 144, 144, 144, 144),
(1824, 13, 143, 143, 143, 143, 143),
(1825, 13, 6, 6, 6, 6, 6),
(1826, 13, 29, 29, 29, 29, 29),
(1827, 13, 31, 31, 31, 31, 31),
(1828, 13, 30, 30, 30, 30, 30),
(1829, 13, 32, 32, 32, 32, 32),
(1830, 13, 33, 33, 0, 0, 0),
(1831, 13, 52, 52, 0, 0, 0),
(1832, 13, 34, 34, 0, 0, 0),
(1833, 13, 36, 36, 36, 36, 36),
(1834, 13, 4, 4, 4, 4, 4),
(1835, 13, 70, 70, 70, 70, 70),
(1836, 13, 75, 75, 75, 75, 75),
(1837, 13, 76, 76, 76, 76, 76),
(1838, 13, 81, 81, 81, 81, 81),
(1839, 13, 77, 0, 0, 0, 0),
(1840, 13, 84, 84, 0, 0, 0),
(1841, 13, 78, 0, 0, 0, 0),
(1842, 13, 82, 82, 82, 82, 82),
(1843, 13, 83, 83, 0, 0, 0),
(1844, 13, 79, 79, 0, 0, 0),
(1845, 13, 105, 105, 105, 105, 105),
(1846, 13, 108, 108, 0, 0, 0),
(1847, 13, 106, 106, 0, 0, 0),
(1848, 13, 148, 148, 148, 148, 148),
(1849, 13, 107, 107, 0, 0, 0),
(1850, 13, 102, 102, 102, 102, 102),
(1851, 13, 103, 103, 103, 103, 103),
(1852, 13, 104, 104, 0, 0, 0),
(1853, 13, 89, 89, 89, 89, 89),
(1854, 13, 94, 94, 94, 94, 94),
(1855, 13, 95, 95, 95, 95, 95),
(1856, 13, 90, 90, 0, 0, 0),
(1857, 13, 91, 91, 0, 0, 0),
(1858, 13, 92, 92, 0, 0, 0),
(1859, 13, 93, 93, 0, 0, 0),
(1860, 13, 96, 96, 0, 0, 0),
(1861, 13, 98, 98, 0, 0, 0),
(1862, 13, 97, 97, 0, 0, 0),
(1863, 13, 74, 74, 0, 0, 0),
(1864, 13, 99, 99, 99, 99, 99),
(1865, 13, 85, 85, 85, 85, 85),
(1866, 13, 86, 86, 86, 86, 0),
(1867, 13, 88, 88, 88, 88, 0),
(1868, 13, 87, 87, 0, 0, 0),
(1869, 13, 72, 72, 0, 0, 0),
(1870, 13, 101, 101, 101, 101, 101),
(1871, 13, 100, 100, 100, 100, 100),
(1872, 13, 73, 73, 73, 73, 73),
(1873, 13, 71, 71, 71, 71, 71),
(1874, 13, 69, 69, 69, 69, 69),
(1875, 13, 42, 42, 42, 42, 42),
(1876, 13, 59, 0, 0, 0, 0),
(1877, 13, 66, 66, 0, 0, 0),
(1878, 13, 67, 67, 0, 0, 0),
(1879, 13, 68, 68, 0, 0, 0),
(1880, 13, 146, 0, 0, 0, 0),
(1881, 13, 43, 43, 0, 0, 0),
(1882, 13, 44, 44, 0, 0, 0),
(1883, 13, 45, 45, 0, 0, 0),
(1884, 13, 46, 46, 0, 0, 0),
(1885, 13, 47, 47, 0, 0, 0),
(1886, 13, 48, 48, 0, 0, 0);
INSERT INTO `tbl_user_role` (`user_role_id`, `designations_id`, `menu_id`, `view`, `created`, `edited`, `deleted`) VALUES
(1887, 13, 49, 49, 0, 0, 0),
(1888, 13, 50, 50, 0, 0, 0),
(1889, 13, 53, 53, 0, 0, 0),
(1890, 13, 147, 147, 147, 147, 147),
(1891, 13, 60, 60, 0, 0, 0),
(1892, 13, 61, 61, 0, 0, 0),
(1893, 13, 62, 62, 0, 0, 0),
(1894, 13, 63, 63, 0, 0, 0),
(1895, 13, 24, 24, 24, 24, 24),
(1896, 13, 25, 25, 25, 25, 25),
(1897, 13, 120, 120, 0, 0, 0),
(1898, 13, 121, 121, 0, 0, 0),
(1899, 13, 122, 122, 122, 122, 122),
(1900, 13, 123, 123, 123, 123, 123),
(1901, 13, 124, 124, 124, 124, 124),
(1902, 13, 125, 125, 125, 125, 125),
(1903, 13, 126, 126, 126, 126, 126),
(1904, 13, 127, 127, 127, 127, 127),
(1905, 13, 128, 128, 128, 128, 128),
(1906, 13, 119, 119, 0, 0, 0),
(1907, 13, 118, 118, 0, 0, 0),
(1908, 13, 117, 117, 0, 0, 0),
(1909, 13, 129, 129, 129, 129, 129),
(1910, 13, 130, 130, 130, 130, 130),
(1911, 13, 155, 155, 155, 155, 155),
(1912, 13, 157, 157, 157, 157, 157),
(1913, 13, 158, 158, 158, 158, 158),
(1914, 13, 138, 138, 0, 0, 0),
(1915, 13, 137, 137, 0, 0, 0),
(1916, 13, 131, 131, 0, 0, 0),
(1917, 13, 132, 132, 0, 0, 0),
(1918, 13, 133, 133, 0, 0, 0),
(1919, 13, 159, 159, 159, 159, 159),
(1920, 13, 136, 136, 0, 0, 0),
(1921, 13, 134, 134, 0, 0, 0),
(1922, 13, 135, 135, 0, 0, 0),
(1923, 13, 111, 111, 0, 0, 0),
(1924, 13, 149, 149, 149, 149, 149),
(1925, 13, 112, 112, 0, 0, 0),
(1926, 13, 113, 113, 0, 0, 0),
(1927, 13, 114, 114, 0, 0, 0),
(1928, 13, 115, 115, 0, 0, 0),
(1929, 13, 116, 116, 0, 0, 0),
(1930, 13, 145, 145, 0, 0, 0),
(1931, 13, 26, 26, 0, 0, 0),
(1932, 13, 139, 139, 0, 0, 0),
(1933, 14, 1, 1, 0, 0, 0),
(1934, 14, 2, 2, 0, 0, 0),
(1935, 14, 5, 5, 0, 0, 0),
(1936, 14, 110, 110, 0, 0, 0),
(1937, 14, 57, 57, 57, 57, 57),
(1938, 14, 54, 54, 54, 54, 54),
(1939, 14, 58, 58, 58, 58, 58),
(1940, 14, 56, 56, 56, 56, 56),
(1941, 14, 150, 150, 150, 150, 150),
(1942, 14, 39, 39, 39, 39, 39),
(1943, 14, 151, 151, 151, 151, 151),
(1944, 14, 152, 152, 152, 152, 152),
(1945, 14, 153, 153, 153, 153, 153),
(1946, 14, 154, 154, 154, 154, 154),
(1947, 14, 55, 55, 55, 55, 55),
(1948, 14, 12, 12, 12, 12, 12),
(1949, 14, 13, 13, 13, 13, 13),
(1950, 14, 156, 156, 156, 156, 156),
(1951, 14, 14, 14, 14, 14, 14),
(1952, 14, 51, 51, 51, 51, 51),
(1953, 14, 15, 15, 15, 15, 15),
(1954, 14, 140, 140, 140, 140, 140),
(1955, 14, 16, 16, 16, 16, 16),
(1956, 14, 21, 0, 0, 0, 0),
(1957, 14, 22, 22, 0, 0, 0),
(1958, 14, 23, 23, 23, 23, 23),
(1959, 14, 141, 141, 141, 141, 141),
(1960, 14, 142, 142, 0, 0, 0),
(1961, 14, 144, 144, 144, 144, 144),
(1962, 14, 143, 143, 143, 143, 143),
(1963, 14, 6, 6, 6, 6, 6),
(1964, 14, 29, 29, 29, 29, 29),
(1965, 14, 31, 31, 31, 31, 31),
(1966, 14, 30, 30, 30, 30, 30),
(1967, 14, 32, 32, 32, 32, 32),
(1968, 14, 33, 33, 0, 0, 0),
(1969, 14, 52, 52, 0, 0, 0),
(1970, 14, 34, 34, 0, 0, 0),
(1971, 14, 36, 36, 36, 36, 36),
(1972, 14, 4, 4, 4, 4, 4),
(1973, 14, 70, 70, 70, 70, 70),
(1974, 14, 75, 75, 75, 75, 75),
(1975, 14, 76, 76, 76, 76, 76),
(1976, 14, 81, 81, 81, 81, 81),
(1977, 14, 77, 0, 0, 0, 0),
(1978, 14, 84, 84, 0, 0, 0),
(1979, 14, 78, 0, 0, 0, 0),
(1980, 14, 82, 82, 82, 82, 82),
(1981, 14, 83, 83, 0, 0, 0),
(1982, 14, 79, 79, 0, 0, 0),
(1983, 14, 105, 105, 105, 105, 105),
(1984, 14, 108, 108, 0, 0, 0),
(1985, 14, 106, 106, 0, 0, 0),
(1986, 14, 148, 148, 148, 148, 148),
(1987, 14, 107, 107, 0, 0, 0),
(1988, 14, 102, 102, 102, 102, 102),
(1989, 14, 103, 103, 103, 103, 103),
(1990, 14, 104, 104, 0, 0, 0),
(1991, 14, 89, 89, 89, 89, 89),
(1992, 14, 94, 94, 94, 94, 94),
(1993, 14, 95, 95, 95, 95, 95),
(1994, 14, 90, 90, 0, 0, 0),
(1995, 14, 91, 91, 0, 0, 0),
(1996, 14, 92, 92, 0, 0, 0),
(1997, 14, 93, 93, 0, 0, 0),
(1998, 14, 96, 96, 0, 0, 0),
(1999, 14, 98, 98, 0, 0, 0),
(2000, 14, 97, 97, 0, 0, 0),
(2001, 14, 74, 74, 0, 0, 0),
(2002, 14, 99, 99, 99, 99, 99),
(2003, 14, 85, 85, 85, 85, 85),
(2004, 14, 86, 86, 86, 86, 0),
(2005, 14, 88, 88, 88, 88, 0),
(2006, 14, 87, 87, 0, 0, 0),
(2007, 14, 72, 72, 0, 0, 0),
(2008, 14, 101, 101, 101, 101, 101),
(2009, 14, 100, 100, 100, 100, 100),
(2010, 14, 73, 73, 73, 73, 73),
(2011, 14, 71, 71, 71, 71, 71),
(2012, 14, 69, 69, 69, 69, 69),
(2013, 14, 42, 42, 42, 42, 42),
(2014, 14, 59, 0, 0, 0, 0),
(2015, 14, 66, 66, 0, 0, 0),
(2016, 14, 67, 67, 0, 0, 0),
(2017, 14, 68, 68, 0, 0, 0),
(2018, 14, 146, 0, 0, 0, 0),
(2019, 14, 43, 43, 0, 0, 0),
(2020, 14, 44, 44, 0, 0, 0),
(2021, 14, 45, 45, 0, 0, 0),
(2022, 14, 46, 46, 0, 0, 0),
(2023, 14, 47, 47, 0, 0, 0),
(2024, 14, 48, 48, 0, 0, 0),
(2025, 14, 49, 49, 0, 0, 0),
(2026, 14, 50, 50, 0, 0, 0),
(2027, 14, 53, 53, 0, 0, 0),
(2028, 14, 147, 147, 147, 147, 147),
(2029, 14, 60, 60, 0, 0, 0),
(2030, 14, 61, 61, 0, 0, 0),
(2031, 14, 62, 62, 0, 0, 0),
(2032, 14, 63, 63, 0, 0, 0),
(2033, 14, 24, 24, 24, 24, 24),
(2034, 14, 25, 25, 25, 25, 25),
(2035, 14, 120, 120, 0, 0, 0),
(2036, 14, 121, 121, 0, 0, 0),
(2037, 14, 122, 122, 122, 122, 122),
(2038, 14, 123, 123, 123, 123, 123),
(2039, 14, 124, 124, 124, 124, 124),
(2040, 14, 125, 125, 125, 125, 125),
(2041, 14, 126, 126, 126, 126, 126),
(2042, 14, 127, 127, 127, 127, 127),
(2043, 14, 128, 128, 128, 128, 128),
(2044, 14, 119, 119, 0, 0, 0),
(2045, 14, 118, 118, 0, 0, 0),
(2046, 14, 117, 117, 0, 0, 0),
(2047, 14, 129, 129, 129, 129, 129),
(2048, 14, 130, 130, 130, 130, 130),
(2049, 14, 155, 155, 155, 155, 155),
(2050, 14, 157, 157, 157, 157, 157),
(2051, 14, 158, 158, 158, 158, 158),
(2052, 14, 138, 138, 0, 0, 0),
(2053, 14, 137, 137, 0, 0, 0),
(2054, 14, 131, 131, 0, 0, 0),
(2055, 14, 132, 132, 0, 0, 0),
(2056, 14, 133, 133, 0, 0, 0),
(2057, 14, 159, 159, 159, 159, 159),
(2058, 14, 136, 136, 0, 0, 0),
(2059, 14, 134, 134, 0, 0, 0),
(2060, 14, 135, 135, 0, 0, 0),
(2061, 14, 111, 111, 0, 0, 0),
(2062, 14, 149, 149, 149, 149, 149),
(2063, 14, 112, 112, 0, 0, 0),
(2064, 14, 113, 113, 0, 0, 0),
(2065, 14, 114, 114, 0, 0, 0),
(2066, 14, 115, 115, 0, 0, 0),
(2067, 14, 116, 116, 0, 0, 0),
(2068, 14, 145, 145, 0, 0, 0),
(2069, 14, 26, 26, 0, 0, 0),
(2070, 14, 139, 139, 0, 0, 0),
(2071, 15, 1, 1, 0, 0, 0),
(2072, 15, 2, 2, 0, 0, 0),
(2073, 15, 5, 5, 0, 0, 0),
(2074, 15, 110, 110, 0, 0, 0),
(2075, 15, 57, 57, 57, 57, 57),
(2076, 15, 54, 54, 54, 54, 54),
(2077, 15, 58, 58, 58, 58, 58),
(2078, 15, 56, 56, 56, 56, 56),
(2079, 15, 150, 150, 150, 150, 150),
(2080, 15, 39, 39, 39, 39, 39),
(2081, 15, 151, 151, 151, 151, 151),
(2082, 15, 152, 152, 152, 152, 152),
(2083, 15, 153, 153, 153, 153, 153),
(2084, 15, 154, 154, 154, 154, 154),
(2085, 15, 55, 55, 55, 55, 55),
(2086, 15, 12, 12, 12, 12, 12),
(2087, 15, 13, 13, 13, 13, 13),
(2088, 15, 156, 156, 156, 156, 156),
(2089, 15, 14, 14, 14, 14, 14),
(2090, 15, 51, 51, 51, 51, 51),
(2091, 15, 15, 15, 15, 15, 15),
(2092, 15, 140, 140, 140, 140, 140),
(2093, 15, 16, 16, 16, 16, 16),
(2094, 15, 21, 0, 0, 0, 0),
(2095, 15, 22, 22, 0, 0, 0),
(2096, 15, 23, 23, 23, 23, 23),
(2097, 15, 141, 141, 141, 141, 141),
(2098, 15, 142, 142, 0, 0, 0),
(2099, 15, 144, 144, 144, 144, 144),
(2100, 15, 143, 143, 143, 143, 143),
(2101, 15, 6, 6, 6, 6, 6),
(2102, 15, 29, 29, 29, 29, 29),
(2103, 15, 31, 31, 31, 31, 31),
(2104, 15, 30, 30, 30, 30, 30),
(2105, 15, 32, 32, 32, 32, 32),
(2106, 15, 33, 33, 0, 0, 0),
(2107, 15, 52, 52, 0, 0, 0),
(2108, 15, 34, 34, 0, 0, 0),
(2109, 15, 36, 36, 36, 36, 36),
(2110, 15, 4, 4, 4, 4, 4),
(2111, 15, 70, 70, 70, 70, 70),
(2112, 15, 75, 75, 75, 75, 75),
(2113, 15, 76, 76, 76, 76, 76),
(2114, 15, 81, 81, 81, 81, 81),
(2115, 15, 77, 0, 0, 0, 0),
(2116, 15, 84, 84, 0, 0, 0),
(2117, 15, 78, 0, 0, 0, 0),
(2118, 15, 82, 82, 82, 82, 82),
(2119, 15, 83, 83, 0, 0, 0),
(2120, 15, 79, 79, 0, 0, 0),
(2121, 15, 105, 105, 105, 105, 105),
(2122, 15, 108, 108, 0, 0, 0),
(2123, 15, 106, 106, 0, 0, 0),
(2124, 15, 148, 148, 148, 148, 148),
(2125, 15, 107, 107, 0, 0, 0),
(2126, 15, 102, 102, 102, 102, 102),
(2127, 15, 103, 103, 103, 103, 103),
(2128, 15, 104, 104, 0, 0, 0),
(2129, 15, 89, 89, 89, 89, 89),
(2130, 15, 94, 94, 94, 94, 94),
(2131, 15, 95, 95, 95, 95, 95),
(2132, 15, 90, 90, 0, 0, 0),
(2133, 15, 91, 91, 0, 0, 0),
(2134, 15, 92, 92, 0, 0, 0),
(2135, 15, 93, 93, 0, 0, 0),
(2136, 15, 96, 96, 0, 0, 0),
(2137, 15, 98, 98, 0, 0, 0),
(2138, 15, 97, 97, 0, 0, 0),
(2139, 15, 74, 74, 0, 0, 0),
(2140, 15, 99, 99, 99, 99, 99),
(2141, 15, 85, 85, 85, 85, 85),
(2142, 15, 86, 86, 86, 86, 0),
(2143, 15, 88, 88, 88, 88, 0),
(2144, 15, 87, 87, 0, 0, 0),
(2145, 15, 72, 72, 0, 0, 0),
(2146, 15, 101, 101, 101, 101, 101),
(2147, 15, 100, 100, 100, 100, 100),
(2148, 15, 73, 73, 73, 73, 73),
(2149, 15, 71, 71, 71, 71, 71),
(2150, 15, 69, 69, 69, 69, 69),
(2151, 15, 42, 42, 42, 42, 42),
(2152, 15, 59, 0, 0, 0, 0),
(2153, 15, 66, 66, 0, 0, 0),
(2154, 15, 67, 67, 0, 0, 0),
(2155, 15, 68, 68, 0, 0, 0),
(2156, 15, 146, 0, 0, 0, 0),
(2157, 15, 43, 43, 0, 0, 0),
(2158, 15, 44, 44, 0, 0, 0),
(2159, 15, 45, 45, 0, 0, 0),
(2160, 15, 46, 46, 0, 0, 0),
(2161, 15, 47, 47, 0, 0, 0),
(2162, 15, 48, 48, 0, 0, 0),
(2163, 15, 49, 49, 0, 0, 0),
(2164, 15, 50, 50, 0, 0, 0),
(2165, 15, 53, 53, 0, 0, 0),
(2166, 15, 147, 147, 147, 147, 147),
(2167, 15, 60, 60, 0, 0, 0),
(2168, 15, 61, 61, 0, 0, 0),
(2169, 15, 62, 62, 0, 0, 0),
(2170, 15, 63, 63, 0, 0, 0),
(2171, 15, 24, 24, 24, 24, 24),
(2172, 15, 25, 25, 25, 25, 25),
(2173, 15, 120, 120, 0, 0, 0),
(2174, 15, 121, 121, 0, 0, 0),
(2175, 15, 122, 122, 122, 122, 122),
(2176, 15, 123, 123, 123, 123, 123),
(2177, 15, 124, 124, 124, 124, 124),
(2178, 15, 125, 125, 125, 125, 125),
(2179, 15, 126, 126, 126, 126, 126),
(2180, 15, 127, 127, 127, 127, 127),
(2181, 15, 128, 128, 128, 128, 128),
(2182, 15, 119, 119, 0, 0, 0),
(2183, 15, 118, 118, 0, 0, 0),
(2184, 15, 117, 117, 0, 0, 0),
(2185, 15, 129, 129, 129, 129, 129),
(2186, 15, 130, 130, 130, 130, 130),
(2187, 15, 155, 155, 155, 155, 155),
(2188, 15, 157, 157, 157, 157, 157),
(2189, 15, 158, 158, 158, 158, 158),
(2190, 15, 138, 138, 0, 0, 0),
(2191, 15, 137, 137, 0, 0, 0),
(2192, 15, 131, 131, 0, 0, 0),
(2193, 15, 132, 132, 0, 0, 0),
(2194, 15, 133, 133, 0, 0, 0),
(2195, 15, 159, 159, 159, 159, 159),
(2196, 15, 136, 136, 0, 0, 0),
(2197, 15, 134, 134, 0, 0, 0),
(2198, 15, 135, 135, 0, 0, 0),
(2199, 15, 111, 111, 0, 0, 0),
(2200, 15, 149, 149, 149, 149, 149),
(2201, 15, 112, 112, 0, 0, 0),
(2202, 15, 113, 113, 0, 0, 0),
(2203, 15, 114, 114, 0, 0, 0),
(2204, 15, 115, 115, 0, 0, 0),
(2205, 15, 116, 116, 0, 0, 0),
(2206, 15, 145, 145, 0, 0, 0),
(2207, 15, 26, 26, 0, 0, 0),
(2208, 15, 139, 139, 0, 0, 0),
(2211, 17, 1, 1, 0, 0, 0),
(2212, 17, 2, 2, 0, 0, 0),
(2213, 17, 5, 5, 0, 0, 0),
(2214, 17, 110, 110, 0, 0, 0),
(2215, 17, 100, 100, 0, 0, 0),
(2216, 17, 73, 0, 0, 0, 0),
(2217, 17, 71, 71, 0, 0, 0),
(2218, 17, 139, 139, 0, 0, 0),
(2221, 19, 1, 1, 0, 0, 0),
(2222, 19, 2, 2, 0, 0, 0),
(2223, 19, 5, 0, 0, 0, 0),
(2224, 19, 139, 139, 0, 0, 0),
(2227, 21, 2, 0, 0, 0, 0),
(2228, 21, 1, 1, 0, 0, 0),
(2229, 22, 2, 0, 0, 0, 0),
(2230, 22, 1, 1, 0, 0, 0),
(2231, 16, 1, 1, 0, 0, 0),
(2232, 16, 2, 2, 0, 0, 0),
(2233, 16, 5, 5, 0, 0, 0),
(2234, 16, 110, 110, 0, 0, 0),
(2235, 16, 57, 57, 57, 57, 57),
(2236, 16, 54, 54, 54, 54, 54),
(2237, 16, 58, 58, 58, 58, 58),
(2238, 16, 56, 56, 56, 56, 56),
(2239, 16, 150, 150, 150, 150, 150),
(2240, 16, 39, 39, 39, 39, 39),
(2241, 16, 151, 151, 151, 151, 151),
(2242, 16, 152, 152, 152, 152, 152),
(2243, 16, 153, 153, 153, 153, 153),
(2244, 16, 154, 154, 154, 154, 154),
(2245, 16, 55, 55, 55, 55, 55),
(2246, 16, 12, 12, 12, 12, 12),
(2247, 16, 13, 13, 13, 13, 13),
(2248, 16, 156, 156, 156, 156, 156),
(2249, 16, 14, 14, 14, 14, 14),
(2250, 16, 51, 51, 51, 51, 51),
(2251, 16, 15, 15, 15, 15, 15),
(2252, 16, 140, 140, 140, 140, 140),
(2253, 16, 16, 16, 16, 16, 16),
(2254, 16, 21, 0, 0, 0, 0),
(2255, 16, 22, 22, 0, 0, 0),
(2256, 16, 23, 23, 23, 23, 23),
(2257, 16, 141, 141, 141, 141, 141),
(2258, 16, 142, 142, 0, 0, 0),
(2259, 16, 144, 144, 144, 144, 144),
(2260, 16, 143, 143, 143, 143, 143),
(2261, 16, 6, 6, 6, 6, 6),
(2262, 16, 29, 29, 29, 29, 29),
(2263, 16, 31, 31, 31, 31, 31),
(2264, 16, 30, 30, 30, 30, 30),
(2265, 16, 32, 32, 32, 32, 32),
(2266, 16, 33, 33, 0, 0, 0),
(2267, 16, 52, 52, 0, 0, 0),
(2268, 16, 34, 34, 0, 0, 0),
(2269, 16, 36, 36, 36, 36, 36),
(2270, 16, 4, 4, 4, 4, 4),
(2271, 16, 70, 70, 70, 70, 70),
(2272, 16, 75, 75, 75, 75, 75),
(2273, 16, 76, 76, 76, 76, 76),
(2274, 16, 81, 81, 81, 81, 81),
(2275, 16, 77, 0, 0, 0, 0),
(2276, 16, 84, 84, 0, 0, 0),
(2277, 16, 78, 0, 0, 0, 0),
(2278, 16, 82, 82, 82, 82, 82),
(2279, 16, 83, 83, 0, 0, 0),
(2280, 16, 79, 79, 0, 0, 0),
(2281, 16, 105, 105, 105, 105, 105),
(2282, 16, 108, 108, 0, 0, 0),
(2283, 16, 106, 106, 0, 0, 0),
(2284, 16, 148, 148, 148, 148, 148),
(2285, 16, 107, 107, 0, 0, 0),
(2286, 16, 102, 102, 102, 102, 102),
(2287, 16, 103, 103, 103, 103, 103),
(2288, 16, 104, 104, 0, 0, 0),
(2289, 16, 89, 89, 89, 89, 89),
(2290, 16, 94, 94, 94, 94, 94),
(2291, 16, 95, 95, 95, 95, 95),
(2292, 16, 90, 90, 0, 0, 0),
(2293, 16, 91, 91, 0, 0, 0),
(2294, 16, 92, 92, 0, 0, 0),
(2295, 16, 93, 93, 0, 0, 0),
(2296, 16, 96, 96, 0, 0, 0),
(2297, 16, 98, 98, 0, 0, 0),
(2298, 16, 97, 97, 0, 0, 0),
(2299, 16, 74, 74, 0, 0, 0),
(2300, 16, 99, 99, 99, 99, 99),
(2301, 16, 85, 85, 85, 85, 85),
(2302, 16, 86, 86, 86, 86, 0),
(2303, 16, 88, 88, 88, 88, 0),
(2304, 16, 87, 87, 0, 0, 0),
(2305, 16, 72, 72, 0, 0, 0),
(2306, 16, 101, 101, 101, 101, 101),
(2307, 16, 100, 100, 100, 100, 100),
(2308, 16, 73, 73, 73, 73, 73),
(2309, 16, 71, 71, 71, 71, 71),
(2310, 16, 69, 69, 69, 69, 69),
(2311, 16, 42, 42, 42, 42, 42),
(2312, 16, 59, 0, 0, 0, 0),
(2313, 16, 66, 66, 0, 0, 0),
(2314, 16, 67, 67, 0, 0, 0),
(2315, 16, 68, 68, 0, 0, 0),
(2316, 16, 146, 0, 0, 0, 0),
(2317, 16, 43, 43, 0, 0, 0),
(2318, 16, 44, 44, 0, 0, 0),
(2319, 16, 45, 45, 0, 0, 0),
(2320, 16, 46, 46, 0, 0, 0),
(2321, 16, 47, 47, 0, 0, 0),
(2322, 16, 48, 48, 0, 0, 0),
(2323, 16, 49, 49, 0, 0, 0),
(2324, 16, 50, 50, 0, 0, 0),
(2325, 16, 53, 53, 0, 0, 0),
(2326, 16, 147, 147, 147, 147, 147),
(2327, 16, 60, 60, 0, 0, 0),
(2328, 16, 61, 61, 0, 0, 0),
(2329, 16, 62, 62, 0, 0, 0),
(2330, 16, 63, 63, 0, 0, 0),
(2331, 16, 24, 24, 24, 24, 24),
(2332, 16, 25, 25, 25, 25, 25),
(2333, 16, 120, 120, 0, 0, 0),
(2334, 16, 121, 121, 0, 0, 0),
(2335, 16, 122, 122, 122, 122, 122),
(2336, 16, 123, 123, 123, 123, 123),
(2337, 16, 124, 124, 124, 124, 124),
(2338, 16, 125, 125, 125, 125, 125),
(2339, 16, 126, 126, 126, 126, 126),
(2340, 16, 127, 127, 127, 127, 127),
(2341, 16, 128, 128, 128, 128, 128),
(2342, 16, 119, 119, 0, 0, 0),
(2343, 16, 118, 118, 0, 0, 0),
(2344, 16, 117, 117, 0, 0, 0),
(2345, 16, 129, 129, 129, 129, 129),
(2346, 16, 130, 130, 130, 130, 130),
(2347, 16, 155, 155, 155, 155, 155),
(2348, 16, 157, 157, 157, 157, 157),
(2349, 16, 158, 158, 158, 158, 158),
(2350, 16, 138, 138, 0, 0, 0),
(2351, 16, 137, 137, 0, 0, 0),
(2352, 16, 131, 131, 0, 0, 0),
(2353, 16, 132, 132, 0, 0, 0),
(2354, 16, 133, 133, 0, 0, 0),
(2355, 16, 159, 159, 159, 159, 159),
(2356, 16, 136, 136, 0, 0, 0),
(2357, 16, 134, 134, 0, 0, 0),
(2358, 16, 135, 135, 0, 0, 0),
(2359, 16, 111, 111, 0, 0, 0),
(2360, 16, 149, 149, 149, 149, 149),
(2361, 16, 112, 112, 0, 0, 0),
(2362, 16, 113, 113, 0, 0, 0),
(2363, 16, 114, 114, 0, 0, 0),
(2364, 16, 115, 115, 0, 0, 0),
(2365, 16, 116, 116, 0, 0, 0),
(2366, 16, 145, 145, 0, 0, 0),
(2367, 16, 26, 26, 0, 0, 0),
(2368, 16, 139, 139, 0, 0, 0),
(2507, 18, 1, 1, 0, 0, 0),
(2508, 18, 2, 2, 0, 0, 0),
(2509, 18, 5, 5, 0, 0, 0),
(2510, 18, 110, 110, 0, 0, 0),
(2511, 18, 57, 57, 57, 57, 57),
(2512, 18, 54, 54, 54, 54, 54),
(2513, 18, 58, 58, 58, 58, 58),
(2514, 18, 56, 56, 56, 56, 56),
(2515, 18, 150, 150, 150, 150, 150),
(2516, 18, 39, 39, 39, 39, 39),
(2517, 18, 151, 151, 151, 151, 151),
(2518, 18, 152, 152, 152, 152, 152),
(2519, 18, 153, 153, 153, 153, 153),
(2520, 18, 154, 154, 154, 154, 154),
(2521, 18, 55, 55, 55, 55, 55),
(2522, 18, 12, 12, 12, 12, 12),
(2523, 18, 13, 13, 13, 13, 13),
(2524, 18, 156, 156, 156, 156, 156),
(2525, 18, 14, 14, 14, 14, 14),
(2526, 18, 51, 51, 51, 51, 51),
(2527, 18, 15, 15, 15, 15, 15),
(2528, 18, 140, 140, 140, 140, 140),
(2529, 18, 16, 16, 16, 16, 16),
(2530, 18, 21, 0, 0, 0, 0),
(2531, 18, 22, 22, 0, 0, 0),
(2532, 18, 23, 23, 23, 23, 23),
(2533, 18, 141, 141, 141, 141, 141),
(2534, 18, 142, 142, 0, 0, 0),
(2535, 18, 144, 144, 144, 144, 144),
(2536, 18, 143, 143, 143, 143, 143),
(2537, 18, 6, 6, 6, 6, 6),
(2538, 18, 29, 29, 29, 29, 29),
(2539, 18, 31, 31, 31, 31, 31),
(2540, 18, 30, 30, 30, 30, 30),
(2541, 18, 32, 32, 32, 32, 32),
(2542, 18, 33, 33, 0, 0, 0),
(2543, 18, 52, 52, 0, 0, 0),
(2544, 18, 34, 34, 0, 0, 0),
(2545, 18, 36, 36, 36, 36, 36),
(2546, 18, 4, 4, 4, 4, 4),
(2547, 18, 70, 70, 70, 70, 70),
(2548, 18, 75, 75, 75, 75, 75),
(2549, 18, 76, 76, 76, 76, 76),
(2550, 18, 81, 81, 81, 81, 81),
(2551, 18, 77, 0, 0, 0, 0),
(2552, 18, 84, 84, 0, 0, 0),
(2553, 18, 78, 0, 0, 0, 0),
(2554, 18, 82, 82, 82, 82, 82),
(2555, 18, 83, 83, 0, 0, 0),
(2556, 18, 79, 79, 0, 0, 0),
(2557, 18, 105, 105, 105, 105, 105),
(2558, 18, 108, 108, 0, 0, 0),
(2559, 18, 106, 106, 0, 0, 0),
(2560, 18, 148, 148, 148, 148, 148),
(2561, 18, 107, 107, 0, 0, 0),
(2562, 18, 102, 102, 102, 102, 102),
(2563, 18, 103, 103, 103, 103, 103),
(2564, 18, 104, 104, 0, 0, 0),
(2565, 18, 89, 89, 89, 89, 89),
(2566, 18, 94, 94, 94, 94, 94),
(2567, 18, 95, 95, 95, 95, 95),
(2568, 18, 90, 90, 0, 0, 0),
(2569, 18, 91, 91, 0, 0, 0),
(2570, 18, 92, 92, 0, 0, 0),
(2571, 18, 93, 93, 0, 0, 0),
(2572, 18, 96, 96, 0, 0, 0),
(2573, 18, 98, 98, 0, 0, 0),
(2574, 18, 97, 97, 0, 0, 0),
(2575, 18, 74, 74, 0, 0, 0),
(2576, 18, 99, 99, 99, 99, 99),
(2577, 18, 85, 85, 85, 85, 85),
(2578, 18, 86, 86, 86, 86, 0),
(2579, 18, 88, 88, 88, 88, 0),
(2580, 18, 87, 87, 0, 0, 0),
(2581, 18, 72, 72, 0, 0, 0),
(2582, 18, 101, 101, 101, 101, 101),
(2583, 18, 100, 100, 100, 100, 100),
(2584, 18, 73, 73, 73, 73, 73),
(2585, 18, 71, 71, 71, 71, 71),
(2586, 18, 69, 69, 69, 69, 69),
(2587, 18, 42, 42, 42, 42, 42),
(2588, 18, 59, 0, 0, 0, 0),
(2589, 18, 66, 66, 0, 0, 0),
(2590, 18, 67, 67, 0, 0, 0),
(2591, 18, 68, 68, 0, 0, 0),
(2592, 18, 146, 0, 0, 0, 0),
(2593, 18, 43, 43, 0, 0, 0),
(2594, 18, 44, 44, 0, 0, 0),
(2595, 18, 45, 45, 0, 0, 0),
(2596, 18, 46, 46, 0, 0, 0),
(2597, 18, 47, 47, 0, 0, 0),
(2598, 18, 48, 48, 0, 0, 0),
(2599, 18, 49, 49, 0, 0, 0),
(2600, 18, 50, 50, 0, 0, 0),
(2601, 18, 53, 53, 0, 0, 0),
(2602, 18, 147, 147, 147, 147, 147),
(2603, 18, 60, 60, 0, 0, 0),
(2604, 18, 61, 61, 0, 0, 0),
(2605, 18, 62, 62, 0, 0, 0),
(2606, 18, 63, 63, 0, 0, 0),
(2607, 18, 24, 24, 24, 24, 24),
(2608, 18, 25, 25, 25, 25, 25),
(2609, 18, 120, 120, 0, 0, 0),
(2610, 18, 121, 121, 0, 0, 0),
(2611, 18, 122, 122, 122, 122, 122),
(2612, 18, 123, 123, 123, 123, 123),
(2613, 18, 124, 124, 124, 124, 124),
(2614, 18, 125, 125, 125, 125, 125),
(2615, 18, 126, 126, 126, 126, 126),
(2616, 18, 127, 127, 127, 127, 127),
(2617, 18, 128, 128, 128, 128, 128),
(2618, 18, 119, 119, 0, 0, 0),
(2619, 18, 118, 118, 0, 0, 0),
(2620, 18, 117, 117, 0, 0, 0),
(2621, 18, 129, 129, 129, 129, 129),
(2622, 18, 130, 130, 130, 130, 130),
(2623, 18, 155, 155, 155, 155, 155),
(2624, 18, 157, 157, 157, 157, 157),
(2625, 18, 158, 158, 158, 158, 158),
(2626, 18, 138, 138, 0, 0, 0),
(2627, 18, 137, 137, 0, 0, 0),
(2628, 18, 131, 131, 0, 0, 0),
(2629, 18, 132, 132, 0, 0, 0),
(2630, 18, 133, 133, 0, 0, 0),
(2631, 18, 159, 159, 159, 159, 159),
(2632, 18, 136, 136, 0, 0, 0),
(2633, 18, 134, 134, 0, 0, 0),
(2634, 18, 135, 135, 0, 0, 0),
(2635, 18, 111, 111, 0, 0, 0),
(2636, 18, 149, 149, 149, 149, 149),
(2637, 18, 112, 112, 0, 0, 0),
(2638, 18, 113, 113, 0, 0, 0),
(2639, 18, 114, 114, 0, 0, 0),
(2640, 18, 115, 115, 0, 0, 0),
(2641, 18, 116, 116, 0, 0, 0),
(2642, 18, 145, 145, 0, 0, 0),
(2643, 18, 26, 26, 0, 0, 0),
(2644, 18, 139, 139, 0, 0, 0),
(2645, 20, 1, 1, 0, 0, 0),
(2646, 20, 2, 2, 0, 0, 0),
(2647, 20, 5, 5, 0, 0, 0),
(2648, 20, 110, 110, 0, 0, 0),
(2649, 20, 57, 57, 57, 57, 57),
(2650, 20, 54, 54, 54, 54, 54),
(2651, 20, 58, 58, 58, 58, 58),
(2652, 20, 56, 56, 56, 56, 56),
(2653, 20, 150, 150, 150, 150, 150),
(2654, 20, 39, 39, 39, 39, 39),
(2655, 20, 151, 151, 151, 151, 151),
(2656, 20, 152, 152, 152, 152, 152),
(2657, 20, 153, 153, 153, 153, 153),
(2658, 20, 154, 154, 154, 154, 154),
(2659, 20, 55, 55, 55, 55, 55),
(2660, 20, 12, 12, 12, 12, 12),
(2661, 20, 13, 13, 13, 13, 13),
(2662, 20, 156, 156, 156, 156, 156),
(2663, 20, 14, 14, 14, 14, 14),
(2664, 20, 51, 51, 51, 51, 51),
(2665, 20, 15, 15, 15, 15, 15),
(2666, 20, 140, 140, 140, 140, 140),
(2667, 20, 16, 16, 16, 16, 16),
(2668, 20, 21, 0, 0, 0, 0),
(2669, 20, 22, 22, 0, 0, 0),
(2670, 20, 23, 23, 23, 23, 23),
(2671, 20, 141, 141, 141, 141, 141),
(2672, 20, 142, 142, 0, 0, 0),
(2673, 20, 144, 144, 144, 144, 144),
(2674, 20, 143, 143, 143, 143, 143),
(2675, 20, 6, 6, 6, 6, 6),
(2676, 20, 29, 29, 29, 29, 29),
(2677, 20, 31, 31, 31, 31, 31),
(2678, 20, 30, 30, 30, 30, 30),
(2679, 20, 32, 32, 32, 32, 32),
(2680, 20, 33, 33, 0, 0, 0),
(2681, 20, 52, 52, 0, 0, 0),
(2682, 20, 34, 34, 0, 0, 0),
(2683, 20, 36, 36, 36, 36, 36),
(2684, 20, 4, 4, 4, 4, 4),
(2685, 20, 70, 70, 70, 70, 70),
(2686, 20, 75, 75, 75, 75, 75),
(2687, 20, 76, 76, 76, 76, 76),
(2688, 20, 81, 81, 81, 81, 81),
(2689, 20, 77, 0, 0, 0, 0),
(2690, 20, 84, 84, 0, 0, 0),
(2691, 20, 78, 0, 0, 0, 0),
(2692, 20, 82, 82, 82, 82, 82),
(2693, 20, 83, 83, 0, 0, 0),
(2694, 20, 79, 79, 0, 0, 0),
(2695, 20, 105, 105, 105, 105, 105),
(2696, 20, 108, 108, 0, 0, 0),
(2697, 20, 106, 106, 0, 0, 0),
(2698, 20, 148, 148, 148, 148, 148),
(2699, 20, 107, 107, 0, 0, 0),
(2700, 20, 102, 102, 102, 102, 102),
(2701, 20, 103, 103, 103, 103, 103),
(2702, 20, 104, 104, 0, 0, 0),
(2703, 20, 89, 89, 89, 89, 89),
(2704, 20, 94, 94, 94, 94, 94),
(2705, 20, 95, 95, 95, 95, 95),
(2706, 20, 90, 90, 0, 0, 0),
(2707, 20, 91, 91, 0, 0, 0),
(2708, 20, 92, 92, 0, 0, 0),
(2709, 20, 93, 93, 0, 0, 0),
(2710, 20, 96, 96, 0, 0, 0),
(2711, 20, 98, 98, 0, 0, 0),
(2712, 20, 97, 97, 0, 0, 0),
(2713, 20, 74, 74, 0, 0, 0),
(2714, 20, 99, 99, 99, 99, 99),
(2715, 20, 85, 85, 85, 85, 85),
(2716, 20, 86, 86, 86, 86, 0),
(2717, 20, 88, 88, 88, 88, 0),
(2718, 20, 87, 87, 0, 0, 0),
(2719, 20, 72, 72, 0, 0, 0),
(2720, 20, 101, 101, 101, 101, 101),
(2721, 20, 100, 100, 100, 100, 100),
(2722, 20, 73, 73, 73, 73, 73),
(2723, 20, 71, 71, 71, 71, 71),
(2724, 20, 69, 69, 69, 69, 69),
(2725, 20, 42, 42, 42, 42, 42),
(2726, 20, 59, 0, 0, 0, 0),
(2727, 20, 66, 66, 0, 0, 0),
(2728, 20, 67, 67, 0, 0, 0),
(2729, 20, 68, 68, 0, 0, 0),
(2730, 20, 146, 0, 0, 0, 0),
(2731, 20, 43, 43, 0, 0, 0),
(2732, 20, 44, 44, 0, 0, 0),
(2733, 20, 45, 45, 0, 0, 0),
(2734, 20, 46, 46, 0, 0, 0),
(2735, 20, 47, 47, 0, 0, 0),
(2736, 20, 48, 48, 0, 0, 0),
(2737, 20, 49, 49, 0, 0, 0),
(2738, 20, 50, 50, 0, 0, 0),
(2739, 20, 53, 53, 0, 0, 0),
(2740, 20, 147, 147, 147, 147, 147),
(2741, 20, 60, 60, 0, 0, 0),
(2742, 20, 61, 61, 0, 0, 0),
(2743, 20, 62, 62, 0, 0, 0),
(2744, 20, 63, 63, 0, 0, 0),
(2745, 20, 24, 24, 24, 24, 24),
(2746, 20, 25, 25, 25, 25, 25),
(2747, 20, 120, 120, 0, 0, 0),
(2748, 20, 121, 121, 0, 0, 0),
(2749, 20, 122, 122, 122, 122, 122),
(2750, 20, 123, 123, 123, 123, 123),
(2751, 20, 124, 124, 124, 124, 124),
(2752, 20, 125, 125, 125, 125, 125),
(2753, 20, 126, 126, 126, 126, 126),
(2754, 20, 127, 127, 127, 127, 127),
(2755, 20, 128, 128, 128, 128, 128),
(2756, 20, 119, 119, 0, 0, 0),
(2757, 20, 118, 118, 0, 0, 0),
(2758, 20, 117, 117, 0, 0, 0),
(2759, 20, 129, 129, 129, 129, 129),
(2760, 20, 130, 130, 130, 130, 130),
(2761, 20, 155, 155, 155, 155, 155),
(2762, 20, 157, 157, 157, 157, 157),
(2763, 20, 158, 158, 158, 158, 158),
(2764, 20, 138, 138, 0, 0, 0),
(2765, 20, 137, 137, 0, 0, 0),
(2766, 20, 131, 131, 0, 0, 0),
(2767, 20, 132, 132, 0, 0, 0),
(2768, 20, 133, 133, 0, 0, 0),
(2769, 20, 159, 159, 159, 159, 159),
(2770, 20, 136, 136, 0, 0, 0),
(2771, 20, 134, 134, 0, 0, 0),
(2772, 20, 135, 135, 0, 0, 0),
(2773, 20, 111, 111, 0, 0, 0),
(2774, 20, 149, 149, 149, 149, 149),
(2775, 20, 112, 112, 0, 0, 0),
(2776, 20, 113, 113, 0, 0, 0),
(2777, 20, 114, 114, 0, 0, 0),
(2778, 20, 115, 115, 0, 0, 0),
(2779, 20, 116, 116, 0, 0, 0),
(2780, 20, 145, 145, 0, 0, 0),
(2781, 20, 26, 26, 0, 0, 0),
(2782, 20, 139, 139, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_working_days`
--

CREATE TABLE `tbl_working_days` (
  `working_days_id` int(11) NOT NULL,
  `day_id` int(5) NOT NULL,
  `start_hours` varchar(20) NOT NULL,
  `end_hours` varchar(20) NOT NULL,
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_working_days`
--

INSERT INTO `tbl_working_days` (`working_days_id`, `day_id`, `start_hours`, `end_hours`, `flag`) VALUES
(1, 1, '10:00 AM', '6:00 PM', 1),
(2, 2, '10:00 AM', '6:00 PM', 1),
(3, 3, '10:00 AM', '6:00 PM', 1),
(4, 4, '10:00 AM', '6:00 PM', 1),
(5, 5, '10:00 AM', '6:00 PM', 1),
(6, 6, '10:00 AM', '6:00 PM', 1),
(7, 7, '10:00 AM', '6:00 PM', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `installer`
--
ALTER TABLE `installer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `tbl_account_details`
--
ALTER TABLE `tbl_account_details`
  ADD PRIMARY KEY (`account_details_id`);

--
-- Indexes for table `tbl_activities`
--
ALTER TABLE `tbl_activities`
  ADD PRIMARY KEY (`activities_id`);

--
-- Indexes for table `tbl_advance_salary`
--
ALTER TABLE `tbl_advance_salary`
  ADD PRIMARY KEY (`advance_salary_id`);

--
-- Indexes for table `tbl_allowed_ip`
--
ALTER TABLE `tbl_allowed_ip`
  ADD PRIMARY KEY (`allowed_ip_id`);

--
-- Indexes for table `tbl_announcements`
--
ALTER TABLE `tbl_announcements`
  ADD PRIMARY KEY (`announcements_id`);

--
-- Indexes for table `tbl_assign_item`
--
ALTER TABLE `tbl_assign_item`
  ADD PRIMARY KEY (`assign_item_id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `tbl_bug`
--
ALTER TABLE `tbl_bug`
  ADD PRIMARY KEY (`bug_id`);

--
-- Indexes for table `tbl_calls`
--
ALTER TABLE `tbl_calls`
  ADD PRIMARY KEY (`calls_id`);

--
-- Indexes for table `tbl_checklists`
--
ALTER TABLE `tbl_checklists`
  ADD PRIMARY KEY (`checklist_id`);

--
-- Indexes for table `tbl_client`
--
ALTER TABLE `tbl_client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `tbl_client_menu`
--
ALTER TABLE `tbl_client_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tbl_client_role`
--
ALTER TABLE `tbl_client_role`
  ADD PRIMARY KEY (`client_role_id`);

--
-- Indexes for table `tbl_clock`
--
ALTER TABLE `tbl_clock`
  ADD PRIMARY KEY (`clock_id`);

--
-- Indexes for table `tbl_clock_history`
--
ALTER TABLE `tbl_clock_history`
  ADD PRIMARY KEY (`clock_history_id`);

--
-- Indexes for table `tbl_config`
--
ALTER TABLE `tbl_config`
  ADD PRIMARY KEY (`config_key`);

--
-- Indexes for table `tbl_contract_type`
--
ALTER TABLE `tbl_contract_type`
  ADD PRIMARY KEY (`contract_type_id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_credit_note`
--
ALTER TABLE `tbl_credit_note`
  ADD PRIMARY KEY (`credit_note_id`);

--
-- Indexes for table `tbl_credit_note_items`
--
ALTER TABLE `tbl_credit_note_items`
  ADD PRIMARY KEY (`credit_note_items_id`);

--
-- Indexes for table `tbl_credit_used`
--
ALTER TABLE `tbl_credit_used`
  ADD PRIMARY KEY (`credit_used_id`);

--
-- Indexes for table `tbl_currencies`
--
ALTER TABLE `tbl_currencies`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `tbl_customer_group`
--
ALTER TABLE `tbl_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `tbl_custom_field`
--
ALTER TABLE `tbl_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `tbl_dashboard`
--
ALTER TABLE `tbl_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_days`
--
ALTER TABLE `tbl_days`
  ADD PRIMARY KEY (`day_id`);

--
-- Indexes for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  ADD PRIMARY KEY (`departments_id`);

--
-- Indexes for table `tbl_designations`
--
ALTER TABLE `tbl_designations`
  ADD PRIMARY KEY (`designations_id`);

--
-- Indexes for table `tbl_discipline`
--
ALTER TABLE `tbl_discipline`
  ADD PRIMARY KEY (`discipline_id`);

--
-- Indexes for table `tbl_draft`
--
ALTER TABLE `tbl_draft`
  ADD PRIMARY KEY (`draft_id`);

--
-- Indexes for table `tbl_email_templates`
--
ALTER TABLE `tbl_email_templates`
  ADD PRIMARY KEY (`email_templates_id`);

--
-- Indexes for table `tbl_employee_award`
--
ALTER TABLE `tbl_employee_award`
  ADD PRIMARY KEY (`employee_award_id`);

--
-- Indexes for table `tbl_employee_bank`
--
ALTER TABLE `tbl_employee_bank`
  ADD PRIMARY KEY (`employee_bank_id`);

--
-- Indexes for table `tbl_employee_document`
--
ALTER TABLE `tbl_employee_document`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `tbl_employee_payroll`
--
ALTER TABLE `tbl_employee_payroll`
  ADD PRIMARY KEY (`payroll_id`);

--
-- Indexes for table `tbl_estimates`
--
ALTER TABLE `tbl_estimates`
  ADD PRIMARY KEY (`estimates_id`),
  ADD UNIQUE KEY `reference_no` (`reference_no`);

--
-- Indexes for table `tbl_estimate_items`
--
ALTER TABLE `tbl_estimate_items`
  ADD PRIMARY KEY (`estimate_items_id`);

--
-- Indexes for table `tbl_expense_category`
--
ALTER TABLE `tbl_expense_category`
  ADD PRIMARY KEY (`expense_category_id`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`files_id`);

--
-- Indexes for table `tbl_form`
--
ALTER TABLE `tbl_form`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `tbl_goal_tracking`
--
ALTER TABLE `tbl_goal_tracking`
  ADD PRIMARY KEY (`goal_tracking_id`);

--
-- Indexes for table `tbl_goal_type`
--
ALTER TABLE `tbl_goal_type`
  ADD PRIMARY KEY (`goal_type_id`);

--
-- Indexes for table `tbl_holiday`
--
ALTER TABLE `tbl_holiday`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `tbl_hourly_rate`
--
ALTER TABLE `tbl_hourly_rate`
  ADD PRIMARY KEY (`hourly_rate_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_income_category`
--
ALTER TABLE `tbl_income_category`
  ADD PRIMARY KEY (`income_category_id`);

--
-- Indexes for table `tbl_invoices`
--
ALTER TABLE `tbl_invoices`
  ADD PRIMARY KEY (`invoices_id`),
  ADD UNIQUE KEY `reference_no` (`reference_no`);

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`items_id`);

--
-- Indexes for table `tbl_item_history`
--
ALTER TABLE `tbl_item_history`
  ADD PRIMARY KEY (`item_history_id`);

--
-- Indexes for table `tbl_job_appliactions`
--
ALTER TABLE `tbl_job_appliactions`
  ADD PRIMARY KEY (`job_appliactions_id`);

--
-- Indexes for table `tbl_job_circular`
--
ALTER TABLE `tbl_job_circular`
  ADD PRIMARY KEY (`job_circular_id`);

--
-- Indexes for table `tbl_kb_category`
--
ALTER TABLE `tbl_kb_category`
  ADD PRIMARY KEY (`kb_category_id`);

--
-- Indexes for table `tbl_knowledgebase`
--
ALTER TABLE `tbl_knowledgebase`
  ADD PRIMARY KEY (`kb_id`);

--
-- Indexes for table `tbl_languages`
--
ALTER TABLE `tbl_languages`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `tbl_leads`
--
ALTER TABLE `tbl_leads`
  ADD PRIMARY KEY (`leads_id`);

--
-- Indexes for table `tbl_lead_source`
--
ALTER TABLE `tbl_lead_source`
  ADD PRIMARY KEY (`lead_source_id`);

--
-- Indexes for table `tbl_lead_status`
--
ALTER TABLE `tbl_lead_status`
  ADD PRIMARY KEY (`lead_status_id`);

--
-- Indexes for table `tbl_leave_application`
--
ALTER TABLE `tbl_leave_application`
  ADD PRIMARY KEY (`leave_application_id`);

--
-- Indexes for table `tbl_leave_category`
--
ALTER TABLE `tbl_leave_category`
  ADD PRIMARY KEY (`leave_category_id`);

--
-- Indexes for table `tbl_locales`
--
ALTER TABLE `tbl_locales`
  ADD PRIMARY KEY (`locale`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tbl_mettings`
--
ALTER TABLE `tbl_mettings`
  ADD PRIMARY KEY (`mettings_id`);

--
-- Indexes for table `tbl_milestones`
--
ALTER TABLE `tbl_milestones`
  ADD PRIMARY KEY (`milestones_id`);

--
-- Indexes for table `tbl_notes`
--
ALTER TABLE `tbl_notes`
  ADD PRIMARY KEY (`notes_id`);

--
-- Indexes for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  ADD PRIMARY KEY (`notifications_id`);

--
-- Indexes for table `tbl_offence_category`
--
ALTER TABLE `tbl_offence_category`
  ADD PRIMARY KEY (`offence_id`);

--
-- Indexes for table `tbl_online_payment`
--
ALTER TABLE `tbl_online_payment`
  ADD PRIMARY KEY (`online_payment_id`);

--
-- Indexes for table `tbl_opportunities`
--
ALTER TABLE `tbl_opportunities`
  ADD PRIMARY KEY (`opportunities_id`);

--
-- Indexes for table `tbl_opportunities_state_reason`
--
ALTER TABLE `tbl_opportunities_state_reason`
  ADD PRIMARY KEY (`opportunities_state_reason_id`);

--
-- Indexes for table `tbl_outgoing_emails`
--
ALTER TABLE `tbl_outgoing_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_overtime`
--
ALTER TABLE `tbl_overtime`
  ADD PRIMARY KEY (`overtime_id`);

--
-- Indexes for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  ADD PRIMARY KEY (`payments_id`);

--
-- Indexes for table `tbl_payment_methods`
--
ALTER TABLE `tbl_payment_methods`
  ADD PRIMARY KEY (`payment_methods_id`);

--
-- Indexes for table `tbl_penalty_category`
--
ALTER TABLE `tbl_penalty_category`
  ADD PRIMARY KEY (`penalty_id`);

--
-- Indexes for table `tbl_performance_apprisal`
--
ALTER TABLE `tbl_performance_apprisal`
  ADD PRIMARY KEY (`performance_appraisal_id`);

--
-- Indexes for table `tbl_performance_indicator`
--
ALTER TABLE `tbl_performance_indicator`
  ADD PRIMARY KEY (`performance_indicator_id`);

--
-- Indexes for table `tbl_pinaction`
--
ALTER TABLE `tbl_pinaction`
  ADD PRIMARY KEY (`pinaction_id`);

--
-- Indexes for table `tbl_priority`
--
ALTER TABLE `tbl_priority`
  ADD PRIMARY KEY (`priority_id`);

--
-- Indexes for table `tbl_private_chat`
--
ALTER TABLE `tbl_private_chat`
  ADD PRIMARY KEY (`private_chat_id`);

--
-- Indexes for table `tbl_private_chat_messages`
--
ALTER TABLE `tbl_private_chat_messages`
  ADD PRIMARY KEY (`private_chat_messages_id`);

--
-- Indexes for table `tbl_private_chat_users`
--
ALTER TABLE `tbl_private_chat_users`
  ADD PRIMARY KEY (`private_chat_users_id`);

--
-- Indexes for table `tbl_project`
--
ALTER TABLE `tbl_project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `tbl_project_settings`
--
ALTER TABLE `tbl_project_settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `tbl_proposals`
--
ALTER TABLE `tbl_proposals`
  ADD PRIMARY KEY (`proposals_id`),
  ADD UNIQUE KEY `reference_no` (`reference_no`);

--
-- Indexes for table `tbl_proposals_items`
--
ALTER TABLE `tbl_proposals_items`
  ADD PRIMARY KEY (`proposals_items_id`);

--
-- Indexes for table `tbl_purchases`
--
ALTER TABLE `tbl_purchases`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `tbl_purchase_items`
--
ALTER TABLE `tbl_purchase_items`
  ADD PRIMARY KEY (`items_id`);

--
-- Indexes for table `tbl_purchase_payments`
--
ALTER TABLE `tbl_purchase_payments`
  ADD PRIMARY KEY (`payments_id`);

--
-- Indexes for table `tbl_quotationforms`
--
ALTER TABLE `tbl_quotationforms`
  ADD PRIMARY KEY (`quotationforms_id`);

--
-- Indexes for table `tbl_quotations`
--
ALTER TABLE `tbl_quotations`
  ADD PRIMARY KEY (`quotations_id`);

--
-- Indexes for table `tbl_quotation_details`
--
ALTER TABLE `tbl_quotation_details`
  ADD PRIMARY KEY (`quotation_details_id`);

--
-- Indexes for table `tbl_reminders`
--
ALTER TABLE `tbl_reminders`
  ADD PRIMARY KEY (`reminder_id`),
  ADD KEY `rel_id` (`module`),
  ADD KEY `rel_type` (`user_id`);

--
-- Indexes for table `tbl_return_stock`
--
ALTER TABLE `tbl_return_stock`
  ADD PRIMARY KEY (`return_stock_id`);

--
-- Indexes for table `tbl_return_stock_items`
--
ALTER TABLE `tbl_return_stock_items`
  ADD PRIMARY KEY (`items_id`);

--
-- Indexes for table `tbl_return_stock_payments`
--
ALTER TABLE `tbl_return_stock_payments`
  ADD PRIMARY KEY (`payments_id`);

--
-- Indexes for table `tbl_salary_allowance`
--
ALTER TABLE `tbl_salary_allowance`
  ADD PRIMARY KEY (`salary_allowance_id`);

--
-- Indexes for table `tbl_salary_deduction`
--
ALTER TABLE `tbl_salary_deduction`
  ADD PRIMARY KEY (`salary_deduction_id`);

--
-- Indexes for table `tbl_salary_payment`
--
ALTER TABLE `tbl_salary_payment`
  ADD PRIMARY KEY (`salary_payment_id`);

--
-- Indexes for table `tbl_salary_payment_allowance`
--
ALTER TABLE `tbl_salary_payment_allowance`
  ADD PRIMARY KEY (`salary_payment_allowance_id`);

--
-- Indexes for table `tbl_salary_payment_deduction`
--
ALTER TABLE `tbl_salary_payment_deduction`
  ADD PRIMARY KEY (`salary_payment_deduction`);

--
-- Indexes for table `tbl_salary_payment_details`
--
ALTER TABLE `tbl_salary_payment_details`
  ADD PRIMARY KEY (`salary_payment_details_id`);

--
-- Indexes for table `tbl_salary_payslip`
--
ALTER TABLE `tbl_salary_payslip`
  ADD PRIMARY KEY (`payslip_id`);

--
-- Indexes for table `tbl_salary_template`
--
ALTER TABLE `tbl_salary_template`
  ADD PRIMARY KEY (`salary_template_id`);

--
-- Indexes for table `tbl_saved_items`
--
ALTER TABLE `tbl_saved_items`
  ADD PRIMARY KEY (`saved_items_id`);

--
-- Indexes for table `tbl_sent`
--
ALTER TABLE `tbl_sent`
  ADD PRIMARY KEY (`sent_id`);

--
-- Indexes for table `tbl_sessions`
--
ALTER TABLE `tbl_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `tbl_stock_category`
--
ALTER TABLE `tbl_stock_category`
  ADD PRIMARY KEY (`stock_category_id`);

--
-- Indexes for table `tbl_stock_sub_category`
--
ALTER TABLE `tbl_stock_sub_category`
  ADD PRIMARY KEY (`stock_sub_category_id`);

--
-- Indexes for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `tbl_task`
--
ALTER TABLE `tbl_task`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `tbl_tasks_timer`
--
ALTER TABLE `tbl_tasks_timer`
  ADD PRIMARY KEY (`tasks_timer_id`);

--
-- Indexes for table `tbl_task_attachment`
--
ALTER TABLE `tbl_task_attachment`
  ADD PRIMARY KEY (`task_attachment_id`);

--
-- Indexes for table `tbl_task_comment`
--
ALTER TABLE `tbl_task_comment`
  ADD PRIMARY KEY (`task_comment_id`);

--
-- Indexes for table `tbl_task_uploaded_files`
--
ALTER TABLE `tbl_task_uploaded_files`
  ADD PRIMARY KEY (`uploaded_files_id`);

--
-- Indexes for table `tbl_tax_rates`
--
ALTER TABLE `tbl_tax_rates`
  ADD KEY `Index 1` (`tax_rates_id`);

--
-- Indexes for table `tbl_tickets`
--
ALTER TABLE `tbl_tickets`
  ADD PRIMARY KEY (`tickets_id`);

--
-- Indexes for table `tbl_tickets_replies`
--
ALTER TABLE `tbl_tickets_replies`
  ADD PRIMARY KEY (`tickets_replies_id`);

--
-- Indexes for table `tbl_todo`
--
ALTER TABLE `tbl_todo`
  ADD PRIMARY KEY (`todo_id`);

--
-- Indexes for table `tbl_training`
--
ALTER TABLE `tbl_training`
  ADD PRIMARY KEY (`training_id`);

--
-- Indexes for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  ADD PRIMARY KEY (`transactions_id`);

--
-- Indexes for table `tbl_transfer`
--
ALTER TABLE `tbl_transfer`
  ADD PRIMARY KEY (`transfer_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  ADD PRIMARY KEY (`user_role_id`);

--
-- Indexes for table `tbl_working_days`
--
ALTER TABLE `tbl_working_days`
  ADD PRIMARY KEY (`working_days_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_account_details`
--
ALTER TABLE `tbl_account_details`
  MODIFY `account_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_activities`
--
ALTER TABLE `tbl_activities`
  MODIFY `activities_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `tbl_advance_salary`
--
ALTER TABLE `tbl_advance_salary`
  MODIFY `advance_salary_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_allowed_ip`
--
ALTER TABLE `tbl_allowed_ip`
  MODIFY `allowed_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_announcements`
--
ALTER TABLE `tbl_announcements`
  MODIFY `announcements_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_assign_item`
--
ALTER TABLE `tbl_assign_item`
  MODIFY `assign_item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_bug`
--
ALTER TABLE `tbl_bug`
  MODIFY `bug_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_calls`
--
ALTER TABLE `tbl_calls`
  MODIFY `calls_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_checklists`
--
ALTER TABLE `tbl_checklists`
  MODIFY `checklist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_client_menu`
--
ALTER TABLE `tbl_client_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_client_role`
--
ALTER TABLE `tbl_client_role`
  MODIFY `client_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_clock`
--
ALTER TABLE `tbl_clock`
  MODIFY `clock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_clock_history`
--
ALTER TABLE `tbl_clock_history`
  MODIFY `clock_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_contract_type`
--
ALTER TABLE `tbl_contract_type`
  MODIFY `contract_type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `tbl_credit_note`
--
ALTER TABLE `tbl_credit_note`
  MODIFY `credit_note_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_credit_note_items`
--
ALTER TABLE `tbl_credit_note_items`
  MODIFY `credit_note_items_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_credit_used`
--
ALTER TABLE `tbl_credit_used`
  MODIFY `credit_used_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_group`
--
ALTER TABLE `tbl_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_custom_field`
--
ALTER TABLE `tbl_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_dashboard`
--
ALTER TABLE `tbl_dashboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_days`
--
ALTER TABLE `tbl_days`
  MODIFY `day_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  MODIFY `departments_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_designations`
--
ALTER TABLE `tbl_designations`
  MODIFY `designations_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_discipline`
--
ALTER TABLE `tbl_discipline`
  MODIFY `discipline_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_draft`
--
ALTER TABLE `tbl_draft`
  MODIFY `draft_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_email_templates`
--
ALTER TABLE `tbl_email_templates`
  MODIFY `email_templates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `tbl_employee_award`
--
ALTER TABLE `tbl_employee_award`
  MODIFY `employee_award_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee_bank`
--
ALTER TABLE `tbl_employee_bank`
  MODIFY `employee_bank_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee_document`
--
ALTER TABLE `tbl_employee_document`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee_payroll`
--
ALTER TABLE `tbl_employee_payroll`
  MODIFY `payroll_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_estimates`
--
ALTER TABLE `tbl_estimates`
  MODIFY `estimates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_estimate_items`
--
ALTER TABLE `tbl_estimate_items`
  MODIFY `estimate_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_expense_category`
--
ALTER TABLE `tbl_expense_category`
  MODIFY `expense_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `files_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_form`
--
ALTER TABLE `tbl_form`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_goal_tracking`
--
ALTER TABLE `tbl_goal_tracking`
  MODIFY `goal_tracking_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_goal_type`
--
ALTER TABLE `tbl_goal_type`
  MODIFY `goal_type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_holiday`
--
ALTER TABLE `tbl_holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_hourly_rate`
--
ALTER TABLE `tbl_hourly_rate`
  MODIFY `hourly_rate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_income_category`
--
ALTER TABLE `tbl_income_category`
  MODIFY `income_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_invoices`
--
ALTER TABLE `tbl_invoices`
  MODIFY `invoices_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_item_history`
--
ALTER TABLE `tbl_item_history`
  MODIFY `item_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_job_appliactions`
--
ALTER TABLE `tbl_job_appliactions`
  MODIFY `job_appliactions_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_job_circular`
--
ALTER TABLE `tbl_job_circular`
  MODIFY `job_circular_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_kb_category`
--
ALTER TABLE `tbl_kb_category`
  MODIFY `kb_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_knowledgebase`
--
ALTER TABLE `tbl_knowledgebase`
  MODIFY `kb_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_leads`
--
ALTER TABLE `tbl_leads`
  MODIFY `leads_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_lead_source`
--
ALTER TABLE `tbl_lead_source`
  MODIFY `lead_source_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_lead_status`
--
ALTER TABLE `tbl_lead_status`
  MODIFY `lead_status_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_leave_application`
--
ALTER TABLE `tbl_leave_application`
  MODIFY `leave_application_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_leave_category`
--
ALTER TABLE `tbl_leave_category`
  MODIFY `leave_category_id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `tbl_mettings`
--
ALTER TABLE `tbl_mettings`
  MODIFY `mettings_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_milestones`
--
ALTER TABLE `tbl_milestones`
  MODIFY `milestones_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notes`
--
ALTER TABLE `tbl_notes`
  MODIFY `notes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  MODIFY `notifications_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tbl_offence_category`
--
ALTER TABLE `tbl_offence_category`
  MODIFY `offence_id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_online_payment`
--
ALTER TABLE `tbl_online_payment`
  MODIFY `online_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_opportunities`
--
ALTER TABLE `tbl_opportunities`
  MODIFY `opportunities_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_opportunities_state_reason`
--
ALTER TABLE `tbl_opportunities_state_reason`
  MODIFY `opportunities_state_reason_id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_outgoing_emails`
--
ALTER TABLE `tbl_outgoing_emails`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_overtime`
--
ALTER TABLE `tbl_overtime`
  MODIFY `overtime_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  MODIFY `payments_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_payment_methods`
--
ALTER TABLE `tbl_payment_methods`
  MODIFY `payment_methods_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_penalty_category`
--
ALTER TABLE `tbl_penalty_category`
  MODIFY `penalty_id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_performance_apprisal`
--
ALTER TABLE `tbl_performance_apprisal`
  MODIFY `performance_appraisal_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_performance_indicator`
--
ALTER TABLE `tbl_performance_indicator`
  MODIFY `performance_indicator_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pinaction`
--
ALTER TABLE `tbl_pinaction`
  MODIFY `pinaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_priority`
--
ALTER TABLE `tbl_priority`
  MODIFY `priority_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_private_chat`
--
ALTER TABLE `tbl_private_chat`
  MODIFY `private_chat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_private_chat_messages`
--
ALTER TABLE `tbl_private_chat_messages`
  MODIFY `private_chat_messages_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_private_chat_users`
--
ALTER TABLE `tbl_private_chat_users`
  MODIFY `private_chat_users_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_project`
--
ALTER TABLE `tbl_project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_project_settings`
--
ALTER TABLE `tbl_project_settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_proposals`
--
ALTER TABLE `tbl_proposals`
  MODIFY `proposals_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_proposals_items`
--
ALTER TABLE `tbl_proposals_items`
  MODIFY `proposals_items_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_purchases`
--
ALTER TABLE `tbl_purchases`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_purchase_items`
--
ALTER TABLE `tbl_purchase_items`
  MODIFY `items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_purchase_payments`
--
ALTER TABLE `tbl_purchase_payments`
  MODIFY `payments_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_quotationforms`
--
ALTER TABLE `tbl_quotationforms`
  MODIFY `quotationforms_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_quotations`
--
ALTER TABLE `tbl_quotations`
  MODIFY `quotations_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_quotation_details`
--
ALTER TABLE `tbl_quotation_details`
  MODIFY `quotation_details_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_reminders`
--
ALTER TABLE `tbl_reminders`
  MODIFY `reminder_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_return_stock`
--
ALTER TABLE `tbl_return_stock`
  MODIFY `return_stock_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_return_stock_items`
--
ALTER TABLE `tbl_return_stock_items`
  MODIFY `items_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_return_stock_payments`
--
ALTER TABLE `tbl_return_stock_payments`
  MODIFY `payments_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_salary_allowance`
--
ALTER TABLE `tbl_salary_allowance`
  MODIFY `salary_allowance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_salary_deduction`
--
ALTER TABLE `tbl_salary_deduction`
  MODIFY `salary_deduction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_salary_payment`
--
ALTER TABLE `tbl_salary_payment`
  MODIFY `salary_payment_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_salary_payment_allowance`
--
ALTER TABLE `tbl_salary_payment_allowance`
  MODIFY `salary_payment_allowance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_salary_payment_deduction`
--
ALTER TABLE `tbl_salary_payment_deduction`
  MODIFY `salary_payment_deduction` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_salary_payment_details`
--
ALTER TABLE `tbl_salary_payment_details`
  MODIFY `salary_payment_details_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_salary_payslip`
--
ALTER TABLE `tbl_salary_payslip`
  MODIFY `payslip_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_salary_template`
--
ALTER TABLE `tbl_salary_template`
  MODIFY `salary_template_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_saved_items`
--
ALTER TABLE `tbl_saved_items`
  MODIFY `saved_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_sent`
--
ALTER TABLE `tbl_sent`
  MODIFY `sent_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_stock_category`
--
ALTER TABLE `tbl_stock_category`
  MODIFY `stock_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_stock_sub_category`
--
ALTER TABLE `tbl_stock_sub_category`
  MODIFY `stock_sub_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_suppliers`
--
ALTER TABLE `tbl_suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_task`
--
ALTER TABLE `tbl_task`
  MODIFY `task_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_tasks_timer`
--
ALTER TABLE `tbl_tasks_timer`
  MODIFY `tasks_timer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_task_attachment`
--
ALTER TABLE `tbl_task_attachment`
  MODIFY `task_attachment_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_task_comment`
--
ALTER TABLE `tbl_task_comment`
  MODIFY `task_comment_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_task_uploaded_files`
--
ALTER TABLE `tbl_task_uploaded_files`
  MODIFY `uploaded_files_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tax_rates`
--
ALTER TABLE `tbl_tax_rates`
  MODIFY `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_tickets`
--
ALTER TABLE `tbl_tickets`
  MODIFY `tickets_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tickets_replies`
--
ALTER TABLE `tbl_tickets_replies`
  MODIFY `tickets_replies_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_todo`
--
ALTER TABLE `tbl_todo`
  MODIFY `todo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_training`
--
ALTER TABLE `tbl_training`
  MODIFY `training_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  MODIFY `transactions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_transfer`
--
ALTER TABLE `tbl_transfer`
  MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2783;

--
-- AUTO_INCREMENT for table `tbl_working_days`
--
ALTER TABLE `tbl_working_days`
  MODIFY `working_days_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
