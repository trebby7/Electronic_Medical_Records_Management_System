-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-06-14 07:02:10
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctor_for_test_se`
--

-- --------------------------------------------------------

--
-- 表的结构 `doctor_a`
--

CREATE TABLE `doctor_a` (
  `Doctor_ID` int(16) NOT NULL COMMENT '医生ID',
  `Doctor_Name` text NOT NULL COMMENT '医生姓名',
  `Doctor_Key` varchar(16) NOT NULL COMMENT '医生密码'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `doctor_a`
--

INSERT INTO `doctor_a` (`Doctor_ID`, `Doctor_Name`, `Doctor_Key`) VALUES
(334, '久保带人', 'coat'),
(810, '远野后辈', 'acceed');

-- --------------------------------------------------------

--
-- 表的结构 `patient_test`
--

CREATE TABLE `patient_test` (
  `Patient_Name` text NOT NULL COMMENT '病人姓名',
  `User_Name` varchar(48) NOT NULL COMMENT '病人账号名',
  `Patient_Key` varchar(16) DEFAULT NULL COMMENT '病人密码',
  `Sign_in_time` date NOT NULL DEFAULT '1919-08-10',
  `Doctor_ID` int(11) NOT NULL COMMENT '管理医生ID'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `patient_test`
--

INSERT INTO `patient_test` (`Patient_Name`, `User_Name`, `Patient_Key`, `Sign_in_time`, `Doctor_ID`) VALUES
('田所浩二', 'BABYLON', '114514', '1919-08-10', 334),
('TNOK', 'tnok', '1919', '1919-03-04', 334),
('水鸭', 'ShuiYa', NULL, '1919-08-10', 334),
('KMR', 'KMR', NULL, '1919-08-10', 810);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor_a`
--
ALTER TABLE `doctor_a`
  ADD PRIMARY KEY (`Doctor_ID`),
  ADD UNIQUE KEY `Doctor_ID` (`Doctor_ID`);

--
-- Indexes for table `patient_test`
--
ALTER TABLE `patient_test`
  ADD PRIMARY KEY (`User_Name`),
  ADD UNIQUE KEY `User_name` (`User_Name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;