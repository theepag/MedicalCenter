-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2018 at 09:45 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contact`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `AppointmentID` int(11) NOT NULL,
  `DoctorID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `ClinicDate` date NOT NULL,
  `ClinicTime` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`AppointmentID`, `DoctorID`, `PatientID`, `ClinicDate`, `ClinicTime`) VALUES
(25, 1, 11, '2018-12-04', '00:00:00'),
(32, 1, 4, '2018-12-04', 'Morning'),
(33, 1, 12, '2018-12-04', 'Morning'),
(24, 1, 4, '2018-12-04', '00:00:00'),
(34, 1, 12, '2018-12-04', 'Morning'),
(30, 1, 12, '2018-12-04', 'Morning');

-- --------------------------------------------------------

--
-- Table structure for table `contact12`
--

CREATE TABLE `contact12` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `message` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact12`
--

INSERT INTO `contact12` (`id`, `fname`, `lname`, `email`, `phone`, `message`) VALUES
(15, 'GulKhan', 'Afghan', 'karmakarshweta@gmail.com', '0769757777', 'KabulJan'),
(28, 'Waliam', 'Kane', 'JoyRoot@yahoo.com', '0769757777', 'American'),
(29, 'sohail', 'Armaan', 'karm12akarshweta@gmail.com', '0769757777', 'Yaaaaaap!!!!11'),
(30, 'Abdullah', 'Khan', 'abdgvhullahdaulatzai@yahoo.com', '0769757777', 'n bn '),
(31, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cus_name` varchar(100) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cus_id` int(10) NOT NULL,
  `mobile` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) DEFAULT NULL,
  `user_type` varchar(100) NOT NULL DEFAULT 'customer',
  `apID` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_name`, `age`, `gender`, `email`, `cus_id`, `mobile`, `username`, `password`, `user_type`, `apID`) VALUES
('theepag', 22, '', 'theepag@live.cvom', 2, 777588654, 'theepag', '1234', 'customer', ''),
('Abdullah', 22, 'Male', 'abdullahdaulatzia@gmail.com', 19, 769657777, 'Abdullah', '1234', 'admin', ''),
('assa', 22, 'Male', 'abdullahdaulatzia@gmail.com', 22, 7696, 'Abdullah12', NULL, 'customer', '12');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DoctorID` int(11) NOT NULL,
  `DoctorName` varchar(50) NOT NULL,
  `SpecelizedArea` varchar(20) DEFAULT NULL,
  `Address` varchar(400) DEFAULT NULL,
  `ContactNO` varchar(10) DEFAULT NULL,
  `MaxAppointments` int(5) DEFAULT NULL,
  `Hospital` varchar(10) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `ClinicDate` date DEFAULT NULL,
  `ClinicTime` varchar(20) DEFAULT NULL,
  `Week_Day` varchar(20) NOT NULL,
  `Week_Day_Section` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DoctorID`, `DoctorName`, `SpecelizedArea`, `Address`, `ContactNO`, `MaxAppointments`, `Hospital`, `Email`, `ClinicDate`, `ClinicTime`, `Week_Day`, `Week_Day_Section`) VALUES
(1, 'Ali', 'Cancer', NULL, NULL, 1, NULL, NULL, '2018-12-04', '04:14:18', '', 'Morning'),
(4, '', 'Surgeon', NULL, '0769657777', 222, 'Durdans', 'abdullahdaulatzia@gmail.com', '2018-12-30', '00:01:08', 'Sunday', ''),
(7, 'Abdullah Khan', 'Surgeon', 'uva wellassa university.', '0769657777', 12, 'Durdans', 'abdullahdaulatzia@gmail.com', '2018-12-30', '108.00-12.00', 'Sunday', 'Morning');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`AppointmentID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `PatientID_2` (`PatientID`),
  ADD KEY `DoctorID` (`DoctorID`);

--
-- Indexes for table `contact12`
--
ALTER TABLE `contact12`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`),
  ADD UNIQUE KEY `mob` (`mobile`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DoctorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `AppointmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `contact12`
--
ALTER TABLE `contact12`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cus_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `DoctorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
