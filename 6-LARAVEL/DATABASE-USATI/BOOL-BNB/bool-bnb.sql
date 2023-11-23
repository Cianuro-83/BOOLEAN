-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Nov 23, 2023 alle 12:44
-- Versione del server: 5.7.39
-- Versione PHP: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bool-bnb`
--
CREATE DATABASE IF NOT EXISTS `bool-bnb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bool-bnb`;

-- --------------------------------------------------------

--
-- Struttura della tabella `appartments`
--

CREATE TABLE `appartments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rooms` int(11) DEFAULT NULL,
  `beds` int(11) DEFAULT NULL,
  `bathrooms` int(11) DEFAULT NULL,
  `mq` decimal(8,2) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` decimal(11,8) DEFAULT NULL,
  `lon` decimal(11,8) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `appartments`
--

INSERT INTO `appartments` (`id`, `user_id`, `name`, `rooms`, `beds`, `bathrooms`, `mq`, `address`, `lat`, `lon`, `visible`, `created_at`, `updated_at`) VALUES
(1, 7, 'sunt', 1, 0, 8, '390.69', 'Vel fuga facere labore ipsum.', '135.30172000', '-16.00733000', 1, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(2, 5, 'odit', 4, 7, 0, '413.77', 'Autem voluptas rerum placeat voluptas tempora dolor.', '-114.81355000', '-43.06822000', 0, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(3, 6, 'suscipit', 7, 0, 2, '662.01', 'Commodi maiores qui illo.', '-1.40735000', '-128.61785000', 0, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(4, 6, 'exercitationem', 4, 2, 4, '155.79', 'Mollitia ipsum ipsa numquam fuga voluptatem sapiente.', '156.33430000', '73.93881000', 1, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(5, 8, 'dolorem', 9, 5, 4, '40.98', 'Porro commodi exercitationem nemo.', '129.48138000', '79.78169000', 0, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(6, 10, 'repudiandae', 8, 3, 0, '493.41', 'Dolor non rem voluptatem ut.', '68.85489000', '-5.87530000', 1, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(7, 10, 'corporis', 5, 6, 8, '594.71', 'Consequatur nihil modi laboriosam necessitatibus maiores nam.', '-98.20017000', '130.90957000', 0, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(8, 6, 'ea', 1, 0, 0, '401.51', 'Temporibus delectus eaque voluptatum.', '73.49956000', '-151.44219000', 0, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(9, 6, 'itaque', 1, 5, 7, '824.57', 'Voluptatem expedita earum minus autem.', '145.60467000', '-8.87357000', 1, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(10, 10, 'et', 2, 9, 1, '909.34', 'Eos voluptatibus est saepe odio ut dicta.', '-18.00965000', '86.95064000', 0, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(11, 2, 'et', 8, 4, 5, '70.55', 'Temporibus autem necessitatibus est.', '-146.03218000', '-142.33148000', 1, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(12, 5, 'sint', 9, 6, 4, '759.22', 'Dolorem porro possimus et.', '-140.18011000', '-14.92082000', 1, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(13, 9, 'debitis', 7, 0, 3, '22.82', 'Ut quidem accusamus et sint illum tempore.', '82.29589000', '-22.09788000', 1, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(14, 9, 'sed', 1, 0, 1, '979.82', 'Voluptas quia ab dolore.', '-17.39467000', '-83.36875000', 0, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(15, 9, 'id', 2, 6, 7, '943.65', 'Consequatur dicta nulla aut quasi rerum eaque.', '-50.51510000', '-88.24577000', 0, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(16, 1, 'aut', 4, 9, 9, '396.89', 'Culpa cumque quisquam debitis at.', '138.37193000', '143.30412000', 1, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(17, 9, 'numquam', 8, 1, 8, '263.51', 'Error harum qui vitae sit facilis ea.', '98.73770000', '-151.21691000', 0, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(18, 4, 'quisquam', 0, 9, 4, '780.08', 'Enim sunt porro quia fugit dolore.', '-98.70715000', '154.77161000', 1, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(19, 5, 'aut', 9, 4, 8, '831.95', 'Dolores sunt sint et aut eveniet.', '153.30525000', '-46.13630000', 1, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(20, 2, 'est', 8, 5, 3, '807.85', 'Porro minus vel voluptas nobis veritatis.', '-78.08227000', '-28.25055000', 1, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(21, 10, 'qui', 7, 3, 4, '995.46', 'Consequatur quia quia tempora qui laborum est dolores.', '-95.07978000', '-3.32857000', 1, '2023-11-21 16:20:48', '2023-11-21 16:20:48');

-- --------------------------------------------------------

--
-- Struttura della tabella `appartment_service`
--

CREATE TABLE `appartment_service` (
  `appartment_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `appartment_service`
--

INSERT INTO `appartment_service` (`appartment_id`, `service_id`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, NULL),
(2, 2, NULL, NULL),
(2, 1, NULL, NULL),
(2, 4, NULL, NULL),
(2, 3, NULL, NULL),
(3, 4, NULL, NULL),
(4, 1, NULL, NULL),
(4, 3, NULL, NULL),
(5, 4, NULL, NULL),
(5, 3, NULL, NULL),
(5, 1, NULL, NULL),
(5, 2, NULL, NULL),
(6, 3, NULL, NULL),
(6, 4, NULL, NULL),
(6, 2, NULL, NULL),
(7, 4, NULL, NULL),
(7, 2, NULL, NULL),
(7, 1, NULL, NULL),
(7, 3, NULL, NULL),
(8, 2, NULL, NULL),
(8, 3, NULL, NULL),
(8, 1, NULL, NULL),
(11, 4, NULL, NULL),
(11, 3, NULL, NULL),
(12, 3, NULL, NULL),
(12, 2, NULL, NULL),
(12, 1, NULL, NULL),
(12, 4, NULL, NULL),
(15, 2, NULL, NULL),
(15, 4, NULL, NULL),
(15, 1, NULL, NULL),
(16, 4, NULL, NULL),
(16, 3, NULL, NULL),
(16, 2, NULL, NULL),
(16, 1, NULL, NULL),
(17, 4, NULL, NULL),
(17, 1, NULL, NULL),
(17, 3, NULL, NULL),
(17, 2, NULL, NULL),
(19, 1, NULL, NULL),
(19, 3, NULL, NULL),
(19, 4, NULL, NULL),
(19, 2, NULL, NULL),
(20, 1, NULL, NULL),
(21, 1, NULL, NULL),
(21, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `appartment_sponsorship`
--

CREATE TABLE `appartment_sponsorship` (
  `appartment_id` bigint(20) UNSIGNED NOT NULL,
  `sponsorship_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `success` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `appartment_sponsorship`
--

INSERT INTO `appartment_sponsorship` (`appartment_id`, `sponsorship_id`, `start_date`, `end_date`, `success`, `created_at`, `updated_at`) VALUES
(1, 2, '2023-11-21 17:20:48', '2023-11-24 17:20:48', 0, NULL, NULL),
(2, 3, '2023-11-21 17:20:48', '2023-11-27 17:20:48', 0, NULL, NULL),
(3, 2, '2023-11-21 17:20:48', '2023-11-24 17:20:48', 1, NULL, NULL),
(4, 3, '2023-11-21 17:20:48', '2023-11-27 17:20:48', 1, NULL, NULL),
(5, 2, '2023-11-21 17:20:48', '2023-11-24 17:20:48', 0, NULL, NULL),
(6, 2, '2023-11-21 17:20:48', '2023-11-24 17:20:48', 1, NULL, NULL),
(7, 3, '2023-11-21 17:20:48', '2023-11-27 17:20:48', 1, NULL, NULL),
(8, 1, '2023-11-21 17:20:48', '2023-11-22 17:20:48', 0, NULL, NULL),
(9, 3, '2023-11-21 17:20:48', '2023-11-27 17:20:48', 0, NULL, NULL),
(10, 2, '2023-11-21 17:20:48', '2023-11-24 17:20:48', 0, NULL, NULL),
(11, 1, '2023-11-21 17:20:48', '2023-11-22 17:20:48', 0, NULL, NULL),
(12, 3, '2023-11-21 17:20:48', '2023-11-27 17:20:48', 1, NULL, NULL),
(13, 3, '2023-11-21 17:20:48', '2023-11-27 17:20:48', 1, NULL, NULL),
(14, 1, '2023-11-21 17:20:48', '2023-11-22 17:20:48', 1, NULL, NULL),
(15, 1, '2023-11-21 17:20:48', '2023-11-22 17:20:48', 1, NULL, NULL),
(16, 2, '2023-11-21 17:20:48', '2023-11-24 17:20:48', 1, NULL, NULL),
(17, 3, '2023-11-21 17:20:48', '2023-11-27 17:20:48', 1, NULL, NULL),
(18, 2, '2023-11-21 17:20:48', '2023-11-24 17:20:48', 0, NULL, NULL),
(19, 3, '2023-11-21 17:20:48', '2023-11-27 17:20:48', 0, NULL, NULL),
(20, 2, '2023-11-21 17:20:48', '2023-11-24 17:20:48', 1, NULL, NULL),
(21, 3, '2023-11-21 17:20:48', '2023-11-27 17:20:48', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appartment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `messages`
--

INSERT INTO `messages` (`id`, `appartment_id`, `name`, `lastname`, `email`, `text`, `created_at`, `updated_at`) VALUES
(1, 11, 'Kris', 'Price', 'cremin.arturo@gmail.com', 'Optio est adipisci quasi quia et officiis. Voluptas et explicabo sunt debitis necessitatibus quaerat.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(2, 1, 'Susana', 'Lemke', 'gayle40@hintz.com', 'Temporibus impedit qui molestiae id. Voluptas aut inventore veritatis.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(3, 2, 'Charles', 'Robel', 'zmohr@yahoo.com', 'Officiis fuga est esse eum voluptas aliquid. Vel facilis rerum eligendi eos.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(4, 8, 'Rupert', 'Kemmer', 'mkunde@hotmail.com', 'Porro debitis dignissimos sed dolore. Fugiat neque aspernatur repellat unde consectetur qui doloribus. Sunt saepe consectetur consequatur voluptates soluta voluptates.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(5, 8, 'Allan', 'Ziemann', 'holly.kling@klocko.biz', 'Eligendi provident ab aperiam ea ipsam consequatur atque. Dolorum corporis corrupti fugiat exercitationem dolore.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(6, 3, 'Angeline', 'Klocko', 'poberbrunner@stark.biz', 'Quidem ut ad odit modi dolorum quia. Dolor ut ipsam modi dolorum tenetur. Perspiciatis rem omnis expedita.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(7, 6, 'Sandra', 'Hackett', 'robin.bogan@hotmail.com', 'Blanditiis rem eum placeat provident. Non non cum distinctio ut voluptatem velit hic.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(8, 5, 'Dana', 'Lowe', 'savannah90@leuschke.com', 'Ut consequuntur dolore harum distinctio vel occaecati deleniti. Odit incidunt quia in soluta id. Alias laborum incidunt aperiam ea pariatur ipsum.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(9, 5, 'Ila', 'Bartoletti', 'oferry@hotmail.com', 'Atque omnis ab incidunt velit tempora. Autem eum aperiam iusto qui quo.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(10, 19, 'Clifford', 'Lesch', 'casper.asa@hotmail.com', 'Sequi voluptas quo quam doloremque qui. Molestiae excepturi qui velit corrupti. Cum nisi dignissimos vel dicta dolorem eveniet ullam.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(11, 4, 'Gladyce', 'Satterfield', 'jkuhic@hotmail.com', 'Quidem occaecati corrupti optio optio. Voluptas dolores dolorem optio.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(12, 11, 'Alyson', 'Ullrich', 'kali86@gmail.com', 'Et numquam quia dolorem ut temporibus. Autem explicabo officia illum et dolores eum porro. Earum et commodi omnis cupiditate quod sed in adipisci.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(13, 4, 'Rahsaan', 'Price', 'dfeeney@ziemann.com', 'Voluptatum libero exercitationem ut repudiandae molestiae. Accusamus consequuntur officia quibusdam eum. Autem sed et neque iusto provident laboriosam.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(14, 14, 'Shawna', 'Terry', 'zmedhurst@zboncak.com', 'Ut nihil reiciendis maxime provident quibusdam autem. Ipsa molestiae neque et aut hic unde eaque. Quasi quas commodi libero.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(15, 7, 'Eulalia', 'Graham', 'jacobs.rachael@yahoo.com', 'Qui est autem neque amet ipsa sunt. Praesentium quos aut a deserunt.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(16, 4, 'Karine', 'Kris', 'demetris.tremblay@hand.com', 'Similique doloribus ut exercitationem quo deleniti quia. Quae commodi maxime odit eligendi quia quis. Dolorum culpa voluptatibus quia odit dolores ut.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(17, 8, 'Marietta', 'Keebler', 'tkling@welch.com', 'Tempora nesciunt similique vero temporibus. Enim unde et eos. Harum hic sed temporibus error ipsa.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(18, 10, 'Quentin', 'Bartoletti', 'theodore.langosh@yahoo.com', 'Sit aliquam et dolor qui. Id voluptatibus a cum nihil ut assumenda.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(19, 13, 'Ashtyn', 'Tillman', 'ysenger@jacobi.com', 'Quia a sed inventore veritatis rerum. Dolorum dolorum magni placeat sit in iste architecto.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(20, 16, 'Blanca', 'Hyatt', 'lyda71@schroeder.info', 'Quia commodi ut adipisci totam. Quis et nam dolore doloremque debitis facilis. Labore cum ea autem.', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(21, 16, 'Kory', 'Goodwin', 'towne.rosa@yahoo.com', 'Aut nulla eaque est est mollitia. Vero repellat deserunt libero amet. Quos qui in quia voluptates.', '2023-11-21 16:20:48', '2023-11-21 16:20:48');

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_18_143157_create_appartments_table', 1),
(6, '2023_10_18_145144_create_services_table', 1),
(7, '2023_10_18_145806_create_messages_table', 1),
(8, '2023_10_18_150642_create_visits_table', 1),
(9, '2023_10_18_165115_create_sponsorships_table', 1),
(10, '2023_10_19_081110_add_user_id_to_appartments_table', 1),
(11, '2023_10_19_083052_add_appartment_id_to_messages_table', 1),
(12, '2023_10_19_083919_add_appartment_id_to_visits_table', 1),
(13, '2023_10_19_092619_create_appartment_sponsorship_table', 1),
(14, '2023_10_19_094653_create_appartment_service_table', 1),
(15, '2023_10_25_164429_create_photos_table', 1),
(16, '2023_10_27_203034_add_deleted_at_field_to_services', 1),
(17, '2023_11_21_161340_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 11);

-- --------------------------------------------------------

--
-- Struttura della tabella `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appartment_id` bigint(20) UNSIGNED NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(2, 'writer', 'web', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(3, 'user', 'web', '2023-11-21 16:20:48', '2023-11-21 16:20:48');

-- --------------------------------------------------------

--
-- Struttura della tabella `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `services`
--

INSERT INTO `services` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Piscina', '2023-11-21 16:20:48', '2023-11-21 16:20:48', NULL),
(2, 'Ascensore', '2023-11-21 16:20:48', '2023-11-21 16:20:48', NULL),
(3, 'Fibra', '2023-11-21 16:20:48', '2023-11-21 16:20:48', NULL),
(4, 'Box auto', '2023-11-21 16:20:48', '2023-11-21 16:20:48', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `sponsorships`
--

CREATE TABLE `sponsorships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `sponsorships`
--

INSERT INTO `sponsorships` (`id`, `name`, `price`, `duration`, `created_at`, `updated_at`) VALUES
(1, 'Bronze', 2.99, 24, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(2, 'Gold', 5.99, 72, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(3, 'Diamond', 9.99, 144, '2023-11-21 16:20:48', '2023-11-21 16:20:48');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `birth_date`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Antonette', 'Conroy', 'favian28@example.com', '1981-09-28', '2023-11-21 16:20:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iZTOUf6gUY', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(2, 'Matilda', 'Durgan', 'rempel.misty@example.org', '1986-02-23', '2023-11-21 16:20:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Cg9xjIA3Nz', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(3, 'Fanny', 'VonRueden', 'alaina.ortiz@example.org', '2011-12-28', '2023-11-21 16:20:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sNIlwVnnbQ', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(4, 'Tiana', 'Weber', 'legros.lillie@example.org', '1995-06-22', '2023-11-21 16:20:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tGEVYWAYxE', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(5, 'Fay', 'Hirthe', 'josinski@example.net', '2013-08-28', '2023-11-21 16:20:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5P7AkfgXSy', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(6, 'Frederik', 'Pfannerstill', 'vpacocha@example.com', '1992-03-27', '2023-11-21 16:20:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vUVx0PyeBZ', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(7, 'Daija', 'Ferry', 'dayton70@example.com', '1999-03-27', '2023-11-21 16:20:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tvO7e565Qe', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(8, 'Orpha', 'Schoen', 'thurman.gutkowski@example.org', '1990-02-18', '2023-11-21 16:20:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cGgo2nzSPM', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(9, 'Reyna', 'Jast', 'rosalia83@example.com', '1993-05-09', '2023-11-21 16:20:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ysAGapB2Wp', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(10, 'Scottie', 'Wunsch', 'huel.veda@example.com', '1988-12-27', '2023-11-21 16:20:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yX6zUrpf8M', '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(11, 'admin', NULL, 'admin@admin.com', '2021-10-13', '2023-11-21 16:20:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-11-21 16:20:48', '2023-11-21 16:20:48'),
(12, 'Simone Buzzeo', NULL, 'buzzeosimone@gmail.com', '1983-02-10', NULL, '$2y$10$41KSm8JdULENEPw0yi9.uuMgGJ0NHOf8RB06KKDJ2895YJe6TGyMi', NULL, '2023-11-21 16:23:17', '2023-11-21 16:23:17');

-- --------------------------------------------------------

--
-- Struttura della tabella `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appartment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `visits`
--

INSERT INTO `visits` (`id`, `appartment_id`, `ip`, `date`, `created_at`, `updated_at`) VALUES
(1, 5, 'c8e6:8694:ca7d:1d20:4114:736d:90cf:e6cf', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(2, 16, 'cba6:f11c:7b28:e6a5:10a5:dd92:4ec6:8a8e', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(3, 14, '8c3f:5830:7eba:60d2:8a9e:506:6604:5082', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(4, 2, 'fb2d:65b9:5d5b:cd99:781d:a989:650e:2cde', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(5, 11, '6ab6:a704:8b19:455b:b33c:e32e:fbc:d70e', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(6, 20, '4008:7ecc:45c5:e26e:bbce:b374:d448:50', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(7, 20, 'd740:769d:9ef3:9c2d:43dd:baf2:7ef3:9d75', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(8, 4, '65c8:eb09:dd9e:b462:bcc3:7fb0:ee3e:a2c8', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(9, 5, '79e5:2499:afad:784e:2205:da2f:f0b8:a1bf', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(10, 6, 'c406:2ec2:d99b:d364:e389:eb41:587:1381', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(11, 5, '95c8:1dab:bb6:e008:2c39:5125:e78f:5cc3', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(12, 5, '6c03:bb16:fce7:5aeb:2e8e:115c:fa6:b9aa', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(13, 7, 'fc85:3e32:6c63:55f9:1e90:1536:cb52:7828', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(14, 11, 'b3db:202e:3c9d:6151:5057:376:f504:1132', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(15, 12, '378f:f53d:d91e:8fee:e812:428b:eb41:b66a', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(16, 8, '785a:a3f8:8521:b4:af71:f811:701b:30d7', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(17, 9, '9f0e:22c1:db86:aa3d:a9eb:b3ca:e3a1:402e', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(18, 7, '2d8c:7cde:3b04:ceb5:4092:6e0d:388b:a613', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(19, 7, 'cfda:a560:2863:6b9b:2ee2:2c16:d44f:7af9', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(20, 17, 'fda2:3ab9:205f:24de:9ef:27b4:2933:489e', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49'),
(21, 11, '6d21:72d6:70a:9d1a:9388:b40d:fdfb:4f54', '2023-11-21 17:20:49', '2023-11-21 16:20:49', '2023-11-21 16:20:49');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `appartments`
--
ALTER TABLE `appartments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appartments_user_id_foreign` (`user_id`);

--
-- Indici per le tabelle `appartment_service`
--
ALTER TABLE `appartment_service`
  ADD KEY `appartment_service_appartment_id_foreign` (`appartment_id`),
  ADD KEY `appartment_service_service_id_foreign` (`service_id`);

--
-- Indici per le tabelle `appartment_sponsorship`
--
ALTER TABLE `appartment_sponsorship`
  ADD KEY `appartment_sponsorship_appartment_id_foreign` (`appartment_id`),
  ADD KEY `appartment_sponsorship_sponsorship_id_foreign` (`sponsorship_id`);

--
-- Indici per le tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indici per le tabelle `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_appartment_id_foreign` (`appartment_id`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indici per le tabelle `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indici per le tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indici per le tabelle `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indici per le tabelle `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indici per le tabelle `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_appartment_id_foreign` (`appartment_id`);

--
-- Indici per le tabelle `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indici per le tabelle `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indici per le tabelle `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_name_unique` (`name`);

--
-- Indici per le tabelle `sponsorships`
--
ALTER TABLE `sponsorships`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indici per le tabelle `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_appartment_id_foreign` (`appartment_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `appartments`
--
ALTER TABLE `appartments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT per la tabella `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT per la tabella `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `sponsorships`
--
ALTER TABLE `sponsorships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT per la tabella `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `appartments`
--
ALTER TABLE `appartments`
  ADD CONSTRAINT `appartments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `appartment_service`
--
ALTER TABLE `appartment_service`
  ADD CONSTRAINT `appartment_service_appartment_id_foreign` FOREIGN KEY (`appartment_id`) REFERENCES `appartments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appartment_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `appartment_sponsorship`
--
ALTER TABLE `appartment_sponsorship`
  ADD CONSTRAINT `appartment_sponsorship_appartment_id_foreign` FOREIGN KEY (`appartment_id`) REFERENCES `appartments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appartment_sponsorship_sponsorship_id_foreign` FOREIGN KEY (`sponsorship_id`) REFERENCES `sponsorships` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_appartment_id_foreign` FOREIGN KEY (`appartment_id`) REFERENCES `appartments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_appartment_id_foreign` FOREIGN KEY (`appartment_id`) REFERENCES `appartments` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_appartment_id_foreign` FOREIGN KEY (`appartment_id`) REFERENCES `appartments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `cianuro-bnb`
--
CREATE DATABASE IF NOT EXISTS `cianuro-bnb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cianuro-bnb`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
