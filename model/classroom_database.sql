-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2019 at 08:54 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classroom_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `courseCode` varchar(50) NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `courseCode`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(60, 'sdfsf', 'css234_23424', 'tonmoy_sarker', 'tonmoy_sarker', '2019-03-09 19:56:56', 'no', 237),
(61, 'sdf', 'css234_23424', 'tonmoy_sarker', 'tonmoy_sarker', '2019-03-09 19:56:59', 'no', 237),
(62, 'ghdfgh', 'eng102_9', 'dsaa_fdf', 'dsaa_fdf', '2019-03-09 20:10:21', 'no', 238),
(63, 'ASas ASas A', 'cse221_5', 'dsaa_fdf', 'dsaa_fdf', '2019-03-09 22:01:58', 'no', 239),
(64, 'ass sASa ASa', 'cse221_5', 'dsaa_fdf', 'dsaa_fdf', '2019-03-09 22:02:03', 'no', 239),
(65, 'AS as', 'cse221_5', 'dsaa_fdf', 'dsaa_fdf', '2019-03-09 22:02:11', 'no', 239),
(66, 'hjvhjv', 'cse221_5', 'dsaa_fdf', 'dsaa_fdf', '2019-03-09 23:24:40', 'no', 240),
(67, 'dfgdsg', 'cse221_5', 'dsaa_fdf', 'dsaa_fdf', '2019-03-10 20:21:58', 'no', 248),
(68, 'xvzzxcZ', 'cse221_5', 'dsaa_fdf', 'dsaa_fdf', '2019-03-10 20:28:50', 'no', 255),
(69, 'zxcxzc zxc ', 'cse221_5', 'dsaa_fdf', 'dsaa_fdf', '2019-03-10 21:13:23', 'no', 257),
(70, 'adsads ', 'cse221_5', 'dsaa_fdf', 'dsaa_fdf', '2019-03-12 12:39:04', 'no', 275),
(71, 'asdasdds', 'cse221_5', 'dsaa_fdf', 'dsaa_fdf', '2019-03-12 12:39:19', 'no', 276),
(72, 'asdasd asd', 'cse221_5', 'dsaa_fdf', 'dsaa_fdf', '2019-03-12 12:53:51', 'no', 277),
(73, 'sdfdsadsdf', 'cse221_5', 'dsaa_fdf', 'dsaa_fdf', '2019-03-13 11:02:41', 'no', 286),
(74, 'adasdasd', 'cse221_5', 'dsaa_fdf', 'dsaa_fdf', '2019-03-13 20:49:22', 'no', 274),
(75, 'asddasd', 'cse230_1', 'dsaa_fdf', 'dsaa_fdf', '2019-03-13 20:49:49', 'no', 273),
(76, 'eh?', 'waterresource_a', 'musabbir_turjo', 'musabbir_turjo', '2019-03-14 13:39:10', 'no', 278),
(77, 'gfjytfjytf', 'cse221_5', 'dsaa_fdf', 'dsaa_fdf', '2019-03-18 09:34:25', 'no', 279),
(78, 'sdfsdf', 'ewrw_werew', 'dsaa_fdf', 'dsaa_fdf', '2019-03-19 22:50:11', 'no', 320),
(79, 'sdfsdf', 'ewrw_werew', 'dsaa_fdf', 'dsaa_fdf', '2019-03-19 22:50:14', 'no', 320),
(80, 'sdfdsf', 'ewrw_werew', 'dsaa_fdf', 'dsaa_fdf', '2019-03-19 22:50:20', 'no', 319),
(81, 'fdasfasdf', 'ewrw_werew', 'dsaa_fdf', 'dsaa_fdf', '2019-03-20 16:26:47', 'no', 328),
(82, 'sdfsf', 'ewrw_werew', 'dsaa_fdf', 'dsaa_fdf', '2019-03-20 16:26:51', 'no', 328),
(83, 'dsfdsf', 'ewrw_werew', 'dsaa_fdf', 'dsaa_fdf', '2019-03-20 16:26:54', 'no', 328),
(84, 'dsfdasfasdfdsa', 'ewrw_werew', 'dsaa_fdf', 'dsaa_fdf', '2019-03-20 16:26:58', 'no', 328),
(85, '4564', 'cse230_1', 'dsaa_fdf', 'dsaa_fdf', '2019-03-20 20:01:06', 'no', 273),
(86, 'asdasd asd ', 'cse566_8', 'yaad_arifin', 'yaad_arifin', '2019-03-21 21:48:43', 'no', 362),
(87, 'afafa as ', 'cse566_8', 'yaad_arifin', 'yaad_arifin', '2019-03-24 00:38:19', 'no', 379),
(88, 'asfsa fff sa fa', 'cse566_8', 'yaad_arifin', 'yaad_arifin', '2019-03-24 00:38:24', 'no', 379),
(89, 'casfsadf', 'sdfsd_sdfdsf', 'aritra_sarker', 'aritra_sarker', '2019-03-25 23:51:12', 'no', 424),
(90, 'hdfghdfghdfgh', 'sdfsd_sdfdsf', 'aritra_sarker', 'aritra_sarker', '2019-03-25 23:53:24', 'no', 432),
(91, 'kjjkbj', 'cse370_59', 'mussabir_turjo', 'mussabir_turjo', '2019-03-26 00:16:52', 'no', 422),
(92, 'asdada', 'cse370_59', 'mussabir_turjo', 'mussabir_turjo', '2019-03-26 00:33:39', 'no', 422),
(125, 'asdasd as das', '', 'sokina_banu', '', '2019-03-26 21:09:14', 'no', 433),
(131, 'sdf ds f', '', 'sokina_banu', '', '2019-03-26 22:12:23', 'no', 451),
(133, 'dsf sf sd f s', 'cse370_59', 'mussabir_turjo', 'sokina_banu', '2019-03-26 22:22:52', 'no', 457),
(135, 'sdfasdf', 'cse370_59', 'mussabir_turjo', 'sokina_banu', '2019-03-26 22:59:22', 'no', 457),
(137, 'Hshshsh', '', 'robert_jonson', '', '2019-03-26 23:15:48', 'no', 457),
(138, 'Jxjxhxjs', 'cse370_59', 'robert_jonson', 'mussabir_turjo', '2019-03-26 23:16:41', 'no', 421),
(139, 'Hhshxhd', 'cse370_59', 'robert_jonson', 'mussabir_turjo', '2019-03-26 23:16:44', 'no', 421),
(144, 'frdfdrtfvfvf', '', 'sokina_banu', '', '2019-03-26 23:55:31', 'no', 472),
(151, 'sdfasdfsdf', 'kala_4', 'sokina_banu', 'sokina_banu', '2019-03-27 00:11:17', 'no', 481),
(152, 'sdfasdf', 'kala_4', 'sokina_banu', 'sokina_banu', '2019-03-27 00:11:22', 'no', 481),
(153, 'sdafasdfs', 'kala_4', 'sokina_banu', 'sokina_banu', '2019-03-27 00:11:24', 'no', 481),
(154, 'sdfasdfds', 'kala_4', 'sokina_banu', 'sokina_banu', '2019-03-27 00:11:25', 'no', 481),
(155, 'sfasdfas', 'kala_4', 'sokina_banu', 'sokina_banu', '2019-03-27 00:12:41', 'no', 482),
(156, 'sdfasdfsadf', 'kala_4', 'sokina_banu', 'sokina_banu', '2019-03-27 00:13:09', 'no', 483),
(159, 'sdfasdf', '', 'sokina_banu', '', '2019-03-27 00:30:36', 'no', 423),
(160, 'dfsasdfasdf', 'cse370_59', 'sokina_banu', 'sokina_banu', '2019-03-27 14:26:08', 'no', 488),
(161, 'aewawe', 'cse310_1', 'robin_ahmed', 'robin_ahmed', '2019-03-30 22:09:55', 'no', 531),
(162, 'asdas dasd ', 'cse310_1', 'robin_ahmed', 'robin_ahmed', '2019-03-30 22:11:56', 'no', 532),
(163, 'as das das d', 'cse310_1', 'robin_ahmed', 'yaad_arifin', '2019-03-30 22:12:05', 'no', 530),
(164, 'asdas das d', 'cse310_1', 'robin_ahmed', 'yaad_arifin', '2019-03-30 22:13:38', 'no', 504),
(165, 'sdfsdfdsf sd', 'cse310_1', 'robin_ahmed', 'yaad_arifin', '2019-03-30 22:45:14', 'no', 505),
(166, 'yeasssss babee', 'cse310_1', 'robin_ahmed', 'yaad_arifin', '2019-03-30 22:49:07', 'no', 505),
(167, 'heyeye', 'cse310_1', 'robin_ahmed', 'yaad_arifin', '2019-03-30 22:49:46', 'no', 505),
(168, 'Hey', 'cse310_1', 'mussabir_turjo', 'yaad_arifin', '2019-03-31 00:45:41', 'no', 539),
(169, 'Pagoiller Raja', 'cse310_1', 'yaad_arifin', 'mussabir_turjo', '2019-03-31 00:48:42', 'no', 540),
(173, 'sdfdsfsd d', 'cse341_1', 'yaad_arifin', 'yaad_arifin', '2019-04-03 23:50:12', 'no', 573),
(174, 'hu', 'cse341_1', 'yaad_arifin', 'yaad_arifin', '2019-04-04 03:43:48', 'no', 612);

-- --------------------------------------------------------

--
-- Table structure for table `createclass`
--

CREATE TABLE `createclass` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `className` varchar(50) NOT NULL,
  `section` varchar(25) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `courseCode` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `num_posts` int(11) NOT NULL,
  `student_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `createclass`
--

INSERT INTO `createclass` (`id`, `username`, `className`, `section`, `subject`, `courseCode`, `date`, `num_posts`, `student_array`) VALUES
(34, 'robin_ahmed', 'CSE321', '4', 'Operating System', 'cse321_4', '2019-03-04', 0, ''),
(35, 'robin_ahmed', 'CSE310', '1', 'Web Programming', 'cse310_1', '2019-03-04', 0, 'sokina_banu ,mostofa_asif ,yaad_arifin ,mussabir_turjo ,robert_jonson ,'),
(36, 'shuvogoto_rai', 'ACT201', '1', 'Basic Accounting', 'act201_1', '2019-03-04', 1, 'mostofa_asif ,sokina_banu ,'),
(37, 'mussabir_turjo', 'CSE370', '59', 'Data Stracture', 'cse370_59', '2019-03-04', 1, 'robert_jonson ,sokina_banu ,sokina_banu ,'),
(38, 'damn_boy', 'CSE221', '1', 'Algo', 'cse221_1', '2019-03-04', 0, 'yaad_arifin ,'),
(39, 'damn_boy', 'CSE221', '87', 'Introduction to statistics', 'cse221_87', '2019-03-04', 0, ''),
(40, 'damn_boy', 'CSE566', '8', 'District Math ', 'cse566_8_1', '2019-03-04', 0, ''),
(52, 'tonmoy_sarker', 'CSS234', '23424', 'Nothing', 'css234_23424', '2019-03-09', 1, 'yaad_arifin ,'),
(72, 'whatever_againwhatever', 'sadfsa', 'sdfs', 'sdfsf', 'sadfsa_sdfs', '2019-03-18', 2, ''),
(80, 'dsaa_fdf', 'ENG101', '1', 'English', 'eng101_1', '2019-03-20', 1, ' ,'),
(82, 'kutta_mora', 'asdasd', '1', 'sadasd', 'asdasd_1', '2019-03-21', 0, ''),
(83, 'farhan_anjum', 'ENG091', '1', 'asda', 'eng091_1', '2019-03-21', 0, ' ,'),
(84, 'samin_yeasir', 'asdasd', '1', 'asdasd', 'asdasd_1_1', '2019-03-21', 0, ''),
(85, 'toasof_dasf', 'sdf', 'dsdsf', 'dsfdsf', 'sdf_dsdsf', '2019-03-24', 0, ''),
(98, 'aritra_sarker', 'sdfsd', 'sdfdsf', 'asdfasf', 'sdfsd_sdfdsf', '2019-03-25', 0, ''),
(101, 'sokina_banu', 'CSE260', '8', 'DLD', 'cse260_8', '2019-03-28', 0, ' , ,'),
(102, 'sokina_banu', 'MAT120', '5', 'Calculas', 'mat120_5', '2019-03-31', 0, ' , ,robin_ahmed ,robert_jonson ,abrar_ahmef ,affan_ahmed ,'),
(103, 'yaad_arifin', 'CSE341', '1', 'ComputerNetwork', 'cse341_1', '2019-04-03', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `joinclass`
--

CREATE TABLE `joinclass` (
  `user_id_fk` int(11) NOT NULL,
  `class_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `joinclass`
--

INSERT INTO `joinclass` (`user_id_fk`, `class_id_fk`) VALUES
(0, 0),
(12, 102),
(14, 0),
(14, 38),
(14, 80),
(14, 102),
(48, 102),
(62, 102),
(63, 102);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opended` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opended`, `viewed`) VALUES
(1, 'yaad_arifin', 'robin_ahmed', 'Robin Ahmed commented on your post', 'post.php?id=505', '2019-03-30 22:49:07', 'no', 'no'),
(2, 'yaad_arifin', 'robin_ahmed', 'Robin Ahmed commented on your post', 'post.php?id=505', '2019-03-30 22:49:46', 'no', 'no'),
(3, 'mussabir_turjo', 'yaad_arifin', 'Yaad Arifin commented on your post', 'post.php?id=540', '2019-03-31 00:48:42', 'no', 'no'),
(4, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin commented on your class room post', 'post.php?id=540', '2019-03-31 00:48:42', 'no', 'no'),
(5, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 00:54:37', 'no', 'no'),
(6, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 00:58:39', 'no', 'no'),
(7, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 00:59:30', 'no', 'no'),
(8, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:03:43', 'no', 'no'),
(9, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:08:52', 'no', 'no'),
(10, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:11:02', 'no', 'no'),
(11, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:11:03', 'no', 'no'),
(12, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:11:25', 'no', 'no'),
(13, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:11:39', 'no', 'no'),
(14, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:11:48', 'no', 'no'),
(15, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:12:13', 'no', 'no'),
(16, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:12:27', 'no', 'no'),
(17, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:14:06', 'no', 'no'),
(18, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:14:29', 'no', 'no'),
(19, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:16:22', 'no', 'no'),
(20, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:17:59', 'no', 'no'),
(21, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:17:59', 'no', 'no'),
(22, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:18:07', 'no', 'no'),
(23, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:18:07', 'no', 'no'),
(24, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:20:24', 'no', 'no'),
(25, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:21:04', 'no', 'no'),
(26, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:22:46', 'no', 'no'),
(27, 'robin_ahmed', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-03-31 01:23:41', 'no', 'no'),
(28, 'sokina_banu', 'robert_jonson', 'Robert Jonson posted on your class room', 'post.php?id=', '2019-04-03 21:02:28', 'no', 'no'),
(29, 'sokina_banu', 'robert_jonson', 'Robert Jonson posted on your class room', 'post.php?id=', '2019-04-03 21:02:41', 'no', 'no'),
(30, 'sokina_banu', 'robert_jonson', 'Robert Jonson posted on your class room', 'post.php?id=', '2019-04-03 21:02:45', 'no', 'no'),
(31, 'mussabir_turjo', 'robert_jonson', 'Robert Jonson posted on your class room', 'post.php?id=', '2019-04-03 21:03:13', 'no', 'no'),
(32, 'tonmoy_sarker', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-04-03 21:05:00', 'no', 'no'),
(33, 'damn_boy', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-04-03 21:05:11', 'no', 'no'),
(34, 'sokina_banu', 'affan_ahmed', 'Affan Ahmed posted on your class room', 'post.php?id=', '2019-04-06 00:58:56', 'no', 'no'),
(35, 'sokina_banu', 'affan_ahmed', 'Affan Ahmed posted on your class room', 'post.php?id=', '2019-04-06 01:00:06', 'no', 'no'),
(36, 'sokina_banu', 'affan_ahmed', 'Affan Ahmed posted on your class room', 'post.php?id=', '2019-04-06 01:00:27', 'no', 'no'),
(37, 'sokina_banu', 'affan_ahmed', 'Affan Ahmed posted on your class room', 'post.php?id=', '2019-04-06 01:20:12', 'no', 'no'),
(38, 'tonmoy_sarker', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-04-06 02:30:52', 'no', 'no'),
(39, 'tonmoy_sarker', 'yaad_arifin', 'Yaad Arifin posted on your class room', 'post.php?id=', '2019-04-06 02:34:42', 'no', 'no'),
(40, 'sokina_banu', 'affan_ahmed', 'Affan Ahmed posted on your class room', 'post.php?id=', '2019-04-06 02:35:54', 'no', 'no'),
(41, 'sokina_banu', 'abrar_ahmef', 'Abrar Ahmed posted on your class room', 'post.php?id=', '2019-04-06 14:32:03', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `courseCode` varchar(50) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `edited` varchar(3) NOT NULL,
  `files` varchar(500) DEFAULT NULL,
  `fileDestination` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";







INSERT INTO `posts` (`id`, `body`, `added_by`, `courseCode`, `user_to`, `date_added`, `user_closed`, `edited`, `files`, `fileDestination`) VALUES
(237, 'sdfsd\r\nsdf\r\nsdf\r\nsdfa\r\nsdf\r\nsdkf\r\nsadf;\r\nsdfj\r\n', 'tonmoy_sarker', 'css234_23424', 'none', '2019-03-09 19:56:33', 'no', 'no', '', ''),
(238, 'sdfasdf', 'dsaa_fdf', 'eng102_9', 'none', '2019-03-09 20:09:44', 'no', 'no', '', ''),
(241, 'dsfdsf', 'dsaa_fdf', 'cse230_1', 'none', '2019-03-10 01:36:43', 'no', 'no', '', ''),
(273, 'dsfassdfdfggdg23223', 'dsaa_fdf', 'cse230_1', 'none', '2019-03-11 01:04:20', 'no', 'no', '', ''),
(274, 'zczxc cszxc', 'dsaa_fdf', 'cse221_5', 'none', '2019-03-13 20:25:16', 'no', 'no', '', ''),
(276, 'asdads', 'dsaa_fdf', 'cse221_5', 'none', '2019-03-13 21:03:31', 'no', 'no', '', ''),
(277, '123', 'dsaa_fdf', 'cse221_5', 'none', '2019-03-13 21:03:34', 'no', 'no', '', ''),
(279, 'tgvgv\r\n', 'dsaa_fdf', 'cse221_5', 'none', '2019-03-15 21:02:32', 'no', 'no', '', ''),
(287, 'hjgjg\r\nhjghj\r\nlkj\r\nlkj\r\n', 'dsaa_fdf', 'cse221_1_1', 'none', '2019-03-18 09:59:02', 'no', 'no', '', ''),
(328, 'Whateverw\r\nsfaslkdf\r\nsdf\r\nasdf\r\ndsf\r\nsdf', 'dsaa_fdf', 'ewrw_werew', 'none', '2019-03-20 11:01:22', 'no', 'Yes', '', ''),
(331, 'sdfsfs', 'dsaa_fdf', 'sdfa_sdf', 'none', '2019-03-20 16:52:20', 'no', 'no', '', ''),
(332, 'sdfsfs', 'dsaa_fdf', 'sdfa_sdf', 'none', '2019-03-20 16:52:52', 'no', 'no', '', ''),
(333, 'sdfsfs', 'dsaa_fdf', 'sdfa_sdf', 'none', '2019-03-20 16:53:03', 'no', 'no', '', ''),
(334, 'sdfsfs', 'dsaa_fdf', 'sdfa_sdf', 'none', '2019-03-20 16:53:57', 'no', 'no', '', ''),
(335, 'sdfsfs', 'dsaa_fdf', 'sdfa_sdf', 'none', '2019-03-20 16:54:42', 'no', 'no', '', ''),
(336, 'sdfsfs', 'dsaa_fdf', 'sdfa_sdf', 'none', '2019-03-20 16:54:57', 'no', 'no', '', ''),
(337, 'DamnCool*_*(+_+)http://localhost/demo/classRoom.php?classCode=$classCode', 'dsaa_fdf', 'ban101_1', 'none', '2019-03-20 20:12:16', 'no', 'Yes', '', ''),
(338, 'asdasdadadad', 'dsaa_fdf', 'eng101_1', 'none', '2019-03-21 00:05:42', 'no', 'Yes', '', ''),
(358, 'Samin', 'yaad_arifin', 'cse566_8', 'no', '2019-03-21 21:14:01', 'no', 'no', 'none', ''),
(387, 'dgfsdgdfg', 'toasof_dasf', 'sdf_dsdsf', 'no', '2019-03-24 01:21:12', 'no', 'no', 'none', 'none'),
(390, 'd fad fds f', 'toasof_dasf', 'sdf_dsdsf', 'no', '2019-03-24 01:40:57', 'no', 'no', ' 5c968bc9a83e36.12395452.png', 'uploads/ 5c968bc9a83e36.12395452.png'),
(391, 'd fds f', 'toasof_dasf', 'sdf_dsdsf', 'no', '2019-03-24 01:41:07', 'no', 'no', ' 5c968bd3e7c584.25679154.docx', 'uploads/ 5c968bd3e7c584.25679154.docx'),
(404, ' czcxzc c', 'yaad_arifin', 'cse566_8', 'no', '2019-03-24 21:21:00', 'no', 'no', ' 5c97a05c0ce405.99154103.docx', 'uploads/STA201 Assignment. 5c97a05c0ce405.99154103.docx'),
(421, 'dsfdsfdsffdsfdsf  dsf564546 ', 'mussabir_turjo', 'cse370_59', 'no', '2019-03-25 18:04:54', 'no', 'Yes', 'none', 'none'),
(424, 'dfjgfjgfjdfghjfdgh', 'aritra_sarker', 'sdfsd_sdfdsf', 'no', '2019-03-25 23:49:13', 'no', 'no', 'none', 'none'),
(430, 'gdfhdfgh', 'aritra_sarker', 'sdfsd_sdfdsf', 'no', '2019-03-25 23:52:25', 'no', 'no', 'none', 'none'),
(431, 'dfgsdgf', 'aritra_sarker', 'sdfsd_sdfdsf', 'no', '2019-03-25 23:52:27', 'no', 'no', 'none', 'none'),
(432, 'dfgsdgf', 'aritra_sarker', 'sdfsd_sdfdsf', 'no', '2019-03-25 23:52:29', 'no', 'no', 'none', 'none'),
(453, '', 'sokina_banu', 'kala_4', 'no', '2019-03-26 21:44:26', 'no', 'no', ' 5c9a48da8df2d5.41353936.xlsx', 'uploads/All scheduleSpring2019. 5c9a48da8df2d5.41353936.xlsx'),
(454, 'Jdjdjdjxhf\r\n', 'robert_jonson', 'cse370_59', 'no', '2019-03-26 22:19:32', 'no', 'no', 'none', 'none'),
(455, 'Dffghhjjjj', 'robert_jonson', 'cse370_59', 'no', '2019-03-26 22:19:51', 'no', 'no', 'none', 'none'),
(467, 'Hey', 'robert_jonson', 'cse370_59', 'no', '2019-03-26 23:14:55', 'no', 'no', 'none', 'none'),
(468, 'Jdjdnjd\r\nJdjdjsjjsx\r\nJdjdjdjd\r\nJdjdjdj', 'robert_jonson', 'cse370_59', 'no', '2019-03-26 23:16:25', 'no', 'no', 'none', 'none'),
(485, 'dsfasf', 'sokina_banu', 'cse370_59', 'no', '2019-03-27 00:32:53', 'no', 'no', ' 5c9a7055be96b2.22972007.docx', 'uploads/STA201 Assignment. 5c9a7055be96b2.22972007.docx'),
(487, 'hello everyone!', 'sokina_banu', 'kala_4', 'no', '2019-03-27 13:32:32', 'no', 'no', 'none', 'none'),
(499, 'asdas d a das da ', 'yaad_arifin', 'cse310_1', 'robin_ahmed', '2019-03-28 22:22:03', 'no', 'no', 'none', 'none'),
(504, 'asd d ad', 'yaad_arifin', 'cse310_1', 'none', '2019-03-28 22:32:21', 'no', 'no', 'none', 'none'),
(505, 'yrd', 'yaad_arifin', 'cse310_1', 'robin_ahmed', '2019-03-30 20:54:53', 'no', 'no', 'none', 'none'),
(519, 'das das as asd as ', 'robin_ahmed', 'cse310_1', '', '2019-03-30 21:22:26', 'no', 'no', 'none', 'none'),
(530, 'asdasd ad', 'yaad_arifin', 'cse310_1', 'robin_ahmed', '2019-03-30 22:02:50', 'no', 'no', 'none', 'none'),
(531, 'sdafdsfafs', 'robin_ahmed', 'cse310_1', 'none', '2019-03-30 22:03:11', 'no', 'no', 'none', 'none'),
(532, 'sdafdsfafs', 'robin_ahmed', 'cse310_1', 'none', '2019-03-30 22:11:51', 'no', 'no', 'none', 'none'),
(533, 'sdafdsfafs', 'robin_ahmed', 'cse310_1', 'none', '2019-03-30 22:13:33', 'no', 'no', 'none', 'none'),
(534, 'sdafdsfafs', 'robin_ahmed', 'cse310_1', 'none', '2019-03-30 22:45:07', 'no', 'no', 'none', 'none'),
(535, 'sdafdsfafs', 'robin_ahmed', 'cse310_1', 'none', '2019-03-30 22:48:52', 'no', 'no', 'none', 'none'),
(539, 'asas dsa as ', 'yaad_arifin', 'cse310_1', 'robin_ahmed', '2019-03-30 23:39:19', 'no', 'no', 'none', 'none'),
(541, 'Hey', 'mussabir_turjo', 'cse370_59', 'none', '2019-03-31 00:44:55', 'no', 'no', 'none', 'none'),
(564, 'adaad', 'yaad_arifin', 'cse310_1', 'robin_ahmed', '2019-03-31 01:23:41', 'no', 'no', ' 5c9fc23d0a7292.87440020.docx', 'uploads/à¦ªà§œà¦¾à¦¤à§‡ à¦šà¦¾à¦‡. 5c9fc23d0a7292.87440020.docx'),
(565, 'Hello world', 'robin_ahmed', 'cse310_1', 'none', '2019-03-31 08:44:41', 'no', 'no', 'none', 'none'),
(566, 'Hey Everyone', 'robert_jonson', 'mat120_5', 'sokina_banu', '2019-04-03 21:02:28', 'no', 'no', 'none', 'none'),
(567, 'Hey', 'robert_jonson', 'mat120_5', 'sokina_banu', '2019-04-03 21:02:41', 'no', 'no', 'none', 'none'),
(568, 'Hey', 'robert_jonson', 'mat120_5', 'sokina_banu', '2019-04-03 21:02:45', 'no', 'no', 'none', 'none'),
(569, 'yo', 'robert_jonson', 'cse370_59', 'mussabir_turjo', '2019-04-03 21:03:13', 'no', 'no', 'none', 'none'),
(570, 'Yo', 'yaad_arifin', 'css234_23424', 'tonmoy_sarker', '2019-04-03 21:05:00', 'no', 'no', 'none', 'none'),
(571, 'Hey', 'yaad_arifin', 'cse221_1', 'damn_boy', '2019-04-03 21:05:11', 'no', 'no', 'none', 'none'),
(634, 'hey\r\n', 'yaad_arifin', 'cse341_1', 'none', '2019-04-04 09:35:19', 'no', 'no', 'none', 'none'),
(635, 'yo', 'yaad_arifin', 'cse341_1', 'none', '2019-04-04 09:35:23', 'no', 'no', 'none', 'none'),
(636, 'hey', 'affan_ahmed', 'mat120_5', 'sokina_banu', '2019-04-06 00:58:56', 'no', 'no', 'none', 'none'),
(639, 'ho ho ho!!!', 'affan_ahmed', 'mat120_5', 'sokina_banu', '2019-04-06 01:20:12', 'no', 'no', 'none', 'none'),
(641, 'JAVA', 'yaad_arifin', 'css234_23424', 'tonmoy_sarker', '2019-04-06 02:34:42', 'no', 'no', ' 5ca7bbe2c2cce3.60504958.png', 'uploads/1200px-NASA_logo.svg. 5ca7bbe2c2cce3.60504958.png'),
(642, 'I love PUBG!!!', 'affan_ahmed', 'mat120_5', 'sokina_banu', '2019-04-06 02:35:54', 'no', 'no', 'none', 'none'),
(644, 'p ', 'yaad_arifin', 'cse341_1', 'none', '2019-04-06 14:06:32', 'no', 'Yes', ' 5ca85e08890a69.20312120.png', 'uploads/1200px-NASA_logo.svg. 5ca85e08890a69.20312120.png'),
(645, 'new\r\n', 'yaad_arifin', 'cse341_1', 'none', '2019-04-06 14:09:58', 'no', 'no', 'none', 'none'),
(648, 'Class postponed ', 'sokina_banu', 'mat120_5', 'none', '2019-04-06 14:30:36', 'no', 'Yes', 'none', 'none'),
(649, 'insta ', 'sokina_banu', 'mat120_5', 'none', '2019-04-06 14:31:12', 'no', 'Yes', ' 5ca863d0160a25.86696386.png', 'uploads/app-icon2. 5ca863d0160a25.86696386.png'),
(650, 'Hi\r\n', 'abrar_ahmef', 'mat120_5', 'sokina_banu', '2019-04-06 14:32:03', 'no', 'no', 'none', 'none');









-- Table structure for table `admin`


CREATE TABLE IF NOT EXISTS `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('sabrina123@gmail.com', 'sabrina12345');


-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('55892169bf6a7', '55892169d2efc'),
('5589216a3646e', '5589216a48722'),
('558922117fcef', '5589221195248'),
('55892211e44d5', '55892211f1fa7'),
('558922894c453', '558922895ea0a'),
('558922899ccaa', '55892289aa7cf'),
('558923538f48d', '558923539a46c'),
('55892353f05c4', '55892354051be'),
('558973f4389ac', '558973f462e61'),
('558973f4c46f2', '558973f4d4abe'),
('558973f51600d', '558973f526fc5'),
('558973f55d269', '558973f57af07'),
('558973f5abb1a', '558973f5e764a'),
('5589751a63091', '5589751a81bf4'),
('5589751ad32b8', '5589751adbdbd'),
('5589751b304ef', '5589751b3b04d'),
('5589751b749c9', '5589751b9a98c');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('55846be776610', 'testing', 'sunnygkp10@gmail.com', 'testing', 'testing stART', '2015-06-19', '09:22:15pm'),
('5584ddd0da0ab', 'netcamp', 'sunnygkp10@gmail.com', 'feedback', ';mLBLB', '2015-06-20', '05:28:16am'),
('558510a8a1234', 'sunnygkp10', 'sunnygkp10@gmail.com', 'dl;dsnklfn', 'fmdsfld fdj', '2015-06-20', '09:05:12am'),
('5585509097ae2', 'sunny', 'sunnygkp10@gmail.com', 'kcsncsk', 'l.mdsavn', '2015-06-20', '01:37:52pm'),
('5586ee27af2c9', 'vikas', 'vikas@gmail.com', 'trial feedback', 'triaal feedbak', '2015-06-21', '07:02:31pm'),
('5589858b6c43b', 'nik', 'nik1@gmail.com', 'good', 'good site', '2015-06-23', '06:12:59pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('sunnygkp10@gmail.com', '558921841f1ec', 4, 2, 2, 0, '2015-06-23 09:31:26'),
('sunnygkp10@gmail.com', '558920ff906b8', 4, 2, 2, 0, '2015-06-23 13:32:09'),
('avantika420@gmail.com', '558921841f1ec', 4, 2, 2, 0, '2015-06-23 14:33:04'),
('avantika420@gmail.com', '5589222f16b93', 4, 2, 2, 0, '2015-06-23 14:49:39'),
('sunnygkp10@gmail.com', '5589741f9ed52', 4, 5, 3, 2, '2015-06-23 15:07:16'),
('mi5@hollywood.com', '5589222f16b93', 4, 2, 2, 0, '2015-06-23 15:12:56'),
('nik1@gmail.com', '558921841f1ec', 1, 2, 1, 1, '2015-06-23 16:11:50'),
('sunnygkp10@gmail.com', '5589222f16b93', 1, 2, 1, 1, '2015-06-24 03:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('55892169bf6a7', 'usermod', '55892169d2efc'),
('55892169bf6a7', 'useradd', '55892169d2f05'),
('55892169bf6a7', 'useralter', '55892169d2f09'),
('55892169bf6a7', 'groupmod', '55892169d2f0c'),
('5589216a3646e', '751', '5589216a48713'),
('5589216a3646e', '752', '5589216a4871a'),
('5589216a3646e', '754', '5589216a4871f'),
('5589216a3646e', '755', '5589216a48722'),
('558922117fcef', 'echo', '5589221195248'),
('558922117fcef', 'print', '558922119525a'),
('558922117fcef', 'printf', '5589221195265'),
('558922117fcef', 'cout', '5589221195270'),
('55892211e44d5', 'int a', '55892211f1f97'),
('55892211e44d5', '$a', '55892211f1fa7'),
('55892211e44d5', 'long int a', '55892211f1fb4'),
('55892211e44d5', 'int a$', '55892211f1fbd'),
('558922894c453', 'cin>>a;', '558922895ea0a'),
('558922894c453', 'cin<<a;', '558922895ea26'),
('558922894c453', 'cout>>a;', '558922895ea34'),
('558922894c453', 'cout<a;', '558922895ea41'),
('558922899ccaa', 'cout', '55892289aa7cf'),
('558922899ccaa', 'cin', '55892289aa7df'),
('558922899ccaa', 'print', '55892289aa7eb'),
('558922899ccaa', 'printf', '55892289aa7f5'),
('558923538f48d', '255.0.0.0', '558923539a46c'),
('558923538f48d', '255.255.255.0', '558923539a480'),
('558923538f48d', '255.255.0.0', '558923539a48b'),
('558923538f48d', 'none of these', '558923539a495'),
('55892353f05c4', '192.168.1.100', '5589235405192'),
('55892353f05c4', '172.168.16.2', '55892354051a3'),
('55892353f05c4', '10.0.0.0.1', '55892354051b4'),
('55892353f05c4', '11.11.11.11', '55892354051be'),
('558973f4389ac', 'containing root file-system required during bootup', '558973f462e44'),
('558973f4389ac', ' Contains only scripts to be executed during bootup', '558973f462e56'),
('558973f4389ac', ' Contains root-file system and drivers required to be preloaded during bootup', '558973f462e61'),
('558973f4389ac', 'None of the above', '558973f462e6b'),
('558973f4c46f2', 'Kernel', '558973f4d4abe'),
('558973f4c46f2', 'Shell', '558973f4d4acf'),
('558973f4c46f2', 'Commands', '558973f4d4ad9'),
('558973f4c46f2', 'Script', '558973f4d4ae3'),
('558973f51600d', 'Boot Loading', '558973f526f9d'),
('558973f51600d', ' Boot Record', '558973f526fb9'),
('558973f51600d', ' Boot Strapping', '558973f526fc5'),
('558973f51600d', ' Booting', '558973f526fce'),
('558973f55d269', ' Quick boot', '558973f57aef1'),
('558973f55d269', 'Cold boot', '558973f57af07'),
('558973f55d269', ' Hot boot', '558973f57af17'),
('558973f55d269', ' Fast boot', '558973f57af27'),
('558973f5abb1a', 'bash', '558973f5e7623'),
('558973f5abb1a', ' Csh', '558973f5e7636'),
('558973f5abb1a', ' ksh', '558973f5e7640'),
('558973f5abb1a', ' sh', '558973f5e764a'),
('5589751a63091', 'q', '5589751a81bd6'),
('5589751a63091', 'wq', '5589751a81be8'),
('5589751a63091', ' both (a) and (b)', '5589751a81bf4'),
('5589751a63091', ' none of the mentioned', '5589751a81bfd'),
('5589751ad32b8', ' moves screen down one page', '5589751adbdbd'),
('5589751ad32b8', 'moves screen up one page', '5589751adbdce'),
('5589751ad32b8', 'moves screen up one line', '5589751adbdd8'),
('5589751ad32b8', ' moves screen down one line', '5589751adbde2'),
('5589751b304ef', ' yy', '5589751b3b04d'),
('5589751b304ef', 'yw', '5589751b3b05e'),
('5589751b304ef', 'yc', '5589751b3b069'),
('5589751b304ef', ' none of the mentioned', '5589751b3b073'),
('5589751b749c9', 'X', '5589751b9a98c'),
('5589751b749c9', 'x', '5589751b9a9a5'),
('5589751b749c9', 'D', '5589751b9a9b7'),
('5589751b749c9', 'd', '5589751b9a9c9'),
('5589751bd02ec', 'autoindentation is not possible in vi editor', '5589751bdadaa');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('558920ff906b8', '55892169bf6a7', 'what is command for changing user information??', 4, 1),
('558920ff906b8', '5589216a3646e', 'what is permission for view only for other??', 4, 2),
('558921841f1ec', '558922117fcef', 'what is command for print in php??', 4, 1),
('558921841f1ec', '55892211e44d5', 'which is a variable of php??', 4, 2),
('5589222f16b93', '558922894c453', 'what is correct statement in c++??', 4, 1),
('5589222f16b93', '558922899ccaa', 'which command is use for print the output in c++?', 4, 2),
('558922ec03021', '558923538f48d', 'what is correct mask for A class IP???', 4, 1),
('558922ec03021', '55892353f05c4', 'which is not a private IP??', 4, 2),
('55897338a6659', '558973f4389ac', 'On Linux, initrd is a file', 4, 1),
('55897338a6659', '558973f4c46f2', 'Which is loaded into memory when system is booted?', 4, 2),
('55897338a6659', '558973f51600d', ' The process of starting up a computer is known as', 4, 3),
('55897338a6659', '558973f55d269', ' Bootstrapping is also known as', 4, 4),
('55897338a6659', '558973f5abb1a', 'The shell used for Single user mode shell is:', 4, 5),
('5589741f9ed52', '5589751a63091', ' Which command is used to close the vi editor?', 4, 1),
('5589741f9ed52', '5589751ad32b8', ' In vi editor, the key combination CTRL+f', 4, 2),
('5589741f9ed52', '5589751b304ef', ' Which vi editor command copies the current line of the file?', 4, 3),
('5589741f9ed52', '5589751b749c9', ' Which command is used to delete the character before the cursor location in vi editor?', 4, 4),
('5589741f9ed52', '5589751bd02ec', ' Which one of the following statement is true?', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('558920ff906b8', 'Linux : File Managment', 2, 1, 2, 5, '', 'linux', '2015-06-23 09:03:59'),
('558921841f1ec', 'Php Coding', 2, 1, 2, 5, '', 'PHP', '2015-06-23 09:06:12'),
('5589222f16b93', 'C++ Coding', 2, 1, 2, 5, '', 'c++', '2015-06-23 09:09:03'),
('558922ec03021', 'Networking', 2, 1, 2, 5, '', 'networking', '2015-06-23 09:12:12'),
('55897338a6659', 'Linux:startup', 2, 1, 5, 10, '', 'linux', '2015-06-23 14:54:48'),
('5589741f9ed52', 'Linux :vi Editor', 2, 1, 5, 10, '', 'linux', '2015-06-23 14:58:39');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE IF NOT EXISTS `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('sunnygkp10@gmail.com', 9, '2015-06-24 03:22:38'),
('avantika420@gmail.com', 8, '2015-06-23 14:49:39'),
('mi5@hollywood.com', 4, '2015-06-23 15:12:56'),
('nik1@gmail.com', 1, '2015-06-23 16:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Avantika', 'F', 'KNIT sultanpur', 'avantikaxyz@gmail.com', 123456789, 'e10adc3949ba59abbe56e057f20f883e'),
('Mark Zukarburg', 'M', 'Stanford', 'ceo@facebook.com', 987654321, 'e10adc3949ba59abbe56e057f20f883e'),
('Tom Cruze', 'M', 'Hollywood', 'mi5@hollywood.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e'),
('Netcamp', 'M', 'KNIT sultanpur', 'netcamp@gmail.com', 987654321, 'e10adc3949ba59abbe56e057f20f883e'),
('Sunny', 'M', 'KNIT sultanpur', 'sunny@gmail.com', 123456789, 'e10adc3949ba59abbe56e057f20f883e'),
('Vikash', 'M', 'KNIT sultanpur@gmail.com', 'vikash@gmail.com', 123456789, 'e10adc3949ba59abbe56e057f20f883e');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profilePic` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `phoneNumber` int(50) NOT NULL,
  `bio` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `profilePic`, `signup_date`, `user_closed`, `num_posts`, `phoneNumber`, `bio`) VALUES
(5, 'Farhan', 'Anjum', 'farhan_anjum', 'farhan@gamil', 'e10adc3949ba59abbe56e057f20f883e', '', '2019-01-28', 'no', 0, 123465, ''),
(9, 'Sokina', 'Banu', 'sokina_banu', 'sokina@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'assets/images/profilePics/sokina_banu731124f69013a066cc2fc686aa0731e6n.jpeg', '2019-01-28', 'no', 2, 456456, 'This is me\r\n'),
(11, 'Shubiour', 'Shuvo', 'shubiour_shuvo', 'sv95.shuvo@gamil.com', '66eee25c35fa08d563b3ee86018c67f7', '', '2019-01-30', 'no', 0, 0, ''),
(12, 'Robert', 'Jonson', 'robert_jonson', 'robert@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '2019-01-30', 'yes', 0, 0, ''),
(14, 'Yaad', 'Arifin', 'yaad_arifin', 'atulshek@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'assets/images/profilePics/yaad_arifin44a9fe2a44002e2ecbd0189c48912ce6n.jpeg', '2019-02-08', 'no', 3, 56456456, 'BSc in EEE From NSU\r\nMSc in Communication Engineering From MIT\r\nEx Head of Network sector in MIT Device Communication and networking form   '),
(45, 'Mussabir', 'Turjo', 'mussabir_turjo', 'turjo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '2019-03-04', 'no', 0, 1860697646, 'Bombbe Ko Dambbe Uwe Uwe Musaambbi'),
(47, 'Samin', 'Yeasir', 'samin_yeasir', 'samin@gmail.com', '66eee25c35fa08d563b3ee86018c67f7', '', '2019-03-04', 'no', 0, 2147483647, ''),
(48, 'Robin', 'Ahmed', 'robin_ahmed', 'robin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '2019-03-04', 'no', 0, 0, ''),
(49, 'Shuvogoto', 'Rai', 'shuvogoto_rai', 'shuvogoto@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '2019-03-04', 'no', 0, 0, ''),
(50, 'Damn', 'Boy', 'damn_boy', 'damn@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', '2019-03-04', 'no', 0, 0, ''),
(51, 'Tonmoy', 'Sarker', 'tonmoy_sarker', 'tonmoy@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', '2019-03-08', 'no', 0, 0, ''),
(52, 'Akakak', 'Aaa', 'akakak_aaa', 'roaahfh@gmail.com', '93279e3308bdbbeed946fc965017f67a', '', '2019-03-13', 'no', 0, 0, ''),
(53, 'Samin', 'Fdf', 'samin_fdf', 'kamal@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '2019-03-13', 'no', 0, 0, ''),
(55, 'Whatever', 'Againwhatever', 'whatever_againwhatever', 'whatever@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', '2019-03-18', 'no', 0, 0, ''),
(56, 'Kutta', 'Mora', 'kutta_mora', 'kutta@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '2019-03-21', 'no', 0, 123465, ''),
(57, 'Toasof', 'Dasf', 'toasof_dasf', 'balsal@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '2019-03-24', 'no', 0, 2147483647, ''),
(58, 'Valaasdasfd', 'Jamal', 'kala_jamal', 'kala@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '2019-03-25', 'no', 0, 456456465, 'dsfasfasdf'),
(59, 'Aritra', 'Sarker', 'aritra_sarker', 'aritra@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '2019-03-25', 'no', 0, 0, 'I am a good boy\r\nbunch of good boy'),
(60, 'Mostofa', 'Asif', 'mostofa_asif', 'asif@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '2019-03-28', 'no', 0, 0, ''),
(61, 'Karim', 'Badsha', 'karim_badsha', 'karim@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '2019-03-31', 'no', 0, 0, ''),
(62, 'Abrar', 'Ahmed Dog', 'abrar_ahmef', 'abrar@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'assets/images/profilePics/abrar_ahmef9c859154de512bdc326719aeeb79eea5n.jpeg', '2019-04-06', 'no', 0, 0, 'gggggggggffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd'),
(63, 'Affan', 'Ahmed', 'affan_ahmed', 'affan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'assets/images/profilePics/affan_ahmed4fb89d89fc344e7aa83963defcc17361n.jpeg', '2019-04-06', 'no', 0, 0, '');



--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `createclass`
--
ALTER TABLE `createclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `joinclass`
--
ALTER TABLE `joinclass`
  ADD PRIMARY KEY (`user_id_fk`,`class_id_fk`),
  ADD KEY `user_id_fk` (`user_id_fk`),
  ADD KEY `class_id_fk` (`class_id_fk`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `createclass`
--
ALTER TABLE `createclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=651;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



