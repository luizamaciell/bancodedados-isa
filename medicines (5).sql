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
-- Estrutura da tabela `medicines`
--

DROP TABLE IF EXISTS `medicines`;
CREATE TABLE IF NOT EXISTS `medicines` (
  `id` int NOT NULL,
  `idCategories` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_medicines_categories_idx` (`idCategories`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `medicines`
--

INSERT INTO `medicines` (`id`, `idCategories`, `name`, `link`, `description`) VALUES
(1, 2, 'Bioderma', '/assets/web/images/product_01.png', 'Bioderma é blablablablublublu'),
(2, 2, 'Chanca Piedra', '/assets/web/images/product_02.png', 'jvnjvndjdnv'),
(3, 1, 'Umcka Cold Care', '/assets/web/images/product_03.png', 'emrgekgmkgm'),
(4, 1, 'Cetyl Pure', '/assets/web/images/product_04.png', 'gkgekmkggmkde'),
(5, 1, 'CLA Core', '/assets/web/images/product_05.png', 'dvjsnvjsvn'),
(6, 2, 'Poo Pourri', '/assets/web/images/product_06.png', 'dfvdvvndf'),
(7, 2, 'Bioderma', '/assets/web/images/product_01.png', 'lvnsjlvnjv'),
(8, 2, 'Chanca Piedra', '/assets/web/images/product_02.png', 'jvjjnvdjj'),
(9, 1, 'Umcka Cold Care', '/assets/web/images/product_03.png', 'wfmfkwf');

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `medicines`
--
ALTER TABLE `medicines`
  ADD CONSTRAINT `fk_medicines_categories` FOREIGN KEY (`idCategories`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
