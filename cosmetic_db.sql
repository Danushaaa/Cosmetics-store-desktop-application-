-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 06:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cosmetic_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` varchar(10) NOT NULL,
  `ProductName` varchar(30) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `Price` double NOT NULL,
  `Stocks` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `Category`, `Price`, `Stocks`) VALUES
('01', 'Face Wash', 'Sampo', 300, 10),
('02', 'Divi', 'Shampoo', 400, 50),
('03', 'Vital', 'Serum', 500, 100),
('04', 'Diviya', 'Body Lotions', 250, 100),
('05', 'Serim', ' Face wash', 500, 50);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` varchar(10) NOT NULL,
  `FullName` varchar(30) NOT NULL,
  `UserType` varchar(30) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `ContactNo` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `UserName` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `FullName`, `UserType`, `Address`, `ContactNo`, `Email`, `UserName`, `Password`) VALUES
('C01', 'Kavindu', 'Cashier', 'Nittabuwa', '0778002214', 'Kavindu@gmail.com', 'Kavindu', 'Kav123'),
('C02', 'Pasan', 'Cashier', 'Wattala', '075482564', 'pasan@gmail.com', 'Pasan', 'Pas123'),
('C06', 'Matheehsa', 'Shop Technician', 'Rajagiriya', '0758449658', 'matheesha@gmail.com', 'Matheesha', 'Mathe123'),
('M01', 'Danusha', 'Manager', 'Yakkala', '0772003317', 'danusha@gmail.com', 'Danusha', 'Danu123'),
('T01', 'Sarath', 'Shop Technician', 'Udugampala', '0777548526', 'SarathWasantha@gmail.com', 'Sarath', 'Sar123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
