-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Nov 23, 2023 alle 12:49
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
-- Database: `laravel-many-to-many`
--
CREATE DATABASE IF NOT EXISTS `laravel-many-to-many` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `laravel-many-to-many`;

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
(5, '2023_04_20_132657_create_projects_table', 1),
(6, '2023_04_26_141438_create_types_table', 1),
(7, '2023_04_26_143605_add_type_id_to_projects_table', 1),
(8, '2023_04_27_131113_create_technologies_table', 1),
(9, '2023_04_27_135227_create_project_technology_table', 1);

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
-- Struttura della tabella `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `projects`
--

INSERT INTO `projects` (`id`, `type_id`, `title`, `customer`, `description`, `url`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, NULL, 'Molestiae aperiam et rerum.', 'Dr. Hailee Hermiston', 'Hic nihil aut ut quaerat non rerum aut aut. Cumque et molestiae illo. Perferendis ea cumque eius aut ut. In beatae officiis ipsum hic voluptatibus libero quo. Officia iste in iusto vitae animi odio. At magni hic sint ea a in. Et quibusdam nihil odit. Sit ullam tempore blanditiis reiciendis. Aut quasi ipsum exercitationem in. Et omnis voluptatibus non mollitia. Nihil omnis qui vitae omnis. Voluptas dolore saepe officiis molestiae in voluptates aut. Non dolorum aliquid a molestiae recusandae saepe. Veniam culpa minima beatae voluptatem unde. Saepe perspiciatis in qui quia autem consequatur. Nostrum similique voluptatem neque aut sint. Consectetur nemo voluptatibus fuga recusandae cumque molestiae. Cum dolor ipsam exercitationem voluptas neque autem. Porro ex natus odit. Eius aut alias voluptatem commodi. Ad non nesciunt assumenda quia est. Architecto quos earum fugit praesentium voluptate iusto. Cum et quia ut illum reiciendis voluptates neque. Quia ipsum vero et quidem quos porro est. Sequi sequi odit excepturi aliquid. Et quibusdam sint corrupti aperiam. Illo nostrum voluptates illo. Adipisci et nam incidunt aut sint. Mollitia repudiandae dolorem officia et. Nam cum ipsa et voluptatem. Aliquid minima odio quasi provident in dolorum inventore. Quasi ullam rerum quia aperiam iusto quis. Asperiores nesciunt ullam in. Blanditiis libero corrupti est enim fugiat in. Laborum sint fugiat velit deserunt ab officiis. Sint aspernatur maiores itaque vel quo. Commodi voluptatibus et tempora ea sed aut repudiandae. Nostrum et aliquid labore vel corporis. Provident maxime dolorem nam dignissimos esse nostrum iste vel. Quas iure et distinctio rem possimus. Qui delectus amet provident possimus. Veritatis aut totam dolores reprehenderit repudiandae natus officiis enim. Rem doloremque doloribus nemo ut animi. Et tenetur illum rerum molestiae. Voluptate voluptatem voluptate dolorum aliquid qui odit. Vel ducimus voluptatem est est. Est ducimus animi error hic non voluptas. Repellat voluptates nostrum quam et eum laudantium. Aut labore in temporibus sit sapiente. Ut architecto voluptatem delectus quod voluptatem. Tenetur quod minus minima ab culpa aut. Dolor repudiandae eligendi iste animi earum vitae quasi officiis. Dolore et amet alias eos. Qui architecto laudantium eius suscipit quia et. Eum voluptatem mollitia quibusdam. Ut et eos provident deleniti. Qui odit dolorem eos possimus sed ipsa sit.', NULL, 'molestiae-aperiam-et-rerum', NULL, '2023-04-28 09:06:16', '2023-04-28 09:06:16'),
(8, NULL, 'Dolores corrupti quibusdam.', 'Odessa Veum I', NULL, NULL, 'dolores-corrupti-quibusdam', NULL, '2023-04-28 09:06:16', '2023-04-28 09:06:16'),
(9, NULL, 'Consequuntur quasi.', 'Tate Toy', NULL, 'http://www.monahan.com/laudantium-inventore-quia-ea-enim', 'consequuntur-quasi', NULL, '2023-04-28 09:06:16', '2023-04-28 09:06:16'),
(10, NULL, 'Molestiae libero.', 'Barbara Thompson', 'Quaerat beatae vitae perferendis nobis. Sint et modi ut dolorum. Et libero dolorem dolorem autem. Maxime repellendus sint fugiat corrupti illum hic fugiat iusto. Culpa eveniet possimus est quia aut non. Enim dolor ea iste sunt reprehenderit. Rem veritatis commodi necessitatibus fuga. Vero illum ipsum similique sapiente aut. Est distinctio sed commodi et tempora corporis. Et voluptatem hic tenetur totam mollitia architecto voluptatibus. Quo voluptas molestias iusto earum natus nihil corrupti. Tenetur voluptas perferendis et quibusdam error ipsum deleniti. Excepturi laudantium eum vero natus voluptates consequuntur. Inventore quam ut et assumenda ipsum eveniet libero sequi. Illo dolor in velit praesentium architecto. Veniam consectetur itaque a et culpa. Enim est ut harum fuga et. Alias est nobis pariatur voluptatibus aut. Id aut et non minus neque. Asperiores est voluptatem dolorum recusandae inventore odio aut deserunt. Atque cum sit nesciunt nihil saepe vel quo. Est est facilis accusamus consectetur. Impedit in quis accusantium velit praesentium quibusdam error. Est ullam qui quis iste est neque et. Aliquid et deserunt quas ut accusamus. Vel qui facere debitis omnis. Possimus non voluptas necessitatibus ratione tenetur. Facilis fuga exercitationem aliquid ratione sunt. Illum iste natus autem totam quia. Ex aperiam est dolores odio similique accusamus. Ab expedita recusandae consequatur dolorum recusandae. Commodi omnis aliquam rerum dolorum nulla totam. Quibusdam qui et omnis a nemo. Et ullam unde accusantium similique laudantium. Possimus enim facere voluptas. Recusandae nostrum ullam odit sunt. Sit molestiae impedit facere voluptas nisi reprehenderit dolor. Fugit autem aut quod quia voluptatem cupiditate cum. Ad vel ea ea voluptatem. Fugiat iusto ad consequuntur quod molestiae dicta. Aut sed ea et sint vitae dolores nostrum. Recusandae optio voluptatem eos maxime sed rerum. Atque sapiente cupiditate doloremque blanditiis cum voluptatem animi iusto. Quia illum est sapiente et vero. Suscipit nihil aut perspiciatis eveniet consequatur iste. Nobis et voluptates voluptates error sequi et eum magni. Illum doloribus qui accusantium officiis atque ratione. Dolores illum aperiam cumque dolorum cupiditate. Consequatur accusamus velit ipsa et aut iusto voluptas. Ullam expedita laboriosam et molestias ut.', NULL, 'molestiae-libero', NULL, '2023-04-28 09:06:16', '2023-04-28 09:06:16'),
(13, 3, 'rgfer', 'fre', '4f4', 'http://127.0.0.1:8000/projects/create', 'rgfer', NULL, '2023-04-28 09:26:13', '2023-04-28 09:26:13');

-- --------------------------------------------------------

--
-- Struttura della tabella `project_technology`
--

CREATE TABLE `project_technology` (
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `technology_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `project_technology`
--

INSERT INTO `project_technology` (`project_id`, `technology_id`) VALUES
(4, 2),
(8, 1),
(8, 6),
(9, 8),
(9, 9),
(9, 4),
(10, 8),
(10, 6),
(10, 3),
(13, 7);

-- --------------------------------------------------------

--
-- Struttura della tabella `technologies`
--

CREATE TABLE `technologies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `technologies`
--

INSERT INTO `technologies` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'CSS', 'css', '2023-04-28 09:06:16', '2023-04-28 09:06:16'),
(2, 'JavaScript', 'javascript', '2023-04-28 09:06:16', '2023-04-28 09:06:16'),
(3, 'PHP', 'php', '2023-04-28 09:06:16', '2023-04-28 09:06:16'),
(4, 'VUE', 'vue', '2023-04-28 09:06:16', '2023-04-28 09:06:16'),
(5, 'SQL', 'sql', '2023-04-28 09:06:16', '2023-04-28 09:06:16'),
(6, 'LARAVEL', 'laravel', '2023-04-28 09:06:16', '2023-04-28 09:06:16'),
(7, 'BOOTSTRAP', 'bootstrap', '2023-04-28 09:06:16', '2023-04-28 09:06:16'),
(8, 'TAILWIND', 'tailwind', '2023-04-28 09:06:16', '2023-04-28 09:06:16'),
(9, 'SASS', 'sass', '2023-04-28 09:06:16', '2023-04-28 09:06:16');

-- --------------------------------------------------------

--
-- Struttura della tabella `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `types`
--

INSERT INTO `types` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Demo', 'demo', '2023-04-28 09:06:16', '2023-04-28 09:06:16'),
(2, 'FrontEnd', 'frontend', '2023-04-28 09:06:16', '2023-04-28 09:06:16'),
(3, 'BackEnd', 'backend', '2023-04-28 09:06:16', '2023-04-28 09:06:16'),
(4, 'FullStacked', 'fullstacked', '2023-04-28 09:06:16', '2023-04-28 09:06:16'),
(5, 'Programming', 'programming', '2023-04-28 09:06:16', '2023-04-28 09:06:16'),
(6, 'Boolean', 'boolean', '2023-04-28 09:06:16', '2023-04-28 09:06:16');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Cianuro-83', 'buzzeosimone@gmail.com', NULL, '$2y$10$MpNFCvNZ3vUQ8M/hvzAbCun3nV2YhvwEA4gpu8flOdMZIiFdh72Ee', NULL, '2023-04-28 09:06:17', '2023-04-28 09:06:17');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indici per le tabelle `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indici per le tabelle `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_title_unique` (`title`),
  ADD KEY `projects_type_id_foreign` (`type_id`);

--
-- Indici per le tabelle `project_technology`
--
ALTER TABLE `project_technology`
  ADD KEY `project_technology_project_id_foreign` (`project_id`),
  ADD KEY `project_technology_technology_id_foreign` (`technology_id`);

--
-- Indici per le tabelle `technologies`
--
ALTER TABLE `technologies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `technologies_name_unique` (`name`);

--
-- Indici per le tabelle `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_name_unique` (`name`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT per la tabella `technologies`
--
ALTER TABLE `technologies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `project_technology`
--
ALTER TABLE `project_technology`
  ADD CONSTRAINT `project_technology_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_technology_technology_id_foreign` FOREIGN KEY (`technology_id`) REFERENCES `technologies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
