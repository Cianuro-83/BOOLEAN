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
-- Database: `laravel_model_controller`
--
CREATE DATABASE IF NOT EXISTS `laravel_model_controller` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `laravel_model_controller`;

-- --------------------------------------------------------

--
-- Struttura della tabella `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `original_title` varchar(100) DEFAULT NULL,
  `nationality` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `vote` float(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `movies`
--

INSERT INTO `movies` (`id`, `title`, `original_title`, `nationality`, `date`, `vote`) VALUES
(1, 'Il Padrino', 'The Godfather', 'american', '1972-03-24', 9.2),
(2, 'Via Col Vento', 'Gone With The Wind', 'american', '1939-12-15', 8.6),
(3, 'Psycho', 'Psycho', 'american', '1960-06-16', 9.4),
(4, 'Gravity', 'Gravity', 'american/british', '2013-08-28', 7.8),
(5, 'Toy Story - Il Mondo Dei Giocattoli', 'Toy Story', 'american/british', '1995-11-19', 9.0),
(6, 'Pulp Fiction', 'Pulp Fiction', 'american', '1994-10-14', 9.2),
(7, 'Forrest Gump', 'Forrest Gump', 'american/british', '1994-06-23', 8.8),
(8, 'Guerre Stellari', 'Star Wars', 'american', '1977-05-25', 8.6),
(9, 'E.T. - L\'extra-terrestre', 'E.T. The Extra-Terrestrial', 'american', '1982-05-26', 7.9),
(10, 'Il silenzio degli innocenti', 'The Silence of the Lambs', 'american', '1991-01-30', 8.6);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
