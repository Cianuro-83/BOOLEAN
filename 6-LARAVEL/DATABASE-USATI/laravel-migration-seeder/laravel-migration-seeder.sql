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
-- Database: `laravel-migration-seeder`
--
CREATE DATABASE IF NOT EXISTS `laravel-migration-seeder` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `laravel-migration-seeder`;

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
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(20, '2023_04_12_140812_create_trains_table', 1);

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
-- Struttura della tabella `trains`
--

CREATE TABLE `trains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_from` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrive_to` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_time` datetime NOT NULL,
  `arrive_time` datetime NOT NULL,
  `train_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_carriage` tinyint(3) UNSIGNED NOT NULL,
  `delayed` tinyint(1) DEFAULT '0',
  `soppressed` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `trains`
--

INSERT INTO `trains` (`id`, `company`, `departure_from`, `arrive_to`, `departure_time`, `arrive_time`, `train_code`, `number_of_carriage`, `delayed`, `soppressed`, `created_at`, `updated_at`) VALUES
(1, 'nihil', 'Johnsland', 'Ahmedfurt', '2023-04-13 14:15:00', '2023-04-13 23:45:00', 'ky-5693-he', 46, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(2, 'ut', 'New Ramonview', 'Wolfborough', '2023-04-13 16:45:00', '2023-04-13 23:45:00', 'ai-1268-kb', 41, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(3, 'rerum', 'South Ernaview', 'North Sister', '2023-04-13 08:45:00', '2023-04-13 23:45:00', 'bm-2836-ru', 8, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(4, 'accusamus', 'East Jarrodbury', 'East Kenny', '2023-04-13 08:45:00', '2023-04-13 23:45:00', 'yw-0228-lp', 32, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(5, 'nulla', 'Lake Coleburgh', 'Lake Edison', '2023-04-13 16:45:00', '2023-04-13 18:45:00', 'qm-1498-zb', 10, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(6, 'odio', 'Port Nilsburgh', 'Lake Janettown', '2023-04-13 10:12:00', '2023-04-13 21:15:00', 'ck-4933-kv', 18, 1, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(7, 'sapiente', 'Carolynehaven', 'New Maudie', '2023-04-13 17:00:00', '2023-04-13 18:45:00', 'td-7173-ex', 37, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(8, 'perferendis', 'Emanuelmouth', 'New Louveniachester', '2023-04-13 16:45:00', '2023-04-14 17:00:00', 'vg-2379-sf', 39, 1, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(9, 'laboriosam', 'Port Liliana', 'West Lolita', '2023-04-13 16:45:00', '2023-04-13 23:45:00', 'in-8350-dg', 20, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(10, 'aut', 'Rodolfoborough', 'East Johnson', '2023-04-13 16:45:00', '2023-04-13 20:12:00', 'vd-6927-mu', 19, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(11, 'enim', 'North Parisfort', 'Ilenechester', '2023-04-13 16:45:00', '2023-04-13 20:12:00', 'po-5500-cy', 11, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(12, 'a', 'Kassulkeview', 'Hudsonview', '2023-04-13 10:12:00', '2023-04-13 20:12:00', 'yv-6988-nd', 17, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(13, 'consequatur', 'North Heath', 'Heaneyton', '2023-04-13 17:00:00', '2023-04-13 23:45:00', 'je-3435-os', 46, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(14, 'ea', 'New Pansy', 'Port Brandiport', '2023-04-13 08:45:00', '2023-04-13 18:45:00', 'vp-7676-oj', 32, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(15, 'nesciunt', 'Lake Felicityborough', 'Patiencehaven', '2023-04-13 16:45:00', '2023-04-14 17:00:00', 'en-3151-oj', 21, 1, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(16, 'aut', 'New Otismouth', 'Carolannestad', '2023-04-13 08:45:00', '2023-04-13 23:45:00', 'at-0127-iu', 21, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(17, 'similique', 'Mikelfurt', 'Deonteside', '2023-04-13 10:12:00', '2023-04-13 18:45:00', 'ht-2905-fw', 11, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(18, 'quasi', 'Rethabury', 'Port Elena', '2023-04-13 16:45:00', '2023-04-14 17:00:00', 'we-5731-ts', 12, 1, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(19, 'sed', 'Gorczanyfort', 'Hillstown', '2023-04-13 17:00:00', '2023-04-13 18:45:00', 'ye-0644-to', 27, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(20, 'nam', 'New Elton', 'Lake Kaceyshire', '2023-04-13 14:15:00', '2023-04-13 23:45:00', 'ba-6139-ek', 13, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(21, 'necessitatibus', 'Lynchport', 'South Luciusberg', '2023-04-13 08:45:00', '2023-04-14 17:00:00', 'xv-8384-ng', 22, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(22, 'quas', 'Rolfsonbury', 'West Tatyana', '2023-04-13 16:45:00', '2023-04-13 21:15:00', 'dn-2034-mu', 8, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(23, 'dolore', 'Croninbury', 'West Drewtown', '2023-04-13 16:45:00', '2023-04-13 23:45:00', 'nv-6466-qm', 9, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(24, 'sit', 'Port Bailey', 'Nataliafurt', '2023-04-13 08:45:00', '2023-04-13 23:45:00', 'ep-8173-gi', 10, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(25, 'nostrum', 'Robertsborough', 'Yundtchester', '2023-04-13 16:45:00', '2023-04-13 18:45:00', 'mt-6383-fm', 46, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(26, 'at', 'Edmondborough', 'New Arthurfurt', '2023-04-13 08:45:00', '2023-04-13 20:12:00', 'nh-3760-pu', 45, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(27, 'blanditiis', 'Port Ella', 'Port Terrell', '2023-04-13 16:45:00', '2023-04-14 17:00:00', 'uh-9334-gb', 51, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(28, 'et', 'Mertzborough', 'Zoraview', '2023-04-13 08:45:00', '2023-04-14 17:00:00', 'vk-5030-ez', 48, 1, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(29, 'vitae', 'West Samtown', 'New Casper', '2023-04-13 14:15:00', '2023-04-13 18:45:00', 'os-7461-vx', 22, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(30, 'numquam', 'East Noemie', 'Oberbrunnerburgh', '2023-04-13 16:45:00', '2023-04-13 21:15:00', 'mq-4080-nq', 18, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(31, 'enim', 'East Abel', 'Collinsstad', '2023-04-13 17:00:00', '2023-04-14 17:00:00', 'wg-2660-fl', 47, 1, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(32, 'dolor', 'Lake Randi', 'Susiefurt', '2023-04-13 17:00:00', '2023-04-14 17:00:00', 'rs-0163-mj', 20, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(33, 'ut', 'South Brigitte', 'Kallieberg', '2023-04-13 17:00:00', '2023-04-13 23:45:00', 'vs-4579-rn', 1, 1, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(34, 'dolor', 'Wunschborough', 'Eugeniaport', '2023-04-13 16:45:00', '2023-04-13 23:45:00', 'vm-0903-cp', 5, 1, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(35, 'earum', 'Mistyland', 'East Garettburgh', '2023-04-13 17:00:00', '2023-04-13 23:45:00', 'xq-4793-rq', 44, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(36, 'eveniet', 'North Elliottside', 'Garrisonbury', '2023-04-13 08:45:00', '2023-04-13 20:12:00', 'fh-7186-sq', 29, 1, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(37, 'sit', 'East Nigel', 'Jaskolskiberg', '2023-04-13 14:15:00', '2023-04-14 17:00:00', 'og-2464-wa', 40, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(38, 'itaque', 'Keelingville', 'South Danfurt', '2023-04-13 14:15:00', '2023-04-13 20:12:00', 'eo-8486-vf', 48, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(39, 'quam', 'North Albert', 'North Hymanstad', '2023-04-13 14:15:00', '2023-04-13 18:45:00', 'qn-7488-qj', 17, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(40, 'et', 'Gayland', 'East Kattieshire', '2023-04-13 17:00:00', '2023-04-13 23:45:00', 'dm-1258-nn', 34, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(41, 'eum', 'Port Westley', 'Lake Cara', '2023-04-13 14:15:00', '2023-04-13 21:15:00', 'cl-2195-gz', 17, 1, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(42, 'ut', 'Tremaynehaven', 'Port Sebastian', '2023-04-13 17:00:00', '2023-04-14 17:00:00', 'wd-5104-rq', 19, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(43, 'laborum', 'Cheyannefurt', 'New Andrewhaven', '2023-04-13 10:12:00', '2023-04-13 21:15:00', 'lq-7654-qs', 43, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(44, 'dignissimos', 'Schroederside', 'Lubowitzfurt', '2023-04-13 10:12:00', '2023-04-13 21:15:00', 'ej-2945-jp', 26, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(45, 'necessitatibus', 'Lefflerfort', 'South Jamarfurt', '2023-04-13 10:12:00', '2023-04-14 17:00:00', 'bb-3588-vj', 51, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(46, 'harum', 'Stefantown', 'Port Abdullahfort', '2023-04-13 08:45:00', '2023-04-13 21:15:00', 'oh-7109-bl', 37, 1, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(47, 'non', 'West Hosea', 'Port Rafaela', '2023-04-13 10:12:00', '2023-04-13 18:45:00', 'oi-7152-pi', 24, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(48, 'repudiandae', 'Port Jamelburgh', 'Jacinthechester', '2023-04-13 14:15:00', '2023-04-13 21:15:00', 'ph-2909-cu', 26, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(49, 'omnis', 'Sibylshire', 'Palmachester', '2023-04-13 17:00:00', '2023-04-13 20:12:00', 'nq-8725-fi', 30, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(50, 'accusantium', 'West Allisonview', 'East Briceborough', '2023-04-13 16:45:00', '2023-04-13 21:15:00', 'av-4737-qk', 21, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(51, 'voluptatem', 'Modestaside', 'South Larueberg', '2023-04-13 16:45:00', '2023-04-13 20:12:00', 'ir-7920-to', 23, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(52, 'consequatur', 'McCulloughport', 'Kemmerview', '2023-04-13 16:45:00', '2023-04-13 21:15:00', 'kz-7123-xc', 30, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(53, 'necessitatibus', 'Connfurt', 'Watsicaside', '2023-04-13 08:45:00', '2023-04-13 20:12:00', 'ss-5184-gw', 31, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(54, 'assumenda', 'Hermistonhaven', 'Lake Jameymouth', '2023-04-13 08:45:00', '2023-04-13 20:12:00', 'ra-5638-wd', 30, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(55, 'sed', 'New Keatonchester', 'South Llewellynfurt', '2023-04-13 17:00:00', '2023-04-13 23:45:00', 'mg-6839-kr', 26, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(56, 'corrupti', 'Shaniemouth', 'Ryanton', '2023-04-13 08:45:00', '2023-04-13 23:45:00', 'km-6514-qq', 33, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(57, 'cumque', 'Marquardtport', 'Karliburgh', '2023-04-13 08:45:00', '2023-04-13 21:15:00', 'nl-8590-ny', 43, 1, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(58, 'excepturi', 'New Cecile', 'New Janyside', '2023-04-13 08:45:00', '2023-04-13 18:45:00', 'qk-9501-wh', 39, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(59, 'autem', 'Ferminfort', 'Steuberstad', '2023-04-13 17:00:00', '2023-04-14 17:00:00', 'ib-2884-gn', 29, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(60, 'sequi', 'Dietrichberg', 'Rubymouth', '2023-04-13 14:15:00', '2023-04-13 21:15:00', 'sm-2350-ia', 46, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(61, 'dolorem', 'South Carolanneland', 'Dagmarberg', '2023-04-13 08:45:00', '2023-04-14 17:00:00', 'jt-9807-vw', 41, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(62, 'excepturi', 'West Lucyview', 'Jastborough', '2023-04-13 08:45:00', '2023-04-13 21:15:00', 'no-7117-wc', 40, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(63, 'et', 'Trentville', 'New Filiberto', '2023-04-13 17:00:00', '2023-04-14 17:00:00', 'mt-6217-mr', 47, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(64, 'nulla', 'East Conrad', 'Krisberg', '2023-04-13 17:00:00', '2023-04-13 18:45:00', 'oi-8063-xq', 14, 1, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(65, 'maiores', 'New Lesliefort', 'Port Albert', '2023-04-13 17:00:00', '2023-04-13 18:45:00', 'zw-4366-bx', 41, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(66, 'quia', 'South Brett', 'Port Therese', '2023-04-13 16:45:00', '2023-04-13 18:45:00', 'fx-3253-ce', 11, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(67, 'dolore', 'Port Dorothy', 'North Alejandra', '2023-04-13 10:12:00', '2023-04-13 18:45:00', 'jn-0260-kw', 3, 1, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(68, 'et', 'Heidenreichton', 'North Billieview', '2023-04-13 08:45:00', '2023-04-13 18:45:00', 'vi-6102-ia', 7, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(69, 'dignissimos', 'Marcellatown', 'East Reneborough', '2023-04-13 16:45:00', '2023-04-13 23:45:00', 'eu-0874-tl', 31, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(70, 'aliquid', 'Lake Ned', 'East Madysonhaven', '2023-04-13 08:45:00', '2023-04-14 17:00:00', 'kr-9129-lc', 15, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(71, 'quia', 'North Prudence', 'West Carson', '2023-04-13 10:12:00', '2023-04-13 21:15:00', 'lc-4497-jp', 10, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(72, 'sunt', 'Bennyport', 'Ryleighmouth', '2023-04-13 16:45:00', '2023-04-13 18:45:00', 'kf-2751-fc', 47, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(73, 'perferendis', 'Gladyceville', 'South Alden', '2023-04-13 16:45:00', '2023-04-13 21:15:00', 'ej-3286-dz', 45, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(74, 'temporibus', 'New Scottystad', 'East Cheyenneview', '2023-04-13 10:12:00', '2023-04-13 23:45:00', 'pu-1641-lz', 9, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(75, 'id', 'Port Deion', 'Dorisshire', '2023-04-13 17:00:00', '2023-04-13 20:12:00', 'go-4405-co', 18, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(76, 'quas', 'Ethaview', 'Lake Marlin', '2023-04-13 10:12:00', '2023-04-14 17:00:00', 'nx-5411-dv', 20, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(77, 'mollitia', 'Ameliamouth', 'Titotown', '2023-04-13 14:15:00', '2023-04-14 17:00:00', 'uz-0838-jp', 26, 1, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(78, 'dignissimos', 'Lefflerberg', 'Ferrymouth', '2023-04-13 14:15:00', '2023-04-13 23:45:00', 'mj-0553-lj', 8, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(79, 'cum', 'North Alizeburgh', 'West Orieland', '2023-04-13 10:12:00', '2023-04-13 21:15:00', 'px-6417-sk', 28, 1, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(80, 'quia', 'North Kyler', 'Lake Alessandraview', '2023-04-13 17:00:00', '2023-04-13 20:12:00', 'tc-2200-ma', 24, 1, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(81, 'in', 'Runolfssonton', 'Alysonside', '2023-04-13 16:45:00', '2023-04-14 17:00:00', 'sm-8300-cj', 11, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(82, 'quas', 'East Mattie', 'South Wendyside', '2023-04-13 08:45:00', '2023-04-13 23:45:00', 'ox-6708-la', 32, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(83, 'magni', 'Laneybury', 'South Domenicoview', '2023-04-13 14:15:00', '2023-04-13 23:45:00', 'no-0846-ax', 19, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(84, 'minus', 'Rettaview', 'West Filiberto', '2023-04-13 16:45:00', '2023-04-13 18:45:00', 'rl-5643-an', 50, 1, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(85, 'ad', 'Jazlynview', 'West Florence', '2023-04-13 14:15:00', '2023-04-13 21:15:00', 'gc-3871-al', 24, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(86, 'et', 'Lake Ally', 'Creminbury', '2023-04-13 14:15:00', '2023-04-13 21:15:00', 'qj-2904-vl', 12, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(87, 'aut', 'Kuhlmanfort', 'New Raheem', '2023-04-13 17:00:00', '2023-04-13 21:15:00', 'ls-8397-sh', 2, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(88, 'molestiae', 'Quigleystad', 'Madalinefurt', '2023-04-13 16:45:00', '2023-04-14 17:00:00', 'ap-2044-vx', 35, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(89, 'deserunt', 'Port Theresiaton', 'Batzport', '2023-04-13 14:15:00', '2023-04-13 23:45:00', 'zk-8017-ln', 46, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(90, 'ipsa', 'Lake Wilfordshire', 'Bartellstad', '2023-04-13 16:45:00', '2023-04-14 17:00:00', 'kp-0887-tj', 42, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(91, 'sint', 'Port Vedafort', 'Jaydenfurt', '2023-04-13 10:12:00', '2023-04-13 21:15:00', 'br-4907-tm', 31, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(92, 'est', 'West Davonte', 'Lake Andersonburgh', '2023-04-13 17:00:00', '2023-04-13 21:15:00', 'fs-9795-wa', 49, 1, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(93, 'qui', 'Kreigerside', 'North Katelyn', '2023-04-13 08:45:00', '2023-04-13 21:15:00', 'nb-5597-kw', 26, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(94, 'iure', 'North Marvinville', 'Rosettabury', '2023-04-13 10:12:00', '2023-04-13 21:15:00', 'ed-9468-aq', 13, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(95, 'iusto', 'North Herminioville', 'Hauckside', '2023-04-13 16:45:00', '2023-04-13 20:12:00', 'nj-9970-ca', 29, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(96, 'eveniet', 'South Lilianebury', 'New Wendy', '2023-04-13 10:12:00', '2023-04-13 23:45:00', 'xn-1524-rx', 16, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(97, 'nam', 'Roweview', 'East Vallie', '2023-04-13 17:00:00', '2023-04-14 17:00:00', 'wb-7479-se', 29, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(98, 'hic', 'Lake Jaydamouth', 'New Zola', '2023-04-13 16:45:00', '2023-04-13 21:15:00', 'ee-1839-qq', 33, 1, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(99, 'eveniet', 'North Addisonmouth', 'East Aimee', '2023-04-13 10:12:00', '2023-04-13 18:45:00', 'qc-7635-ro', 3, 0, 1, '2023-04-13 13:52:27', '2023-04-13 13:52:27'),
(100, 'sapiente', 'East Milford', 'Krystelbury', '2023-04-13 14:15:00', '2023-04-13 20:12:00', 'aj-9537-yr', 15, 0, 0, '2023-04-13 13:52:27', '2023-04-13 13:52:27');

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
-- Indici per le tabelle `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `trains`
--
ALTER TABLE `trains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
