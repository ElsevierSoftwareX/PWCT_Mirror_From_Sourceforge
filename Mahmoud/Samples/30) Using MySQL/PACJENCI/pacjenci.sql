-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 16 Lut 2013, 18:44
-- Wersja serwera: 5.5.16
-- Wersja PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `pacjenci`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `dane`
--

CREATE TABLE IF NOT EXISTS `dane` (
  `lp` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(32) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(64) COLLATE utf8_polish_ci NOT NULL,
  `pesel` varchar(12) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`lp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=9 ;

--
-- Zrzut danych tabeli `dane`
--

INSERT INTO `dane` (`lp`, `imie`, `nazwisko`, `pesel`) VALUES
(1, 'Piotr', 'Wasilewski', '790111111'),
(2, 'Piotr', 'Wasilewski', '7922323232'),
(3, 'Pawel', 'Ew', '79112341231'),
(4, 'aaa', 'bbb', '333'),
(7, 'ddd', 'ddd', '34324'),
(8, 'fff', 'fff', '3423');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
