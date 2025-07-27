-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2024 at 02:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `printerstonner`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `DepartmentID` varchar(255) NOT NULL,
  `Department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`DepartmentID`, `Department`) VALUES
('1', 'CSE'),
('10', 'EXAMINATION MORNING'),
('11', 'EXAMINATION EVENING'),
('12', 'TRAINING AND PLACEMENT CELL'),
('13', 'I/C COMPUTATIONAL'),
('14', 'OTHERS'),
('15', 'LIBRARY'),
('16', 'OFFICE (ACCOUNTS)'),
('17', 'OFFICE (ADMIN/STUDENT WELFARE)'),
('18', 'OFFICE (ACADEMIC)'),
('19', 'OFFICE (ESTABLISHMENT)'),
('2', 'ECE'),
('21', 'NON-TEACHING LAB (MECH CAD LAB - ROOM NO. 325)'),
('22', 'NON-TEACHING LAB (WORKSHOP)'),
('23', 'NON-TEACHING LAB (SERVER ROOM)'),
('24', 'WORKSHOP'),
('3', 'MECH'),
('4', 'CIVIL'),
('5', 'APPLIED SCIENCE'),
('6', 'OFFICE (PPL)'),
('7', 'HOSTEL'),
('8', 'NON-TEACHING LAB (MECH CAD LAB - ROOM NO. 301)'),
('9', 'RESULT');

-- --------------------------------------------------------

--
-- Table structure for table `tbldesignations`
--

CREATE TABLE `tbldesignations` (
  `DesignationID` varchar(255) NOT NULL,
  `Designation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbldesignations`
--

INSERT INTO `tbldesignations` (`DesignationID`, `Designation`) VALUES
('1', 'Principal'),
('10', 'Academic  Clerk'),
('11', 'Senior Librarian'),
('12', 'Consultant'),
('13', 'Computer Assistant'),
('14', 'Driver'),
('15', 'Lab Assistant'),
('16', 'Lab Technician'),
('17', 'Workshop Assistant'),
('18', 'Library Assistant'),
('19', 'Store Keeper Clerk'),
('2', 'Professor and HOD'),
('20', 'Admin/Student Welfare Clerk'),
('21', 'Clerk'),
('22', 'HOO'),
('23', 'OFFICE SUPERITENDENT'),
('24', 'PA to Principal'),
('25', 'PA to A.C.(F&A)'),
('3', 'Professor'),
('4', 'Assistant Professor'),
('5', 'A.C.(F&A)'),
('6', 'S.O.'),
('7', 'Senior Assistant'),
('8', 'Senior Scale Stenographer'),
('9', 'Steno-Typist');

-- --------------------------------------------------------

--
-- Table structure for table `tblprinters`
--

CREATE TABLE `tblprinters` (
  `PrinterID` varchar(25) NOT NULL,
  `PrinterName` varchar(255) NOT NULL,
  `InCustodyOf` varchar(255) NOT NULL,
  `EmailOfCustodian` varchar(255) DEFAULT NULL,
  `IsFaulty` tinyint(4) DEFAULT 0,
  `IsActive` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblprinters`
--

INSERT INTO `tblprinters` (`PrinterID`, `PrinterName`, `InCustodyOf`, `EmailOfCustodian`, `IsFaulty`, `IsActive`) VALUES
('1', 'Canon MF3010', 'Dr. Sunil K. Singh', 'sksingh@ccet.ac.in', 0, 1),
('10', 'Canon 6230DN', 'Dr. Sarabjeet Singh', 'ssingh@ccet.ac.in', 0, 1),
('11', 'HP LaserJet 1007', 'Dr. Sarabjeet Singh', 'ssingh@ccet.ac.in', 0, 1),
('12', 'Canon 6230DN', 'Er. Sudhakar Kumar', 'sudhakar@ccet.ac.in', 0, 1),
('13', 'Brother DCP 7500', 'Er. Sudhakar Kumar', 'sudhakar@ccet.ac.in', 0, 1),
('14', 'Canon 6230DN', 'Er. Animesh Singh', 'animeshsingh@ccet.ac.in', 0, 1),
('15', 'HP LaserJet 1015', 'Er. Animesh Singh', 'animeshsingh@ccet.ac.in', 0, 1),
('16', 'Brother DCP 7500', 'Er. Animesh Singh', 'animeshsingh@ccet.ac.in', 0, 1),
('17', 'HP LaserJet 128-FN', 'Dr. Davinder Singh Saini', 'dssaini@ccet.ac.in', 0, 1),
('18', 'HP LaserJet 1007', 'Dr. Krishna Gopal Sharma', 'kgsharma@ccet.ac.in', 0, 1),
('19', 'HP LaserJet 1108', 'Dr. Bhasker Gupta', 'bgupta@ccet.ac.in', 0, 1),
('2', 'Canon 6230DN', 'Dr. Sunil K. Singh', 'sksingh@ccet.ac.in', 0, 1),
('20', 'Brother DCP 7500', 'Dr. Bhasker Gupta', 'bgupta@ccet.ac.in', 0, 1),
('21', 'HP LaserJet 1108', 'Dr. Anil Kumar Rose', 'anilrose@ccet.ac.in', 0, 1),
('22', 'Brother DCP 7500', 'Dr. Anil Kumar Rose', 'anilrose@ccet.ac.in', 0, 1),
('23', 'Brother DCP 7500', 'Dr. Parvinder Kaur', 'pkaur@ccet.ac.in', 0, 1),
('24', 'Brother DCP 7500', 'Dr. Shilpa Jindal', 'shilpajindal@ccet.ac.in', 0, 1),
('25', 'HP LaserJet 1007', 'Dr. Dinesh Sharma', 'dsharma@ccet.ac.in', 0, 1),
('26', 'Brother DCP 7500', 'Dr. Dinesh Sharma', 'dsharma@ccet.ac.in', 0, 1),
('27', 'HP LaserJet 1007', 'Er. Hardeep Saini', 'hsaini@ccet.ac.in', 0, 1),
('28', 'Brother DCP 7500', 'Dr. Anil Kumar Vaghmare', 'anilvaghmare@ccet.ac.in', 0, 1),
('29', 'Canon MF3010', 'Dr. Jatinder Madan', 'jatindermadan@ccet.ac.in', 0, 1),
('3', 'Brother DCP 7500', 'Dr. R.B. Patel', 'rbpatel@ccet.ac.in', 0, 1),
('30', 'Canon 6230DN', 'Dr. Vettivel S C', 'scvettivel@ccet.ac.in', 0, 1),
('31', 'Brother DCP 7500', 'Dr. Vettivel S C', 'scvettivel@ccet.ac.in', 0, 1),
('32', 'HP LaserJet 1007', 'Dr. Radhey Sham', 'radheysham@ccet.ac.in', 0, 1),
('33', 'Brother DCP 7500', 'Dr. Radhey Sham', 'radheysham@ccet.ac.in', 0, 1),
('34', 'Canon 6230DN', 'Dr. Ashwani Kumar', 'ashwanikumar@ccet.ac.in', 0, 1),
('35', 'Brother DCP 7500', 'Dr. Ashwani Kumar', 'ashwanikumar@ccet.ac.in', 0, 1),
('36', 'HP LaserJet 1007', 'Er. Vinod Chauhan', 'vinodchauhan@ccet.ac.in', 0, 1),
('37', 'Brother DCP 7500', 'Er. Vinod Chauhan', 'vinodchauhan@ccet.ac.in', 0, 1),
('38', 'Brother DCP 7500', 'Er. Rajiv Kumar', 'rajivkumar@ccet.ac.in', 0, 1),
('39', 'HP LaserJet 1007', 'Er. Nipun Sharma', 'nipun@ccet.ac.in', 0, 1),
('4', 'Canon MF3010', 'Dr. Varun Gupta', 'varungupta@ccet.ac.in', 0, 1),
('40', 'HP LaserJet 1007', 'Dr. Mukesh Kumar', 'mukeshkumar@ccet.ac.in', 0, 1),
('41', 'Brother DCP 7500', 'Dr. Mukesh Kumar', 'mukeshkumar@ccet.ac.in', 0, 1),
('42', 'Canon MF3010', 'Dr. Rajesh Kumar', 'rajeshaastha@ccet.ac.in', 0, 1),
('43', 'HP Laser jet 1022', 'Dr. Aradhana Mehta', 'amehta@ccet.ac.in', 0, 1),
('44', 'Brother DCP 7500', 'Dr. Aradhana Mehta', 'amehta@ccet.ac.in', 0, 1),
('45', 'HP Laser jet 1022', 'Er. Mohammad Sakib Perwez Khan', 'sakib786@ccet.ac.in', 0, 1),
('46', 'HP LaserJet 1007', 'Er. Mohammad Sakib Perwez Khan', 'sakib786@ccet.ac.in', 0, 1),
('47', 'HP LaserJet 1007', 'Er. Arfat Ahmed', 'arfat@ccet.ac.in', 0, 1),
('48', 'HP Laser jet 1022', 'Dr. Parul Aggarwal', 'parul@ccet.ac.in', 0, 1),
('49', 'Laserjet Pro MFP 226dn', 'Monika Thakral', 'thakral@ccet.ac.ha', 0, 1),
('5', 'Canon 6230DN', 'Dr. Dheerendra Singh', 'dsingh@ccet.ac.in', 0, 1),
('50', 'Brother DCP 7500', 'Monika Thakral', 'thakral@ccet.ac.ha', 0, 1),
('51', 'Canon MFP 4450', 'Monika Thakral', 'thakral@ccet.ac.ha', 0, 1),
('52', 'HP LaserJet 1007', 'Monika Thakral', 'thakral@ccet.ac.ha', 0, 1),
('53', 'HP LaserJet 1108', 'Monika Thakral', 'thakral@ccet.ac.ha', 0, 1),
('54', 'HP LaserJet 1108', 'Mr. Gurjinder Singh', 'gurjindersingh@ccet.ac.in', 0, 1),
('55', 'Brother DCP 7500', 'Mr. Gurjinder Singh', 'gurjindersingh@ccet.ac.in', 0, 1),
('56', 'HP LaserJet 1007', 'Mr. Mange Ram', 'mangeram@ccet.ac.am', 0, 1),
('57', 'HP LaserJet 1007', 'Mr. Puneet', 'puneet@ccet.ac.un', 0, 1),
('58', 'Brother DCP 7500', 'Mr. Puneet', 'puneet@ccet.ac.un', 0, 1),
('59', 'HP LaserJet 1108', 'Mr. Amarjeet Yadav', 'amarjeetyadav@ccet.ac.ad', 0, 1),
('6', 'Brother DCP 7500', 'Dr. Dheerendra Singh', 'dsingh@ccet.ac.in', 0, 1),
('60', 'Brother DCP 7500', 'Mr. Amarjeet Yadav', 'amarjeetyadav@ccet.ac.ad', 0, 1),
('61', 'Samsung Xpress m2021w', 'Mr. Manish Kumar', 'manishkumar@ccet.ac.um', 0, 1),
('62', 'Brother DCP 7500', 'Mr. Manish Kumar', 'manishkumar@ccet.ac.um', 0, 1),
('63', 'Brother DCP 7500', 'Dr. Amit Chhabra', 'amitchhabra@ccet.ac.in', 0, 0),
('64', 'Brother DCP 7500', 'Mr. Ashish Kumar Kaundal', 'ashishkumarkaundal@ccet.ac.au', 0, 1),
('65', 'HP LaserJet 1007', 'Mrs. Garima', 'garima@ccet.ac.ar', 0, 1),
('66', 'Brother DCP 7500', 'Mrs. Garima', 'garima@ccet.ac.ar', 0, 1),
('67', 'Brother DCP 7500', 'Mr. Davinder Kumar', 'davinderkumar@ccet.ac.um', 0, 1),
('68', 'HP Laser jet 1022', 'Mr. Preet Karan Singh', 'preetkaransingh@ccet.ac.in', 0, 1),
('69', 'Brother DCP 7500', 'Mr. Manoj Kumar', 'manojkumar@ccet.ac.um', 0, 1),
('7', 'HP LaserJet 1007', 'Dr. Sunita Prashar', 'sunita@ccet.ac.in', 0, 1),
('70', 'Canon 6230DN', 'Mr. Surinder Sharma', 'surindersharma@ccet.ac.ha', 0, 1),
('71', 'HP Laser jet 1022', 'Mr. Surinder Sharma', 'surindersharma@ccet.ac.ha', 0, 1),
('72', 'Brother DCP 7500', 'Mr. Harmeet Singh', 'harmeetsingh@ccet.ac.in', 0, 1),
('73', 'HP LaserJet 1007', 'Mrs. Vandana Sharma', 'vandanasharma@ccet.ac.ha', 0, 1),
('74', 'HP 1606 DN', 'Mrs. Vandana Sharma', 'vandanasharma@ccet.ac.ha', 0, 1),
('75', 'Brother DCP 7500', 'Er. Anil Kumar', 'anilkumar@ccet.ac.in', 0, 0),
('76', 'Canon LBP2900B', 'Dr. Aradhana Mehta', 'amehta@ccet.ac.in', 0, 1),
('77', 'HP LaserJet 1007', 'Mrs. Mokesh Kumari', 'mokeshkumari@ccet.ac.um', 0, 1),
('78', 'Brother DCP 7500', 'Dr. Krishna Gopal Sharma', 'kgsharma@ccet.ac.in', 0, 1),
('79', 'Deskjet GT 5810', 'Dr. Dheerendra Singh', 'dsingh@ccet.ac.in', 0, 1),
('8', 'Brother DCP 7500', 'Dr. Sunita Prashar', 'sunita@ccet.ac.in', 0, 1),
('80', 'HP Laser jet 1022', 'Mrs. Shalini Wasom', 'shaliniwasom@ccet.ac.as', 0, 1),
('81', 'HP CP1525N', 'Dr. Sunil K. Singh', 'sksingh@ccet.ac.in', 0, 1),
('82', 'Brother DCP 7500', 'Ms. Neha', 'neha@ccet.ac.in', 0, 0),
('83', 'HP LaserJet MFP M329dw', 'Dr. Dheerendra Singh', 'dsingh@ccet.ac.in', 0, 1),
('84', 'HP LaserJet MFP M329dw', 'Dr. Aradhana Mehta', 'amehta@ccet.ac.in', 0, 1),
('85', 'HP LaserJet MFP M329dw', 'Mr. Puneet', 'puneet@ccet.ac.un', 0, 1),
('86', 'HP LaserJet MFP M329dw', 'Er. Anil Kumar', 'anilkumar@ccet.ac.in', 0, 0),
('9', 'Brother DCP 7500', 'Dr. Ankit Gupta', 'ankit@ccet.ac.in', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblprintertonnerrefiling`
--

CREATE TABLE `tblprintertonnerrefiling` (
  `RecordID` int(3) DEFAULT NULL,
  `StaffName` varchar(30) DEFAULT NULL,
  `EmailID` varchar(29) DEFAULT NULL,
  `DesignationIDForWhomRefillingIsDone` int(2) DEFAULT NULL,
  `PrinterID` int(2) DEFAULT NULL,
  `DepartmentIDForWhomRefillingIsDone` int(2) DEFAULT NULL,
  `ApprovedDate` varchar(10) DEFAULT NULL,
  `Problems` varchar(32) DEFAULT NULL,
  `Quantity` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tblprintertonnerrefiling`
--

INSERT INTO `tblprintertonnerrefiling` (`RecordID`, `StaffName`, `EmailID`, `DesignationIDForWhomRefillingIsDone`, `PrinterID`, `DepartmentIDForWhomRefillingIsDone`, `ApprovedDate`, `Problems`, `Quantity`) VALUES
(1, 'Dr. Sunil K. Singh', 'sksingh@ccet.ac.in', 2, 1, 1, '16-07-2019', 'Refilling', 1),
(2, 'Dr. Sunil K. Singh', 'sksingh@ccet.ac.in', 2, 2, 1, '18-06-2021', 'Refilling', 1),
(3, 'Dr. Sunil K. Singh', 'sksingh@ccet.ac.in', 2, 2, 1, '25-04-2022', 'Refilling', 1),
(4, 'Dr. R.B. Patel', 'rbpatel@ccet.ac.in', 3, 3, 1, '09-06-2023', 'Refilling', 1),
(5, 'Dr. Varun Gupta', 'varungupta@ccet.ac.in', 3, 4, 1, '27-11-2019', 'Repair(Applied Science)', 1),
(6, 'Dr. Varun Gupta', 'varungupta@ccet.ac.in', 3, 4, 1, '17-09-2021', 'Ink Lekage ans Low Quality Print', 1),
(7, 'Dr. Varun Gupta', 'varungupta@ccet.ac.in', 3, 4, 1, '11-05-2022', 'Refilling', 1),
(8, 'Dr. Dheerendra Singh', 'dsingh@ccet.ac.in', 3, 5, 1, '10-07-2019', 'Refilling and Repairing', 1),
(9, 'Dr. Dheerendra Singh', 'dsingh@ccet.ac.in', 3, 5, 1, '24-01-2020', 'Refilling and Repairing', 1),
(10, 'Dr. Dheerendra Singh', 'dsingh@ccet.ac.in', 3, 5, 1, '12-04-2021', 'Refilling', 1),
(11, 'Dr. Dheerendra Singh', 'dsingh@ccet.ac.in', 3, 5, 1, '06-05-2022', 'Refilling', 1),
(12, 'Dr. Dheerendra Singh', 'dsingh@ccet.ac.in', 3, 5, 1, '03-05-2023', 'Refilling', 1),
(13, 'Dr. Dheerendra Singh', 'dsingh@ccet.ac.in', 3, 6, 1, '27-03-2023', 'Refilling', 1),
(14, 'Dr. Sunita Prashar', 'dsingh@ccet.ac.in', 4, 7, 1, '30-01-2020', 'Refilling', 1),
(15, 'Dr. Sunita Prashar', 'sunita@ccet.ac.in', 4, 8, 1, '30-08-2022', 'Refilling', 1),
(16, 'Dr. Ankit Gupta', 'ankit@ccet.ac.in', 4, 9, 1, '11-05-2022', 'Refilling', 1),
(17, 'Dr. Sarabjeet Singh', 'ssingh@ccet.ac.in', 4, 10, 1, '05-12-2019', 'Refilling', 1),
(18, 'Dr. Sarabjeet Singh', 'ssingh@ccet.ac.in', 4, 11, 1, '07-01-2021', 'Repairing', 1),
(19, 'Er. Sudhakar Kumar', 'sudhakar@ccet.ac.in', 4, 12, 1, '10-04-2019', 'Refilling', 1),
(20, 'Er. Sudhakar Kumar', 'sudhakar@ccet.ac.in', 4, 13, 1, '15-12-2022', 'Refilling', 1),
(21, 'Er. Sudhakar Kumar', 'sudhakar@ccet.ac.in', 4, 13, 1, '15-09-2023', 'Refilling', 1),
(22, 'Er. Animesh Singh', 'animeshsingh@ccet.ac.in', 4, 14, 1, '20-03-2019', 'Refilling', 1),
(23, 'Er. Animesh Singh', 'animeshsingh@ccet.ac.in', 4, 15, 1, '04-10-2019', 'Repairing', 1),
(24, 'Er. Animesh Singh', 'animeshsingh@ccet.ac.in', 4, 15, 1, '23-07-2019', 'Refilling', 1),
(25, 'Er. Animesh Singh', 'animeshsingh@ccet.ac.in', 4, 16, 1, '25-09-2023', 'Refilling', 1),
(26, 'Dr. Davinder Singh Saini', 'dssaini@ccet.ac.in', 2, 17, 2, '15-03-2019', 'Refilling', 1),
(27, 'Dr. Davinder Singh Saini', 'dssaini@ccet.ac.in', 2, 17, 2, '08-04-2021', 'Refilling', 1),
(28, 'Dr. Davinder Singh Saini', 'dssaini@ccet.ac.in', 2, 17, 2, '01-04-2022', 'Refilling', 1),
(29, 'Dr. Davinder Singh Saini', 'dssaini@ccet.ac.in', 2, 17, 2, '12-08-2022', 'Repairing', 1),
(31, 'Dr. Krishna Gopal Sharma', 'kgsharma@ccet.ac.in', 3, 18, 2, '08-02-2021', 'Refilling', 1),
(32, 'Dr. Bhasker Gupta', 'bgupta@ccet.ac.in', 3, 19, 2, '20-03-2020', 'Refilling', 2),
(33, 'Dr. Bhasker Gupta', 'bgupta@ccet.ac.in', 3, 19, 2, '27-09-2021', 'Refilling', 1),
(34, 'Dr. Bhasker Gupta', 'bgupta@ccet.ac.in', 3, 19, 2, '06-04-2022', 'Refilling', 1),
(35, 'Dr. Bhasker Gupta', 'bgupta@ccet.ac.in', 3, 20, 2, '01-12-2022', 'Refilling', 1),
(36, 'Dr. Anil Kumar Rose', 'anilrose@ccet.ac.in', 3, 21, 2, '18-03-2020', 'Refilling', 1),
(37, 'Dr. Anil Kumar Rose', 'anilrose@ccet.ac.in', 3, 22, 2, '01-12-2022', 'New Tonner', 1),
(38, 'Dr. Parvinder Kaur', 'pkaur@ccet.ac.in', 4, 23, 2, '30-09-2022', 'Refilling', 1),
(39, 'Dr. Parvinder Kaur', 'pkaur@ccet.ac.in', 4, 23, 2, '25-05-2023', 'Refilling', 1),
(40, 'Dr. Shilpa Jindal', 'shilpajindal@ccet.ac.in', 4, 24, 2, '06-05-2022', 'Refilling', 1),
(41, 'Dr. Shilpa Jindal', 'shilpajindal@ccet.ac.in', 4, 24, 2, '03-04-2023', 'Refilling', 1),
(42, 'Dr. Dinesh Sharma', 'dsharma@ccet.ac.in', 4, 25, 2, '08-02-2021', 'Refilling', 1),
(43, 'Dr. Dinesh Sharma', 'dsharma@ccet.ac.in', 4, 26, 2, '06-05-2022', 'Refilling', 1),
(44, 'Dr. Dinesh Sharma', 'dsharma@ccet.ac.in', 4, 26, 2, '26-12-2022', 'Refilling', 1),
(45, 'Dr. Dinesh Sharma', 'dsharma@ccet.ac.in', 4, 26, 2, '01-09-2023', 'Refilling', 1),
(46, 'Er. Hardeep Saini', 'hsaini@ccet.ac.in', 4, 27, 2, '21-10-2019', 'Repairing of printer', 1),
(47, 'Er. Hardeep Saini', 'hsaini@ccet.ac.in', 4, 27, 2, '19-02-2020', 'Refilling', 1),
(48, 'Er. Hardeep Saini', 'hsaini@ccet.ac.in', 4, 27, 2, '22-03-2021', 'Repairing', 1),
(49, 'Dr. Anil Kumar Vaghmare', 'anilvaghmare@ccet.ac.in', 4, 28, 2, '22-02-2023', 'Refilling', 1),
(50, 'Dr. Jatinder Madan', 'jatindermadan@ccet.ac.in', 2, 29, 3, '29-07-2019', 'Reffiling', 1),
(51, 'Dr. Jatinder Madan', 'jatindermadan@ccet.ac.in', 2, 29, 3, '05-03-2020', 'Reffiling', 1),
(52, 'Dr. Jatinder Madan', 'jatindermadan@ccet.ac.in', 2, 29, 3, '25-02-2021', 'Reffiling', 1),
(53, 'Dr. Jatinder Madan', 'jatindermadan@ccet.ac.in', 2, 29, 3, '18-05-2021', 'New Tonner', 1),
(54, 'Dr. Vettivel S C', 'scvettivel@ccet.ac.in', 4, 30, 3, '04-03-2020', 'Reffiling', 1),
(55, 'Dr. Vettivel S C', 'scvettivel@ccet.ac.in', 4, 30, 3, '25-02-2021', 'Reffiling', 1),
(56, 'Dr. Vettivel S C', 'scvettivel@ccet.ac.in', 4, 31, 3, '18-07-2002', 'Reffiling', 1),
(57, 'Dr. Radhey Sham', 'radheysham@ccet.ac.in', 4, 32, 3, '24-08-2020', 'Reffiling', 1),
(58, 'Dr. Radhey Sham', 'radheysham@ccet.ac.in', 4, 33, 3, '24-02-2023', 'Reffiling', 1),
(59, 'Dr. Ashwani Kumar', 'ashwanikumar@ccet.ac.in', 4, 34, 3, '04-03-2020', 'Reffiling', 1),
(60, 'Dr. Ashwani Kumar', 'ashwanikumar@ccet.ac.in', 4, 35, 3, '29-06-2022', 'Reffiling', 1),
(61, 'Er. Vinod Chauhan', 'vinodchauhan@ccet.ac.in', 4, 36, 3, '13-09-2019', 'Reffiling', 1),
(62, 'Er. Vinod Chauhan', 'vinodchauhan@ccet.ac.in', 4, 36, 3, '24-08-2020', 'Repairing', 1),
(63, 'Er. Vinod Chauhan', 'vinodchauhan@ccet.ac.in', 4, 36, 3, '03-03-2021', 'Refilling and Drive Repair', 1),
(64, 'Er. Vinod Chauhan', 'vinodchauhan@ccet.ac.in', 4, 37, 3, '29-04-2022', 'Reffiling', 1),
(65, 'Er. Rajiv Kumar', 'rajivkumar@ccet.ac.in', 4, 38, 3, '02-02-2023', 'Reffiling', 1),
(66, 'Er. Nipun Sharma', 'nipun@ccet.ac.in', 4, 39, 3, '25-02-2021', 'Reffiling', 1),
(67, 'Dr. Mukesh Kumar', 'mukeshkumar@ccet.ac.in', 4, 40, 3, '04-03-2020', 'Reffiling', 1),
(68, 'Dr. Mukesh Kumar', 'mukeshkumar@ccet.ac.in', 4, 40, 3, '25-02-2021', 'Reffiling', 1),
(69, 'Dr. Mukesh Kumar', 'mukeshkumar@ccet.ac.in', 4, 41, 3, '20-04-2022', 'Reffiling', 1),
(70, 'Dr. Mukesh Kumar', 'mukeshkumar@ccet.ac.in', 4, 41, 3, '08-12-2022', 'Replacement of Drive', 1),
(71, 'Dr. Rajesh Kumar', 'rajeshaastha@ccet.ac.in', 2, 42, 4, '18-12-2019', 'Refilling of Tonner', 1),
(72, 'Dr. Rajesh Kumar', 'rajeshaastha@ccet.ac.in', 2, 42, 4, '22-03-2021', 'Refilling', 2),
(73, 'Dr. Rajesh Kumar', 'rajeshaastha@ccet.ac.in', 2, 42, 4, '12-04-2022', 'Refilling', 1),
(74, 'Dr. Aradhana Mehta', 'amehta@ccet.ac.in', 4, 43, 4, '25-09-2019', 'Refilling', 1),
(75, 'Dr. Aradhana Mehta', 'amehta@ccet.ac.in', 4, 44, 4, '28-07-2021', 'Refilling', 1),
(76, 'Dr. Aradhana Mehta', 'amehta@ccet.ac.in', 4, 44, 4, '13-02-2023', 'Refilling', 1),
(77, 'Er. Mohammad Sakib Perwez Khan', 'sakib786@ccet.ac.in', 4, 45, 4, '24-01-2020', 'Refilling', 1),
(78, 'Er. Mohammad Sakib Perwez Khan', 'sakib786@ccet.ac.in', 4, 45, 4, '19-07-2021', 'Serviced and Refilled', 1),
(79, 'Er. Mohammad Sakib Perwez Khan', 'sakib786@ccet.ac.in', 4, 46, 4, '17-07-2023', 'Repair/Refilling', 1),
(80, 'Er. Arfat Ahmed', 'arfat@ccet.ac.in', 4, 47, 4, '19-03-2020', 'Refilling', 1),
(81, 'Dr. Parul Aggarwal', 'parul@ccet.ac.in', 4, 48, 5, '12-08-2021', 'Refilling', 1),
(82, '', '', 5, 49, 6, '03-03-2021', 'Refilling', 1),
(83, '', '', 5, 49, 6, '03-06-2021', 'New Tonner', 1),
(84, '', '', 5, 50, 6, '31-12-2021', 'Refilling', 1),
(85, '', '', 6, 51, 6, '03-03-2021', 'Refilling', 1),
(86, '', '', 6, 51, 6, '03-08-2021', 'New Tonner', 1),
(87, '', '', 6, 50, 6, '30-12-2021', 'Refilling', 1),
(88, '', '', 24, 52, 6, '02-03-2020', 'Refilling', 1),
(89, '', '', 24, 53, 6, '09-04-2021', 'New Tonner', 1),
(90, '', '', 24, 50, 6, '30-12-2021', 'Refilling', 1),
(91, 'Mr. Gurjinder Singh', 'gurjindersingh@ccet.ac.in', 23, 54, 19, '03-01-2020', 'Refilling', 1),
(92, 'Mr. Gurjinder Singh', 'gurjindersingh@ccet.ac.in', 23, 54, 19, '03-03-2021', 'Refilling', 1),
(93, 'Mr. Gurjinder Singh', 'gurjindersingh@ccet.ac.in', 23, 55, 19, '30-12-2021', 'Refilling', 1),
(94, 'Mr. Gurjinder Singh', 'gurjindersingh@ccet.ac.in', 23, 55, 19, '29-04-2022', 'Refilling', 1),
(95, 'Mr. Mange Ram', 'mangeram@ccet.ac.am', 7, 56, 16, '03-01-2020', 'Refilling and Repairing', 1),
(96, 'Mr. Mange Ram', 'mangeram@ccet.ac.am', 7, 56, 16, '03-03-2021', 'Refilling', 1),
(97, 'Mr. Mange Ram', 'mangeram@ccet.ac.am', 7, 56, 16, '18-08-2021', 'Refilling', 1),
(98, 'Mr. Mange Ram', 'mangeram@ccet.ac.am', 7, 56, 16, '30-12-2021', 'Refilling', 1),
(99, 'Mr. Puneet', 'puneet@ccet.ac.un', 20, 57, 19, '03-01-2020', 'Refilling', 1),
(100, 'Mr. Puneet', 'puneet@ccet.ac.un', 20, 57, 19, '03-03-2021', 'Refilling', 1),
(101, 'Mr. Puneet', 'puneet@ccet.ac.un', 20, 57, 19, '12-04-2021', 'New Tonner', 1),
(102, 'Mr. Puneet', 'puneet@ccet.ac.un', 20, 58, 19, '30-12-2021', 'Refilling', 1),
(103, 'Mr. Puneet', 'puneet@ccet.ac.un', 20, 58, 19, '29-04-2022', 'Refilling', 1),
(104, 'Mr. Amarjeet Yadav', 'amarjeetyadav@ccet.ac.ad', 19, 59, 19, '03-01-2020', 'Refilling', 1),
(105, 'Mr. Amarjeet Yadav', 'amarjeetyadav@ccet.ac.ad', 19, 59, 19, '03-03-2021', 'Refilling', 1),
(106, 'Mr. Amarjeet Yadav', 'amarjeetyadav@ccet.ac.ad', 19, 59, 19, '19-05-2021', 'New Tonner', 1),
(107, 'Mr. Amarjeet Yadav', 'amarjeetyadav@ccet.ac.ad', 19, 59, 19, '29-04-2022', 'Refilling', 1),
(108, 'Mr. Amarjeet Yadav', 'amarjeetyadav@ccet.ac.ad', 19, 60, 19, '30-12-2021', 'Refilling', 1),
(109, 'Mr. Manish Kumar', 'manishkumar@ccet.ac.um', 10, 61, 18, '03-03-2021', 'Refilling', 1),
(110, 'Mr. Manish Kumar', 'manishkumar@ccet.ac.um', 10, 62, 18, '28-12-2021', 'Refilling', 1),
(111, 'Mr. Manish Kumar', 'manishkumar@ccet.ac.um', 10, 62, 18, '04-05-2022', 'Refilling', 1),
(112, 'Mr. Ashish Kumar Kaundal', 'ashishkumarkaundal@ccet.ac.au', 10, 63, 18, '19-05-2021', 'New Tonner', 1),
(113, 'Mr. Ashish Kumar Kaundal', 'ashishkumarkaundal@ccet.ac.au', 10, 63, 18, '03-03-2021', 'Repairing/Refilling', 1),
(114, 'Mr. Ashish Kumar Kaundal', 'ashishkumarkaundal@ccet.ac.au', 10, 64, 18, '04-05-2022', 'Refilling', 1),
(115, 'Mr. Ashish Kumar Kaundal', 'ashishkumarkaundal@ccet.ac.au', 10, 64, 18, '28-12-2022', 'Refilling', 1),
(116, 'Mr. Ashish Kumar Kaundal', 'ashishkumarkaundal@ccet.ac.au', 10, 64, 18, '04-05-2022', 'Refilling', 1),
(117, 'Mrs. Garima', 'garima@ccet.ac.ar', 13, 65, 16, '03-01-2020', 'Refilling', 1),
(118, 'Mrs. Garima', 'garima@ccet.ac.ar', 13, 65, 16, '03-03-2021', 'Refilling', 1),
(119, 'Mrs. Garima', 'garima@ccet.ac.ar', 13, 66, 16, '29-04-2021', 'Refilling', 1),
(120, 'Mrs. Garima', 'garima@ccet.ac.ar', 13, 66, 16, '31-12-2021', 'Refilling', 1),
(121, 'Mr. Davinder Kumar', 'davinderkumar@ccet.ac.um', 21, 67, 17, '03-01-2022', 'Refilling', 1),
(122, 'Mr. Davinder Kumar', 'davinderkumar@ccet.ac.um', 21, 67, 17, '29-04-2022', 'Refilling', 1),
(123, 'Dr. Dheerendra Singh', 'dsingh@ccet.ac.in', 3, 5, 7, '24-01-2020', 'Refilling', 1),
(124, 'Mr. Preet Karan Singh', 'preetkaransingh@ccet.ac.in', 16, 68, 21, '18-02-2022', 'Repairing', 1),
(125, 'Mr. Manoj Kumar', 'manojkumar@ccet.ac.um', 17, 69, 22, '02-02-2023', 'Refilling', 1),
(126, 'Mr. Surinder Sharma', 'surindersharma@ccet.ac.ha', 16, 70, 8, '18-02-2022', 'Refilling', 1),
(127, 'Mr. Surinder Sharma', 'surindersharma@ccet.ac.ha', 16, 70, 8, '13-10-2022', 'Refilling', 1),
(128, 'Mr. Surinder Sharma', 'surindersharma@ccet.ac.ha', 16, 70, 8, '23-02-2023', 'Refilling', 1),
(129, 'Mr. Surinder Sharma', 'surindersharma@ccet.ac.ha', 16, 71, 8, '18-02-2022', 'Repairing', 1),
(130, 'Mr. Harmeet Singh', 'harmeetsingh@ccet.ac.in', 16, 72, 23, '15-06-2023', 'Refilling', 1),
(131, 'Mrs. Vandana Sharma', 'vandanasharma@ccet.ac.ha', 16, 73, 9, '08-07-2021', 'Refilling', 2),
(132, 'Mrs. Vandana Sharma', 'vandanasharma@ccet.ac.ha', 16, 73, 9, '29-04-2022', 'Refilling', 1),
(133, 'Mrs. Vandana Sharma', 'vandanasharma@ccet.ac.ha', 16, 73, 9, '12-07-2022', 'Refilling', 1),
(134, 'Mrs. Vandana Sharma', 'vandanasharma@ccet.ac.ha', 16, 73, 9, '18-08-2021', 'Refilling', 1),
(135, 'Mrs. Vandana Sharma', 'vandanasharma@ccet.ac.ha', 16, 74, 9, '18-08-2021', 'Refilling', 1),
(136, 'Mrs. Vandana Sharma', 'vandanasharma@ccet.ac.ha', 16, 74, 9, '03-07-2021', 'Refilling', 1),
(137, 'Dr. Aradhana Mehta', 'amehta@ccet.ac.in', 4, 43, 10, '21-09-2020', 'Refilling', 1),
(138, 'Dr. Aradhana Mehta', 'amehta@ccet.ac.in', 4, 76, 10, '21-09-2020', 'Refilling', 1),
(139, 'Mrs. Mokesh Kumari', 'mokeshkumari@ccet.ac.um', 15, 77, 10, '02-03-2021', 'Refilling', 1),
(140, 'Dr. Dheerendra Singh', 'dsingh@ccet.ac.in', 3, 5, 10, '16-03-2021', 'Refilling', 1),
(141, 'Dr. Dheerendra Singh', 'dsingh@ccet.ac.in', 3, 5, 10, '06-08-2021', 'Refilling', 1),
(142, 'Dr. Dheerendra Singh', 'dsingh@ccet.ac.in', 3, 5, 10, '06-05-2022', 'Refilling', 1),
(143, 'Dr. Krishna Gopal Sharma', 'kgsharma@ccet.ac.in', 3, 18, 12, '05-02-2021', 'Refilling', 2),
(144, 'Dr. Krishna Gopal Sharma', 'kgsharma@ccet.ac.in', 3, 18, 12, '30-07-2021', 'Refilling and Repairing', 1),
(145, 'Dr. Krishna Gopal Sharma', 'kgsharma@ccet.ac.in', 3, 18, 12, '07-04-2022', 'Refilling', 1),
(146, 'Dr. Krishna Gopal Sharma', 'kgsharma@ccet.ac.in', 3, 78, 12, '28-02-2023', 'Refilling', 1),
(147, 'Dr. Dheerendra Singh', 'dsingh@ccet.ac.in', 3, 79, 13, '03-10-2023', 'Ink Required', 2),
(148, 'Mrs. Shalini Wasom', 'shaliniwasom@ccet.ac.as', 11, 80, 15, '20-09-2019', 'Refilling', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `EmailID` varchar(255) NOT NULL,
  `StaffName` varchar(255) NOT NULL,
  `DesignationID` varchar(255) NOT NULL,
  `DepartmentID` varchar(255) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varbinary(16) DEFAULT NULL,
  `IsAdmin` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`EmailID`, `StaffName`, `DesignationID`, `DepartmentID`, `Gender`, `Username`, `Password`, `IsAdmin`) VALUES
('amarjeetyadav@ccet.ac.ad', 'Mr. Amarjeet Yadav', '19', '19', 'Male', 'Mr. Amarjeet Yadav', 0x4300430045005400, 0),
('amehta@ccet.ac.in', 'Dr. Aradhana Mehta', '4', '4', 'Female', 'Dr. Aradhana Mehta', 0x4300430045005400, 0),
('amitchhabra@ccet.ac.in', 'Dr. Amit Chhabra', '4', '1', 'Male', 'Dr. Amit Chhabra', 0x4300430045005400, 0),
('amitkumar@ccet.ac.um', 'Mr. Amit Kumar', '16', '5', 'Male', 'Mr. Amit Kumar', 0x4300430045005400, 0),
('anilkumar@ccet.ac.in', 'Er. Anil Kumar', '4', '4', 'Male', 'Er. Anil Kumar', 0x4300430045005400, 0),
('anilkumar@ccet.ac.um', 'Mr. Anil Kumar', '24', '6', 'Female', 'Mr. Anil Kumar', 0x4300430045005400, 0),
('anilrose@ccet.ac.in', 'Dr. Anil Kumar Rose', '3', '2', 'Male', 'Dr. Anil Kumar Rose', 0x4300430045005400, 0),
('anilvaghmare@ccet.ac.in', 'Dr. Anil Kumar Vaghmare', '4', '2', 'Male', 'Dr. Anil Kumar Vaghmare', 0x4300430045005400, 0),
('animeshsingh@ccet.ac.in', 'Er. Animesh Singh', '4', '1', 'Male', 'Er. Animesh Singh', 0x4300430045005400, 0),
('ankit@ccet.ac.in', 'Dr. Ankit Gupta', '4', '1', 'Male', 'Dr. Ankit Gupta', 0x4300430045005400, 0),
('arfat@ccet.ac.in', 'Er. Arfat Ahmed', '4', '4', 'Male', 'Er. Arfat Ahmed', 0x4300430045005400, 0),
('ashishkumarkaundal@ccet.ac.au', 'Mr. Ashish Kumar Kaundal', '10', '18', 'Male', 'Mr. Ashish Kumar Kaundal', 0x4300430045005400, 0),
('ashwanikumar@ccet.ac.in', 'Dr. Ashwani Kumar', '4', '3', 'Male', 'Dr. Ashwani Kumar', 0x4300430045005400, 0),
('bgupta@ccet.ac.in', 'Dr. Bhasker Gupta', '3', '2', 'Male', 'Dr. Bhasker Gupta', 0x4300430045005400, 0),
('birindersingh@ccet.ac.in', 'Mr. Birinder Singh', '16', '3', 'Male', 'Mr. Birinder Singh', 0x4300430045005400, 0),
('davinderkumar@ccet.ac.um', 'Mr. Davinder Kumar', '21', '17', 'Male', 'Mr. Davinder Kumar', 0x4300430045005400, 0),
('dsharma@ccet.ac.in', 'Dr. Dinesh Sharma', '4', '2', 'Male', 'Dr. Dinesh Sharma', 0x4300430045005400, 0),
('dsingh@ccet.ac.in', 'Dr. Dheerendra Singh', '3', '1', 'Male', 'Dr. Dheerendra Singh', 0x4300430045005400, 0),
('dssaini@ccet.ac.in', 'Dr. Davinder Singh Saini', '2', '2', 'Male', 'Dr. Davinder Singh Saini', 0x4300430045005400, 0),
('garima@ccet.ac.ar', 'Mrs. Garima', '13', '16', 'Female', 'Mrs. Garima', 0x4300430045005400, 0),
('gurjindersingh@ccet.ac.in', 'Mr. Gurjinder Singh', '23', '19', 'Male', 'Mr. Gurjinder Singh', 0x4300430045005400, 0),
('gurpreetsingh@ccet.ac.in', 'Mr. Gurpreet Singh', '16', '4', 'Male', 'Mr. Gurpreet Singh', 0x4300430045005400, 0),
('gushangoyal@ccet.ac.in', 'Dr. Gulshan Goyal', '4', '1', 'Male', 'Dr. Gulshan Goyal', 0x4300430045005400, 0),
('harmeetsingh@ccet.ac.in', 'Mr. Harmeet Singh', '16', '1', 'Male', 'Mr. Harmeet Singh', 0x4300430045005400, 0),
('hsaini@ccet.ac.in', 'Er. Hardeep Saini', '4', '2', 'Male', 'Er. Hardeep Saini', 0x4300430045005400, 0),
('iakhan@ccet.ac.in', 'Dr. Irfan Ahmad Khan', '4', '2', 'Male', 'Dr. Irfan Ahmad Khan', 0x4300430045005400, 0),
('jaspalsingh@ccet.ac.in', 'Mr. Jaspal Singh', '6', '6', 'Male', 'Mr. Jaspal Singh', 0x4300430045005400, 0),
('jatindermadan@ccet.ac.in', 'Dr. Jatinder Madan', '2', '3', 'Male', 'Dr. Jatinder Madan', 0x4300430045005400, 0),
('karamjitkaur@ccet.ac.au', 'Mr. Karamjit Kaur', '18', '15', 'Female', 'Mr. Karamjit Kaur', 0x4300430045005400, 0),
('karunasharma@ccet.ac.in', 'Er. Karuna Sharma', '4', '4', 'Female', 'Er. Karuna Sharma', 0x4300430045005400, 0),
('kgsharma@ccet.ac.in', 'Dr. Krishna Gopal Sharma', '3', '2', 'Male', 'Dr. Krishna Gopal Sharma', 0x4300430045005400, 0),
('lalitasharma@ccet.ac.ha', 'Mrs Lalita Sharma', '25', '6', 'Female', 'Mrs Lalita Sharma', 0x4300430045005400, 0),
('malkeetsingh@ccet.ac.in', 'Mr. Malkeet Singh', '17', '24', 'Male', 'Mr. Malkeet Singh', 0x4300430045005400, 0),
('mangeram@ccet.ac.am', 'Mr. Mange Ram', '7', '16', 'Male', 'Mr. Mange Ram', 0x4300430045005400, 0),
('manindersingh@ccet.ac.in', 'Mr. Maninder Singh', '16', '4', 'Male', 'Mr. Maninder Singh', 0x4300430045005400, 0),
('manishkumar@ccet.ac.um', 'Mr. Manish Kumar', '10', '18', 'Male', 'Mr. Manish Kumar', 0x4300430045005400, 0),
('manojkumar@ccet.ac.um', 'Mr. Manoj Kumar', '17', '24', 'Male', 'Mr. Manoj Kumar', 0x4300430045005400, 0),
('manveenkaur@ccet.ac.in', 'Dr. Manveen Kaur', '4', '5', 'Female', 'Dr. Manveen Kaur', 0x4300430045005400, 0),
('mokeshkumari@ccet.ac.um', 'Mrs. Mokesh Kumari', '15', '2', 'Female', 'Mrs. Mokesh Kumari', 0x4300430045005400, 0),
('msgujral@ccet.ac.in', 'Dr. Manpreet Singh Gujral', '1', '1', 'Male', 'Dr. Manpreet Singh Gujral', 0x4300430045005400, 0),
('mukeshkumar@ccet.ac.in', 'Dr. Mukesh Kumar', '4', '3', 'Male', 'Dr. Mukesh Kumar', 0x4300430045005400, 0),
('neha@ccet.ac.in', 'Ms. Neha', '4', '5', 'Female', 'Ms. Neha', 0x4300430045005400, 0),
('neharani@ccet.ac.an', 'Ms. Neha Rani', '21', '16', 'Female', 'Ms. Neha Rani', 0x4300430045005400, 0),
('nipun@ccet.ac.in', 'Er. Nipun Sharma', '4', '3', 'Male', 'Er. Nipun Sharma', 0x4300430045005400, 0),
('parul@ccet.ac.in', 'Dr. Parul Aggarwal', '4', '5', 'Female', 'Dr. Parul Aggarwal', 0x4300430045005400, 0),
('pkaur@ccet.ac.in', 'Dr. Parvinder Kaur', '4', '2', 'Female', 'Dr. Parvinder Kaur', 0x4300430045005400, 0),
('poonam@ccet.ac.in', 'Er. Poonam', '4', '4', 'Female', 'Er. Poonam', 0x4300430045005400, 0),
('preetkaransingh@ccet.ac.in', 'Mr. Preet Karan Singh', '16', '3', 'Male', 'Mr. Preet Karan Singh', 0x4300430045005400, 0),
('puneet@ccet.ac.un', 'Mr. Puneet', '20', '19', 'Male', 'Mr. Puneet', 0x4300430045005400, 0),
('radheysham@ccet.ac.in', 'Dr. Radhey Sham', '4', '3', 'Male', 'Dr. Radhey Sham', 0x4300430045005400, 0),
('rajeshaastha@ccet.ac.in', 'Dr. Rajesh Kumar', '2', '4', 'Male', 'Dr. Rajesh Kumar', 0x4300430045005400, 0),
('rajeshkumar@ccet.ac.um', 'Mr. Rajesh Kumar', '16', '3', 'Male', 'Mr. Rajesh Kumar', 0x4300430045005400, 0),
('rajivkumar@ccet.ac.in', 'Er. Rajiv Kumar', '4', '3', 'Male', 'Er. Rajiv Kumar', 0x4300430045005400, 0),
('rbpatel@ccet.ac.in', 'Dr. R.B. Patel', '3', '1', 'Male', 'Dr. R.B. Patel', 0x4300430045005400, 0),
('romica@ccet.ac.om', 'Mrs. Romica', '15', '2', 'Female', 'Mrs. Romica', 0x4300430045005400, 0),
('sakib786@ccet.ac.in', 'Er. Mohammad Sakib Perwez Khan', '4', '4', 'Male', 'Er. Mohammad Sakib Perwez Khan', 0x4300430045005400, 0),
('sanjive@ccet.ac.an', 'Mr. Sanjive', '14', '6', 'Male', 'Mr. Sanjive', 0x4300430045005400, 0),
('saritasharma@ccet.ac.in', 'Dr. Sarita Sharma', '4', '2', 'Female', 'Dr. Sarita Sharma', 0x4300430045005400, 0),
('scvettivel@ccet.ac.in', 'Dr. Vettivel S C', '4', '3', 'Male', 'Dr. Vettivel S C', 0x4300430045005400, 0),
('shaliniwasom@ccet.ac.as', 'Mrs. Shalini Wasom', '11', '15', 'Female', 'Mrs. Shalini Wasom', 0x4300430045005400, 0),
('shilpajindal@ccet.ac.in', 'Dr. Shilpa Jindal', '4', '2', 'Female', 'Dr. Shilpa Jindal', 0x4300430045005400, 0),
('sksingh@ccet.ac.in', 'Dr. Sunil K. Singh', '2', '1', 'Male', 'Dr. Sunil K. Singh', 0x4300430045005400, 0),
('ssingh@ccet.ac.in', 'Dr. Sarabjeet Singh', '4', '1', 'Male', 'Dr. Sarabjeet Singh', 0x4300430045005400, 0),
('sudhakar@ccet.ac.in', 'Er. Sudhakar Kumar', '4', '1', 'Male', 'Er. Sudhakar Kumar', 0x4300430045005400, 0),
('sunildutt@ccet.ac.in', 'Mr. Sunil Dutt Sharma', '22', '6', 'Male', 'Mr. Sunil Dutt Sharma', 0x4300430045005400, 0),
('sunildutt@ccet.ac.in', 'Mr. Sunil Dutt Sharma', '5', '6', 'Male', 'Mr. Sunil Dutt Sharma', 0x4300430045005400, 0),
('sunita@ccet.ac.in', 'Dr. Sunita Prashar', '4', '1', 'Female', 'Dr. Sunita Prashar', 0x4300430045005400, 0),
('surindersharma@ccet.ac.ha', 'Mr. Surinder Sharma', '16', '3', 'Male', 'Mr. Surinder Sharma', 0x4300430045005400, 0),
('thakral@ccet.ac.ha', 'Monika Thakral', '24', '6', 'Female', 'Monika Thakral', 0x4300430045005400, 0),
('vandanasharma@ccet.ac.ha', 'Mrs. Vandana Sharma', '16', '2', 'Male', 'Mrs. Vandana Sharma', 0x4300430045005400, 0),
('varungupta@ccet.ac.in', 'Dr. Varun Gupta', '3', '1', 'Male', 'Dr. Varun Gupta', 0x4300430045005400, 0),
('vinaygandhi@ccet.ac.an', 'Mr. Vinay Gandhi', '21', '16', 'Male', 'Mr. Vinay Gandhi', 0x4300430045005400, 0),
('vinodchauhan@ccet.ac.in', 'Er. Vinod Chauhan', '4', '3', 'Male', 'Er. Vinod Chauhan', 0x4300430045005400, 0),
('yuvraj@ccet.ac.uv', 'Mr. Yuvraj', '15', '2', 'Male', 'Mr. Yuvraj', 0x4300430045005400, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblvaliditymonths`
--

CREATE TABLE `tblvaliditymonths` (
  `DepartmentID` varchar(255) NOT NULL,
  `ValidityMonths` int(11) DEFAULT 6
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblvaliditymonths`
--

INSERT INTO `tblvaliditymonths` (`DepartmentID`, `ValidityMonths`) VALUES
('1', 6),
('10', 0),
('11', 0),
('12', 6),
('13', 6),
('14', 6),
('15', 6),
('16', 6),
('17', 6),
('18', 6),
('19', 6),
('2', 6),
('21', 6),
('22', 6),
('23', 6),
('24', 6),
('3', 6),
('4', 6),
('5', 6),
('6', 6),
('7', 6),
('8', 6),
('9', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `tbldesignations`
--
ALTER TABLE `tbldesignations`
  ADD PRIMARY KEY (`DesignationID`);

--
-- Indexes for table `tblprinters`
--
ALTER TABLE `tblprinters`
  ADD PRIMARY KEY (`PrinterID`),
  ADD KEY `EmailOfCustodian` (`EmailOfCustodian`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`EmailID`,`StaffName`,`DesignationID`),
  ADD KEY `DesignationID` (`DesignationID`),
  ADD KEY `DepartmentID` (`DepartmentID`),
  ADD KEY `EmailID` (`EmailID`);

--
-- Indexes for table `tblvaliditymonths`
--
ALTER TABLE `tblvaliditymonths`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblprinters`
--
ALTER TABLE `tblprinters`
  ADD CONSTRAINT `tblprinters_ibfk_1` FOREIGN KEY (`EmailOfCustodian`) REFERENCES `tblstaff` (`EmailID`);

--
-- Constraints for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD CONSTRAINT `tblstaff_ibfk_1` FOREIGN KEY (`DesignationID`) REFERENCES `tbldesignations` (`DesignationID`),
  ADD CONSTRAINT `tblstaff_ibfk_2` FOREIGN KEY (`DepartmentID`) REFERENCES `tbldepartments` (`DepartmentID`);

--
-- Constraints for table `tblvaliditymonths`
--
ALTER TABLE `tblvaliditymonths`
  ADD CONSTRAINT `tblvaliditymonths_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `tbldepartments` (`DepartmentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
