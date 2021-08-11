-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2021 at 07:01 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leave_management_system2`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`) VALUES
(4, 'information science'),
(5, 'computer science'),
(7, 'E&C'),
(8, 'civil'),
(9, 'mechanical');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `department_id` int(11) NOT NULL,
  `address` varchar(2000) NOT NULL,
  `birthday` date NOT NULL,
  `role` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `designation` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `mobile`, `password`, `department_id`, `address`, `birthday`, `role`, `image`, `designation`) VALUES
(1, 'nuthan', 'admin@gmail.com', '1234567890', '123', 2, 'mysore', '0000-00-00', 4, 'pesce.png', ''),
(3, 'principal', 'principal@gmail.com', '', '123', 0, 'mandya', '2001-01-19', 5, 'principal.jpg', ''),
(5, 'IS_HOD', 'ishod@gmail.com', '7090852094', '123', 4, 'mandya', '2001-01-19', 3, '35.jpg', 'hod'),
(9, 'CS_HOD', 'cshod@gmail.com', '1234567890', '123', 5, 'mandya', '1990-02-02', 3, '1.jpg', 'hod'),
(23, 'E&C_HOD', 'echod@gmail.com', '1234567890', '123', 7, 'mandya', '1990-12-19', 3, '3.jpg', 'hod'),
(25, 'civil_hod', 'civilhod@gmail.com', '1234567890', '123', 8, 'mysore', '1990-12-19', 3, '23.jpg', 'hod'),
(26, 'mech_HOD', 'mechhod@gmail.com', '1234567890', '123', 9, 'mandya', '1990-12-19', 3, '58.jpg', 'hod'),
(32, 'suresh', 'suresh@gmail.com', '1234567890', '123', 4, 'mandya', '1980-12-29', 2, '2.jpg', 'associate professor'),
(33, 'sanjay', 'sanjay@gmail.com', '1234567890', '123', 4, 'mandya', '1991-12-20', 2, '22.jpg', 'associate professor'),
(34, 'Geethanjali', 'Geethanjali@gmail.com', '1234567890', '123', 4, 'mandya', '1989-02-02', 2, '11.jpg', 'assistant professor'),
(35, 'prabhakar', 'prabhakar@gmail.com', '1234567890', '123', 4, 'mandya', '1990-02-12', 2, '4.jpg', 'assistant professor'),
(36, 'bramesh', 'bramesh@gmail.com', '1234567890', '123', 4, 'mysore', '1989-02-12', 2, '12.jpg', 'assistant professor'),
(37, 'puttswamy', 'puttswamy@gmail.com', '1234567890', '123', 4, 'mandya', '1991-02-21', 2, '13.jpg', 'assistant professor'),
(38, 'rakshitha', 'rakshitha@gmail.com', '1234567890', '123', 4, 'mysore', '1991-02-02', 2, '8.jpg', 'assistant professor'),
(39, 'rakshith', 'nuthan.jan19@gmail.com', '1234567890', '123', 4, 'mysore', '1994-02-10', 2, '14.jpg', 'assistant professor'),
(40, 'S raghavendra', 'raghavendra@gmail.com', '1234567890', '123', 9, 'mandya', '1994-12-20', 2, 's raghavendra(mech).jpeg', 'assistant professor'),
(41, 'Ullas Nandan kumar s', 'ullasnandan@gmail.com', '1234567890', '123', 9, 'mandya', '1995-02-12', 2, 'ullas nandan(mech).jpeg', 'assistant professor'),
(42, 'HV Ravindra', 'hvravindra@gmail.com', '1234567890', '123', 9, 'mysore', '1988-12-19', 2, 'hv ravindra(mech).jpeg', 'assistant professor'),
(43, 'Guru pavan HR', 'gurupavan@gmail.com', '1234567890', '123', 9, 'mandya', '1990-02-12', 2, 'gurupavan(m).jpeg', 'assistant professor'),
(44, 'Abhishek GB', 'abhishekgb@gmail.com', '1234567890', '123', 8, 'mandya', '1989-02-21', 2, 'abhishek(mech).jpeg', 'assistant professor'),
(45, 'Ashwin CA', 'ashwinca@gmail.com', '1234567890', '123', 8, 'mysore', '1988-02-03', 2, 'ashwin(civil).jpeg', 'assistant professor'),
(46, 'Sumanth S', 'sumanth@gmail.com', '1234567890', '123', 8, 'mandya', '1995-02-19', 2, 'sumant(c).jpeg', 'assistant professor'),
(47, 'Avinash', 'Avinash@gmail.com', '1234567890', '123', 8, 'mandya', '1988-03-22', 2, 'avinash(c).jpeg', 'assistant professor'),
(48, 'R Girish', 'girish@gmail.com', '1234567890', '123', 5, 'mysore', '1987-02-22', 2, 'girish(cs).jpeg', 'assistant professor'),
(49, 'Shwetha MK', 'shweatha@gmail.com', '1234567890', '123', 5, 'mysore', '1987-02-22', 2, 'shweath(cs).jpeg', 'assistant professor'),
(50, 'TM Raghuvendra Babu', 'raghuvendra@gmail.com', '1234567890', '123', 5, 'mandya', '1988-01-19', 2, 'raghavendra(cs).jpeg', 'assistant professor'),
(51, 'Bhavya D', 'bhavya@gmail.com', '1234567890', '123', 5, 'mysore', '1988-05-19', 2, 'bhavya(cs).jpeg', 'assistant professor'),
(52, 'Sanjana BR', 'sanjana@gmail.co', '1234567890', '123', 7, 'mandya', '1996-09-20', 2, 'sahana(ec).jpeg', 'assistant professor'),
(53, 'Chethan L', 'chethan@gmail.com', '1234567890', '123', 7, 'mandya', '1994-04-12', 2, 'chethan(ec).jpeg', 'assistant professor'),
(54, 'Phalanetra HS', 'Phalanetra@gmail.com', '1234567890', '123', 7, 'mysore', '1990-06-21', 2, 'phalanetra(ec).jpeg', 'assistant professor'),
(55, 'Ullas P', 'ullasp@gmail.com', '1234567890', '123', 7, 'mysore', '1990-02-11', 2, 'ullas(ec).jpeg', 'assistant professor');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_leave`
--

CREATE TABLE `faculty_leave` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `leave_from` date NOT NULL DEFAULT current_timestamp(),
  `leave_to` date NOT NULL,
  `leave_description` varchar(25) NOT NULL,
  `leave_status` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `employee_name` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alternate` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_leave`
--

INSERT INTO `faculty_leave` (`id`, `employee_id`, `leave_id`, `leave_from`, `leave_to`, `leave_description`, `leave_status`, `role`, `department_id`, `employee_name`, `email`, `alternate`) VALUES
(40, 36, 4, '2020-02-12', '2020-02-13', 'marriage', 2, 2, 4, 'bramesh', 'bramesh@gmail.com', 'rakshith');

-- --------------------------------------------------------

--
-- Table structure for table `hod_leave`
--

CREATE TABLE `hod_leave` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `leave_description` varchar(20) NOT NULL,
  `leave_status` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `employee_name` varchar(20) NOT NULL,
  `alternate` varchar(40) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hod_leave`
--

INSERT INTO `hod_leave` (`id`, `employee_id`, `leave_id`, `leave_from`, `leave_to`, `leave_description`, `leave_status`, `role`, `department_id`, `employee_name`, `alternate`, `email`) VALUES
(5, 5, 4, '2020-02-22', '2020-02-23', 'marriage', 2, 3, 4, 'IS_HOD', 'GCG', 'ishod@gmail.com'),
(6, 5, 4, '2020-02-12', '2020-02-13', 'marriage', 2, 3, 4, 'IS_HOD', 'bramesh', 'ishod@gmail.com'),
(7, 5, 4, '2020-02-12', '2020-02-13', 'marriage', 2, 3, 4, 'IS_HOD', 'bramesh,rakshith,puttswamy', 'ishod@gmail.com'),
(8, 5, 3, '2020-02-13', '2020-02-14', 'fever', 2, 3, 4, 'IS_HOD', 'bramesh', 'ishod@gmail.com'),
(9, 9, 4, '2020-02-12', '2020-02-13', 'fever', 2, 3, 5, 'CS_HOD', 'bhavana', 'cshod@gmail.com'),
(10, 5, 3, '2020-02-12', '2020-02-13', 'marriage', 2, 3, 4, 'IS_HOD', 'bramesh', 'ishod@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

CREATE TABLE `leave_type` (
  `id` int(11) NOT NULL,
  `leave_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_type`
--

INSERT INTO `leave_type` (`id`, `leave_type`) VALUES
(2, 'Casual'),
(3, 'Earned'),
(4, 'Sick');

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

CREATE TABLE `poll` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `image` varchar(20) NOT NULL,
  `feedback` varchar(20) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `poll`
--

INSERT INTO `poll` (`id`, `name`, `email`, `image`, `feedback`, `department_id`) VALUES
(24, 'IS_HOD', 'ishod@gmail.com', '35.jpg', 'good', 4),
(25, 'IS_HOD', 'ishod@gmail.com', '35.jpg', 'average', 4),
(26, 'IS_HOD', 'ishod@gmail.com', '35.jpg', 'good', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_leave`
--
ALTER TABLE `faculty_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hod_leave`
--
ALTER TABLE `hod_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_type`
--
ALTER TABLE `leave_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll`
--
ALTER TABLE `poll`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `faculty_leave`
--
ALTER TABLE `faculty_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `hod_leave`
--
ALTER TABLE `hod_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `leave_type`
--
ALTER TABLE `leave_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `poll`
--
ALTER TABLE `poll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
