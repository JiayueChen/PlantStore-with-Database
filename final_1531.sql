-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 30, 2019 at 05:23 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_1531`
--
CREATE DATABASE IF NOT EXISTS `final_1531` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `final_1531`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `products_id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `prod_image` varchar(200) NOT NULL,
  `prod_code` varchar(50) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`products_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `prod_image`, `prod_code`, `prod_name`, `prod_price`) VALUES
(1, './img/asters.jpg', 'flower', 'Asters', '8.99'),
(2, './img/chamomile.jpg', 'flower', 'Chamomile', '7.99'),
(3, './img/lavender.jpg', 'flower', 'Lavender', '7.99'),
(4, './img/lily.jpg', 'flower', 'Lily', '7.99'),
(8, './img/sunflower.jpg', 'flower', 'Sunflower', '9.99'),
(7, './img/rose.jpg', 'flower', 'Rose', '8.99'),
(9, './img/cherry.jpg', 'fruit', 'Cherry', '7.99'),
(10, './img/apple.jpg', 'fruit', 'Apple', '9.99'),
(11, './img/blackberries.jpg', 'fruit', 'Blackberries', '10.99'),
(12, './img/grapes.jpg', 'fruit', 'Blueberries', '9.99'),
(13, './img/oranges.jpg', 'fruit', 'Oranges', '10.99'),
(14, './img/berries.jpg', 'fruit', 'Blueberries', '9.99'),
(15, './img/basil.jpg', 'green-plant', 'Basil', '7.99'),
(16, './img/cactus.jpg', 'green-plant', 'Cactus', '8.99'),
(17, './img/chamaedorea.jpg', 'green-plant', 'bamboo', '15.99'),
(18, './img/ferns.jpg', 'green-plant', 'Ferns', '15.99'),
(19, './img/peperomia.jpg', 'green-plant', 'Peperomia', '12.99'),
(20, './img/succulent.jpg', 'green-plant', 'Succulent', '25.99');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
