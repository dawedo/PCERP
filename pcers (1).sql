-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2020 at 07:31 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pcers`
--

-- --------------------------------------------------------

--
-- Table structure for table `backenduser`
--

CREATE TABLE IF NOT EXISTS `backenduser` (
`uid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '1=active.0=blocked'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Login for backend' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `backenduser`
--

INSERT INTO `backenduser` (`uid`, `username`, `password`, `status`) VALUES
(1, 'admin', 'admin123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crime`
--

CREATE TABLE IF NOT EXISTS `crime` (
`cid` int(11) NOT NULL,
  `crime_type` varchar(250) DEFAULT NULL,
  `crime_case` text,
  `evidence` varchar(250) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=reported 0=not',
  `reported_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `crime`
--

INSERT INTO `crime` (`cid`, `crime_type`, `crime_case`, `evidence`, `status`, `reported_on`, `update_on`) VALUES
(1, 'Middle', 'murder', 'asset/upload/Crimeimage/ERM_6476.JPG', 1, '2020-05-12 17:47:29', '2020-05-12 17:47:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backenduser`
--
ALTER TABLE `backenduser`
 ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `crime`
--
ALTER TABLE `crime`
 ADD PRIMARY KEY (`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backenduser`
--
ALTER TABLE `backenduser`
MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `crime`
--
ALTER TABLE `crime`
MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
