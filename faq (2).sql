-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 15-Ago-2023 às 19:41
-- Versão do servidor: 8.0.30
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `medicamentos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `faq`
--

DROP TABLE IF EXISTS `faq`;
CREATE TABLE IF NOT EXISTS `faq` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(500) NOT NULL,
  `answer` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`) VALUES
(1, 'Quais os dias de funcionamento?', 'De Segunda a Sexta'),
(2, 'Qual o horario de atendimento?', '8h ás 12h e das 13h ás 17h'),
(3, 'O medicemento contínuo pode ser liberdado a quantos meses?', 'O medicamento pode ser até liberado a três meses.'),
(4, 'O medicemento controlado pode ser liberdado a quantos meses?', 'O medicamento pode ser até liberado a dois meses e apenas liberado com receita.'),
(5, 'Os medicamentos são gratuitos?', 'Sim, todos os medicamentos.'),
(6, 'Por onde é feito o processo administrativo?', 'Através da própria fármacia municipal.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
