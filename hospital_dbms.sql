-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 01, 2022 at 02:43 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `Bill_ID` varchar(6) NOT NULL,
  `Doctor_Charges` decimal(6,2) DEFAULT NULL,
  `Treatment_Charges` decimal(6,2) DEFAULT NULL,
  `Medicine_Charges` decimal(6,2) DEFAULT NULL,
  `BDate` date DEFAULT NULL,
  `Patient_ID` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`Bill_ID`),
  KEY `Patient_ID` (`Patient_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Bill_ID`, `Doctor_Charges`, `Treatment_Charges`, `Medicine_Charges`, `BDate`, `Patient_ID`) VALUES
('BL0001', '1500.00', '1400.00', '1500.00', '2021-12-29', 'PT0001'),
('BL0002', '1000.00', '1000.00', '1100.00', '2022-02-19', 'PT0002'),
('BL0003', '2000.00', '1500.00', '1500.00', '2021-10-06', 'PT0003'),
('BL0004', '3500.00', '2500.00', '1500.00', '2021-12-12', 'PT0004'),
('BL0005', '1500.00', '1450.00', '1500.00', '2022-04-01', 'PT0005'),
('BL0006', '2200.00', '2000.00', '1500.00', '2021-11-22', 'PT0006'),
('BL0007', '3500.00', '2100.00', '1500.00', '2022-06-18', 'PT0007'),
('BL0008', '2000.00', '1900.00', '1500.00', '2021-12-10', 'PT0008'),
('BL0009', '1200.00', '2500.00', '1500.00', '2022-07-23', 'PT0009'),
('BL0010', '1500.00', '1500.00', '1500.00', '2022-09-03', 'PT0010'),
('BL0011', '1700.00', '1600.00', '1500.00', '2022-09-22', 'PT0011'),
('BL0012', '1300.00', '1200.00', '1200.00', '2022-11-12', 'PT0012'),
('BL0013', '2300.00', '1900.00', '1500.00', '2022-10-15', 'PT0013'),
('BL0014', '1500.00', '1400.00', '1400.00', '2022-07-14', 'PT0014'),
('BL0015', '1300.00', '1100.00', '1000.00', '2022-06-11', 'PT0015'),
('BL0016', '4000.00', '2000.00', '2500.00', '2022-12-15', 'PT0016'),
('BL0017', '1600.00', '1500.00', '1500.00', '2022-11-23', 'PT0017'),
('BL0018', '2500.00', '2000.00', '1500.00', '2022-08-28', 'PT0018'),
('BL0019', '1500.00', '1400.00', '1500.00', '2022-02-28', 'PT0019'),
('BL0020', '3500.00', '2000.00', '2000.00', '2022-01-02', 'PT0020');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `Department_ID` varchar(4) NOT NULL,
  `Name` char(30) DEFAULT NULL,
  PRIMARY KEY (`Department_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Department_ID`, `Name`) VALUES
('DP01', 'Dental'),
('DP02', 'OPD'),
('DP03', 'IPD'),
('DP04', 'Operation Theatre Complex'),
('DP05', 'X-ray'),
('DP06', 'MRD'),
('DP07', 'Medical Department'),
('DP08', 'Nursing Department'),
('DP09', 'Paramedical Department'),
('DP10', 'Personnel Department');

-- --------------------------------------------------------

--
-- Table structure for table `department_lab`
--

DROP TABLE IF EXISTS `department_lab`;
CREATE TABLE IF NOT EXISTS `department_lab` (
  `Department_ID` varchar(4) NOT NULL,
  `Laboratory_ID` varchar(4) NOT NULL,
  PRIMARY KEY (`Department_ID`,`Laboratory_ID`),
  KEY `Laboratory_ID` (`Laboratory_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department_lab`
--

INSERT INTO `department_lab` (`Department_ID`, `Laboratory_ID`) VALUES
('DP01', 'LB08'),
('DP02', 'LB06'),
('DP03', 'LB09'),
('DP04', 'LB07'),
('DP05', 'LB04'),
('DP06', 'LB05'),
('DP07', 'LB03'),
('DP08', 'LB02'),
('DP09', 'LB01'),
('DP10', 'LB10');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `Doctor_ID` varchar(5) NOT NULL,
  `Staff_ID` varchar(5) DEFAULT NULL,
  `DType` char(20) DEFAULT NULL,
  PRIMARY KEY (`Doctor_ID`),
  KEY `Staff_ID` (`Staff_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Doctor_ID`, `Staff_ID`, `DType`) VALUES
('DC001', 'ST001', 'Cardiologists Doctor'),
('DC002', 'ST002', 'General Practitioner'),
('DC003', 'ST003', 'Dentist'),
('DC004', 'ST004', 'Endocrinology'),
('DC005', 'ST005', 'Neuro Surgen'),
('DC006', 'ST006', 'Psychiatrist'),
('DC007', 'ST007', 'Ophthalmologist'),
('DC008', 'ST008', 'Oncologist'),
('DC009', 'ST009', 'Obstetricians'),
('DC010', 'ST010', 'Dermatologists');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_treat`
--

DROP TABLE IF EXISTS `doctor_treat`;
CREATE TABLE IF NOT EXISTS `doctor_treat` (
  `Doctor_ID` varchar(5) NOT NULL,
  `Patient_ID` varchar(6) NOT NULL,
  `Treatment_Name` varchar(30) DEFAULT NULL,
  `D_Date` date DEFAULT NULL,
  `D_Time` time DEFAULT NULL,
  `Test_Result` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Doctor_ID`,`Patient_ID`),
  KEY `Patient_ID` (`Patient_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_treat`
--

INSERT INTO `doctor_treat` (`Doctor_ID`, `Patient_ID`, `Treatment_Name`, `D_Date`, `D_Time`, `Test_Result`) VALUES
('DC001', 'PT0001', 'Bypass surgery', '2021-12-29', '02:15:02', 'Normal'),
('DC004', 'PT0002', 'Endoscopy test', '2022-02-19', '14:15:23', 'Continue treatments'),
('DC001', 'PT0003', 'Bone marrow transplant', '2021-10-06', '23:00:00', 'Normal'),
('DC007', 'PT0004', 'Cataract removal surgery', '2021-12-12', '03:00:14', 'Normal'),
('DC005', 'PT0005', 'Neuro therapy', '2022-04-01', '02:00:23', 'Continue treatments'),
('DC007', 'PT0006', 'Eye transplant', '2021-11-22', '15:15:23', 'Normal'),
('DC008', 'PT0007', 'Cancer treatments & surgery', '2022-06-18', '11:00:22', 'Continue treatments'),
('DC001', 'PT0008', 'Cardiovascular test', '2021-12-10', '17:04:12', 'Normal'),
('DC002', 'PT0009', 'Delevery', '2022-07-23', '09:15:54', 'Normal'),
('DC010', 'PT0010', 'Allergy Treatments', '2022-09-03', '20:30:41', 'Normal'),
('DC002', 'PT0011', 'Medical instructions', '2022-09-22', '10:00:00', 'Normal'),
('DC002', 'PT0012', 'Medical instructions', '2022-11-12', '10:30:12', 'Normal'),
('DC002', 'PT0013', 'Medical instructions', '2022-10-15', '09:15:23', 'Normal'),
('DC002', 'PT0014', 'Stitching', '2022-07-14', '09:00:23', 'Normal'),
('DC002', 'PT0015', 'Blood test', '2022-06-11', '09:00:00', 'Admitted'),
('DC003', 'PT0016', 'Tooth filling', '2022-12-15', '11:00:10', 'Normal'),
('DC007', 'PT0017', 'Eye checkup', '2022-11-23', '09:30:56', 'Normal'),
('DC002', 'PT0018', 'Medical instructions', '2022-08-28', '09:00:00', 'Normal'),
('DC002', 'PT0019', 'Medical instructions', '2022-02-28', '10:30:33', 'Normal'),
('DC003', 'PT0020', 'Cavity checkup', '2022-01-02', '09:45:54', 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `family`
--

DROP TABLE IF EXISTS `family`;
CREATE TABLE IF NOT EXISTS `family` (
  `Staff_ID` varchar(5) NOT NULL,
  `Name` char(30) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Staff_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family`
--

INSERT INTO `family` (`Staff_ID`, `Name`, `Address`) VALUES
('ST001', 'Rupasingha', 'No.103 C/1,Walgampaye,Danthure'),
('ST002', 'Jayathilake', 'No.24/4 Laneban Rd, Galle'),
('ST003', 'Weragoda', 'No.76/1,Kurolige Waththe,Baddegama'),
('ST004', 'Herath', 'No.44 Somadevi Place, Kirulapane Avenue'),
('ST005', 'Gunathilake', 'NO.39/1F 2nd Cross Street, 11'),
('ST006', 'Silva', 'No.320 Galle Road, 03'),
('ST007', 'Karunarathne', 'No.18 Cotta Road, 08'),
('ST008', 'Siriwardhana', 'No.40A, Cumaratunga Munidasa'),
('ST009', 'Deshapriya', 'No.Signin Advertising,No 49|2|1, Anagarika'),
('ST010', 'Brahmana', 'No.11/8B, 47th Lane');

-- --------------------------------------------------------

--
-- Table structure for table `gives`
--

DROP TABLE IF EXISTS `gives`;
CREATE TABLE IF NOT EXISTS `gives` (
  `Patient_ID` varchar(6) NOT NULL,
  `Medicine_ID` varchar(5) NOT NULL,
  `G_Date` date DEFAULT NULL,
  `G_Time` time DEFAULT NULL,
  PRIMARY KEY (`Patient_ID`,`Medicine_ID`),
  KEY `Medicine_ID` (`Medicine_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gives`
--

INSERT INTO `gives` (`Patient_ID`, `Medicine_ID`, `G_Date`, `G_Time`) VALUES
('PT0001', 'MD001', '2022-01-15', '13:15:10'),
('PT0002', 'MD002', '2022-03-25', '16:30:00'),
('PT0003', 'MD003', '2021-12-10', '10:10:30'),
('PT0004', 'MD004', '2022-01-27', '13:15:13'),
('PT0005', 'MD005', '2022-05-05', '12:45:40'),
('PT0006', 'MD006', '2021-11-25', '17:45:10'),
('PT0007', 'MD007', '2022-06-25', '14:05:25'),
('PT0008', 'MD008', '2022-01-01', '17:15:10'),
('PT0009', 'MD009', '2022-07-29', '11:15:40'),
('PT0010', 'MD010', '2022-10-01', '12:40:00'),
('PT0011', 'MD011', '2022-09-22', '12:20:10'),
('PT0012', 'MD012', '2022-11-12', '14:50:00'),
('PT0013', 'MD013', '2022-10-15', '10:15:40'),
('PT0014', 'MD014', '2022-07-14', '13:25:13'),
('PT0015', 'MD015', '2022-06-11', '12:10:40'),
('PT0016', 'MD016', '2022-12-15', '13:15:10'),
('PT0017', 'MD017', '2022-11-23', '14:45:25'),
('PT0018', 'MD018', '2022-08-28', '18:12:40'),
('PT0019', 'MD019', '2022-02-28', '13:17:50'),
('PT0020', 'MD020', '2022-01-02', '18:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `inpatient`
--

DROP TABLE IF EXISTS `inpatient`;
CREATE TABLE IF NOT EXISTS `inpatient` (
  `Record_ID` varchar(5) NOT NULL,
  `Admit_Date` date DEFAULT NULL,
  `Discharge_Date` date DEFAULT NULL,
  PRIMARY KEY (`Record_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inpatient`
--

INSERT INTO `inpatient` (`Record_ID`, `Admit_Date`, `Discharge_Date`) VALUES
('RC001', '2021-12-29', '2022-01-15'),
('RC002', '2022-02-19', '2022-03-25'),
('RC003', '2021-10-06', '2021-12-10'),
('RC004', '2021-12-12', '2022-01-27'),
('RC005', '2022-04-01', '2022-05-05'),
('RC006', '2021-11-22', '2021-11-25'),
('RC007', '2022-06-18', '2022-06-25'),
('RC008', '2021-12-10', '2022-01-01'),
('RC009', '2022-07-23', '2022-07-29'),
('RC010', '2022-09-03', '2022-10-01');

-- --------------------------------------------------------

--
-- Table structure for table `laboratory`
--

DROP TABLE IF EXISTS `laboratory`;
CREATE TABLE IF NOT EXISTS `laboratory` (
  `Laboratory_ID` varchar(4) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Laboratory_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratory`
--

INSERT INTO `laboratory` (`Laboratory_ID`, `Name`) VALUES
('LB01', 'LAB 01'),
('LB02', 'LAB 02'),
('LB03', 'LAB 03'),
('LB04', 'LAB 04'),
('LB05', 'LAB 05'),
('LB06', 'LAB 06'),
('LB07', 'LAB 07'),
('LB08', 'LAB 08'),
('LB09', 'LAB 09'),
('LB10', 'LAB 10');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
CREATE TABLE IF NOT EXISTS `medicine` (
  `Medicine_ID` varchar(5) NOT NULL,
  `MeName` varchar(30) DEFAULT NULL,
  `Quantity` int(5) DEFAULT NULL,
  `Pharmacy_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Medicine_ID`),
  KEY `Pharmacy_ID` (`Pharmacy_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`Medicine_ID`, `MeName`, `Quantity`, `Pharmacy_ID`) VALUES
('MD001', 'Hydrocodone', 1500, 'PH001'),
('MD002', 'Metformin', 1450, 'PH001'),
('MD003', 'Losartan', 1850, 'PH002'),
('MD004', 'Antibiotics', 1200, 'PH002'),
('MD005', 'Albuterol', 1100, 'PH003'),
('MD006', 'Antihistamines', 1600, 'PH003'),
('MD007', 'Gabapentin', 1685, 'PH004'),
('MD008', 'Omeprazole', 1950, 'PH004'),
('MD009', 'Levothyroxine', 1220, 'PH005'),
('MD010', 'Atorvastatin', 1650, 'PH005'),
('MD011', 'Avapro', 1250, 'PH006'),
('MD012', 'Arranon', 1650, 'PH006'),
('MD013', 'Mebaral', 1899, 'PH007'),
('MD014', 'Nadolol', 1650, 'PH007'),
('MD015', 'Saxagliptin', 1256, 'PH008'),
('MD016', 'Welchol', 2025, 'PH008'),
('MD017', 'Halcion', 2500, 'PH009'),
('MD018', 'Jantoven', 2450, 'PH009'),
('MD019', 'Megace', 1630, 'PH010'),
('MD020', 'Samsca', 1956, 'PH010'),
('MD021', 'Famvir', 2458, 'PH010'),
('MD022', 'Selsun', 2369, 'PH002');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
CREATE TABLE IF NOT EXISTS `nurse` (
  `Nurse_ID` varchar(5) NOT NULL,
  `Staff_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Nurse_ID`),
  KEY `Staff_ID` (`Staff_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`Nurse_ID`, `Staff_ID`) VALUES
('NR001', 'ST011'),
('NR002', 'ST012'),
('NR003', 'ST013'),
('NR004', 'ST014'),
('NR005', 'ST015'),
('NR006', 'ST016'),
('NR007', 'ST017'),
('NR008', 'ST018'),
('NR009', 'ST019'),
('NR010', 'ST020');

-- --------------------------------------------------------

--
-- Table structure for table `nurse_assign`
--

DROP TABLE IF EXISTS `nurse_assign`;
CREATE TABLE IF NOT EXISTS `nurse_assign` (
  `Nurse_ID` varchar(6) NOT NULL,
  `Room_ID` varchar(6) NOT NULL,
  `NADate` date DEFAULT NULL,
  `NATime` time DEFAULT NULL,
  PRIMARY KEY (`Nurse_ID`,`Room_ID`),
  KEY `Room_ID` (`Room_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse_assign`
--

INSERT INTO `nurse_assign` (`Nurse_ID`, `Room_ID`, `NADate`, `NATime`) VALUES
('NR0001', 'RM0001', '2022-10-02', '16:20:00'),
('NR0002', 'RM0002', '2022-11-11', '03:30:10'),
('NR0003', 'RM0003', '2022-08-13', '10:00:00'),
('NR0004', 'RM0004', '2022-10-14', '05:30:15'),
('NR0005', 'RM0005', '2022-01-15', '09:20:40'),
('NR0006', 'RM0006', '2022-12-16', '06:00:00'),
('NR0007', 'RM0007', '2022-10-21', '02:40:10'),
('NR0008', 'RM0008', '2022-08-24', '09:10:00'),
('NR0009', 'RM0009', '2022-07-29', '15:10:30'),
('NR0010', 'RM0010', '2022-06-30', '12:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `outpatient`
--

DROP TABLE IF EXISTS `outpatient`;
CREATE TABLE IF NOT EXISTS `outpatient` (
  `Record_ID` varchar(5) NOT NULL,
  `ODate` date DEFAULT NULL,
  PRIMARY KEY (`Record_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outpatient`
--

INSERT INTO `outpatient` (`Record_ID`, `ODate`) VALUES
('RC011', '2022-09-22'),
('RC012', '2022-11-12'),
('RC013', '2022-10-15'),
('RC014', '2022-07-14'),
('RC015', '2022-06-11'),
('RC016', '2022-12-15'),
('RC017', '2022-11-23'),
('RC018', '2022-08-28'),
('RC019', '2022-02-28'),
('RC020', '2022-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `paid_by`
--

DROP TABLE IF EXISTS `paid_by`;
CREATE TABLE IF NOT EXISTS `paid_by` (
  `Bill_ID` varchar(6) NOT NULL,
  `Method_ID` varchar(6) NOT NULL,
  `PdDate` date DEFAULT NULL,
  `PdTime` time DEFAULT NULL,
  PRIMARY KEY (`Bill_ID`,`Method_ID`),
  KEY `Method_ID` (`Method_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paid_by`
--

INSERT INTO `paid_by` (`Bill_ID`, `Method_ID`, `PdDate`, `PdTime`) VALUES
('BL0001', 'PM0001', '2022-01-15', '08:05:00'),
('BL0002', 'PM0004', '2022-03-25', '09:25:50'),
('BL0003', 'PM0006', '2021-12-10', '13:10:10'),
('BL0004', 'PM0001', '2022-01-27', '09:36:20'),
('BL0005', 'PM0002', '2022-05-05', '10:51:30'),
('BL0006', 'PM0005', '2021-11-25', '10:20:37'),
('BL0007', 'PM0005', '2022-06-25', '09:13:45'),
('BL0008', 'PM0002', '2022-01-01', '11:26:54'),
('BL0009', 'PM0003', '2022-07-29', '08:45:32'),
('BL0010', 'PM0003', '2022-10-01', '09:00:13'),
('BL0011', 'PM0001', '2022-09-22', '13:56:59'),
('BL0012', 'PM0001', '2022-11-12', '12:34:16'),
('BL0013', 'PM0003', '2022-10-15', '10:22:23'),
('BL0014', 'PM0004', '2022-07-14', '09:48:42'),
('BL0015', 'PM0003', '2022-06-11', '08:25:31'),
('BL0016', 'PM0001', '2022-12-15', '11:59:23'),
('BL0017', 'PM0001', '2022-11-23', '09:12:52'),
('BL0018', 'PM0005', '2022-08-28', '10:35:28'),
('BL0019', 'PM0005', '2022-02-28', '08:46:24'),
('BL0020', 'PM0001', '2022-01-02', '09:14:02');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `Patient_ID` varchar(6) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `State` varchar(4) DEFAULT NULL,
  `Address` varchar(40) DEFAULT NULL,
  `Gender` varchar(8) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Room_ID` varchar(5) DEFAULT NULL,
  `Department_ID` varchar(4) DEFAULT NULL,
  `Doctor_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Patient_ID`),
  KEY `Room_ID` (`Room_ID`),
  KEY `Department_ID` (`Department_ID`),
  KEY `Doctor_ID` (`Doctor_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Patient_ID`, `Name`, `State`, `Address`, `Gender`, `DOB`, `Room_ID`, `Department_ID`, `Doctor_ID`) VALUES
('PT0001', 'Buddhi Thisara', 'Lv01', 'No.A/38,Thettativu,Batticaloa', 'Male', '2000-03-06', 'RM001', 'DP01', 'DC003'),
('PT0002', 'Lahiru Prasad', 'Lv04', 'No.B/23,Talakiriyagama,Matara', 'Male', '1998-01-30', 'RM002', 'DP03', 'DC006'),
('PT0003', 'Kalini Manoli', 'Lv03', 'No.C/20,Cheddipalayam,Galle', 'Female', '2005-12-31', 'RM003', 'DP04', 'DC005'),
('PT0004', 'Gamini Weragoda', 'Lv01', 'Gelioya,Matara', 'Male', '1977-09-22', 'RM004', 'DP04', 'DC009'),
('PT0005', 'Chanaka Priyanjith', 'Lv02', 'No.B/347,Onegama,Galle', 'Male', '1996-08-13', 'RM005', 'DP03', 'DC002'),
('PT0006', 'Imasha Udawaththa', 'Lv03', 'Padavi Sritissapura,Galle', 'Female', '2002-10-21', 'RM006', 'DP01', 'DC003'),
('PT0007', 'Nandani Silawathi', 'Lv01', 'No.B/32,Ampilanthurai School Rd,Matara', 'Female', '1950-01-02', 'RM007', 'DP03', 'DC010'),
('PT0008', 'Kapuge Namal', 'Lv04', 'No.B/19,Sungavila,Matara', 'Male', '1945-12-29', 'RM008', 'DP03', 'DC007'),
('PT0009', 'Sunila Rajapaksha ', 'Lv03', 'Lindula,Galle', 'Female', '1993-02-05', 'RM009', 'DP01', 'DC003'),
('PT0010', 'Malsha Bandara', 'Lv02', 'No.A32,Maeliya,Galle', 'Male', '1995-12-11', 'RM010', 'DP04', 'DC005'),
('PT0011', 'Dananjaya Banda', 'Lv04', 'No.F30,Cheddipalayam,Galle', 'Male', '1988-10-20', NULL, 'DP02', 'DC010'),
('PT0012', 'Achala Bandara', 'Lv03', 'No.D/35,Mankemi,Galle', 'Female', '1998-03-12', NULL, 'DP02', 'DC002'),
('PT0013', 'Jock Jani', 'Lv04', 'Boraluwewa,Galle', 'Female', '2010-05-15', NULL, 'DP02', 'DC004'),
('PT0014', 'Maleesha Abisheeka', 'Lv04', 'No.B32,Udispattuwa,Galle', 'Male', '2004-07-22', NULL, 'DP02', 'DC008'),
('PT0015', 'Nimesh Silva ', 'Lv04', 'Pallepola,Galle', 'Male', '2001-02-20', NULL, 'DP02', 'DC007'),
('PT0016', 'Isuri Nimali', 'Lv02', 'No.B27,Mahawela,Matara', 'Female', '2004-12-01', NULL, 'DP01', 'DC003'),
('PT0017', 'Kaveesha Nawo', 'Lv03', 'No.B29,Madulkele,Galle', 'Female', '1995-09-24', NULL, 'DP02', 'DC001'),
('PT0018', 'Raveesha Lover', 'Lv01', 'Padavi Sripura,Galle', 'Female', '1990-06-15', NULL, 'DP02', 'DC002'),
('PT0019', 'Seelawathi ', 'Lv02', 'B16,Madulkele,Galle', 'Female', '1941-02-01', NULL, 'DP02', 'DC002'),
('PT0020', 'Sethan Appu', 'Lv04', 'No.22,Maharachchimulla,Matara', 'Male', '1935-12-12', NULL, 'DP01', 'DC003');

-- --------------------------------------------------------

--
-- Table structure for table `patient_contact`
--

DROP TABLE IF EXISTS `patient_contact`;
CREATE TABLE IF NOT EXISTS `patient_contact` (
  `Patient_ID` varchar(6) NOT NULL,
  `Contact` varchar(11) NOT NULL,
  PRIMARY KEY (`Patient_ID`,`Contact`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_contact`
--

INSERT INTO `patient_contact` (`Patient_ID`, `Contact`) VALUES
('PT0001', '077-9797676'),
('PT0001', '081-9797234'),
('PT0002', '011-2343256'),
('PT0002', '075-2348248'),
('PT0003', '033-1245679'),
('PT0003', '078-2572264'),
('PT0004', '025-6446667'),
('PT0004', '075-2434783'),
('PT0005', '066-4366675'),
('PT0005', '075-2343252'),
('PT0006', '054-0879799'),
('PT0006', '076-2329380'),
('PT0007', '076-2434434'),
('PT0007', '088-1231413'),
('PT0008', '078-2338091'),
('PT0008', '099-5647467'),
('PT0009', '021-5656546'),
('PT0009', '077-2791000'),
('PT0010', '034-5645645'),
('PT0010', '076-2323826');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE IF NOT EXISTS `payment_method` (
  `Method_ID` varchar(6) NOT NULL,
  `PMType` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Method_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`Method_ID`, `PMType`) VALUES
('PM0001', 'Cash'),
('PM0002', 'Checks'),
('PM0003', 'Debit Cards'),
('PM0004', 'Credit Cards'),
('PM0005', 'Mobile Payments'),
('PM0006', 'E Bank Transfers');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

DROP TABLE IF EXISTS `pharmacy`;
CREATE TABLE IF NOT EXISTS `pharmacy` (
  `Pharmacy_ID` varchar(5) NOT NULL,
  `PhName` char(20) DEFAULT NULL,
  `Location` varchar(30) DEFAULT NULL,
  `Contact_No` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`Pharmacy_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`Pharmacy_ID`, `PhName`, `Location`, `Contact_No`) VALUES
('PH001', 'The New Pharmacy', 'Kurunegala', '071-2582341'),
('PH002', 'Thumsetha Pharmacy', 'Colombo', '011-9876352'),
('PH003', 'Vijitha Pharmacy', 'Galle', '071-7895871'),
('PH004', 'New Lanka Medicare', 'Vavuniya', '075-4893251'),
('PH005', 'Kasun Pharmacy', 'Kuliyapitiya', '072-4562587'),
('PH006', 'Sri Lanka Pharmacy', 'Kandy', '071-6982148'),
('PH007', 'Kalani Pharmacy', 'Matara', '074-9513572'),
('PH008', 'Supipi Pharmacy', 'Kamburupitiya', '076-9517513'),
('PH009', 'United Pharmacy', 'Badulla', '070-4902367'),
('PH010', 'Sewana Pharmacy', 'Kurunegala', '035-4585636');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
CREATE TABLE IF NOT EXISTS `record` (
  `Record_ID` varchar(5) NOT NULL,
  `Patient_ID` varchar(6) DEFAULT NULL,
  `Weight` varchar(6) DEFAULT NULL,
  `Blood_Group` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`Record_ID`),
  KEY `Patient_ID` (`Patient_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`Record_ID`, `Patient_ID`, `Weight`, `Blood_Group`) VALUES
('RC001', 'PT0001', '65', 'A+'),
('RC002', 'PT0002', '70', 'B+'),
('RC003', 'PT0003', '55', 'O+'),
('RC004', 'PT0004', '60', 'AB+'),
('RC005', 'PT0005', '63', 'AB-'),
('RC006', 'PT0006', '59', 'O-'),
('RC007', 'PT0007', '68', 'A-'),
('RC008', 'PT0008', '72', 'B-'),
('RC009', 'PT0009', '77', 'A+'),
('RC010', 'PT0010', '51', 'B+'),
('RC011', 'PT0011', '41', 'B+'),
('RC012', 'PT0012', '75', 'A-'),
('RC013', 'PT0013', '49', 'AB+'),
('RC014', 'PT0014', '66', 'A+'),
('RC015', 'PT0015', '79', 'O-'),
('RC016', 'PT0016', '63', 'AB-'),
('RC017', 'PT0017', '54', 'A-'),
('RC018', 'PT0018', '76', 'O+'),
('RC019', 'PT0019', '74', 'B+'),
('RC020', 'PT0020', '71', 'AB-');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `Room_ID` varchar(5) NOT NULL,
  `RType` varchar(20) DEFAULT NULL,
  `Department_ID` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`Room_ID`),
  KEY `Department_ID` (`Department_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_ID`, `RType`, `Department_ID`) VALUES
('RM001', 'VIP_R_01', 'DP01'),
('RM002', 'VIP_R_02', 'DP03'),
('RM003', 'VIP_R_03', 'DP04'),
('RM004', 'Only_Private_R_01', 'DP04'),
('RM005', 'Only_Private_R_02', 'DP03'),
('RM006', 'Only_Private_R_03', 'DP01'),
('RM007', 'Semi_Private_R_01', 'DP03'),
('RM008', 'Semi_Private_R_02', 'DP03'),
('RM009', 'Semi_Private_R_03', 'DP01'),
('RM010', 'Semi_Private_R_04', 'DP04');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `Staff_ID` varchar(5) NOT NULL,
  `Name` char(30) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `Department_ID` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`Staff_ID`),
  KEY `Department_ID` (`Department_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_ID`, `Name`, `Salary`, `Department_ID`) VALUES
('ST001', 'Dr. Maleesha', '150000.00', 'DP01'),
('ST002', 'Dr. Pathum', '200000.00', 'DP02'),
('ST003', 'Dr. Nimesh', '200000.00', 'DP02'),
('ST004', 'Dr. Lahiru', '200000.00', 'DP02'),
('ST005', 'Dr. Shanaka', '250000.00', 'DP04'),
('ST006', 'Dr. Dhananjaya', '250000.00', 'DP04'),
('ST007', 'Dr. Buddhi', '200000.00', 'DP03'),
('ST008', 'Dr. Prageeth', '250000.00', 'DP04'),
('ST009', 'Dr. Kalini', '200000.00', 'DP03'),
('ST010', 'Dr. Chathumina', '250000.00', 'DP04'),
('ST011', 'Y.L. Nirmani', '100000.00', 'DP01'),
('ST012', 'E.G.T. Ranasinghe', '150000.00', 'DP02'),
('ST013', 'P.M.L. Karunarathne', '150000.00', 'DP03'),
('ST014', 'M.M. Manuji', '200000.00', 'DP04'),
('ST015', 'K.L. Anusarani', '120000.00', 'DP05'),
('ST016', 'W.B. Ama', '120000.00', 'DP06'),
('ST017', 'A.K. Gaurawi', '100000.00', 'DP07'),
('ST018', 'B.D. Sanduni', '100000.00', 'DP08'),
('ST019', 'S.M. Piyumali', '120000.00', 'DP09'),
('ST020', 'G.N. Asini', '120000.00', 'DP10'),
('ST021', 'W.A. Vishan', '50000.00', 'DP01'),
('ST022', 'D.A. Janaka', '50000.00', 'DP01'),
('ST023', 'V.L. Lakshan', '60000.00', 'DP02'),
('ST024', 'E.M. Praveen', '60000.00', 'DP02'),
('ST025', 'G.W. Madhusha', '60000.00', 'DP03'),
('ST026', 'K.A. Kalana', '80000.00', 'DP04'),
('ST027', 'N.W. Sampath', '70000.00', 'DP05'),
('ST028', 'W.V. Vimukthi', '65000.00', 'DP07'),
('ST029', 'L.K. Rangana', '65000.00', 'DP09'),
('ST030', 'B.M. Kaveen', '60000.00', 'DP10');

-- --------------------------------------------------------

--
-- Table structure for table `ward_boy`
--

DROP TABLE IF EXISTS `ward_boy`;
CREATE TABLE IF NOT EXISTS `ward_boy` (
  `Ward_boy_ID` varchar(5) NOT NULL,
  `Staff_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Ward_boy_ID`),
  KEY `Staff_ID` (`Staff_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_boy`
--

INSERT INTO `ward_boy` (`Ward_boy_ID`, `Staff_ID`) VALUES
('WB001', 'ST021'),
('WB002', 'ST022'),
('WB003', 'ST023'),
('WB004', 'ST024'),
('WB005', 'ST025'),
('WB006', 'ST026'),
('WB007', 'ST027'),
('WB008', 'ST028'),
('WB009', 'ST029'),
('WB010', 'ST030');

-- --------------------------------------------------------

--
-- Table structure for table `ward_boy_assign`
--

DROP TABLE IF EXISTS `ward_boy_assign`;
CREATE TABLE IF NOT EXISTS `ward_boy_assign` (
  `Ward_boy_ID` varchar(6) NOT NULL,
  `Room_ID` varchar(6) NOT NULL,
  `WADate` date DEFAULT NULL,
  `WATime` time DEFAULT NULL,
  PRIMARY KEY (`Ward_boy_ID`,`Room_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_boy_assign`
--

INSERT INTO `ward_boy_assign` (`Ward_boy_ID`, `Room_ID`, `WADate`, `WATime`) VALUES
('WB001', 'RM001', '2022-10-10', '08:20:00'),
('WB002', 'RM002', '2022-10-11', '08:20:00'),
('WB003', 'RM003', '2022-10-13', '08:00:00'),
('WB004', 'RM004', '2022-10-14', '08:30:00'),
('WB005', 'RM005', '2022-10-15', '08:20:40'),
('WB006', 'RM006', '2022-10-16', '06:00:00'),
('WB007', 'RM007', '2022-10-22', '08:00:00'),
('WB008', 'RM008', '2022-10-24', '09:10:00'),
('WB009', 'RM009', '2022-10-29', '08:10:15'),
('WB010', 'RM010', '2022-10-21', '12:15:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
