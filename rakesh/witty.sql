-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2018 at 01:36 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `witty`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` longtext,
  `passwords` longtext,
  `email` text,
  `mobile` bigint(20) DEFAULT NULL,
  `address` longtext,
  `gender` text,
  `dob` text,
  `security_question` longtext,
  `security_ans` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `passwords`, `email`, `mobile`, `address`, `gender`, `dob`, `security_question`, `security_ans`) VALUES
(33, 'Rakesh kp', 'kp', 'rakesh@svastera.com', 8553233274, 'no 97 near 1st block  avalahalli, near hm world city jp nagar 9th phase', '18', 'male', 'undef', 'undef'),
(34, 'Rakesh R', 'kp', 'rakeshvtv01@gmail.com', 9964202911, 'no 97 near 1st block  avalahalli, near hm world city jp nagar 9th phase', 'male', '18/09/1993', 'undef', 'undef'),
(35, 'Rakesh R', 'kp', 'rakeshvtv18@gmail.com', 9964202911, 'no 97 near 1st block  avalahalli, near hm world city jp nagar 9th phase', 'male', '18', 'undef', 'undef');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
