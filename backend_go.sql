-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 23, 2018 at 06:26 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend_go`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_06_104942_create_posts_table', 1),
(4, '2018_08_08_083004_add_user_id_to_posts', 2),
(5, '2018_08_15_134433_add_cover_image_to_posts', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(1, 'Post One', '<p>This is the firstirst post of this backendvv service. using proper api&#39;s</p>', '2018-08-06 10:00:04', '2018-08-16 08:33:51', 1, 'error_1534412031.png'),
(2, 'Post two', '<p>This is the firstirst post of this backend service</p>', '2018-08-06 10:01:13', '2018-08-16 08:34:22', 1, 'assets_1534412062.png'),
(3, 'Post three', '<p>this is the third post i&#39;d be putting on this app</p>', '2018-08-07 15:03:38', '2018-08-16 08:34:45', 1, 'asset_type_1534412085.png'),
(5, 'Test title', '<p>Test post for this annoying title, i&#39;m just tired</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis&nbsp;</p>', '2018-08-07 20:03:19', '2018-08-16 08:35:59', 1, 'error_1534412159.png'),
(6, 'Another title test', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum, ipsam ad? Amet debitis harum repudiandae culpa, perspiciatis, veniam animi sint iure suscipit ex, ratione eum quas corrupti soluta dignissimos illo quis ullam iste voluptas temporibus aliquam! Blanditiis tempora cumque vitae accusantium magni itaque est, veniam culpa. Accusantium, minima temporibus! Voluptate. Emmanuel pointed out the edit.</p>', '2018-08-07 20:10:16', '2018-08-16 08:36:23', 1, 'rel_assets_1534412183.png'),
(7, 'Laravel Migrations', '<p>lorem ipsum post</p>', '2018-08-15 13:20:41', '2018-08-16 08:43:29', 1, 'assets_1534412300.png'),
(8, 'Laravel Eloquent', '<p>image lorem&nbsp;blah blah blah</p>', '2018-08-15 13:59:53', '2018-08-16 08:42:34', 1, 'eloquent_1534412554.jpg'),
(9, 'Backend as a service', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '2018-08-16 08:32:42', '2018-08-16 08:42:59', 1, 'backend_1534412579.jpg'),
(10, 'Emmanuel\'s post', '<p>Lorem ipsun blah blah blah.</p>', '2018-08-16 12:51:09', '2018-08-16 12:51:09', 1, 'noimage.jpg'),
(11, 'post update', 'Lorem ipsum. wfohgeovfoofruvbefuibvevew. Using laravel as a serive port.', '2018-08-16 18:49:03', '2018-08-23 10:37:24', 1, 'backend_1534448943.jpg'),
(12, 'blah blah blah', '<p>loreemq&nbsp;100 gbgbgbgbafNTYJRNHAM TRSMTU G F TUTMRGNRMUMHB GNTMUJNAETA ENAHTJERN G&nbsp;</p>', '2018-08-23 13:32:09', '2018-08-23 13:32:09', 1, 'noimage.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Temidayo Onifade', 'temidayojunior@gmail.com', '$2y$10$sAq6jOLszZUBqDyABK2nk.DfhbYe9qzgVTdB/xxVRPUWbSNvN7L3i', 'oyebAVL3Mw05KYsHVN1Z8eqY50BL7fBcsSAWpe7kyI0DQriAhEf5VrmyOMFl', '2018-08-08 07:17:16', '2018-08-08 07:17:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
