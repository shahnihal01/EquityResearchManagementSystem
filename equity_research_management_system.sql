-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 08, 2020 at 07:37 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `equity research management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `CompanyID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `StockPrices` float DEFAULT NULL,
  `AvailableShares` double DEFAULT NULL,
  `PerformanceRatio` float DEFAULT NULL,
  PRIMARY KEY (`CompanyID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`CompanyID`, `Name`, `Description`, `StockPrices`, `AvailableShares`, `PerformanceRatio`) VALUES
(101, 'Reliance Industries Limited', 'Reliance Industries Limited is an Indian multinational conglomerate company headquartered in Mumbai, Maharashtra, India. Reliance owns businesses across India engaged in energy, petrochemicals, textiles, natural resources, retail, and telecommunications. It was founded by Dhirubhai Ambani in 1973.', 2108, 6761844754, 37.29),
(102, 'Tata Steel Limited', 'Tata Steel Limited, formerly Tata Iron and Steel Company Limited, is an Indian multinational steel-making company based in Jamshedpur, Jharkhand, and is headquartered in Kolkata, West Bengal, India. It is a subsidiary of the Tata Group. It was founded by JRD Tata in 1907.', 408, 459786872, 53.13),
(103, 'Adani Power Limited', 'Adani Power Limited is the power business subsidiary of Indian conglomerate Adani Group with head office at Ahmedabad, Gujarat. It is a private thermal power producer, with capacity of 12,450 MW. It was founded in 1996 by Gautam Adani. ', 35, 5287789, 31.58),
(104, 'Kotak Mahindra Bank Limited', 'Kotak Mahindra Bank Limited is an Indian private sector bank headquartered in Mumbai, Maharashtra, India. It offers banking products and financial services for corporate and retail customers in the areas of personal finance, investment banking, life insurance, and wealth management. It was founded by Uday Kotak in 2003.', 1389, 671247899, 35.1),
(105, 'Oil & Natural Gas Corporation', 'Oil and Natural Gas Corporation is an Indian public sector multinational crude oil and gas company. Its registered office is in New Delhi. It is owned by the Government of India, under the administrative control of the Ministry of Petroleum and Natural Gas.', 68, 1898766, 10.93);

-- --------------------------------------------------------

--
-- Table structure for table `investor`
--

DROP TABLE IF EXISTS `investor`;
CREATE TABLE IF NOT EXISTS `investor` (
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `PhoneNo` double NOT NULL,
  `Password` varchar(16) NOT NULL,
  `DOB` varchar(15) NOT NULL,
  `Stocks` float DEFAULT NULL,
  `Comapany` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `investor`
--

INSERT INTO `investor` (`FirstName`, `LastName`, `Gender`, `Email`, `PhoneNo`, `Password`, `DOB`, `Stocks`, `Comapany`) VALUES
('Johan', 'Pochampally', 'Male', 'johan@gmail.com', 543212345, 'johan123', '12-06-2001', NULL, NULL),
('Rushil', 'Shekar', 'Male', 'rushilsh@gmail.com', 1234567890, 'rushilshekar', '13-07-2001', NULL, NULL),
('Nihal', 'Shah', 'Male', 'nihal@gmail.com', 9137134856, 'nihal01shah', '20-02-2001', NULL, NULL),
('Caleb', 'Kumar', 'Male', 'caleb@gmail.com', 9173462838, 'calebhackerman', '17-07-2001', NULL, NULL),
('Nimren', 'Naiju', 'Male', 'nimren@gmail.com', 9876543210, 'nimren123', '30-11-2001', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
