-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2023 at 08:31 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(10) NOT NULL,
  `company` varchar(255) NOT NULL,
  `EmailID` varchar(255) NOT NULL,
  `Mobile` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company`, `EmailID`, `Mobile`, `position`, `quantity`) VALUES
(1, 'Millenium', 'IT@gmail.com', '0752565055', 'QA', '5'),
(2, 'Virtusa', 'Virtusa@gmail.com', '0112256505', 'PM', '2'),
(5, 'OpenArc', 'openArc@gmail.com', '0785464052', 'SD', '5');

-- --------------------------------------------------------

--
-- Table structure for table `selected`
--

CREATE TABLE `selected` (
  `ID` varchar(10) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `selected`
--

INSERT INTO `selected` (`ID`, `FirstName`, `company`, `position`, `mobile`) VALUES
('GAM/050012', 'Sanduni', 'Millenium', 'QA', '074560255'),
('GAM/250010', 'Kumara', 'Virtusa', 'PM', ' 078552501');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(10) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `EmailID` varchar(255) NOT NULL,
  `Mobile` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `Company` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `FirstName`, `LastName`, `EmailID`, `Mobile`, `Gender`, `dob`, `position`, `Company`) VALUES
(1, '1', 'Isuru', 'Isuru@gmail.com', '0783326452', 'Male', '99-05-10', '', 'EpicLanka'),
(2, 'GAM/050012', 'Sanduni', 'Sanduni@gmail.com', '074560255', 'Female', '98-06-31', '', 'Millenium'),
(3, 'GAM/250010', 'Kumara', 'kumara@gmail.com', '078552501', 'Male', '99-05-06', 'SD', 'EpicLanka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selected`
--
ALTER TABLE `selected`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
