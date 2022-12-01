-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 06:19 PM
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
