-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 06:22 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prision`
--

-- --------------------------------------------------------

--
-- Table structure for table `cell`
--

CREATE TABLE `cell` (
  `cellID` int(11) NOT NULL,
  `cellBlock` varchar(1) NOT NULL,
  `maxOccupancy` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cell`
--

INSERT INTO `cell` (`cellID`, `cellBlock`, `maxOccupancy`) VALUES
(1, 'A', 2),
(2, 'A', 2),
(3, 'B', 2),
(4, 'B', 2),
(5, 'C', 2),
(6, 'C', 2),
(7, 'D', 2),
(8, 'D', 2),
(9, 'D', 2),
(10, 'D', 2);

-- --------------------------------------------------------

--
-- Table structure for table `prisoner_jobs`
--

CREATE TABLE `prisoner_jobs` (
  `jobID` int(11) NOT NULL,
  `job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prisoner_jobs`
--

INSERT INTO `prisoner_jobs` (`jobID`, `job`) VALUES
(1, 'Lead Cook'),
(2, 'Janitor'),
(3, 'History Teacher'),
(4, 'Carpenter'),
(5, 'Laundry Worker'),
(6, 'English Teacher'),
(7, 'Math Teacher'),
(8, 'Science Teacher'),
(9, 'Cook Hand'),
(10, 'Librarian');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `roleID` int(11) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`roleID`, `role`) VALUES
(1, 'Warden'),
(2, 'Cheif Guard'),
(3, 'Guard'),
(4, 'Head Doctor'),
(5, 'Doctor'),
(6, 'Electrician'),
(7, 'Database Programer'),
(8, 'Webmaster'),
(9, 'Public Relations'),
(10, 'Prisioner');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `timeID` int(11) NOT NULL,
  `cellBlock` char(1) DEFAULT NULL,
  `time` time(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`timeID`, `cellBlock`, `time`) VALUES
(1, NULL, '07:00:00.00'),
(2, NULL, '08:00:00.46'),
(3, NULL, '09:00:00.77'),
(4, 'A', '10:00:00.76'),
(5, NULL, '11:00:00.71'),
(6, 'D', '12:00:00.34'),
(7, NULL, '13:00:00.06'),
(8, 'B', '14:00:00.43'),
(9, 'C', '15:00:00.70'),
(10, NULL, '16:00:00.56'),
(11, NULL, '17:00:00.05'),
(12, NULL, '18:00:00.26'),
(13, NULL, '19:00:00.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `jobID` int(11) DEFAULT NULL,
  `roleID` int(11) NOT NULL,
  `cellID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `firstName`, `lastName`, `sex`, `jobID`, `roleID`, `cellID`) VALUES
(1, 'Austin', 'Ames', 'M', NULL, 1, NULL),
(2, 'Holden', 'Ash', 'M', NULL, 2, NULL),
(3, 'Christine', 'Bear', 'F', NULL, 3, NULL),
(4, 'Kyle', 'Becker', 'M', NULL, 4, NULL),
(5, 'Jakob', 'Byrd', 'M', NULL, 5, NULL),
(6, 'Dylan', 'Blanken', 'M', NULL, 6, NULL),
(7, 'Will', 'Bahme', 'M', NULL, 7, NULL),
(8, 'Cam', 'Brady', 'M', NULL, 8, NULL),
(9, 'Chris', 'Bridgeman', 'M', NULL, 9, NULL),
(10, 'Mason', 'Chough', 'M', 1, 10, 1),
(11, 'Floyd', 'Chowder', 'M', 2, 10, 2),
(12, 'Travista', 'Czarkenike', 'F', 8, 10, 3),
(13, 'Matthew', 'Daymernan', 'M', 2, 10, 4),
(14, 'Ben', 'Freeman', 'M', 4, 10, 2),
(15, 'Jack', 'Grezcoviakwak', 'M', 5, 10, 4),
(16, 'Jill', 'henney', 'F', 9, 10, 3),
(17, 'Roman', 'Holloway', 'M', 2, 10, 3),
(18, 'Caden', 'Chough', 'M', 10, 10, 5),
(19, 'Blake', 'Johnson', 'M', 6, 10, 5),
(20, 'Matt', 'Wild', 'F', 2, 10, 6),
(21, 'Karl', 'Townbridge', 'M', 7, 10, 7),
(22, 'Hank', 'Trough', 'M', 6, 10, 7),
(23, 'Ethan', 'Jert', 'M', 9, 10, 8),
(24, 'Waytt', 'Vollmar', 'F', 1, 10, 8),
(25, 'Elijah', 'Iverson', 'M', 3, 10, 9),
(26, 'Webston', 'Cotroell', 'M', 3, 10, 10),
(27, 'Dan', 'Strubman', 'M', 4, 10, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cell`
--
ALTER TABLE `cell`
  ADD PRIMARY KEY (`cellID`);

--
-- Indexes for table `prisoner_jobs`
--
ALTER TABLE `prisoner_jobs`
  ADD PRIMARY KEY (`jobID`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`roleID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`timeID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cell`
--
ALTER TABLE `cell`
  MODIFY `cellID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `prisoner_jobs`
--
ALTER TABLE `prisoner_jobs`
  MODIFY `jobID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `roleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `timeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
