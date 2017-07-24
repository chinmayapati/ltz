-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 06, 2017 at 04:44 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ltz`
--

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `downloaded` int(11) NOT NULL,
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `userid`, `file_name`, `link`, `ip`, `downloaded`, `rating`, `uploaded`) VALUES
(1, 0, 'Q2.exe', '', '', 0, 0, '2016-10-20 09:57:57'),
(2, 0, 'Q5.exe', '', '', 0, 0, '2016-10-20 09:58:02'),
(3, 0, '18307_K1402.xls', '', '', 0, 0, '2016-10-28 09:26:41'),
(4, 0, 'lucifer.202.hdtv-lol[ettv].mkv', '', '', 0, 0, '2016-10-29 16:18:54'),
(5, 0, 'rptIpPrintNew.pdf', '', '', 0, 0, '2016-12-06 14:41:58'),
(6, 0, '20170210211419_1.jpg', '', '', 0, 0, '2017-02-15 18:26:33'),
(7, 0, 'bank.py', '', '', 0, 0, '2017-02-15 18:55:50'),
(8, 0, 'a.out', '', '', 0, 0, '2017-02-15 18:55:50'),
(9, 0, 'deadlock.cpp', '', '', 0, 0, '2017-02-15 18:55:50'),
(10, 0, 'e.cpp', '', '', 0, 0, '2017-02-15 18:55:50'),
(11, 0, 'dining.cpp', '', '', 0, 0, '2017-02-15 18:55:50'),
(12, 0, 'f.txt', '', '', 0, 0, '2017-02-15 18:55:50'),
(13, 0, 'fork1.cpp', '', '', 0, 0, '2017-02-15 18:55:50'),
(14, 0, 'g.txt', '', '', 0, 0, '2017-02-15 18:55:50'),
(15, 0, 'pipe_read.cpp', '', '', 0, 0, '2017-02-15 18:55:50'),
(16, 0, 'pipe_wr.cpp', '', '', 0, 0, '2017-02-15 18:55:50'),
(17, 0, 'pipe_write.cpp', '', '', 0, 0, '2017-02-15 18:55:50'),
(18, 0, 'pw', '', '', 0, 0, '2017-02-15 18:55:50'),
(19, 0, 'pr', '', '', 0, 0, '2017-02-15 18:55:51'),
(20, 0, 'reader.cpp', '', '', 0, 0, '2017-02-15 18:55:53'),
(21, 0, 's.cpp', '', '', 0, 0, '2017-02-15 18:55:53'),
(22, 0, 'sem.cpp', '', '', 0, 0, '2017-02-15 18:55:53'),
(23, 0, 's.out', '', '', 0, 0, '2017-02-15 18:55:53'),
(24, 0, 'thread1.cpp', '', '', 0, 0, '2017-02-15 18:55:53'),
(25, 0, 'index.php', '', '', 0, 0, '2017-03-17 14:54:29'),
(26, 0, '127_0_0_1.sql', '', '', 0, 0, '2017-03-17 14:54:29'),
(27, 0, '15 - Picking a Palette From An Image Part 2[14-50-10].JPG', '', '', 0, 0, '2017-03-17 14:55:14'),
(28, 0, '15 - Picking a Palette From An Image Part 2[14-50-10].JPG', '', '', 0, 0, '2017-03-17 14:55:31'),
(29, 0, '28 - Aspect Ratio Images[14-51-28].JPG', '', '', 0, 0, '2017-03-17 14:55:38'),
(30, 0, '09 - Using color[14-50-51].JPG', '', '', 0, 0, '2017-03-17 14:55:50'),
(31, 0, '02 - Physical and Density Independent Pixels.mp4', '', '', 0, 0, '2017-03-17 14:56:04'),
(32, 0, '01 - Introduction.mp4', '', '', 0, 0, '2017-03-17 15:01:17'),
(33, 0, '03 - Working with Density Independent Pixels.mp4', '', '', 0, 0, '2017-03-17 15:01:17'),
(34, 0, '05 - Calculating Dips.mp4', '', '', 0, 0, '2017-03-17 15:01:19'),
(35, 0, '04 - More about Pixel Densities.mp4', '', '', 0, 0, '2017-03-17 15:01:20'),
(36, 0, '02 - Physical and Density Independent Pixels.mp4', '', '', 0, 0, '2017-03-17 15:01:20'),
(37, 0, '06 - Calculating Dips.mp4', '', '', 0, 0, '2017-03-17 15:01:20'),
(38, 0, '07 - Small Screens First.mp4', '', '', 0, 0, '2017-03-17 15:01:22'),
(39, 0, '09 - Density for Asset Crispness.mp4', '', '', 0, 0, '2017-03-17 15:01:23'),
(40, 0, '08 - Density buckets.mp4', '', '', 0, 0, '2017-03-17 15:01:23'),
(41, 0, '01 - Introduction.mp4', '', '', 0, 0, '2017-03-17 15:09:35'),
(42, 0, '03 - Working with Density Independent Pixels.mp4', '', '', 0, 0, '2017-03-17 15:09:35'),
(43, 0, '02 - Physical and Density Independent Pixels.mp4', '', '', 0, 0, '2017-03-17 15:09:35'),
(44, 0, '04 - More about Pixel Densities.mp4', '', '', 0, 0, '2017-03-17 15:09:37'),
(45, 0, '06 - Calculating Dips.mp4', '', '', 0, 0, '2017-03-17 15:09:37'),
(46, 0, '05 - Calculating Dips.mp4', '', '', 0, 0, '2017-03-17 15:09:37'),
(47, 0, '07 - Small Screens First.mp4', '', '', 0, 0, '2017-03-17 15:09:38'),
(48, 0, '08 - Density buckets.mp4', '', '', 0, 0, '2017-03-17 15:09:38'),
(49, 0, '09 - Density for Asset Crispness.mp4', '', '', 0, 0, '2017-03-17 15:09:38'),
(50, 0, '03 - Working with Density Independent Pixels.mp4', '', '', 0, 0, '2017-03-17 15:12:47'),
(51, 0, '02 - Physical and Density Independent Pixels.mp4', '', '', 0, 0, '2017-03-17 15:12:47'),
(52, 0, '01 - Introduction.mp4', '', '', 0, 0, '2017-03-17 15:12:48'),
(53, 0, '04 - More about Pixel Densities.mp4', '', '', 0, 0, '2017-03-17 15:12:49'),
(54, 0, '05 - Calculating Dips.mp4', '', '', 0, 0, '2017-03-17 15:12:49'),
(55, 0, '06 - Calculating Dips.mp4', '', '', 0, 0, '2017-03-17 15:12:49'),
(56, 0, '07 - Small Screens First.mp4', '', '', 0, 0, '2017-03-17 15:12:50'),
(57, 0, '08 - Density buckets.mp4', '', '', 0, 0, '2017-03-17 15:12:50'),
(58, 0, '09 - Density for Asset Crispness.mp4', '', '', 0, 0, '2017-03-17 15:12:50'),
(59, 0, '11 - Dissecting the Resource Qualifier.mp4', '', '', 0, 0, '2017-03-17 15:12:55'),
(60, 0, '10 - Vector vs Bitmap.mp4', '', '', 0, 0, '2017-03-17 15:12:55'),
(61, 0, '12 - State Lists.mp4', '', '', 0, 0, '2017-03-17 15:12:55'),
(62, 0, '13 - Layouts.mp4', '', '', 0, 0, '2017-03-17 15:12:56'),
(63, 0, '14 - Getting Started with Layouts.mp4', '', '', 0, 0, '2017-03-17 15:12:56'),
(64, 0, '13 - Layouts.mp4', '', '', 0, 0, '2017-03-17 20:50:16'),
(65, 0, '01 - Introduction.mp4', '', '', 0, 0, '2017-03-17 20:50:23'),
(66, 0, '03 - Working with Density Independent Pixels.mp4', '', '', 0, 0, '2017-03-17 20:50:23'),
(67, 0, '02 - Physical and Density Independent Pixels.mp4', '', '', 0, 0, '2017-03-17 20:50:23'),
(68, 0, '04 - More about Pixel Densities.mp4', '', '', 0, 0, '2017-03-17 20:50:23'),
(69, 0, '05 - Calculating Dips.mp4', '', '', 0, 0, '2017-03-17 20:50:23'),
(70, 0, '06 - Calculating Dips.mp4', '', '', 0, 0, '2017-03-17 20:50:23'),
(71, 0, '07 - Small Screens First.mp4', '', '', 0, 0, '2017-03-17 20:50:23'),
(72, 0, '25 - Creating your own style.mp4', '', '', 0, 0, '2017-03-17 20:50:30'),
(73, 0, '23 - Introduction to Themes and Styles.mp4', '', '', 0, 0, '2017-03-17 20:50:31'),
(74, 0, '26 - Creating your own style Solution.mp4', '', '', 0, 0, '2017-03-17 20:50:31'),
(75, 0, '27 - Recap.mp4', '', '', 0, 0, '2017-03-17 20:50:32'),
(76, 0, '24 - Adding a style.mp4', '', '', 0, 0, '2017-03-17 20:50:32'),
(77, 0, 'xampp-linux-x64-7.1.1-0-installer.run', '', '', 0, 0, '2017-03-20 11:15:39'),
(78, 0, 'Re-Loader2.0.rar', '', '', 0, 0, '2017-03-23 19:35:14'),
(79, 0, 'AI Notes.pdf', '', '', 0, 0, '2017-03-26 09:21:01'),
(80, 0, 'bcmwl-kernel-source_6.30.223.248+bdcom-0ubuntu8_amd64.deb', '', '', 0, 0, '2017-03-26 20:03:48'),
(81, 0, 'PLURALSIGHT EXPLORATORY DATA ANALYSIS WITH R TUTORIAL.zip', '', '', 0, 0, '2017-03-26 20:08:44'),
(82, 0, '17672_2014_04_msw_a4_format(1).doc', '', '', 0, 0, '2017-03-26 20:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `downloaded` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `uploaded_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT 'Unnamed',
  `last_name` varchar(30) DEFAULT 'User',
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `avatar` mediumblob,
  `last_ip` varchar(15) DEFAULT NULL,
  `locations` varchar(500) DEFAULT NULL,
  `is_logged_in` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Yes 0: No',
  `allow_access` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Allow 0: Block',
  `allow_download` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Allow 0: Block',
  `allow_upload` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Allow 0: Block',
  `no_of_login` int(11) NOT NULL DEFAULT '0',
  `no_of_files_uploaded` int(11) NOT NULL DEFAULT '0',
  `no_of_files_downloaded` int(11) NOT NULL DEFAULT '0',
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `password`, `avatar`, `last_ip`, `locations`, `is_logged_in`, `allow_access`, `allow_download`, `allow_upload`, `no_of_login`, `no_of_files_uploaded`, `no_of_files_downloaded`, `verified`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Rahul', 'Arora', 'rahul', 'rahul', NULL, '172.22.139.242', NULL, 1, 1, 1, 1, 7, 0, 0, 1, '', '2016-09-17 20:17:24', '2016-09-17 20:17:24'),
(2, 'Chinmaya', 'Pati', 'chiku', 'chiku', NULL, '::1', NULL, 0, 1, 1, 1, 144, 0, 0, 1, 'fe262490665dae09da1c920260ae5239', '2016-09-18 12:27:29', '2016-09-18 12:27:29'),
(3, 'Yogesh', 'Sharma', 'yogi', 'yogi', NULL, '172.22.128.178', NULL, 0, 1, 1, 1, 13, 0, 0, 0, '', '2016-10-28 12:54:59', '2016-10-28 12:54:59'),
(10, 'Bhavesh', 'Medtiya', 'bhavesh', 'bhavesh', NULL, '::1', NULL, 0, 1, 1, 1, 0, 0, 0, 0, '', '2017-03-17 01:09:06', '2017-03-17 01:09:06'),
(11, 'Manish', 'Tolani', 'manish', 'manish', NULL, '::1', NULL, 0, 1, 1, 1, 0, 0, 0, 0, '', '2017-03-17 01:09:59', '2017-03-17 01:09:59'),
(12, 'Surya Prakash', 'Gupta', 'surya', 'surya', NULL, '172.22.137.106', NULL, 1, 1, 1, 1, 4, 0, 0, 0, '', '2017-03-26 12:52:06', '2017-03-26 12:52:06'),
(13, 'Test', 'User', 'user', 'password', NULL, '172.21.132.229', NULL, 1, 1, 1, 1, 8, 0, 0, 0, '', '2017-03-26 23:29:20', '2017-03-26 23:29:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_upload_id` (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `fk_upload_id` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
