-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2024 at 12:56 AM
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
-- Database: `finance_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(2, 'A', 'abc@gmail.com', '12345'),
(3, 'a', 'abc@gmail.com', '12345'),
(4, 'Neo', 'neo@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `digital_wallet`
--

CREATE TABLE `digital_wallet` (
  `id` int(250) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `balance` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `digital_wallet`
--

INSERT INTO `digital_wallet` (`id`, `user_id`, `username`, `email`, `balance`) VALUES
(5, '21', 'John', 'john@gmail.com', 17511),
(6, '22', 'Ben', 'ben@gmail.com', 10500),
(7, '23', 'Ken', 'ken@gmail.com', 22000);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(250) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `amount` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `user_id`, `date`, `description`, `amount`) VALUES
(2348, '21', '1212', '4545', '1212'),
(2349, '21', '121212', '121212', '121212'),
(2350, '21', 'Enter Date', 'Describe your Expense', 'Enter Amount');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `id` int(250) NOT NULL,
  `user_id` int(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `amount` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`id`, `user_id`, `date`, `description`, `amount`) VALUES
(1, 21, 'Enter Date', 'Describe your loan', 'Enter Amount');

-- --------------------------------------------------------

--
-- Table structure for table `savings`
--

CREATE TABLE `savings` (
  `id` int(250) NOT NULL,
  `user_id` int(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `amount` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `savings`
--

INSERT INTO `savings` (`id`, `user_id`, `date`, `description`, `amount`) VALUES
(1, 21, 'Enter Date', 'Describe your Savings', 'Enter Amount'),
(2, 21, 'Enter Date', 'Describe your Savings', 'Enter Amount');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_record`
--

CREATE TABLE `transaction_record` (
  `id` int(250) NOT NULL,
  `user_id` int(250) NOT NULL,
  `type` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `amount` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_record`
--

INSERT INTO `transaction_record` (`id`, `user_id`, `type`, `date`, `amount`) VALUES
(1, 21, 'Send', '29/05/24', '2000'),
(2, 21, 'Add', '29/05/24', '12000'),
(3, 21, 'Send', '29/05/24', '5000'),
(4, 22, 'Send', '29/05/24', '15000'),
(5, 21, 'Send', '29/05/24', '4000'),
(6, 21, 'Send', '29/05/24', '1000'),
(7, 21, 'Add', '29/05/24', '5000'),
(8, 21, 'Send', '30/05/24', '2000'),
(9, 21, 'Withdraw', '121212', '3489');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(127) NOT NULL,
  `username` varchar(127) NOT NULL,
  `email` varchar(127) NOT NULL,
  `password` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(21, 'John', 'john@gmail.com', '123456'),
(22, 'Ben', 'ben@gmail.com', '123456'),
(23, 'Ken', 'ken@gmail.com', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(250) NOT NULL,
  `user_id` int(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `amount` int(250) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `user_id`, `date`, `amount`, `status`) VALUES
(1, 21, '121212', 3489, 'Approved'),
(2, 21, 'Enter Date', 4500, 'Approved'),
(3, 21, 'Enter Date', 5000, 'Approved'),
(4, 21, 'Enter Date', 4000, 'Approved');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `digital_wallet`
--
ALTER TABLE `digital_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `savings`
--
ALTER TABLE `savings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_record`
--
ALTER TABLE `transaction_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `digital_wallet`
--
ALTER TABLE `digital_wallet`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2351;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `savings`
--
ALTER TABLE `savings`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction_record`
--
ALTER TABLE `transaction_record`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(127) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
