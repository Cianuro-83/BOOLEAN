-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Nov 23, 2023 alle 12:50
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
-- Database: `laravel-one-to-many`
--
CREATE DATABASE IF NOT EXISTS `laravel-one-to-many` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `laravel-one-to-many`;

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
(7, '2023_04_26_143605_add_type_id_to_projects_table', 1);

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
(1, NULL, 'Cupiditate aut dolorum.', 'Clara Gorczany', NULL, 'http://www.herman.com/expedita-voluptas-nihil-error-culpa-et', 'cupiditate-aut-dolorum', NULL, '2023-04-27 08:45:14', '2023-04-27 08:45:14'),
(2, NULL, 'Vel et doloremque odit.', 'Georgiana Boehm', NULL, 'http://ernser.info/et-placeat-cum-est-eum-est-ea.html', 'vel-et-doloremque-odit', NULL, '2023-04-27 08:45:14', '2023-04-27 08:45:14'),
(3, 4, 'Quo ut autem rerum et.', 'Troy Stamm', 'Rerum labore eos ratione sunt sed. Eum et velit neque non nihil dolorum blanditiis. Nihil officia quidem odio et minus laboriosam. Minus et aut nesciunt velit ea sit. Distinctio reprehenderit aut vitae eius. Quam quisquam dolor aliquid totam. Expedita provident est et ut qui. Accusantium est et omnis blanditiis quis aperiam vero suscipit. Iste voluptas consequuntur minima. Maxime nobis molestiae magnam aut. Nihil ipsam modi natus. Qui in itaque eaque. Assumenda et aut ipsum quia. Placeat dolore officiis aut quis. Architecto ut aut neque pariatur quisquam aut. Vitae dolorem sint reprehenderit aut provident tempore assumenda. Vero asperiores explicabo libero similique est. Quam vel et sunt non ut dolorem earum. Et dolorum aut nam dolorem sit reiciendis. Voluptatibus quae occaecati quia porro accusamus doloribus qui. Dicta maxime cumque corrupti. Pariatur rerum veniam ratione at quis. Laborum inventore tenetur eum alias doloremque. Sit officiis omnis cum dolor et enim dolorum. Nesciunt nesciunt vel ut aut inventore. Rem sint modi laborum libero in voluptas neque. Quod est enim ad ipsam. Sed tempora nobis reiciendis dolor. Placeat dolor eum ex rerum. Et quasi itaque adipisci porro necessitatibus nulla porro non. Et corrupti velit vitae eos. Minima magnam rerum id sint beatae. Dolores omnis pariatur sit explicabo ullam quibusdam. Enim nobis voluptatem delectus dolorum. Quo et porro pariatur dolor aut unde. Non cupiditate accusantium provident sit voluptatem. Nisi id pariatur sapiente. Eum qui sit atque aperiam quidem. Minus molestiae suscipit accusamus deserunt omnis dolorem nihil voluptatem. Laborum et minima a expedita repudiandae animi. Ut fugit nisi laudantium saepe natus ut. Dolores pariatur sed tempora iusto nisi ea fugiat dicta. Nobis veniam officia sed officia. Architecto dicta veniam accusantium et quia adipisci. Consequuntur dicta alias porro. Ut quia est natus eos. Rerum nobis labore laudantium et dolor veritatis culpa et. Inventore aspernatur ullam temporibus animi. Consectetur dolores consequatur ullam expedita voluptatum. Voluptatem praesentium sed ipsa harum. Quisquam eos eos deleniti est. Quia quisquam commodi corrupti laudantium nostrum qui. Et sed saepe suscipit nulla. Et repellat dolor consequuntur culpa et deserunt aut. Et et rerum sit laboriosam tempora cupiditate magni. Minima voluptatem amet incidunt. Minus rerum aut nam nobis pariatur assumenda minus.', 'http://www.walsh.com/et-nihil-quia-minus-eius-autem-voluptas-illo-quia.html', 'quo-ut-autem-rerum-et', NULL, '2023-04-27 08:45:14', '2023-04-27 08:45:14'),
(4, NULL, 'Ut nostrum nam.', 'Onie Huel III', 'Amet impedit rerum quasi dolor distinctio. Illum porro dolor voluptatibus quisquam. Molestias vitae sit ea blanditiis animi est labore. Et praesentium possimus aut. Alias rem molestiae fugiat modi repellat. Illum enim quas est hic possimus sit aliquid. Eum qui sed beatae ea. Adipisci quo officia corrupti voluptate recusandae possimus. Vitae distinctio non vitae. Nulla ratione temporibus pariatur. Ex facilis officia voluptatem enim aut ex quibusdam. Vitae ut nihil rerum officiis molestiae. Adipisci neque ut non officia rerum veniam quia nemo. Sapiente suscipit et quia et. Dicta accusamus repellat quibusdam deleniti tempora. Velit labore qui id sapiente autem velit quos et. Et omnis et eos. Veniam quo consequatur tenetur repellendus aspernatur. Omnis laboriosam sed repellat architecto quos perferendis. Voluptatum velit qui quam et ut perspiciatis. Non doloribus neque voluptatem rerum. Quasi atque ea facilis non repellat odio. Eius est laboriosam iusto atque repellat nihil consequatur. Ullam unde inventore quibusdam a et error aut iste. Cumque quia nesciunt quo. Omnis alias est voluptas dolorum. Maxime et est nihil voluptatibus adipisci corporis labore. Hic et minima nam enim et qui sit sequi. In tempora natus nisi ducimus asperiores. Ut enim laborum quae aperiam. Magnam quos porro voluptatibus id deserunt unde voluptatem. Et nobis voluptas neque aliquid. Eum blanditiis corporis laborum dignissimos. Iste ex vitae pariatur rerum cum libero. Ex sed minus molestias numquam quod amet. Et illo quaerat aperiam quo perferendis est. Quia sed similique harum. Dolorem amet ullam corrupti ea iste voluptas odio. Dolorum voluptatem in cupiditate quis. Sunt rerum temporibus nam amet. Voluptatem voluptate placeat enim totam repellendus. Quidem sunt quam sunt ut a possimus. Nulla pariatur iste sunt et suscipit sapiente accusamus optio. Molestiae itaque odio praesentium voluptatum facere impedit enim. Velit tempora quo nemo quos et occaecati animi. Qui rerum in est nemo consequuntur eum expedita est. Aut et consequatur sequi ratione minus praesentium. Et explicabo commodi in qui. Consequatur sit saepe rerum tempora velit qui hic. Et quaerat non nihil. Exercitationem quia nihil quia mollitia. Voluptas molestiae aut aut molestiae occaecati. Illum similique repellat distinctio non inventore laborum consectetur. Est nihil deserunt aut quis distinctio molestias laborum itaque. Et tempora adipisci ut quia non ut. Velit aut non est est eaque et aut.', 'http://www.jast.com/', 'ut-nostrum-nam', NULL, '2023-04-27 08:45:14', '2023-04-27 08:45:14'),
(5, NULL, 'Itaque quae blanditiis quo.', 'Prof. Hester Kihn', 'In corrupti consequatur ea rerum mollitia. Facilis quis hic omnis qui labore voluptatem id. Quos nisi aliquam sequi modi nihil explicabo. Consequatur ut dolor quis perferendis tempore. Necessitatibus in eum fugiat itaque accusamus est. Tempore mollitia qui occaecati ut aspernatur. Quas beatae sint corporis nemo odit at. Officiis qui perspiciatis repellat exercitationem. Ut in officiis et ut et. Vitae qui quis porro dolores est. Consequatur aut adipisci blanditiis a velit quia autem debitis. Placeat fugiat porro omnis sequi consequatur quasi. Corrupti dolores distinctio odit vitae sint. Vel natus enim saepe ducimus enim. Et voluptas accusantium rerum incidunt molestiae dolorem. Ut iste commodi qui eaque rerum. Et repellendus animi sit enim in dolore dolores. Voluptatem et sed autem fugit ut sunt perferendis nulla. Id neque quos veritatis voluptas eveniet quae. Eos voluptate facere omnis modi rerum suscipit. Et asperiores magni expedita doloremque. Eos fugit tempore ut enim dolorem excepturi et. Molestiae debitis qui deserunt perspiciatis iste velit aliquid dignissimos. Aut rem corrupti accusantium alias. Vel ut praesentium voluptatum at odio. Ea autem dolores voluptas provident quis corrupti. Ut et nostrum delectus id quo itaque. Dolor dolores soluta assumenda nesciunt qui. Minus quis nobis quibusdam consequatur perspiciatis culpa sed. Quam quas esse commodi quas nihil et praesentium dignissimos. Aut quam optio placeat aut. Illo ratione quaerat voluptatum ab quia. Odit dignissimos fugit quisquam ad aspernatur expedita occaecati. Expedita in eveniet minima inventore autem rem deserunt. Qui ipsam quidem ab nihil aspernatur ut ducimus autem. Aut id id praesentium suscipit. Sed fuga voluptates eos qui quo iste. Quas molestiae ipsa molestiae error qui. Aut magni enim omnis id qui iste. Neque nihil velit dolorum consequuntur velit et. Libero et sunt minima ea. Aut consequuntur veniam non rerum aspernatur libero labore. Dolorem cupiditate laboriosam in voluptatem. Similique non consequatur amet in. Sunt officiis et qui voluptates fugiat. Hic optio aspernatur debitis maiores autem. Et iste officiis ea quis. Impedit dolores fuga est eaque et. Ipsum sit dolorem maxime libero voluptatum eos sed voluptate. Rerum adipisci provident labore ut ab. Dolor et quia ea ducimus. Temporibus rerum voluptas dolores autem reprehenderit assumenda. Quia iusto consequatur quidem et.', 'http://www.becker.biz/eos-sequi-aut-possimus-quidem-et-dolor-accusantium.html', 'itaque-quae-blanditiis-quo', NULL, '2023-04-27 08:45:14', '2023-04-27 08:45:14'),
(6, NULL, 'Iste ut.', 'Liam Bailey', 'Aut aspernatur minus et inventore laboriosam. Iusto eveniet non sapiente sit velit officiis. Et dolores delectus aperiam repudiandae est. Dolores ratione fugit dolores perspiciatis est earum tempore. Voluptatem quia tenetur qui magni quo qui. Quia dolorem enim consequatur eius eveniet earum. Labore voluptas veniam eveniet illum sed earum. Qui voluptatum ratione necessitatibus. Magnam qui maxime nesciunt inventore quisquam earum ut aut. Expedita et nemo consequuntur sint facilis maxime qui. Molestiae vel rem laboriosam sit eius voluptatem. Aut distinctio facilis consequuntur. Sint maxime natus consectetur doloribus sunt perferendis. Blanditiis animi quas voluptas beatae. Officiis voluptatem rem nulla et possimus quia nobis. Velit quia rerum et consequuntur ducimus tempore. Quia natus quod dolores. Voluptas suscipit sit necessitatibus totam et veniam. Hic alias id aut voluptatem et. Dolor libero enim molestiae facilis veritatis ullam. Rem sit et laudantium recusandae voluptatibus quod atque. Id consequuntur natus voluptatem sed reprehenderit atque ut distinctio. Voluptas mollitia quaerat aspernatur perferendis saepe tempora placeat. Quae explicabo quis quos deleniti. Et unde laudantium aut et. Quisquam dolores repudiandae quia aspernatur sed. Eum omnis ut est sunt itaque similique suscipit. Debitis nostrum sapiente iure facilis quos suscipit. Occaecati laboriosam deleniti sint. Nisi suscipit debitis fugit. Vel numquam aut iure ut. Est exercitationem at et laudantium incidunt est. Aut nisi nostrum et architecto et blanditiis a velit. Ipsum optio qui repellendus officiis atque et. Est qui nulla nam commodi et accusantium ut. At porro nisi voluptatem maxime. Asperiores ut ut esse quasi. Voluptas est et hic et. Dolor est est iusto quae sit. Quidem corrupti aut voluptatum consequatur dolorem maiores. Impedit nesciunt rerum est possimus. Ratione autem et veniam non in. Similique animi expedita expedita iste maiores adipisci pariatur. Minus quae debitis nihil non qui modi. Dolorum delectus quod molestiae labore. Maxime cum ut aut vitae ipsum ipsam. Quo ea quidem aut assumenda dignissimos. Rerum nemo quod nihil odio aperiam et sed eum. Enim porro sapiente aliquam soluta impedit. Vel omnis qui quis ut quo consectetur. Qui quidem consequatur doloribus. Aspernatur velit aliquid sequi ipsa rerum voluptatem. Ipsam exercitationem doloremque et vel saepe est vel. Esse eveniet eos enim incidunt officiis voluptate. Eum porro nisi repellendus tempora vel consectetur omnis.', NULL, 'iste-ut', NULL, '2023-04-27 08:45:14', '2023-04-27 08:45:14'),
(7, 2, 'Dolores non omnis.', 'Kara Bednar', 'Velit adipisci dolorem necessitatibus qui possimus. Totam error voluptatem ut totam debitis. Numquam et veniam reprehenderit repudiandae rerum. Ut sed atque ea impedit sunt excepturi in. Molestiae repellendus in error voluptatibus vero ut. Enim voluptas dolores ex. Tenetur autem voluptate eos et placeat magni. Qui consequatur est earum sint qui. Qui sunt ab adipisci sit minus hic. Quo dignissimos voluptas aspernatur eius commodi. Dignissimos quam sit quisquam. Maxime quia molestiae quidem sed. Repellendus in aspernatur aut. Unde dolores labore eaque dolorem. Vitae in possimus libero blanditiis placeat ex. Veritatis earum impedit a aut. Provident nam blanditiis eaque. Ex quo voluptatem laboriosam consequatur. Qui quia distinctio dolor totam qui consequatur pariatur. Ab qui voluptas rerum sit modi harum velit. Voluptas et cum qui laborum quidem. Hic expedita ullam est officia quia. Exercitationem ab repellendus non quae beatae. Facilis pariatur dolores est molestiae occaecati aut. Sit voluptates dolor aut ullam ducimus sint. Vero sit ipsam natus amet nostrum modi aut. Facere libero et laborum facilis iste esse. Ea sit qui cumque dolore. Enim voluptatibus rerum adipisci sit eius et eligendi. Nobis blanditiis at in architecto. Ut rerum velit nesciunt expedita est alias non. Neque autem cumque delectus distinctio minus ea et. Ullam sed sed saepe. Et est eligendi et. Pariatur qui ut fugit repudiandae voluptate exercitationem sapiente. Aut nesciunt rerum mollitia a in iste sapiente. Modi nobis adipisci consequatur consequatur. In quibusdam id earum nam. Eum molestiae enim hic vitae ipsum perferendis. Quia modi aut cupiditate sunt a sit. Quod qui vel non totam. Sunt autem non dolores est. Quas harum iste esse ratione est ea. Voluptatem iusto quos occaecati consequatur sit et vero. Ipsam corporis veritatis ducimus unde dolorum odio. Quos quibusdam voluptas dolorem et nisi distinctio. Explicabo sapiente asperiores eum labore voluptatibus quis. Consectetur aspernatur quos nihil explicabo laboriosam nesciunt. Est perferendis omnis quo dignissimos sed consequatur voluptatibus. Quisquam laboriosam cum rerum quasi iusto odit. Quae quo quam est maxime. Rerum omnis iure beatae. Nisi amet repellat nobis rerum. Aut a velit et necessitatibus. Voluptatem quae qui porro sequi. Architecto fuga sed sed sunt excepturi. Fuga ipsum rerum qui earum dolorem.', NULL, 'dolores-non-omnis', NULL, '2023-04-27 08:45:14', '2023-04-27 08:45:14'),
(8, 3, 'Ipsa ut.', 'Sheridan Yost', NULL, 'http://www.hudson.com/', 'ipsa-ut', NULL, '2023-04-27 08:45:14', '2023-04-27 08:45:14'),
(9, 6, 'Voluptas asperiores reprehenderit.', 'Gardner Hill', NULL, NULL, 'voluptas-asperiores-reprehenderit', NULL, '2023-04-27 08:45:14', '2023-04-27 08:45:14'),
(10, 1, 'Inventore aut fugit.', 'Meggie Johns', NULL, NULL, 'inventore-aut-fugit', NULL, '2023-04-27 08:45:14', '2023-04-27 08:45:14');

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
(1, 'Demo', 'demo', '2023-04-27 08:45:14', '2023-04-27 08:45:14'),
(2, 'FrontEnd', 'frontend', '2023-04-27 08:45:14', '2023-04-27 08:45:14'),
(3, 'BackEnd', 'backend', '2023-04-27 08:45:14', '2023-04-27 08:45:14'),
(4, 'FullStacked', 'fullstacked', '2023-04-27 08:45:14', '2023-04-27 08:45:14'),
(5, 'Programming', 'programming', '2023-04-27 08:45:14', '2023-04-27 08:45:14'),
(6, 'Boolean', 'boolean', '2023-04-27 08:45:14', '2023-04-27 08:45:14');

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
(1, 'Cianuro-83', 'buzzeosimone@gmail.com', NULL, '$2y$10$0lHLSasU1YM7voq9E4lJ2.n18Z5pjO.ZLcoOLesbERgJFoKkyPI4C', NULL, '2023-04-27 08:45:15', '2023-04-27 08:45:15');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT per la tabella `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  ADD CONSTRAINT `projects_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
