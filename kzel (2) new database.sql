-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2024 at 04:00 AM
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
-- Database: `kzel`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `FirstName` varchar(225) NOT NULL,
  `LastName` varchar(225) NOT NULL,
  `Birthday` date NOT NULL,
  `Sex` varchar(225) NOT NULL,
  `user_email` varchar(225) NOT NULL,
  `user` varchar(225) NOT NULL,
  `pass` varchar(225) NOT NULL,
  `user_profile_picture` varchar(225) NOT NULL,
  `account_type` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `FirstName`, `LastName`, `Birthday`, `Sex`, `user_email`, `user`, `pass`, `user_profile_picture`, `account_type`) VALUES
(32, 'Kaye Zel', 'Reyes', '2024-04-29', 'Female', 'kayezelreyes3@gmail.com', 'kzel2', '123456789k_K', 'uploads/OIP_1716427879.jpg', 1),
(33, 'Mark Angelo', 'Tibayan', '2024-04-29', 'Male', 'gelo@gmail.com', 'gelo', 'Gelo_123', 'uploads/monkeyrizz.jpg', 1),
(34, 'Kaye Zel', 'Reyes', '2024-04-28', 'Female', 'reyes@gmail.com', 'kzel_', '$2y$10$eyV3tuXZatgEBb09bKuDf.WfAgpdDkmSxnAW7/E7UhRQYOdRC6JLS', 'uploads/OIP_1716513015.jpg', 1),
(35, 'Diwata', 'Gab', '2024-04-30', 'Male', 'd@gmail.com', 'Diwata', '$2y$10$8DT6sGL2YLGDh3VdxuJoaO.s63PemNJkv1qv5/SCbGOm7tSk6QLsG', 'uploads/download.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `user_address_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_street` varchar(255) DEFAULT NULL,
  `user_barangay` varchar(255) DEFAULT NULL,
  `user_city` varchar(255) DEFAULT NULL,
  `user_province` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`user_address_id`, `user_id`, `user_street`, `user_barangay`, `user_city`, `user_province`) VALUES
(28, 32, 'sd ', 'Alogoog ', 'Badoc ', 'Region I (Ilocos Region) '),
(29, 33, '123 ', 'Bagacay ', 'Labo ', 'Region V (Bicol Region) '),
(30, 34, '3', 'Barangay I (Pob.)', 'Buenavista', 'MIMAROPA'),
(31, 35, '1', 'Galamay-Amo', 'San Jose', 'Region IV-A (CALABARZON)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`user_address_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `user_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
