-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 19, 2026 at 03:08 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `messsage` text NOT NULL,
  `creat_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `messsage`, `creat_at`) VALUES
(5, 'Muhummad Taha', 'm63676458@gmail.com', 'Good', 'ad', '2026-07-19 09:40:04'),
(7, 'Muhummad Taha', 'Taha@gmail.com', 'Free Fire', 'Free Fire is good game', '2026-07-19 09:41:36'),
(8, 'Muhummad Taha', 'muhammad@gmail.com', 'asd', 'sada', '2026-07-19 09:45:23'),
(9, 'Muhummad Taha', 'muhamma@gmail.com', 'Good', 'asd', '2026-07-19 09:51:48'),
(10, 'Abdul Jalil', 'adbul@gmail.com', 'Portfolio', 'Nice Portfolio', '2026-07-19 09:53:02'),
(11, 'Abdul Jalil', 'jalil@gmail.com', 'Good', 'I like your work', '2026-07-19 09:54:18'),
(12, 'Sadaf Mushtaq', 'sadaf@gmail.com', 'Portfolio', 'sa', '2026-07-19 12:56:05'),
(13, 'Riaz Ahmed', 'riaz@gmail.com', 'Excellent', 'I like this portfolio', '2026-07-19 12:58:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
