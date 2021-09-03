-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2021 at 01:59 PM
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
-- Database: `q1_1703122`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cust_id` int(4) NOT NULL,
  `Cust_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cust_id`, `Cust_name`) VALUES
(31703001, 'Susan'),
(31703002, 'Becker'),
(31703003, 'Trevor'),
(31703004, 'Jabba'),
(31703005, 'Fontaine'),
(31703006, 'Midget'),
(31703007, 'Venteresca'),
(31703008, 'Robert'),
(31703009, 'Vittoria'),
(31703010, 'Moratati');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(3) NOT NULL,
  `item_name` varchar(15) NOT NULL,
  `price` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `price`) VALUES
(91001, 'SSD', 3000),
(91002, 'HDD', 3700),
(91003, 'Speaker', 4000),
(91004, 'Mouse', 300),
(91005, 'Keyboard', 450),
(91006, 'Mousepad', 250),
(91007, 'RAM', 2200),
(91008, 'Graphicscard', 5700),
(91009, 'processor', 15500),
(91010, 'CPUCooler', 2800);

-- --------------------------------------------------------

--
-- Table structure for table `relation_r_i`
--

CREATE TABLE `relation_r_i` (
  `Cust_id` int(4) NOT NULL,
  `item_id` int(3) NOT NULL,
  `bill_no` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `relation_r_i`
--

INSERT INTO `relation_r_i` (`Cust_id`, `item_id`, `bill_no`) VALUES
(31703006, 91007, 52001),
(31703006, 91004, 52004),
(31703009, 91003, 52002),
(31703009, 91006, 52006),
(31703002, 91005, 52010),
(31703006, 91001, 52003),
(31703001, 91008, 52007),
(31703007, 91009, 52009),
(31703004, 91002, 52005),
(31703007, 91010, 52008);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `bill_no` int(4) NOT NULL,
  `bill_date` date NOT NULL,
  `qty_sold` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`bill_no`, `bill_date`, `qty_sold`) VALUES
(52001, '2021-07-16', 2),
(52002, '2021-07-17', 1),
(52003, '2020-05-16', 1),
(52004, '2021-07-18', 3),
(52005, '2021-08-09', 1),
(52006, '2021-08-05', 2),
(52007, '2020-07-16', 1),
(52008, '2020-08-15', 1),
(52009, '2021-06-14', 1),
(52010, '2020-06-13', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cust_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `relation_r_i`
--
ALTER TABLE `relation_r_i`
  ADD KEY `Cust_id_fk` (`Cust_id`),
  ADD KEY `item_id_fk` (`item_id`),
  ADD KEY `bill_no_fk` (`bill_no`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`bill_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Cust_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31703011;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `relation_r_i`
--
ALTER TABLE `relation_r_i`
  ADD CONSTRAINT `relation_r_i_fk1` FOREIGN KEY (`Cust_id`) REFERENCES `customer` (`Cust_id`),
  ADD CONSTRAINT `relation_r_i_fk2` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
  ADD CONSTRAINT `relation_r_i_fk3` FOREIGN KEY (`bill_no`) REFERENCES `sale` (`bill_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
