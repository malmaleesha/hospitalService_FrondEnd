-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 01:51 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `Admin_id` int(11) NOT NULL,
  `Admin_name` varchar(30) NOT NULL,
  `Admin_username` varchar(30) NOT NULL,
  `Admin_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`Admin_id`, `Admin_name`, `Admin_username`, `Admin_password`) VALUES
(1, 'Amasha Daphnie', 'Amasha', 'Amasha123'),
(2, 'Maleesha Gunathilake', 'Maleesha', 'Maleesha123'),
(3, 'Anolie Kumarashinghe', 'Anolie', 'Oshi123'),
(4, 'Minoli Isurika', 'Minoli', 'Minoli123'),
(5, 'Nethmini Umayangana', 'Sanju', 'Sanju123');

-- --------------------------------------------------------

--
-- Table structure for table `sign_up`
--

CREATE TABLE `sign_up` (
  `hospital_Id` int(11) NOT NULL,
  `hospital_Name` varchar(50) NOT NULL,
  `hospital_Address` varchar(50) NOT NULL,
  `hospital_ContactNo` varchar(15) NOT NULL,
  `hospital_Email` varchar(50) NOT NULL,
  `hospital_Details` varchar(10000) NOT NULL,
  `hospital_Charge` double NOT NULL,
  `hospital_Username` varchar(50) NOT NULL,
  `hospital_Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sign_up`
--

INSERT INTO `sign_up` (`hospital_Id`, `hospital_Name`, `hospital_Address`, `hospital_ContactNo`, `hospital_Email`, `hospital_Details`, `hospital_Charge`, `hospital_Username`, `hospital_Password`) VALUES
(78, '   Sethma Hospital', 'Kandy rd,Malabe', '0758945666', 'sethma@gmail.com', '500 staff, Specialization - Physiologist, Cardiologist, OPD, ETU, Neurologist, Monthly discount -10%', 10000, 'sethma_gampaha', '12345678'),
(81, ' Lessons Hospital', 'Ragama Rd, Ragama', '0332262087', 'lessons_hos@gmail.com', '500 staff, Specialization - Physiologist, Cardiologist, OPD, ETU, Neurologist, Monthly discount -10%, special discount for Children below age 4, elders and lessons card holders.', 5000, 'lessons_ragama', 'lessons$1234'),
(82, ' Lanka Hospital', 'Colombo Rd, Colombo 7 ', '0332244555', 'lankahospital@gmail.com', '500 staff, Specialization - Physiologist, Cardiologist, OPD, ETU, Neurologist, Monthly discount -10%, 24 hours service', 7000, 'lanka_colombo', 'lanka@12345'),
(83, ' Arogya Hospital', 'Gampaha Rd, Gampaha 05', '0771122334', 'arogyag@gmail.com', '700 staff, Specialization - Physiologist, Cardiologist, OPD, ETU,, Neurologist. Monthly discount 5%', 2000, 'arogya_hospital', 'arogya@1234'),
(85, '    Nevil Fernando Hospital', 'Kandy rd, Malabe', '0758945666', 'nevil_hos@gmail.com', '500 staff, Specialization - Physiologist, Cardiologist, OPD, ETU, Neurologist, Monthly discount -10%', 3000, 'nevil_malabe', '123456789'),
(115, '  Co- Hospital', 'Siyane Rd, Gampaha.', '0779936906', 'cogampaha@gmail.com', '600 staff, Specialization - Physiologist, Cardiologist, OPD, ETU,, Neurologist. Monthly discount 5%.', 10000, 'co_hospital', 'gampaha12345'),
(129, ' Surakum Wimana Hospital', 'Yakkala Rd, Gampaha', '0758910948', 'surakumvimana@yahoo.com', '80 staff, Specialization - Physiologist, Cardiologist, OPD, ETU, Neurologist, Monthly discount  for elders 20% and childrens for 40%.Emacency hospital charge is free.', 700, 'surakumWimana', 'surakum@1234'),
(130, 'St. John Hospital', 'Nawala Rd, Naiwala', '0912233446', 'stjohn.hospital@yahoo.com', '500 staff, Specialization - Physiologist, Cardiologist, OPD, ETU, Neurologist, Monthly discount -50%', 1500, 'StJohnHospital20', 'johnhospital12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`Admin_id`);

--
-- Indexes for table `sign_up`
--
ALTER TABLE `sign_up`
  ADD PRIMARY KEY (`hospital_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `Admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sign_up`
--
ALTER TABLE `sign_up`
  MODIFY `hospital_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
