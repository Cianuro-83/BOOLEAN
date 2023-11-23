-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Nov 23, 2023 alle 12:52
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
-- Database: `recap`
--
CREATE DATABASE IF NOT EXISTS `recap` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `recap`;

-- --------------------------------------------------------

--
-- Struttura della tabella `autori`
--

CREATE TABLE `autori` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `autori`
--

INSERT INTO `autori` (`id`, `nome`) VALUES
(1, 'J.K. Rowling'),
(2, 'Stephen King'),
(3, 'George Orwell'),
(4, 'Mark Twain'),
(5, 'Jane Austen'),
(6, 'Leo Tolstoy'),
(7, 'F. Scott Fitzgerald'),
(8, 'John Steinbeck'),
(9, 'John Doe');

-- --------------------------------------------------------

--
-- Struttura della tabella `generi`
--

CREATE TABLE `generi` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `generi`
--

INSERT INTO `generi` (`id`, `nome`) VALUES
(1, 'Fantasy'),
(2, 'Horror'),
(3, 'Sci-Fi'),
(4, 'Drama');

-- --------------------------------------------------------

--
-- Struttura della tabella `libri`
--

CREATE TABLE `libri` (
  `id` int(11) NOT NULL,
  `titolo` varchar(255) DEFAULT NULL,
  `autore_id` int(11) DEFAULT NULL,
  `genere_id` int(11) DEFAULT NULL,
  `numero_copie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `libri`
--

INSERT INTO `libri` (`id`, `titolo`, `autore_id`, `genere_id`, `numero_copie`) VALUES
(1, 'Harry Potter and the Philosopher\'s Stone', 1, 1, 10),
(2, 'Harry Potter and the Chamber of Secrets', 1, 1, 5),
(3, 'Harry Potter and the Prisoner of Azkaban', 1, 1, 8),
(4, 'Harry Potter and the Goblet of Fire', 1, 1, 12),
(5, 'Harry Potter and the Order of Phoenix', 1, 1, 15),
(6, 'Harry Potter and the Half-Blood Prince', 1, 1, 10),
(7, 'Harry Potter and the Deathly Hallows', 1, 1, 20),
(8, 'The Shining', 2, 2, 5),
(9, 'Carrie', 2, 2, 8),
(10, '1984', 3, 3, 15),
(11, 'Animal Farm', 3, 3, 12),
(12, 'The Adventures of Tom Sawyer', 4, 4, 5),
(13, 'The Adventures of Huckleberry Finn', 4, 4, 10),
(14, 'Pride and Prejudice', 5, 4, 20),
(15, 'Sense and Sensibility', 5, 4, 15),
(16, 'War and Peace', 6, 4, 20),
(17, 'Anna Karenina', 6, 4, 10),
(18, 'The Great Gatsby', 7, 4, 8),
(19, 'Of Mice and Men', 8, 4, 12),
(20, 'The Grapes of Wrath', 8, 4, 15);

-- --------------------------------------------------------

--
-- Struttura della tabella `prestiti`
--

CREATE TABLE `prestiti` (
  `id` int(11) NOT NULL,
  `libro_id` int(11) DEFAULT NULL,
  `utente_id` int(11) DEFAULT NULL,
  `data_prestito` date DEFAULT NULL,
  `data_restituzione` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `prestiti`
--

INSERT INTO `prestiti` (`id`, `libro_id`, `utente_id`, `data_prestito`, `data_restituzione`) VALUES
(1, 1, 1, '2021-04-01', '2021-05-15'),
(2, 2, 1, '2021-04-16', '2021-06-25'),
(3, 3, 2, '2021-05-01', '2021-05-15'),
(4, 1, 2, '2021-05-10', '2021-05-31'),
(5, 1, 3, '2021-06-01', '2021-06-15'),
(6, 3, 3, '2021-06-16', '2021-07-25'),
(7, 3, 1, '2021-07-01', '2021-07-15'),
(8, 3, 1, '2021-07-16', '2021-07-31'),
(9, 4, 2, '2021-08-01', '2021-08-15'),
(10, 5, 3, '2021-06-01', '2021-06-15'),
(11, 6, 3, '2021-06-16', '2021-06-25'),
(12, 7, 1, '2022-07-01', '2022-07-15'),
(13, 8, 1, '2022-07-16', '2022-07-31'),
(14, 9, 2, '2022-08-01', '2022-08-15'),
(15, 10, 1, '2022-04-12', '2022-04-25'),
(16, 11, 2, '2022-05-01', '2022-05-15'),
(17, 12, 2, '2022-05-10', '2022-05-31'),
(18, 13, 3, '2022-06-01', '2022-06-15'),
(19, 14, 3, '2022-06-14', '2022-06-25'),
(20, 15, 1, '2022-07-01', '2022-07-15'),
(21, 16, 1, '2022-07-18', '2022-07-31'),
(22, 17, 2, '2021-08-01', '2021-08-15'),
(23, 18, 2, '2021-08-17', '2021-08-31'),
(24, 18, 3, '2022-08-16', '2022-08-31');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `indirizzo` varchar(255) DEFAULT NULL,
  `data_registrazione` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`id`, `nome`, `indirizzo`, `data_registrazione`) VALUES
(1, 'John Doe', '1234 Main St', '2021-01-01'),
(2, 'Jane Smith', '5678 Park Ave', '2021-02-01'),
(3, 'Bob Johnson', '9101 Elm St', '2021-03-01');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `autori`
--
ALTER TABLE `autori`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `generi`
--
ALTER TABLE `generi`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `libri`
--
ALTER TABLE `libri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autore_id` (`autore_id`),
  ADD KEY `genere_id` (`genere_id`);

--
-- Indici per le tabelle `prestiti`
--
ALTER TABLE `prestiti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libro_id` (`libro_id`),
  ADD KEY `utente_id` (`utente_id`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`id`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `libri`
--
ALTER TABLE `libri`
  ADD CONSTRAINT `libri_ibfk_1` FOREIGN KEY (`autore_id`) REFERENCES `autori` (`id`),
  ADD CONSTRAINT `libri_ibfk_2` FOREIGN KEY (`genere_id`) REFERENCES `generi` (`id`);

--
-- Limiti per la tabella `prestiti`
--
ALTER TABLE `prestiti`
  ADD CONSTRAINT `prestiti_ibfk_1` FOREIGN KEY (`libro_id`) REFERENCES `libri` (`id`),
  ADD CONSTRAINT `prestiti_ibfk_2` FOREIGN KEY (`utente_id`) REFERENCES `utenti` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
