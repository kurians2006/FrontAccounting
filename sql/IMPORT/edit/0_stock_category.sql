-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 16, 2015 at 02:13 AM
-- Server version: 5.5.41-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `0_stock_category`
--

CREATE TABLE IF NOT EXISTS `0_stock_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(60) NOT NULL DEFAULT '',
  `dflt_tax_type` int(11) NOT NULL DEFAULT '1',
  `dflt_units` varchar(20) NOT NULL DEFAULT 'each',
  `dflt_mb_flag` char(1) NOT NULL DEFAULT 'B',
  `dflt_sales_act` varchar(15) NOT NULL DEFAULT '4-1010',
  `dflt_cogs_act` varchar(15) NOT NULL DEFAULT '5-1010',
  `dflt_inventory_act` varchar(15) NOT NULL DEFAULT '1-4010',
  `dflt_adjustment_act` varchar(15) NOT NULL DEFAULT '1-4010',
  `dflt_assembly_act` varchar(15) NOT NULL DEFAULT '',
  `dflt_dim1` int(11) DEFAULT NULL,
  `dflt_dim2` int(11) DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  `dflt_no_sale` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `description` (`description`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `0_stock_category`
--

INSERT INTO `0_stock_category` (`category_id`, `description`, `dflt_tax_type`, `dflt_units`, `dflt_mb_flag`, `dflt_sales_act`, `dflt_cogs_act`, `dflt_inventory_act`, `dflt_adjustment_act`, `dflt_assembly_act`, `dflt_dim1`, `dflt_dim2`, `inactive`, `dflt_no_sale`) VALUES
(1, 'Language', 2, 'cpy', 'B', '4-1010', '5-1010', '1-4010', '1-4010', '1-4100', 0, 0, 0, 0),
(2, 'Reading', 2, 'cpy', 'B', '4-1010', '5-1010', '1-4010', '1-4010', '1-4100', 0, 0, 0, 0),
(3, 'Science', 2, 'cpy', 'B', '4-1010', '5-1010', '1-4010', '1-4010', '1-4100', 0, 0, 0, 0),
(4, 'Arts', 2, 'cpy', 'B', '4-1010', '5-1010', '1-4010', '1-4010', '1-4100', 0, 0, 0, 0),
(5, 'Math', 2, 'cpy', 'B', '4-1010', '5-1010', '1-4010', '1-4010', '1-4100', 0, 0, 0, 0),
(6, 'Filipino', 2, 'cpy', 'B', '4-1010', '5-1010', '1-4010', '1-4010', '1-4100', 0, 0, 0, 0),
(7, 'Values', 2, 'cpy', 'B', '4-1010', '5-1010', '1-4010', '1-4010', '1-4100', 0, 0, 0, 0),
(8, 'Writing', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0),
(9, 'Computer ', 1, 'cpy', 'B', '4-1010', '5-1010', '1-4010', '1-4010', '1-1010', 0, 0, 0, 0),
(10, 'Paper', 2, 'cpy', 'B', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0),
(11, 'Printing', 2, 'cpy', 'B', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0),
(12, 'Integrated Core Curr.ICC', 2, 'cpy', 'B', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
