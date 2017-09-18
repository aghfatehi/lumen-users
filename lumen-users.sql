-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2017 at 01:37 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lumen-users`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_09_03_175136_create_table_posts', 1),
(2, '2017_09_03_184012_create_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `views` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `views`, `created_at`, `updated_at`) VALUES
(1, 'This is the first post', 'This is the first post in the lumen-users\r\nThis is the first post in the lumen-users\r\nThis is the first post in the lumen-users This is the first post in the lumen-users This is the first post in the lumen-users This is the first post in the lumen-users This is the first post in the lumen-users This is the first post in the lumen-users This is the first post in the lumen-users This is the first post in the lumen-users This is the first post in the lumen-users', 1, NULL, NULL),
(2, 'This is the second post', 'This is the second post in the lumen-users This is the second post in the lumen-users This is the second post in the lumen-users This is the second post in the lumen-users This is the second post in the lumen-users This is the second post in the lumen-users This is the second post in the lumen-users This is the second post in the lumen-users This is the second post in the lumen-users', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `api_token` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed AL-AGHBARI', 'fathi.a.n2002@gmail.com', '$2y$10$ZRSKgvBK6H4tDm/yQrSpCuHO7lF/cm7PaXS08lywtSyVS0FliXmMC', '2ejw05vKJrEU6pdx2k17mJdrqxlK4FuV3ZIJwdhoZ2jRFx4nIu9c3L5rvb58', NULL, '2017-09-03 18:54:46', '2017-09-03 18:54:46'),
(2, 'Fatehi AGHBARI', 'agh.fatehi@gmail.com', '$2y$10$qAsks8qw.dmwjalJrzMaiO328YdN400qJt6XmMg563VWG16rsxxPW', 'IHGGdjm6k80qtP2thRHV7XzFhgAIYSyVpWFxqlwZE7TRfSmOJqZyMXMreaUc', NULL, '2017-09-03 18:55:21', '2017-09-03 18:55:21'),
(3, 'Mazin AGHBARI', 'fathi.a.n@gmail.com', '$2y$10$iwI.E6VjHj53ZIiztQQkherOeQDaa6aUjs72Yd.M/Ziwa71ZoNplS', '6sQpFfO4KqLCOosuTJFGs0s3Gi9YciDs8vkoWUIu58A1BkaHrkXZUttrULHk', NULL, '2017-09-03 18:55:52', '2017-09-03 18:55:52'),
(4, 'Noria', 'Noria@gmail.com', '$2y$10$/NDSUlhYQlAF9UBbMfJRf.6HTUBKY/crnPDKjNxLIt8Xr71NSBj1y', 'NdaveqTrpZmS5CuxJvPjr7Yn9eVaivjCxfoYRycff3L8aPK9C3ucgvcVfMd4', NULL, '2017-09-03 21:19:31', '2017-09-03 21:19:31'),
(5, 'Husam Fatehi', 'husam@gmail.com', '$2y$10$J70tq7sktfL0Y/AhqG9ZpOfrhnadkSm02wyn6Q9DlA6dGzXxSZ7Ka', 'ucJxfDl4YM9dPj5B0CfGhsDHDR14cOpkFy5TvvSQ0Wp4HAWOpsjmHHu3xgUk', NULL, '2017-09-03 21:30:41', '2017-09-03 21:30:41'),
(6, 'omer', 'omer@yahoo.com', '$2y$10$uoBRJRt/ape8sS3CY99cK.yLLjkFF.KN/EWMmvi295RtMzTSPcnl2', 'MHFc1hmnbV2QODtY5WTBq6e8mOc0qjvGIlfPAmVQW3oWDgeVRYWM095rkIjH', NULL, '2017-09-03 21:32:08', '2017-09-03 21:32:08'),
(7, 'qsdsq', 'sdsdf', '$2y$10$Lpwr2TWLI7S.WqU3V0hHJ.gVbxEX.eQ7XPTSx.4JXKveFCjADLj2C', 's3bSqFDXVMIDvHWiS9YLWttfQhD8As5n2T5T8G8Zcv0d9Tz4IxLdT7LJ7bNf', NULL, '2017-09-03 21:58:50', '2017-09-03 21:58:50'),
(8, 'hjghj', 'gjgfhggf', '$2y$10$pdZs.8S7gpUOT6Udyv.T8OCDTgvPxpIyoIWAzj4I84/YlJg6DVzzy', 'r1gRIBshs0TRRhi2Wk6JlHvnPOwV0fxn2lCSo9NrLVWaptieYyQ1buHcnmrI', NULL, '2017-09-03 22:00:48', '2017-09-03 22:00:48'),
(9, 'mmmm', 'mmmmmm', '$2y$10$g/UQEtvIOxNNmIsEfodWE.JdMAJi2od2v0fjV2LIr8ruuvtuuH0YO', 'L8ikBIj3lShLpSIb0AKCn8pwoNfw9NfiyiFF8FZcuE5jU1YpJBzCXbMASY4U', NULL, '2017-09-03 22:02:23', '2017-09-03 22:02:23'),
(10, 'sdfsdf', 'sdfsdf', '$2y$10$m71mt4bWbPYxc6PTZMcehe0.Fy0NY87D.wZWLpTH5ZGvYYPRLMDEu', 'F6vt9Xg4ZdNjY8xKQoR6fZ9tHVZcKFkff4y0QilbSGppTTEIxGefgXFLt6c8', NULL, '2017-09-04 02:54:29', '2017-09-04 02:54:29'),
(11, 'ahmed', 'dfgdg', '$2y$10$cUs3aTi0f2LCUr1oLoAtruaM5tdw0WgFIJmxEx8CnONYcwiKhK22K', 'O9rrhVClMl1KQI8BBIzeKRAvWt3sXtsMkWG3fxgANn4sPZUaFbPGSj4GNc6f', NULL, '2017-09-04 13:36:18', '2017-09-04 13:36:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
