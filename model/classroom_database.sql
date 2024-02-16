SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


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
(6, 'sdfsf', 'CSE470_13', 'mahi', 'mahi', '2023-02-11', 'no', 01),

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



INSERT INTO `createclass` (`id`, `username`, `className`, `section`, `subject`, `courseCode`, `date`, `num_posts`, `student_array`) VALUES
(34, 'rAnkur_', 'CSE470', '4', 'Software', 'cse470_4', '2019-03-04', 0, ''),


CREATE TABLE `joinclass` (
  `user_id_fk` int(11) NOT NULL,
  `class_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `joinclass` (`user_id_fk`, `class_id_fk`) VALUES
(0, 0),


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



INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opended`, `viewed`) VALUES
(1, 'sabrina', 'nahee', 'sabrina comment on your post', 'post.php?id=505', '2024-02-09 ', 'no', 'no'),


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



SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";







INSERT INTO `posts` (`id`, `body`, `added_by`, `courseCode`, `user_to`, `date_added`, `user_closed`, `edited`, `files`, `fileDestination`) VALUES
(237, 'sdfsd\r\nsdf\r\nsdf\r\nsdfa\r\nsdf\r\nsdkf\r\nsadf;\r\nsdfj\r\n', 'tonmoy_sarker', 'css234_23424', 'none', '2019-03-09 19:56:33', 'no', 'no', '', ''),

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

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `profilePic`, `signup_date`, `user_closed`, `num_posts`, `phoneNumber`, `bio`) VALUES

(9, 'Sokina', 'Banu', 'sokina_banu', 'sokina@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'assets/images/profilePics/sokina_banu731124f69013a066cc2fc686aa0731e6n.jpeg', '2019-01-28', 'no', 2, 456456, 'This is me\r\n'),

ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `createclass`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `joinclass`
  ADD PRIMARY KEY (`user_id_fk`,`class_id_fk`),
  ADD KEY `user_id_fk` (`user_id_fk`),
  ADD KEY `class_id_fk` (`class_id_fk`);


ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

ALTER TABLE `createclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;


ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=651;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;
