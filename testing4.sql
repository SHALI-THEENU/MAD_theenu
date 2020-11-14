-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2020 at 09:19 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `testing4`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `pno` varchar(20) NOT NULL,
  `groups` varchar(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`emp_id`, `fname`, `lname`, `gender`, `address`, `pno`, `groups`, `uname`, `password`) VALUES
(3, 'admin', 'admin', 'male', 'galle', '0768424158', 'tax', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client`
--

CREATE TABLE IF NOT EXISTS `tbl_client` (
  `client_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `client_serial_no` int(11) NOT NULL,
  `client_date` date NOT NULL,
  `client_receiver_name` varchar(300) NOT NULL,
  `client_former_name` varchar(300) NOT NULL,
  `client_type_of_entity1` varchar(300) NOT NULL,
  `client_registation_no` varchar(100) NOT NULL,
  `client_group` varchar(100) NOT NULL,
  `client_type` varchar(200) NOT NULL,
  `client_receiver_address` varchar(500) NOT NULL,
  `client_mail` varchar(100) NOT NULL,
  `client_phone` varchar(300) NOT NULL,
  `client_web` varchar(200) NOT NULL,
  `client_total_before_tax` decimal(10,2) NOT NULL,
  `client_total_tax1` decimal(10,2) NOT NULL,
  `client_total_tax2` decimal(10,2) NOT NULL,
  `client_total_tax` decimal(10,2) NOT NULL,
  `client_total_after_tax` decimal(10,2) NOT NULL,
  `client_datetime` datetime NOT NULL,
  PRIMARY KEY (`client_order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `tbl_client`
--

INSERT INTO `tbl_client` (`client_order_id`, `client_id`, `client_serial_no`, `client_date`, `client_receiver_name`, `client_former_name`, `client_type_of_entity1`, `client_registation_no`, `client_group`, `client_type`, `client_receiver_address`, `client_mail`, `client_phone`, `client_web`, `client_total_before_tax`, `client_total_tax1`, `client_total_tax2`, `client_total_tax`, `client_total_after_tax`, `client_datetime`) VALUES
(31, 4524, 654123, '0000-00-00', 'PPPPPPPPPPPPPPPP', 'Mr.Khosh', 'Type1', '123654', 'acmi', 'public', 'asd', 'khan@gmail.com', 'khan-0774521452', 'acmi.lk', '0.00', '0.00', '0.00', '0.00', '0.00', '2020-09-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE IF NOT EXISTS `tbl_company` (
  `company_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `company_date` date NOT NULL,
  `company_receiver_name` varchar(300) NOT NULL,
  `company_receiver_address` text NOT NULL,
  `company_phone_no` int(11) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `company_total_before_tax` decimal(10,2) NOT NULL,
  `company_total_tax1` decimal(10,2) NOT NULL,
  `company_total_tax2` decimal(10,2) NOT NULL,
  `company_total_tax` decimal(10,2) NOT NULL,
  `company_total_after_tax` decimal(10,2) NOT NULL,
  `company_datetime` datetime NOT NULL,
  PRIMARY KEY (`company_order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_credit`
--

CREATE TABLE IF NOT EXISTS `tbl_credit` (
  `credit_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `credit_id` int(11) NOT NULL,
  `credit_date` date NOT NULL,
  `credit_client_no` varchar(300) NOT NULL,
  `credit_client_name` varchar(300) NOT NULL,
  `creditnote_select` varchar(250) NOT NULL,
  `credit_client_address` text NOT NULL,
  `credit_mail` varchar(100) NOT NULL,
  `credit_reasons` text NOT NULL,
  `credit_IRDnote_reference` varchar(500) NOT NULL,
  `credit_amount` decimal(10,2) NOT NULL,
  `credit_total_before_tax` decimal(10,2) NOT NULL,
  `credit_total_tax1` decimal(10,2) NOT NULL,
  `credit_total_tax2` decimal(10,2) NOT NULL,
  `credit_total_tax` decimal(10,2) NOT NULL,
  `credit_total_after_tax` decimal(10,2) NOT NULL,
  `credit_datetime` datetime NOT NULL,
  PRIMARY KEY (`credit_order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=27 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_debit`
--

CREATE TABLE IF NOT EXISTS `tbl_debit` (
  `debit_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `debit_id` int(11) NOT NULL,
  `debit_date` date NOT NULL,
  `debit_receiver_name` varchar(300) NOT NULL,
  `debit_receiver_address` text NOT NULL,
  `debit_total_before_tax` decimal(10,2) NOT NULL,
  `debit_total_tax1` decimal(10,2) NOT NULL,
  `debit_total_tax2` decimal(10,2) NOT NULL,
  `debit_total_tax` decimal(10,2) NOT NULL,
  `debit_total_after_tax` decimal(10,2) NOT NULL,
  `debit_datetime` datetime NOT NULL,
  PRIMARY KEY (`debit_order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tbl_debit`
--

INSERT INTO `tbl_debit` (`debit_order_id`, `debit_id`, `debit_date`, `debit_receiver_name`, `debit_receiver_address`, `debit_total_before_tax`, `debit_total_tax1`, `debit_total_tax2`, `debit_total_tax`, `debit_total_after_tax`, `debit_datetime`) VALUES
(8, 0, '0000-00-00', 'Mr.gamini', 'asd', '20000.00', '100.00', '0.00', '100.00', '0.00', '2020-09-18 00:00:00'),
(9, 125421, '2020-09-09', 'Mr.gamini', 'acmi', '20000.00', '100.00', '200.00', '300.00', '20100.00', '2020-09-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_debit_item`
--

CREATE TABLE IF NOT EXISTS `tbl_debit_item` (
  `debit_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `debit_order_id` int(11) NOT NULL,
  `debit_name` varchar(300) NOT NULL,
  `debit_expenditure` varchar(500) NOT NULL,
  `debit_period` varchar(150) NOT NULL,
  `debit_details` text NOT NULL,
  `debit_item_actual_amount` decimal(10,2) NOT NULL,
  `debit_item_tax1_amount` decimal(10,2) NOT NULL,
  `debit_item_tax2_rate` decimal(10,2) NOT NULL,
  `debit_item_tax2_amount` decimal(10,2) NOT NULL,
  `debit_item_final_amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`debit_item_id`),
  KEY `debit_order_id` (`debit_order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_debit_item`
--

INSERT INTO `tbl_debit_item` (`debit_item_id`, `debit_order_id`, `debit_name`, `debit_expenditure`, `debit_period`, `debit_details`, `debit_item_actual_amount`, `debit_item_tax1_amount`, `debit_item_tax2_rate`, `debit_item_tax2_amount`, `debit_item_final_amount`) VALUES
(1, 1, 'sfsdgfd', 'fdgdg', 'dfgdg', 'dfdgd', '1000.00', '100.00', '1.00', '10.00', '0.00'),
(2, 2, 'saf', 'safsga', 'sgvgga', 'gsgsh', '2000.00', '200.00', '1.00', '20.00', '1820.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_openingbalance`
--

CREATE TABLE IF NOT EXISTS `tbl_openingbalance` (
  `op_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `op_id` int(11) NOT NULL,
  `op_date` date NOT NULL,
  `op_client_no` int(11) NOT NULL,
  `op_client_name` varchar(300) NOT NULL,
  `openingbalance_select` varchar(250) NOT NULL,
  `op_client_address` text NOT NULL,
  `op_mail` varchar(100) NOT NULL,
  `op_amount` decimal(10,2) NOT NULL,
  `op_total_before_tax` decimal(10,2) NOT NULL,
  `op_total_tax1` decimal(10,2) NOT NULL,
  `op_total_tax2` decimal(10,2) NOT NULL,
  `op_total_tax` decimal(10,2) NOT NULL,
  `op_total_after_tax` decimal(10,2) NOT NULL,
  `op_datetime` datetime NOT NULL,
  PRIMARY KEY (`op_order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_openingbalance`
--

INSERT INTO `tbl_openingbalance` (`op_order_id`, `op_id`, `op_date`, `op_client_no`, `op_client_name`, `openingbalance_select`, `op_client_address`, `op_mail`, `op_amount`, `op_total_before_tax`, `op_total_tax1`, `op_total_tax2`, `op_total_tax`, `op_total_after_tax`, `op_datetime`) VALUES
(11, 1, '2020-09-02', 12, 'bbb', '', 'sdfsfafs', 'wanaa@gmail.com', '50000.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2020-09-21 00:00:00'),
(12, 1, '0000-00-00', 12, 'bbb', 'aD', 'ad', 'wanaa@gmail.com', '50000.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2020-09-21 00:00:00'),
(13, 2, '2020-09-01', 123658, 'Mr.Wanaa', '', 'nksmkvdmsk', 'wanaa@gmail.com', '50000.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2020-09-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(50) CHARACTER SET latin1 NOT NULL,
  `order_date` date NOT NULL,
  `order_receiver_name` varchar(250) CHARACTER SET latin1 NOT NULL,
  `invoice_select` varchar(100) NOT NULL,
  `order_receiver_address` text CHARACTER SET latin1 NOT NULL,
  `order_total_before_tax` decimal(10,2) NOT NULL,
  `order_total_tax1` decimal(10,2) NOT NULL,
  `order_total_tax2` decimal(10,2) NOT NULL,
  `order_total_tax` decimal(10,2) NOT NULL,
  `order_total_after_tax` decimal(10,2) NOT NULL,
  `order_datetime` date NOT NULL,
  `o_date` date NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `order_no`, `order_date`, `order_receiver_name`, `invoice_select`, `order_receiver_address`, `order_total_before_tax`, `order_total_tax1`, `order_total_tax2`, `order_total_tax`, `order_total_after_tax`, `order_datetime`, `o_date`) VALUES
(21, 'AC00002', '2020-09-02', 'anjan', 'Acmi tax', 'acmi', '5000.00', '1.00', '50.00', '51.00', '5049.00', '2020-09-18', '0000-00-00'),
(22, 'AC00003', '2020-09-21', 'saf', 'Acmi Audit', 'das', '125000.00', '1000.00', '1250.00', '2250.00', '124000.00', '2020-09-18', '0000-00-00'),
(23, 'AC00004', '2020-09-01', 'asd', 'Acmi Comsec', 'asd', '5000.00', '0.00', '50.00', '50.00', '5000.00', '2020-09-18', '0000-00-00'),
(26, 'AC00005', '2020-10-15', 'safna', 'Acmi tax', 'malabe, colombo', '5000.00', '500.00', '250.00', '750.00', '4750.00', '2020-10-18', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_item`
--

CREATE TABLE IF NOT EXISTS `tbl_order_item` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `item_name` varchar(250) CHARACTER SET latin1 NOT NULL,
  `Type_of_service` varchar(75) NOT NULL,
  `sub_service` varchar(155) NOT NULL,
  `details` text NOT NULL,
  `period` varchar(50) NOT NULL,
  `order_item_actual_amount` decimal(10,2) NOT NULL,
  `order_item_tax1_amount` decimal(10,2) NOT NULL,
  `order_item_tax2_rate` decimal(10,2) NOT NULL,
  `order_item_tax2_amount` decimal(10,2) NOT NULL,
  `order_item_final_amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `tbl_order_item`
--

INSERT INTO `tbl_order_item` (`order_item_id`, `order_id`, `item_name`, `Type_of_service`, `sub_service`, `details`, `period`, `order_item_actual_amount`, `order_item_tax1_amount`, `order_item_tax2_rate`, `order_item_tax2_amount`, `order_item_final_amount`) VALUES
(1, 1, 'audit', 'external audit', 'year end', 'Audit services', '', '0.00', '0.00', '0.00', '0.00', '0.00'),
(2, 2, 'tax', 'auths', 'internal', 'tax', '6-7', '40000.00', '1000.00', '1.00', '400.00', '39400.00'),
(3, 3, 'audit', 'internal', 'aud', 'audit', '1-2', '500000.00', '1000.00', '1.00', '5000.00', '504000.00'),
(4, 4, 'accounnt', 'internal', 'sub', 'acc', '3-6', '600000.00', '2000.00', '1.00', '6000.00', '604000.00'),
(5, 5, 'tax', 'taxtax', 'ta', 'tax', '1-2', '20000.00', '100.00', '1.00', '200.00', '20100.00'),
(6, 6, 'ss', 'dd', 'dddd', 'dd', 'dd', '1200.00', '10.00', '1.00', '12.00', '1202.00'),
(7, 7, 'gg', 'gg', 'gggg', 'gg', 'gg', '5200.00', '20.00', '1.00', '52.00', '5232.00'),
(8, 8, 'tt', 'tt', 'tt', 'tt', 'tt', '8500.00', '50.00', '1.00', '85.00', '8535.00'),
(9, 9, 'cc', 'cc', 'cc', 'cc', '1-3', '50000.00', '100.00', '1.00', '500.00', '50400.00'),
(10, 10, 'hh', 'hh', 'hh', 'hh', 'hhh', '500.00', '100.00', '1.00', '5.00', '405.00'),
(11, 11, 'sss', 'ss', 'ss', 'ss', '1', '12000.00', '200.00', '2.00', '240.00', '12040.00'),
(12, 12, 'rr', 'rr', 'rr', 'rr', 'rr', '50000.00', '100.00', '2.00', '1000.00', '50900.00'),
(13, 13, 'bsahvs', 'vagsv', 'bahb', 'ags', '2', '25000.00', '520.00', '2.00', '500.00', '24980.00'),
(14, 14, 'qqq', 'qqqqq', 'qq', 'qq', '2', '5000000.00', '1000.00', '2.00', '100000.00', '5099000.00'),
(15, 15, 'ww', 'ww', 'ww', 'ww', '3', '25000.00', '1000.00', '1.00', '250.00', '24250.00'),
(16, 16, 'qqq', 'qq', 'qq', 'qq', 'qq', '200000.00', '100.00', '1.00', '2000.00', '201900.00'),
(17, 17, 'tt', 'tt', 'tt', 'tt', '2', '20000.00', '100.00', '1.00', '0.00', '0.00'),
(18, 18, 'xx', 'xx', 'xx', 'xx', '1', '2000.00', '10.00', '1.00', '20.00', '2010.00'),
(19, 19, 'TAX', 'OBTAINING REGISTATION', 'TIN', 'asas', '2020/1/1', '2000000.00', '200.00', '1.00', '20000.00', '2019800.00'),
(20, 20, 'cup', 'OBTAINING REGISTATION', 'three', 'Audit services', '2020/1/1', '5000.00', '0.00', '1.00', '50.00', '5050.00'),
(21, 21, 'comsec', 'external audit', 'audit', 'Audit services', '2020/1/1', '5000.00', '1.00', '1.00', '50.00', '5049.00'),
(22, 22, 'gafa', 'gavga', 'gag', 'agga', 'agga', '125000.00', '1000.00', '1.00', '1250.00', '125250.00'),
(23, 23, 'TAX', 'external audit', 'tax', 'asd', '2020/1/1', '5000.00', '0.00', '0.00', '50.00', '5000.00'),
(24, 24, 'TAX', 'external audit', 'three', 'Audit services', '2020/1/1', '5000.00', '500.00', '0.00', '0.00', '4500.00'),
(25, 25, 'asd', 'OBTAINING REGISTATION', 'tax', 'Audit services', '2020/1/1', '200.00', '50.00', '0.00', '0.00', '150.00'),
(26, 26, 'audtit', 'audit testing', 'testing purpose', 'nothing', '3', '5000.00', '500.00', '5.00', '250.00', '4750.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE IF NOT EXISTS `tbl_service` (
  `service_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `service` varchar(255) NOT NULL,
  `type_of_service` varchar(500) NOT NULL,
  `sub_service` varchar(500) NOT NULL,
  `service_total_before_tax` decimal(10,2) NOT NULL,
  `service_total_tax1` decimal(10,2) NOT NULL,
  `service_total_tax2` decimal(10,2) NOT NULL,
  `service_total_tax` decimal(10,2) NOT NULL,
  `service_total_after_tax` decimal(10,2) NOT NULL,
  `service_datetime` datetime NOT NULL,
  PRIMARY KEY (`service_order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=8 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_debit_item`
--
ALTER TABLE `tbl_debit_item`
  ADD CONSTRAINT `tbl_debit_item_ibfk_1` FOREIGN KEY (`debit_order_id`) REFERENCES `tbl_debit_item` (`debit_item_id`);

--
-- Constraints for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  ADD CONSTRAINT `tbl_order_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `tbl_order_item` (`order_item_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
