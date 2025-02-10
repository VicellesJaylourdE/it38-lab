-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2025 at 08:43 AM
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
-- Database: `enterprise_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`log_id`, `user_id`, `login_time`) VALUES
(1, 0, '2025-02-03 16:07:12'),
(2, 0, '2025-02-06 15:53:13'),
(3, 0, '2025-02-06 15:58:49'),
(4, 0, '2025-02-06 16:00:11'),
(5, 0, '2025-02-06 16:00:54'),
(6, 0, '2025-02-10 14:55:00'),
(7, 0, '2025-02-10 15:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('admin','user') NOT NULL DEFAULT 'user',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_type`, `last_login`, `created_at`) VALUES
(0, 'admin', '$2y$10$g7hm1waOCyGgObvK5EQE4OVjoy92XbNP6b3xqbllIfWzqtm6EoFuK', 'user', '2025-02-10 15:33:21', '2025-02-03 08:06:59'),
(0, 'admin1', '$2y$10$nc6hqd3rSPRWMqUBQd8l.esOn.UIS3nPMeFQTqlDGQ3gHSJFx8Wge', 'admin', '2025-02-10 15:33:21', '2025-02-06 08:00:00'),
(0, 'user', '$2y$10$c3HlE3AZC1Y3/jnjN/7BZOG70Vg1r2eVUIgidUIsOZkzdeBjUcMZe', 'user', '2025-02-10 15:33:21', '2025-02-06 08:00:37'),
(0, 'jay', '$2y$10$.TQ4Fk5fFwuJPv946h7l2OyvoywTfEusvGCG0T8e8x6fhRa1O8Twu', 'admin', '2025-02-10 15:33:21', '2025-02-10 06:54:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
