-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8888
-- Generation Time: 2015 年 8 月 09 日 11:21
-- サーバのバージョン： 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `kamitan`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `kakomons`
--

CREATE TABLE `kakomons` (
  `id` int(11) NOT NULL,
  `filename` varchar(500) CHARACTER SET latin1 NOT NULL,
  `user_if` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `lecture_id` int(11) NOT NULL,
  `testyear` year(4) NOT NULL,
  `upload_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `kakomons`
--

INSERT INTO `kakomons` (`id`, `filename`, `user_if`, `university_id`, `faculty_id`, `department_id`, `lecture_id`, `testyear`, `upload_date`) VALUES
(1, 'filename', 2, 3, 5, 3, 2, 2015, '2015-08-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kakomons`
--
ALTER TABLE `kakomons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kakomons`
--
ALTER TABLE `kakomons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;