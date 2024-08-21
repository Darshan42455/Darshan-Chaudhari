-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2024 at 02:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `appontment`
--

CREATE TABLE `appontment` (
  `id` int(100) NOT NULL,
  `empid` int(100) NOT NULL,
  `userid` int(100) NOT NULL,
  `name` varchar(256) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `deprement` varchar(100) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `adress` varchar(256) NOT NULL,
  `purpose` varchar(100) NOT NULL,
  `descripation` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appontment`
--

INSERT INTO `appontment` (`id`, `empid`, `userid`, `name`, `designation`, `deprement`, `companyname`, `contact`, `adress`, `purpose`, `descripation`, `date`, `time`, `email`, `status`) VALUES
(1, 1, 1, 'meera', 'manager', 'entc', 'meera products', '9881599432', 'csn dhule road', 'for normal meetup', 'yyyyyyyyy', '2010-12-22', '00:00:01.000000', 'meera@gmail.com', 'approved'),
(2, 1, 1, 'meera patil', 'manger', 'civil', 'meera products', '9881599432', 'csn dhule road', 'for normal meet', 'kkkkkk', '2011-10-11', '00:00:11.000000', 'meera@gmail.com', 'approved'),
(3, 1, 1, 'merra', 'manger', 'civil', 'meera.sis', '9881599432', 'csn dhule road', 'for normal meet', 'kkkkkk', '2024-10-11', '00:00:11.000000', 'meera@gmail.com', 'pending'),
(4, 1, 0, 'merra', 'manger', 'civil', 'meera.sis', '9881599432', 'csn dhule road', 'for normal meet', 'kkkkkk', '2024-11-23', '00:00:11.000000', 'meera@gmail.com', 'disaproved'),
(5, 1, 3, 'yash', 'manager', 'entc', 'yash pv limated', '789456123', 'csn dhule road', 'formal work', 'noyhing', '2024-12-22', '00:00:11.000000', 'yash@gmail.com', 'pending'),
(6, 1, 1, 'meera', 'manager', 'entc', 'meera p limited', '77777777', 'csn', 'formal meet', 'oooo', '2024-11-25', '00:00:11.000000', 'meera@gmail.com', 'pending'),
(7, 1, 1, 'yashodan', 'manager', 'entc', 'yash', '9881599432', 'dhule road csn', 'normsl meet up', 'normal meet', '2024-12-22', '00:00:01.000000', 'yashodah@gmail.com', 'disaproved'),
(8, 1, 1, 'yashodan', 'manager', 'entc', 'yash', '9881599432', 'dhule road csn', 'normsl meet up', 'normal meet', '2024-12-11', '00:00:01.000000', 'yash@gmail.com', 'pending'),
(9, 1, 1, 'yashodan', 'manager', 'entc', 'yash', '9881599432', 'dhule road csn', 'normsl meet up', 'normal meet', '2024-11-12', '00:00:01.000000', 'yash@gmail.com', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `contact` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Id`, `name`, `designation`, `department`, `contact`, `email`, `password`) VALUES
(1, 'yashodhan patil', 'manager', 'entc', 2147483647, 'yashodhan@gmail.com', 789),
(3, 'pratik', 'manager', 'civil', 2147483647, 'p@gmail.com', 22222),
(4, 'shubam patil', 'manger', 'entc', 2147483647, 'shub@gmail.com', 789456),
(5, 'aastha', 'emp', 'noting ', 777777, 'aastha@gmail.com', 777);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(11) NOT NULL,
  `designation` varchar(11) NOT NULL,
  `department` varchar(11) NOT NULL,
  `companyName` varchar(11) NOT NULL,
  `contact` int(11) NOT NULL,
  `address` varchar(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `designation`, `department`, `companyName`, `contact`, `address`, `email`, `password`) VALUES
(1, 'meera patil', 'manger', 'entc', 'meera produ', 2147483647, 'csn dhule r', 'meera@gmail.com', 789),
(2, 'pratik pati', 'ceo', 'com', 'iii', 8888888, 'csn dhule r', 'p@gmail.com', 789456),
(3, 'yash', 'ceo', 'management', 'yash p limi', 55555555, 'ooooo', 'yash@gmail.com', 789456),
(4, 'rakesh pati', 'normal emp', 'civil', 'construcati', 2147483647, 'csn maligao', 'rakesh@gmail.com', 1236);

-- --------------------------------------------------------

--
-- Table structure for table `yrp`
--

CREATE TABLE `yrp` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appontment`
--
ALTER TABLE `appontment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yrp`
--
ALTER TABLE `yrp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appontment`
--
ALTER TABLE `appontment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `yrp`
--
ALTER TABLE `yrp`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
