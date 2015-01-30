-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 30, 2015 at 10:25 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `TAXISINFONEW`
--

-- --------------------------------------------------------

--
-- Table structure for table `OBLIGATIONS`
--

CREATE TABLE IF NOT EXISTS `OBLIGATIONS` (
`ID` int(11) NOT NULL,
  `AMOUNT` varchar(300) DEFAULT NULL,
  `OBL_INFO` varchar(300) DEFAULT NULL,
  `OBL_DATE` datetime DEFAULT NULL,
  `USER_ID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `OBLIGATIONS`
--

INSERT INTO `OBLIGATIONS` (`ID`, `AMOUNT`, `OBL_INFO`, `OBL_DATE`, `USER_ID`) VALUES
(1, '1234', 'test', '2015-01-14 23:06:34', 2),
(2, '1234', 'fpa', '2015-01-29 20:43:53', 2),
(3, '333,55', 'FPA', '2015-01-30 18:13:36', 3),
(4, '12345', 'tset ', '2015-01-30 19:33:04', 3),
(6, '3450,90', 'Misthodosia', '2015-01-30 21:50:31', 3),
(7, '450', 'OAEE', '2015-01-30 21:50:47', 3),
(8, '12345,99', 'Forologia', '2015-01-30 22:20:36', 3);

-- --------------------------------------------------------

--
-- Table structure for table `USER`
--

CREATE TABLE IF NOT EXISTS `USER` (
`ID` int(11) NOT NULL,
  `USERNAME` varchar(300) DEFAULT NULL,
  `PASSWORD` varchar(300) DEFAULT NULL,
  `COMPANYNAME` varchar(300) DEFAULT NULL,
  `ADDRESS` varchar(300) DEFAULT NULL,
  `AFM` varchar(300) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `USER`
--

INSERT INTO `USER` (`ID`, `USERNAME`, `PASSWORD`, `COMPANYNAME`, `ADDRESS`, `AFM`) VALUES
(1, 'admin', 'admin', 'logistis', 'volos', '0000000'),
(2, 'dimitris', '34', 'test', NULL, 'thessaloniki'),
(3, 'geotrian', '1234', 'dokimastiki', NULL, 'volos'),
(4, 'test45', '1234', 'kapoia', NULL, 'kapou'),
(5, 'final', '1234', 'finalcomp', 'volos', '1234'),
(6, 'video', '1234', 'video company', 'volos', '123445');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `OBLIGATIONS`
--
ALTER TABLE `OBLIGATIONS`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `USER`
--
ALTER TABLE `USER`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `OBLIGATIONS`
--
ALTER TABLE `OBLIGATIONS`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `USER`
--
ALTER TABLE `USER`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
