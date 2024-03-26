-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2024 at 04:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snapshowcase`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`) VALUES
(21, 24, 15, 'Find the image you want', '2024-03-16 08:39:10'),
(22, 24, 13, 'ewww mann ', '2024-03-16 09:06:23'),
(23, 32, 13, 'nice', '2024-03-16 14:12:11'),
(24, 28, 13, 'woww nice bruh', '2024-03-16 14:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `follow_list`
--

CREATE TABLE `follow_list` (
  `id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `follow_list`
--

INSERT INTO `follow_list` (`id`, `follower_id`, `user_id`) VALUES
(45, 12, 13),
(46, 12, 14),
(47, 12, 15),
(48, 12, 16),
(49, 12, 17),
(50, 12, 18),
(51, 12, 19),
(52, 12, 20),
(53, 12, 19),
(54, 12, 20),
(55, 13, 12),
(56, 13, 14),
(58, 13, 16),
(59, 13, 17),
(60, 13, 18),
(61, 13, 19),
(62, 13, 20),
(63, 14, 12),
(64, 14, 13),
(65, 14, 15),
(66, 14, 16),
(67, 14, 17),
(68, 14, 18),
(69, 14, 19),
(70, 14, 20),
(71, 15, 12),
(72, 15, 13),
(73, 15, 14),
(74, 15, 16),
(75, 15, 17),
(76, 15, 18),
(77, 15, 19),
(78, 15, 20),
(79, 17, 12),
(80, 17, 13),
(81, 17, 14),
(82, 17, 15),
(83, 17, 18),
(84, 17, 20),
(85, 17, 19),
(86, 17, 21),
(87, 18, 12),
(88, 18, 13),
(89, 18, 14),
(90, 18, 15),
(91, 18, 17),
(92, 18, 19),
(93, 18, 20),
(94, 18, 21),
(95, 19, 12),
(96, 19, 13),
(97, 19, 14),
(98, 19, 15),
(99, 19, 17),
(100, 19, 18),
(101, 19, 20),
(102, 19, 21),
(103, 19, 18),
(104, 19, 20),
(105, 19, 21),
(106, 20, 12),
(107, 20, 13),
(108, 20, 14),
(109, 20, 15),
(110, 20, 17),
(111, 20, 18),
(112, 20, 19),
(113, 20, 21),
(114, 13, 21),
(115, 22, 12),
(118, 22, 15),
(120, 22, 18),
(121, 22, 17);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`) VALUES
(55, 24, 13),
(56, 32, 13),
(58, 39, 22),
(59, 32, 22);

-- --------------------------------------------------------

--
-- Table structure for table `new_table`
--

CREATE TABLE `new_table` (
  `id` int(11) NOT NULL,
  `asdasg` varchar(34) NOT NULL,
  `afg` int(11) NOT NULL,
  `adfg` text NOT NULL,
  `gtfyt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_img` text NOT NULL,
  `post_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_img`, `post_text`, `created_at`) VALUES
(10, 12, '171057715909c1b7057bd97fdcd69af4623b21fa4a.jpg', 'getting lost with the love in presence of nature', '2024-03-16 08:19:19'),
(11, 12, '1710577187image-1.png', 'photography my passion huh', '2024-03-16 08:19:47'),
(12, 12, '1710577219pexels-photo-1032650.jpeg', 'Nature is what take us for so far ....', '2024-03-16 08:20:19'),
(13, 12, '1710577512his.jpg', 'Four wheels give comfort,but two wheels give u the love for life', '2024-03-16 08:25:12'),
(14, 13, '1710577746beach-photo-ideas-2.jpg', 'love of my life', '2024-03-16 08:29:06'),
(15, 13, '17105778021646743438_0.jpg', 'Finally asked her for ,', '2024-03-16 08:30:02'),
(16, 13, '1710577826What-Can-a-Couple-Do-to-Increase-Their-Love-over-the-Years.jpg', 'Relationship defines your career', '2024-03-16 08:30:26'),
(17, 13, '1710577851The-Bride-Squad.jpg', 'Bride Squad ,obviously', '2024-03-16 08:30:51'),
(18, 13, '17105779934ad5fb851b4b6784dfdccc194c258d62.jpg', 'Partying with friends ,the supper', '2024-03-16 08:33:13'),
(19, 14, '1710578109Types-of-Girls.jpg', 'Chiling with Girlsss', '2024-03-16 08:35:09'),
(20, 14, '171057812871-Fun-Challenges-For-Friends.jpg', 'The GANGG', '2024-03-16 08:35:28'),
(21, 14, '17105781441_TxC1XrQCXKIn-fn4zAOsSg.jpg', 'Niceee', '2024-03-16 08:35:44'),
(22, 15, '17105782734273d45427b6b1c02415a8f3e29f4e2a.jpg', 'Running away,bye bye', '2024-03-16 08:37:53'),
(23, 15, '1710578286images.jpg', 'NO COMMENTS', '2024-03-16 08:38:06'),
(24, 15, '1710578327sad-aesthetic-tumblr-dark-random-objects-zpjmj7eooqfdrrso.jpg', 'Fing the image u want', '2024-03-16 08:38:47'),
(25, 21, '17105785831000_F_174972086_oCdzVFvY5UvKryTBOH5FhKjCP8rUovDS.jpg', 'Lets climb', '2024-03-16 08:43:03'),
(26, 21, '1710578606istockphoto-1307265337-612x612.jpg', 'Got someone to climb with ', '2024-03-16 08:43:26'),
(27, 21, '1710578624Bird-Names-in-English-For-Preschoolers-and-Kids.jpg', 'mind refreshed', '2024-03-16 08:43:44'),
(28, 17, '17105787211d4627f8b0a294c5e98e87f6cdbeaa8d.jpg', 'Come lets play', '2024-03-16 08:45:21'),
(29, 17, '1710578749valorant-offwhitelaunch-keyart.jpg', 'What to say seeing at this,,u get stuffs', '2024-03-16 08:45:49'),
(30, 18, '171057885630258d39bc293c79fe3533118dc8f464.jpg', 'Dance ,itz an emotion', '2024-03-16 08:47:36'),
(31, 18, '1710578894istockphoto-1210331665-612x612.jpg', 'Acting discussion of scripts', '2024-03-16 08:48:14'),
(32, 18, '1710579014istockphoto-1408174010-612x612.jpg', 'Finally got tribute to my talent', '2024-03-16 08:50:14'),
(33, 19, '17105791125f5bc5cc2476b3dcc8380727f87be4cb.jpg', 'do crazy stuffs and chill', '2024-03-16 08:51:52'),
(34, 19, '1710579693istockphoto-626724070-612x612.jpg', 'real crazy thing', '2024-03-16 09:01:33'),
(35, 19, '1710579716portrait-depression-and-woman-with-mental-health-trauma-and-dark-thoughts-alone-in-an-asylum-or-psychiatric-hospital-suicide-bipolar-and-crazy-2K5B95C.jpg', 'thinking what ,do know', '2024-03-16 09:01:56'),
(36, 20, '17105798525eb1bb5f5b14f9364eb36ad574e0224f.jpg', 'look at her ', '2024-03-16 09:04:12'),
(37, 20, '1710579868pexels-alena-koval-820673.jpg', 'itz drawing timeee', '2024-03-16 09:04:28'),
(38, 20, '1710579886download.jpg', 'simple yet elegant', '2024-03-16 09:04:46'),
(39, 22, '1710599205WhatsApp Image 2024-02-02 at 23.00.58_b0ccf741.jpg', 'dadi nigga', '2024-03-16 14:26:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `profile_pic` text NOT NULL DEFAULT 'default_profile.jpg',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `email`, `username`, `password`, `profile_pic`, `created_at`, `updated_at`) VALUES
(12, 'Akash', 'N S', 1, 'akash2122@gmail.com', '@ninja221', '0b9094acdcb81e0534429c4319d801b8', '1710576335akash.jpg', '2024-03-16 07:12:52', '2024-03-16 08:05:35'),
(13, 'mithun', 'm', 1, 'mithun2122@gmail.com', '@dadiya223', 'c4a181c903b7a8b5d997e4e9573eadf3', '1710577709me.jpg', '2024-03-16 08:12:28', '2024-03-16 08:28:29'),
(14, 'urvi', 'r', 2, 'urvishet765@gmail.com', '@urvi456', '86eb71f74fc1d0340a1e3a61d921b855', '1710578078ulvi.jpg', '2024-03-16 08:13:25', '2024-03-16 08:34:38'),
(15, 'kushal', 'm', 1, 'kushal2122@gmail.com', '@kushal268', 'b639ca8d5cd1da69f707b0235cce1243', '1710578251kushal.jpg', '2024-03-16 08:14:05', '2024-03-16 08:37:31'),
(17, 'vikas', 'n', 1, 'vikas2122@gmail.com', '@vikas489', '8b0ca841286b9d18bde255091c2db2c7', '1710578674vikas.jpg', '2024-03-16 08:16:19', '2024-03-16 08:44:34'),
(18, 'byadagi', 's', 2, 'Byadagi2122@gmail.com', '@byadgi222', '07d501922acb4ea7e140d014c8dfd3d7', '1710578821byadgi.jpg', '2024-03-16 08:17:07', '2024-03-16 08:47:01'),
(19, 'rakshitha', 'r', 2, 'Rakshitha2122@gmail.com', '@raksh216', 'c5b81cff409c9c445c804612d7f32d1a', '1710579085raks.jpg', '2024-03-16 08:17:45', '2024-03-16 08:51:25'),
(20, 'priya', 'b r', 2, 'priya2122@gmail.com', '@priya9612', '7ccfd5c1227106ae179d2441681d3990', '1710579793priya.jpg', '2024-03-16 08:18:32', '2024-03-16 09:03:13'),
(21, 'Janardhan', 'c', 1, 'Janny2122@gmail.com', '@janardhan36', 'dea4da8ded00ed9870d1ec6c8cbf067b', '1710578551janardhan.jpg', '2024-03-16 08:41:48', '2024-03-16 08:42:31'),
(22, 'nandan', 'wade', 1, 'nandan@gmail.com', 'nandan', '827ccb0eea8a706c4c34a16891f84e7b', '1710599291a.png', '2024-03-16 14:26:10', '2024-03-16 14:28:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_list`
--
ALTER TABLE `follow_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_table`
--
ALTER TABLE `new_table`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `follow_list`
--
ALTER TABLE `follow_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `new_table`
--
ALTER TABLE `new_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
