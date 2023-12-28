-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2023 at 08:13 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mybank`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchId` int(11) NOT NULL,
  `branchNo` varchar(20) NOT NULL,
  `branchName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchId`, `branchNo`, `branchName`) VALUES
(1, '9845342109', 'banshankari'),
(2, '8792760956', 'jaynagar');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `message` text NOT NULL,
  `userId` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackId`, `message`, `userId`, `date`) VALUES
(1, 'This is testing message to admin or manager by fk', 1, '2017-12-15 04:30:48'),
(3, 'This is testing message to admin or manager by fk', 2, '2017-12-15 04:30:48'),
(4, 'this is help card for admin', 1, '2017-12-17 06:45:20');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `type`, `date`) VALUES
(1, 'cashier@cashier.com', 'cashier', 'cashier', '2017-12-15 04:36:27'),
(2, 'manager@manager.com', 'manager', 'manager', '2017-12-15 04:36:27'),
(3, 'sadfas@gmail.com', 'sdfas', 'type', '2017-12-16 07:13:12'),
(4, 'fkgeo@gmail.com', 'asdfsa', 'type', '2017-12-16 07:13:18'),
(6, 'cashier2@cashier.com', 'cashier2', 'cashier', '2017-12-16 07:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `userId` varchar(20) NOT NULL,
  `notice` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `userId`, `notice`, `date`) VALUES
(1, '1', 'Dear Customer! <br> OUr privacy policy is changed for account information get new prospectus from your nearest branch', '2017-12-14 13:11:46'),
(6, '2', 'Dear Ali,<br>\r\nOur privacy policy has been changed please visit nearest <kbd> MCB </kbd> branch for new prospectus.', '2017-12-16 06:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `otheraccounts`
--

CREATE TABLE `otheraccounts` (
  `id` int(11) NOT NULL,
  `accountNo` varchar(9) NOT NULL,
  `bankName` varchar(20) NOT NULL,
  `holderName` varchar(20) NOT NULL,
  `balance` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `otheraccounts`
--

INSERT INTO `otheraccounts` (`id`, `accountNo`, `bankName`, `holderName`, `balance`, `date`) VALUES
(1, '120011224', 'SBI', 'Shree', '40800', '2017-12-14 11:55:07'),
(2, '120011235', 'KGB', 'Deeksha', '71000', '2017-12-14 11:55:07'),
(3, '120011246', 'KGB', 'Diya', '89000', '2017-12-14 11:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(11) NOT NULL,
  `action` varchar(20) NOT NULL,
  `credit` varchar(20) NOT NULL,
  `debit` varchar(20) NOT NULL,
  `balance` varchar(10) NOT NULL,
  `beneId` varchar(20) NOT NULL,
  `other` varchar(20) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `action`, `credit`, `debit`, `balance`, `beneId`, `other`, `userId`, `date`) VALUES
(4, 'transfer', '', '200', '', '', '12001122', 1, '2017-12-14 12:33:40'),
(5, 'transfer', '', '200', '', '', '10054777', 1, '2017-12-14 12:56:48'),
(6, 'transfer', '', '333', '', '', '10054777', 1, '2017-12-14 12:57:20'),
(7, 'transfer', '', '222', '', '', '10054777', 1, '2017-12-14 12:58:19'),
(8, 'transfer', '', '333', '', '', '10054777', 1, '2017-12-14 13:00:23'),
(10, '', '', '', '', '', '', 0, '2023-01-18 17:49:55'),
(16, 'withdraw', '', '100', '', '', '10056456', 1, '2017-12-15 08:31:59'),
(17, 'deposit', '1200', '', '', '', '16439238', 1, '2017-12-15 08:32:17'),
(18, 'transfer', '', '467', '', '', '12001122', 1, '2017-12-17 06:44:48'),
(22, 'deposit', '1200', '', '', '', '13923423', 2, '2017-12-17 06:56:29'),
(23, 'withdraw', '', '12', '', '', '12091321', 2, '2017-12-17 06:59:02'),
(24, 'deposit', '12', '', '', '', '10054777', 2, '2017-12-17 06:59:20'),
(25, 'transfer', '', '1200', '', '', '10054777', 1, '2017-12-17 07:01:37'),
(26, 'deposit', '600', '', '', '', '13428342', 2, '2017-12-17 07:04:39'),
(27, 'withdraw', '', '1012', '', '', '14723423', 2, '2017-12-17 07:04:58'),
(28, 'transfer', '', '40', '', '', '1005469', 1, '2023-01-18 17:24:32');

--
-- Triggers `transaction`
--
DELIMITER $$
CREATE TRIGGER `tr_ins_transaction` BEFORE INSERT ON `transaction` FOR EACH ROW SET NEW.transactionID = UPPER(NEW.transactionID)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tr_up_transaction` BEFORE UPDATE ON `transaction` FOR EACH ROW SET NEW.transactionID =
LOWER(NEW.transactionID)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `name` varchar(20) NOT NULL,
  `balance` varchar(20) NOT NULL,
  `cnic` varchar(12) NOT NULL,
  `number` varchar(10) NOT NULL,
  `city` varchar(12) NOT NULL,
  `address` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `accountNo` varchar(9) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `accountType` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`id`, `email`, `password`, `name`, `balance`, `cnic`, `number`, `city`, `address`, `source`, `accountNo`, `branch`, `accountType`, `date`) VALUES
(1, 'some@gmail.com', 'some', 'Laya', '98000', '321037555426', '8050322128', 'banglore', 'Some where in bnglr', 'Programmer', '100544696', '1', 'Current', '2017-12-14 05:50:06'),
(2, 'some2@gmail.com', 'some2', 'Aliya', '16000', '321037555534', '6362125673', 'hydrebad', 'Some where in hyd', 'teacher', '100547795', '1', 'Saving', '2017-12-14 04:50:06'),
(6, 'realx4rd@gmail.com', 'afsdfasd', 'Hari', '23420', '324033883490', '9856342347', 'kolar', 'MG road klr', 'Govt. job', '151341074', '1', 'saving', '2017-12-16 07:52:40'),
(7, 'realx4rd@gmail.com', 'safsadf', 'Nisha', '12098', '324033883490', '6785349236', 'tumkur', 'Doomlight circle tkr', 'Govt. job', '151308373', '1', 'current', '2017-12-16 07:54:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
