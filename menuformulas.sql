-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 21/09/2024 às 02:50
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `menuformulas`
--
CREATE DATABASE IF NOT EXISTS `menuformulas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `menuformulas`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `formulas`
--

DROP TABLE IF EXISTS `formulas`;
CREATE TABLE IF NOT EXISTS `formulas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_da_formula` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `formulas`
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
(58, 'progressaoaritmetica'),
(59, 'amortizacao'),
(60, 'funcaoquadratica'),
(61, 'juros'),
(62, 'pitagoras'),
(63, 'retangulo'),
(64, 'retangulo'),
(65, 'progressaoaritmetica'),
(66, 'progressaogeometrica'),
(67, 'triangulo'),
(68, 'potencia'),
(69, 'quadrado'),
(70, 'circulo'),
(71, 'retangulo'),
(72, 'triangulo'),
(73, 'potencia'),
(74, 'funcaoquadratica'),
(75, 'juros'),
(76, 'amortizacao'),
(77, 'pitagoras'),
(78, 'progressaoaritmetica'),
(79, 'progressaogeometrica'),
(80, 'progressaoaritmetica'),
(81, 'progressaogeometrica'),
(82, 'quadrado'),
(83, 'triangulo'),
(84, 'quadrado'),
(85, 'circulo'),
(86, 'retangulo'),
(87, 'triangulo'),
(88, 'potencia'),
(89, 'funcaoquadratica'),
(90, 'funcaoquadratica'),
(91, 'juros'),
(92, 'amortizacao'),
(93, 'pitagoras'),
(94, 'progressaoaritmetica'),
(95, 'progressaogeometrica'),
(96, 'circulo'),
(97, 'quadrado'),
(98, 'circulo'),
(99, 'retangulo'),
(100, 'triangulo'),
(101, 'potencia'),
(102, 'funcaoquadratica'),
(103, 'juros'),
(104, 'amortizacao'),
(105, 'pitagoras'),
(106, 'progressaoaritmetica'),
(107, 'progressaogeometrica'),
(108, 'quadrado'),
(109, 'funcaoquadratica'),
(110, 'pitagoras'),
(111, 'progressaoaritmetica'),
(112, 'progressaogeometrica'),
(113, 'funcaoquadratica'),
(114, 'juros'),
(115, 'pitagoras'),
(116, 'amortizacao'),
(117, 'circulo'),
(118, 'retangulo'),
(119, 'funcaoquadratica'),
(120, 'pitagoras'),
(121, 'potencia'),
(122, 'progressaoaritmetica'),
(123, 'progressaogeometrica'),
(124, 'quadrado'),
(125, 'circulo'),
(126, 'triangulo'),
(127, 'quadrado'),
(128, 'potencia'),
(129, 'quadrado'),
(130, 'circulo'),
(131, 'triangulo'),
(132, 'funcaoquadratica'),
(133, 'pitagoras'),
(134, 'circulo'),
(135, 'circulo'),
(136, 'retangulo'),
(137, 'retangulo'),
(138, 'pitagoras'),
(139, 'funcaoquadratica'),
(140, 'potencia'),
(141, 'pitagoras'),
(142, 'retangulo'),
(143, 'circulo'),
(144, 'juros'),
(145, 'quadrado'),
(146, 'pitagoras'),
(147, 'progressaogeometrica'),
(148, 'quadrado'),
(149, 'circulo'),
(150, 'retangulo'),
(151, 'triangulo'),
(152, 'potencia'),
(153, 'funcaoquadratica'),
(154, 'amortizacao'),
(155, 'amortizacao'),
(156, 'pitagoras'),
(157, 'progressaoaritmetica'),
(158, 'progressaogeometrica');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(110) NOT NULL,
  `email` varchar(110) NOT NULL,
  `senha` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'Khalia', 'khalia735@gmail.com', 'Khalia'),
(2, 'teste', 'teste', 'teste');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;