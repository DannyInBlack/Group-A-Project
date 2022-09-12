-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2022 at 10:26 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_01_062241_create_posts_table', 1),
(7, '2022_09_02_170041_add_user_id', 2),
(8, '2022_09_03_103621_add_image_column', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('danielghobrial11@gmail.com', '$2y$10$iSOc62dUk6IewBC8fNTdLe.J8UWPdELzbUiGOofDqmABz2gEMON.e', '2022-09-11 17:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `deleted_at`, `user_id`, `img`) VALUES
(1, 'Wow this is a good post', 'NOsd', '2022-09-02 15:42:38', '2022-09-03 18:07:42', NULL, 1, ''),
(2, 'Ms. Tyra Champlin PhD', 'Eum illum qui ipsam sed vero in occaecati. Quasi et magni pariatur fugit deleniti. Voluptatibus laboriosam nihil qui aut. Quia necessitatibus iste animi.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 4, ''),
(3, 'Luis Morissette', 'Libero illo occaecati quo laboriosam. Fugit ab repudiandae et inventore vero. In ut et molestiae iure ipsa nemo quos qui.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 8, ''),
(4, 'Kaya Glover', 'Maiores cumque exercitationem sit officiis repudiandae. Repellendus quia unde est quia aut modi. Rem et sunt sapiente in sint.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 2, ''),
(5, 'Georgette Torphy', 'Libero facilis aut animi. Eveniet perferendis at error perspiciatis perspiciatis nesciunt qui. Incidunt praesentium ut natus aut dolor sit.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 4, ''),
(6, 'Lexus DuBuque', 'Labore ea necessitatibus explicabo blanditiis. Sunt qui et vel hic harum doloremque earum. Vel deserunt eaque vero officia sint nihil eos perferendis. Necessitatibus deserunt dolorum corrupti sequi doloribus voluptas tempore.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 6, ''),
(7, 'Dr. Hillary Borer', 'Maxime enim natus et iusto praesentium ab. Et ad incidunt sint omnis qui minus. Consequatur mollitia alias aut dolorum.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 6, ''),
(8, 'Prof. Fredy Schowalter MD', 'Molestias numquam fuga ipsam reiciendis sed odit. Modi et molestias sequi sunt omnis. Eligendi voluptatem autem ut. Temporibus aut sequi dolor quo est.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 4, ''),
(9, 'Taylor Abbott', 'Voluptate praesentium enim eos asperiores consectetur eum fugiat. Nobis et in tenetur doloremque animi ullam. Ullam hic unde suscipit corrupti est et. Est ullam tenetur dolor in. Id qui aliquam cupiditate aperiam qui numquam.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 5, ''),
(10, 'Alivia Kilback I', 'Ut ea vel assumenda ut molestiae rerum. Ratione est ducimus necessitatibus magni ipsam itaque. Enim eos deleniti aut aut.', '2022-09-02 15:45:47', '2022-09-03 09:56:17', NULL, 1, ''),
(11, 'Josh Bergstrom I', 'Molestias cupiditate illum et et soluta. Ut iusto blanditiis recusandae eos esse eum. Tenetur assumenda molestias error harum qui voluptas nulla. Autem placeat fugiat ullam ullam.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 8, ''),
(12, 'Adele Hamill', 'In eaque possimus in. Unde consectetur debitis aut aut esse officiis dicta.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 7, ''),
(13, 'Montana Deckow', 'Porro excepturi voluptate officia ab et et commodi id. Ut libero excepturi totam et et perspiciatis. Sint quis esse dolorum architecto ut. Sint alias quae voluptatem ut veritatis aut distinctio.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 7, ''),
(14, 'Lorine Rempel IV', 'Totam distinctio placeat excepturi temporibus molestiae. Perspiciatis id et quas iste ut. Ut quis eum modi dicta voluptas alias. Molestiae rerum rerum unde sint porro tempore.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 2, ''),
(15, 'Johanna Labadie V', 'Accusantium voluptas necessitatibus sunt hic autem laudantium nulla. Rerum ipsum ab possimus omnis est distinctio commodi. Mollitia harum voluptatem aspernatur repellendus.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 9, ''),
(16, 'Jerrod Bartell', 'Iste ducimus quisquam rerum nobis sed quod cumque vero. Molestiae provident explicabo quas eius dolore eveniet. Tempora officia explicabo nesciunt vel. Vero rerum dolores quo blanditiis.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 5, ''),
(17, 'Miss Winnifred Maggio Sr.', 'Quo iusto cumque nemo mollitia. Assumenda tenetur asperiores ea. Quia aut sapiente sed quis aut officiis quas.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 8, ''),
(18, 'Queen Hackett', 'Vel voluptatem sint soluta soluta voluptas doloremque. Quod in qui laudantium numquam qui distinctio. Aut dolores nobis delectus veniam.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 4, ''),
(19, 'Stephan Keeling', 'Officiis vel ad molestiae sequi quod ullam libero. Rerum veniam est qui sequi officia.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 1, ''),
(20, 'Kasey Rosenbaum Sr.', 'Accusantium quae quos doloribus eos natus exercitationem. Repellendus rerum quis tenetur. Est vel suscipit debitis consequatur voluptatem inventore. Consequatur vel enim maiores ut.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 4, ''),
(21, 'Prof. Moses Wunsch DDS', 'Quis dignissimos officiis ratione ipsa eos harum natus. Voluptatem sint explicabo ducimus est odio cupiditate cumque similique. Dolorem nostrum est nesciunt odit laudantium vel atque. Cumque enim porro quo quo.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 3, ''),
(22, 'Prof. Darwin Grant', 'Perferendis voluptas qui dolores sapiente nemo quod. Consequatur voluptatem rerum sit voluptatem. Sint natus aut quis est ut dolor est. Quia eum error non possimus non culpa voluptate.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 3, ''),
(23, 'Wendell Labadie', 'Et ea reprehenderit eos qui. Deserunt et sapiente ut dolores quis. Ipsa possimus consectetur nobis quisquam accusantium sed molestias. Sequi repudiandae nulla aperiam aut sunt iusto reprehenderit.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 2, ''),
(24, 'Dr. Audrey Feest', 'Officia odit itaque qui quasi possimus dolorem. Quam nihil qui quaerat. Culpa sapiente deleniti vitae dolor nam.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 3, ''),
(25, 'Malinda Schmitt', 'Illum ad est quo et accusantium. Qui vel nisi et possimus. Non voluptatem dolorum voluptatibus sit et dolorem eos.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 7, ''),
(26, 'Miss Malinda Jones', 'Qui velit delectus delectus vitae. Neque neque quod sapiente voluptas esse dolores aut. Non molestias et repellat eos corporis aut.', '2022-09-02 15:45:47', '2022-09-02 15:45:47', NULL, 2, ''),
(27, 'wow', 'this is the second post', '2022-09-02 22:39:44', '2022-09-02 22:39:44', NULL, 12, ''),
(28, 'asdfasd', 'asdfasdf', '2022-09-03 08:20:37', '2022-09-03 08:20:37', NULL, 1, ''),
(29, 'Post with image', 'This is text', '2022-09-03 09:22:05', '2022-09-03 09:22:05', NULL, 1, 'postImages/obRF1HIpm0UsF8FhQ3xZHW122WKQ1tYBPRSBQ3aT.jpg'),
(30, 'Cristiano', 'CR7', '2022-09-03 09:49:31', '2022-09-03 09:49:31', NULL, 1, 'postImages/38ipKvXmhptXROA6xQzOZMWhZ7loPrDCGUeJ02jN.jpg'),
(31, 'Who knows', 'sdfasdf', '2022-09-03 10:54:09', '2022-09-03 10:54:09', NULL, 1, 'postImages/0X9Bkw9SpelThg72wHU9AYlDXitPbGt3AACcSUVY.jpg'),
(32, 'robert', 'hi', '2022-09-03 18:09:11', '2022-09-03 18:23:03', NULL, 13, 'postImages/oasYQUcecIW5MbLZxz2bcx5I2xKrLOtrNxzI7pgq.jpg'),
(33, 'asdf', 'asdfasdf', '2022-09-03 18:32:05', '2022-09-03 18:32:05', NULL, 13, NULL),
(34, 'posts', 'asd', '2022-09-03 18:32:39', '2022-09-03 18:32:52', NULL, 13, 'postImages/DNTWOSBFuDN8wltVQKP7QjnKwcUBl5bi8verEWVe.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Danial', '01551130775', 'danielghobrial11@gmail.com', NULL, '$2y$10$y8N9/XBbAQV351TXULUGg.e.EWnvMc1SxNho29dWa9aTO.9U6Yr7O', 'UG52fsYvhqjaqrqVFEOG15rVxVMsD8fZTHkSpC2Tk7KlrnlsK6B9MNKmbLWX', '2022-09-02 14:01:36', '2022-09-02 14:01:36'),
(2, 'Toy Turner', NULL, 'sawayn.reginald@example.com', '2022-09-02 15:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tjw6YCXviR', '2022-09-02 15:45:20', '2022-09-02 15:45:20'),
(3, 'Sedrick Streich', NULL, 'kwilkinson@example.net', '2022-09-02 15:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ces2q8Vko7', '2022-09-02 15:45:20', '2022-09-02 15:45:20'),
(4, 'Mrs. Bailee Von', NULL, 'matilda74@example.org', '2022-09-02 15:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f6ySlyehQA', '2022-09-02 15:45:20', '2022-09-02 15:45:20'),
(5, 'Elmira Murazik', NULL, 'stacy.thompson@example.org', '2022-09-02 15:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8pLYPJc1p2', '2022-09-02 15:45:20', '2022-09-02 15:45:20'),
(6, 'Wilmer Frami', NULL, 'klocko.jo@example.com', '2022-09-02 15:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PZZHIjLcBT', '2022-09-02 15:45:20', '2022-09-02 15:45:20'),
(7, 'Helene Hettinger', NULL, 'aufderhar.makenzie@example.org', '2022-09-02 15:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd5DQbX3AW5', '2022-09-02 15:45:20', '2022-09-02 15:45:20'),
(8, 'Bulah Rosenbaum', NULL, 'arjun12@example.com', '2022-09-02 15:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OD8rPO3Mce', '2022-09-02 15:45:20', '2022-09-02 15:45:20'),
(9, 'Marianna Mertz', NULL, 'elouise.klocko@example.net', '2022-09-02 15:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JxaSEyE0dt', '2022-09-02 15:45:20', '2022-09-02 15:45:20'),
(10, 'Ms. Mattie Raynor', NULL, 'kamille42@example.com', '2022-09-02 15:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wf3TAMT641', '2022-09-02 15:45:20', '2022-09-02 15:45:20'),
(11, 'Dario Tillman', NULL, 'agustin17@example.com', '2022-09-02 15:45:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zyhogCSl56', '2022-09-02 15:45:20', '2022-09-02 15:45:20'),
(12, 'danny', NULL, 'dan@gmail.com', NULL, '$2y$10$PXK6Ks064.vULh9i0Ww90eJy8ficlXV/3j8CiPwXSrkJzLeq/fmqq', NULL, '2022-09-02 22:39:32', '2022-09-02 22:39:32'),
(13, 'robert', NULL, 'roberto@carlos.com', NULL, '$2y$10$OCFcJe1pCdctDo91UU6UDOic9btit8B8iSl/fGTDjHsSzvv1ImZZu', NULL, '2022-09-03 18:08:49', '2022-09-03 18:08:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
