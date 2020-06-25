-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2019 at 12:41 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final`
--
CREATE DATABASE IF NOT EXISTS final;
-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`) VALUES
(2, 5, 'your messages can only be edited and deleted by you the user', 'But, you can read the other posts', '2019-10-27 19:27:15'),
(3, 16, 'testing forum posts title', 'helloworld this is a forum post message in the body', '2019-10-31 00:52:33'),
(4, 16, 'Testing Forum post', 'CRUD', '2019-10-31 11:54:21');

-- --------------------------------------------------------

--
-- Table structure for table `table_contact_page`
--

CREATE TABLE IF NOT EXISTS `table_contact_page` (
  `ID` varchar(255) NOT NULL,
  `NAMES` varchar(255) NOT NULL,
  `MESSAGES` varchar(255) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_contact_page`
--

INSERT INTO `table_contact_page` (`ID`, `NAMES`, `MESSAGES`, `EMAIL`) VALUES
('287fafba-f479-11e9-ac78-c70adb2c4bf3', 'Name here', 'message here', 'email here'),
('f40bc4f1-f493-11e9-ac78-c70adb2c4bf3', 'Name here', 'message here', 'email here');

-- --------------------------------------------------------

--
-- Table structure for table `table_feedback`
--

CREATE TABLE IF NOT EXISTS `table_feedback` (
  `ID` varchar(255) NOT NULL,
  `FEEDBACKTITLE` varchar(255) NOT NULL,
  `FEEDBACK` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_feedback`
--

INSERT INTO `table_feedback` (`ID`, `FEEDBACKTITLE`, `FEEDBACK`) VALUES
('288398fc-f479-11e9-ac78-c70adb2c4bf3', 'subject here', 'feedback here'),
('f40da9a7-f493-11e9-ac78-c70adb2c4bf3', 'subject here', 'feedback here');

-- --------------------------------------------------------

--
-- Table structure for table `table_login`
--

CREATE TABLE IF NOT EXISTS `table_login` (
  `ID` varchar(255) NOT NULL,
  `ADMIN_LOGIN` varchar(255) NOT NULL,
  `ADMIN_PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_login`
--

INSERT INTO `table_login` (`ID`, `ADMIN_LOGIN`, `ADMIN_PASSWORD`) VALUES
('28874f83-f479-11e9-ac78-c70adb2c4bf3', 'admin username here', 'admin password here'),
('f40fede2-f493-11e9-ac78-c70adb2c4bf3', 'admin username here', 'admin password here');

-- --------------------------------------------------------

--
-- Table structure for table `table_menu`
--

CREATE TABLE IF NOT EXISTS `table_menu` (
  `ID` varchar(255) NOT NULL,
  `MENU_ITEM` varchar(255) DEFAULT NULL,
  `ITEM_PRICE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_menu`
--

INSERT INTO `table_menu` (`ID`, `MENU_ITEM`, `ITEM_PRICE`) VALUES
('28900641-f479-11e9-ac78-c70adb2c4bf3', 'the menu item', 'menu item price'),
('f4145740-f493-11e9-ac78-c70adb2c4bf3', 'the menu item', 'menu item price');

-- --------------------------------------------------------

--
-- Table structure for table `table_opening_hours`
--

CREATE TABLE IF NOT EXISTS `table_opening_hours` (
  `ID` varchar(255) NOT NULL,
  `OPEN_HOURS` varchar(255) NOT NULL,
  `OPEN_DAYS` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_opening_hours`
--

INSERT INTO `table_opening_hours` (`ID`, `OPEN_HOURS`, `OPEN_DAYS`) VALUES
('288b1270-f479-11e9-ac78-c70adb2c4bf3', 'open hours are', 'open days are'),
('f4121967-f493-11e9-ac78-c70adb2c4bf3', 'open hours are', 'open days are');

-- --------------------------------------------------------

--
-- Table structure for table `table_register`
--

CREATE TABLE IF NOT EXISTS`table_register` (
  `ID` varchar(255) DEFAULT NULL,
  `NAMES` varchar(255) DEFAULT NULL,
  `COMPANY_NAME` varchar(255) DEFAULT NULL,
  `REGO_EMAIL` varchar(255) DEFAULT NULL,
  `REGO_PASSWORD` varchar(255) DEFAULT NULL,
  `CONFIRM_REGO_PASSWORD` varchar(255) DEFAULT NULL,
  `TERMS_AND_CONDITIONS` varchar(255) DEFAULT NULL,
  `SUBMIT` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_register`
--

INSERT INTO `table_register` (`ID`, `NAMES`, `COMPANY_NAME`, `REGO_EMAIL`, `REGO_PASSWORD`, `CONFIRM_REGO_PASSWORD`, `TERMS_AND_CONDITIONS`, `SUBMIT`) VALUES
('289d8472-f479-11e9-ac78-c70adb2c4bf3', 'name here', 'company name here', 'rego here', 'rego password', 'confirm rego here', 'terms and conditions here', 'submit here'),
('f4182f63-f493-11e9-ac78-c70adb2c4bf3', 'name here', 'company name here', 'rego here', 'rego password', 'confirm rego here', 'terms and conditions here', 'submit here');

-- --------------------------------------------------------

--
-- Table structure for table `table_specials`
--

CREATE TABLE IF NOT EXISTS `table_specials` (
  `ID` varchar(255) NOT NULL,
  `SPECIAL_ITEM` varchar(255) DEFAULT NULL,
  `SPECIAL_PRICE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_specials`
--

INSERT INTO `table_specials` (`ID`, `SPECIAL_ITEM`, `SPECIAL_PRICE`) VALUES
('2896b1f2-f479-11e9-ac78-c70adb2c4bf3', 'special item', 'special price'),
('f416580d-f493-11e9-ac78-c70adb2c4bf3', 'special item', 'special price');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS`users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(5, 'Luke', 'luke@gmail.com', '$2y$10$sMDONFv1U8cBSe2BTAlOseOYnQ1N723O6w/MuEjIWI4cxeOceiWL.', '2019-10-27 17:19:54'),
(6, 'Joanna', 'dark@gmail.com', '$2y$10$zJduf6ixc7IqYpIO27Xy/uxLA.kd934HukeiculSDtQBux9bDBCyK', '2019-10-27 19:41:25'),
(7, 'Perfect', 'perfectware@outlook.com', '$2y$10$UcMIWhEyHROQpoeN6dQl9u8ExYwtICil8pJG6ZRs/3Vu2/8TjQZn6', '2019-10-27 21:03:08'),
(8, 'Dongdong', 'ladywinter@gmail.com', '$2y$10$9CZXG7ewKNH79dqyZZkkxudXbumJWa3u5fdmN3GCzYdTpya.CxpUa', '2019-10-27 21:27:35'),
(9, 'Allan', 'allan@gmail.com', '$2y$10$tZAQPp23Ej1J/GAtPDpiQuYKP8W.BurGf2.yFSsGqkIp0cSvYJPj.', '2019-10-27 21:53:35'),
(10, 'luke', 'abi@gmail.com', '$2y$10$v0X.UMbB.YZFNJFYh/nD8uCHMfPEn4Wng2S2D5I8a/83mPY3jPRlK', '2019-10-29 12:07:46'),
(11, 'Lukas', 'jere.roessner@gmail.com', '$2y$10$w0kUdCnhovXZ85.xkTJoYuIAIDLdrb4S1T6ZqN3mdCzIuYwz6Qwce', '2019-10-29 12:33:59'),
(12, 'c@gmail.com', 'c@gmail.com', '$2y$10$70osZO7mMmRtPNZ8EyEhBeHgpj3S4G1QnlyJuKiefeTmSdVNVjor2', '2019-10-29 22:36:46'),
(13, 'vili', 'v@gmail.com', '$2y$10$tHRESqUwnQEfrRqXpkJC3OLnPyNljuOWuG7aD6jGI3Ps0eimAatFO', '2019-10-30 13:36:21'),
(14, 'f', 'f@f.com', '$2y$10$MNfJQ1kEpM/VsqmEHX4BIOj2xZj0nDY4v.jzZP/wHoshD.3B69TC.', '2019-10-30 14:08:46'),
(15, 'layton2', 'lyyton2@gmail.com', '$2y$10$y7HonHH7SPVDNTL2A8jA/Ou.ssFi11hSCU/hvifJGNkxpO7ozmm86', '2019-10-30 15:50:19'),
(16, 'Luka', 'luka@gmail.com', '$2y$10$7XnjgkZRYrTQQGbYq32c7epoMwDPrtBq.F1U9d1hbxYbzpzidFZCO', '2019-10-30 21:40:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_contact_page`
--
ALTER TABLE `table_contact_page`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `table_feedback`
--
ALTER TABLE `table_feedback`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `table_login`
--
ALTER TABLE `table_login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `table_menu`
--
ALTER TABLE `table_menu`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `table_opening_hours`
--
ALTER TABLE `table_opening_hours`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `table_specials`
--
ALTER TABLE `table_specials`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
