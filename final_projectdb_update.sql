-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2022 at 08:12 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_projectdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Test', 'admin', 8979555556, 'adminuser@gmail.com', 'b90e08786295e9cd20689881dcedea2e', '2020-02-13 12:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplication`
--

CREATE TABLE `tblapplication` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) NOT NULL,
  `ApplicationID` varchar(200) DEFAULT NULL,
  `DateofBirth` varchar(200) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `PlaceofBirth` varchar(200) DEFAULT NULL,
  `NameofFather` varchar(200) DEFAULT NULL,
  `PermanentAdd` mediumtext DEFAULT NULL,
  `PostalAdd` mediumtext DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Dateofapply` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblapplication`
--

INSERT INTO `tblapplication` (`ID`, `UserID`, `ApplicationID`, `DateofBirth`, `Gender`, `FullName`, `PlaceofBirth`, `NameofFather`, `PermanentAdd`, `PostalAdd`, `MobileNumber`, `Email`, `Dateofapply`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 1, '905226110', '2019-05-09', 'Female', 'Shravani', 'New Delhi', 'Mr. Tushar Singh', 'I-989, 9 floor Gaur Apartment Noida', 'I-989, 9 floor Gaur Apartment Noida', 7878878787, 'tushar@gmail.com', '2020-02-12 11:45:12', 'Your Application Has been Verified', 'Verified', '2020-02-13 14:35:50'),
(2, 2, '294108345', '2018-05-01', 'Male', 'Parth', 'Luckmow', 'Mr. Tushar Singh', 'I-989, 9 floor Gaur Apartment Noida', 'I-989, 9 floor Gaur Apartment Noida', 7878878787, 'tushar@gmail.com', '2020-02-13 06:06:45', 'Rejected due to incomplete information', 'Rejected', '2020-02-13 14:37:15'),
(3, 2, '555131983', '2020-02-07', 'Male', 'Tarun', 'Merrut', 'R.K Sukla', 'hgtyfrytrftfry', 'tyfyhgyhjgukygkg', 5465644545, 'p@gmail.com', '2020-02-14 12:31:37', 'good', 'Verified', '2022-06-30 07:12:04'),
(4, 4, '868843519', '2019-11-09', 'Female', 'Abc', 'Max hospital New Delhi', 'XYZ', 'Mayur Vihar New Delhi', 'Mayur Vihar New Delhi', 9632123698, 'test@gmail.com', '2020-02-20 17:24:53', 'Record verified', 'Verified', '2020-02-20 17:26:10'),
(5, 5, '275954701', '2019-12-29', 'Male', 'mspiofj[', '72409492', 'smdpfok', 'jnwpew[e', '`nepjf', 78579131, 'gigsrick@gmail.com', '2022-06-29 17:38:34', 'ouj[uj[o', 'Verified', '2022-06-30 07:13:16'),
(6, 6, '837767567', '2019-06-19', 'Male', 'Gigs Rick', '01/01/1998', 'Sibomana Jean', 'Kigali-Rwanda', 'Knc 36289', 785999950, 'theonesteruhakana@gmail.com', '2022-06-30 07:16:22', 'is', 'Verified', '2022-06-30 07:17:44'),
(7, 7, '129686274', '2022-07-26', 'Male', 'wertyuio', 'kigali', 'oi;kl,', 'diguohpijok;l', 'xcuiilk', 8809, 'gigsrick@gmail.com', '2022-07-04 07:19:16', 'nojn', 'Verified', '2022-07-05 07:16:30'),
(8, 7, '706391652', '2022-07-28', 'Male', 'xrycvui', '72409492', 'hqw0oji', 'jap', 'njioj', 78669, 'gigsrick@gmail.com', '2022-07-04 07:20:10', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Address`, `Password`, `RegDate`) VALUES
(1, 'Himanshu', 'MIshra', 7987897897, 'J&K Block Laxmi Nagar New Delhi', '202cb962ac59075b964b07152d234b70', '2020-02-11 11:26:29'),
(2, 'Meera', 'Jain', 8797977797, 'U-890 VVIP Ghazibad', '202cb962ac59075b964b07152d234b70', '2020-02-11 11:27:35'),
(3, 'Kunal', 'Kumar', 9754774987, 'K-123, Nangloi New Delhi', '202cb962ac59075b964b07152d234b70', '2020-02-19 16:49:03'),
(4, 'Anuj', 'Kumar', 9632123698, 'New Delhi India 110001', '5c428d8875d2948607f3e3fe134d71b4', '2020-02-20 17:23:05'),
(5, 'emely', 'ruzindana', 789601613, 'RWANDA', '500630f15215abe4edc31942ab23bf8f', '2022-06-29 17:34:05'),
(6, 'gigs', 'gigs', 785999950, 'kigali', 'b90e08786295e9cd20689881dcedea2e', '2022-06-30 06:22:19'),
(7, 'qwerty', 'qwerty', 723535666, 'kigali', 'd8578edf8458ce06fbc5bb76a58c5ca4', '2022-07-04 07:04:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblapplication`
--
ALTER TABLE `tblapplication`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblapplication`
--
ALTER TABLE `tblapplication`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
