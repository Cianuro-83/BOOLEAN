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
-- Database: `laravel-final-project`
--
CREATE DATABASE IF NOT EXISTS `laravel-final-project` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `laravel-final-project`;

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
(1, 1, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Rachel Nicolas', 'xbaumbach@gmail.com', '938.399.2317', NULL, '2021-06-16 11:31:57', '2023-06-05 15:37:09'),
(2, 3, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Kenyon Hermann IV', 'ted72@hotmail.com', '+1 (364) 760-6237', NULL, '2022-01-08 21:44:11', '2023-06-05 15:37:09'),
(3, 16, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Timmy Wehner I', 'delia11@yahoo.com', '+1.463.583.9796', NULL, '2020-03-30 03:35:15', '2023-06-05 15:37:09'),
(4, 14, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Miss Dakota Hickle', 'mzemlak@gmail.com', '(813) 354-0955', NULL, '2022-09-04 20:12:54', '2023-06-05 15:37:09'),
(5, 7, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Herta Strosin I', 'garrick67@yahoo.com', '765.847.2301', NULL, '2022-01-22 12:55:35', '2023-06-05 15:37:09'),
(6, 13, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Prof. Orin Pfannerstill', 'dsimonis@hotmail.com', '1-770-259-1668', NULL, '2023-01-13 17:18:32', '2023-06-05 15:37:09'),
(7, 1, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Prof. Max Gerlach', 'renner.hunter@gmail.com', '315.751.7851', NULL, '2021-08-20 01:12:12', '2023-06-05 15:37:09'),
(8, 14, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Francesco Rosenbaum', 'oberbrunner.estel@bradtke.net', '352.813.1312', NULL, '2021-08-28 02:48:29', '2023-06-05 15:37:09'),
(9, 11, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Ubaldo Leannon', 'alexandre12@yahoo.com', '1-269-792-2601', NULL, '2023-05-06 13:35:06', '2023-06-05 15:37:09'),
(10, 4, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Javier Feest', 'rstark@hotmail.com', '+1-770-701-3625', NULL, '2021-09-03 15:33:10', '2023-06-05 15:37:09'),
(11, 8, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Dr. Alysa Windler V', 'becker.wilmer@hirthe.biz', '+1-623-349-5914', NULL, '2022-03-29 08:58:18', '2023-06-05 15:37:09'),
(12, 16, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Miss Katlyn Auer Sr.', 'agoodwin@gmail.com', '352.394.5728', NULL, '2020-01-30 03:52:08', '2023-06-05 15:37:09'),
(13, 13, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Isabella Huels', 'reuben.mcclure@lubowitz.net', '+1 (631) 472-9442', NULL, '2021-05-28 20:41:19', '2023-06-05 15:37:09'),
(14, 3, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Delbert Little III', 'joaquin46@thiel.com', '364.439.3835', NULL, '2021-01-31 06:58:34', '2023-06-05 15:37:09'),
(15, 1, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Bud Conn', 'rachel.cummings@funk.net', '929.321.6176', NULL, '2021-05-05 04:31:36', '2023-06-05 15:37:09'),
(16, 9, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Prof. Wyatt Watsica Jr.', 'walsh.shaylee@greenholt.com', '+1.302.732.5217', NULL, '2020-08-30 05:02:37', '2023-06-05 15:37:09'),
(17, 3, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Zackery Upton', 'nayeli97@cartwright.org', '586.674.2713', NULL, '2022-05-04 02:32:12', '2023-06-05 15:37:09'),
(18, 14, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Mrs. Alysa Crist', 'omurazik@kub.org', '445.831.4466', NULL, '2022-05-02 02:52:50', '2023-06-05 15:37:09'),
(19, 2, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Angelo Botsford', 'olson.felipa@brekke.com', '+1 (928) 863-2327', NULL, '2021-11-19 05:29:43', '2023-06-05 15:37:09'),
(20, 12, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Vella Okuneva', 'swaniawski.casandra@herzog.net', '+1.646.542.3309', NULL, '2020-04-04 12:07:31', '2023-06-05 15:37:09'),
(21, 9, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Stanley White', 'schumm.garrett@hotmail.com', '(917) 599-5037', NULL, '2023-02-11 20:06:16', '2023-06-05 15:37:09'),
(22, 9, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Tavares Mertz III', 'goyette.sabryna@kshlerin.biz', '+1-951-998-6458', NULL, '2022-05-11 01:27:53', '2023-06-05 15:37:09'),
(23, 10, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Germaine Balistreri', 'ada67@schmitt.com', '845-971-2446', NULL, '2021-12-25 08:30:55', '2023-06-05 15:37:09'),
(24, 13, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Prof. Tiana Hahn', 'samantha.leuschke@schaefer.org', '1-785-692-6934', NULL, '2021-12-17 12:04:12', '2023-06-05 15:37:09'),
(25, 1, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Cleta Hagenes', 'osinski.adalberto@yahoo.com', '+1 (240) 472-5453', NULL, '2020-03-15 16:31:47', '2023-06-05 15:37:09'),
(26, 11, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Wilford McGlynn', 'winona79@hotmail.com', '364-215-2870', NULL, '2020-04-13 22:11:11', '2023-06-05 15:37:09'),
(27, 4, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Jonathon Howe Sr.', 'amaya64@gmail.com', '(703) 361-5736', NULL, '2021-06-15 15:23:33', '2023-06-05 15:37:09'),
(28, 10, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Charity Lang Sr.', 'jpagac@schamberger.com', '1-850-938-9802', NULL, '2020-10-03 23:01:44', '2023-06-05 15:37:09'),
(29, 13, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Mrs. Destinee Conn IV', 'acremin@hotmail.com', '+1-404-461-1303', NULL, '2021-01-05 23:02:05', '2023-06-05 15:37:09'),
(30, 1, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Jaylon Koepp', 'fisher.lily@gmail.com', '1-650-651-7017', NULL, '2023-01-16 10:12:22', '2023-06-05 15:37:09'),
(31, 4, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Rhoda Altenwerth', 'qsauer@shanahan.com', '+1 (573) 371-6134', NULL, '2021-05-05 05:02:45', '2023-06-05 15:37:09'),
(32, 13, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Bella Leuschke', 'larry86@lindgren.com', '+1-580-314-7266', NULL, '2020-12-31 23:55:44', '2023-06-05 15:37:09'),
(33, 3, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Ms. Lola Effertz', 'hauck.devante@yahoo.com', '657-347-1411', NULL, '2020-10-03 15:30:19', '2023-06-05 15:37:09'),
(34, 10, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Reyna Rodriguez', 'lbernier@jenkins.com', '609-543-1742', NULL, '2021-04-20 21:53:14', '2023-06-05 15:37:09'),
(35, 11, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Nasir Christiansen', 'nicolas.charity@schmitt.org', '1-319-563-1364', NULL, '2023-05-26 22:09:42', '2023-06-05 15:37:09'),
(36, 1, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Allie Roob', 'mina.leuschke@hotmail.com', '810-974-7050', NULL, '2023-05-23 01:09:52', '2023-06-05 15:37:09'),
(37, 8, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Dr. Bernard Harvey III', 'kiehn.liam@yahoo.com', '+1-585-274-5929', NULL, '2021-04-22 12:28:19', '2023-06-05 15:37:09'),
(38, 5, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Delaney Pagac', 'sabrina.franecki@gmail.com', '+1-956-624-4212', NULL, '2020-07-26 16:37:30', '2023-06-05 15:37:09'),
(39, 16, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Ted Brown', 'lruecker@gmail.com', '(984) 899-8979', NULL, '2022-07-24 04:05:58', '2023-06-05 15:37:09'),
(40, 2, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Kamryn Hintz', 'addie.daugherty@gmail.com', '1-651-487-9202', NULL, '2022-02-27 02:22:43', '2023-06-05 15:37:09'),
(41, 14, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Mr. Quinn Durgan DDS', 'gbraun@wolff.com', '(469) 579-1635', NULL, '2022-07-07 19:51:02', '2023-06-05 15:37:09'),
(42, 9, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Ashly Hyatt', 'melvin.rosenbaum@yahoo.com', '+18645856250', NULL, '2021-03-18 20:59:05', '2023-06-05 15:37:09'),
(43, 12, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Adrianna Hackett', 'kabernathy@stanton.com', '626.392.3093', NULL, '2020-05-16 17:59:53', '2023-06-05 15:37:09'),
(44, 16, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Jannie Hane', 'timmothy89@feeney.com', '276-469-9149', NULL, '2023-01-08 00:56:07', '2023-06-05 15:37:09'),
(45, 11, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Dr. Asha Bode', 'juston.bruen@kutch.org', '760-833-4799', NULL, '2021-05-17 01:15:21', '2023-06-05 15:37:09'),
(46, 14, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Elizabeth Zieme', 'kianna.gottlieb@greenholt.com', '(762) 810-5831', NULL, '2022-11-27 14:38:03', '2023-06-05 15:37:09'),
(47, 12, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Grady Stoltenberg', 'nelson.leffler@yahoo.com', '725-235-3551', NULL, '2020-04-06 18:22:03', '2023-06-05 15:37:09'),
(48, 2, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Grayce Gulgowski', 'germaine17@kuhic.com', '+1-520-663-7283', NULL, '2021-04-17 15:21:25', '2023-06-05 15:37:09'),
(49, 3, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Gerard Wuckert V', 'considine.taryn@adams.com', '1-575-243-6438', NULL, '2021-05-10 11:03:05', '2023-06-05 15:37:09'),
(50, 9, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Ms. Marta Murazik', 'floy71@stoltenberg.net', '+1-907-647-6555', NULL, '2021-04-20 16:26:43', '2023-06-05 15:37:09'),
(51, 2, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Heather Schiller', 'ryder.pacocha@ebert.com', '580-752-4410', NULL, '2023-01-12 19:19:55', '2023-06-05 15:37:09'),
(52, 7, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Kaleigh Yost IV', 'leslie.nolan@grady.net', '952-667-9136', NULL, '2021-08-10 08:51:53', '2023-06-05 15:37:09'),
(53, 11, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Bonnie Lowe', 'nicolas.tania@leannon.net', '1-484-578-0489', NULL, '2021-09-09 03:52:17', '2023-06-05 15:37:09'),
(54, 10, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Carli Luettgen', 'carmine18@heller.biz', '(531) 717-4636', NULL, '2022-12-18 11:11:08', '2023-06-05 15:37:09'),
(55, 9, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Werner Price DVM', 'kkautzer@yahoo.com', '+1-989-635-2785', NULL, '2022-06-10 18:40:38', '2023-06-05 15:37:09'),
(56, 7, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Dr. Bennett Gorczany MD', 'lwest@gmail.com', '+1-720-470-4002', NULL, '2022-10-16 01:27:14', '2023-06-05 15:37:09'),
(57, 1, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Prof. Summer Hartmann II', 'makenzie83@gmail.com', '+1 (323) 406-2333', NULL, '2022-06-28 23:58:06', '2023-06-05 15:37:09'),
(58, 14, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Prof. Kathleen Keebler PhD', 'wolf.winnifred@veum.com', '405.599.8358', NULL, '2022-09-06 11:49:10', '2023-06-05 15:37:09'),
(59, 10, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Chasity Kassulke', 'kim68@kub.info', '+1-959-331-2539', NULL, '2023-01-21 04:30:43', '2023-06-05 15:37:09'),
(60, 10, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Noel DuBuque', 'janis43@hotmail.com', '(763) 571-8263', NULL, '2022-03-19 17:25:59', '2023-06-05 15:37:09'),
(61, 9, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Mrs. Ilene Botsford I', 'corkery.salvador@fahey.com', '+1-351-539-6882', NULL, '2020-12-30 08:28:59', '2023-06-05 15:37:09'),
(62, 3, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Mr. Stanton Wuckert I', 'hilpert.donna@hettinger.com', '+1 (848) 201-2118', NULL, '2021-09-20 17:44:13', '2023-06-05 15:37:09'),
(63, 15, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Mrs. Shania Padberg', 'hartmann.merlin@yahoo.com', '332.653.0512', NULL, '2022-09-29 09:55:13', '2023-06-05 15:37:09'),
(64, 9, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Prof. Marjory Strosin Sr.', 'ruecker.hilbert@hotmail.com', '+1.551.757.7076', NULL, '2020-08-05 13:21:38', '2023-06-05 15:37:09'),
(65, 3, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Mr. Austyn Wisoky', 'vhansen@gmail.com', '+15714666979', NULL, '2020-10-31 18:26:54', '2023-06-05 15:37:09'),
(66, 2, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Vickie Dickens', 'genoveva.haag@christiansen.org', '651-656-4619', NULL, '2020-03-31 19:35:23', '2023-06-05 15:37:09'),
(67, 10, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Mr. Lavon Jacobi Sr.', 'arvilla39@legros.com', '(959) 741-9292', NULL, '2023-05-29 06:19:10', '2023-06-05 15:37:09'),
(68, 12, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Meaghan Keebler', 'lspencer@gleason.com', '272.830.2680', NULL, '2022-04-12 14:31:15', '2023-06-05 15:37:09'),
(69, 11, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Mr. Douglas Davis', 'jayme.dubuque@yahoo.com', '+1-361-544-6685', NULL, '2021-02-02 08:54:06', '2023-06-05 15:37:09'),
(70, 14, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Oswaldo McCullough', 'cbartoletti@rath.net', '(864) 386-2757', NULL, '2022-08-30 06:28:23', '2023-06-05 15:37:09'),
(71, 5, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Mrs. Krystal Cruickshank Jr.', 'senger.enola@sawayn.com', '1-816-293-7460', NULL, '2022-02-03 19:10:59', '2023-06-05 15:37:09'),
(72, 5, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Marlon Gleason PhD', 'mpollich@gmail.com', '+1 (331) 736-5683', NULL, '2020-01-11 12:33:20', '2023-06-05 15:37:09'),
(73, 13, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Abbey Dickinson MD', 'hauck.delia@reinger.com', '(520) 630-4140', NULL, '2023-01-22 01:07:11', '2023-06-05 15:37:09'),
(74, 3, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Jessyca Mante DVM', 'lourdes56@dickinson.com', '+1-505-978-6740', NULL, '2022-07-13 11:49:57', '2023-06-05 15:37:09'),
(75, 3, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Melvina Wolff', 'deondre44@hotmail.com', '+1-616-460-9212', NULL, '2022-05-28 20:47:05', '2023-06-05 15:37:09'),
(76, 8, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Janie Heller', 'waino.donnelly@haag.com', '(432) 996-1701', NULL, '2020-09-26 06:04:26', '2023-06-05 15:37:09'),
(77, 5, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Linnie Bosco Sr.', 'ozboncak@yahoo.com', '+1 (520) 881-3126', NULL, '2022-12-14 18:58:40', '2023-06-05 15:37:09'),
(78, 11, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Bridie Marks', 'angelita.reynolds@parker.com', '434.207.7639', NULL, '2020-02-28 05:02:41', '2023-06-05 15:37:09'),
(79, 12, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Mr. Colby Fritsch', 'tyrel.botsford@daniel.info', '+1-406-735-1675', NULL, '2022-07-07 18:31:17', '2023-06-05 15:37:09'),
(80, 7, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Alayna DuBuque', 'hermann96@hotmail.com', '678-352-8238', NULL, '2021-04-29 23:41:07', '2023-06-05 15:37:09'),
(81, 3, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Florian Crist', 'qmurphy@wyman.info', '+13526751866', NULL, '2020-11-17 21:08:31', '2023-06-05 15:37:09');
INSERT INTO `messages` (`id`, `teacher_id`, `title`, `text`, `ui_name`, `ui_email`, `ui_phone`, `deleted_at`, `created_at`, `updated_at`) VALUES
(82, 1, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Axel Kohler', 'isaac73@gmail.com', '+1.828.873.1661', NULL, '2021-03-29 14:00:24', '2023-06-05 15:37:09'),
(83, 11, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Darrel Hudson', 'emoore@yahoo.com', '+1-602-683-5023', NULL, '2021-05-19 10:53:48', '2023-06-05 15:37:09'),
(84, 1, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Mr. Archibald Hoppe', 'tyrell26@schoen.com', '+1.515.446.7116', NULL, '2020-02-08 00:49:47', '2023-06-05 15:37:09'),
(85, 6, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Dr. Koby Wilkinson', 'hailey.block@wolf.net', '747.239.2247', NULL, '2020-04-16 09:44:16', '2023-06-05 15:37:09'),
(86, 15, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Dr. Freda Brown II', 'larissa70@beier.info', '(336) 670-6548', NULL, '2020-06-30 09:45:57', '2023-06-05 15:37:09'),
(87, 7, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Quincy Reichert', 'ygutkowski@hotmail.com', '1-820-639-0257', NULL, '2022-01-14 08:26:02', '2023-06-05 15:37:09'),
(88, 10, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Rosamond Watsica', 'oconnell.trenton@yahoo.com', '970.475.0885', NULL, '2022-05-14 15:26:15', '2023-06-05 15:37:09'),
(89, 14, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Esta Padberg', 'hoyt51@rogahn.com', '+14589597250', NULL, '2022-07-05 23:57:15', '2023-06-05 15:37:09'),
(90, 11, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Shanel Wuckert', 'murphy.edwardo@hotmail.com', '860.694.8258', NULL, '2020-08-18 05:33:17', '2023-06-05 15:37:09'),
(91, 4, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Jacklyn Konopelski', 'lillian75@gmail.com', '1-616-537-8205', NULL, '2021-07-31 13:02:23', '2023-06-05 15:37:09'),
(92, 9, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Miss Name Wilkinson Sr.', 'susie.stokes@parisian.com', '504-971-8186', NULL, '2020-02-02 15:40:25', '2023-06-05 15:37:09'),
(93, 1, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Amya Steuber', 'mitchell71@spinka.com', '1-956-454-0522', NULL, '2020-11-06 06:50:22', '2023-06-05 15:37:09'),
(94, 5, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Mr. Enos Rutherford V', 'duane11@emmerich.com', '520.677.6059', NULL, '2020-01-28 04:56:01', '2023-06-05 15:37:09'),
(95, 6, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Mr. Lafayette Lebsack Sr.', 'aernser@kuvalis.com', '1-316-969-4575', NULL, '2022-08-16 20:56:42', '2023-06-05 15:37:09'),
(96, 1, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Joana Ernser', 'roslyn15@reichert.biz', '(480) 616-6465', NULL, '2020-05-04 11:30:42', '2023-06-05 15:37:09'),
(97, 7, 'Richiesta informazioni', 'Salve, sono interessato al vostro corso e desidero ricevere informazioni dettagliate. \n                Vorrei sapere i requisiti di ammissione e la durata complessiva del corso. Inoltre, \n                mi piacerebbe conoscere il programma dettagliato e le competenze acquisite al termine. \n                Potreste fornirmi informazioni sulle modalità di insegnamento? Infine, sono disponibili \n                agevolazioni economiche o borse di studio? Grazie e attendo una vostra cortese risposta. \n                Cordiali saluti.', 'Jadyn Turcotte Sr.', 'dorian43@weissnat.com', '434.504.4275', NULL, '2021-11-13 09:40:20', '2023-06-05 15:37:09'),
(98, 2, 'Richiesta prenotazione', 'Salve, sono interessato al corso programmato, richiedo informazioni sulle date, gli orari, \n                la durata e il costo del corso. Spero di poter effettuare il pagamento in più rate. \n                Sono entusiasta di partecipare al corso e ringrazio per la disponibilità. Attendo una \n                vostra risposta. Grazie', 'Stephan Hintz I', 'gillian.goodwin@yahoo.com', '657-319-5722', NULL, '2020-06-07 09:08:07', '2023-06-05 15:37:09'),
(99, 16, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Ashlynn Brekke', 'kailyn.mosciski@schmeler.com', '+1 (720) 248-2209', NULL, '2022-04-19 12:08:51', '2023-06-05 15:37:09'),
(100, 5, 'Richiesta anullamento', 'Sono spiacente di comunicare che desidero annullare la mia iscrizione al corso. \n                Ho riflettuto attentamente e ho deciso di procedere all\'annullamento a causa delle mie attuali \n                circostanze personali. Vi ringrazio per l\'opportunità offertami e mi scuso per eventuali disagi. \n                Vi prego di confermare l\'annullamento e fornire istruzioni, se necessario. Grazie per la \n                comprensione e vi auguro il meglio per il futuro.', 'Alexanne VonRueden', 'walsh.vinnie@yahoo.com', '(260) 675-1212', NULL, '2021-10-10 10:47:56', '2023-06-05 15:37:09');

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
(4490, '2014_10_12_000000_create_users_table', 1),
(4491, '2014_10_12_100000_create_password_resets_table', 1),
(4492, '2019_08_19_000000_create_failed_jobs_table', 1),
(4493, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4494, '2023_05_18_135413_create_teachers_table', 1),
(4495, '2023_05_18_150255_create_specializations_table', 1),
(4496, '2023_05_18_151234_create_sponsorships_table', 1),
(4497, '2023_05_18_160312_create_votes_table', 1),
(4498, '2023_05_18_162545_create_messages_table', 1),
(4499, '2023_05_18_164313_create_reviews_table', 1),
(4500, '2023_05_19_131617_create_specialization_teacher_table', 1),
(4501, '2023_05_19_140028_create_sponsorship_teacher_table', 1),
(4502, '2023_05_19_140756_create_teacher_vote_table', 1),
(4503, '2023_05_19_144526_add_teacher_id_to_messages_table', 1),
(4504, '2023_05_19_150253_add_teacher_id_to_reviews_table', 1),
(4505, '2023_05_26_134513_create_leads_table', 1);

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
(1, 9, 'Alene', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2020-09-11 08:02:16', '2023-06-05 15:37:09'),
(2, 7, 'Greyson', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2022-08-29 11:07:36', '2023-06-05 15:37:09'),
(3, 9, 'Lorenz', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2021-09-05 19:24:30', '2023-06-05 15:37:09'),
(4, 16, 'Brook', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2020-02-21 20:34:32', '2023-06-05 15:37:09'),
(5, 9, 'Adaline', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2020-12-15 04:20:24', '2023-06-05 15:37:09'),
(6, 3, 'Sage', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2020-12-28 15:11:41', '2023-06-05 15:37:09'),
(7, 8, 'Kyra', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2020-05-15 11:55:14', '2023-06-05 15:37:09'),
(8, 11, 'Virgil', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2021-08-31 07:19:23', '2023-06-05 15:37:09'),
(9, 1, 'Julianne', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2020-06-04 03:41:15', '2023-06-05 15:37:09'),
(10, 13, 'Winfield', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2021-03-26 11:29:41', '2023-06-05 15:37:09'),
(11, 11, 'Maxie', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2022-08-06 07:29:05', '2023-06-05 15:37:09'),
(12, 16, 'Brandy', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2021-07-10 23:08:47', '2023-06-05 15:37:09'),
(13, 7, 'Maximilian', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2022-09-04 03:28:04', '2023-06-05 15:37:09'),
(14, 16, 'Brooks', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2021-07-27 23:24:28', '2023-06-05 15:37:09'),
(15, 15, 'Audreanne', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2021-12-05 19:47:01', '2023-06-05 15:37:09'),
(16, 2, 'Larissa', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2022-02-08 22:15:34', '2023-06-05 15:37:09'),
(17, 10, 'Joany', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2023-02-13 19:01:19', '2023-06-05 15:37:09'),
(18, 7, 'Corrine', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2020-03-07 22:55:11', '2023-06-05 15:37:09'),
(19, 10, 'Donato', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2020-02-29 05:36:21', '2023-06-05 15:37:09'),
(20, 8, 'Kiley', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2022-08-16 12:32:45', '2023-06-05 15:37:09'),
(21, 9, 'Jerome', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2022-02-20 16:27:43', '2023-06-05 15:37:09'),
(22, 1, 'Jammie', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2020-10-01 20:17:24', '2023-06-05 15:37:09'),
(23, 8, 'Curtis', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2022-06-12 06:15:03', '2023-06-05 15:37:09'),
(24, 10, 'Alexandra', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2020-05-13 14:33:02', '2023-06-05 15:37:09'),
(25, 14, 'Drew', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2021-06-20 12:29:33', '2023-06-05 15:37:09'),
(26, 9, 'Michael', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2021-03-26 09:46:32', '2023-06-05 15:37:09'),
(27, 14, 'Chelsie', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2022-02-07 20:47:29', '2023-06-05 15:37:09'),
(28, 14, 'Laila', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2021-03-09 19:53:33', '2023-06-05 15:37:09'),
(29, 6, 'Audie', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2021-12-30 19:39:43', '2023-06-05 15:37:09'),
(30, 11, 'Noe', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2023-03-29 17:10:38', '2023-06-05 15:37:09'),
(31, 4, 'Bonita', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2021-01-15 01:00:11', '2023-06-05 15:37:09'),
(32, 9, 'Jerod', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2022-09-19 03:53:04', '2023-06-05 15:37:09'),
(33, 9, 'Marie', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2021-05-25 18:20:11', '2023-06-05 15:37:09'),
(34, 15, 'Reina', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2020-07-17 18:19:56', '2023-06-05 15:37:09'),
(35, 13, 'Reta', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2021-01-09 13:55:46', '2023-06-05 15:37:09'),
(36, 8, 'Rowland', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-02-08 02:10:46', '2023-06-05 15:37:09'),
(37, 5, 'Ayla', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2022-06-11 15:34:40', '2023-06-05 15:37:09'),
(38, 13, 'Skyla', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2023-01-25 12:07:19', '2023-06-05 15:37:09'),
(39, 15, 'Evans', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2021-01-14 05:47:49', '2023-06-05 15:37:09'),
(40, 4, 'Alize', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2020-02-02 21:20:45', '2023-06-05 15:37:09'),
(41, 6, 'Ezra', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2022-06-06 03:07:10', '2023-06-05 15:37:09'),
(42, 7, 'Carmen', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2022-02-01 23:09:18', '2023-06-05 15:37:09'),
(43, 15, 'Gregoria', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2021-08-15 08:53:45', '2023-06-05 15:37:09'),
(44, 16, 'Marco', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2022-06-24 12:55:06', '2023-06-05 15:37:09'),
(45, 8, 'Rebecca', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2021-05-07 23:33:26', '2023-06-05 15:37:09'),
(46, 10, 'Laila', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2022-04-18 05:36:13', '2023-06-05 15:37:09'),
(47, 9, 'Lillie', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2021-09-14 15:51:32', '2023-06-05 15:37:09'),
(48, 6, 'Lydia', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2023-03-05 11:59:35', '2023-06-05 15:37:09'),
(49, 11, 'Burley', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2023-05-31 13:30:30', '2023-06-05 15:37:09'),
(50, 8, 'Hudson', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2020-08-25 17:53:08', '2023-06-05 15:37:09'),
(51, 16, 'Laurine', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2023-01-06 20:00:07', '2023-06-05 15:37:09'),
(52, 1, 'Zoie', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2020-02-28 12:53:29', '2023-06-05 15:37:09'),
(53, 15, 'Catalina', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2023-04-15 20:04:07', '2023-06-05 15:37:09'),
(54, 12, 'Joannie', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2022-10-26 23:02:35', '2023-06-05 15:37:09'),
(55, 1, 'Randall', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2022-12-14 14:56:11', '2023-06-05 15:37:09'),
(56, 4, 'Cloyd', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2020-11-17 07:54:45', '2023-06-05 15:37:09'),
(57, 11, 'Albert', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2020-05-16 05:36:10', '2023-06-05 15:37:09'),
(58, 10, 'Amiya', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2020-06-08 00:57:16', '2023-06-05 15:37:09'),
(59, 7, 'Noemy', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2021-03-02 16:06:31', '2023-06-05 15:37:09'),
(60, 13, 'Mathias', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2020-10-18 21:21:14', '2023-06-05 15:37:09'),
(61, 10, 'Jerod', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2020-06-12 14:33:44', '2023-06-05 15:37:09'),
(62, 1, 'Darren', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2023-01-04 10:10:45', '2023-06-05 15:37:09'),
(63, 6, 'Abdul', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2022-11-28 13:59:13', '2023-06-05 15:37:09'),
(64, 14, 'Estevan', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2021-10-08 07:38:05', '2023-06-05 15:37:09'),
(65, 11, 'Marjolaine', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2021-07-18 23:07:21', '2023-06-05 15:37:09'),
(66, 12, 'Mathias', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2023-01-20 01:32:14', '2023-06-05 15:37:09'),
(67, 4, 'Winnifred', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2023-03-19 00:45:24', '2023-06-05 15:37:09'),
(68, 5, 'Dwight', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2020-09-14 04:55:48', '2023-06-05 15:37:09'),
(69, 16, 'Agnes', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2023-03-06 08:53:32', '2023-06-05 15:37:09'),
(70, 10, 'Saige', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2021-07-16 14:44:57', '2023-06-05 15:37:09'),
(71, 5, 'Wallace', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2023-01-28 00:54:30', '2023-06-05 15:37:09'),
(72, 4, 'Alayna', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2022-09-04 17:59:37', '2023-06-05 15:37:09'),
(73, 12, 'Lindsay', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2021-09-26 11:43:16', '2023-06-05 15:37:09'),
(74, 16, 'Beulah', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2021-03-23 13:14:36', '2023-06-05 15:37:09'),
(75, 2, 'Stella', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2022-06-15 05:06:28', '2023-06-05 15:37:09'),
(76, 7, 'Orville', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2020-09-24 23:34:17', '2023-06-05 15:37:09');
INSERT INTO `reviews` (`id`, `teacher_id`, `userReview`, `review`, `deleted_at`, `created_at`, `updated_at`) VALUES
(77, 8, 'Nettie', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2021-07-17 05:09:51', '2023-06-05 15:37:09'),
(78, 14, 'Ali', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2021-03-07 14:35:48', '2023-06-05 15:37:09'),
(79, 11, 'Lawson', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2021-03-18 12:10:58', '2023-06-05 15:37:09'),
(80, 6, 'Harmony', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2020-09-02 15:38:05', '2023-06-05 15:37:09'),
(81, 9, 'Annamarie', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2022-03-06 23:42:47', '2023-06-05 15:37:09'),
(82, 9, 'Jasmin', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2021-04-18 22:19:50', '2023-06-05 15:37:09'),
(83, 11, 'Macey', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2021-04-26 18:39:38', '2023-06-05 15:37:09'),
(84, 3, 'Isaac', 'Sono estremamente soddisfatto della prestazione del corso! Gli argomenti trattati sono stati presentati in modo chiaro \n            e dettagliato, consentendomi di acquisire una solida comprensione dei concetti fondamentali.\n            Il docente è stato straordinario nel comunicare le informazioni in modo coinvolgente ed entusiasmante. La sua passione per \n            il soggetto si è riversata nella mia motivazione e mi ha spinto ad approfondire ulteriormente gli argomenti.\n            Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di mettere in pratica ciò che stavo imparando.', NULL, '2021-10-07 06:17:59', '2023-06-05 15:37:09'),
(85, 1, 'Isom', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2022-08-23 17:20:32', '2023-06-05 15:37:09'),
(86, 1, 'Nash', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2023-05-03 17:52:39', '2023-06-05 15:37:09'),
(87, 8, 'Tyrell', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2020-10-29 02:22:21', '2023-06-05 15:37:09'),
(88, 9, 'Brooke', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2022-05-04 14:52:19', '2023-06-05 15:37:09'),
(89, 5, 'Fredrick', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2021-04-23 14:59:09', '2023-06-05 15:37:09'),
(90, 6, 'Peyton', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2022-04-06 19:32:57', '2023-06-05 15:37:09'),
(91, 3, 'Annette', 'È stato un corso eccezionale! La prestazione del docente è stata davvero eccellente. Le sue spiegazioni erano chiare e coinvolgenti, \n            rendendo il materiale facilmente comprensibile. Ho apprezzato particolarmente l\'approccio pratico del corso, che mi ha permesso di \n            mettere subito in pratica le conoscenze acquisite. Il corso è stato strutturato in modo efficace, coprendo tutti gli argomenti \n            chiave in modo completo. Inoltre, l\'interazione con gli altri partecipanti è stata stimolante e arricchente. \n            Consiglio vivamente questo corso a chiunque desideri ottenere una formazione di qualità!', NULL, '2020-01-04 22:12:31', '2023-06-05 15:37:09'),
(92, 8, 'Weston', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2021-12-16 14:37:39', '2023-06-05 15:37:09'),
(93, 2, 'Lizeth', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2021-02-23 20:46:17', '2023-06-05 15:37:09'),
(94, 11, 'Hudson', 'Sono profondamente deluso dalla prestazione del corso. Le lezioni erano poco chiare e il \n            materiale didattico era insufficiente. L\'insegnante sembrava poco preparato e non riusciva \n            a rispondere alle nostre domande. Non ho appreso nulla di nuovo e ho trovato la lezione noiosa. \n            Non consiglierei questo corso a nessuno.', NULL, '2022-09-06 11:34:09', '2023-06-05 15:37:09'),
(95, 5, 'Molly', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2020-11-09 09:24:31', '2023-06-05 15:37:09'),
(96, 2, 'Zula', 'La prestazione del corso è stata discreta. Ho apprezzato alcuni concetti trattati durante le lezioni, \n            ma ho trovato che altri argomenti fossero un po\' confusi. Gli esercizi proposti sono stati utili per mettere \n            in pratica le nozioni apprese, ma avrei preferito una maggiore varietà di attività. L\'insegnante era competente, \n            ma avrei gradito una maggiore chiarezza nelle spiegazioni. Nel complesso, il corso ha fornito una buona base, \n            ma ci sarebbe stato spazio per miglioramenti.', NULL, '2021-03-22 00:35:08', '2023-06-05 15:37:09'),
(97, 8, 'Bobbie', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2020-01-12 11:57:09', '2023-06-05 15:37:09'),
(98, 11, 'Anika', 'Mi dispiace dover esprimere una valutazione così bassa per questo corso. Ho trovato la prestazione\n            del corso estremamente deludente. La qualità del materiale didattico era scarsa e poco esaustiva, \n            rendendo difficile comprendere i concetti chiave. La metodologia di insegnamento era confusa e poco \n            organizzata, mancava di struttura e chiarezza. Gli esercizi e le attività proposte erano poco coinvolgenti \n            e non riuscivo a trovare motivazione nell\'apprendimento. Spero che in futuro siano apportate miglioramenti \n            significativi per offrire una migliore esperienza di apprendimento agli studenti.', NULL, '2022-02-08 12:50:19', '2023-06-05 15:37:09'),
(99, 8, 'Eldridge', 'Mi sono trovato molto bene con questo corso. Gli argomenti trattati sono stati presentati in modo chiaro e esaustivo, \n            permettendomi di acquisire conoscenze preziose. L\'insegnante è stato competente e disponibile nel rispondere alle mie \n            domande. Le lezioni sono state strutturate in maniera organizzata, rendendo l\'apprendimento facile e piacevole. \n            Le risorse fornite, come materiale didattico e esercizi pratici, sono state utili per consolidare quanto appreso. \n            Nel complesso, consiglio vivamente questo corso, che mi ha aiutato a migliorare le mie competenze nel settore.', NULL, '2022-01-14 17:53:43', '2023-06-05 15:37:09'),
(100, 4, 'Edward', 'Gli esercizi e le attività sono stati di grande aiuto per consolidare le mie competenze.\n            La struttura del corso è stata ben organizzata e sequenziale, consentendomi di seguire facilmente il percorso di apprendimento. \n            Ho apprezzato anche la disponibilità del materiale di supporto, come slide e risorse aggiuntive.\n            Nel complesso, consiglierei questo corso a chiunque desideri acquisire competenze solide e pratiche. \n            È stato un\'esperienza formativa eccezionale e mi ha fornito una base solida per il mio percorso professionale.', NULL, '2022-12-30 22:02:50', '2023-06-05 15:37:09');

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
(1, 'Maestro del benessere spirituale', '/Archivio/01.jpg', 'Il  Maestro  del  benessere  spirituale  è  un  professionista  che  si  occupa  di  guidare  e \n                supportare gli individui nel loro percorso di crescita interiore, equilibrio e benessere \n                spirituale.  Attraverso  l\'uso  di  tecniche  e  pratiche  come  la  meditazione,  la \n                visualizzazione,  la  guarigione  energetica  e  la  consapevolezza,  il  Maestro  del \n                benessere  spirituale  aiuta  le  persone  a  connettersi  con  il  proprio  sé  interiore,  a \n                scoprire  la  propria  saggezza  interiore  e  a  sviluppare  una  maggiore  consapevolezza \n                spirituale. Questa figura professionale fornisce un ambiente sicuro e di supporto per \n                l\'esplorazione  e  la  trasformazione  personale,  promuovendo  il  benessere  spirituale  e \n                l\'equilibrio nella vita quotidiana.', 'Maestro', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(2, 'Esperto di crescita finanziaria rapida', '/Archivio/02.jpeg', 'L\'Esperto  di  crescita finanziaria  rapida  è  un  professionista  specializzato \n                nell\'identificazione e nell\'attuazione di strategie finanziarie innovative per accelerare \n                la  crescita  economica.  Utilizzando  un  approccio  analitico  e  creativo,  collabora  con \n                individui,  imprese  e  organizzazioni  per  massimizzare  il  rendimento  degli \n                investimenti,  migliorare  l\'efficienza  operativa  e  sviluppare  opportunità  di  crescita  a \n                breve  termine.  Attraverso  l\'analisi  dei  dati finanziari,  lo  studio  dei  mercati  e \n                l\'applicazione di modelli di business innovativi, l\'esperto di crescita finanziaria rapida \n                è  in  grado  di  identificare  soluzioni  personalizzate  per  ottenere  risultati finanziari \n                straordinari in un breve lasso di tempo.', 'Esperto', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(3, 'Coach di vita spirituale', '/Archivio/03.jpeg', 'Un  coach  di  vita  spirituale  è  un  professionista  che  aiuta  le  persone  a  esplorare  e \n                sviluppare il loro benessere spirituale. Attraverso un approccio personalizzato, guida i \n                clienti  nella  scoperta  dei  loro  valori,  delle  credenze  e  degli  obiettivi  spirituali, \n                offrendo  supporto,  ispirazione  e  motivazione  lungo  il  percorso.  Il  coach  di  vita \n                spirituale fornisce strumenti pratici per approfondire la connessione con se stessi, gli \n                altri  e  il  mondo  circostante,  promuovendo  la  crescita  personale,  la  consapevolezza, \n                l\'autenticità  e  l\'equilibrio  interiore.  Questa  professione  mira  a  favorire  una  vita  più \n                significativa,  centrata  e  armoniosa,  facilitando  la  realizzazione  del  potenziale \n                spirituale dei clienti.', 'Professionista', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(4, 'Specialista di marketing magico', '/Archivio/04.jpeg', 'Lo  Specialista  di  marketing  magico  è  un  esperto  nel  combinare  incantesimi  e \n                strategie di marketing per creare campagne uniche ed efficaci. Utilizza il potere della \n                magia  per  incantare  il  pubblico,  creando  esperienze  indimenticabili  e  coinvolgenti. \n                Sfruttando incantesimi di persuasione e telepatia, lo Specialista di marketing magico \n                è  in  grado  di  comprendere  i  desideri  e  le  aspettative  dei  clienti,  offrendo  loro \n                soluzioni  personalizzate.  Con  una  combinazione  di  creatività,  intuizione  e  abilità \n                magiche,  lo  Specialista  di  marketing  magico  aiuta  le  aziende  a  distinguersi  dalla \n                concorrenza e a raggiungere il successo nel mondo affascinante del marketing.', 'Guru', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(5, 'Esperto di pulizia energetica delle case', '/Archivio/05.jpeg', 'L\'esperto  di  pulizia  energetica  negativa  delle  case  è  un  professionista  specializzato \n                nel  rilevare  e  rimuovere  le  energie  negative  presenti  negli  ambienti  domestici. \n                Utilizzando  strumenti  e  tecniche  specifiche,  analizza  le  energie  disarmoniche  e  le \n                fonti  di  disturbo,  come  campi  elettromagnetici  o  presenze  energetiche  indesiderate. \n                Attraverso  pratiche  di  purificazione  energetica,  come  la  smagnetizzazione, \n                l\'incensazione  o  l\'utilizzo  di  cristalli,  l\'esperto  ripristina  l\'equilibrio  e  l\'armonia \n                nell\'ambiente,  promuovendo  un\'energia  positiva  e  favorevole  alla  salute  e  al \n                benessere  degli  abitanti.  Collabora  anche  con  i  proprietari  per  fornire  consigli  su \n                come mantenere l\'equilibrio energetico nel tempo.', 'Guru', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(6, 'Maestro alla lettura delle foglie del tè', '/Archivio/06.jpeg', 'Il Maestro della lettura delle foglie del tè è un esperto che interpreta simboli e segni \n                presenti nelle foglie del tè dopo la loro infusione. Con abilità intuitive e conoscenza \n                delle  tradizioni,  analizza  la  forma,  la  posizione  e  i  pattern  delle  foglie  per  predire \n                eventi  futuri  o  dare  consigli.  Utilizzando  l\'arte  della  divinazione,  questo  maestro \n                decodifica i messaggi nascosti nel tè, offrendo saggezza e guida ai suoi clienti. La sua \n                pratica  richiede  attenzione,  intuizione  e  capacità  di  comunicare  in  modo  empatico, \n                creando un\'esperienza unica di scoperta e introspezione attraverso il semplice atto di \n                bere una tazza di tè.', 'Maestro', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(7, 'Consulente di illuminazione cosmica', '/Archivio/07.jpeg', 'Il Consulente di Illuminazione Cosmica è un professionista che si occupa di offrire \n                supporto  e  guida  nell\'approfondimento  della  connessione  tra  l\'individuo  e  l\'energia \n                cosmica.  Attraverso  una  combinazione  di  conoscenze  astrologiche,  spirituali  e \n                intuitive, il consulente aiuta le persone a comprendere il proprio percorso di vita, le \n                influenze  celesti  e  l\'energia  cosmica  che  le  circonda.  Utilizzando  strumenti  come  il \n                tema  natale  e  le  carte  astrali,  fornisce  consigli  personalizzati,  indicazioni \n                sull\'equilibrio  energetico  e  metodi  per  sfruttare  al  meglio  il  proprio  potenziale \n                spirituale. Il consulente di illuminazione cosmica facilita l\'illuminazione interiore e il \n                raggiungimento di uno stato di armonia e consapevolezza.', 'Illustre', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(8, 'Specialista in terapia del respiro degli unicorni', '/Archivio/08.webp', 'Il  ruolo  di  Specialista  in  terapia  del  respiro  degli  unicorni  è  un  connubio  tra  la  cura  del \n                respiro umano e l\'uso delle proprietà magiche degli unicorni. Questi esperti sono in grado di \n                combinare tecniche respiratorie avanzate con l\'energia positiva rilasciata dagli unicorni per \n                promuovere la salute e il benessere. Attraverso sessioni di terapia personalizzate, aiutano gli \n                individui a migliorare la qualità del respiro, rilassarsi e alleviare lo stress. Utilizzando una \n                combinazione  di  tecniche  di  respirazione,  meditazione  e  la  presenza  rassicurante  degli \n                unicorni,  questi  specialisti  offrono  un  approccio  unico  per  il  trattamento  di  disturbi \n                respiratori e il potenziamento della salute generale.', 'Professionista', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(9, 'Dubai lifestyle coach', '/Archivio/09.jpeg', 'Un Dubai lifestyle coach è un professionista che aiuta le persone a migliorare la loro qualità \n                di vita e il loro benessere globale. Offrono consulenza personalizzata su diversi aspetti della \n                vita, come la gestione dello stress, l\'equilibrio tra lavoro e vita privata, l\'alimentazione, il \n                fitness  e  le  relazioni  personali.  Sfruttando  una  combinazione  di  tecniche  di  coaching, \n                consulenza e strategie di sviluppo personale, lavorano con i clienti per identificare obiettivi \n                chiari e pianificare azioni concrete per raggiungerli. Un lifestyle coach a Dubai tiene conto \n                anche delle specificità culturali e degli stili di vita della città, offrendo un supporto adatto a \n                questo contesto cosmopolita e dinamico.', 'Principiante', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(10, 'Sacerdote delle cryptovalute', '/Archivio/10.jpeg', 'Il  Sacerdote  delle  cryptovalute  per  cerimonie  di  benedizione  e  protezione  è  un  esperto \n                spirituale che si occupa di guidare e assistere i fedeli nel mondo delle criptovalute. Con una \n                profonda  conoscenza  delle  blockchain  e  delle  nuove  tecnologie finanziarie,  il  Sacerdote \n                offre  cerimonie  speciali  per  benedire  e  proteggere  i  portafogli  digitali  e  le  transazioni \n                criptate. Attraverso  rituali  simbolici  e  preghiere  adattate  al  contesto  delle  cryptovalute,  il \n                Sacerdote promuove la consapevolezza, la sicurezza e la prosperità finanziaria nel mondo \n                digitale. La sua missione è unire la fede e la tecnologia per aiutare i credenti a navigare nel \n                vasto universo delle criptovalute.', 'Gran maestro', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(11, 'Professore della comunicazione aliena', '/Archivio/11.webp', 'Il  Professore  di  Comunicazione  Aliena  è  un  esperto  nel  campo  dell\'interazione  e  della \n                comprensione  delle  forme  di  comunicazione  extraterrestre. Attraverso  lo  studio  di  lingue, \n                simboli  e  modelli  di  comunicazione  alieni,  il  professore  analizza  e  interpreta  i  messaggi \n                provenienti  da  civiltà  extraterrestri.  Utilizza  metodologie  avanzate  per  decifrare  i  segnali, \n                creando  ponti  di  comunicazione  con  le  culture  aliene.  Lavora  anche  per  diffondere  la \n                consapevolezza sull\'esistenza di vita extraterrestre e promuovere una comprensione pacifica \n                tra le specie. La sua ricerca contribuisce alla conoscenza dell\'universo e all\'apertura di nuove \n                frontiere per l\'umanità.', 'Professionista', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(12, 'Esperto di gestione patrimoniale di crypto', '/Archivio/12.jpeg', 'L\'Esperto di gestione patrimoniale di crypto è un professionista specializzato nell\'aiutare i \n                clienti a gestire i loro investimenti in criptovalute. Con una solida conoscenza delle diverse \n                criptovalute, delle strategie di trading e degli aspetti legali e regolamentari, l\'esperto offre \n                consulenza  personalizzata  per  massimizzare  i  rendimenti  e  mitigare  i  rischi.  Attraverso \n                l\'analisi  dei  mercati,  l\'esperto  consiglia  sulle  opportunità  di  investimento,  sulla \n                diversificazione del portafoglio e sulla gestione delle transazioni. Svolge anche compiti di \n                sicurezza, identificando le minacce e proponendo soluzioni per proteggere i fondi dei clienti. \n                La sua competenza aiuta a guidare i clienti attraverso il complesso mondo delle criptovalute, \n                fornendo una gestione professionale del patrimonio digitale.', 'Esperto', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(13, 'Lifecoach per il successo finanziario', '/Archivio/13.jpeg', 'Il Life Coach per il successo finanziario attraverso le cryptovalute è un professionista che \n                guida e supporta le persone nell\'esplorare e sfruttare le opportunità finanziarie offerte dalle \n                criptovalute. Utilizzando la propria esperienza e competenza nel settore delle criptovalute, il \n                Life  Coach  aiuta  i  clienti  a  comprendere  i  concetti  fondamentali  delle  criptovalute,  a \n                identificare  opportunità  di  investimento  e  a  sviluppare  strategie  personalizzate  per \n                massimizzare  i  guadagni. Attraverso  sessioni  di  coaching  individuali  o  di  gruppo,  il  Life \n                Coach fornisce orientamento finanziario, incoraggiamento e sostegno emotivo per aiutare i \n                clienti a raggiungere i loro obiettivi finanziari utilizzando le cryptovalute.', 'Esperto', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(14, 'Consulente per il recupero degli amori perduti', '/Archivio/14.webp', 'Un  Consulente  per  il  recupero  degli  amori  perduti  è  un  professionista  specializzato  nel \n                fornire supporto emotivo e strategie pratiche per aiutare le persone a riconnettersi con i loro \n                ex partner. Attraverso sessioni di consulenza individuali o di coppia, il consulente ascolta \n                attentamente  le  esperienze  personali,  identifica  le  problematiche  relazionali  e  suggerisce \n                soluzioni  personalizzate.  Utilizzando  una  combinazione  di  tecniche  di  comunicazione, \n                consapevolezza emotiva e gestione dei conflitti, il consulente aiuta i clienti a comprendere i \n                motivi  della  rottura  e  a  lavorare  verso  una  riconciliazione,  quando  appropriato.  Il  suo \n                obiettivo è aiutare le persone a recuperare e coltivare relazioni amorose significative.', 'Professionista', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(15, 'Maestro della terapia degli abbracci', '/Archivio/15.jpeg', 'Il Maestro della terapia degli abbracci è un professionista esperto nell\'arte di fornire comfort \n                e  sostegno  attraverso  l\'abbraccio.  Con  una  profonda  conoscenza  delle  esigenze  emotive  e \n                fisiche  delle  persone,  il  Maestro  crea  uno  spazio  sicuro  e  accogliente  in  cui  gli  individui \n                possono  esprimere  le  proprie  emozioni  e  trovare  sollievo  dallo  stress  e  dalla  solitudine. \n                Attraverso  abbracci  empatici  e  amorevoli,  il  Maestro  facilita  il  rilascio  di  endorfine  e  la \n                riduzione  dello  stress,  promuovendo  il  benessere  mentale  e fisico.  Questa  professione \n                richiede  sensibilità,  empatia  e  una  profonda  comprensione  del  potere  curativo \n                dell\'abbraccio.', 'Gran maestro', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09');

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
(2, 11),
(2, 3),
(3, 14),
(8, 6),
(8, 4),
(9, 2),
(5, 2),
(7, 5),
(4, 13),
(4, 8),
(15, 3),
(15, 2),
(11, 4),
(6, 4),
(1, 7),
(1, 2),
(13, 7),
(13, 4),
(10, 8),
(10, 10),
(16, 9),
(14, 13),
(12, 4);

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
(1, 2.99, 'Sponsorizza il tuo profilo da teacher per 24 ore e massimizza \n                la visibilità delle tue lezioni. Il tuo profilo sarà evidenziato nella sezione \n                dedicata agli utenti in cerca di insegnanti e riceverà maggiore attenzione da parte\n                degli studenti interessati. Approfitta di questa opportunità per aumentare \n                l\'esposizione delle tue competenze e raggiungere un pubblico più ampio.', 24, NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(2, 5.99, 'Porta il tuo profilo al livello successivo con il pacchetto di \n                sponsorizzazione di 72 ore. Durante questo periodo, il tuo profilo sarà in evidenza, \n                garantendoti una posizione privilegiata nelle ricerche degli utenti. \n                Sfrutta questa promozione per attirare ancora più studenti e promuovere le tue lezioni \n                in modo efficace. Ottieni una visibilità duratura e aumenta le tue opportunità \n                di insegnamento.', 72, NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(3, 9.99, 'Fai brillare il tuo profilo per un\'intera settimana con il pacchetto di \n                sponsorizzazione di 144 ore. Questa opzione ti offre un\'elevata esposizione, posizionando \n                il tuo profilo in cima alla lista dei teacher consigliati. Approfitta di questa offerta per \n                catturare l\'attenzione degli studenti e costruire la tua reputazione come insegnante di qualità. \n                Massimizza il tuo potenziale di guadagno e amplia la tua base di studenti con questa \n                sponsorizzazione di lunga durata.', 144, NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09');

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
(2, 3, NULL, NULL),
(3, 2, NULL, NULL),
(8, 3, NULL, NULL),
(9, 1, NULL, NULL),
(9, 3, NULL, NULL),
(5, 3, NULL, NULL),
(5, 1, NULL, NULL),
(7, 2, NULL, NULL),
(7, 1, NULL, NULL),
(4, 1, NULL, NULL),
(15, 3, NULL, NULL),
(15, 2, NULL, NULL),
(11, 3, NULL, NULL),
(6, 1, NULL, NULL),
(6, 3, NULL, NULL),
(1, 3, NULL, NULL),
(1, 1, NULL, NULL),
(13, 2, NULL, NULL),
(10, 2, NULL, NULL),
(10, 1, NULL, NULL),
(16, 3, NULL, NULL),
(14, 3, NULL, NULL),
(14, 2, NULL, NULL),
(12, 2, NULL, NULL);

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
(1, 1, NULL, NULL, '/img/cv/CV-1.png', '/img/volti/lars-andersen.png', '+45 12345678', '2221865267787567', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(2, 2, NULL, NULL, '/img/cv/CV-2.png', '/img/volti/alessandro-ferrari.png', '+39 0123456789', '5315228206985125', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(3, 3, NULL, NULL, '/img/cv/CV-3.png', '/img/volti/anna-muller.png', '+49 1234567890', '4532278600268479', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(4, 4, NULL, NULL, '/img/cv/CV-4.png', '/img/volti/gabriel-schmidt.png', '+49 9876543210', '5577642593395271', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(5, 5, NULL, NULL, '/img/cv/CV-5.png', '/img/volti/elena-fisher.png', '+41 7878787878', '5147757779549375', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(6, 6, NULL, NULL, '/img/cv/CV-6.png', '/img/volti/jackson-thompson.png', '+1 2125556789', '6011242825838008', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(7, 7, NULL, NULL, '/img/cv/CV-7.png', '/img/volti/ethan-rodriguez.png', '+34 612345678', '5549051562708677', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(8, 8, NULL, NULL, '/img/cv/CV-8.png', '/img/volti/ava-smith.png', '+44 2071234567', '5129255228735036', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(9, 9, NULL, NULL, '/img/cv/CV-9.png', '/img/volti/benjamin-brown.png', '+1 1619876543', '4556764094846566', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(10, 10, NULL, NULL, '/img/cv/CV-10.png', '/img/volti/mia-clark.png', '+61 290123456', '5121635144506520', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(11, 11, NULL, NULL, '/img/cv/CV-11.png', '/img/volti/hiroshi-tanaka.png', '+81 345678901', '3528977007242247', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(12, 12, NULL, NULL, '/img/cv/CV-12.png', '/img/volti/sakura-yamamoto.png', '+81 234567890', '3589152798512226', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(13, 13, NULL, NULL, '/img/cv/CV-13.png', '/img/volti/mei-ling.png', '+86 13987654321', '2720775740830700', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(14, 14, NULL, NULL, '/img/cv/CV-14.png', '/img/volti/raj-patel.png', '+91 9876543210', '2720110526423928', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(15, 15, NULL, NULL, '/img/cv/CV-15.png', '/img/volti/giovanni-rotella.png', '+39 3456789123', '4556979879580699', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(16, 16, NULL, NULL, '/img/cv/CV-16.png', '/img/volti/morena-piemontese.png', '+33 1234567891', '4716531801398141', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09');

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
(2, 5),
(2, 2),
(3, 1),
(3, 5),
(3, 2),
(3, 4),
(8, 4),
(8, 2),
(9, 1),
(9, 2),
(9, 5),
(9, 3),
(5, 5),
(5, 1),
(5, 2),
(7, 4),
(7, 3),
(7, 1),
(4, 3),
(4, 2),
(15, 3),
(15, 1),
(15, 5),
(11, 1),
(11, 3),
(11, 5),
(11, 4),
(11, 2),
(6, 4),
(6, 1),
(6, 2),
(6, 5),
(1, 3),
(1, 4),
(13, 4),
(13, 1),
(13, 2),
(10, 1),
(10, 3),
(10, 5),
(10, 4),
(16, 5),
(14, 4),
(14, 5),
(12, 2),
(12, 4),
(12, 1),
(12, 5),
(12, 3);

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
(1, 'Lars Andersen', 'lars.andersen@post.tele.dk', NULL, '$2y$10$11m9vjEv2LftXMb7kb64l.OebYQfmY.dIDkNI1JDdFYPAqk6WGcYi', 'Vesterbrogade 12, Copenaghen, Danimarca', NULL, '2023-06-05 15:37:06', '2023-06-05 15:37:06'),
(2, 'Alessandro Ferrari', 'alessandro.ferrari@gmail.com', NULL, '$2y$10$RK42SKkSKISPKuQRRB67ju3fjEvGIVTU4KnlPahf5KPG30qaxg2Pa', 'Via Maranello 20, Modena, Italia', NULL, '2023-06-05 15:37:06', '2023-06-05 15:37:06'),
(3, 'Anna Müller', 'anna.müller@versanet.de', NULL, '$2y$10$BNacPpRPn.nMOf4ANmanxu.nx7NpiLwZSdWXheYaStM6H3duU6Si2', 'Mühlenstraße 8 Berlino, Germania', NULL, '2023-06-05 15:37:06', '2023-06-05 15:37:06'),
(4, 'Gabriel Schmidt', 'gabriel.schmidt@mail.de', NULL, '$2y$10$L6Bfk3YpCQEAvVv9DHbq6errKwASLXWAAhVC5UnP/ImMv.EZdberq', 'Hauptstraße 15, Francoforte, Germania', NULL, '2023-06-05 15:37:06', '2023-06-05 15:37:06'),
(5, 'Elena Fischer', 'elena.fischer@bluemail.ch', NULL, '$2y$10$J30.vDvH5KreSvJ9UrQttulkpBCLckw7MgphPl1WwYrLMucBPrSBW', 'Fischerweg 5, Zurigo, Svizzera', NULL, '2023-06-05 15:37:06', '2023-06-05 15:37:06'),
(6, 'Jackson Thompson', 'jackson.thompson@aol.com', NULL, '$2y$10$NdMpLiqubwM4ZgG1FDIPxONPMMQgLpEmtPe43SfePkxE4j78IrnXK', 'Thompson Street 7, New York, Stati Uniti', NULL, '2023-06-05 15:37:07', '2023-06-05 15:37:07'),
(7, 'Ethan Rodriguez', 'ethan.rodriguez@yahoo.es', NULL, '$2y$10$C4FhghxvDmjstYSShI..7e8.rQAz1n7VF6oSg8H7khptw7m/FD/M6', 'Calle Principal 23, Madrid, Spagna', NULL, '2023-06-05 15:37:07', '2023-06-05 15:37:07'),
(8, 'Ava Smith', 'ava.smith@virginmedia.com', NULL, '$2y$10$Uoaab6ZjHXIVo/YfMICCqu.jypR9gDWl3WYvjPPyKa0RwgfC/0zFG', 'Smith Street 10, Londra, Regno Unito', NULL, '2023-06-05 15:37:07', '2023-06-05 15:37:07'),
(9, 'Benjamin Brown', 'benjaminbrown@icloud.com', NULL, '$2y$10$l3U8mJhGSmzyVahdfVC58.F1jub505iWxIVQcRFX8Ri/ivLCX/ZuW', 'Brown Avenue 3, Boston, Stati Uniti', NULL, '2023-06-05 15:37:07', '2023-06-05 15:37:07'),
(10, 'Mia Clark', 'miaclark@att.net', NULL, '$2y$10$tj1KgxMJHlicdZ2fjIJ/1ezdYY9ywBRAG30DkjqYF0VF93We9C4Be', 'Clark Road 14, Sydney, Australia', NULL, '2023-06-05 15:37:07', '2023-06-05 15:37:07'),
(11, 'Hiroshi Tanaka', 'hiroshitanaka@ocn.ne.jp', NULL, '$2y$10$k.q/t/k54ZEDq0g9H.gbc.sqpAvWtTZk8DlX5hxFdqyp31.8dm0mC', 'Tanaka-cho 2, Tokyo, Giappone', NULL, '2023-06-05 15:37:08', '2023-06-05 15:37:08'),
(12, 'Sakura Yamamoto', 'sakurayamamoto@biglobe.ne.jp', NULL, '$2y$10$mfYvswaoBkVdQC2H1a2mP.Mh72vebiK.FZp4o7yjNWee0tClJPYt.', 'Yamamoto-dori 6, Kyoto, Giappone', NULL, '2023-06-05 15:37:08', '2023-06-05 15:37:08'),
(13, 'Mei Ling', 'meiling@wo.com.cn', NULL, '$2y$10$CLfj1pqYy4WLZoJ7ltlBNe5SXPyWwgMzVt0tqmi8XMEMrTGVUe4lu', 'Ling Lane 9, Pechino, Cina', NULL, '2023-06-05 15:37:08', '2023-06-05 15:37:08'),
(14, 'Raj Patel', 'rajipatel@zoo.com', NULL, '$2y$10$HfMNiqkwsaAo2VuPeujxauQfSZBrsNQ2CGkQyBNjqECv1Sba1VKMO', 'Patel Nagar 11, Mumbai, India', NULL, '2023-06-05 15:37:08', '2023-06-05 15:37:08'),
(15, 'Giovanni Rotella', 'giovanni.rotella@libero.it', NULL, '$2y$10$/LpppiBFdLZTXmTuQVMb4uwU0M62ykvorVKrVzJNN.2ADZAAOsvdm', 'Via Roma 148, Ravenna Italia', NULL, '2023-06-05 15:37:08', '2023-06-05 15:37:08'),
(16, 'Morena Piemontese', 'morena@gmail.com', NULL, '$2y$10$vP5yip/DWvJMFqRs.WGKl.kHYHQMNXLQW.EaoKRs4Ma1TgENX7FF6', 'Via Dubai 1254, Dubai', NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09');

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
(1, 1, NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(2, 2, NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(3, 3, NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(4, 4, NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09'),
(5, 5, NULL, '2023-06-05 15:37:09', '2023-06-05 15:37:09');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4506;

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
