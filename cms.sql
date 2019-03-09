-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 12, 2019 at 10:20 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `sender` varchar(25) NOT NULL,
  `reciever` varchar(25) NOT NULL,
  `amt` int(5) UNSIGNED NOT NULL,
  `timeOfUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `fks` (`sender`),
  KEY `fkr` (`reciever`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sender`, `reciever`, `amt`, `timeOfUpdate`) VALUES
('dummy5@getmydummy.com', 'dummy3@getmydummy.com', 50, '2019-02-12 10:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(15) NOT NULL,
  `age` int(2) NOT NULL,
  `credits` int(5) UNSIGNED DEFAULT '500',
  `email` varchar(25) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `age`, `credits`, `email`) VALUES
('dummy1', 20, 500, 'dummy1@getmydummy.com'),
('dummy2', 21, 580, 'dummy2@getmydummy.com'),
('dummy3', 19, 670, 'dummy3@getmydummy.com'),
('dummy4', 20, 450, 'dummy4@getmydummy.com'),
('dummy5', 21, 555, 'dummy5@getmydummy.com'),
('dummy6', 19, 585, 'dummy6@getmydummy.com'),
('dummy7', 20, 508, 'dummy7@getmydummy.com'),
('dummy8', 21, 590, 'dummy8@getmydummy.com'),
('dummy9', 19, 672, 'dummy9@getmydummy.com'),
('dummy10', 20, 800, 'dummy10@getmydummy.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
