-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2023 at 08:42 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coursework database`
--

-- --------------------------------------------------------

--
-- Table structure for table `arcade_machine_information`
--

CREATE TABLE `arcade_machine_information` (
  `MACHINE_NUMBER` int(11) NOT NULL,
  `GAME` varchar(255) NOT NULL,
  `PEGI` int(11) NOT NULL,
  `FLOOR` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arcade_machine_information`
--

INSERT INTO `arcade_machine_information` (`MACHINE_NUMBER`, `GAME`, `PEGI`, `FLOOR`, `year`, `date`) VALUES
(13, 'poker', 0, 2, 2002, NULL),
(23, 'space invader', 0, 1, 2001, NULL),
(45, 'mario', 0, 2, 2004, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `BOOKING_ID` int(11) NOT NULL,
  `S_NO` int(11) NOT NULL,
  `C_ID` varchar(255) NOT NULL,
  `MEMBER_NAME` text NOT NULL,
  `FEE` varchar(255) NOT NULL,
  `PNP` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`BOOKING_ID`, `S_NO`, `C_ID`, `MEMBER_NAME`, `FEE`, `PNP`, `year`) VALUES
(1, 1, '123', 'manoj tamang', 'no', 0, 2021),
(2, 1, '123', 'sony gurung', '100', 0, 2021),
(3, 1, '123', 'hemant puri', '90', 0, 2021),
(4, 1, '123', 'hhitesh magar', '100', 0, 2021),
(15255, 0, '[value-3]', '[value-4]', '[value-5]', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `console`
--

CREATE TABLE `console` (
  `CONSOLE_NUMBER` int(11) NOT NULL,
  `CONSOLE_TYPE` varchar(255) NOT NULL,
  `QTY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `console`
--

INSERT INTO `console` (`CONSOLE_NUMBER`, `CONSOLE_TYPE`, `QTY`) VALUES
(1, 'ps1', 3),
(2, 'ps2', 2),
(3, 'ps4', 3),
(4, 'ps2', 2);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUSTOMER_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(255) NOT NULL,
  `LAST_NAME` varchar(255) NOT NULL,
  `ADDRESS` varchar(255) NOT NULL,
  `MEMBER_ID` int(11) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `JOINED_DATE` date NOT NULL,
  `session-no` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUSTOMER_ID`, `FIRST_NAME`, `LAST_NAME`, `ADDRESS`, `MEMBER_ID`, `DATE_OF_BIRTH`, `JOINED_DATE`, `session-no`) VALUES
(1234, 'manoj', 'tamang', 'dillibazar,ktm', 1, '1999-03-01', '2021-02-01', 0),
(1235, 'sony', 'gurung', 'putalisadak,ktm', 2, '2002-02-14', '2021-03-25', 0),
(1236, 'hemant', 'puri', 'maitidevi,ktm', 3, '1999-04-25', '2021-01-23', 0),
(1237, 'hitesh', 'magar', 'gyaneshwor,ktm', 4, '1970-02-14', '2021-02-05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `floor`
--

CREATE TABLE `floor` (
  `FLOOR_NO` int(11) NOT NULL,
  `PRICE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `floor`
--

INSERT INTO `floor` (`FLOOR_NO`, `PRICE`) VALUES
(1, 100),
(2, 50),
(3, 110),
(4, 80);

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `GAME_ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PEGI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`GAME_ID`, `NAME`, `PEGI`) VALUES
(1, 'spiro', 0),
(2, 'crash bandicoot', 0),
(3, 'spiro', 0),
(4, 'crash bandicoot', 0);

-- --------------------------------------------------------

--
-- Table structure for table `membership_type`
--

CREATE TABLE `membership_type` (
  `MT_ID` int(11) NOT NULL,
  `MEMBERSHIP_TYPE` varchar(255) NOT NULL,
  `FEE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `membership_type`
--

INSERT INTO `membership_type` (`MT_ID`, `MEMBERSHIP_TYPE`, `FEE`) VALUES
(1, 'STANDERD', 100),
(2, 'PREMIUM', 1650),
(3, 'STANDERD', 1650),
(4, 'PREMIUM', 1650);

-- --------------------------------------------------------

--
-- Table structure for table `pivot`
--

CREATE TABLE `pivot` (
  `GAME_ID` int(11) NOT NULL,
  `CONSOLE_NO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `SESSION_ID` int(11) NOT NULL,
  `SESSION_DAY` varchar(255) NOT NULL,
  `SESSION_START` time NOT NULL,
  `SESSION_END` time NOT NULL,
  `SESSION_TYPE` int(11) NOT NULL,
  `FLOOR` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`SESSION_ID`, `SESSION_DAY`, `SESSION_START`, `SESSION_END`, `SESSION_TYPE`, `FLOOR`) VALUES
(1, 'sunday', '00:00:11', '00:00:06', 0, 1),
(2, 'sunday', '00:00:11', '00:00:06', 0, 2),
(3, 'saturday', '00:00:11', '00:00:06', 0, 1),
(4, 'monday', '00:00:06', '00:00:09', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `session_no`
--

CREATE TABLE `session_no` (
  `SESSION_NO` int(11) NOT NULL,
  `DATE` date NOT NULL,
  `CONSOLE_NUMBER` int(11) NOT NULL,
  `QTY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `STAFF_NO` int(11) NOT NULL,
  `STAFF_NAME` varchar(255) NOT NULL,
  `ROLE` varchar(255) NOT NULL,
  `SESSION_NUMBER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`STAFF_NO`, `STAFF_NAME`, `ROLE`, `SESSION_NUMBER`) VALUES
(3, 'kiran rana', 'cafe', 1),
(4, 'sudeep koirala', 'maintanance', 1),
(5, 'ramesh maharjan', 'counter', 1),
(6, 'pooja mishra', 'counter', 2),
(7, 'jabbed merza', 'maintenance', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arcade_machine_information`
--
ALTER TABLE `arcade_machine_information`
  ADD PRIMARY KEY (`MACHINE_NUMBER`),
  ADD KEY `FLOOR` (`FLOOR`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BOOKING_ID`),
  ADD KEY `C_ID` (`C_ID`),
  ADD KEY `S_NO` (`S_NO`);

--
-- Indexes for table `console`
--
ALTER TABLE `console`
  ADD PRIMARY KEY (`CONSOLE_NUMBER`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUSTOMER_ID`),
  ADD KEY `MEMBER_ID` (`MEMBER_ID`);

--
-- Indexes for table `floor`
--
ALTER TABLE `floor`
  ADD PRIMARY KEY (`FLOOR_NO`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`GAME_ID`);

--
-- Indexes for table `membership_type`
--
ALTER TABLE `membership_type`
  ADD PRIMARY KEY (`MT_ID`);

--
-- Indexes for table `pivot`
--
ALTER TABLE `pivot`
  ADD KEY `GAME_ID` (`GAME_ID`),
  ADD KEY `CONSOLE_NO` (`CONSOLE_NO`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`SESSION_ID`),
  ADD KEY `SESSION_ID` (`SESSION_ID`),
  ADD KEY `FLOOR` (`FLOOR`),
  ADD KEY `FLOOR_2` (`FLOOR`);

--
-- Indexes for table `session_no`
--
ALTER TABLE `session_no`
  ADD KEY `SESSION_NO` (`SESSION_NO`),
  ADD KEY `CONSOLE_NUMBER` (`CONSOLE_NUMBER`),
  ADD KEY `CONSOLE_NUMBER_2` (`CONSOLE_NUMBER`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`STAFF_NO`),
  ADD KEY `SESSION_NUMBER` (`SESSION_NUMBER`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arcade_machine_information`
--
ALTER TABLE `arcade_machine_information`
  MODIFY `MACHINE_NUMBER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `BOOKING_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15256;

--
-- AUTO_INCREMENT for table `console`
--
ALTER TABLE `console`
  MODIFY `CONSOLE_NUMBER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15255;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `GAME_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `membership_type`
--
ALTER TABLE `membership_type`
  MODIFY `MT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `SESSION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `STAFF_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arcade_machine_information`
--
ALTER TABLE `arcade_machine_information`
  ADD CONSTRAINT `arcade_machine_information_ibfk_1` FOREIGN KEY (`FLOOR`) REFERENCES `floor` (`FLOOR_NO`);

--
-- Constraints for table `console`
--
ALTER TABLE `console`
  ADD CONSTRAINT `console_ibfk_1` FOREIGN KEY (`CONSOLE_NUMBER`) REFERENCES `session_no` (`CONSOLE_NUMBER`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `booking` (`BOOKING_ID`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`MEMBER_ID`) REFERENCES `membership_type` (`MT_ID`);

--
-- Constraints for table `floor`
--
ALTER TABLE `floor`
  ADD CONSTRAINT `floor_ibfk_1` FOREIGN KEY (`FLOOR_NO`) REFERENCES `session` (`FLOOR`);

--
-- Constraints for table `pivot`
--
ALTER TABLE `pivot`
  ADD CONSTRAINT `pivot_ibfk_1` FOREIGN KEY (`GAME_ID`) REFERENCES `game` (`GAME_ID`),
  ADD CONSTRAINT `pivot_ibfk_2` FOREIGN KEY (`CONSOLE_NO`) REFERENCES `console` (`CONSOLE_NUMBER`);

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_ibfk_1` FOREIGN KEY (`SESSION_ID`) REFERENCES `booking` (`S_NO`);

--
-- Constraints for table `session_no`
--
ALTER TABLE `session_no`
  ADD CONSTRAINT `session_no_ibfk_1` FOREIGN KEY (`SESSION_NO`) REFERENCES `session` (`SESSION_ID`),
  ADD CONSTRAINT `session_no_ibfk_2` FOREIGN KEY (`CONSOLE_NUMBER`) REFERENCES `console` (`CONSOLE_NUMBER`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`SESSION_NUMBER`) REFERENCES `session` (`SESSION_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
