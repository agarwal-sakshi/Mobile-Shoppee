-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 21, 2020 at 01:58 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'IPhone 6s', 40000),
(2, 'IPhone 7', 60000),
(3, 'IPhone 7 plus', 69000),
(4, 'IPhone X', 88000),
(5, 'Samsung Galaxy S7 EDGE', 45000),
(6, 'Samsung Galaxy S8 PLUS', 65000),
(7, 'Samsung Galaxy NOTE 8 PLUS', 60000),
(8, 'Samsung Galaxy A8 ', 35000),
(9, 'ONEPLUS 3', 28000),
(10, 'ONEPLUS 3T', 31000),
(11, 'ONEPLUS 5', 34000),
(12, 'ONEPLUS 5T', 36000),
(13, 'XIAOMI REDMI NOTE 4', 13000),
(14, 'MI A1', 15000),
(15, 'MI MAX 2', 16000),
(16, 'MI MIX 2', 36000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(1, 'Amit Deka', 'amitakon99@gmail.com', 'e78672833e2b8c80e79d286cde6a1c4a', '9090909090', 'Shillong', 'in front of assam house, Dhankheti, Shillong, Meghalaya'),
(2, 'amit deka', 'amit@deka.com', '0fa624e3ad0ec67fc4f9c75f1015b209', '9898989898', 'nalbari', 'assam'),
(3, 'Barry Allen', 'barryallen@gmail.com', '0aa42d4addee6016a46d0a29518e402a', '9878987898', 'USA', 'Central City'),
(4, 'SAKSHI A', 'a.sakshi2000@gmail.com', 'b5c6767398feca58c702e36f5943098b', '9876543210', 'Prayagraj', 'civil lines'),
(5, 'SALONI A', 'saloni22@gmail.com', '351a5d7d3f75b7c6e42599a6b205a7cd', '9876543218', 'Prayagraj', 'civil lines'),
(6, 'ANKITA SARAF', 'ankitasaraf@gmail.com', '6fde795abafe5e292fff5cdf78810813', '9876543214', 'Prayagraj', 'civil lines'),
(7, 'ALIA J', 'alia@gmail.com', 'dc623ba14406938580280e899f20dbfd', '9876543215', 'Prayagraj', 'naini'),
(8, 'SAKSHI AG', 'agarwal@gmail.com', '661f5583fdb78c4ec5541176089586c7', '9876543210', 'Prayagraj', 'civil lines'),
(9, 'SAKSHI AGAR', 'sakshi2000@gmail.com', '457030e3ffc3f706b26e2ec0ebbe23ba', '9876543341', 'Prayagraj', 'civil lines'),
(10, 'SARTHAK A', 'sar@gmail.com', '7df6a17ada44373809e7bfa488b7ff3e', '9876598765', 'Prayagraj', 'civil lines');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

DROP TABLE IF EXISTS `users_items`;
CREATE TABLE IF NOT EXISTS `users_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(2, 1, 6, 'Confirmed'),
(3, 1, 3, 'Confirmed'),
(4, 2, 4, 'Added to cart'),
(5, 1, 4, 'Confirmed'),
(6, 1, 6, 'Added to cart'),
(8, 4, 4, 'Confirmed'),
(9, 4, 11, 'Confirmed'),
(11, 4, 8, 'Confirmed'),
(12, 6, 3, 'Confirmed'),
(13, 9, 5, 'Added to cart');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_items`
--
ALTER TABLE `users_items`
  ADD CONSTRAINT `users_items_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `users_items_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
