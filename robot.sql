-- phpMyAdmin SQL Dump
-- version 4.2.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 03, 2015 at 10:32 PM
-- Server version: 5.6.20
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `robot`
--

-- --------------------------------------------------------

--
-- Table structure for table `Session`
--

CREATE TABLE IF NOT EXISTS `Session` (
`ID` int(11) NOT NULL,
  `SessionStart` datetime NOT NULL,
  `SessionFinish` datetime NOT NULL,
  `IpAddress` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SessionDetail`
--

CREATE TABLE IF NOT EXISTS `SessionDetail` (
`ID` int(11) NOT NULL,
  `xPosition` int(11) NOT NULL,
  `yPosition` int(11) NOT NULL,
  `Face` varchar(15) NOT NULL,
  `CreatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SessionDetail`
--

INSERT INTO `SessionDetail` (`ID`, `xPosition`, `yPosition`, `Face`, `CreatedAt`) VALUES
(1, 2, 3, 'North', '2015-02-04 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Session`
--
ALTER TABLE `Session`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `SessionDetail`
--
ALTER TABLE `SessionDetail`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Session`
--
ALTER TABLE `Session`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SessionDetail`
--
ALTER TABLE `SessionDetail`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
