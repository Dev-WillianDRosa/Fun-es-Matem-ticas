-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 24-Jun-2024 às 11:22
-- Versão do servidor: 5.7.11
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `menuformulas`
--
CREATE DATABASE IF NOT EXISTS `menuformulas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `menuformulas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `formulas`
--

DROP TABLE IF EXISTS `formulas`;
CREATE TABLE IF NOT EXISTS `formulas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_da_formula` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `formulas`
--

INSERT INTO `formulas` (`id`, `nome_da_formula`) VALUES
(1, 'potencia'),
(2, 'circulo'),
(3, 'juros'),
(4, 'triangulo'),
(5, 'quadrado'),
(6, 'quadrado'),
(7, 'retangulo'),
(8, 'triangulo'),
(9, 'potencia'),
(10, 'quadrado'),
(11, 'circulo'),
(12, 'retangulo'),
(13, 'triangulo'),
(14, 'funcaoquadratica'),
(15, 'juros'),
(16, 'juros'),
(17, 'juros'),
(18, 'retangulo'),
(19, 'triangulo'),
(20, 'retangulo'),
(21, 'triangulo'),
(22, 'progressaoaritmetica'),
(23, 'progressaogeometrica'),
(24, 'amortizacao'),
(25, 'triangulo'),
(26, 'retangulo'),
(27, 'triangulo'),
(28, 'retangulo'),
(29, 'triangulo'),
(30, 'triangulo'),
(31, 'retangulo'),
(32, 'triangulo'),
(33, 'circulo'),
(34, 'triangulo'),
(35, 'triangulo'),
(36, 'juros'),
(37, 'triangulo'),
(38, 'retangulo'),
(39, 'triangulo'),
(40, 'retangulo'),
(41, 'potencia'),
(42, 'retangulo'),
(43, 'triangulo'),
(44, 'potencia'),
(45, 'quadrado'),
(46, 'quadrado'),
(47, 'retangulo'),
(48, 'triangulo'),
(49, 'quadrado'),
(50, 'quadrado'),
(51, 'retangulo'),
(52, 'triangulo'),
(53, 'retangulo'),
(54, 'quadrado'),
(55, 'triangulo'),
(56, 'circulo'),
(57, 'progressaogeometrica'),
(58, 'progressaoaritmetica');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
