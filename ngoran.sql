-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 10, 2016 at 11:20 AM
-- Server version: 5.6.23
-- PHP Version: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ngoran`
--

--
-- Dumping data for table `branches`
--


INSERT INTO `customers` (`id`, `name`, `address`, `building_name`, `room_number`, `created_at`, `updated_at`, `latitude`, `longitude`, `image`) VALUES
(1, '平山　美保子', '福岡県福岡市博多区 1-30 ロフティウェルス 402', 'ロフティウェルス', '402', '2016-03-22 11:45:59', '2016-03-22 11:45:59', '33.5822826', '130.4285121', NULL),
(2, '茂呂 直展', '福岡県福岡市博多区 1-30 ロフティウェルス 1002', 'ロフティウェルス', '1002', '2016-03-22 11:53:30', '2016-03-22 11:53:30', '33.5822826', '130.4285121', NULL),
(3, '喫茶サンローズ', '福岡県福岡市博多区 2-10 南近代ビル B1F', '南近代ビル', 'B1F', '2016-03-22 11:55:29', '2016-03-22 11:55:29', '33.5920242', '130.4150061', NULL),
(4, 'ゼット(株）九州支店', '福岡県福岡市博多区 2-10 南近代ビル 4F', '南近代ビル', '4F', '2016-03-22 11:59:10', '2016-03-22 11:59:10', '33.5809778', '130.4300643', NULL),
(5, '株木建設（株）九州支店', '福岡県福岡市博多区 2-10 南近代ビル 9F', '南近代ビル', '9F', '2016-03-22 12:00:15', '2016-03-22 12:00:15', '33.5809778', '130.4300643', NULL);

--
-- Dumping data for table `days`
--

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `branch_id`, `name`) VALUES
(1, 'dana@onewaymail.com', '21cb4e4be93c09542ffa73b2b5cb95ea', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2016-03-18 13:55:09', '2016-03-18 13:55:09', 1, 'Dana');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
