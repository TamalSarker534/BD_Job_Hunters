-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2022 at 06:29 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `careerbuilder`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `applicant` varchar(100) NOT NULL,
  `recruitant` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `jobid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `applicant`, `recruitant`, `status`, `jobid`) VALUES
(11, 'lelin64@gmail.com', 'alokcd604@gmail.com', 'Accepted', 3),
(12, 'lelin64@gmail.com', 'none', 'pending', 4),
(13, 'dipu420@gmail.com', 'alokcd604@gmail.com', 'Rejected', 3),
(14, 'dipu420@gmail.com', 'none', 'pending', 4),
(15, 'dipu420@gmail.com', 'none', 'pending', 5),
(16, 'lelin64@gmail.com', 'none', 'pending', 5),
(22, 'chokku35@gmail.com', 'alokcd604@gmail.com', 'Accepted', 3),
(23, 'chokku35@gmail.com', 'none', 'pending', 7),
(24, 'chokku35@gmail.com', 'none', 'pending', 5),
(25, 'chokku35@gmail.com', 'none', 'pending', 14),
(26, 'chokku35@gmail.com', 'none', 'pending', 4);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_name` varchar(100) NOT NULL,
  `details` varchar(1000) NOT NULL,
  `ratings` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_name`, `details`, `ratings`) VALUES
('APEX', 'none', 5.6),
('BRAC', 'none', 4.5),
('SQUARE', 'none', 4.8),
('YOUNGONE', 'NONE', 4.8);

-- --------------------------------------------------------

--
-- Table structure for table `cv`
--

CREATE TABLE `cv` (
  `fullname` varchar(100) NOT NULL,
  `education` varchar(200) NOT NULL,
  `skills` varchar(200) NOT NULL,
  `language` varchar(200) NOT NULL,
  `certification` varchar(200) NOT NULL,
  `experience` varchar(200) NOT NULL,
  `interest` varchar(100) NOT NULL,
  `reference` varchar(100) NOT NULL,
  `links` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cv`
--

INSERT INTO `cv` (`fullname`, `education`, `skills`, `language`, `certification`, `experience`, `interest`, `reference`, `links`, `username`) VALUES
('Enamul Haque', 'Bsc In CSE', 'web developer', 'HTML CSS JS Bootstrap', 'codertrust', '2 Year', 'none', 'Self', 'https://www.facebook.com/whereisrafti', 'chokku35@gmail.com'),
('lelin debnath', 'Bsc in Physics', 'IT', 'C++', 'none', 'none', 'none', 'self', 'https://www.facebook.com/lelin.debnath', 'lelin64@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `jobid` int(11) NOT NULL,
  `jobtitle` varchar(100) NOT NULL,
  `jobtype` varchar(100) NOT NULL,
  `jobdescription` varchar(1000) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `jobkeywords` varchar(100) NOT NULL,
  `boosted` varchar(100) NOT NULL,
  `deadline` date NOT NULL,
  `recruiter` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`jobid`, `jobtitle`, `jobtype`, `jobdescription`, `salary`, `location`, `jobkeywords`, `boosted`, `deadline`, `recruiter`, `company_name`) VALUES
(3, 'Manager', 'Full Time', 'none', '25000', 'Dhaka', 'accounting', '1', '2022-01-17', 'alokcd604@gmail.com', 'BRAC'),
(4, 'JR Developer', 'Full time', 'none', '26000', 'Dhaka', 'IT', '0', '2022-01-17', 'alokcd604@gmail.com', 'SQUARE'),
(5, 'GROUND WORKER', 'Full time', 'none', '15000', 'CTG', 'GARMENTS', '0', '2022-01-22', 'amitapon241@gmail.com', 'YOUNGONE'),
(7, 'JR Developer', 'Full time', 'none', '26000', 'CTG', 'IT', '0', '2022-01-24', 'enamul45@gmail.com', 'YOUNGONE'),
(14, 'Sellsman', 'Part Time', 'none', '15000', 'NARAYANGONJ', 'IT', '0', '2022-01-08', 'enamul45@gmail.com', 'APEX'),
(16, 'Market Distribuotor', 'Full Time', 'none', '15000', 'Dhaka', ' marketing', '0', '2022-01-23', 'alokcd604@gmail.com', 'BRAC'),
(17, 'Sellsman', 'Part Time', 'none', '26000', 'CTG', 'GARMENTS', '0', '2022-01-12', 'alokcd604@gmail.com', 'YOUNGONE');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `messageid` int(11) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `senton` date NOT NULL,
  `sender` varchar(100) NOT NULL,
  `receiver` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`messageid`, `message`, `senton`, `sender`, `receiver`) VALUES
(32, '  \r\n Hi Bro', '2022-01-06', 'alokcd604@gmail.com', 'alokcd604@gmail.com'),
(33, '  \r\n  dfd', '2022-01-07', 'chokku35@gmail.com', 'lelin64@gmail.com'),
(34, '  \r\n  Hi Dada', '2022-01-07', 'chokku35@gmail.com', 'alokcd604@gmail.com'),
(35, '  whats up', '2022-01-07', 'chokku35@gmail.com', 'alokcd604@gmail.com'),
(36, '  \r\n  hei buddy how are you?', '2022-01-07', 'alokcd604@gmail.com', 'chokku35@gmail.com'),
(37, '  Hi Dada\r\n  ', '2022-01-08', 'chokku35@gmail.com', 'dipu420@gmail.com'),
(38, '  Fine How about You?', '2022-01-08', 'chokku35@gmail.com', 'alokcd604@gmail.com'),
(39, '  fine.hope you are doing well', '2022-01-11', 'alokcd604@gmail.com', 'chokku35@gmail.com'),
(40, '  \r\n  hi brother', '2022-01-11', 'alokcd604@gmail.com', 'dipu420@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `notificatiion`
--

CREATE TABLE `notificatiion` (
  `notificationid` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `receiver` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notificatiion`
--

INSERT INTO `notificatiion` (`notificationid`, `type`, `details`, `receiver`) VALUES
(35, 'confirmation', 'Congratulations!!! You have been Selected for the Manager post of BRAC Company', 'lelin64@gmail.com'),
(36, 'confirmation', 'You have  Selected lelin64@gmail.com for the Manager  post of BRAC Company', 'alokcd604@gmail.com'),
(37, 'confirmation', 'Your Application for the Manager post of BRAC Company has been Rejected', 'dipu420@gmail.com'),
(39, 'confirmation', 'Congratulations!!! You have been Selected for the Manager post of BRAC Company', 'chokku35@gmail.com'),
(40, 'confirmation', 'You have  Selected chokku35@gmail.com for the Manager  post of BRAC Company', 'alokcd604@gmail.com'),
(41, 'boost', 'You have Boosted  the Job post for dfdf of BRAC Company', 'alokcd604@gmail.com'),
(42, 'boost', 'You have Boosted  the Job post for Manager of BRAC Company', 'alokcd604@gmail.com'),
(49, 'subscriebe', 'You have Subcribed weekly Subscription till 2022-01-13 For 300 Taka. Transaction id is 89c0bc549b6dbd68d2fdfdd2f640c2c0. Please keep this id and Pay us Throw bkash', 'enamul45@gmail.com'),
(51, 'subscriebe', 'You have Subcribed weekly Subscription till 2022-01-13 For 300 Taka. Transaction id is 44710733. Please keep this id and Pay us Throw bkash', 'enamul45@gmail.com'),
(52, 'apply', 'You have applied for the  Sellsman post of APEX company ', 'chokku35@gmail.com'),
(53, 'apply', 'You have applied for the  JR Developer post of SQUARE company ', 'chokku35@gmail.com'),
(54, 'boost', 'You have Boosted  the Job post for Manager of BRAC Company', 'alokcd604@gmail.com'),
(55, 'subscriebe', 'You have Subcribed monthly Subscription till 2022-02-11 For 1000 Taka. Transaction id is 1607133853. Please keep this id and Pay us Throw bank', 'alokcd604@gmail.com'),
(56, 'subscriebe', 'You have Subcribed weekly Subscription till 2022-01-18 For 300 Taka. Transaction id is 1145502766. Please keep this id and Pay us Throw bkash', 'enamul45@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `txnId` varchar(100) NOT NULL,
  `paymentmethod` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `paytime` date NOT NULL,
  `scheme` varchar(100) NOT NULL,
  `expire` date NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`txnId`, `paymentmethod`, `amount`, `paytime`, `scheme`, `expire`, `username`) VALUES
('1607133853', 'bank', 1000, '2022-01-11', 'monthly', '2022-02-11', 'alokcd604@gmail.com'),
('1145502766', 'bkash', 300, '2022-01-11', 'weekly', '2022-01-18', 'enamul45@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `recruiter`
--

CREATE TABLE `recruiter` (
  `username` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recruiter`
--

INSERT INTO `recruiter` (`username`, `company_name`) VALUES
('abd123@gmail.com', 'APEX'),
('alokcd604@gmail.com', 'BRAC'),
('amitapon241@gmail.com', 'YOUNGONE'),
('enamul45@gmail.com', 'YOUNGONE');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `password` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `usertype` varchar(100) NOT NULL,
  `dateofbirth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `name`, `location`, `gender`, `contact`, `usertype`, `dateofbirth`) VALUES
('abd123@gmail.com', 1234, 'Mohammad Abdullah', 'Dhaka', 'male', '01677920302', 'recruiter', '2022-01-01'),
('alokcd604@gmail.com', 1234, 'Alok Das', 'Dhaka', 'male', '01677920302', 'recruiter', '2022-01-01'),
('amitapon241@gmail.com', 1234, 'TAPON DAS', 'Dhaka', 'male', '01872435678', 'recruiter', '2022-01-01'),
('chokku35@gmail.com', 1234, 'Enamul rafti', 'Dhaka', 'male', '01677920302', 'applicant', '2022-01-01'),
('dipu420@gmail.com', 1234, 'Sk Hasan Mahmud', 'Sathkira', 'male', '01677920302', 'applicant', '2022-01-01'),
('enamul45@gmail.com', 1234, 'Emon HOQUE', 'CTG', 'male', '01770018693', 'recruiter', '2022-01-08'),
('lelin64@gmail.com', 1234, 'lelin Debnath', 'Lakshmipur', 'male', '01770018693', 'applicant', '2022-01-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobid` (`jobid`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_name`);

--
-- Indexes for table `cv`
--
ALTER TABLE `cv`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jobid`),
  ADD KEY `recruiter` (`recruiter`),
  ADD KEY `company_name` (`company_name`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`messageid`),
  ADD KEY `receiver` (`receiver`);

--
-- Indexes for table `notificatiion`
--
ALTER TABLE `notificatiion`
  ADD PRIMARY KEY (`notificationid`),
  ADD KEY `receiver` (`receiver`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD KEY `username` (`username`);

--
-- Indexes for table `recruiter`
--
ALTER TABLE `recruiter`
  ADD PRIMARY KEY (`username`),
  ADD KEY `company_name` (`company_name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jobid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `messageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `notificatiion`
--
ALTER TABLE `notificatiion`
  MODIFY `notificationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`jobid`) REFERENCES `jobs` (`jobid`);

--
-- Constraints for table `cv`
--
ALTER TABLE `cv`
  ADD CONSTRAINT `cv_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`);

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`recruiter`) REFERENCES `recruiter` (`username`),
  ADD CONSTRAINT `jobs_ibfk_2` FOREIGN KEY (`company_name`) REFERENCES `company` (`company_name`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`receiver`) REFERENCES `user` (`username`);

--
-- Constraints for table `notificatiion`
--
ALTER TABLE `notificatiion`
  ADD CONSTRAINT `notificatiion_ibfk_1` FOREIGN KEY (`receiver`) REFERENCES `user` (`username`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`);

--
-- Constraints for table `recruiter`
--
ALTER TABLE `recruiter`
  ADD CONSTRAINT `recruiter_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`),
  ADD CONSTRAINT `recruiter_ibfk_2` FOREIGN KEY (`company_name`) REFERENCES `company` (`company_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
