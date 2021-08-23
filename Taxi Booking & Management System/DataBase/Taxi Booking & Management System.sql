-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2021 at 04:56 PM
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
-- Database: `taxi booking & management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'kavan', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `type` varchar(8) NOT NULL,
  `req_date` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `pickup_point` varchar(100) NOT NULL,
  `reasons` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int(14) NOT NULL,
  `confirmation` int(11) NOT NULL,
  `veh_reg` varchar(255) NOT NULL,
  `driverid` int(11) NOT NULL,
  `finished` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `name`, `username`, `type`, `req_date`, `destination`, `pickup_point`, `reasons`, `email`, `mobile`, `confirmation`, `veh_reg`, `driverid`, `finished`) VALUES
(1, 'kavan k', 'kavan', 'suv', '01/11/2021', 'Malleshwaram', 'Rajajinagar', 'personal', 'kavan@gmail.com', 1234567890, 1, 'ga-259723', 22, 1),
(2, 'melvin saji', 'melvin', 'sedan', '01/11/2021', 'Malleshwaram', 'Rajajinagar', 'personal', 'melvinsaji5@gmail.com', 1234567890, 1, 'cho- 301294', 21, 1),
(3, 'abc a', 'abc', 'suv', '01/12/2021', 'thirumenahalli', 'yelahanka', 'personal', 'abc@yahoo.com', 1234568900, 1, 'ga-259723', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driverid` int(11) NOT NULL,
  `drname` varchar(255) NOT NULL,
  `drjoin` varchar(255) NOT NULL,
  `drmobile` varchar(20) NOT NULL,
  `drnid` varchar(30) NOT NULL,
  `drlicense` varchar(30) NOT NULL,
  `drlicensevalid` varchar(100) NOT NULL,
  `draddress` varchar(255) NOT NULL,
  `drphoto` varchar(30) NOT NULL,
  `dr_available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driverid`, `drname`, `drjoin`, `drmobile`, `drnid`, `drlicense`, `drlicensevalid`, `draddress`, `drphoto`, `dr_available`) VALUES
(1, 'fahim', '03/04/2018', '01717172398712', '91238912093097812', '1093q098091839', '03/26/2018', 'Rajajinagar bangalore', 'nsf.jpg', 0),
(2, 'Arman', '03/04/2018', '0123084982', 'kls3893809839082', '1093q098091839', '03/04/2018', 'JP Nagar Bangalore', 'rkb.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `username`, `password`, `admin`) VALUES
(1, 'kavan', 'k', 'kavan@gmail.com', 'kavan', 'kavan', 0),
(2, 'melvin', 'saji', 'melvinsaji5@gmail.com', 'melvin', 'melvin', 0),
(3, 'fouzan', 'a', 'fouzan@gmail.com', 'fouzan', '1234', 0),
(4, 'abc', 'a', 'abc@yahoo.com', 'abc', 'abc', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `veh_id` int(11) NOT NULL,
  `veh_reg` varchar(100) NOT NULL,
  `veh_type` varchar(20) NOT NULL,
  `chesisno` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `veh_color` varchar(100) NOT NULL,
  `veh_regdate` varchar(100) NOT NULL,
  `veh_description` varchar(255) NOT NULL,
  `veh_photo` varchar(255) NOT NULL,
  `veh_available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`veh_id`, `veh_reg`, `veh_type`, `chesisno`, `brand`, `veh_color`, `veh_regdate`, `veh_description`, `veh_photo`, `veh_available`) VALUES
(1, 'ga-259723', 'suv', '101-12303.20201', 'corolla', 'Black', '25/03.17', 'This is a black car.', '1.jpg', 0),
(2, 'cho- 301294', 'suv', '101-12309.23981', 'axio', 'white', '26.9.15', 'This is a white car. ', '2.jpg', 0),
(3, 'go-190312', 'sedan', '101321-138713.3291823', 'Corolla', 'Red', '10/17/2017', ' This is a red car.', 'images.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driverid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`veh_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driverid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `veh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
