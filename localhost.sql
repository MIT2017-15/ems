-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 21, 2019 at 07:29 AM
-- Server version: 5.7.23
-- PHP Version: 7.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--
CREATE DATABASE IF NOT EXISTS `ems` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ems`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `body`, `created_at`) VALUES
(1, 'Post One', 'post-one', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In vel lobortis enim, dictum varius dolor. Nulla elit purus, tincidunt vel mattis eu, efficitur ac magna. Sed vehicula, orci vitae malesuada pretium, nisl est facilisis purus, quis cursus lorem eros sit amet arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus varius posuere justo, quis tempor urna pretium in. Donec vulputate interdum lorem. In porta turpis tincidunt augue congue aliquam. Fusce facilisis ut lacus a molestie. Vestibulum auctor magna vitae dui interdum, vitae iaculis nulla porttitor. Phasellus pulvinar est id diam pretium, ut scelerisque urna pellentesque. Nam aliquet leo eu lectus dictum mollis. Phasellus viverra sit amet mi ut varius. Vivamus sollicitudin neque leo, ac porttitor libero ultricies vitae. Nulla lobortis varius neque et congue. Vivamus nulla arcu, ultricies vitae ullamcorper a, fermentum vel purus. Morbi sollicitudin leo lacinia lorem interdum, quis imperdiet orci ultricies.', '2019-01-20 20:45:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `mit`
--
CREATE DATABASE IF NOT EXISTS `mit` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mit`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `dob`) VALUES
(1, 'damith', 'kandage', '2019-01-09'),
(2, 'saman', 'kumara', '2019-01-01'),
(3, 'kamal', 'perera', '1980-02-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
