-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Nov 23, 2023 alle 12:51
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
-- Database: `odd-school`
--
CREATE DATABASE IF NOT EXISTS `odd-school` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `odd-school`;

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
-- Struttura della tabella `leads`
--

CREATE TABLE `leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ui_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ui_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ui_phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `messages`
--

INSERT INTO `messages` (`id`, `teacher_id`, `title`, `text`, `ui_name`, `ui_email`, `ui_phone`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 16, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Dr. Flossie White', 'felicity.volkman@rohan.net', '+12543469252', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(2, 4, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Leann Kub', 'peter.parisian@koch.com', '(862) 208-8107', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(3, 15, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Elaina Schaefer MD', 'swaniawski.maybell@haley.biz', '(364) 737-9109', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(4, 9, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Elliot Hoeger', 'zoila.jerde@gmail.com', '+19474763999', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(5, 9, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Hailie Schoen', 'lorine58@gmail.com', '(380) 771-5740', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(6, 10, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Mrs. Margret McKenzie', 'henriette.conn@gmail.com', '+1-458-999-8468', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(7, 10, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Deron Stamm', 'qkulas@hotmail.com', '1-786-235-4412', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(8, 2, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Coralie Mann', 'hkris@hotmail.com', '+1 (203) 277-3606', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(9, 11, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Prince Ledner', 'alison42@hotmail.com', '+14702586999', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(10, 15, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Ms. Ava Von', 'bert64@yost.info', '(475) 819-1348', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(11, 14, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Domenick Heaney', 'stacey75@parisian.info', '828-635-0380', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(12, 11, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Mr. Jabari Kulas V', 'williamson.emiliano@gmail.com', '201-379-9102', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(13, 13, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Madisyn Moore', 'hirthe.araceli@kuphal.org', '+1 (806) 793-9309', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(14, 8, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Prof. Diamond Wunsch', 'lkrajcik@gmail.com', '(678) 638-4861', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(15, 16, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Dortha Hermann', 'willms.elizabeth@morissette.org', '1-303-685-6667', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(16, 3, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Holly Champlin', 'wstoltenberg@hotmail.com', '+1-747-916-7705', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(17, 4, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Deron Ziemann', 'theodora.funk@hotmail.com', '+1 (762) 995-1242', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(18, 10, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Mr. Ethel Keebler', 'spencer.london@hand.com', '+1.814.673.6366', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(19, 1, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Rahul Mills', 'kristy05@hotmail.com', '+1.630.754.4993', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(20, 2, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Mauricio Lockman', 'littel.tara@hotmail.com', '(318) 596-0577', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(21, 7, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Marian Barton', 'qkuhic@gmail.com', '(838) 297-6223', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(22, 12, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Miss Wendy Stamm', 'herzog.lea@yahoo.com', '380.604.6365', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(23, 5, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Prof. Asia Barrows', 'nikolaus.lester@kohler.org', '1-424-800-0921', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(24, 4, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Lazaro Stracke', 'lester40@considine.com', '+1-631-952-4946', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(25, 12, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Zackary Sanford IV', 'wilkinson.amari@gmail.com', '+16619793981', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(26, 6, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Mr. Isidro Brakus', 'mmorissette@ward.com', '+1.331.993.1767', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(27, 13, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Dr. Nella Spinka Jr.', 'breanne.botsford@grady.com', '+1.857.405.9794', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(28, 2, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Cielo Schmeler', 'auer.isabell@yahoo.com', '(986) 760-2332', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(29, 7, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Yessenia Greenfelder', 'emmerich.haylee@cassin.com', '+1 (279) 931-6757', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(30, 1, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Mrs. Joana Bayer', 'gerardo.bins@keebler.com', '1-234-743-9987', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(31, 3, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Grace Auer', 'nasir36@schaden.net', '+12318523495', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(32, 11, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Mohammad Cronin DVM', 'martine.schuster@yahoo.com', '(641) 696-5477', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(33, 15, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Norbert Christiansen', 'viva69@mosciski.net', '+1-754-610-3150', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(34, 14, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Verdie Hamill', 'prince.mcclure@gmail.com', '+15345569400', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(35, 13, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Trevion Effertz III', 'simonis.halie@rogahn.biz', '+1 (585) 684-7001', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(36, 15, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Liam VonRueden', 'lang.deborah@hotmail.com', '+1-949-201-3676', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(37, 10, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Macie Wisoky', 'hmarks@mayert.com', '(520) 948-8234', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(38, 10, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Gabriella Macejkovic', 'iryan@romaguera.com', '+1-240-208-9346', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(39, 15, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Dr. General Hodkiewicz', 'vickie.glover@williamson.info', '914-614-4403', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(40, 6, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Cali Schoen', 'ronaldo.schaden@breitenberg.biz', '+1.640.786.2080', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(41, 7, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Miss Fiona Kunde', 'dromaguera@donnelly.org', '+1 (765) 972-8109', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(42, 11, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Reid Ledner', 'williamson.hassan@oberbrunner.com', '301.937.5570', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(43, 4, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Mr. Frank Farrell', 'violette.cummings@gmail.com', '346-338-1147', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(44, 14, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Izabella Bayer', 'kautzer.alfreda@hotmail.com', '+19546126668', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(45, 4, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Dr. Savanna Tillman I', 'issac21@gmail.com', '936-764-9518', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(46, 1, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Rylee Von', 'garfield.fadel@hotmail.com', '(740) 528-3346', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(47, 5, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Mr. Carleton Adams Sr.', 'ashley.douglas@stehr.com', '1-561-385-5401', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(48, 15, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Celia Welch', 'lauryn.paucek@yahoo.com', '325-330-3516', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(49, 4, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Luther Buckridge', 'fmitchell@yahoo.com', '+1-934-793-7143', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(50, 8, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Eloisa Nicolas', 'newton.balistreri@buckridge.info', '1-727-738-8406', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(51, 15, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Prof. Sheldon Bosco MD', 'skylar34@gmail.com', '520.349.2698', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(52, 14, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Willard Crooks DDS', 'helga55@romaguera.biz', '+1-651-678-5452', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(53, 11, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Daryl Effertz', 'feest.mitchell@hodkiewicz.com', '(906) 355-2338', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(54, 14, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Dr. Brennon Mante', 'marques58@hotmail.com', '(341) 252-3871', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(55, 7, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Leanne Okuneva', 'jena.hirthe@gmail.com', '+1-863-471-3175', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(56, 13, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Miss Marcia Fritsch V', 'hahn.shany@hotmail.com', '(938) 876-8134', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(57, 3, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Loyal Hills', 'royce73@hotmail.com', '1-270-504-2320', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(58, 14, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Cesar Schinner', 'daniel.monserrate@weimann.com', '1-302-681-6712', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(59, 1, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Prof. Camille Goodwin DDS', 'cwintheiser@mraz.com', '631-764-9648', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(60, 15, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Randy Yost', 'oromaguera@gmail.com', '+1-908-833-2602', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(61, 5, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Dora Koelpin', 'audra.flatley@smitham.com', '1-781-494-8708', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(62, 3, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Dr. Sallie Stamm IV', 'zhahn@gmail.com', '(347) 837-4022', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(63, 4, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Demetris Johnson', 'mccullough.wilbert@vandervort.com', '253-720-4398', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(64, 8, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Darby Kub', 'blaise.mclaughlin@gmail.com', '(283) 598-5986', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(65, 15, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Cletus Heathcote', 'dconn@brekke.org', '(772) 878-1003', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(66, 13, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Granville Runte', 'myrtice.stamm@gmail.com', '1-337-453-0380', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(67, 4, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Hildegard Harris', 'doyle41@greenfelder.com', '1-352-252-3732', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(68, 8, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Dax Yundt DDS', 'damore.fannie@gmail.com', '559-758-7876', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(69, 4, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Kenny Harber', 'natalia.okeefe@baumbach.com', '+1 (731) 418-2636', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(70, 6, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Dr. Diego Raynor', 'adolphus.bernier@stamm.info', '1-847-362-5157', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(71, 7, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Clyde Hayes', 'erich.bode@gmail.com', '+1-351-521-7587', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(72, 13, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Frederick Gislason', 'holly.abernathy@yahoo.com', '(743) 774-9911', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(73, 8, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Demarcus Treutel', 'allison84@yahoo.com', '854-550-2519', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(74, 16, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Johathan Brekke', 'fbuckridge@mckenzie.net', '563-767-3397', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(75, 3, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Mrs. Giovanna Kovacek III', 'mjenkins@reinger.com', '803.617.2444', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(76, 16, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Elody Ankunding', 'kayleigh15@yahoo.com', '1-440-674-7960', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(77, 15, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Prof. Kelli Sanford', 'lura.raynor@turcotte.com', '(254) 706-5692', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(78, 1, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Lessie Heidenreich', 'reichert.misael@yahoo.com', '1-580-461-7184', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(79, 4, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Miss Ana Rohan', 'mitchell.mariane@ratke.com', '+1 (281) 663-6008', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(80, 8, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Mr. Clement Weber', 'belle.block@hotmail.com', '1-203-676-4004', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(81, 8, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Lila Schoen', 'ola.kertzmann@yahoo.com', '(585) 310-6060', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(82, 5, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Miss Mariane Mayert Jr.', 'dhuels@gmail.com', '(469) 921-2947', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(83, 13, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Lauretta Reichel', 'tledner@greenfelder.biz', '979.834.3718', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(84, 14, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Mr. Vernon Schuppe', 'buck61@schuppe.com', '1-601-465-8757', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25');
INSERT INTO `messages` (`id`, `teacher_id`, `title`, `text`, `ui_name`, `ui_email`, `ui_phone`, `deleted_at`, `created_at`, `updated_at`) VALUES
(85, 10, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Noble Kovacek', 'sienna20@hotmail.com', '940-398-5882', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(86, 16, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Jacinthe Smith', 'fermin.weissnat@yahoo.com', '+1-361-772-6360', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(87, 7, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Preston Waters', 'hills.gianni@schinner.info', '737-401-1815', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(88, 12, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Marcelo Bradtke', 'sean52@yahoo.com', '1-276-734-0417', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(89, 8, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Miss Antoinette Lubowitz', 'elian07@fritsch.biz', '(248) 437-3794', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(90, 9, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Emil Conn', 'qeffertz@monahan.com', '1-203-425-1592', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(91, 5, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Jessika Ledner', 'bernadine.carter@yahoo.com', '1-463-825-4320', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(92, 10, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Deangelo Strosin I', 'olson.angel@ruecker.com', '1-725-535-1287', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(93, 1, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Dorian Williamson', 'stuart26@mclaughlin.org', '(341) 924-6697', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(94, 6, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Miss Lura Will', 'joconnell@cruickshank.info', '+18304623979', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(95, 7, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Emmett Kautzer', 'rosalia03@hodkiewicz.com', '(781) 275-6415', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(96, 7, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Prof. Dee Lynch PhD', 'agleichner@stiedemann.info', '+17695660828', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(97, 6, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Mrs. Brisa Bogisich Sr.', 'rempel.kaden@hotmail.com', '1-480-991-4582', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(98, 6, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Prof. Eula Harvey Jr.', 'sylvan.batz@yahoo.com', '+1.989.916.9178', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(99, 7, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Ms. Britney Donnelly', 'chelsea48@kunze.com', '+1 (380) 985-5449', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(100, 14, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Mrs. Kayla Bode Sr.', 'noel.pollich@yahoo.com', '229.215.9692', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25');

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
(49, '2014_10_12_000000_create_users_table', 1),
(50, '2014_10_12_100000_create_password_resets_table', 1),
(51, '2019_08_19_000000_create_failed_jobs_table', 1),
(52, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(53, '2023_05_18_135413_create_teachers_table', 1),
(54, '2023_05_18_150255_create_specializations_table', 1),
(55, '2023_05_18_151234_create_sponsorships_table', 1),
(56, '2023_05_18_160312_create_votes_table', 1),
(57, '2023_05_18_162545_create_messages_table', 1),
(58, '2023_05_18_164313_create_reviews_table', 1),
(59, '2023_05_19_131617_create_specialization_teacher_table', 1),
(60, '2023_05_19_140028_create_sponsorship_teacher_table', 1),
(61, '2023_05_19_140756_create_teacher_vote_table', 1),
(62, '2023_05_19_144526_add_teacher_id_to_messages_table', 1),
(63, '2023_05_19_150253_add_teacher_id_to_reviews_table', 1),
(64, '2023_05_26_134513_create_leads_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `userReview` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `reviews`
--

INSERT INTO `reviews` (`id`, `teacher_id`, `userReview`, `review`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 'Heather', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(2, 10, 'Mose', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(3, 11, 'Missouri', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(4, 6, 'Arno', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(5, 5, 'Dawson', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(6, 10, 'Karina', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(7, 10, 'Johnnie', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(8, 15, 'Loyal', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(9, 16, 'Idella', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(10, 5, 'Hailee', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(11, 12, 'Grayce', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(12, 5, 'Trace', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(13, 4, 'Lera', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(14, 9, 'Shanel', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(15, 16, 'Graciela', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(16, 11, 'Chesley', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(17, 3, 'Maye', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(18, 10, 'Matilde', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(19, 14, 'Juvenal', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(20, 4, 'Opal', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(21, 15, 'Dangelo', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(22, 11, 'Presley', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(23, 4, 'Libby', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(24, 1, 'Kitty', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(25, 8, 'Alberta', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(26, 2, 'Cindy', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(27, 14, 'Claire', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(28, 7, 'Eddie', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(29, 15, 'Jacques', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(30, 2, 'Icie', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(31, 15, 'Litzy', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(32, 9, 'Rory', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(33, 15, 'Evalyn', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(34, 8, 'Reynold', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(35, 10, 'Magnolia', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(36, 16, 'Paul', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(37, 7, 'Sincere', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(38, 1, 'Madisyn', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(39, 9, 'Joey', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(40, 5, 'Webster', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(41, 9, 'Amber', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(42, 5, 'Fabiola', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(43, 15, 'Zack', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(44, 2, 'Elinor', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(45, 1, 'Tyson', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(46, 16, 'Hayden', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(47, 8, 'Deanna', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(48, 10, 'Adela', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(49, 3, 'Enola', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(50, 5, 'Eleanore', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(51, 10, 'Amya', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(52, 8, 'Bryana', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(53, 1, 'Jovany', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(54, 3, 'Bettie', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(55, 13, 'Maryam', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(56, 2, 'Coralie', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(57, 15, 'Ocie', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(58, 6, 'Greta', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(59, 4, 'Bradly', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(60, 2, 'Raina', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(61, 9, 'Shanny', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(62, 13, 'Tyrese', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(63, 2, 'Gretchen', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(64, 2, 'Issac', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(65, 8, 'Joanne', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(66, 9, 'Daren', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(67, 14, 'Johnathon', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(68, 10, 'Alysha', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(69, 15, 'Antone', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(70, 2, 'Dina', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(71, 2, 'Barry', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(72, 4, 'Hermina', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(73, 16, 'Clotilde', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(74, 1, 'Evie', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(75, 7, 'Salma', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(76, 15, 'Rodrick', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(77, 7, 'Harrison', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26');
INSERT INTO `reviews` (`id`, `teacher_id`, `userReview`, `review`, `deleted_at`, `created_at`, `updated_at`) VALUES
(78, 9, 'Cynthia', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(79, 7, 'Benny', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(80, 10, 'Meaghan', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(81, 12, 'Eve', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(82, 13, 'Quincy', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(83, 4, 'Cathryn', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(84, 8, 'Estell', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(85, 12, 'Dewayne', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(86, 4, 'Kim', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(87, 1, 'Annamae', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(88, 12, 'Ricardo', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(89, 3, 'Emmie', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(90, 6, 'Marvin', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(91, 7, 'Will', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(92, 9, 'Julius', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(93, 5, 'Lorena', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(94, 10, 'Kraig', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(95, 12, 'Yasmeen', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(96, 11, 'Macy', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(97, 8, 'Caitlyn', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(98, 2, 'Sylvan', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(99, 8, 'Velma', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26'),
(100, 15, 'Lorna', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2023-06-06 03:09:26', '2023-06-06 03:09:26');

-- --------------------------------------------------------

--
-- Struttura della tabella `specializations`
--

CREATE TABLE `specializations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `expertise` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `specializations`
--

INSERT INTO `specializations` (`id`, `name`, `images`, `description`, `expertise`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Maestro del benessere spirituale', '/Archivio/01.jpg', 'Il  Maestro  del  benessere  spirituale  è  un  professionista  che  si  occupa  di  guidare  e \n                supportare gli individui nel loro percorso di crescita interiore, equilibrio e benessere \n                spirituale.  Attraverso  l\'uso  di  tecniche  e  pratiche  come  la  meditazione,  la \n                visualizzazione,  la  guarigione  energetica  e  la  consapevolezza,  il  Maestro  del \n                benessere  spirituale  aiuta  le  persone  a  connettersi  con  il  proprio  sé  interiore,  a \n                scoprire  la  propria  saggezza  interiore  e  a  sviluppare  una  maggiore  consapevolezza \n                spirituale. Questa figura professionale fornisce un ambiente sicuro e di supporto per \n                l\'esplorazione  e  la  trasformazione  personale,  promuovendo  il  benessere  spirituale  e \n                l\'equilibrio nella vita quotidiana.', 'Maestro', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(2, 'Esperto di crescita finanziaria rapida', '/Archivio/02.jpeg', 'L\'Esperto  di  crescita finanziaria  rapida  è  un  professionista  specializzato \n                nell\'identificazione e nell\'attuazione di strategie finanziarie innovative per accelerare \n                la  crescita  economica.  Utilizzando  un  approccio  analitico  e  creativo,  collabora  con \n                individui,  imprese  e  organizzazioni  per  massimizzare  il  rendimento  degli \n                investimenti,  migliorare  l\'efficienza  operativa  e  sviluppare  opportunità  di  crescita  a \n                breve  termine.  Attraverso  l\'analisi  dei  dati finanziari,  lo  studio  dei  mercati  e \n                l\'applicazione di modelli di business innovativi, l\'esperto di crescita finanziaria rapida \n                è  in  grado  di  identificare  soluzioni  personalizzate  per  ottenere  risultati finanziari \n                straordinari in un breve lasso di tempo.', 'Esperto', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(3, 'Coach di vita spirituale', '/Archivio/03.jpeg', 'Un  coach  di  vita  spirituale  è  un  professionista  che  aiuta  le  persone  a  esplorare  e \n                sviluppare il loro benessere spirituale. Attraverso un approccio personalizzato, guida i \n                clienti  nella  scoperta  dei  loro  valori,  delle  credenze  e  degli  obiettivi  spirituali, \n                offrendo  supporto,  ispirazione  e  motivazione  lungo  il  percorso.  Il  coach  di  vita \n                spirituale fornisce strumenti pratici per approfondire la connessione con se stessi, gli \n                altri  e  il  mondo  circostante,  promuovendo  la  crescita  personale,  la  consapevolezza, \n                l\'autenticità  e  l\'equilibrio  interiore.  Questa  professione  mira  a  favorire  una  vita  più \n                significativa,  centrata  e  armoniosa,  facilitando  la  realizzazione  del  potenziale \n                spirituale dei clienti.', 'Professionista', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(4, 'Specialista di marketing magico', '/Archivio/04.jpeg', 'Lo  Specialista  di  marketing  magico  è  un  esperto  nel  combinare  incantesimi  e \n                strategie di marketing per creare campagne uniche ed efficaci. Utilizza il potere della \n                magia  per  incantare  il  pubblico,  creando  esperienze  indimenticabili  e  coinvolgenti. \n                Sfruttando incantesimi di persuasione e telepatia, lo Specialista di marketing magico \n                è  in  grado  di  comprendere  i  desideri  e  le  aspettative  dei  clienti,  offrendo  loro \n                soluzioni  personalizzate.  Con  una  combinazione  di  creatività,  intuizione  e  abilità \n                magiche,  lo  Specialista  di  marketing  magico  aiuta  le  aziende  a  distinguersi  dalla \n                concorrenza e a raggiungere il successo nel mondo affascinante del marketing.', 'Guru', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(5, 'Esperto di pulizia energetica delle case', '/Archivio/05.jpeg', 'L\'esperto  di  pulizia  energetica  negativa  delle  case  è  un  professionista  specializzato \n                nel  rilevare  e  rimuovere  le  energie  negative  presenti  negli  ambienti  domestici. \n                Utilizzando  strumenti  e  tecniche  specifiche,  analizza  le  energie  disarmoniche  e  le \n                fonti  di  disturbo,  come  campi  elettromagnetici  o  presenze  energetiche  indesiderate. \n                Attraverso  pratiche  di  purificazione  energetica,  come  la  smagnetizzazione, \n                l\'incensazione  o  l\'utilizzo  di  cristalli,  l\'esperto  ripristina  l\'equilibrio  e  l\'armonia \n                nell\'ambiente,  promuovendo  un\'energia  positiva  e  favorevole  alla  salute  e  al \n                benessere  degli  abitanti.  Collabora  anche  con  i  proprietari  per  fornire  consigli  su \n                come mantenere l\'equilibrio energetico nel tempo.', 'Guru', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(6, 'Maestro alla lettura delle foglie del tè', '/Archivio/06.jpeg', 'Il Maestro della lettura delle foglie del tè è un esperto che interpreta simboli e segni \n                presenti nelle foglie del tè dopo la loro infusione. Con abilità intuitive e conoscenza \n                delle  tradizioni,  analizza  la  forma,  la  posizione  e  i  pattern  delle  foglie  per  predire \n                eventi  futuri  o  dare  consigli.  Utilizzando  l\'arte  della  divinazione,  questo  maestro \n                decodifica i messaggi nascosti nel tè, offrendo saggezza e guida ai suoi clienti. La sua \n                pratica  richiede  attenzione,  intuizione  e  capacità  di  comunicare  in  modo  empatico, \n                creando un\'esperienza unica di scoperta e introspezione attraverso il semplice atto di \n                bere una tazza di tè.', 'Maestro', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(7, 'Consulente di illuminazione cosmica', '/Archivio/07.jpeg', 'Il Consulente di Illuminazione Cosmica è un professionista che si occupa di offrire \n                supporto  e  guida  nell\'approfondimento  della  connessione  tra  l\'individuo  e  l\'energia \n                cosmica.  Attraverso  una  combinazione  di  conoscenze  astrologiche,  spirituali  e \n                intuitive, il consulente aiuta le persone a comprendere il proprio percorso di vita, le \n                influenze  celesti  e  l\'energia  cosmica  che  le  circonda.  Utilizzando  strumenti  come  il \n                tema  natale  e  le  carte  astrali,  fornisce  consigli  personalizzati,  indicazioni \n                sull\'equilibrio  energetico  e  metodi  per  sfruttare  al  meglio  il  proprio  potenziale \n                spirituale. Il consulente di illuminazione cosmica facilita l\'illuminazione interiore e il \n                raggiungimento di uno stato di armonia e consapevolezza.', 'Illustre', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(8, 'Specialista in terapia del respiro degli unicorni', '/Archivio/08.webp', 'Il  ruolo  di  Specialista  in  terapia  del  respiro  degli  unicorni  è  un  connubio  tra  la  cura  del \n                respiro umano e l\'uso delle proprietà magiche degli unicorni. Questi esperti sono in grado di \n                combinare tecniche respiratorie avanzate con l\'energia positiva rilasciata dagli unicorni per \n                promuovere la salute e il benessere. Attraverso sessioni di terapia personalizzate, aiutano gli \n                individui a migliorare la qualità del respiro, rilassarsi e alleviare lo stress. Utilizzando una \n                combinazione  di  tecniche  di  respirazione,  meditazione  e  la  presenza  rassicurante  degli \n                unicorni,  questi  specialisti  offrono  un  approccio  unico  per  il  trattamento  di  disturbi \n                respiratori e il potenziamento della salute generale.', 'Professionista', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(9, 'Dubai lifestyle coach', '/Archivio/09.jpeg', 'Un Dubai lifestyle coach è un professionista che aiuta le persone a migliorare la loro qualità \n                di vita e il loro benessere globale. Offrono consulenza personalizzata su diversi aspetti della \n                vita, come la gestione dello stress, l\'equilibrio tra lavoro e vita privata, l\'alimentazione, il \n                fitness  e  le  relazioni  personali.  Sfruttando  una  combinazione  di  tecniche  di  coaching, \n                consulenza e strategie di sviluppo personale, lavorano con i clienti per identificare obiettivi \n                chiari e pianificare azioni concrete per raggiungerli. Un lifestyle coach a Dubai tiene conto \n                anche delle specificità culturali e degli stili di vita della città, offrendo un supporto adatto a \n                questo contesto cosmopolita e dinamico.', 'Principiante', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(10, 'Sacerdote delle cryptovalute', '/Archivio/10.jpeg', 'Il  Sacerdote  delle  cryptovalute  per  cerimonie  di  benedizione  e  protezione  è  un  esperto \n                spirituale che si occupa di guidare e assistere i fedeli nel mondo delle criptovalute. Con una \n                profonda  conoscenza  delle  blockchain  e  delle  nuove  tecnologie finanziarie,  il  Sacerdote \n                offre  cerimonie  speciali  per  benedire  e  proteggere  i  portafogli  digitali  e  le  transazioni \n                criptate. Attraverso  rituali  simbolici  e  preghiere  adattate  al  contesto  delle  cryptovalute,  il \n                Sacerdote promuove la consapevolezza, la sicurezza e la prosperità finanziaria nel mondo \n                digitale. La sua missione è unire la fede e la tecnologia per aiutare i credenti a navigare nel \n                vasto universo delle criptovalute.', 'Gran maestro', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(11, 'Professore della comunicazione aliena', '/Archivio/11.webp', 'Il  Professore  di  Comunicazione  Aliena  è  un  esperto  nel  campo  dell\'interazione  e  della \n                comprensione  delle  forme  di  comunicazione  extraterrestre. Attraverso  lo  studio  di  lingue, \n                simboli  e  modelli  di  comunicazione  alieni,  il  professore  analizza  e  interpreta  i  messaggi \n                provenienti  da  civiltà  extraterrestri.  Utilizza  metodologie  avanzate  per  decifrare  i  segnali, \n                creando  ponti  di  comunicazione  con  le  culture  aliene.  Lavora  anche  per  diffondere  la \n                consapevolezza sull\'esistenza di vita extraterrestre e promuovere una comprensione pacifica \n                tra le specie. La sua ricerca contribuisce alla conoscenza dell\'universo e all\'apertura di nuove \n                frontiere per l\'umanità.', 'Professionista', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(12, 'Esperto di gestione patrimoniale di crypto', '/Archivio/12.jpeg', 'L\'Esperto di gestione patrimoniale di crypto è un professionista specializzato nell\'aiutare i \n                clienti a gestire i loro investimenti in criptovalute. Con una solida conoscenza delle diverse \n                criptovalute, delle strategie di trading e degli aspetti legali e regolamentari, l\'esperto offre \n                consulenza  personalizzata  per  massimizzare  i  rendimenti  e  mitigare  i  rischi.  Attraverso \n                l\'analisi  dei  mercati,  l\'esperto  consiglia  sulle  opportunità  di  investimento,  sulla \n                diversificazione del portafoglio e sulla gestione delle transazioni. Svolge anche compiti di \n                sicurezza, identificando le minacce e proponendo soluzioni per proteggere i fondi dei clienti. \n                La sua competenza aiuta a guidare i clienti attraverso il complesso mondo delle criptovalute, \n                fornendo una gestione professionale del patrimonio digitale.', 'Esperto', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(13, 'Lifecoach per il successo finanziario', '/Archivio/13.jpeg', 'Il Life Coach per il successo finanziario attraverso le cryptovalute è un professionista che \n                guida e supporta le persone nell\'esplorare e sfruttare le opportunità finanziarie offerte dalle \n                criptovalute. Utilizzando la propria esperienza e competenza nel settore delle criptovalute, il \n                Life  Coach  aiuta  i  clienti  a  comprendere  i  concetti  fondamentali  delle  criptovalute,  a \n                identificare  opportunità  di  investimento  e  a  sviluppare  strategie  personalizzate  per \n                massimizzare  i  guadagni. Attraverso  sessioni  di  coaching  individuali  o  di  gruppo,  il  Life \n                Coach fornisce orientamento finanziario, incoraggiamento e sostegno emotivo per aiutare i \n                clienti a raggiungere i loro obiettivi finanziari utilizzando le cryptovalute.', 'Esperto', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(14, 'Consulente per il recupero degli amori perduti', '/Archivio/14.webp', 'Un  Consulente  per  il  recupero  degli  amori  perduti  è  un  professionista  specializzato  nel \n                fornire supporto emotivo e strategie pratiche per aiutare le persone a riconnettersi con i loro \n                ex partner. Attraverso sessioni di consulenza individuali o di coppia, il consulente ascolta \n                attentamente  le  esperienze  personali,  identifica  le  problematiche  relazionali  e  suggerisce \n                soluzioni  personalizzate.  Utilizzando  una  combinazione  di  tecniche  di  comunicazione, \n                consapevolezza emotiva e gestione dei conflitti, il consulente aiuta i clienti a comprendere i \n                motivi  della  rottura  e  a  lavorare  verso  una  riconciliazione,  quando  appropriato.  Il  suo \n                obiettivo è aiutare le persone a recuperare e coltivare relazioni amorose significative.', 'Professionista', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(15, 'Maestro della terapia degli abbracci', '/Archivio/15.jpeg', 'Il Maestro della terapia degli abbracci è un professionista esperto nell\'arte di fornire comfort \n                e  sostegno  attraverso  l\'abbraccio.  Con  una  profonda  conoscenza  delle  esigenze  emotive  e \n                fisiche  delle  persone,  il  Maestro  crea  uno  spazio  sicuro  e  accogliente  in  cui  gli  individui \n                possono  esprimere  le  proprie  emozioni  e  trovare  sollievo  dallo  stress  e  dalla  solitudine. \n                Attraverso  abbracci  empatici  e  amorevoli,  il  Maestro  facilita  il  rilascio  di  endorfine  e  la \n                riduzione  dello  stress,  promuovendo  il  benessere  mentale  e fisico.  Questa  professione \n                richiede  sensibilità,  empatia  e  una  profonda  comprensione  del  potere  curativo \n                dell\'abbraccio.', 'Gran maestro', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25');

-- --------------------------------------------------------

--
-- Struttura della tabella `specialization_teacher`
--

CREATE TABLE `specialization_teacher` (
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `specialization_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `specialization_teacher`
--

INSERT INTO `specialization_teacher` (`teacher_id`, `specialization_id`) VALUES
(2, 9),
(3, 14),
(8, 15),
(9, 2),
(5, 1),
(7, 3),
(4, 5),
(15, 13),
(15, 3),
(11, 1),
(6, 9),
(1, 10),
(1, 14),
(13, 12),
(10, 14),
(16, 12),
(14, 10),
(14, 13),
(12, 9);

-- --------------------------------------------------------

--
-- Struttura della tabella `sponsorships`
--

CREATE TABLE `sponsorships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `sponsorships`
--

INSERT INTO `sponsorships` (`id`, `price`, `description`, `duration`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2.99, 'Sponsorizza il tuo profilo da teacher per 24 ore e massimizza \n                la visibilità delle tue lezioni. Il tuo profilo sarà evidenziato nella sezione \n                dedicata agli utenti in cerca di insegnanti e riceverà maggiore attenzione da parte\n                degli studenti interessati. Approfitta di questa opportunità per aumentare \n                l\'esposizione delle tue competenze e raggiungere un pubblico più ampio.', 24, NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(2, 5.99, 'Porta il tuo profilo al livello successivo con il pacchetto di \n                sponsorizzazione di 72 ore. Durante questo periodo, il tuo profilo sarà in evidenza, \n                garantendoti una posizione privilegiata nelle ricerche degli utenti. \n                Sfrutta questa promozione per attirare ancora più studenti e promuovere le tue lezioni \n                in modo efficace. Ottieni una visibilità duratura e aumenta le tue opportunità \n                di insegnamento.', 72, NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(3, 9.99, 'Fai brillare il tuo profilo per un\'intera settimana con il pacchetto di \n                sponsorizzazione di 144 ore. Questa opzione ti offre un\'elevata esposizione, posizionando \n                il tuo profilo in cima alla lista dei teacher consigliati. Approfitta di questa offerta per \n                catturare l\'attenzione degli studenti e costruire la tua reputazione come insegnante di qualità. \n                Massimizza il tuo potenziale di guadagno e amplia la tua base di studenti con questa \n                sponsorizzazione di lunga durata.', 144, NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25');

-- --------------------------------------------------------

--
-- Struttura della tabella `sponsorship_teacher`
--

CREATE TABLE `sponsorship_teacher` (
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `sponsorship_id` bigint(20) UNSIGNED NOT NULL,
  `inizio_sponsorizzazione` datetime DEFAULT NULL,
  `fine_sponsorizzazione` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `sponsorship_teacher`
--

INSERT INTO `sponsorship_teacher` (`teacher_id`, `sponsorship_id`, `inizio_sponsorizzazione`, `fine_sponsorizzazione`) VALUES
(2, 2, NULL, NULL),
(3, 3, NULL, NULL),
(3, 1, NULL, NULL),
(8, 1, NULL, NULL),
(8, 3, NULL, NULL),
(9, 1, NULL, NULL),
(5, 2, NULL, NULL),
(5, 3, NULL, NULL),
(7, 2, NULL, NULL),
(4, 2, NULL, NULL),
(15, 1, NULL, NULL),
(15, 2, NULL, NULL),
(11, 3, NULL, NULL),
(11, 2, NULL, NULL),
(6, 2, NULL, NULL),
(6, 3, NULL, NULL),
(1, 1, NULL, NULL),
(13, 1, NULL, NULL),
(10, 2, NULL, NULL),
(10, 1, NULL, NULL),
(16, 1, NULL, NULL),
(14, 3, NULL, NULL),
(12, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `performance` longtext COLLATE utf8mb4_unicode_ci,
  `pdf_cv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_card` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `teachers`
--

INSERT INTO `teachers` (`id`, `user_id`, `performance`, `pdf_cv`, `cv`, `picture`, `phone`, `credit_card`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, '/img/cv/CV-1.png', '/img/volti/lars-andersen.png', '+45 12345678', '5192412236949644', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(2, 2, NULL, NULL, '/img/cv/CV-2.png', '/img/volti/alessandro-ferrari.png', '+39 0123456789', '4532205165155478', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(3, 3, NULL, NULL, '/img/cv/CV-3.png', '/img/volti/anna-muller.png', '+49 1234567890', '2553413936096884', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(4, 4, NULL, NULL, '/img/cv/CV-4.png', '/img/volti/gabriel-schmidt.png', '+49 9876543210', '4929936132088597', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(5, 5, NULL, NULL, '/img/cv/CV-5.png', '/img/volti/elena-fisher.png', '+41 7878787878', '2373816042185219', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(6, 6, NULL, NULL, '/img/cv/CV-6.png', '/img/volti/jackson-thompson.png', '+1 2125556789', '2545137748323894', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(7, 7, NULL, NULL, '/img/cv/CV-7.png', '/img/volti/ethan-rodriguez.png', '+34 612345678', '2720229809201585', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(8, 8, NULL, NULL, '/img/cv/CV-8.png', '/img/volti/ava-smith.png', '+44 2071234567', '3528691825777926', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(9, 9, NULL, NULL, '/img/cv/CV-9.png', '/img/volti/benjamin-brown.png', '+1 1619876543', '4539238399907177', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(10, 10, NULL, NULL, '/img/cv/CV-10.png', '/img/volti/mia-clark.png', '+61 290123456', '6011797334437576', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(11, 11, NULL, NULL, '/img/cv/CV-11.png', '/img/volti/hiroshi-tanaka.png', '+81 345678901', '4024007182223130', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(12, 12, NULL, NULL, '/img/cv/CV-12.png', '/img/volti/sakura-yamamoto.png', '+81 234567890', '5591246269598358', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(13, 13, NULL, NULL, '/img/cv/CV-13.png', '/img/volti/mei-ling.png', '+86 13987654321', '2699049305823964', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(14, 14, NULL, NULL, '/img/cv/CV-14.png', '/img/volti/raj-patel.png', '+91 9876543210', '5107828613797237', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(15, 15, NULL, NULL, '/img/cv/CV-15.png', '/img/volti/giovanni-rotella.png', '+39 3456789123', '4929168375836298', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(16, 16, '<p>gfregerg</p>', NULL, '/img/cv/CV-16.png', '/img/volti/morena-piemontese.png', '+33 1234567891', '5255442165753281', NULL, '2023-06-06 03:09:25', '2023-06-06 03:10:52');

-- --------------------------------------------------------

--
-- Struttura della tabella `teacher_vote`
--

CREATE TABLE `teacher_vote` (
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `vote_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `teacher_vote`
--

INSERT INTO `teacher_vote` (`teacher_id`, `vote_id`) VALUES
(2, 3),
(2, 2),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(8, 4),
(8, 3),
(8, 5),
(8, 2),
(9, 4),
(5, 4),
(5, 5),
(5, 3),
(5, 1),
(7, 2),
(7, 3),
(7, 5),
(7, 4),
(7, 1),
(4, 1),
(4, 4),
(4, 5),
(4, 3),
(15, 4),
(15, 2),
(15, 1),
(15, 3),
(15, 5),
(11, 4),
(11, 1),
(11, 2),
(6, 5),
(6, 1),
(6, 2),
(6, 4),
(6, 3),
(1, 1),
(1, 2),
(1, 3),
(13, 2),
(13, 4),
(13, 3),
(10, 2),
(10, 1),
(16, 1),
(14, 3),
(12, 3),
(12, 2),
(12, 4),
(12, 5);

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
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lars Andersen', 'lars.andersen@post.tele.dk', NULL, '$2y$10$D3k/eaZ4rHCXJ7HzLrHk6.o6zC7VXHJJkVjdjV7enwUE.6t5wcmAO', 'Vesterbrogade 12, Copenaghen, Danimarca', NULL, '2023-06-06 03:09:22', '2023-06-06 03:09:22'),
(2, 'Alessandro Ferrari', 'alessandro.ferrari@gmail.com', NULL, '$2y$10$NIdjbn3D2EpCp8hayCLfcObpifHdqKOAp2BmwtLVLcfWOxdQHeBC.', 'Via Maranello 20, Modena, Italia', NULL, '2023-06-06 03:09:22', '2023-06-06 03:09:22'),
(3, 'Anna Müller', 'anna.müller@versanet.de', NULL, '$2y$10$Ey394Od/fD6EmFvxF1UwFey8L3kepcmJOtV/HnHGJlHrwc1b8FWIG', 'Mühlenstraße 8 Berlino, Germania', NULL, '2023-06-06 03:09:22', '2023-06-06 03:09:22'),
(4, 'Gabriel Schmidt', 'gabriel.schmidt@mail.de', NULL, '$2y$10$IYbdgTMef27S6QDd97YA0eWJKXq5tScuhvROWF.B.nzS.Al3UfvIe', 'Hauptstraße 15, Francoforte, Germania', NULL, '2023-06-06 03:09:22', '2023-06-06 03:09:22'),
(5, 'Elena Fischer', 'elena.fischer@bluemail.ch', NULL, '$2y$10$BpJWOUtHFQPsJQpaIa1b1uxW2jGyq5IucPvO6FytMRFniVVLveR0u', 'Fischerweg 5, Zurigo, Svizzera', NULL, '2023-06-06 03:09:22', '2023-06-06 03:09:22'),
(6, 'Jackson Thompson', 'jackson.thompson@aol.com', NULL, '$2y$10$xABtwHBzoMzKS4cnZyyoyuBoFX4vergZj1ogpo1/pSpceupJbaYxq', 'Thompson Street 7, New York, Stati Uniti', NULL, '2023-06-06 03:09:23', '2023-06-06 03:09:23'),
(7, 'Ethan Rodriguez', 'ethan.rodriguez@yahoo.es', NULL, '$2y$10$GsP.R/c4LxfzI1Rw2Z9nGOfx7MmdVb0YCivo4eOIeno8SA9vPFds.', 'Calle Principal 23, Madrid, Spagna', NULL, '2023-06-06 03:09:23', '2023-06-06 03:09:23'),
(8, 'Ava Smith', 'ava.smith@virginmedia.com', NULL, '$2y$10$FbUXFYKrLOrj1KMGeMTWaenBbGADDLfSTocTSHg0HWkBijKl8esKq', 'Smith Street 10, Londra, Regno Unito', NULL, '2023-06-06 03:09:23', '2023-06-06 03:09:23'),
(9, 'Benjamin Brown', 'benjaminbrown@icloud.com', NULL, '$2y$10$KWZBG3U5.MsKdrSYSvXhne3QwYqjZnReGHom0IPzuKIM/lz4eZJ5S', 'Brown Avenue 3, Boston, Stati Uniti', NULL, '2023-06-06 03:09:23', '2023-06-06 03:09:23'),
(10, 'Mia Clark', 'miaclark@att.net', NULL, '$2y$10$4RWLuvpMme9pvlACkFfAeubgBjIGJuDEPMvoK0zpo6DSUcTB84Roy', 'Clark Road 14, Sydney, Australia', NULL, '2023-06-06 03:09:23', '2023-06-06 03:09:23'),
(11, 'Hiroshi Tanaka', 'hiroshitanaka@ocn.ne.jp', NULL, '$2y$10$xg86Nn5nI1xzYabrXeZkHuZV0LrHhW/zII9YeJx0JSQQPjouV3MUC', 'Tanaka-cho 2, Tokyo, Giappone', NULL, '2023-06-06 03:09:24', '2023-06-06 03:09:24'),
(12, 'Sakura Yamamoto', 'sakurayamamoto@biglobe.ne.jp', NULL, '$2y$10$In5/F.NnbKcPgfD70HKnP.sqzUAeWlXyGlNEyR1RP7MolK2RxOdDK', 'Yamamoto-dori 6, Kyoto, Giappone', NULL, '2023-06-06 03:09:24', '2023-06-06 03:09:24'),
(13, 'Mei Ling', 'meiling@wo.com.cn', NULL, '$2y$10$C4bhZyjV96pjCK.hHNA08uh4lSf.ycoKOY4m4rjznbMkD49QVm0Te', 'Ling Lane 9, Pechino, Cina', NULL, '2023-06-06 03:09:24', '2023-06-06 03:09:24'),
(14, 'Raj Patel', 'rajipatel@zoo.com', NULL, '$2y$10$h4k5vqlkFDq7pLXNOiuUQ.gEp3kjFC0khRKfS8/.5MC0URgLPMfrG', 'Patel Nagar 11, Mumbai, India', NULL, '2023-06-06 03:09:24', '2023-06-06 03:09:24'),
(15, 'Giovanni Rotella', 'giovanni.rotella@libero.it', NULL, '$2y$10$d1FT7uZ18GHI0dhbGvR/yeBcBOrNyMSnipH.JtZeWkU7i4ZeU/7.a', 'Via Roma 148, Ravenna Italia', NULL, '2023-06-06 03:09:24', '2023-06-06 03:09:24'),
(16, 'Morena Piemontese', 'morena@gmail.com', NULL, '$2y$10$aoZKd/VgdEDwTYOUj3qgeuh2Tcb7VjPTBhx82H5wtTickDmFHaMuG', 'Via Dubai 1254, Dubai', NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25');

-- --------------------------------------------------------

--
-- Struttura della tabella `votes`
--

CREATE TABLE `votes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `votes`
--

INSERT INTO `votes` (`id`, `vote`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(2, 2, NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(3, 3, NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(4, 4, NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25'),
(5, 5, NULL, '2023-06-06 03:09:25', '2023-06-06 03:09:25');

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
-- Indici per le tabelle `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_teacher_id_foreign` (`teacher_id`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indici per le tabelle `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indici per le tabelle `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_teacher_id_foreign` (`teacher_id`);

--
-- Indici per le tabelle `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `specialization_teacher`
--
ALTER TABLE `specialization_teacher`
  ADD KEY `specialization_teacher_teacher_id_foreign` (`teacher_id`),
  ADD KEY `specialization_teacher_specialization_id_foreign` (`specialization_id`);

--
-- Indici per le tabelle `sponsorships`
--
ALTER TABLE `sponsorships`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `sponsorship_teacher`
--
ALTER TABLE `sponsorship_teacher`
  ADD KEY `sponsorship_teacher_teacher_id_foreign` (`teacher_id`),
  ADD KEY `sponsorship_teacher_sponsorship_id_foreign` (`sponsorship_id`);

--
-- Indici per le tabelle `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_user_id_unique` (`user_id`);

--
-- Indici per le tabelle `teacher_vote`
--
ALTER TABLE `teacher_vote`
  ADD KEY `teacher_vote_teacher_id_foreign` (`teacher_id`),
  ADD KEY `teacher_vote_vote_id_foreign` (`vote_id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indici per le tabelle `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT per la tabella `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT per la tabella `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `sponsorships`
--
ALTER TABLE `sponsorships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT per la tabella `votes`
--
ALTER TABLE `votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `specialization_teacher`
--
ALTER TABLE `specialization_teacher`
  ADD CONSTRAINT `specialization_teacher_specialization_id_foreign` FOREIGN KEY (`specialization_id`) REFERENCES `specializations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `specialization_teacher_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `sponsorship_teacher`
--
ALTER TABLE `sponsorship_teacher`
  ADD CONSTRAINT `sponsorship_teacher_sponsorship_id_foreign` FOREIGN KEY (`sponsorship_id`) REFERENCES `sponsorships` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sponsorship_teacher_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `teacher_vote`
--
ALTER TABLE `teacher_vote`
  ADD CONSTRAINT `teacher_vote_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_vote_vote_id_foreign` FOREIGN KEY (`vote_id`) REFERENCES `votes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
