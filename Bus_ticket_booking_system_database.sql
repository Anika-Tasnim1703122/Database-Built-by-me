-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2021 at 02:00 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `q2_1703122`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `BUS_NO` int(5) NOT NULL,
  `SOURCE` varchar(20) NOT NULL,
  `DESTINATION` varchar(20) NOT NULL,
  `COUCH_TYPE` varchar(10) NOT NULL,
  `FARE` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`BUS_NO`, `SOURCE`, `DESTINATION`, `COUCH_TYPE`, `FARE`) VALUES
(10, 'Rajshahi', 'Kushtia', 'AC', 600),
(11, 'Dhaka', 'Khulna', 'NonAC', 500),
(15, 'Dhaka', 'Chittagong', 'AC', 1500),
(16, 'Dhaka', 'Cox\'s Bazar', 'NonAC', 1200),
(17, 'Sylhet', 'Dhaka', 'NonAC', 1000),
(21, 'Dhaka', 'Sylhet', 'AC', 1000),
(22, 'Rajshahi', 'Dhaka', 'NonAC', 500),
(23, 'Dhaka', 'Rajshahi', 'AC', 1000),
(27, 'Rajshahi', 'Chittagong', 'NonAC', 1000),
(29, 'Khulna', 'Kushtia', 'NonAC', 400);

-- --------------------------------------------------------

--
-- Table structure for table `cancellation`
--

CREATE TABLE `cancellation` (
  `PNR_NO` int(9) NOT NULL,
  `NO_OF_SEATS` int(8) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `CONTACT_NO` int(10) NOT NULL,
  `STATUS` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cancellation`
--

INSERT INTO `cancellation` (`PNR_NO`, `NO_OF_SEATS`, `ADDRESS`, `CONTACT_NO`, `STATUS`) VALUES
(1703144, 2, 'Mogbazar,Dhaka', 1782064845, 'Yes'),
(1703234, 1, 'Dhanmondi,Dhaka.', 1972345678, 'No'),
(1703456, 4, 'Vodra,Rajshahi', 1879233456, 'Yes'),
(1703624, 2, 'Teligati,Khulna', 1834567891, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `TICKET_NO` int(9) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `AGE` int(4) NOT NULL,
  `SEX` varchar(6) NOT NULL,
  `CONTACT_NO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`TICKET_NO`, `NAME`, `AGE`, `SEX`, `CONTACT_NO`) VALUES
(2903224, 'Eloise', 17, 'Female', 1652398447),
(2904226, 'Charles', 34, 'Male', 1734567023),
(2904259, 'Violet', 37, 'Female', 1734582406),
(2903223, 'Francesca', 16, 'Female', 1734641129),
(2903227, 'David', 45, 'Male', 1782064845),
(2903221, 'Nigel', 34, 'Male', 1834567891),
(2903222, 'Anthony', 17, 'Male', 1879233456),
(2904378, 'Penelope', 44, 'Female', 1924644882),
(2904227, 'George', 16, 'Male', 1942367835),
(2903225, 'Daphne', 23, 'Female', 1953942971),
(2903226, 'Paxton', 29, 'Male', 1972345678);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `PNR_NO` int(9) NOT NULL,
  `NO_OF_SEATS` int(8) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `CONTACT_NO` int(10) NOT NULL,
  `STATUS` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`PNR_NO`, `NO_OF_SEATS`, `ADDRESS`, `CONTACT_NO`, `STATUS`) VALUES
(1703144, 2, 'Mogbazar,Dhaka', 1782064845, 'Unpaid'),
(1703234, 1, 'Dhanmondi,Dhaka', 1972345678, 'Paid'),
(1703256, 4, 'Uposhohor.Sylhet', 1953942971, 'Paid'),
(1703267, 3, 'Mirpur - 10,Dhaka', 1652398447, 'Paid'),
(1703456, 3, 'Vodra,Rajshahi', 1734641129, 'Paid'),
(1703568, 4, 'Banani,Dhaka', 1879233456, 'Unpaid'),
(1703624, 2, 'Teligati,Khulna', 1834567891, 'Unpaid'),
(1703879, 3, 'Kushtia Sadar', 1734567023, 'Paid'),
(1703987, 2, 'Talaimari,Rajshahi', 1942367835, 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `TICKET_NO` int(9) NOT NULL,
  `AGE` int(4) NOT NULL,
  `SEX` varchar(6) NOT NULL,
  `SOURCE` varchar(20) NOT NULL,
  `DESTINATION` varchar(20) NOT NULL,
  `DEP_TIME` varchar(7) NOT NULL,
  `JOURNEY_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`TICKET_NO`, `AGE`, `SEX`, `SOURCE`, `DESTINATION`, `DEP_TIME`, `JOURNEY_DATE`) VALUES
(2903221, 34, 'Male', 'Rajshahi', 'Dhaka', '11:00AM', '2021-07-14'),
(2903222, 17, 'Male', 'Rajshahi', 'Dhaka', '12:00PM', '2021-07-01'),
(2903223, 16, 'Female', 'Dhaka', 'Rajshahi', '11:00AM', '2021-07-14'),
(2903224, 17, 'Female', 'Rajshahi', 'Dhaka', '12:00PM', '2021-07-01'),
(2903225, 23, 'Female', 'Dhaka', 'Sylhet', '09:00AM', '2021-08-04'),
(2903226, 29, 'Male', 'Sylhet', 'Dhaka', '!0:00AM', '2021-07-09'),
(2903227, 45, 'Male', 'Khulna', 'Kushtia', '02:00PM', '2021-07-20'),
(2904226, 34, 'Male', 'Rajshahi', 'Dhaka', '12:00PM', '2021-07-14'),
(2904227, 16, 'Male', 'Rajshahi', 'Dhaka', '12:00PM', '2021-07-01'),
(2904259, 37, 'Female', 'Dhaka', 'Khulna', '2:00PM', '2021-07-14'),
(2904378, 44, 'Female', 'Rajshahi', 'Dhaka', '12:00PM', '2021-07-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`BUS_NO`);

--
-- Indexes for table `cancellation`
--
ALTER TABLE `cancellation`
  ADD KEY `PNR_NO` (`PNR_NO`),
  ADD KEY `cancellation_ibfk_1` (`CONTACT_NO`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`CONTACT_NO`),
  ADD KEY `TICKET_NO` (`TICKET_NO`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`PNR_NO`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`TICKET_NO`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cancellation`
--
ALTER TABLE `cancellation`
  ADD CONSTRAINT `cancellation_ibfk_1` FOREIGN KEY (`CONTACT_NO`) REFERENCES `passenger` (`CONTACT_NO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
