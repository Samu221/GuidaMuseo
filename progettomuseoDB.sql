-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 09, 2024 alle 11:51
-- Versione del server: 10.4.28-MariaDB
-- Versione PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `progettomuseo`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `audio`
--

CREATE TABLE `audio` (
  `id` int(11) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `tipo` text NOT NULL,
  `id_vespa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `image`
--

CREATE TABLE `image` (
  `ID_img` int(11) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `id_vespa` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `vespa`
--

CREATE TABLE `vespa` (
  `ID_vespa` int(3) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Cilindrata` int(3) NOT NULL,
  `Descrizione` varchar(1600) NOT NULL,
  `Artista` varchar(30) NOT NULL,
  `Anno` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`ID_img`),
  ADD KEY `id_vespa` (`id_vespa`);

--
-- Indici per le tabelle `vespa`
--
ALTER TABLE `vespa`
  ADD PRIMARY KEY (`ID_vespa`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `audio`
--
ALTER TABLE `audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `image`
--
ALTER TABLE `image`
  MODIFY `ID_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT per la tabella `vespa`
--
ALTER TABLE `vespa`
  MODIFY `ID_vespa` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
