-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 12-Abr-2022 às 04:18
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `provahugo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `movement`
--

DROP TABLE IF EXISTS `movement`;
CREATE TABLE IF NOT EXISTS `movement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `movement`
--

INSERT INTO `movement` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Deadlift', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(2, 'Back Squat', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(3, 'Bench Press', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_record`
--

DROP TABLE IF EXISTS `personal_record`;
CREATE TABLE IF NOT EXISTS `personal_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `movement_id` int(11) DEFAULT NULL,
  `value` decimal(10,2) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `personal_record`
--

INSERT INTO `personal_record` (`id`, `user_id`, `movement_id`, `value`, `date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '100.00', '2021-01-01 03:00:00', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(2, 1, 1, '180.00', '2021-01-02 03:00:00', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(3, 1, 1, '150.00', '2021-01-03 03:00:00', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(4, 1, 1, '110.00', '2021-01-04 03:00:00', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(5, 2, 1, '110.00', '2021-01-04 03:00:00', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(6, 2, 1, '140.00', '2021-01-05 03:00:00', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(7, 2, 1, '190.00', '2021-01-06 03:00:00', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(8, 3, 1, '170.00', '2021-01-01 03:00:00', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(9, 3, 1, '120.00', '2021-01-02 03:00:00', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(10, 3, 1, '130.00', '2021-01-03 03:00:00', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(11, 1, 2, '130.00', '2021-01-03 03:00:00', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(12, 2, 2, '130.00', '2021-01-03 03:00:00', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(13, 3, 2, '125.00', '2021-01-03 03:00:00', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(14, 1, 2, '110.00', '2021-01-05 03:00:00', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(15, 1, 2, '100.00', '2021-01-01 03:00:00', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(16, 2, 2, '120.00', '2021-01-01 03:00:00', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(17, 3, 2, '120.00', '2021-01-01 03:00:00', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'João', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(2, 'José', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL),
(3, 'Paulo', '2022-04-12 07:55:45', '2022-04-12 07:55:45', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
