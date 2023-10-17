-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2023 at 10:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'ayanika.bera.2012@gmail.com', '$2y$10$I28CWRpB1icTRrOmNYs1FeberS1RzcJZWmtzy8WPO04ijKlBKcL6a', '2023-10-17 10:57:37'),
(2, 'agarwalshreyansh121@gmail.com', '$2y$10$hozlXRf4YE9jx0gG.pUIGu39F2B7tLkGb3TTiQq9YbcmdPK1cdJfO', '2023-10-17 10:59:06'),
(3, 'admin@admin.com', '$2y$10$C2EMX8kDLDw5X9Q/hNl6b.pKfAoRArd9UKf7gRhiNwIjLYtmtRN.a', '2023-10-17 11:12:07'),
(4, 'ayanika.bera2021@iem.edu.in', '$2y$10$SYq8UWcZKklt1/TtVFxeruqf7r.cYlS1JZHQwrK9KOw49X2Z96W4O', '2023-10-17 11:16:31'),
(6, 'ayanika@gmail.com', '$2y$10$TQwprTwd/iFKKdbFf4DmaOxD3Lz3BME3D8oYWaDRS449kw9G3Lq3O', '2023-10-17 21:26:33'),
(7, 'parul@gmail.com', '$2y$10$1wd3c83cZnrW70KIPULygumog3q1no9eCv2mSpX3ZdmBXmEu7.Xqa', '2023-10-17 21:31:07'),
(8, 'vmantri@gmail.com', '$2y$10$LdMU6ll/5yAk/7E1EA4BSOj5oSAop4MtPKDxwKdPip3Q5a22P/CTq', '2023-10-17 21:33:43'),
(9, 'abcd@gmail.com', '$2y$10$72Dx9B.GDxXmcluNgwTr2eoQvtQs0WzTpseKmn8BW3kJBJNtSukqG', '2023-10-17 22:09:55'),
(10, 'qwerty@gmail.com', '$2y$10$ryqCNX3x2w/y8wytrpEB7.UsPldDda.X8sE.Gfb19mNuWDFLnJ6GW', '2023-10-17 22:14:55'),
(11, 'ayanikabera@gmail.com', '$2y$10$Fbh2nM/y5cibLr/449XeCePLqw8/xNEb.E9Zp8nVrgyCNoDBvQJpq', '2023-10-17 22:21:55');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
