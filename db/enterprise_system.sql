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

-- Database: enterprise_system

-- --------------------------------------------------------

-- Table structure for table login_logs

CREATE TABLE login_logs (
  log_id int(11) NOT NULL AUTO_INCREMENT,  -- Added AUTO_INCREMENT
  user_id int(11) NOT NULL,
  login_time datetime NOT NULL,
  PRIMARY KEY (log_id)  -- Added primary key
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table login_logs

INSERT INTO login_logs (user_id, login_time) VALUES
(1, '2025-02-03 16:07:12'),
(2, '2025-02-06 15:53:13'),
(3, '2025-02-06 15:58:49'),
(4, '2025-02-06 16:00:11'),
(5, '2025-02-06 16:00:54'),
(6, '2025-02-10 14:55:00'),
(7, '2025-02-10 15:33:21');

-- --------------------------------------------------------

-- Table structure for table users

CREATE TABLE users (
  id int(11) NOT NULL AUTO_INCREMENT,  -- Added AUTO_INCREMENT
  username varchar(50) NOT NULL,
  password varchar(255) NOT NULL,
  user_type enum('admin','user') NOT NULL DEFAULT 'user',
  last_login datetime DEFAULT NULL,
  created_at timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (id)  -- Added primary key
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table users

INSERT INTO users (username, password, user_type, last_login, created_at) VALUES
('admin', '$2y$10$g7hm1waOCyGgObvK5EQE4OVjoy92XbNP6b3xqbllIfWzqtm6EoFuK', 'user', '2025-02-10 15:33:21', '2025-02-03 08:06:59'),
('admin1', '$2y$10$nc6hqd3rSPRWMqUBQd8l.esOn.UIS3nPMeFQTqlDGQ3gHSJFx8Wge', 'admin', '2025-02-10 15:33:21', '2025-02-06 08:00:00'),
('user', '$2y$10$c3HlE3AZC1Y3/jnjN/7BZOG70Vg1r2eVUIgidUIsOZkzdeBjUcMZe', 'user', '2025-02-10 15:33:21', '2025-02-06 08:00:37'),
('jay', '$2y$10$.TQ4Fk5fFwuJPv946h7l2OyvoywTfEusvGCG0T8e8x6fhRa1O8Twu', 'admin', '2025-02-10 15:33:21', '2025-02-10 06:54:52');

-- --------------------------------------------------------

-- Table structure for table tbl_attendance

CREATE TABLE tbl_attendance (
  attendance_id int(11) NOT NULL AUTO_INCREMENT,  -- Primary key for attendance table
  user_id int(11) NOT NULL,                        -- Foreign key to link to the users table
  attendance_data datetime NOT NULL,               -- The attendance data (e.g., date and time of attendance)
  PRIMARY KEY (attendance_id),                     -- Set attendance_id as the primary key
  FOREIGN KEY (user_id) REFERENCES users(id)       -- Foreign key linking to the id column in the users table
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Sample insert data for tbl_attendance

INSERT INTO tbl_attendance (user_id, attendance_data) VALUES
(1, '2025-03-10 08:00:00'),
(2, '2025-03-10 08:05:00'),
(3, '2025-03-10 08:10:00');

-- --------------------------------------------------------

-- Commit transaction
COMMIT;

-- Reset character set to the old configuration
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
