-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 17, 2015 at 05:01 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `final`
--

-- --------------------------------------------------------

--
-- Table structure for table `0_levels`
--

CREATE TABLE IF NOT EXISTS `0_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `inactive` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `0_levels`
--

INSERT INTO `0_levels` (`id`, `description`, `inactive`) VALUES
(1, 'Nursery', 0),
(2, 'Kinder', 0),
(3, 'Prep', 0),
(4, 'Grade 1', 0),
(5, 'Grade 2', 0),
(6, 'Grade 3', 0),
(7, 'Computer', 0),
(8, 'Grade 4', 0),
(9, 'Grade 5', 0),
(10, 'Grade 6', 0);
