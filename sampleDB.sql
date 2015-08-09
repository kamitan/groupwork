-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8888
-- Generation Time: 2015 年 8 月 09 日 08:39
-- サーバのバージョン： 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `kamitan`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `classes`
--

CREATE TABLE `classes` (
  `class_id` int(11) NOT NULL,
  `classname_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `classes`
--

INSERT INTO `classes` (`class_id`, `classname_id`, `teacher_id`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 4),
(4, 4, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `classnames`
--

CREATE TABLE `classnames` (
  `id` int(11) NOT NULL,
  `university_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `classname` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `classnames`
--

INSERT INTO `classnames` (`id`, `university_id`, `faculty_id`, `department_id`, `classname`) VALUES
(1, 3, 5, 3, '数理論理学'),
(2, 3, 5, 3, '情報知能工学演習２'),
(3, 3, 5, 3, 'データベースシステム'),
(4, 3, 5, 3, 'スペクトル解析');

-- --------------------------------------------------------

--
-- テーブルの構造 `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `departments`
--

INSERT INTO `departments` (`id`, `name`) VALUES
(11, '人間環境学科'),
(12, '人間行動学科'),
(8, '工業化学科'),
(2, '市民工学科'),
(6, '建築学科'),
(13, '応用動物科'),
(5, '応用化学科'),
(14, '応用生物科'),
(7, '情報学科'),
(3, '情報知能工学科'),
(1, '機械工学科'),
(10, '経営学科'),
(9, '経済学科'),
(4, '電気電子工学科');

-- --------------------------------------------------------

--
-- テーブルの構造 `deprelations`
--

CREATE TABLE `deprelations` (
  `university_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `deprelations`
--

INSERT INTO `deprelations` (`university_id`, `faculty_id`, `department_id`) VALUES
(3, 5, 1),
(3, 5, 2),
(3, 5, 3),
(3, 5, 4),
(3, 5, 5),
(3, 5, 6);

-- --------------------------------------------------------

--
-- テーブルの構造 `facrelations`
--

CREATE TABLE `facrelations` (
  `university_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `facrelations`
--

INSERT INTO `facrelations` (`university_id`, `faculty_id`) VALUES
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(0, 5),
(4, 12),
(4, 5),
(4, 15);

-- --------------------------------------------------------

--
-- テーブルの構造 `faculties`
--

CREATE TABLE `faculties` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `faculties`
--

INSERT INTO `faculties` (`id`, `name`) VALUES
(10, '医学部'),
(13, '商学部'),
(8, '国際文化学部'),
(5, '工学部'),
(1, '文学部'),
(2, '法学部'),
(11, '海事科学部'),
(12, '理学部'),
(15, '生命理工学部'),
(9, '発達科学部'),
(14, '社会学部'),
(4, '経営学部'),
(3, '経済学部'),
(6, '薬学部'),
(7, '農学部');

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
  `class_id` int(11) NOT NULL,
  `testyear` year(4) NOT NULL,
  `upload_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `kakomons`
--

INSERT INTO `kakomons` (`id`, `filename`, `user_if`, `university_id`, `faculty_id`, `department_id`, `class_id`, `testyear`, `upload_date`) VALUES
(1, 'filename', 2, 3, 5, 3, 2, 2015, '2015-08-09');

-- --------------------------------------------------------

--
-- テーブルの構造 `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `teachers`
--

INSERT INTO `teachers` (`id`, `name`) VALUES
(1, '小島'),
(2, '渕野'),
(3, '鎌田'),
(4, '有木');

-- --------------------------------------------------------

--
-- テーブルの構造 `universitys`
--

CREATE TABLE `universitys` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `universitys`
--

INSERT INTO `universitys` (`id`, `name`) VALUES
(2, '京都大学'),
(1, '東京大学'),
(4, '東京工業大学'),
(3, '神戸大学');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `icon` varchar(500) NOT NULL,
  `university_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `register_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `password`, `nickname`, `icon`, `university_id`, `faculty_id`, `department_id`, `register_date`) VALUES
('moriwaki', 'bootcamp', '森脇', '', 3, 5, 0, '0000-00-00 00:00:00'),
('shinoda', 'bootcamp', '篠田', '', 4, 5, 0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `classnames`
--
ALTER TABLE `classnames`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `学科名` (`name`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `学部名` (`name`);

--
-- Indexes for table `kakomons`
--
ALTER TABLE `kakomons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `universitys`
--
ALTER TABLE `universitys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `大学名` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `classnames`
--
ALTER TABLE `classnames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `kakomons`
--
ALTER TABLE `kakomons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `universitys`
--
ALTER TABLE `universitys`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;