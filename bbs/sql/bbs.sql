-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2021 at 01:39 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sr no` int(3) NOT NULL,
  `payer` varchar(30) NOT NULL,
  `payee` varchar(30) NOT NULL,
  `amount` int(6) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sr no`, `payer`, `payee`, `amount`, `datetime`) VALUES
(1, 'Ravi Kapoor', 'Angela Jacob', 10000, '2021-07-07 04:43:16'),
(2, 'Meg Brown', 'Allison Day', 780, '2021-07-07 04:44:06'),
(3, 'Dave Scott', 'Philip Martin', 560, '2021-07-07 04:44:22'),
(4, 'Allison Day', 'Pete Miller', 345, '2021-07-07 04:44:35'),
(5, 'Salim Khan', 'Angela Jacob', 1930, '2021-07-07 04:45:04'),
(6, 'Ravi Kapoor', 'Philip Martin', 9050, '2021-07-07 04:45:26'),
(7, 'Philip Martin', 'Dave Scott', 490, '2021-07-07 04:45:50'),
(8, 'Angela Jacob', 'Allison Day', 350, '2021-07-07 04:46:07'),
(9, 'Pete Miller', 'Allison Day', 1300, '2021-07-07 04:46:25'),
(10, 'Rama Nair', 'Angela Jacob', 6800, '2021-07-07 04:46:40'),
(11, 'Maria Tom', 'Meg Brown', 145, '2021-07-07 04:46:52'),
(12, 'Salim Khan', 'Philip Martin', 2000, '2021-07-07 05:03:03'),
(13, 'Meg Brown', 'Allison Day', 150, '2021-07-07 05:12:10'),
(14, 'Ravi Kapoor', 'Angela Jacob', 2500, '2021-07-07 07:37:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(101, 'Meg Brown', 'megbrown@gmail.com', 49215),
(102, 'Dave Scott', 'davescott@gmail.com', 23330),
(103, 'Allison Day', 'alliday@gmail.com', 32885),
(104, 'Salim Khan', 'salimkhan@gmail.com', 80370),
(105, 'Ravi Kapoor', 'ravikapoor@gmail.com', 179250),
(106, 'Philip Martin', 'philmartin@gmail.com', 20120),
(107, 'Angela Jacob', 'angejacob@gmail.com', 25080),
(108, 'Pete Miller', 'petemiller@gmail.com', 64945),
(109, 'Rama Nair', 'ramanair@gmail.com', 118200),
(110, 'Maria Tom', 'mariatom@gmail.com', 15655);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sr no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sr no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
