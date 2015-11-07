-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 19, 2015 at 10:18 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stmp`
--

-- --------------------------------------------------------

--
-- Table structure for table `0_stock_master`
--

CREATE TABLE IF NOT EXISTS `0_stock_master` (
  `stock_id` varchar(25) NOT NULL DEFAULT '',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `tax_type_id` int(11) NOT NULL DEFAULT '0',
  `description` varchar(200) NOT NULL DEFAULT '',
  `long_description` tinytext NOT NULL,
  `level_id` int(11) NOT NULL DEFAULT '0',
  `units` varchar(20) NOT NULL DEFAULT 'each',
  `mb_flag` char(1) NOT NULL DEFAULT 'B',
  `sales_account` varchar(15) NOT NULL DEFAULT '4-1010',
  `cogs_account` varchar(15) NOT NULL DEFAULT '5-1010',
  `inventory_account` varchar(15) NOT NULL DEFAULT '1-4010',
  `adjustment_account` varchar(15) NOT NULL DEFAULT '1-4010',
  `assembly_account` varchar(15) NOT NULL DEFAULT '',
  `dimension_id` int(11) DEFAULT NULL,
  `dimension2_id` int(11) DEFAULT NULL,
  `actual_cost` double NOT NULL DEFAULT '0',
  `last_cost` double NOT NULL DEFAULT '0',
  `material_cost` double NOT NULL DEFAULT '0',
  `labour_cost` double NOT NULL DEFAULT '0',
  `overhead_cost` double NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  `no_sale` tinyint(1) NOT NULL DEFAULT '0',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `0_stock_master`
--

INSERT INTO `0_stock_master` (`stock_id`, `category_id`, `tax_type_id`, `description`, `long_description`, `level_id`, `units`, `mb_flag`, `sales_account`, `cogs_account`, `inventory_account`, `adjustment_account`, `assembly_account`, `dimension_id`, `dimension2_id`, `actual_cost`, `last_cost`, `material_cost`, `labour_cost`, `overhead_cost`, `inactive`, `no_sale`, `editable`) VALUES
('(NP)971-625-083-5', 4, 1, 'Creative Arts Experiences (Revised Edition)-1', 'Creative Arts Experiences (Revised Edition)-1\r\n', 4, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 21.91, 0, 0, 0, 0, 1),
('(NP)971-625-084-3', 4, 1, 'Creative Arts Experiences (Revised Edition)-2', 'Creative Arts Experiences (Revised Edition)-2\r\n', 5, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 26.07, 0, 0, 0, 0, 1),
('(NP)971-625-095-9', 6, 1, 'Sanayang Aklat sa Filipino (Wika 1)', 'Sanayang Aklat sa Filipino (Wika 1)\r\n', 4, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 30.43, 0, 0, 0, 0, 1),
('(NP)971-625-096-7', 6, 1, 'Sanayang Aklat sa Filipino (Wika 2)', 'Sanayang Aklat sa Filipino (Wika 2)\r\n', 5, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 31.79, 0, 0, 0, 0, 1),
('(NP)971-625-098-3', 6, 1, 'Sanayang Aklat sa Filipino (Wika 4)', 'Sanayang Aklat sa Filipino (Wika 4)\r\n', 8, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 23.5, 0, 0, 0, 0, 1),
('(NP)971-625-099-1', 6, 1, 'Sanayang Aklat sa Filipino (Wika 5)', 'Sanayang Aklat sa Filipino (Wika 5)\r\n', 9, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 24.85, 0, 0, 0, 0, 1),
('(NP)971-625-100-9', 6, 1, 'Sanayang Aklat sa Filipino (Wika 6)', 'Sanayang Aklat sa Filipino (Wika 6)\r\n', 10, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 24.85, 0, 0, 0, 0, 1),
('(NP)971-625-101-7', 6, 1, 'Sanayang Aklat sa Filipino (Pagbasa 1)', 'Sanayang Aklat sa Filipino (Pagbasa 1)\r\n', 4, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 43.18, 0, 0, 0, 0, 1),
('(NP)971-625-102-5', 6, 1, 'Sanayang Aklat sa Filipino (Pagbasa 2)', 'Sanayang Aklat sa Filipino (Pagbasa 2)\r\n', 5, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 32.58, 0, 0, 0, 0, 1),
('(NP)971-625-103-3', 6, 1, 'Sanayang Aklat sa Filipino (Pagbasa 3)', 'Sanayang Aklat sa Filipino (Pagbasa 3)\r\n', 6, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 41.15, 0, 0, 0, 0, 1),
('(NP)971-625-104-1', 6, 1, 'Sanayang Aklat sa Filipino (Pagbasa 4)', 'Sanayang Aklat sa Filipino (Pagbasa 4)\r\n', 8, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 40.25, 0, 0, 0, 0, 1),
('(NP)971-625-105-X', 6, 1, 'Sanayang Aklat sa Filipino (Pagbasa 5)', 'Sanayang Aklat sa Filipino (Pagbasa 5)\r\n', 9, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 24.4, 0, 0, 0, 0, 1),
('(NP)971-625-106-8', 6, 1, 'Sanayang Aklat sa Filipino (Pagbasa 6)', 'Sanayang Aklat sa Filipino (Pagbasa 6)\r\n', 10, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 24.4, 0, 0, 0, 0, 1),
('(NP)971-625-107-6', 2, 1, 'Enhancing Reading Skills (Grade 1)', 'Enhancing Reading Skills (Grade 1)\r\n', 4, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 40.72, 0, 0, 0, 0, 1),
('(NP)971-625-108-4', 2, 1, 'Enhancing Reading Skills (Grade 2)', 'Enhancing Reading Skills (Grade 2)\r\n', 5, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 30.9, 0, 0, 0, 0, 1),
('(NP)971-625-109-2', 2, 1, 'Enhancing Reading Skills (Grade 3)', 'Enhancing Reading Skills (Grade 3)\r\n', 6, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 33.8, 0, 0, 0, 0, 1),
('(NP)971-625-110-6', 2, 1, 'Enhancing Reading Skills (Grade 4)', 'Enhancing Reading Skills (Grade 4)\r\n', 8, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 34.32, 0, 0, 0, 0, 1),
('(NP)971-625-111-4', 2, 1, 'Enhancing Reading Skills (Grade 5)', 'Enhancing Reading Skills (Grade 5)\r\n', 9, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 30.26, 0, 0, 0, 0, 1),
('(NP)971-625-112-2', 2, 1, 'Enhancing Reading Skills (Grade 6)', 'Enhancing Reading Skills (Grade 6)\r\n', 10, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 46.07, 0, 0, 0, 0, 1),
('(NP)971-625-113-0', 1, 1, 'Enhancing Language Skills (Grade 1)', 'Enhancing Language Skills (Grade 1)\r\n', 4, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 40.37, 0, 0, 0, 0, 1),
('(NP)971-625-114-9', 1, 1, 'Enhancing Language Skills (Grade 2)', 'Enhancing Language Skills (Grade 2)\r\n', 5, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 43.84, 0, 0, 0, 0, 1),
('(NP)971-625-115-7', 1, 1, 'Enhancing Language Skills (Grade 3)', 'Enhancing Language Skills (Grade 3)\r\n', 6, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 33.88, 0, 0, 0, 0, 1),
('(NP)971-625-116-5', 1, 1, 'Enhancing Language Skills (Grade 4)', 'Enhancing Language Skills (Grade 4)\r\n', 8, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 32.03, 0, 0, 0, 0, 1),
('(NP)971-625-117-3', 1, 1, 'Enhancing Language Skills (Grade 5)', 'Enhancing Language Skills (Grade 5)\r\n', 9, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 29.37, 0, 0, 0, 0, 1),
('(NP)971-625-118-1', 1, 1, 'Enhancing Language Skills (Grade 6)', 'Enhancing Language Skills (Grade 6)\r\n', 10, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 31.15, 0, 0, 0, 0, 1),
('(NP)971-625-123-8', 5, 1, 'Enriching Skills in Mathematics 1', 'Enriching Skills in Mathematics 1\r\n', 4, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 49.87, 0, 0, 0, 0, 1),
('(NP)971-625-124-6', 5, 1, 'Enriching Skills in Mathematics 2', 'Enriching Skills in Mathematics 2\r\n', 5, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 47.54, 0, 0, 0, 0, 1),
('(NP)971-625-125-4', 5, 1, 'Enriching Skills in Mathematics 3', 'Enriching Skills in Mathematics 3\r\n', 6, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 47.54, 0, 0, 0, 0, 1),
('(NP)971-625-126-2', 5, 1, 'Enriching Skills in Mathematics 4', 'Enriching Skills in Mathematics 4\r\n', 8, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 41.55, 0, 0, 0, 0, 1),
('(NP)971-625-127-3', 5, 1, 'Enriching Skills in Mathematics 5', 'Enriching Skills in Mathematics 5\r\n', 9, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 53.68, 0, 0, 0, 0, 1),
('(NP)971-625-128-9', 5, 1, 'Enriching Skills in Mathematics 6', 'Enriching Skills in Mathematics 6\r\n', 10, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 44.75, 0, 0, 0, 0, 1),
('(NP)971-625-129-7', 9, 1, 'Computer Literacy for Early Learners', 'Computer Literacy for Early Learners\r\n', 7, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 21.16, 0, 0, 0, 0, 1),
('(NP)971-625-133-5', 4, 1, 'Creative Arts Experiences-3', 'Creative Arts Experiences-3', 6, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 22.45, 0, 0, 0, 0, 1),
('(NP)971-625-165-3', 8, 1, 'Writing Made Fun and Easy-Nursery', 'Writing Made Fun and Easy-Nursery', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 30.05, 0, 0, 0, 0, 1),
('(NP)971-625-166-1', 8, 1, 'Writing Made Fun and Easy-Kinder', 'Writing Made Fun and Easy-Kinder', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 38.14, 0, 0, 0, 0, 1),
('(NP)971-625-167-X', 8, 1, 'Writing Made Fun and Easy-Prep', 'Writing Made Fun and Easy-Prep', 3, 'cpy.', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 36.921194968553, 0, 0, 0, 0, 1),
('(NP)971-625-168-8', 1, 1, 'Language Enrichment Program-Nursery', 'Language Enrichment Program-Nursery', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 26.176313799622, 0, 0, 0, 0, 1),
('(NP)971-625-169-6', 1, 1, 'Language Enrichment Program-Kinder', 'Language Enrichment Program-Kinder', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 28.61, 0, 0, 0, 0, 1),
('(NP)971-625-170X', 1, 1, 'Language Enrichment Program-Prep', 'Language Enrichment Program-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 30.8, 0, 0, 0, 0, 1),
('(NP)978-971-625-171-5', 8, 1, 'Writing in the Early Grades-Nursery', 'Writing in the Early Grades-Nursery', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 30.84, 0, 0, 0, 0, 1),
('(NP)978-971-625-172-2', 8, 1, 'Writing in the Early Grades-Kinder', 'Writing in the Early Grades-Kinder', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 35.49, 0, 0, 0, 0, 1),
('(NP)978-971-625-173-9', 8, 1, 'Writing in the Early Grades-Prep', 'Writing in the Early Grades-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 42.43, 0, 0, 0, 0, 1),
('(NP)978-971-625-177-7', 5, 1, 'Mathematics in the Early Grades-Nursery', 'Mathematics in the Early Grades-Nursery', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 35.19, 0, 0, 0, 0, 1),
('(NP)978-971-625-179-1', 5, 2, 'Mathematics in the Early Grades-Prep', 'Mathematics in the Early Grades-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 32.27, 0, 0, 0, 0, 1),
('(NP)978-971-625-180-7', 4, 1, 'Child Wonders (A Think and Do Preschool Creativity Book)', 'Child Wonders (A Think and Do Preschool Creativity Book)\r\n', 7, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 26.57, 0, 0, 0, 0, 1),
('(NP)978-971-625-181-4', 7, 1, 'Pagpapahalagang Moral', 'Pagpapahalagang Moral\r\n', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 28.32, 0, 0, 0, 0, 1),
('(NP)978-971-625-182-1', 6, 1, 'Pinayamang Pamamaraan sa Pagbasa ng Bagong Alpabetong Filipino', 'Pinayamang Pamamaraan sa Pagbasa ng Bagong Alpabetong Filipino', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 29.34, 0, 0, 0, 0, 1),
('(NP)978-971-625-183-8', 7, 1, 'Values Education for Preshool', 'Values Education for Preshool\r\n', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 34.83, 0, 0, 0, 0, 1),
('(NP)978-971-625-190-6', 10, 1, 'Integrated Core Curriculum  My Self (revised)', 'Integrated Core Curriculum  My Self (revised)\r\n', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 41.45, 0, 0, 0, 0, 1),
('(NP)978-971-625-191-3', 10, 1, 'Integrated Core Curriculum My School (Revised)', 'Integrated Core Curriculum My School (Revised)\r\n', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 32.35, 0, 0, 0, 0, 1),
('(NP)978-971-625-192-0', 10, 1, 'Integrated Core Curriculum My Family (Revised)', 'Integrated Core Curriculum My Family (Revised)\r\n', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 28.34, 0, 0, 0, 0, 1),
('(NP)978-971-625-194-4', 2, 1, 'Reading Made Fun &amp; Easy-Kinder', 'Reading Made Fun &amp; Easy-Kinder', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 30.12, 0, 0, 0, 0, 1),
('(NP)978-971-625-195-1', 2, 1, 'Reading Made Fun &amp; Easy-Prep', 'Reading Made Fun &amp; Easy-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 32.8, 0, 0, 0, 0, 1),
('(NP)978-971-625-196-8', 3, 1, 'Wonders of Integrated Science for Preschool-1', 'Wonders of Integrated Science for Preschool-1', 4, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 36.49, 0, 0, 0, 0, 1),
('(NP)978-971-625-197-5', 3, 1, 'Wonders of Integrated Science for Preschool-2', 'Wonders of Integrated Science for Preschool-2', 5, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 34.09, 0, 0, 0, 0, 1),
('(NP)978-971-625-198-2', 3, 1, 'Wonders of Integrated Science for Preschool-3', 'Wonders of Integrated Science for Preschool-3', 6, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 39.19, 0, 0, 0, 0, 1),
('(NP)978-971-625-204-0', 10, 1, 'Integrated Core Curriculum Things Around Me (Revised)', 'Integrated Core Curriculum Things Around Me (Revised)\r\n', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 31.13, 0, 0, 0, 0, 1),
('(NP)978-971-625-205-7', 10, 1, 'Integrated Core Curriculum My Community ( Revised)', 'Integrated Core Curriculum My Community ( Revised)\r\n', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 40.95, 0, 0, 0, 0, 1),
('(NP)978-971-625-213-2', 5, 1, 'Mathematics Made Fun &amp; Easy-Prep', 'Mathematics Made Fun &amp; Easy-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 36.81414024976, 0, 0, 0, 0, 1),
('(NP)978-971-625-214-9', 6, 1, 'Makabagong Sining ng Komunikasyon - Binagong Edisyon', 'Makabagong Sining ng Komunikasyon - Binagong Edisyon', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 41.98, 0, 0, 0, 0, 1),
('(NP)978-971-625-216-3', 6, 1, 'Makabagong Paraan ng Pagbasa (Binagong Edisyon)', 'Makabagong Paraan ng Pagbasa (Binagong Edisyon)\r\n', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 33.42, 0, 0, 0, 0, 1),
('(NP)978-971-625-217-0', 6, 1, 'Makabayan Tayo (Binagong Edisyon)', 'Makabayan Tayo (Binagong Edisyon)\r\n', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 36.11, 0, 0, 0, 0, 1),
('(NP)978-971-625-218-7', 4, 1, 'Creative Arts Experiences (Upg. Edition)-3', 'Creative Arts Experiences (Upg. Edition)-3', 6, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 24.88, 0, 0, 0, 0, 1),
('(NP)978-971-625-219-4', 4, 1, 'Creative Arts Experiences (Upg. Edition)-1', 'Creative Arts Experiences (Upg. Edition)-1', 4, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 22.98, 0, 0, 0, 0, 1),
('(NP)978-971-625-220-0', 4, 1, 'Creative Arts Experiences (Upg. Edition)-2', 'Creative Arts Experiences (Upg. Edition)-2', 5, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 24.08, 0, 0, 0, 0, 1),
('(NP)978-971-625-223-1', 2, 1, 'Reading for the Young Minds-Nursery', 'Reading for the Young Minds-Nursery', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 24.45, 0, 0, 0, 0, 1),
('(NP)978-971-625-224-8', 2, 1, 'Reading for the Young Minds-Kinder', 'Reading for the Young Minds-Kinder', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 30.37, 0, 0, 0, 0, 1),
('(NP)978-971-625-225-5', 2, 1, 'Reading for the Young Minds-Prep', 'Reading for the Young Minds-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 36.04, 0, 0, 0, 0, 1),
('(NP)978-971-625-226-2', 5, 1, 'Mathematics for the Young Minds-Nursery', 'Mathematics for the Young Minds-Nursery', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 25.59, 0, 0, 0, 0, 1),
('(NP)978-971-625-227-9', 5, 1, 'Mathematics for the Young Minds-Kinder', 'Mathematics for the Young Minds-Kinder', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 33.75, 0, 0, 0, 0, 1),
('(NP)978-971-625-228-6', 5, 1, 'Mathematics for the Young Minds-Prep', 'Mathematics for the Young Minds-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 33.75, 0, 0, 0, 0, 1),
('(NP)978-971-625-229-3', 8, 1, 'Phoenemic Awareness &amp; Writing for the Young Minds-Nursery', 'Phoenemic Awareness &amp; Writing for the Young Minds-Nursery', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 22.82, 0, 0, 0, 0, 1),
('(NP)978-971-625-230-9', 8, 1, 'Phoenemic Awareness &amp; Writing for the Young Minds-Kinder', 'Phoenemic Awareness &amp; Writing for the Young Minds-Kinder', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 29.63, 0, 0, 0, 0, 1),
('(NP)978-971-625-231-6', 8, 1, 'Phoenemic Awareness &amp; Writing for the Young Minds-Prep', 'Phoenemic Awareness &amp; Writing for the Young Minds-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 39.62, 0, 0, 0, 0, 1),
('(NP)978-971-625-232-3', 1, 1, 'Language Made Fun and Easy-Nursery', 'Language Made Fun and Easy-Nursery', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 32.43, 0, 0, 0, 0, 1),
('(NP)978-971-625-233-0', 1, 2, 'Language Made Fun and Easy-Kinder', 'Language Made Fun and Easy-Kinder', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 36.81, 0, 0, 0, 0, 1),
('(NP)978-971-625-234-7', 1, 2, 'Language Made Fun and Easy-Prep', 'Language Made Fun and Easy-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 34.29, 0, 0, 0, 0, 1),
('(NP)978-971-625-241-5', 1, 1, 'Energizers', 'Energizers\r\n', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 48.88, 0, 0, 0, 0, 1),
('(NP)978-971-625-243-9', 6, 1, 'Kaunlaran sa Pagbasa ng Bagong Alpabetong Filipino-Nursery', 'Kaunlaran sa Pagbasa ng Bagong Alpabetong Filipino-Nursery', 6, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 24.47, 0, 0, 0, 0, 1),
('(NP)978-971-625-244-6', 6, 1, 'Kaunlaran sa Pagbasa ng Bagong Alpabetong Filipino-Kinder', 'Kaunlaran sa Pagbasa ng Bagong Alpabetong Filipino-Kinder', 6, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-1010', 0, 0, 0, 0, 31.86, 0, 0, 0, 0, 1),
('(NP)978-971-625-245-3', 6, 1, 'Kaunlaran sa Pagbasa ng Bagong Alpabetong Filipino-Prep', 'Kaunlaran sa Pagbasa ng Bagong Alpabetong Filipino-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 33.07, 0, 0, 0, 0, 1),
('(NP)978-971-625-247-7', 3, 1, 'Wonders of Integrated Science &amp; Health-1', 'Wonders of Integrated Science &amp; Health-1', 4, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 30.43, 0, 0, 0, 0, 0),
('(NP)978-971-625-248-4', 3, 1, 'Wonders of Integrated Science &amp; Health-2', 'Wonders of Integrated Science &amp; Health-2', 5, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 29.82, 0, 0, 0, 0, 1),
('(NP)978-971-625-249-1', 3, 1, 'Wonders of Integrated Science &amp; Health-3', 'Wonders of Integrated Science &amp; Health-3', 6, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 33.53, 0, 0, 0, 0, 1),
('(NP)978-971-625-253-8', 10, 1, 'Integrated Core Curriculum Week 1-5', 'Integrated Core Curriculum Week 1-5', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 59.435865567533, 0, 0, 0, 0, 1),
('(NP)978-971-625-254-5', 10, 1, 'Integrated Core Curriculum Week 6-10', 'Integrated Core Curriculum Week 6-10', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 37.05, 0, 0, 0, 0, 1),
('(NP)978-971-625-255-2', 10, 1, 'Integrated Core Curriculum Week 11-15', 'Integrated Core Curriculum Week 11-15\r\n\r\n', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 38.56, 0, 0, 0, 0, 1),
('(NP)978-971-625-256-9', 10, 1, 'Integrated Core Curriculum Week 16-20', 'Integrated Core Curriculum Week 16-20\r\n\r\n', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 33.67, 0, 0, 0, 0, 1),
('(NP)978-971-625-257-6', 10, 1, 'Integrated Core Curriculum Week 21-25', 'Integrated Core Curriculum Week 21-25\r\n\r\n', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 32.71, 0, 0, 0, 0, 1),
('(NP)978-971-625-258-3', 10, 1, 'Integrated Core Curriculum Week 26-30', 'Integrated Core Curriculum Week 26-30\r\n\r\n', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 29.89, 0, 0, 0, 0, 1),
('(NP)978-971-625-259-0', 10, 1, 'Integrated Core Curriculum Week 31-35', 'Integrated Core Curriculum Week 31-35\r\n\r\n', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 35.4, 0, 0, 0, 0, 1),
('(NP)978-971-625-260-6', 10, 1, 'Integrated Core Curriculum Week 36-40', 'Integrated Core Curriculum Week 36-40\r\n\r\n', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 35.3, 0, 0, 0, 0, 1),
('(NP)978-971-625-263-7', 1, 1, 'Preschool Life Skills-1', 'Preschool Life Skills-1', 4, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 29.74, 0, 0, 0, 0, 1),
('(NP)978-971-625-264-4', 1, 1, 'Preschool Life Skills-2', 'Preschool Life Skills-2', 5, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 33.74, 0, 0, 0, 0, 1),
('(NP)978-971-625-265-1', 1, 1, 'Preschool Life Skills-3', 'Preschool Life Skills-3', 6, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 34.26, 0, 0, 0, 0, 1),
('(NP)978-971-625-269-9', 10, 1, 'Integrated Core Curriculum Week 1-7', 'Integrated Core Curriculum Week 1-7', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 35.94, 0, 0, 0, 0, 1),
('(NP)978-971-625-270-5', 10, 1, 'Integrated Core Curriculum Week 8-16', 'Integrated Core Curriculum Week 8-16', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 39.28, 0, 0, 0, 0, 1),
('(NP)978-971-625-271-2', 10, 1, 'Integrated Core Curriculum Week 17-24', 'Integrated Core Curriculum Week 17-24', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 35.49, 0, 0, 0, 0, 1),
('(NP)978-971-625-272-9', 10, 1, 'Integrated Core Curriculum Week 25-32', 'Integrated Core Curriculum Week 25-32', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 34.7, 0, 0, 0, 0, 1),
('(NP)978-971-625-273-6', 1, 1, 'Integrated Core Curriculum Week 33-40', 'Integrated Core Curriculum Week 33-40', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 37.81, 0, 0, 0, 0, 1),
('978-971-625-193-7', 2, 1, 'Reading Made Fun &amp; Easy-Nursery', 'Reading Made Fun &amp; Easy-Nursery', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 33.309508082739, 0, 0, 0, 0, 1),
('978-971-625-194-4', 2, 1, 'Reading Made Fun &amp; Easy-Kinder', 'Reading Made Fun &amp; Easy-Kinder', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 42.81, 0, 0, 0, 0, 1),
('978-971-625-195-1', 2, 1, 'Reading Made Fun &amp; Easy-Prep', 'Reading Made Fun &amp; Easy-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 44.929943791518, 0, 0, 0, 0, 1),
('978-971-625-211-8', 5, 1, 'Mathematics Made Fun &amp; Easy-Nursery', 'Mathematics Made Fun &amp; Easy-Nursery', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 37.04, 0, 0, 0, 0, 1),
('978-971-625-212-5', 5, 1, 'Mathematics Made Fun &amp; Easy-Kinder', 'Mathematics Made Fun &amp; Easy-Kinder', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 41.55, 0, 0, 0, 0, 1),
('978-971-625-213-2', 5, 1, 'Mathematics Made Fun &amp; Easy-Prep', 'Mathematics Made Fun &amp; Easy-Prep', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 45.637694834279, 0, 0, 0, 0, 1),
('978-971-625-216-3', 6, 1, 'Makabagong Paraan ng Pagbasa (Binagong Edisyon)', 'Makabagong Paraan ng Pagbasa (Binagong Edisyon)\r\n', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 47.071533552504, 0, 0, 0, 0, 1),
('978-971-625-217-0', 6, 1, 'Makabayan Tayo (Binagong Edisyon)', 'Makabayan Tayo (Binagong Edisyon)\r\n', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 42.25, 0, 0, 0, 0, 1),
('978-971-625-218-7', 4, 1, 'Creative Arts Experiences (Upg. Edition)-3', 'Creative Arts Experiences (Upg. Edition)-3', 6, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 28.005652911249, 0, 0, 0, 0, 1),
('978-971-625-219-4', 4, 1, 'Creative Arts Experiences (Upg. Edition)-1', 'Creative Arts Experiences (Upg. Edition)-1\r\n', 4, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 25.88, 0, 0, 0, 0, 1),
('978-971-625-220-0', 4, 1, 'Creative Arts Experiences (Upg. Edition)-2', 'Creative Arts Experiences (Upg. Edition)-2', 5, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 30.31907264877, 0, 0, 0, 0, 1),
('978-971-625-223-1', 2, 1, 'Reading for the Young Minds-Nursery', 'Reading for the Young Minds-Nursery', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 32.75, 0, 0, 0, 0, 1),
('978-971-625-224-8', 2, 1, 'Reading for the Young Minds-Kinder', 'Reading for the Young Minds-Kinder', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 38.5, 0, 0, 0, 0, 1),
('978-971-625-225-5', 2, 1, 'Reading for the Young Minds-Prep', 'Reading for the Young Minds-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 44, 0, 0, 0, 0, 1),
('978-971-625-226-2', 5, 1, 'Mathematics for the Young Minds-Nursery', 'Mathematics for the Young Minds-Nursery', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 33.5, 0, 0, 0, 0, 1),
('978-971-625-227-9', 5, 1, 'Mathematics for the Young Minds-Kinder', 'Mathematics for the Young Minds-Kinder', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 41.58, 0, 0, 0, 0, 1),
('978-971-625-228-6', 5, 1, 'Mathematics for the Young Minds-Prep', 'Mathematics for the Young Minds-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 41.58, 0, 0, 0, 0, 1),
('978-971-625-232-3', 1, 1, 'Language Made Fun and Easy-Nursery', 'Language Made Fun and Easy-Nursery', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 34.225668599543, 0, 0, 0, 0, 1),
('978-971-625-233-0', 1, 1, 'Language Made Fun and Easy-Kinder', 'Language Made Fun and Easy-Kinder', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 44.439781913894, 0, 0, 0, 0, 1),
('978-971-625-234-7', 1, 1, 'Language Made Fun and Easy-Prep', 'Language Made Fun and Easy-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 47.153577014621, 0, 0, 0, 0, 1),
('978-971-625-243-9', 6, 1, 'Kaunlaran sa Pagbasa ng Bagong Alpabetong Filipino-Nursery', 'Kaunlaran sa Pagbasa ng Bagong Alpabetong Filipino-Nursery', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 32.36, 0, 0, 0, 0, 1),
('978-971-625-244-6', 6, 1, 'Kaunlaran sa Pagbasa ng Bagong Alpabetong Filipino-Kinder', 'Kaunlaran sa Pagbasa ng Bagong Alpabetong Filipino-Kinder', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 39.61, 0, 0, 0, 0, 1),
('978-971-625-245-3', 6, 1, 'Kaunlaran sa Pagbasa ng Bagong Alpabetong Filipino-Prep', 'Kaunlaran sa Pagbasa ng Bagong Alpabetong Filipino-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 38.544329004329, 0, 0, 0, 0, 1),
('978-971-625-247-7', 3, 1, 'Wonders of Integrated Science &amp; Health-1', 'Wonders of Integrated Science &amp; Health-1', 4, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 33.69, 0, 0, 0, 0, 1),
('978-971-625-248-4', 3, 1, 'Wonders of Integrated Science &amp; Health-2', 'Wonders of Integrated Science &amp; Health-2', 5, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 41.508243806183, 0, 0, 0, 0, 1),
('978-971-625-249-1', 3, 1, 'Wonders of Integrated Science &amp; Health-3', 'Wonders of Integrated Science &amp; Health-3', 6, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 47.545950590763, 0, 0, 0, 0, 1),
('978-971-625-266-8', 8, 1, 'The Progressive Approach to Writing-Prep', 'The Progressive Approach to Writing-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 37.35, 0, 0, 0, 0, 1),
('978-971-625-267-5', 8, 1, 'The Progressive Approach to Writing-Kinder', 'The Progressive Approach to Writing-Kinder', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 39.15, 0, 0, 0, 0, 1),
('978-971-625-268-2', 8, 1, 'The Progressive Approach to Writing-Nursery', 'The Progressive Approach to Writing-Nursery', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 44.44, 0, 0, 0, 0, 1),
('S-978-971-625-232-3', 1, 1, 'Language Made Fun and Easy-Nursery', 'Language Made Fun and Easy-Nursery', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 30.82, 0, 0, 0, 1, 1),
('S-978-971-625-234-7', 1, 1, 'Language Made Fun and Easy-Prep', 'Language Made Fun and Easy-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 41.64, 0, 0, 0, 1, 1),
('S-978-971-625-243-9', 6, 1, 'Kaunlaran sa Pagbasa ng Bagong Alpabetong Filipino-Nursery', 'Kaunlaran sa Pagbasa ng Bagong Alpabetong Filipino-Nursery', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 30.92, 0, 0, 0, 1, 1),
('S-978-971-625-244-6', 6, 1, 'Kaunlaran sa Pagbasa ng Bagong Alpabetong Filipino-Kinder', 'Kaunlaran sa Pagbasa ng Bagong Alpabetong Filipino-Kinder', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 42.35, 0, 0, 0, 1, 1),
('S-978-971-625-245-3', 6, 1, 'Kaunlaran sa Pagbasa ng Bagong Alpabetong Filipino-Prep', 'Kaunlaran sa Pagbasa ng Bagong Alpabetong Filipino-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 34.37, 0, 0, 0, 1, 1),
('S-978-971-625-247-7', 3, 1, 'Wonders of Integrated Science and Health-Nursery', 'Wonders of Integrated Science and Health-Nursery', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 30.32, 0, 0, 0, 1, 1),
('S-978-971-625-248-4', 3, 1, 'Wonders of Integrated Science and Health-Kinder', 'Wonders of Integrated Science and Health-Kinder', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 37.34, 0, 0, 0, 1, 1),
('S-978-971-625-249-1', 3, 1, 'Wonders of Integrated Science and Health-Prep', 'Wonders of Integrated Science and Health-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 40.3, 0, 0, 0, 1, 1),
('S-978-971-625-263-7', 1, 1, 'Preschool Life Skills - Level 1', 'Preschool Life Skills - Level 1\r\n', 4, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 37.86, 0, 0, 0, 1, 1),
('S-978-971-625-264-4', 1, 1, 'Preschool Life Skills - Level 2', 'Preschool Life Skills - Level 2\r\n', 5, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 42.23, 0, 0, 0, 1, 1),
('S-978-971-625-265-1', 1, 1, 'Preschool Life Skills - Level 3', 'Preschool Life Skills - Level 3\r\n', 6, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 46.42, 0, 0, 0, 1, 1),
('S-978-971-625-266-8', 1, 1, 'The Progressive Approach to Writing-Prep', 'The Progressive Approach to Writing-Prep', 3, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 53, 0, 0, 0, 1, 1),
('S-978-971-625-267-5', 1, 1, 'The Progressive Approach to Writing-Kinder', 'The Progressive Approach to Writing-Kinder', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 56.09, 0, 0, 0, 1, 1),
('S-978-971-625-268-2', 1, 1, 'The Progressive Approach to Writing-Nursery', 'The Progressive Approach to Writing-Nursery', 1, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 48.46, 0, 0, 0, 1, 1),
('S-978-971-625-269-9', 1, 1, 'Integrated Core Curriculum Week 1-7', 'Integrated Core Curriculum Week 1-7', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 55.13, 0, 0, 0, 1, 1),
('S-978-971-625-270-5', 1, 1, 'Integrated Core Curriculum Week 8-16', 'Integrated Core Curriculum Week 8-16', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 49.18, 0, 0, 0, 1, 1),
('S-978-971-625-271-2', 1, 1, 'Integrated Core Curriculum Week 17-24', 'Integrated Core Curriculum Week 17-24', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 46.53, 0, 0, 0, 1, 1),
('S-978-971-625-272-9', 1, 1, 'Integrated Core Curriculum Week 25-32', 'Integrated Core Curriculum Week 25-32', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 45.49, 0, 0, 0, 1, 1),
('S-978-971-625-273-6', 1, 1, 'Integrated Core Curriculum Week 33-40', 'Integrated Core Curriculum Week 33-40', 2, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 47.7, 0, 0, 0, 1, 1),
('S-978-971-625-297-2', 2, 1, 'On the Road to Reading Success-1', 'On the Road to Reading Success-1', 4, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 63.54, 0, 0, 0, 1, 1),
('S-978-971-625-298-9', 2, 1, 'On the Road to Reading Success-2', 'On the Road to Reading Success-2', 5, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 61.68, 0, 0, 0, 1, 1),
('S-978-971-625-300-9', 1, 1, 'On the Road to Language Scuccess-1', 'On the Road to Language Scuccess-1', 4, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 50.9, 0, 0, 0, 1, 1),
('S-978-971-625-301-6', 1, 1, 'On the Road to Language Scuccess-2', 'On the Road to Language Scuccess-2', 5, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 51.81, 0, 0, 0, 1, 1),
('S-978-971-625-302-3', 1, 1, 'On the Road to Language Scuccess-3', 'On the Road to Language Scuccess-3', 6, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 54.22, 0, 0, 0, 1, 1),
('S-978-971-625-303-0', 5, 1, 'Exploring the World of Mathematics-1', 'Exploring the World of Mathematics-1', 4, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 66.44, 0, 0, 0, 1, 1),
('S-978-971-625-304-7', 5, 1, 'Exploring the World of Mathematics-2', 'Exploring the World of Mathematics-2', 5, 'cpy', 'M', '4-1010', '5-1010', '1-4010', '1-4010', '1-4010', 0, 0, 0, 0, 94.65, 0, 0, 0, 1, 1);
