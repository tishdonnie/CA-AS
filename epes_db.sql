-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2024 at 10:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epes_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `department` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `department`, `description`) VALUES
(1, 'IT Department', 'Information Technology Department'),
(3, 'Economics', 'deals with company calculation of risk and sustainability'),
(4, 'IDE', 'Innovation and Digital Economy'),
(5, 'Accountting ', 'Account keeping team\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `designation_list`
--

CREATE TABLE `designation_list` (
  `id` int(30) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `designation_list`
--

INSERT INTO `designation_list` (`id`, `designation`, `description`) VALUES
(1, 'Sr. Programmer', 'Senior Programmer'),
(2, 'Jr. Programmer', 'Junior Programmer'),
(3, 'Project Manager', 'Project Manager'),
(4, 'QA/QC Analyst', 'Quality Assurance and Quality Control Analyst');

-- --------------------------------------------------------

--
-- Table structure for table `employee_list`
--

CREATE TABLE `employee_list` (
  `id` int(30) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `department_id` int(30) NOT NULL,
  `designation_id` int(30) NOT NULL,
  `evaluator_id` int(30) NOT NULL,
  `avatar` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `reset_token` int(11) DEFAULT NULL,
  `password_reset_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_list`
--

INSERT INTO `employee_list` (`id`, `employee_id`, `firstname`, `middlename`, `lastname`, `email`, `password`, `department_id`, `designation_id`, `evaluator_id`, `avatar`, `date_created`, `reset_token`, `password_reset_time`) VALUES
(3, '', 'erick', '', 'gitau', 'infoericgitau421@gmail.com', '202cb962ac59075b964b07152d234b70', 1, 1, 2, '1707398100_Blur.Wallpapers.03.jpg', '2024-02-08 16:15:35', NULL, NULL),
(4, '', 'Rico', 'Mwas', 'Git', 'git@gmail.com', '202cb962ac59075b964b07152d234b70', 1, 4, 2, 'no-image-available.png', '2024-02-29 09:23:13', NULL, NULL),
(5, '', 'mercy', 'A', 'Ongoya', 'mercyakoth365@gmail.com', '202cb962ac59075b964b07152d234b70', 3, 4, 2, '1710973920_IMG-20240318-WA0056.jpg', '2024-03-21 01:32:22', NULL, NULL),
(6, '', 'ian', 'N', 'Njoroge', 'iannjoroge05@gmail.com', '202cb962ac59075b964b07152d234b70', 4, 1, 2, 'no-image-available.png', '2024-03-21 01:33:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `evaluator_list`
--

CREATE TABLE `evaluator_list` (
  `id` int(30) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `reset_token` int(11) DEFAULT NULL,
  `password_reset_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evaluator_list`
--

INSERT INTO `evaluator_list` (`id`, `employee_id`, `firstname`, `middlename`, `lastname`, `email`, `password`, `avatar`, `date_created`, `reset_token`, `password_reset_time`) VALUES
(2, '', 'manager', '', 'eric', 'ericgitau@kabarak.ac.ke', '202cb962ac59075b964b07152d234b70', '1707398040_WIN_20240206_15_13_19_Pro.jpg', '2024-02-08 16:14:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(30) NOT NULL,
  `employee_id` int(30) NOT NULL,
  `task_id` int(30) NOT NULL,
  `evaluator_id` int(30) NOT NULL,
  `efficiency` int(11) NOT NULL,
  `timeliness` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `accuracy` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `late` int(11) DEFAULT 0,
  `ontime` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `employee_id`, `task_id`, `evaluator_id`, `efficiency`, `timeliness`, `quality`, `accuracy`, `remarks`, `date_created`, `late`, `ontime`) VALUES
(3, 3, 4, 2, 4, 4, 5, 4, 'Good job', '2024-02-19 10:08:34', 0, 0),
(4, 4, 6, 2, 3, 2, 2, 1, 'Please work on this and this', '2024-02-29 09:30:42', 0, 0),
(5, 3, 7, 2, 4, 0, 4, 4, 'good work but late', '2024-03-20 23:28:04', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Employee Performance Evaluation System', 'infoericgitau421@gmail.com', '0745598098', 'NAKURU - KENYA', '');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE `task_list` (
  `id` int(30) NOT NULL,
  `task` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `employee_id` int(30) NOT NULL,
  `due_date` date NOT NULL,
  `completed` date NOT NULL,
  `status` int(1) NOT NULL COMMENT '0=pending, 1=on-progress,3=Completed',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`id`, `task`, `description`, `employee_id`, `due_date`, `completed`, `status`, `date_created`) VALUES
(3, 'create a job evaluation portal', '							please add a nice user interface						', 3, '2024-03-29', '0000-00-00', 2, '2024-02-08 16:16:33'),
(4, 'web design', '														complete before due date												', 3, '2024-04-03', '0000-00-00', 2, '2024-02-09 12:56:38'),
(5, 'web development', '														dev a web												', 3, '2024-03-08', '0000-00-00', 2, '2024-02-21 18:23:49'),
(6, 'web application', 'Create UI for WebDev', 4, '2024-03-02', '0000-00-00', 2, '2024-02-29 09:24:34'),
(7, 'Research', '&lt;p&gt;Upload a research concerning &lt;b&gt;Hiv &amp;amp; Aids&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b style=&quot;background-color: rgb(255, 0, 0);&quot;&gt;Please take your time to do the task&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;													&lt;/b&gt;&lt;/p&gt;', 3, '2024-03-23', '0000-00-00', 2, '2024-03-20 22:50:10'),
(8, 'GRAPHIC DESIGN', '							design a logo for a milk company						', 3, '2024-04-06', '0000-00-00', 0, '2024-03-21 01:28:33'),
(9, 'Research', 'conduct a research on covid 19', 5, '2024-04-04', '0000-00-00', 1, '2024-03-21 01:34:19'),
(10, 'web application', 'conduct research on web application', 3, '2024-03-29', '0000-00-00', 0, '2024-03-28 13:37:46'),
(11, 'research on covid 19', 'do a reseach and upload', 3, '2024-04-05', '0000-00-00', 2, '2024-03-28 14:50:14');

-- --------------------------------------------------------

--
-- Table structure for table `task_progress`
--

CREATE TABLE `task_progress` (
  `id` int(11) NOT NULL,
  `task_id` int(30) NOT NULL,
  `progress` text NOT NULL,
  `is_complete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=no,1=Yes',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task_progress`
--

INSERT INTO `task_progress` (`id`, `task_id`, `progress`, `is_complete`, `date_created`) VALUES
(1, 1, '&lt;p&gt;Sample Progress&lt;/p&gt;', 0, '2020-12-05 11:29:48'),
(2, 1, '&lt;p&gt;Sample Progress&lt;/p&gt;', 0, '2020-12-05 11:32:15'),
(3, 1, '&lt;p&gt;Sample 2&lt;/p&gt;', 0, '2020-12-05 11:34:18'),
(4, 1, 'asdasd', 0, '2020-12-05 11:34:31'),
(5, 1, '&lt;p&gt;complete&lt;/p&gt;', 1, '2020-12-05 11:54:13'),
(6, 3, '&lt;p&gt;i have already created a user interface&lt;/p&gt;', 0, '2024-02-08 16:17:24'),
(7, 4, '&lt;p&gt;The task has been completed&lt;/p&gt;', 1, '2024-02-19 10:07:42'),
(8, 3, '&lt;p&gt;done&lt;/p&gt;', 1, '2024-02-19 10:07:54'),
(9, 6, '&lt;p&gt;Work Done&lt;/p&gt;', 1, '2024-02-29 09:29:25'),
(10, 5, '&lt;p&gt;task completed&lt;/p&gt;', 1, '2024-03-20 22:58:32'),
(11, 7, '&lt;p&gt;i have uploaded the project for examination&lt;/p&gt;', 1, '2024-03-20 22:59:18'),
(12, 9, '&lt;p&gt;the research chapter 1 &amp;amp; 2 is done&lt;/p&gt;', 0, '2024-03-21 01:35:22'),
(13, 11, '&lt;p&gt;complete&lt;/p&gt;', 1, '2024-03-28 14:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `reset_token` int(11) DEFAULT NULL,
  `password_reset_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `avatar`, `date_created`, `reset_token`, `password_reset_time`) VALUES
(1, 'Administrator', '', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', '1607135820_avatar.jpg', '2020-11-26 10:57:04', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation_list`
--
ALTER TABLE `designation_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_list`
--
ALTER TABLE `employee_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluator_list`
--
ALTER TABLE `evaluator_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_progress`
--
ALTER TABLE `task_progress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `designation_list`
--
ALTER TABLE `designation_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee_list`
--
ALTER TABLE `employee_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `evaluator_list`
--
ALTER TABLE `evaluator_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_list`
--
ALTER TABLE `task_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `task_progress`
--
ALTER TABLE `task_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
