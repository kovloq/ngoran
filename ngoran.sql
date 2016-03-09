-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 09, 2016 at 12:47 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `calendars`
--

CREATE TABLE IF NOT EXISTS `calendars` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `tipe` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `calendars`
--

INSERT INTO `calendars` (`id`, `tanggal`, `event`, `tipe`, `created_at`, `updated_at`) VALUES
(1, '2016-01-01', '元日', 1, '2016-03-07 11:15:00', '2016-03-07 11:15:00'),
(2, '2016-01-11', '成人の日', 1, '2016-03-07 11:15:28', '2016-03-07 11:15:28'),
(3, '2016-02-11', '建国記念日', 1, '2016-03-07 11:15:52', '2016-03-07 11:15:52'),
(4, '2016-03-20', '春分の日', 1, '2016-03-07 11:16:18', '2016-03-07 11:16:18'),
(5, '2016-03-21', '振替休日', 1, '2016-03-07 11:17:10', '2016-03-07 11:17:10'),
(6, '2016-04-29', '昭和の日', 1, '2016-03-07 11:17:36', '2016-03-07 11:17:36'),
(7, '2016-05-03', '憲法記念日', 1, '2016-03-07 11:17:59', '2016-03-07 11:17:59'),
(8, '2016-05-04', 'みどりの日', 1, '2016-03-07 11:18:26', '2016-03-07 11:18:26'),
(9, '2016-05-05', 'こどもの日', 1, '2016-03-07 11:18:55', '2016-03-07 11:18:55'),
(10, '2016-07-18', '海の日', 1, '2016-03-07 11:19:25', '2016-03-07 11:19:25'),
(11, '2016-08-11', '山の日', 1, '2016-03-07 11:19:48', '2016-03-07 11:19:48'),
(12, '2016-09-19', '敬老の日', 1, '2016-03-07 11:20:11', '2016-03-07 11:20:11'),
(13, '2016-09-22', '秋分の日', 1, '2016-03-07 11:20:33', '2016-03-07 11:20:33'),
(14, '2016-10-10', '体育の日', 1, '2016-03-07 11:20:54', '2016-03-07 11:20:54'),
(15, '2016-11-03', '文化の日', 1, '2016-03-07 11:21:17', '2016-03-07 11:21:17'),
(16, '2016-11-23', '勤労感謝の日', 1, '2016-03-07 11:21:40', '2016-03-07 11:21:40'),
(17, '2016-12-23', '天皇誕生日', 1, '2016-03-07 11:22:08', '2016-03-07 11:22:08'),
(18, '2016-01-02', '朝日新聞', 0, '2016-03-07 11:54:17', '2016-03-07 11:54:17'),
(19, '2016-02-15', '朝日新聞', 0, '2016-03-07 11:56:57', '2016-03-07 11:56:57'),
(20, '2016-04-11', '朝日新聞', 0, '2016-03-07 11:57:15', '2016-03-07 11:57:15'),
(21, '2016-05-06', '朝日新聞', 0, '2016-03-07 11:57:31', '2016-03-07 11:57:31'),
(22, '2016-06-13', '朝日新聞', 0, '2016-03-07 11:57:56', '2016-03-07 11:57:56'),
(23, '2016-07-19', '朝日新聞', 0, '2016-03-07 11:58:14', '2016-03-07 11:58:14'),
(24, '2016-09-12', '朝日新聞', 0, '2016-03-07 11:58:31', '2016-03-07 11:58:31'),
(25, '2016-10-11', '朝日新聞', 0, '2016-03-07 11:58:48', '2016-03-07 11:58:48'),
(26, '2016-11-14', '朝日新聞', 0, '2016-03-07 11:59:05', '2016-03-07 11:59:05'),
(27, '2016-12-12', '朝日新聞', 0, '2016-03-07 11:59:22', '2016-03-07 11:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `building_name` varchar(255) DEFAULT NULL,
  `room_number` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `building_name`, `room_number`, `created_at`, `updated_at`, `latitude`, `longitude`, `image`) VALUES
(1, 'Test', 'Bekasi', 'nama gedung', '123', '2016-03-02 12:57:16', '2016-03-02 12:57:16', '', '', NULL),
(2, 'Dana', 'Bekasi', 'Gedung', '12321', '2016-03-02 13:29:03', '2016-03-02 13:29:03', 'latitude', 'Longitude', NULL),
(3, 'Dana', 'dana', 'test', 'test', '2016-03-02 13:31:27', '2016-03-02 13:34:34', '123123', '131', 'one_piece-1.png'),
(4, 'Dana', '福岡県福岡市博多区千代5-1-4', 'Syarumankoopo', '305', '2016-03-04 12:54:14', '2016-03-04 12:54:14', '33.60507', '130.4108005', 'S__30351414.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE IF NOT EXISTS `days` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_kana` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `name`, `name_kana`, `created_at`, `updated_at`) VALUES
(1, 'Monday', '月曜日', '2016-02-28 10:44:49', '2016-02-28 10:44:49'),
(2, 'Tuesday', '火曜日', '2016-02-28 10:45:31', '2016-02-28 10:45:31'),
(3, 'Wednesday', '水曜日', '2016-02-28 10:45:49', '2016-02-28 10:45:49'),
(4, 'Thursday', '木曜日', '2016-02-28 10:46:17', '2016-02-28 10:46:17'),
(5, 'Friday', '金曜日', '2016-02-28 10:46:36', '2016-02-28 10:46:36'),
(6, 'Saturday', '土曜日', '2016-02-28 10:46:54', '2016-02-28 10:46:54'),
(7, 'Sunday', '日曜日', '2016-02-28 10:47:16', '2016-02-28 10:47:16');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE IF NOT EXISTS `deliveries` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `koran_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `monday` tinyint(1) DEFAULT NULL,
  `tuesday` tinyint(1) DEFAULT NULL,
  `wednesday` tinyint(1) DEFAULT NULL,
  `thursday` tinyint(1) DEFAULT NULL,
  `friday` tinyint(1) DEFAULT NULL,
  `saturday` tinyint(1) DEFAULT NULL,
  `sunday` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `customer_id`, `koran_id`, `amount`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 1, 1, 1, 1, 1, 0, 0, '2016-03-02 12:57:16', '2016-03-02 12:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `korans`
--

CREATE TABLE IF NOT EXISTS `korans` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `day_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `monday` tinyint(1) DEFAULT NULL,
  `tuesday` tinyint(1) DEFAULT NULL,
  `wednesday` tinyint(1) DEFAULT NULL,
  `thursday` tinyint(1) DEFAULT NULL,
  `friday` tinyint(1) DEFAULT NULL,
  `saturday` tinyint(1) DEFAULT NULL,
  `sunday` tinyint(1) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `korans`
--

INSERT INTO `korans` (`id`, `name`, `image`, `website`, `day_id`, `created_at`, `updated_at`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`, `color`) VALUES
(1, '朝日新聞', 'asahi.png', 'http://asahi.com', NULL, '2016-02-28 11:59:52', '2016-02-28 11:59:52', 1, 1, 1, 1, 1, 1, 1, '#b90000'),
(2, 'スポーツ新聞', NULL, 'http://www.nikkansports.com/', NULL, '2016-02-28 12:04:44', '2016-02-28 12:04:44', 1, 1, 1, 1, 1, 1, 1, '#119dce'),
(3, '繊研新聞', 'senken.jpg', 'http://www.senken.co.jp/', NULL, '2016-02-28 12:08:09', '2016-02-28 12:08:09', 1, 1, 1, 1, 1, 0, 0, '#2355a5'),
(4, '自動車新聞', 'mobil.jpg', 'http://www.njd.jp/', NULL, '2016-02-28 12:09:49', '2016-02-28 12:09:49', 1, 1, 1, 1, 1, 1, 0, '#9d2123'),
(5, '株式新聞', 'kabushiki.gif', 'http://kabushiki.jp/', NULL, '2016-02-28 12:13:02', '2016-02-28 12:13:02', 0, 1, 1, 1, 1, 1, 0, NULL),
(6, '小学朝日新聞', 'smp.png', 'http://www.asagaku.com/', NULL, '2016-02-28 12:15:51', '2016-02-28 12:27:01', 1, 1, 1, 1, 1, 1, 1, NULL),
(7, '電波新聞', 'denpa.jpg', 'http://www.dempa.co.jp/', NULL, '2016-02-28 12:17:36', '2016-02-28 12:17:36', 1, 1, 1, 1, 1, 0, 0, NULL),
(8, 'みなと新聞', 'bg_head.gif', 'http://www.minato-yamaguchi.co.jp/minato/', NULL, '2016-02-28 12:19:35', '2016-02-28 12:19:35', 1, 1, 1, 1, 1, 0, 0, NULL),
(9, '中高朝日新聞', 'sma.png', 'https://digital.asagaku.com/chugaku/', NULL, '2016-02-28 12:22:13', '2016-02-28 12:22:13', 0, 0, 0, 0, 0, 1, 1, NULL),
(10, '建設工業新聞', 'kensetsu.jpg', 'http://www.decn.co.jp/', NULL, '2016-02-28 12:25:48', '2016-02-28 12:25:48', 1, 1, 1, 1, 1, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `koran_options`
--

CREATE TABLE IF NOT EXISTS `koran_options` (
  `id` int(11) NOT NULL,
  `koran_id` int(11) DEFAULT NULL,
  `koran_option_id` int(11) DEFAULT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20160209111028'),
('20160210100416'),
('20160210101103'),
('20160228103806'),
('20160228114237'),
('20160228114720'),
('20160302124043'),
('20160307084752');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendars`
--
ALTER TABLE `calendars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korans`
--
ALTER TABLE `korans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `koran_options`
--
ALTER TABLE `koran_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendars`
--
ALTER TABLE `calendars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `korans`
--
ALTER TABLE `korans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `koran_options`
--
ALTER TABLE `koran_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
