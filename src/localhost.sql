-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 02, 2018 at 03:23 AM
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
-- Database: `osers`
--
CREATE DATABASE IF NOT EXISTS `osers` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `osers`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'Alice', 'alice112');

-- --------------------------------------------------------

--
-- Table structure for table `cumulative`
--

CREATE TABLE `cumulative` (
  `id` int(11) NOT NULL,
  `St_ID` int(4) NOT NULL,
  `St_Name` varchar(30) NOT NULL,
  `AcdYear` varchar(30) NOT NULL,
  `Year` varchar(30) NOT NULL,
  `CGBAGRADE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cumulative`
--

INSERT INTO `cumulative` (`id`, `St_ID`, `St_Name`, `AcdYear`, `Year`, `CGBAGRADE`) VALUES
(10, 6202, 'Saw Neah Tar Htoo', '2016-2017', 'First_Year', '3.35'),
(37, 5807, 'Sai Horm Kham', '2016-2017', 'Second_Year', '3.24'),
(38, 5807, 'Sai Horm Kham', '2015-2016', 'First_Year', '3.12'),
(39, 6145, 'Win Nandar Kyaw', '2016-2017', 'First_Year', '3.50'),
(40, 6126, 'Thet Lin Latt', '2016-2017', 'First_Year', '3.50'),
(41, 6174, 'Kay Zin Mon', '2016-2017', 'First_Year', '3.50'),
(42, 6183, 'Than Non Shwe', '2016-2017', 'First_Year', '3.50'),
(43, 6195, 'Lin Sandy Soe', '2016-2017', 'First_Year', '3.50'),
(44, 6208, 'Su Myat Hnin', '2016', 'First_Year', '3.50'),
(45, 6155, 'Kay Thi Kyaw', '2016-2017', 'First_Year', '3.50'),
(46, 6187, 'San San Myint', '2016-2017', 'First_Year', '3.50'),
(47, 6114, 'Seint Seint Moe', '2016-2017', 'First_Year', '3.50'),
(48, 6132, 'Shwe Sin Oo', '2016-2017', 'First_Year', '3.50'),
(49, 6124, 'Khaing Hsu Thar', '2016-2017', 'First_Year', '3.50'),
(50, 6131, 'Moe Sett', '2016-2017', 'First_Year', '3.50'),
(51, 6202, 'Saw Neah Tar Htoo', '2016-2017', 'First_Year', '3.50'),
(52, 6119, 'Nang Khin Myat Noe', '2016-2017', 'First_Year', '3.50'),
(53, 6138, 'Thae Su Kyaw', '2016-2017', 'First_Year', '3.50'),
(54, 2222, 'Clara', '2016-2017', 'First_Year', '3.20'),
(55, 4444, 'Jack', '2016-2017', 'First_Year', '3.20'),
(56, 5881, 'Nang Zin  Moe', '2015-2016', 'First_Year', '3.60'),
(57, 5881, 'Nang Zin Moe', '2016-2017', 'Second_Year', '3.40'),
(58, 3333, 'Jack', '2015-2016', 'First_Year', '2.45'),
(59, 3333, 'Jack', '2016-2017', 'Second_Year', '3.20'),
(61, 6202, 'Saw Neah Tar Htoo', '2017-2018', 'Second_Year', '3.63'),
(62, 1111, 'Aris', '2017-2018', 'First_Year', '2.09');

-- --------------------------------------------------------

--
-- Table structure for table `firstcredit`
--

CREATE TABLE `firstcredit` (
  `M-1001` int(5) NOT NULL,
  `E-1001` int(5) NOT NULL,
  `P-1001` int(5) NOT NULL,
  `CST-1011` int(5) NOT NULL,
  `CST-1021` int(5) NOT NULL,
  `CST-1031` int(5) NOT NULL,
  `M-1002` int(5) NOT NULL,
  `E-1002` int(5) NOT NULL,
  `P-1002` int(5) NOT NULL,
  `CST-1012` int(5) NOT NULL,
  `CST-1022` int(5) NOT NULL,
  `CST-1032` int(5) NOT NULL,
  `Major` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `firstcredit`
--

INSERT INTO `firstcredit` (`M-1001`, `E-1001`, `P-1001`, `CST-1011`, `CST-1021`, `CST-1031`, `M-1002`, `E-1002`, `P-1002`, `CST-1012`, `CST-1022`, `CST-1032`, `Major`) VALUES
(2, 2, 4, 4, 4, 4, 2, 2, 4, 3, 4, 4, 'CST');

-- --------------------------------------------------------

--
-- Table structure for table `first_sm`
--

CREATE TABLE `first_sm` (
  `ID` int(5) NOT NULL,
  `St_ID` varchar(5) NOT NULL,
  `St_Name` varchar(30) NOT NULL,
  `M-100` varchar(5) NOT NULL,
  `E-100` varchar(5) NOT NULL,
  `P-100` varchar(5) NOT NULL,
  `CST-101` varchar(5) NOT NULL,
  `CST-102` varchar(5) NOT NULL,
  `CST-103` varchar(5) NOT NULL,
  `M-1002` varchar(5) NOT NULL,
  `E-1002` varchar(5) NOT NULL,
  `P-1002` varchar(5) NOT NULL,
  `CST-1012` varchar(5) NOT NULL,
  `CST-1022` varchar(5) NOT NULL,
  `CST-1032` varchar(5) NOT NULL,
  `GPA` varchar(5) NOT NULL,
  `Major` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `first_year_ii`
--

CREATE TABLE `first_year_ii` (
  `ID` int(11) NOT NULL,
  `St_ID` varchar(30) DEFAULT NULL,
  `St_Name` varchar(50) DEFAULT NULL,
  `M-1002` varchar(5) DEFAULT NULL,
  `E-1002` varchar(5) DEFAULT NULL,
  `P-1002` varchar(5) DEFAULT NULL,
  `CST-1012` varchar(5) DEFAULT NULL,
  `CST-1022` varchar(5) DEFAULT NULL,
  `CST-1032` varchar(5) DEFAULT NULL,
  `GPA` varchar(10) DEFAULT NULL,
  `Major` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `first_year_ii`
--

INSERT INTO `first_year_ii` (`ID`, `St_ID`, `St_Name`, `M-1002`, `E-1002`, `P-1002`, `CST-1012`, `CST-1022`, `CST-1032`, `GPA`, `Major`) VALUES
(1, '6299', 'Htet Htet Zin', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CST'),
(2, '6301', 'May Myat Noe Oo', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CST'),
(3, '6302', 'Nway Su Min', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CST'),
(4, '6303', 'Thiha Zaw', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CST'),
(5, '6304', 'Min Aant Htoo Aung', 'B', 'B', 'B+', 'B', 'A', 'B-', '3.81', 'CST'),
(6, '6305', 'Hein Htet Aung', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CST'),
(7, '6306', 'Su Aung', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CST'),
(8, '6307', 'Hnin Ei San', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CST'),
(9, '6308', 'Khaing Thinzar Thwe', 'B', 'C', 'B+', 'A', 'A', 'B-', '3.81', 'CST'),
(10, '6309', 'Aung Htet Nay', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CST'),
(11, '6310', 'Htet Htet Yan Naing', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CST'),
(12, '6311', 'Naing Lin Zaw', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CST'),
(13, '6312', 'Vijay Kumar', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CST'),
(14, '6313', 'Yin Moe Naing', 'B', 'C', 'B+', 'B', 'A', 'B-', '3.41', 'CST'),
(15, '6314', 'Ye Lwin Oo', 'B', 'B', 'B+', 'A', 'D', 'B-', '3.51', 'CST'),
(20, '1111', 'Aris', 'A-', 'B+', 'B', 'C+', 'C+', 'D', '2.43', 'CST');

-- --------------------------------------------------------

--
-- Table structure for table `first_year_rt`
--

CREATE TABLE `first_year_rt` (
  `ID` int(5) NOT NULL,
  `St_ID` int(5) NOT NULL,
  `St_Name` varchar(30) NOT NULL,
  `M-100` varchar(5) NOT NULL,
  `E-100` varchar(5) NOT NULL,
  `P-100` varchar(5) NOT NULL,
  `CST-101` varchar(5) NOT NULL,
  `CST-102` varchar(5) NOT NULL,
  `CST-103` varchar(5) NOT NULL,
  `GPA` varchar(5) NOT NULL,
  `Major` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `first_year_rt`
--

INSERT INTO `first_year_rt` (`ID`, `St_ID`, `St_Name`, `M-100`, `E-100`, `P-100`, `CST-101`, `CST-102`, `CST-103`, `GPA`, `Major`) VALUES
(1, 6299, 'May Myat Noe Oo', 'A', 'A', 'A', 'B', 'C', 'B', '3.70', 'CST'),
(2, 6301, 'May Myat Noe Oo', 'B', 'A', 'A', 'A+', 'A-', 'C', '3.67', 'CST'),
(3, 6302, 'Nway Su Min', 'B+', 'A-', 'A+', 'C', 'A+', 'A-', '3.55', 'CST'),
(4, 6303, 'Thiha Zaw', 'B+', 'A-', 'A-', 'B', 'C', 'C+', '3.03', 'CST'),
(5, 6304, 'Min Aant Htoo Aung', 'A', 'A', 'A+', 'A+', 'A-', 'B', '3.78', 'CST'),
(6, 6305, 'Hein Htet Aung', 'B', 'A-', 'A+', 'B', 'C', 'A-', '3.40', 'CST'),
(7, 6306, 'Su Aung', 'B+', 'A', 'A', 'A+', 'A+', 'C', '3.65', 'CST'),
(8, 6307, 'Hnin Ei San', 'B+', 'A-', 'D', 'B', 'C', 'C', '3.03', 'CST'),
(9, 6308, 'Khaing Thinzar Thwe', 'B+', 'A', 'A+', 'B', 'A+', 'A-', '3.78', 'CST'),
(10, 6309, 'Aung Htet Nay', 'A', 'A-', 'A', 'A+', 'C', 'B', '3.67', 'CST'),
(11, 6310, 'Htet Htet Yan Naing', 'A', 'A-', 'A-', 'B', 'C', 'B', '3.70', 'CST'),
(12, 6311, 'Naing Lin Zaw', 'B+', 'A-', 'C', 'B', 'C+', 'A-', '3.40', 'CST'),
(13, 6312, 'Vijay Kumar', 'B-', 'A-', 'C', 'A+', 'A+', 'B', '3.65', 'CST'),
(14, 6313, 'Yin Moe Naing', 'B-', 'A', 'A-', 'A+', 'A+', 'C', '3.49', 'CST'),
(15, 6314, 'Ye Lwin Oo', 'B', 'A', 'A+', 'B', 'A+', 'A-', '3.78', 'CST'),
(35, 1111, 'Aris', 'B', 'B-', 'C', 'D', 'C', 'F', '1.57', 'CST');

-- --------------------------------------------------------

--
-- Table structure for table `oldresult`
--

CREATE TABLE `oldresult` (
  `ID` int(5) NOT NULL,
  `filename` varchar(30) NOT NULL,
  `file` varchar(30) NOT NULL,
  `YEAR` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oldresult`
--

INSERT INTO `oldresult` (`ID`, `filename`, `file`, `YEAR`) VALUES
(4, 'Semester_I/firstyear', 'firstyear.docx', 2017),
(5, 'Semester_I/secondyear', 'secondyear.docx', 2017),
(6, 'Semester_I/thirdyear', 'thirdyear.docx', 2017),
(7, 'Semester_II/firstyear', 'firstyearResult', 2017),
(8, 'Semester_II/secondyear', 'secondyearResult.docx', 2017),
(9, 'Semester_II/thirdyear', 'thirdyearResult.docx', 2017),
(10, 'Semester2/firstyr', 'YTU.docx', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `ID` int(11) NOT NULL,
  `Title` text NOT NULL,
  `Body` text NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`ID`, `Title`, `Body`, `Date`) VALUES
(1, '2017-2018 Semester I Exam Result Date Announcement', 'The Exam Results for semester_I will be shown by 2018-6-2 on Saturday @ 6-30 Am!', '2018-08-29'),
(2, '2016-2017 Academic', 'Result will be uploaded 27.9.2018', '2018-08-30'),
(3, '2017-18 Academic Year', 'Result will be uploaded  ', '2018-08-30');

-- --------------------------------------------------------

--
-- Table structure for table `resultblob`
--

CREATE TABLE `resultblob` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resultblob`
--

INSERT INTO `resultblob` (`id`, `fname`, `name`) VALUES
(24, 'MCPC_Content', '2017 MCPC_ContestDay_ProblemSet.pdf'),
(25, 'Section Tuorial', 'Second Year SectionA Tutrial.docx'),
(26, 'Book', 'Book1.xlsx'),
(27, 'MCPC_Content', '2017_MCPC_ContestDay_ProblemSet.pdf'),
(28, 'ucsm First Year', 'osersst.sql.zip');

-- --------------------------------------------------------

--
-- Table structure for table `resulttime`
--

CREATE TABLE `resulttime` (
  `id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resulttime`
--

INSERT INTO `resulttime` (`id`, `Date`, `Time`) VALUES
(1, '2018-07-01', '6-30 AM'),
(2, '2018-08-23', ' AM'),
(3, '2018-09-23', '6-30 AM');

-- --------------------------------------------------------

--
-- Table structure for table `secondcredit`
--

CREATE TABLE `secondcredit` (
  `E-2001` int(5) NOT NULL,
  `CST-2011` int(5) NOT NULL,
  `CST-2021` int(5) NOT NULL,
  `CST-2031` int(5) NOT NULL,
  `CST-2041` int(5) NOT NULL,
  `CST-2051` int(5) NOT NULL,
  `E-2002` int(5) NOT NULL,
  `CST-2012` int(5) NOT NULL,
  `CST-2022` int(5) NOT NULL,
  `CST-2032` int(5) NOT NULL,
  `CST-2042` int(5) NOT NULL,
  `CST-2052` int(5) NOT NULL,
  `Major` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `secondcredit`
--

INSERT INTO `secondcredit` (`E-2001`, `CST-2011`, `CST-2021`, `CST-2031`, `CST-2041`, `CST-2051`, `E-2002`, `CST-2012`, `CST-2022`, `CST-2032`, `CST-2042`, `CST-2052`, `Major`) VALUES
(2, 4, 4, 3, 3, 3, 2, 4, 4, 2, 3, 3, 'CS'),
(2, 4, 4, 3, 3, 3, 2, 4, 4, 2, 3, 4, 'CT');

-- --------------------------------------------------------

--
-- Table structure for table `second_sm`
--

CREATE TABLE `second_sm` (
  `ID` int(5) NOT NULL,
  `St_ID` varchar(5) NOT NULL,
  `St_Name` varchar(30) NOT NULL,
  `E-2001` varchar(5) NOT NULL,
  `CST-2011` varchar(5) NOT NULL,
  `CST-2021` varchar(5) NOT NULL,
  `CST-2031` varchar(5) NOT NULL,
  `CST-2041` varchar(5) NOT NULL,
  `CST-2051` varchar(5) NOT NULL,
  `E-2002` varchar(5) NOT NULL,
  `CST-2012` varchar(5) NOT NULL,
  `CST-2022` varchar(5) NOT NULL,
  `CST-2032` varchar(5) NOT NULL,
  `CST-2042` varchar(5) NOT NULL,
  `CST-2052` varchar(5) NOT NULL,
  `GPA` varchar(5) NOT NULL,
  `Major` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `second_year_ii`
--

CREATE TABLE `second_year_ii` (
  `ID` int(11) NOT NULL,
  `St_ID` varchar(30) DEFAULT NULL,
  `St_Name` varchar(50) DEFAULT NULL,
  `E-2002` varchar(5) DEFAULT NULL,
  `CST-2012` varchar(5) DEFAULT NULL,
  `CST-2022` varchar(5) DEFAULT NULL,
  `CST-2032` varchar(5) DEFAULT NULL,
  `CST-2042` varchar(5) DEFAULT NULL,
  `CST-2052` varchar(5) DEFAULT NULL,
  `GPA` varchar(10) DEFAULT NULL,
  `Major` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `second_year_ii`
--

INSERT INTO `second_year_ii` (`ID`, `St_ID`, `St_Name`, `E-2002`, `CST-2012`, `CST-2022`, `CST-2032`, `CST-2042`, `CST-2052`, `GPA`, `Major`) VALUES
(1, '6145', 'Win Nandar Kyaw', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(2, '6126', 'Thet Lin Latt', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(3, '6174', 'Kay Zin Mon', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(4, '6183', 'Than Non Swe', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(5, '6195', 'Lin Sandi Soe', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(6, '6208', 'Su Myat Hnin', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(7, '6155', 'Kay Thi Kyaw', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(8, '6187', 'San San Myint', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(9, '6114', 'Seint Seint Moe', 'B', 'B', 'C+', 'A', 'A', 'B-', '3.31', 'CS'),
(10, '6132', 'Shwe Sin Oo', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(11, '6124', 'Khaing Su Thar', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(12, '6131', 'Moe Sett', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(13, '6202', 'Saw Nae Tar Htoo', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(14, '6119', 'Nang Khin Myat Noe ', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(15, '6138', 'Thae Su Kysw', 'B', 'B', 'C+', 'A', 'A', 'B-', '3.51', 'CS'),
(16, '8001', 'Noe Noe Htut', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CT'),
(17, '8002', 'Myint Myint Khaing', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CT'),
(18, '8003', 'Khaing Myel Khant', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CT'),
(19, '8004', 'Min Thu Khant', 'B', 'B', 'B+', 'A+', 'A', 'B-', '3.81', 'CT'),
(20, '8005', 'May Myat Noe Oo', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CT');

-- --------------------------------------------------------

--
-- Table structure for table `second_year_rt`
--

CREATE TABLE `second_year_rt` (
  `ID` int(5) NOT NULL,
  `St_Name` varchar(30) NOT NULL,
  `St_ID` varchar(5) NOT NULL,
  `E-200` varchar(5) NOT NULL,
  `CST-201` varchar(5) NOT NULL,
  `CST-202` varchar(5) NOT NULL,
  `CST-203` varchar(5) NOT NULL,
  `CST-204` varchar(5) NOT NULL,
  `CST-205` varchar(5) NOT NULL,
  `GPA` varchar(5) NOT NULL,
  `Major` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `second_year_rt`
--

INSERT INTO `second_year_rt` (`ID`, `St_Name`, `St_ID`, `E-200`, `CST-201`, `CST-202`, `CST-203`, `CST-204`, `CST-205`, `GPA`, `Major`) VALUES
(1, 'Win Nandar Kyaw', '6145', 'B-', 'A-', 'A+', 'A+', 'A', 'A+', '3.81', 'CS'),
(2, 'Thet Lin Latt', '6126', 'B+', 'B+', 'A', 'A+', 'A', 'A', '3.81', 'CS'),
(3, 'Kay Zin Mon', '6174', 'B-', 'A-', 'A+', 'A+', 'A', 'A+', '3.81', 'CS'),
(4, 'Than Non Swe', '6183', 'B-', 'B-', 'A+', 'A+', 'A', 'A+', '3.62', 'CS'),
(5, 'Lin Sandi Soe', '6195', 'B', 'B', 'A+', 'A+', 'A', 'A', '3.71', 'CS'),
(6, 'Su Myat Hnin', '6208', 'B-', 'B+', 'A+', 'A+', 'A', 'A+', '3.75', 'CS'),
(7, 'Kay Thi Kyaw', '6155', 'C+', 'A-', 'A', 'A+', 'A', 'A+', '3.78', 'CS'),
(8, 'San San Myint', '6187', 'B-', 'A-', 'A', 'A+', 'A', 'A+', '3.81', 'CS'),
(9, 'Seint Seint Moe', '6114', 'B-', 'A-', 'A+', 'A+', 'A', 'A', '3.81', 'CS'),
(10, 'Shwe Sin oo', '6132', 'B-', 'A-', 'A+', 'A+', 'A', 'A+', '3.81', 'CS'),
(11, 'Khaing Su Thar', '6124', 'B-', 'B-', 'A+', 'A', 'A', 'A', '3.62', 'CS'),
(12, 'Moe Sett', '6131', 'B', 'B-', 'A', 'A+', 'A-', 'A', '3.59', 'CS'),
(13, 'Saw Nae Tar Htoo', '6202', 'B-', 'B', 'A-', 'A+', 'A', 'A', '3.62', 'CS'),
(14, 'Nang Khin Myat Noe', '6119', 'B+', 'C', 'A+', 'A-', 'A', 'A', '3.49', 'CS'),
(15, 'Thae Su Kyaw', '6138', 'B+', 'D', 'A', 'A-', 'A', 'A', '3.30', 'CS'),
(16, 'Noe Noe Htut', '8001', 'B', 'A-', 'A+', 'A-', 'A', 'A', '3.78', 'CT'),
(17, 'Myint Myint Khaing', '8002', 'B-', 'B+', 'A+', 'A-', 'A', 'A+', '3.62', 'CT'),
(18, 'Khaing Myel Khant', '8003', 'B+', 'B-', 'A+', 'A+', 'A-', 'A', '3.65', 'CT'),
(19, 'Min Thu Khant', '8004', 'B+', 'B+', 'A-', 'A-', 'A-', 'A', '3.40', 'CT'),
(20, 'May Myat Noe Oo', '8005', 'B+', 'B-', 'A+', 'A-', 'A-', 'A', '3.40', 'CT'),
(30, 'Clara', '2222', 'B+', 'B-', 'D', 'B-', 'B', 'F', '2.02', 'CS');

-- --------------------------------------------------------

--
-- Table structure for table `semesterexam`
--

CREATE TABLE `semesterexam` (
  `sid` int(3) NOT NULL,
  `ID` varchar(6) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `YEAR` varchar(20) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `Subjects` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semesterexam`
--

INSERT INTO `semesterexam` (`sid`, `ID`, `NAME`, `YEAR`, `Department`, `Subjects`) VALUES
(5, '5896', 'Yu Mon Khaing', 'Third_Year', 'CS', '3042/'),
(10, '1111', 'Aris', 'First_Year', 'CST', '1011/1031/1032/');

-- --------------------------------------------------------

--
-- Table structure for table `student1`
--

CREATE TABLE `student1` (
  `St_ID` varchar(30) DEFAULT NULL,
  `St_Name` varchar(30) DEFAULT NULL,
  `deptID` varchar(20) DEFAULT NULL,
  `CGBARecorded` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student1`
--

INSERT INTO `student1` (`St_ID`, `St_Name`, `deptID`, `CGBARecorded`) VALUES
('6299', 'Htet Htet Zin', 'CST', 0),
('6301', 'May Myat Noe Oo', 'CST', 0),
('6302', 'Nway Su Min', 'CST', 0),
('6303', 'Thiha Zaw', 'CST', 0),
('6304', 'Min Aant Htoo Aung', 'CST', 0),
('6305', 'Hein Htet Aung', 'CST', 1),
('6306', 'Su Aung', 'CST', 0),
('6307', 'Hnin Ei San', 'CST', 0),
('6308', 'Khaing Thinzar Thwe', 'CST', 0),
('6309', 'Aung Htet Nay', 'CST', 0),
('6310', 'Htet Htet Yan Naing', 'CST', 0),
('6311', 'Naing Lin Zaw', 'CST', 0),
('6312', 'Vijay Kumar', 'CST', 0),
('6313', 'Yin Moe Naing', 'CST', 0),
('6314', 'Ye Lwin Oo', 'CST', 0),
('1111', 'Aris', 'CST', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student2`
--

CREATE TABLE `student2` (
  `St_ID` varchar(30) DEFAULT NULL,
  `St_Name` varchar(30) DEFAULT NULL,
  `deptID` varchar(20) DEFAULT NULL,
  `CGBARecorded` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student2`
--

INSERT INTO `student2` (`St_ID`, `St_Name`, `deptID`, `CGBARecorded`) VALUES
('6145', 'Win Nandar Kyaw', 'CS', 0),
('6126', 'Thet Lin Latt', 'CS', 0),
('6174', 'Kay Zin Mon', 'CS', 0),
('6183', 'Than Non Swe', 'CS', 0),
('6195', 'Lin Sandi Soe', 'CS', 0),
('6208', 'Su Myat Hnin', 'CS', 0),
('6155', 'Kay Thi Kyaw', 'CS', 0),
('6187', 'San San Myint', 'CS', 0),
('6114', 'Seint Seint Moe', 'CS', 0),
('6132', 'Shwe Sin Oo', 'CS', 0),
('6124', 'Khaing Su Thar', 'CS', 0),
('6131', 'Moe Sett', 'CS', 0),
('6202', 'Saw Neah Tar Htoo', 'CS', 0),
('6119', 'Nang Khin Myat Noe ', 'CS', 0),
('6138', 'Thae Su Kysw', 'CS', 0),
('8001', 'Noe Noe Htut', 'CS', 0),
('2222', 'Clara', 'CS', 0),
('4444', 'Jack', 'CT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student3`
--

CREATE TABLE `student3` (
  `St_ID` varchar(30) DEFAULT NULL,
  `St_Name` varchar(30) DEFAULT NULL,
  `deptID` varchar(20) DEFAULT NULL,
  `CGBARecorded` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student3`
--

INSERT INTO `student3` (`St_ID`, `St_Name`, `deptID`, `CGBARecorded`) VALUES
('5881', 'Nang Zin Moe', 'CS', 0),
('5807', 'Sai Horm Kham', 'CS', 1),
('5779', 'Yupar Htay Win', 'CS', 0),
('5784', 'Thaw Zin Myint', 'CS', 0),
('5804', 'May Myat Noe Khin', 'CS', 0),
('5866', 'Yu Yu Naing', 'CS', 0),
('5800', 'Cherry Aung', 'CS', 0),
('5946', 'Htun Tauk', 'CS', 0),
('5844', 'Thin Yu Wai', 'CS', 0),
('5819', 'Ei Hnin Htet Aung', 'CS', 0),
('5653', 'Sai Han Lin Aung', 'CS', 0),
('5855', 'Mi Mi Zaw', 'CS', 0),
('5896', 'Yu Mon Khaing', 'CS', 0),
('5796', 'Kalayar Moe Myint ', 'CS', 0),
('5780', 'Zin Zin Htike', 'CS', 0),
('3333', 'Jack', 'CS', 0);

-- --------------------------------------------------------

--
-- Table structure for table `thirdcredit`
--

CREATE TABLE `thirdcredit` (
  `E-3001` int(5) NOT NULL,
  `CST-3011` int(5) NOT NULL,
  `CST-3021` int(5) NOT NULL,
  `CST-3031` int(5) NOT NULL,
  `CST-3041` int(5) NOT NULL,
  `CST-3051` int(5) NOT NULL,
  `E-3002` int(5) NOT NULL,
  `CST-3012` int(5) NOT NULL,
  `CST-3022` int(5) NOT NULL,
  `CST-3032` int(5) NOT NULL,
  `CST-3042` int(5) NOT NULL,
  `CST-3052` int(5) NOT NULL,
  `Major` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thirdcredit`
--

INSERT INTO `thirdcredit` (`E-3001`, `CST-3011`, `CST-3021`, `CST-3031`, `CST-3041`, `CST-3051`, `E-3002`, `CST-3012`, `CST-3022`, `CST-3032`, `CST-3042`, `CST-3052`, `Major`) VALUES
(2, 3, 4, 4, 3, 3, 2, 3, 4, 3, 3, 2, 'CS'),
(2, 3, 4, 4, 3, 4, 2, 3, 3, 4, 3, 2, 'CT');

-- --------------------------------------------------------

--
-- Table structure for table `third_sm`
--

CREATE TABLE `third_sm` (
  `ID` int(5) NOT NULL,
  `St_ID` varchar(5) NOT NULL,
  `St_Name` varchar(30) NOT NULL,
  `E-3001` varchar(5) NOT NULL,
  `CST-3011` varchar(5) NOT NULL,
  `CST-3021` varchar(5) NOT NULL,
  `CST-3031` varchar(5) NOT NULL,
  `CST-3041` varchar(5) NOT NULL,
  `CST-3051` varchar(5) NOT NULL,
  `E-3002` varchar(5) NOT NULL,
  `CST-3012` varchar(5) NOT NULL,
  `CST-3022` varchar(5) NOT NULL,
  `CST-3032` varchar(5) NOT NULL,
  `CST-3042` varchar(5) NOT NULL,
  `CST-3052` varchar(5) NOT NULL,
  `GPA` varchar(5) NOT NULL,
  `Major` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `third_year_ii`
--

CREATE TABLE `third_year_ii` (
  `ID` int(11) NOT NULL,
  `St_ID` varchar(30) DEFAULT NULL,
  `St_Name` varchar(50) DEFAULT NULL,
  `E-3002` varchar(5) DEFAULT NULL,
  `CST-3012` varchar(5) DEFAULT NULL,
  `CST-3022` varchar(5) DEFAULT NULL,
  `CST-3032` varchar(5) DEFAULT NULL,
  `CST-3042` varchar(5) DEFAULT NULL,
  `CST-3052` varchar(5) DEFAULT NULL,
  `GPA` varchar(10) DEFAULT NULL,
  `Major` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `third_year_ii`
--

INSERT INTO `third_year_ii` (`ID`, `St_ID`, `St_Name`, `E-3002`, `CST-3012`, `CST-3022`, `CST-3032`, `CST-3042`, `CST-3052`, `GPA`, `Major`) VALUES
(1, '5881', 'Nang Zin Moe', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(2, '5807', 'Sai Horm Kham', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(3, '5779', 'Yupar Htay Win', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(4, '5784', 'Thaw Zin Myint', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(5, '5804', 'May Myat Noe Khin', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(6, '5866', 'Yu Yu Naing', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(7, '5800', 'Cherry Aung', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(8, '5946', 'Htun Tauk', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(9, '5844', 'Thin Yu Wai', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(10, '5819', 'Ei Hnin Htet Aung', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(11, '5653', 'Sai Han Lin Aung', 'B', 'B', 'C+', 'A', 'A', 'B-', '3.41', 'CS'),
(12, '5855', 'Mi Mi Zaw', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(13, '5896', 'Yu Mon Khaing', 'B', 'B', 'B+', 'A', 'F', 'B-', '3.21', 'CS'),
(14, '5796', 'Kalayar Moe Myint', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(15, '5780', 'Zin Zin Htike', 'B', 'D', 'B+', 'A', 'A', 'B-', '3.81', 'CS'),
(16, '9001', 'Win Htun', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CT'),
(17, '9002', 'Aryu Naung', 'B', 'C', 'B+', 'A', 'A', 'B-', '3.81', 'CT'),
(18, '9003', 'Bo Bo Kyaw', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CT'),
(19, '9004', 'Sithu Soe', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.81', 'CT'),
(20, '9005', 'Nyo Chaw', 'B', 'B', 'B+', 'A', 'A', 'B-', '3.51', 'CT');

-- --------------------------------------------------------

--
-- Table structure for table `third_year_rt`
--

CREATE TABLE `third_year_rt` (
  `ID` int(5) NOT NULL,
  `St_Name` varchar(30) NOT NULL,
  `St_ID` varchar(5) NOT NULL,
  `E-300` varchar(5) NOT NULL,
  `CST-301` varchar(5) NOT NULL,
  `CST-302` varchar(5) NOT NULL,
  `CST-303` varchar(5) NOT NULL,
  `CST-304` varchar(5) NOT NULL,
  `CST-305` varchar(5) NOT NULL,
  `GPA` varchar(5) NOT NULL,
  `Major` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `third_year_rt`
--

INSERT INTO `third_year_rt` (`ID`, `St_Name`, `St_ID`, `E-300`, `CST-301`, `CST-302`, `CST-303`, `CST-304`, `CST-305`, `GPA`, `Major`) VALUES
(1, 'Nang Zin  Moe', '5881', 'B+', 'B+', 'A', 'A+', 'A+', 'A', '3.83', 'CS'),
(2, 'Sai Horm Kham', '5807', 'B', 'B-', 'A', 'A', 'B+', 'B+', '3.47', 'CS'),
(3, 'Yupar Htay Win', '5779', 'B+', 'B+', 'A', 'A+', 'A-', 'A+', '3.78', 'CS'),
(4, 'Thaw Zin Myint', '5784', 'C+', 'B-', 'A-', 'A', 'A', 'A', '3.57', 'CS'),
(5, 'May Myat Noe Khin', '5804', 'B', 'B-', 'A', 'A', 'A-', 'A', '3.65', 'CS'),
(6, 'Yu Yu Naing', '5866', 'B-', 'B-', 'A', 'A+', 'A', 'A', '3.65', 'CS'),
(7, 'Cherry Aung', '5800', 'B', 'A-', 'A-', 'A', 'A-', 'A', '3.74', 'CS'),
(8, 'Htun Tauk', '5946', 'B', 'B-', 'D', 'A', 'B-', 'C+', '2.57', 'CS'),
(9, 'Thiin Yu Wai', '5844', 'B-', 'B', 'B+', 'A+', 'A-', 'A', '3.53', 'CS'),
(10, 'Ei Hnin Htet Aung', '5819', 'B-', 'B+', 'A-', 'A+', 'B-', 'A', '3.50', 'CS'),
(11, 'Sai Han Lin Aung', '5653', 'B+', 'F', 'F', 'A-', 'C+', 'F', '1.42', 'CS'),
(12, 'Mie Mie Zaw', '5855', 'C+', 'C', 'A-', 'A', 'A', 'A-', '3.40', 'CS'),
(13, 'Yu Mon Khaing', '5896', 'C+', 'C+', 'A', 'A+', 'B-', 'B', '3.18', 'CS'),
(14, 'Kalayar Moe Myint', '5796', 'C+', 'C+', 'B', 'A', 'A', 'C+', '3.05', 'CS'),
(15, 'Zin ZIn Htike', '5780', 'C+', 'D', 'A', 'A', 'B', 'B', '3.03', 'CS'),
(16, 'Win Htun', '9001', 'C+', 'B-', 'A', 'A+', 'A+', 'A+', '3.62', 'CT'),
(17, 'Aryu Naung', '9002', 'B+', 'C+', 'A', 'A+', 'A', 'C+', '3.40', 'CT'),
(18, 'Bo Bo Kyaw', '9003', 'B+', 'A-', 'A', 'A+', 'A+', 'A+', '3.81', 'CT'),
(19, 'Sithu Soe', '9004', 'B', 'A-', 'B', 'A', 'A', 'A+', '3.65', 'CT'),
(20, 'Nyo Chaw', '9005', 'B', 'B-', 'A-', 'A+', 'A+', 'A+', '3.78', 'CT'),
(48, 'Jack', '3333', 'C+', 'B', 'B+', 'A', 'D', 'F', '2.41', 'CS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cumulative`
--
ALTER TABLE `cumulative`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firstcredit`
--
ALTER TABLE `firstcredit`
  ADD PRIMARY KEY (`Major`);

--
-- Indexes for table `first_sm`
--
ALTER TABLE `first_sm`
  ADD PRIMARY KEY (`ID`,`St_ID`);

--
-- Indexes for table `first_year_ii`
--
ALTER TABLE `first_year_ii`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `first_year_rt`
--
ALTER TABLE `first_year_rt`
  ADD PRIMARY KEY (`ID`,`St_ID`);

--
-- Indexes for table `oldresult`
--
ALTER TABLE `oldresult`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `resultblob`
--
ALTER TABLE `resultblob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resulttime`
--
ALTER TABLE `resulttime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secondcredit`
--
ALTER TABLE `secondcredit`
  ADD PRIMARY KEY (`Major`);

--
-- Indexes for table `second_sm`
--
ALTER TABLE `second_sm`
  ADD PRIMARY KEY (`ID`,`St_ID`);

--
-- Indexes for table `second_year_ii`
--
ALTER TABLE `second_year_ii`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `second_year_rt`
--
ALTER TABLE `second_year_rt`
  ADD PRIMARY KEY (`ID`,`St_ID`) USING BTREE;

--
-- Indexes for table `semesterexam`
--
ALTER TABLE `semesterexam`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `thirdcredit`
--
ALTER TABLE `thirdcredit`
  ADD PRIMARY KEY (`Major`);

--
-- Indexes for table `third_sm`
--
ALTER TABLE `third_sm`
  ADD PRIMARY KEY (`ID`,`St_ID`);

--
-- Indexes for table `third_year_ii`
--
ALTER TABLE `third_year_ii`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `third_year_rt`
--
ALTER TABLE `third_year_rt`
  ADD PRIMARY KEY (`ID`,`St_ID`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cumulative`
--
ALTER TABLE `cumulative`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `first_year_ii`
--
ALTER TABLE `first_year_ii`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `first_year_rt`
--
ALTER TABLE `first_year_rt`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `oldresult`
--
ALTER TABLE `oldresult`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `resultblob`
--
ALTER TABLE `resultblob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `second_year_ii`
--
ALTER TABLE `second_year_ii`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `second_year_rt`
--
ALTER TABLE `second_year_rt`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `semesterexam`
--
ALTER TABLE `semesterexam`
  MODIFY `sid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `third_year_ii`
--
ALTER TABLE `third_year_ii`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `third_year_rt`
--
ALTER TABLE `third_year_rt`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"WG\",\"table\":\"GN\"},{\"db\":\"WG\",\"table\":\"ER\"},{\"db\":\"WG\",\"table\":\"TP\"},{\"db\":\"WG\",\"table\":\"GT\"},{\"db\":\"WG\",\"table\":\"GE\"},{\"db\":\"WG\",\"table\":\"NR\"},{\"db\":\"WG\",\"table\":\"TR\"},{\"db\":\"WG\",\"table\":\"helo\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-11-02 02:22:36', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `WG`
--
CREATE DATABASE IF NOT EXISTS `WG` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `WG`;

-- --------------------------------------------------------

--
-- Table structure for table `ER`
--

CREATE TABLE `ER` (
  `RN` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `My` int(5) NOT NULL,
  `E` int(5) NOT NULL,
  `M` int(5) NOT NULL,
  `G` int(5) NOT NULL,
  `H` int(5) NOT NULL,
  `S` int(5) NOT NULL,
  `T` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ER`
--

INSERT INTO `ER` (`RN`, `Name`, `My`, `E`, `M`, `G`, `H`, `S`, `T`) VALUES
('GE01', 'Kyaw Zin Htwe', 41, 76, 67, 53, 54, 54, 336),
('GE03', 'Thaw Zin Htun', 65, 65, 65, 65, 65, 65, 390),
('GE04', 'Hein Htet Linn', 65, 65, 65, 65, 65, 65, 390),
('GE05', 'Swan Htet', 76, 56, 87, 54, 54, 43, 401),
('GE06', 'Kyaw Zin Htun', 40, 40, 45, 45, 45, 45, 265),
('GE07', 'Aung Kyaw Myo Oo', 60, 60, 60, 60, 60, 60, 360),
('GE08', 'Aung Myo Hein', 60, 60, 60, 60, 60, 60, 360);

-- --------------------------------------------------------

--
-- Table structure for table `GE`
--

CREATE TABLE `GE` (
  `RN` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table for Grade Eight Students';

--
-- Dumping data for table `GE`
--

INSERT INTO `GE` (`RN`, `Name`) VALUES
('GE01', 'Kyaw Zin Htwe'),
('GE02', 'Aung Myo Myint'),
('GE03', 'Thaw Zin Htun'),
('GE04', 'Hein Htet Linn'),
('GE05', 'Swan Htet'),
('GE06', 'Kyaw Zin Htun'),
('GE07', 'Aung Kyaw Myo Oo'),
('GE08', 'Aung Myo Hein'),
('GE09', 'Thawda Htun'),
('GE10', 'Yoon Pwint Naung'),
('GE11', 'Chaw Ei Khaing'),
('GE12', 'Hnin Khayay'),
('GE13', 'Pyoe Nadi Htun'),
('GE14', 'Hnin Yadi Htun'),
('GE15', 'Pann Wuttyi Phyu'),
('GE16', 'Nyein Lae Lae Naing'),
('GE17', ' á€±á€‡á€¬á€¹á€‚á€ºá€®');

-- --------------------------------------------------------

--
-- Table structure for table `GN`
--

CREATE TABLE `GN` (
  `RN` varchar(15) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GN`
--

INSERT INTO `GN` (`RN`, `Name`) VALUES
('06', 'á€±á€™á€¬á€„á€ºá€±á€á€œá€„á€º'),
('GN01', 'á€™á€±á€¬á€„á€ºá€œá€½á€„á€ºá€‘'),
('GN02', 'á€™á€±á€¬á€„á€ºá€™á€„á€ºá€¸á€'),
('GN03', ' á€™á€±á€¬á€„á€ºá€‘á€€á€ºá€™??'),
('GN04', 'á€™á€±á€¬á€„á€ºá€™á€„á€ºá€¸á€‡'),
('GN05', 'á€™á€±á€¬á€„á€ºá€•á€¼á€Šá€ºá€·'),
('GN17', 'á€–á€„á€·á€¹á€±á€›á€¸á€±á€žá€¬');

-- --------------------------------------------------------

--
-- Table structure for table `GT`
--

CREATE TABLE `GT` (
  `RN` varchar(5) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `NR`
--

CREATE TABLE `NR` (
  `RN` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `Name` varchar(30) NOT NULL,
  `My` int(5) NOT NULL,
  `E` int(5) NOT NULL,
  `M` int(5) NOT NULL,
  `P` int(5) NOT NULL,
  `C` int(5) NOT NULL,
  `BE` int(5) NOT NULL,
  `T` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `TP`
--

CREATE TABLE `TP` (
  `TID` int(2) NOT NULL,
  `TName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TP`
--

INSERT INTO `TP` (`TID`, `TName`) VALUES
(11, 'hello'),
(12, 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `TR`
--

CREATE TABLE `TR` (
  `RN` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `My` int(5) NOT NULL,
  `E` int(5) NOT NULL,
  `M` int(5) NOT NULL,
  `P` int(5) NOT NULL,
  `C` int(5) NOT NULL,
  `BE` int(5) NOT NULL,
  `T` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ER`
--
ALTER TABLE `ER`
  ADD PRIMARY KEY (`RN`);

--
-- Indexes for table `GE`
--
ALTER TABLE `GE`
  ADD PRIMARY KEY (`RN`);

--
-- Indexes for table `GN`
--
ALTER TABLE `GN`
  ADD PRIMARY KEY (`RN`);

--
-- Indexes for table `GT`
--
ALTER TABLE `GT`
  ADD PRIMARY KEY (`RN`);

--
-- Indexes for table `TP`
--
ALTER TABLE `TP`
  ADD PRIMARY KEY (`TID`);

--
-- Indexes for table `TR`
--
ALTER TABLE `TR`
  ADD PRIMARY KEY (`RN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
