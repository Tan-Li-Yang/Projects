-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2024 at 06:12 AM
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
-- Database: `fitness_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `calory`
--

CREATE TABLE `calory` (
  `email` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Food` varchar(255) NOT NULL,
  `Calory` double(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calory`
--

INSERT INTO `calory` (`email`, `Date`, `Time`, `Food`, `Calory`) VALUES
('123@gmail.com', '2024-10-25', '13:22:00', 'Nasi Lemak', 2000.00),
('123@gmail.com', '2024-10-27', '19:54:00', 'Nasi Lemak', 1500.00),
('123@gmail.com', '2024-10-29', '13:18:00', 'Roti Canai', 200.00);

-- --------------------------------------------------------

--
-- Table structure for table `exercise`
--

CREATE TABLE `exercise` (
  `email` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Start` time NOT NULL,
  `End` time NOT NULL,
  `Calory` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exercise`
--

INSERT INTO `exercise` (`email`, `Date`, `Type`, `Start`, `End`, `Calory`) VALUES
('123@gmail.com', '2024-10-08', 'Basketball', '11:28:00', '12:26:00', 500);

-- --------------------------------------------------------

--
-- Table structure for table `fitness_class_subscription`
--

CREATE TABLE `fitness_class_subscription` (
  `username` varchar(255) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `class_day` varchar(255) NOT NULL,
  `price_per_month` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `status` enum('active','canceled') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fitness_class_subscription`
--

INSERT INTO `fitness_class_subscription` (`username`, `class_name`, `class_day`, `price_per_month`, `subscription_id`, `status`) VALUES
('Bruno', 'Yoga', 'Monday', 80, 9, 'active'),
('Bruno', 'Pilates', 'Friday', 100, 10, 'active'),
('Bruno', 'Strength Training', 'Wednesday', 120, 11, 'active'),
('Masha', 'Strength Training', 'Wednesday', 120, 13, 'active'),
('Masha', 'Yoga', 'Monday', 80, 14, ''),
('Masha', 'Pilates', 'Friday', 100, 15, 'active'),
('Masha', 'Yoga', 'Monday', 80, 16, 'active'),
('123@gmail.com', 'Yoga', 'Monday', 80, 17, ''),
('123@gmail.com', 'Pilates', 'Friday', 100, 18, ''),
('123@gmail.com', 'Strength Training', 'Sunday', 120, 19, ''),
('123@gmail.com', 'Yoga', 'Monday', 80, 20, ''),
('123@gmail.com', 'Yoga', 'Monday', 80, 21, ''),
('123@gmail.com', 'Pilates', 'Friday', 100, 22, ''),
('123@gmail.com', 'Strength Training', 'Sunday', 120, 23, ''),
('123@gmail.com', 'Yoga', 'Monday', 80, 24, ''),
('123@gmail.com', 'Yoga', 'Saturday', 80, 25, ''),
('123@gmail.com', 'Strength Training', 'Thursday', 120, 26, ''),
('123@gmail.com', 'Yoga', 'Sunday', 80, 27, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Nutritionist` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`email`, `username`, `Date`, `Time`, `Nutritionist`) VALUES
('123@gmail.com', 'user3', '2024-10-29', '18:00:00', 'Selena Yamada'),
('123@gmail.com', 'user1', '2024-10-31', '16:30:00', 'Philip Fry');

-- --------------------------------------------------------

--
-- Table structure for table `target`
--

CREATE TABLE `target` (
  `water` double(6,2) DEFAULT NULL,
  `weight` decimal(5,2) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `Calory` double(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `target`
--

INSERT INTO `target` (`water`, `weight`, `email`, `Calory`) VALUES
(4500.00, 40.00, '123@gmail.com', 3000.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `gender`, `email`, `phonenumber`, `dob`, `password`, `role`) VALUES
('user3', 'female', '123@gmail.com', '+6012345678', '2024-10-09', '$2y$10$HEWnxfbSmsJ0yb4hWyJsYuwbxA0x2lDxsbA8CNSFOH.gNbxQwrGLm', 'user'),
('user2', 'female', '147@gmail.com', '+6012345678', '2024-10-10', '$2y$10$UWHBkMCsREg9WNGaBL1bp.8A2yZ3K2WN93gK9VmDpWV0ydTnxDOU2', 'user'),
('Bruno', 'male', 'brunosucks@gmail.com', '+60 010-344-9208', '2024-10-10', '$2y$10$ZIG1sw6PiV7sVe.jfOLYKeScw2v4Lt3wVVbbFh4aFZYNBAhMnI2Wu', 'user'),
('Masha', 'female', 'masha@gmail.com', '+60 010-344-9201', '2024-10-11', '$2y$10$H4QZ32Dg5bgtZ0pyCPxnJeKoLoOjJf7TLZKAxFuHVzRruP6bDW/4i', 'user'),
('user1', 'male', 'redstonegamerhq@gmail.com', '+6012345678', '2024-10-15', '$2y$10$kiXb/prZALHqs9bD4hINYONLjVbSyH8KiChht/w1mKfK.UC4itVH.', 'user'),
('Satoshi', 'male', 'satoshi@gmail.com', '+60 013-588-7639', '2024-10-12', '$2y$10$uwRUsDEE05RHPXrN6IVB3uavGETa56RpM0EWxny8Wy6b7HFDfScUW', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `water`
--

CREATE TABLE `water` (
  `email` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `water`
--

INSERT INTO `water` (`email`, `Date`, `Time`, `Amount`) VALUES
('123@gmail.com', '2024-10-09', '14:44:00', 400),
('123@gmail.com', '2024-10-22', '18:37:00', 2000),
('123@gmail.com', '2024-10-28', '18:02:00', 3400),
('789@gmail.com', '2024-10-22', '18:37:00', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `weight`
--

CREATE TABLE `weight` (
  `email` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Weight` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weight`
--

INSERT INTO `weight` (`email`, `Date`, `Weight`) VALUES
('123@gmail.com', '2024-10-08', 50.5),
('123@gmail.com', '2024-10-09', 50.5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calory`
--
ALTER TABLE `calory`
  ADD PRIMARY KEY (`email`,`Date`,`Time`);

--
-- Indexes for table `exercise`
--
ALTER TABLE `exercise`
  ADD PRIMARY KEY (`email`,`Date`,`Type`,`Start`) USING BTREE;

--
-- Indexes for table `fitness_class_subscription`
--
ALTER TABLE `fitness_class_subscription`
  ADD PRIMARY KEY (`subscription_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`email`,`Date`) USING BTREE;

--
-- Indexes for table `target`
--
ALTER TABLE `target`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `water`
--
ALTER TABLE `water`
  ADD PRIMARY KEY (`email`,`Date`,`Time`) USING BTREE;

--
-- Indexes for table `weight`
--
ALTER TABLE `weight`
  ADD PRIMARY KEY (`email`,`Date`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fitness_class_subscription`
--
ALTER TABLE `fitness_class_subscription`
  MODIFY `subscription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `target`
--
ALTER TABLE `target`
  ADD CONSTRAINT `target_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
