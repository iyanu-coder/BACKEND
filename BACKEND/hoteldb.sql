-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2022 at 09:46 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoteldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin_tb`
--

CREATE TABLE `adminlogin_tb` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin_tb`
--

INSERT INTO `adminlogin_tb` (`id`, `email`, `password`) VALUES
(1, 'akinseyi272@gmail.com', 'snazzy');

-- --------------------------------------------------------

--
-- Table structure for table `hotelevents_tb`
--

CREATE TABLE `hotelevents_tb` (
  `id` int(11) NOT NULL,
  `contents` varchar(200) NOT NULL,
  `venue` varchar(300) NOT NULL,
  `entryfee` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `listofrooms_tb`
--

CREATE TABLE `listofrooms_tb` (
  `id` int(11) NOT NULL,
  `contentsofroom` varchar(700) NOT NULL,
  `priceofroom` varchar(15) NOT NULL,
  `typeofroom` varchar(20) NOT NULL,
  `sizeofroom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `listofrooms_tb`
--

INSERT INTO `listofrooms_tb` (`id`, `contentsofroom`, `priceofroom`, `typeofroom`, `sizeofroom`) VALUES
(21, '', '', '', ''),
(22, 'hotel suite', '$500/Night', 'Single', '40sqm');

-- --------------------------------------------------------

--
-- Table structure for table `login_registration`
--

CREATE TABLE `login_registration` (
  `id` int(11) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone_number` varchar(12) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_registration`
--

INSERT INTO `login_registration` (`id`, `f_name`, `l_name`, `email`, `country`, `phone_number`, `username`, `password`) VALUES
(15, 'Akinyemi', 'Iyanu', 'akinyemiiyanu45@gmail.com', 'Nigeria', '9037298121', 'seyi', '12345'),
(16, 'Akinyemi', 'Iyanu', 'akinyemiiyanu45@gmail.com', 'Nigeria', '903729812', 'seyi', '12345'),
(18, 'Akinyemi', 'Iyanu', 'akinyemiiyanu45@gmail.com', 'Nigeria', '903729812', 'iyanu', '123456789'),
(19, 'paul', 'dada', 'dada@gmail.com', 'Nigeria', '9037298121', 'dada', '12345'),
(20, 'paul', 'dada', 'dada@gmail.com', 'Nigeria', '9037298121', 'dada', '12345'),
(21, 'paul', 'dada', 'dada@gmail.com', 'Nigeria', '9037298121', 'dada', '12345'),
(22, 'paul', 'dada', 'dada@gmail.com', 'Nigeria', '903729812', 'dada', '12345'),
(23, 'paul', 'dada', 'dada@gmail.com', 'Nigeria', '9037298121', 'dada', '12345'),
(24, 'paul', 'dada', 'dada@gmail.com', 'Nigeria', '9037298121', 'dada', '12345'),
(25, 'tope', 'pelumi', 'pelumi@gmail.com', 'Nigeria', '9037298124', 'pelumi', '1234567'),
(26, 'Akinyemi', 'Iyanu', 'akinyemiiyanu45@gmail.com', 'Nigeria', '903729812', 'sdf', '123456'),
(27, '', '', '', '', '', '', ''),
(28, 'Akinyemi', 'Iyanu', 'akinyemiiyanu45@gmail.com', 'Nigeria', '903729812', 'dfgh', '12345'),
(29, 'Akinyemi', 'Iyanu', 'akinyemiiyanu45@gmail.com', 'Nigeria', '903729812', 'sdf', '2345'),
(30, 'dudu', 'Iyanu', 'yemiiyanu45@gmail.com', 'Nigeria', '903729812', 'dudu', '654321'),
(31, 'posi', 'ola', 'ola@gmail.com', 'ghana', '903729812', 'olawhite', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin_tb`
--
ALTER TABLE `adminlogin_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`email`);

--
-- Indexes for table `hotelevents_tb`
--
ALTER TABLE `hotelevents_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listofrooms_tb`
--
ALTER TABLE `listofrooms_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_registration`
--
ALTER TABLE `login_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin_tb`
--
ALTER TABLE `adminlogin_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotelevents_tb`
--
ALTER TABLE `hotelevents_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listofrooms_tb`
--
ALTER TABLE `listofrooms_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `login_registration`
--
ALTER TABLE `login_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
