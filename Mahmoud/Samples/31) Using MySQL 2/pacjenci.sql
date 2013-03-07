-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 24 Lut 2013, 23:25
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
  `adres` text COLLATE utf8_polish_ci NOT NULL,
  `opis` text COLLATE utf8_polish_ci NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`lp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=29 ;

--
-- Zrzut danych tabeli `dane`
--

INSERT INTO `dane` (`lp`, `imie`, `nazwisko`, `pesel`, `adres`, `opis`, `data`) VALUES
(2, 'Piotr', 'WASILEWSKI2', '7922323232', '', '', '2013-02-19'),
(3, 'Pawel', 'Ew', '79112341231', '', '', '2013-02-19'),
(4, 'aaa', 'bbb', '333', '', '', '2013-02-19'),
(7, 'ddd', 'ddd', '34324', '', '', '2013-02-19'),
(8, 'fff', 'fff', '3423', '', '', '2013-02-19'),
(9, 'ee', 'ff', '3333', '', '', '2013-02-19'),
(10, 'Paweł', 'Fudalewski', '79022145515', 'Wyjechał do Anglii\r\npacjent nieaktywny\r\nnic do dodania', 'ul.Gwarków 12/7\r\n59-300 Lubin', '2013-02-19'),
(11, 'Ewa', 'Wasilewska', '763452431', 'żonka :) \r\nmoja koffana', 'ul.Sztukowskiego\r\n59-300 Lubin', '2013-02-19'),
(12, 'Ewa', 'Wasilewska', '763452431', 'żonka :) \r\nmoja koffana', 'ul.Sztukowskiego\r\n59-300 Lubin', '2013-02-19'),
(13, 'Ewa', 'Wasilewska', '763452431', 'żonka :) \r\nmoja koffana', 'ul.Sztukowskiego\r\n59-300 Lubin', '2013-02-19'),
(14, 'Ewa', 'Wasilewska', '763452431', 'żonka :) \r\nmoja koffana', 'ul.Sztukowskiego\r\n59-300 Lubin', '2013-02-19'),
(15, 'Ewa', 'Wasilewska', '763452431', 'żonka :) \r\nmoja koffana', 'ul.Sztukowskiego\r\n59-300 Lubin', '2013-02-19'),
(16, 'Ewa', 'Wasilewska', '763452431', 'żonka :) \r\nmoja koffana', 'ul.Sztukowskiego\r\n59-300 Lubin', '2013-02-19'),
(17, 'Ewa', 'Wasilewska', '763452431', 'żonka :) \r\nmoja koffana', 'ul.Sztukowskiego\r\n59-300 Lubin', '2013-02-19'),
(18, 'Ewa', 'Wasilewska', '763452431', 'żonka :) \r\nmoja koffana', 'ul.Sztukowskiego\r\n59-300 Lubin', '2013-02-19'),
(19, 'Ewa', 'Wasilewska', '763452431', 'żonka :) \r\nmoja koffana', 'ul.Sztukowskiego\r\n59-300 Lubin', '2013-02-19'),
(20, 'Ewa', 'Wasilewska', '763452431', 'żonka :) \r\nmoja koffana', 'ul.Sztukowskiego\r\n59-300 Lubin', '2013-02-19'),
(21, 'Ewa', 'Wasilewska', '763452431', 'żonka :) \r\nmoja koffana', 'ul.Sztukowskiego\r\n59-300 Lubin', '2013-02-19'),
(22, 'Lord', 'Vader', '82345623413', ' nic tu ciekawego\r\ni nic ciekawego tu', 'ul. Żadna 12\r\n50-252 Niemiasto', '2013-01-10'),
(24, 'a', 'bb', '', '', '', '2013-02-23'),
(25, 'cdcdc', 'cdcdcdc', '', '', '', '2013-02-23'),
(26, 'cccdssf', 'afgaga', '', 'dagfga', 'gfdgagf', '2013-02-23');

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `naglowek`
--

CREATE TABLE IF NOT EXISTS `naglowek` (
  `lp_naglowek` int(11) NOT NULL AUTO_INCREMENT,
  `tekst_naglowek` text COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`lp_naglowek`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `naglowek`
--

INSERT INTO `naglowek` (`lp_naglowek`, `tekst_naglowek`) VALUES
(1, 'Prywatny Gabinet Chirurgiczny Janusz Rozmus specjalista chirurg<br>ul.Budowniczych LGOM 27/10,tel.8410259<br>59-300 Lubin, woj. dolnośląskie<br>Regon:390489941, NIP: 692-143-00-00<br>980104251<br><br><br>');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
