-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2016 at 01:13 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `suntex_weaving_industries`
--

-- --------------------------------------------------------

--
-- Table structure for table `after_service_details`
--

CREATE TABLE IF NOT EXISTS `after_service_details` (
  `service_id` varchar(30) NOT NULL,
  `customer_id` varchar(5) DEFAULT NULL,
  `group_no` varchar(5) DEFAULT NULL,
  `dates` text,
  `warranty_left` text,
  `item` text,
  `use_qty_1` text,
  `description_1` varchar(60) DEFAULT NULL,
  `price_1` text,
  `item_no_2` text,
  `use_qty_2` text,
  `description_2` varchar(60) DEFAULT NULL,
  `price_2` text,
  `item_no_3` text,
  `use_qty_3` text,
  `description_3` varchar(60) DEFAULT NULL,
  `price_3` text,
  `item_no_4` text,
  `use_qty_4` text,
  `description_4` varchar(60) DEFAULT NULL,
  `price_4` text,
  `item_no_5` text,
  `use_qty_5` text,
  `description_5` varchar(60) DEFAULT NULL,
  `price_5` text,
  `washing_qty` text,
  `no_of_items` text,
  `w_price` text,
  `service_charge` text,
  `distance` text,
  `d_price` text,
  `total_charge` text,
  `cash_payment` text,
  `balance` text,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `after_service_details`
--

INSERT INTO `after_service_details` (`service_id`, `customer_id`, `group_no`, `dates`, `warranty_left`, `item`, `use_qty_1`, `description_1`, `price_1`, `item_no_2`, `use_qty_2`, `description_2`, `price_2`, `item_no_3`, `use_qty_3`, `description_3`, `price_3`, `item_no_4`, `use_qty_4`, `description_4`, `price_4`, `item_no_5`, `use_qty_5`, `description_5`, `price_5`, `washing_qty`, `no_of_items`, `w_price`, `service_charge`, `distance`, `d_price`, `total_charge`, `cash_payment`, `balance`) VALUES
('1', '11', '11', '2016-8-12', '1', 'Item 001', '1', 'Silver', '291.2', 'Item 002', '1', 'Wooden', '358.4', 'Item 008', '1', 'Wooden', '1142.4', 'Item 007', '1', 'Silver', '627.2', 'Item 004', '3', 'Aluminium', '174.72', '15', NULL, NULL, NULL, NULL, NULL, '2593.9199999999996', '2600', '6.080000000000382');

-- --------------------------------------------------------

--
-- Table structure for table `before_service_details`
--

CREATE TABLE IF NOT EXISTS `before_service_details` (
  `b_id` int(5) NOT NULL AUTO_INCREMENT,
  `group_no` varchar(5) NOT NULL,
  `customer_id` varchar(5) NOT NULL,
  `dates` text NOT NULL,
  `type1` varchar(15) DEFAULT NULL,
  `width1` text,
  `height1` text,
  `no_of_items1` text,
  `description1` varchar(60) DEFAULT NULL,
  `type2` varchar(15) DEFAULT NULL,
  `width2` text,
  `height2` text,
  `no_of_items2` text,
  `description2` varchar(60) DEFAULT NULL,
  `type3` varchar(15) DEFAULT NULL,
  `width3` text,
  `height3` text,
  `no_of_items3` text,
  `description3` varchar(60) DEFAULT NULL,
  `type4` varchar(15) DEFAULT NULL,
  `width4` text,
  `height4` text,
  `no_of_items4` text,
  `description4` varchar(60) DEFAULT NULL,
  `type5` varchar(15) DEFAULT NULL,
  `width5` text,
  `height5` text,
  `no_of_items5` text,
  `description5` varchar(60) DEFAULT NULL,
  `type6` varchar(15) NOT NULL,
  `width6` text NOT NULL,
  `height6` text NOT NULL,
  `no_of_items6` text NOT NULL,
  `description6` varchar(60) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `before_service_details`
--

INSERT INTO `before_service_details` (`b_id`, `group_no`, `customer_id`, `dates`, `type1`, `width1`, `height1`, `no_of_items1`, `description1`, `type2`, `width2`, `height2`, `no_of_items2`, `description2`, `type3`, `width3`, `height3`, `no_of_items3`, `description3`, `type4`, `width4`, `height4`, `no_of_items4`, `description4`, `type5`, `width5`, `height5`, `no_of_items5`, `description5`, `type6`, `width6`, `height6`, `no_of_items6`, `description6`) VALUES
(1, '3', '11', '12 - 8 - 2016', 'Windows', '4 - 6"', '5 - 3"', '4', 'Wide Curl', 'Doors', '4 - 7"', '2 - 5"', '6', 'Low Curl', 'Others', '6 - 6"', '6 - 6"', '4', 'Wooden Bar need', 'Others', '5 - 5"', '3 - 4"', '2', 'More colorful', 'Doors', '3 - 7"', '7 - 3"', '4', 'Darken color', 'Windows', '4 - 5"', '4 - 6"', '6', 'Darken color');

-- --------------------------------------------------------

--
-- Table structure for table `check_warranty`
--

CREATE TABLE IF NOT EXISTS `check_warranty` (
  `customer_id` varchar(10) NOT NULL,
  `warr_left` varchar(5) NOT NULL,
  `issue_date` date DEFAULT NULL,
  `curr_date` date DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `check_warranty`
--

INSERT INTO `check_warranty` (`customer_id`, `warr_left`, `issue_date`, `curr_date`) VALUES
('009', '3', '2016-08-12', '2016-08-12'),
('11', '0', '2016-08-12', '2016-08-12');

-- --------------------------------------------------------

--
-- Table structure for table `fixing_service`
--

CREATE TABLE IF NOT EXISTS `fixing_service` (
  `fixing_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(5) DEFAULT NULL,
  `dates` date DEFAULT NULL,
  `warranty_left` text,
  `warranty_expiry` date DEFAULT NULL,
  `item_no1` text,
  `qty1` text,
  `description1` varchar(60) DEFAULT NULL,
  `item_no2` text,
  `qty2` text,
  `description2` varchar(60) DEFAULT NULL,
  `item_no3` text,
  `qty3` text,
  `description3` varchar(60) DEFAULT NULL,
  `item_no4` text,
  `qty4` text,
  `description4` varchar(60) DEFAULT NULL,
  `item_no5` text,
  `qty5` text,
  `description5` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`fixing_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `fixing_service`
--

INSERT INTO `fixing_service` (`fixing_id`, `customer_id`, `dates`, `warranty_left`, `warranty_expiry`, `item_no1`, `qty1`, `description1`, `item_no2`, `qty2`, `description2`, `item_no3`, `qty3`, `description3`, `item_no4`, `qty4`, `description4`, `item_no5`, `qty5`, `description5`) VALUES
(1, '009', '2016-08-12', '3', '2017-08-12', 'Item 001', '2', 'Wooden', 'Item 003', '1', 'Plastic', 'Item 005', '3', 'Silver', 'Item 006', '2', 'Wooden', 'Item 007', '1', 'Plastic');

-- --------------------------------------------------------

--
-- Table structure for table `lending_returning_details`
--

CREATE TABLE IF NOT EXISTS `lending_returning_details` (
  `lr_no` int(11) NOT NULL AUTO_INCREMENT,
  `group_no` text,
  `service_id` text,
  `s_type` text,
  `customer_id` text,
  `lend_date` text,
  `lend_time` text,
  `return_date` text,
  `return_time` text,
  `item_no1` text,
  `qty1` text,
  `qty11` text,
  `item_no2` text,
  `qty2` text,
  `qty22` text,
  `item_no3` text,
  `qty3` text,
  `qty33` text,
  `item_no4` text,
  `qty4` text,
  `qty44` text,
  `item_no5` text,
  `qty5` text,
  `qty55` text,
  PRIMARY KEY (`lr_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `lending_returning_details`
--

INSERT INTO `lending_returning_details` (`lr_no`, `group_no`, `service_id`, `s_type`, `customer_id`, `lend_date`, `lend_time`, `return_date`, `return_time`, `item_no1`, `qty1`, `qty11`, `item_no2`, `qty2`, `qty22`, `item_no3`, `qty3`, `qty33`, `item_no4`, `qty4`, `qty44`, `item_no5`, `qty5`, `qty55`) VALUES
(1, '3', '1', 'Fixing Service', '009', '2016-8-12', '8:48:40PM', NULL, NULL, 'Item 001', '1', NULL, 'Item 002', '1', NULL, 'Item 005', '1', NULL, 'Item 004', '1', NULL, 'Item 003', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_group_details`
--

CREATE TABLE IF NOT EXISTS `service_group_details` (
  `group_no` int(5) NOT NULL AUTO_INCREMENT,
  `leader_name` varchar(25) NOT NULL,
  `leader_empno` varchar(5) NOT NULL,
  `leader_nic` varchar(10) NOT NULL,
  `leader_tp` varchar(10) NOT NULL,
  `leader_add` varchar(35) NOT NULL,
  `member1_name` varchar(25) NOT NULL,
  `member1_empno` varchar(5) NOT NULL,
  `member1_nic` varchar(10) NOT NULL,
  `member1_tp` varchar(10) NOT NULL,
  `member1_add` varchar(35) NOT NULL,
  `member2_name` varchar(25) NOT NULL,
  `member2_empno` varchar(5) NOT NULL,
  `member2_nic` varchar(10) NOT NULL,
  `member2_tp` varchar(10) NOT NULL,
  `member2_add` varchar(35) NOT NULL,
  PRIMARY KEY (`group_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `service_group_details`
--

INSERT INTO `service_group_details` (`group_no`, `leader_name`, `leader_empno`, `leader_nic`, `leader_tp`, `leader_add`, `member1_name`, `member1_empno`, `member1_nic`, `member1_tp`, `member1_add`, `member2_name`, `member2_empno`, `member2_nic`, `member2_tp`, `member2_add`) VALUES
(1, 'Nimal', '001', '867889676', '0756765754', 'Malambe', 'Shantha', '005', '907667524', '0714533565', 'Galle', 'Arnold', '008', '936567556', '0716655876', 'Seeduwa'),
(2, 'Kamal', '002', '987776556', '0777677568', 'Matara', 'Silva', '007', '886777579', '0776744412', 'Nugegoda', 'Perera', '009', '768886234', '0757772365', 'Chillaw'),
(3, 'Namal', '011', '869976454', '0787645573', 'Kurunegala', 'De silva', '012', '775677343', '0785644653', 'Kegalle', 'Gunasena', '013', '976556346', '0764553889', 'Mawanella'),
(4, 'Kasun', '022', '883432676', '0725687643', 'Pothuhera', 'Rajapakshe', '026', '838885325', '0726798834', 'Hambantota', 'Sirisena', '027', '827772698', '0718932784', 'Polonnaruwa'),
(5, 'Nimal Silva', '022', '713337623V', '0716586363', 'Malambe', 'Kamal Perera', '008', '713337623V', '0713233423', 'Dehiwala', 'Nuwan Kumara', '005', '902122322V', '0703244387', 'Kandy');

-- --------------------------------------------------------

--
-- Table structure for table `stock_details`
--

CREATE TABLE IF NOT EXISTS `stock_details` (
  `item_no` varchar(10) NOT NULL,
  `item_name` varchar(15) NOT NULL,
  `item_brand` varchar(15) NOT NULL,
  `item_model` varchar(15) NOT NULL,
  `upload_qty` text NOT NULL,
  `unit_price` text NOT NULL,
  `selling_price` text NOT NULL,
  `date` text NOT NULL,
  `time` text NOT NULL,
  `current_qty` text NOT NULL,
  PRIMARY KEY (`item_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_details`
--

INSERT INTO `stock_details` (`item_no`, `item_name`, `item_brand`, `item_model`, `upload_qty`, `unit_price`, `selling_price`, `date`, `time`, `current_qty`) VALUES
('Item 001', 'Single Rod', 'SGS (china)', 'TF-1654', '1', '260.0', '291.2', '2016-8-12', '6:19:32AM', '5'),
('Item 002', 'Double Rod', 'SGS (china)', 'TF-1938', '2', '320.0', '358.4', '2016-8-12', '6:40:14AM', '7.0'),
('Item 003', 'Holdback', 'B2B (singapoor)', 'XF-A09', '1', '120.0', '134.4', '2016-8-12', '7:5:36AM', '6.0'),
('Item 004', 'Clip Ring', 'Taipei (Taiwan)', 'AB-16M94', '2', '52.0', '58.24', '2016-8-12', '7:6:4AM', '7.0'),
('Item 005', 'Brass', 'SGS (china)', 'ZH-2065', '3', '130.0', '145.6', '2016-8-12', '7:7:1AM', '8.0'),
('Item 006', 'Flat Bar', 'FRP (china)', '316L', '1', '265.0', '296.8', '2016-8-12', '7:7:36AM', '6.0'),
('Item 007', 'Single Rail', 'OEM (Mexico)', 'SW-028A', '2', '560.0', '627.2', '2016-8-12', '7:7:55AM', '7.0'),
('Item 008', 'Double Rail', 'TOMA (china)', 'TMS100*50', '1', '1020.0', '1142.4', '2016-8-12', '7:8:46AM', '6.0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
