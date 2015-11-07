-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 19, 2015 at 06:33 PM
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
-- Table structure for table `0_prices`
--

CREATE TABLE IF NOT EXISTS `0_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(25) NOT NULL DEFAULT '',
  `sales_type_id` int(11) NOT NULL DEFAULT '0',
  `curr_abrev` char(3) NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `price` (`stock_id`,`sales_type_id`,`curr_abrev`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=181 ;

--
-- Dumping data for table `0_prices`
--

INSERT INTO `0_prices` (`id`, `stock_id`, `sales_type_id`, `curr_abrev`, `price`) VALUES
(1, '978-971-625-232-3', 1, 'PHP', 232),
(2, '978-971-625-232-3', 2, 'PHP', 193),
(3, '978-971-625-232-3', 3, 'PHP', 242),
(4, '978-971-625-232-3', 4, 'PHP', 218),
(5, '978-971-625-233-0', 1, 'PHP', 256),
(6, '978-971-625-233-0', 2, 'PHP', 213),
(7, '978-971-625-233-0', 3, 'PHP', 267),
(8, '978-971-625-233-0', 4, 'PHP', 238),
(9, '978-971-625-234-7', 1, 'PHP', 280),
(10, '978-971-625-234-7', 2, 'PHP', 233),
(11, '978-971-625-234-7', 3, 'PHP', 292),
(12, '978-971-625-234-7', 4, 'PHP', 258),
(13, 'S-978-971-625-300-9', 1, 'PHP', 318),
(14, 'S-978-971-625-300-9', 2, 'PHP', 265),
(15, 'S-978-971-625-300-9', 3, 'PHP', 332),
(16, 'S-978-971-625-300-9', 4, 'PHP', 290),
(17, 'S-978-971-625-301-6', 1, 'PHP', 327),
(18, 'S-978-971-625-301-6', 2, 'PHP', 272),
(19, 'S-978-971-625-301-6', 3, 'PHP', 340),
(20, 'S-978-971-625-301-6', 4, 'PHP', 297),
(21, 'S-978-971-625-302-3', 1, 'PHP', 305),
(22, 'S-978-971-625-302-3', 2, 'PHP', 253),
(23, 'S-978-971-625-302-3', 3, 'PHP', 317),
(24, 'S-978-971-625-302-3', 4, 'PHP', 278),
(25, 'S-978-971-625-297-2', 1, 'PHP', 376),
(26, 'S-978-971-625-297-2', 2, 'PHP', 313),
(27, 'S-978-971-625-297-2', 3, 'PHP', 392),
(28, 'S-978-971-625-297-2', 4, 'PHP', 338),
(29, 'S-978-971-625-298-9', 1, 'PHP', 355),
(30, 'S-978-971-625-298-9', 2, 'PHP', 295),
(31, 'S-978-971-625-298-9', 3, 'PHP', 369),
(32, 'S-978-971-625-298-9', 4, 'PHP', 320),
(33, '978-971-625-223-1', 1, 'PHP', 215),
(34, '978-971-625-223-1', 2, 'PHP', 179),
(35, '978-971-625-223-1', 3, 'PHP', 255),
(36, '978-971-625-223-1', 4, 'PHP', 213),
(37, '978-971-625-224-8', 1, 'PHP', 245),
(38, '978-971-625-224-8', 2, 'PHP', 205),
(39, '978-971-625-224-8', 3, 'PHP', 257),
(40, '978-971-625-224-8', 4, 'PHP', 240),
(41, '978-971-625-225-5', 1, 'PHP', 266),
(42, '978-971-625-225-5', 2, 'PHP', 221),
(43, '978-971-625-225-5', 3, 'PHP', 277),
(44, '978-971-625-225-5', 4, 'PHP', 255),
(45, '978-971-625-193-7', 1, 'PHP', 231),
(46, '978-971-625-193-7', 2, 'PHP', 192),
(47, '978-971-625-193-7', 3, 'PHP', 240),
(48, '978-971-625-193-7', 4, 'PHP', 190),
(49, '978-971-625-194-4', 1, 'PHP', 255),
(50, '978-971-625-194-4', 2, 'PHP', 211),
(51, '978-971-625-194-4', 3, 'PHP', 265),
(52, '978-971-625-194-4', 4, 'PHP', 205),
(53, '978-971-625-195-1', 1, 'PHP', 268),
(54, '978-971-625-195-1', 2, 'PHP', 223),
(55, '978-971-625-195-1', 3, 'PHP', 279),
(56, '978-971-625-195-1', 4, 'PHP', 198),
(57, '978-971-625-247-7', 1, 'PHP', 226),
(58, '978-971-625-247-7', 2, 'PHP', 188),
(59, '978-971-625-247-7', 3, 'PHP', 235),
(60, '978-971-625-247-7', 4, 'PHP', 213),
(61, '978-971-625-248-4', 1, 'PHP', 258),
(62, '978-971-625-248-4', 2, 'PHP', 215),
(63, '978-971-625-248-4', 3, 'PHP', 269),
(64, '978-971-625-248-4', 4, 'PHP', 240),
(65, '978-971-625-249-1', 1, 'PHP', 276),
(66, '978-971-625-249-1', 2, 'PHP', 230),
(67, '978-971-625-249-1', 3, 'PHP', 288),
(68, '978-971-625-249-1', 4, 'PHP', 255),
(69, '978-971-625-219-4', 1, 'PHP', 198),
(70, '978-971-625-219-4', 2, 'PHP', 165),
(71, '978-971-625-219-4', 3, 'PHP', 207),
(72, '978-971-625-219-4', 4, 'PHP', 190),
(73, '978-971-625-220-0', 1, 'PHP', 216),
(74, '978-971-625-220-0', 2, 'PHP', 180),
(75, '978-971-625-220-0', 3, 'PHP', 225),
(76, '978-971-625-220-0', 4, 'PHP', 205),
(77, '978-971-625-218-7', 1, 'PHP', 208),
(78, '978-971-625-218-7', 2, 'PHP', 173),
(79, '978-971-625-218-7', 3, 'PHP', 217),
(80, '978-971-625-218-7', 4, 'PHP', 198),
(81, '978-971-625-211-8', 1, 'PHP', 249),
(82, '978-971-625-211-8', 2, 'PHP', 207),
(83, '978-971-625-211-8', 3, 'PHP', 259),
(84, '978-971-625-211-8', 4, 'PHP', 232),
(85, '978-971-625-212-5', 1, 'PHP', 261),
(86, '978-971-625-212-5', 2, 'PHP', 217),
(87, '978-971-625-212-5', 3, 'PHP', 272),
(88, '978-971-625-212-5', 4, 'PHP', 242),
(89, '978-971-625-213-2', 1, 'PHP', 278),
(90, '978-971-625-213-2', 2, 'PHP', 231),
(91, '978-971-625-213-2', 3, 'PHP', 289),
(92, '978-971-625-213-2', 4, 'PHP', 256),
(93, '978-971-625-226-2', 1, 'PHP', 226),
(94, '978-971-625-226-2', 2, 'PHP', 188),
(95, '978-971-625-226-2', 3, 'PHP', 235),
(96, '978-971-625-226-2', 4, 'PHP', 213),
(97, '978-971-625-227-9', 1, 'PHP', 256),
(98, '978-971-625-227-9', 2, 'PHP', 213),
(99, '978-971-625-227-9', 3, 'PHP', 267),
(100, '978-971-625-227-9', 4, 'PHP', 238),
(101, '978-971-625-228-6', 1, 'PHP', 258),
(102, '978-971-625-228-6', 2, 'PHP', 215),
(103, '978-971-625-228-6', 3, 'PHP', 269),
(104, '978-971-625-228-6', 4, 'PHP', 240),
(105, 'S-978-971-625-303-0', 1, 'PHP', 400),
(106, 'S-978-971-625-303-0', 2, 'PHP', 333),
(107, 'S-978-971-625-303-0', 3, 'PHP', 417),
(108, 'S-978-971-625-303-0', 4, 'PHP', 358),
(109, 'S-978-971-625-304-7', 1, 'PHP', 468),
(110, 'S-978-971-625-304-7', 2, 'PHP', 390),
(111, 'S-978-971-625-304-7', 3, 'PHP', 488),
(112, 'S-978-971-625-304-7', 4, 'PHP', 415),
(113, '978-971-625-216-3', 1, 'PHP', 275),
(114, '978-971-625-216-3', 2, 'PHP', 228),
(115, '978-971-625-216-3', 3, 'PHP', 285),
(116, '978-971-625-216-3', 4, 'PHP', 253),
(117, '978-971-625-217-0', 1, 'PHP', 265),
(118, '978-971-625-217-0', 2, 'PHP', 220),
(119, '978-971-625-217-0', 3, 'PHP', 275),
(120, '978-971-625-217-0', 4, 'PHP', 245),
(121, '978-971-625-243-9', 1, 'PHP', 226),
(122, '978-971-625-243-9', 2, 'PHP', 188),
(123, '978-971-625-243-9', 3, 'PHP', 235),
(124, '978-971-625-243-9', 4, 'PHP', 213),
(125, '978-971-625-244-6', 1, 'PHP', 255),
(126, '978-971-625-244-6', 2, 'PHP', 211),
(127, '978-971-625-244-6', 3, 'PHP', 265),
(128, '978-971-625-244-6', 4, 'PHP', 236),
(129, '978-971-625-245-3', 1, 'PHP', 242),
(130, '978-971-625-245-3', 2, 'PHP', 201),
(131, '978-971-625-245-3', 3, 'PHP', 252),
(132, '978-971-625-245-3', 4, 'PHP', 226),
(133, '(NP)978-971-625-181-4', 1, 'PHP', 226),
(134, '(NP)978-971-625-181-4', 2, 'PHP', 188),
(135, '(NP)978-971-625-181-4', 3, 'PHP', 235),
(136, '(NP)978-971-625-181-4', 4, 'PHP', 213),
(137, '(NP)978-971-625-183-8', 1, 'PHP', 240),
(138, '(NP)978-971-625-183-8', 2, 'PHP', 200),
(139, '(NP)978-971-625-183-8', 3, 'PHP', 250),
(140, '(NP)978-971-625-183-8', 4, 'PHP', 225),
(141, '978-971-625-263-7', 1, 'PHP', 216),
(142, '978-971-625-263-7', 2, 'PHP', 180),
(143, '978-971-625-263-7', 3, 'PHP', 225),
(144, '978-971-625-263-7', 4, 'PHP', 205),
(145, '978-971-625-264-4', 1, 'PHP', 235),
(146, '978-971-625-264-4', 2, 'PHP', 195),
(147, '978-971-625-264-4', 3, 'PHP', 245),
(148, '978-971-625-264-4', 4, 'PHP', 220),
(149, '978-971-625-265-1', 1, 'PHP', 238),
(150, '978-971-625-265-1', 2, 'PHP', 198),
(151, '978-971-625-265-1', 3, 'PHP', 248),
(152, '978-971-625-265-1', 4, 'PHP', 223),
(153, '978-971-625-268-2', 1, 'PHP', 250),
(154, '978-971-625-268-2', 2, 'PHP', 208),
(155, '978-971-625-268-2', 3, 'PHP', 260),
(156, '978-971-625-268-2', 4, 'PHP', 233),
(157, '978-971-625-267-5', 1, 'PHP', 267),
(158, '978-971-625-267-5', 2, 'PHP', 222),
(159, '978-971-625-267-5', 3, 'PHP', 278),
(160, '978-971-625-267-5', 4, 'PHP', 247),
(161, '978-971-625-266-8', 1, 'PHP', 258),
(162, '978-971-625-266-8', 2, 'PHP', 215),
(163, '978-971-625-266-8', 3, 'PHP', 269),
(164, '978-971-625-266-8', 4, 'PHP', 240),
(165, '978-971-625-269-9', 1, 'PHP', 270),
(166, '978-971-625-269-9', 2, 'PHP', 225),
(167, '978-971-625-269-9', 3, 'PHP', 283),
(168, '978-971-625-269-9', 4, 'PHP', 250),
(169, '978-971-625-270-5', 1, 'PHP', 262),
(170, '978-971-625-270-5', 2, 'PHP', 218),
(171, '978-971-625-270-5', 3, 'PHP', 273),
(172, '978-971-625-270-5', 4, 'PHP', 243),
(173, '978-971-625-271-2', 1, 'PHP', 242),
(174, '978-971-625-271-2', 2, 'PHP', 201),
(175, '978-971-625-271-2', 3, 'PHP', 252),
(176, '978-971-625-271-2', 4, 'PHP', 226),
(177, '978-971-625-273-6', 1, 'PHP', 249),
(178, '978-971-625-273-6', 2, 'PHP', 207),
(179, '978-971-625-273-6', 3, 'PHP', 260),
(180, '978-971-625-273-6', 4, 'PHP', 232);
