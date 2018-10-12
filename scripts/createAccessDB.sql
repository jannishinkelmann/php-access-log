-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 11. Okt 2018 um 22:30
-- Server-Version: 5.6.40
-- PHP-Version: 7.0.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `access`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `access`
--

CREATE TABLE `access` (
  `id` int(11) UNSIGNED NOT NULL,
  `access_page` varchar(60) NOT NULL,
  `access_url` varchar(120) NOT NULL,
  `access_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `access_referrer` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indizes für die Tabelle `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für Tabelle `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
