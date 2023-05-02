-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 05:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Final Year', '2023-04-27 20:08:36', '2023-04-27 20:08:36'),
(2, 'Fresher', '2023-04-27 20:08:36', '2023-04-27 20:08:36'),
(3, 'School Official', '2023-04-27 20:08:36', '2023-04-27 20:08:36'),
(4, 'Scholarship', '2023-04-27 20:08:36', '2023-04-27 20:08:36'),
(5, 'jambite', '2023-04-27 20:08:36', '2023-04-27 20:08:36'),
(6, 'gym', '2023-04-27 20:08:37', '2023-04-27 20:08:37'),
(7, 'disabled', '2023-04-27 20:08:37', '2023-04-27 20:08:37'),
(8, 'sick', '2023-04-27 20:08:37', '2023-04-27 20:08:37'),
(9, 'free', '2023-04-27 20:08:37', '2023-04-27 20:08:37'),
(10, 'home alone', '2023-04-27 20:08:37', '2023-04-27 20:08:37');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`, `updated_at`) VALUES
(43, 10, 33, 'hey hey... early bird', '2023-04-28 15:13:26', '2023-04-28 15:13:26'),
(44, 12, 34, 'hey', '2023-04-29 15:00:21', '2023-04-29 15:00:21'),
(45, 14, 36, 'helloooooooooooooooo', '2023-04-29 19:48:13', '2023-04-29 19:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_03_04_131126_create_posts_table', 1),
(4, '2017_03_04_131334_create_categories_table', 1),
(5, '2017_03_04_131558_create_tags_table', 1),
(6, '2017_03_04_131702_create_post_tag_table', 1),
(7, '2017_03_04_131909_create_comments_table', 1),
(8, '2017_03_04_133429_add_columns_to_user', 1),
(9, '2023_04_29_115129_create_proposals_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locateTo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `moveTime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `locateTo`, `moveTime`, `body`, `user_id`, `driver_id`, `category_id`, `is_published`, `created_at`, `updated_at`) VALUES
(33, 'School Gate', 'ifite lodge', '', 'we move regardless', 10, 10, 8, 1, '2023-04-28 15:04:04', '2023-04-29 14:03:12'),
(34, 'temp site', 'school gate', '2023-04-29', 'lets move', 10, NULL, 4, 1, '2023-04-29 10:48:21', '2023-04-29 19:15:53'),
(35, 'JoyEstate', 'School gate', '2023-04-30', 'let move', 13, 14, 5, 1, '2023-04-29 19:19:52', '2023-04-29 20:03:55'),
(36, 'temp site', 'perm site', '2023-04-30', 'we move', 13, NULL, 7, 1, '2023-04-29 19:41:43', '2023-04-29 19:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE IF NOT EXISTS `post_tag` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 19, 1, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(2, 23, 10, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(3, 15, 6, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(4, 23, 4, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(6, 24, 8, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(7, 8, 2, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(8, 2, 4, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(9, 17, 7, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(10, 24, 2, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(11, 4, 4, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(12, 22, 5, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(13, 18, 1, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(16, 17, 2, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(17, 9, 6, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(18, 12, 3, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(19, 12, 3, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(20, 22, 4, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(21, 10, 5, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(22, 25, 2, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(23, 5, 8, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(24, 17, 2, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(25, 14, 10, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(26, 21, 8, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(27, 4, 8, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(28, 25, 1, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(29, 11, 1, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(31, 11, 10, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(32, 6, 7, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(33, 15, 5, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(34, 6, 10, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(35, 11, 2, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(36, 4, 8, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(37, 21, 2, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(38, 17, 2, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(39, 18, 5, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(41, 8, 4, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(42, 22, 9, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(43, 9, 2, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(44, 10, 7, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(45, 24, 1, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(46, 5, 9, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(47, 2, 9, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(48, 7, 4, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(49, 15, 4, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(50, 2, 5, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(51, 3, 9, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(52, 14, 10, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(53, 11, 8, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(54, 23, 4, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(55, 21, 4, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(56, 25, 5, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(57, 9, 2, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(58, 18, 5, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(59, 13, 7, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(60, 12, 4, '2023-04-27 20:08:42', '2023-04-27 20:08:42'),
(71, 33, 1, '2023-04-28 15:04:04', '2023-04-28 15:04:04'),
(72, 33, 4, '2023-04-28 15:04:04', '2023-04-28 15:04:04'),
(73, 33, 5, '2023-04-28 15:04:04', '2023-04-28 15:04:04'),
(74, 34, 3, '2023-04-29 10:48:21', '2023-04-29 10:48:21'),
(75, 34, 5, '2023-04-29 10:48:21', '2023-04-29 10:48:21'),
(76, 35, 1, '2023-04-29 19:19:52', '2023-04-29 19:19:52'),
(77, 35, 3, '2023-04-29 19:19:52', '2023-04-29 19:19:52'),
(78, 35, 5, '2023-04-29 19:19:52', '2023-04-29 19:19:52'),
(79, 36, 4, '2023-04-29 19:41:43', '2023-04-29 19:41:43'),
(80, 36, 8, '2023-04-29 19:41:43', '2023-04-29 19:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `proposals`
--

CREATE TABLE IF NOT EXISTS `proposals` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `accepted` int(11) NOT NULL DEFAULT 0,
  `availability` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `proposals`
--

INSERT INTO `proposals` (`id`, `user_id`, `post_id`, `body`, `accepted`, `availability`, `price`, `created_at`, `updated_at`) VALUES
(17, 10, 33, 'ergr', 0, 'a day', 900.00, '2023-04-29 13:20:38', '2023-04-29 13:20:38'),
(18, 14, 36, 'please accept', 0, 'immediately', 900.00, '2023-04-29 19:46:15', '2023-04-29 19:46:15'),
(19, 14, 35, 'we move', 0, 'immediately', 1000.00, '2023-04-29 19:57:27', '2023-04-29 19:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'school gate', '2023-04-27 20:08:37', '2023-04-27 20:08:37'),
(2, 'temp site', '2023-04-27 20:08:37', '2023-04-27 20:08:37'),
(3, 'road walk', '2023-04-27 20:08:37', '2023-04-27 20:08:37'),
(4, '1st Market', '2023-04-27 20:08:37', '2023-04-27 20:08:37'),
(5, '2nd Market', '2023-04-27 20:08:37', '2023-04-27 20:08:37'),
(6, 'Ifite', '2023-04-27 20:08:37', '2023-04-27 20:08:37'),
(7, 'Royal kitchen', '2023-04-27 20:08:37', '2023-04-27 20:08:37'),
(8, 'area boys', '2023-04-27 20:08:37', '2023-04-27 20:08:37'),
(9, 'SUG', '2023-04-27 20:08:37', '2023-04-27 20:08:37'),
(10, 'NACOSS', '2023-04-27 20:08:37', '2023-04-27 20:08:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `reset_key` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`, `remember_token`, `created_at`, `updated_at`, `api_token`, `is_admin`, `reset_key`) VALUES
(1, 'Katrina Jacobson', 'hromaguera@example.com', 0, '$2y$10$ej/tmsUcwO6DvY2jOOpuYOax8QoPX6OUfVz/qbtbxs1gq6B/ZArOO', 'IOVCtMQob4', '2023-04-27 20:08:38', '2023-04-27 20:08:38', 'GGirXDsO6TU18jOv1Mr1Y7kQ3POyQcSPYjvheoIrubgOA2yaHv', 0, NULL),
(2, 'Lawson Bode', 'aryanna44@example.net', 0, '$2y$10$ej/tmsUcwO6DvY2jOOpuYOax8QoPX6OUfVz/qbtbxs1gq6B/ZArOO', 'MDj566xnGr', '2023-04-27 20:08:38', '2023-04-27 20:08:38', 'CJq8y0vYjksGrAXaGrOUJcj8CFwf0N6AX8qVxO7c9InMaUEyzE', 0, NULL),
(3, 'Caleigh Stroman III', 'emerald57@example.net', 0, '$2y$10$ej/tmsUcwO6DvY2jOOpuYOax8QoPX6OUfVz/qbtbxs1gq6B/ZArOO', '1RWQkBxgPd', '2023-04-27 20:08:38', '2023-04-27 20:08:38', 'sV5mmUbHVyPkjmrga6HX4hRo6JMajlBwLYXVnpRrOIXusPeBEH', 0, NULL),
(4, 'Kaylah Simonis', 'wilderman.donavon@example.com', 0, '$2y$10$ej/tmsUcwO6DvY2jOOpuYOax8QoPX6OUfVz/qbtbxs1gq6B/ZArOO', 'pqV29jYeWo', '2023-04-27 20:08:38', '2023-04-27 20:08:38', '0vDxCt1QJJsJU6DZd3ia6OsqplnWrr3vSqutGa5nnDARSeeKo8', 0, NULL),
(5, 'Deshaun Hoeger DVM', 'schultz.chad@example.org', 0, '$2y$10$ej/tmsUcwO6DvY2jOOpuYOax8QoPX6OUfVz/qbtbxs1gq6B/ZArOO', 'e4A8uMmWGV', '2023-04-27 20:08:38', '2023-04-27 20:08:38', 'o0UXZ70ayw781QxUJ0rfob4KBYygj1WsRC5B8Xh6zZLh3xv9sv', 0, NULL),
(6, 'Dr. Jennings Windler II', 'kamren.ferry@example.com', 0, '$2y$10$ej/tmsUcwO6DvY2jOOpuYOax8QoPX6OUfVz/qbtbxs1gq6B/ZArOO', 'jVDbbpxV25', '2023-04-27 20:08:38', '2023-04-27 20:08:38', 'WRn2hIASOlGaDvLeOU6wjskzTOhewywsubOVWp51epxNsyAAWa', 0, NULL),
(7, 'Mr. Cordell Hauck', 'angelina59@example.net', 1, '$2y$10$ej/tmsUcwO6DvY2jOOpuYOax8QoPX6OUfVz/qbtbxs1gq6B/ZArOO', 'aOTVg1uZ0K', '2023-04-27 20:08:38', '2023-04-28 12:35:52', 'aOYPIVpUvZx0Gu4PQYScGCUllSmurqNj0IRggKgBpATVrb8U1m', 0, NULL),
(8, 'Keira Kilback MD', 'yost.nichole@example.com', 0, '$2y$10$ej/tmsUcwO6DvY2jOOpuYOax8QoPX6OUfVz/qbtbxs1gq6B/ZArOO', 'JKFJsA3DhD', '2023-04-27 20:08:38', '2023-04-27 20:08:38', 'S2zsNehaYkM0aqo5B5g1fXHvHIGKtzyu6PGy2u4Y7UAh7AH2So', 0, NULL),
(9, 'Barrett Moen', 'pouros.rosa@example.net', 0, '$2y$10$ej/tmsUcwO6DvY2jOOpuYOax8QoPX6OUfVz/qbtbxs1gq6B/ZArOO', 'E9xKooaDmq', '2023-04-27 20:08:38', '2023-04-27 20:08:38', 'xnag3Z7j4OrMXEok0BSguR6VuqL2QURi7iinrGFdzyd9sKuJVt', 0, NULL),
(10, 'Presh Yoo', 'user1@gmail.com', 1, '$2y$10$gz7ulX98pW1Ur0oksVZ2xeVIUKmY4pLUTLqZvqsu6YIPhObqqjJoy', NULL, '2023-04-27 20:11:01', '2023-04-27 20:11:01', 'poEPlswHobgi4vJixmFqSJTP2Y2vo5LdzTODiH5Wkkci23aBap', 1, NULL),
(11, 'driver', 'user2@gmail.com', 0, '$2y$10$ciMhMtLc9aZ4OeBO.YCLaOn96fcI23oS3jwaHpIDHHX7f2MqLgkMm', NULL, '2023-04-29 08:49:57', '2023-04-29 08:49:57', 'RTbCnpz5p1KbcDdzVGPRe0QOV7BVfylQ9Opbc6xcRqrlMUh4oO', 0, NULL),
(12, 'Bolt', 'driver@gmail.com', 0, '$2y$10$Y2iqav4yGjdLbvPbtKBHg.oXfg2O5D8lVV.UezQ4dnFkHyt6KCPxa', NULL, '2023-04-29 14:57:38', '2023-04-29 14:57:38', 'HNBSNapU3w4WTd9rNyufBhQObXA72Zey6c4cSfi7mfodicU0xk', 0, NULL),
(13, 'chuks', 'unizik@gmail.com', 0, '$2y$10$KTbRCIncbNlxFMomuXBSMu3kF.9tFWcEbJ0/h.ISdrdaVk7aDOaXa', NULL, '2023-04-29 19:17:04', '2023-04-29 19:17:04', 'VSamJHwnzzZO1OlD8WMsJT8zlN3ND5tlqRnYcUOcqJzRMGKCwH', 0, NULL),
(14, 'Drive', 'driver1@gmail.com', 1, '$2y$10$Ccrc4GtQxNYPHxm8B4N5aeYd8wC7e8ocJbAx.lV51K38bDenG0elC', NULL, '2023-04-29 19:45:00', '2023-04-29 19:45:00', 'Dq4jpqm2bHRDGgOrN8p4op4i3EOd3wP7UmSG0GLHajfurX6tKU', 0, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
