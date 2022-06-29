-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 
-- サーバのバージョン： 5.5.39
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uniformdb`
--
CREATE DATABASE IF NOT EXISTS `uniformdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `uniformdb`;

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` varchar(20) NOT NULL,
  `admin_password` varchar(20) NOT NULL,
  `admin_name` varchar(20) DEFAULT NULL,
  `authority` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_password`, `admin_name`, `authority`) VALUES
('999', 'abc999', '管理者', '1');

-- --------------------------------------------------------

--
-- テーブルの構造 `order_info`
--

CREATE TABLE `order_info` (
  `order_id` int(11) NOT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `product_id` varchar(20) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `payment_status` varchar(1) DEFAULT NULL,
  `shipping_status` varchar(1) DEFAULT NULL,
  `remarks` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `order_info`
--

INSERT INTO `order_info` (`order_id`, `user_id`, `product_id`, `product_quantity`, `order_date`, `payment_status`, `shipping_status`, `remarks`) VALUES
(1, '001', '1001', 1, '2022-06-28', '1', '1', ''),
(9, '000', '1001', 0, '2022-06-28', '1', '1', ''),
(13, '0003', '1002', 0, '2022-06-28', '1', '1', ''),
(21, '0003', '1001', 0, '2022-06-29', '1', '1', ''),
(22, '0003', '1001', 1, '2022-06-29', '1', '2', ''),
(23, '0003', '1001', 1, '2022-06-29', '2', '2', ''),
(24, '0003', '1001', 2, '2022-06-29', '1', '2', ''),
(25, '0003', '1001', 1, '2022-06-29', '1', '1', ''),
(26, '0003', '1002', 1, '2022-06-29', '1', '1', ''),
(27, '0003', '1003', 1, '2022-06-29', '1', '1', ''),
(28, '0003', '1001', 1, '2022-06-29', '1', '1', ''),
(29, '0005', '1001', 1, '2022-06-29', '1', '1', ''),
(30, '370', '1001', 4, '2022-06-29', '1', '1', 'fasdfasfdas'),
(36, '0003', '1001', 1, '2022-06-29', '1', '1', '11111111'),
(37, '0003', '1001', 1, '2022-06-29', '1', '1', 'ddddd');

-- --------------------------------------------------------

--
-- テーブルの構造 `product_info`
--

CREATE TABLE `product_info` (
  `product_id` varchar(20) NOT NULL,
  `product_name` varchar(20) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `product_img` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `product_info`
--

INSERT INTO `product_info` (`product_id`, `product_name`, `stock`, `price`, `product_img`) VALUES
('1001', 'ユニフォーム1', 186, 1000, 'uniform1.img'),
('1002', 'ユニフォーム2', 4, 1100, 'uniform2.img'),
('1003', 'ユニフォーム3', 2, 1800, 'uniform3.img');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_info`
--

CREATE TABLE `user_info` (
  `user_id` varchar(20) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `mailaddress` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `authority` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `user_info`
--

INSERT INTO `user_info` (`user_id`, `user_password`, `user_name`, `mailaddress`, `address`, `authority`) VALUES
('000', '0000', 'NONuser', 'email', 'somewhere', '2'),
('0003', '0003', 'test', 'test', 'coconattu', '2'),
('0005', '0005', 'testさん', 'mail', 'docomo', '2'),
('001', 'abc001', '神田一', 'kanda1@com', '神田一丁目', '2'),
('002', 'abc001', '神田二', 'kanda2@com', '神田二丁目', '2'),
('370', '', 'ddddfffff', 'dddd', 'dfdfdf', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `order_info`
--
ALTER TABLE `order_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_info`
--
ALTER TABLE `order_info`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `order_info`
--
ALTER TABLE `order_info`
  ADD CONSTRAINT `order_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`),
  ADD CONSTRAINT `order_info_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_info` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
