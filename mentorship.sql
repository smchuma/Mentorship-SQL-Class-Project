-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 06:48 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mentorship`
--

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `program_Code` varchar(20) NOT NULL,
  `personal_View` varchar(20) NOT NULL,
  `group_Session` varchar(20) NOT NULL,
  `availability` varchar(20) NOT NULL,
  `std_Id` varchar(20) NOT NULL,
  `skill_Code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`program_Code`, `personal_View`, `group_Session`, `availability`, `std_Id`, `skill_Code`) VALUES
('656521', 'good', 'Yes', 'weekly', '656521', 'HM'),
('656522', 'good', 'Yes', 'weekly', '656522', 'PP'),
('PC1', 'not bad', 'Yes', 'weekly', '656511', 'ACC'),
('PC10', 'good', 'Yes', 'weekly', '656520', 'ACC'),
('PC11', 'good', 'Yes', 'weekly', '656110', 'LB'),
('PC12', 'good', 'No', 'weekly', '656517', 'TS'),
('PC13', 'interesting', 'No', 'Once a  week', '656519', 'TS'),
('PC14', 'not bad', 'yes', 'weekly', '656518', 'JRN'),
('PC2', 'good', 'Yes', 'weekly', '656512', 'ACC'),
('PC3', 'interesting', 'No', 'Once a  week', '656513', 'IR'),
('PC4', 'good', 'Yes', 'weekly', '656514', 'JRN'),
('PC5', 'good', 'Yes', 'weekly', '656515', 'ACC'),
('PC6', 'Great', 'No', 'weekly', '656516', 'HM'),
('PC8', 'good', 'Yes', 'weekly', '656517', 'LB'),
('PC9', 'not bad', 'Yes', 'weekly', '656518', 'JRN');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `skill_Code` varchar(20) NOT NULL,
  `skill_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skill_Code`, `skill_Name`) VALUES
('ACC', 'Accounting'),
('CMS', 'Communication Skills'),
('CRJ', 'Criminal Justice'),
('HM', 'Hotel Management'),
('IR', 'IR'),
('JRN', 'Journalism'),
('LB', 'Life Balance'),
('LS', 'Leadership Skills'),
('MOT', 'Motivation'),
('PP', 'Peer Pressure'),
('PSY', 'Psychology'),
('TM', 'Team Skills'),
('TS', 'Team Skills');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `std_Id` varchar(20) NOT NULL,
  `std_Name` varchar(20) NOT NULL,
  `std_Gender` varchar(20) NOT NULL,
  `std_Email` varchar(20) NOT NULL,
  `std_Tel` varchar(20) NOT NULL,
  `std_Specilization` varchar(20) NOT NULL,
  `std_GPA` varchar(20) NOT NULL,
  `std_Role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`std_Id`, `std_Name`, `std_Gender`, `std_Email`, `std_Tel`, `std_Specilization`, `std_GPA`, `std_Role`) VALUES
('656110', 'Paul Kagame', 'M', 'paul@usiu.ac.ke', '078888888', 'IST', '3.2', 'Mentee'),
('656511', 'Abraham L.', 'M', 'abr@gmail.com', '0111123451', 'Marheting', '3.2', 'Mentee'),
('656512', 'Rachel Johnson', 'F', 'rachel@gmail.com', '0755667791', 'APT', '3.0', 'Mentor'),
('656513', 'Bracks Murunga', 'M', 'bracks@gmail.com', '0711111111', 'APT', '4.0', 'Mentor'),
('656514', 'Irene Uwoya', 'F', 'irene@gmail.com', '076567676', 'IST', '3.2', 'Mentee'),
('656515', 'John Kazami', 'M', 'John@ghmail.com', '0712122729', 'IST', '3.4', 'Mentee'),
('656516', 'Juma Kaseja', 'M', 'jumakaseja@gmail.com', '0712345671', 'IBA', '3.7', 'Mentor'),
('656517', 'Maria Samora', 'F', 'maria@gmail.com', '0745434543', 'IST', '3.7', 'Mentor'),
('656518', 'Winifrida Laurent', 'F', 'wini@gmail.com', '0654565456', 'Marheting', '3.2', 'Mentee'),
('656519', 'Monica Samora', 'F', 'monica@gmail.com', '0654565456', 'IBA', '2.9', 'Mentee'),
('656520', 'Irene Kaseja', 'F', 'irenekaeja@gmail.com', '0789657865', 'IST', '3.7', 'Mentor'),
('656521', 'Emmanuel Juma', 'M', 'emm@gmail.com', '0876565456', 'APT', '3.9', 'Mentee'),
('656522', 'John Johns', 'M', 'jj@gmail.com', '0785435675', 'APT', '3.2', 'Mentee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`program_Code`),
  ADD KEY `std_Id` (`std_Id`),
  ADD KEY `skill_Code` (`skill_Code`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skill_Code`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`std_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `program_ibfk_1` FOREIGN KEY (`std_Id`) REFERENCES `student` (`std_Id`),
  ADD CONSTRAINT `program_ibfk_2` FOREIGN KEY (`skill_Code`) REFERENCES `skills` (`skill_Code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
