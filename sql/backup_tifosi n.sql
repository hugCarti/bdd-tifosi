-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 08 déc. 2024 à 13:47
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tifosi`
--

-- --------------------------------------------------------

--
-- Structure de la table `achete`
--

DROP TABLE IF EXISTS `achete`;
CREATE TABLE IF NOT EXISTS `achete` (
  `jour` date NOT NULL,
  `id_client` int NOT NULL,
  `id_menu` int NOT NULL,
  PRIMARY KEY (`jour`,`id_client`,`id_menu`),
  KEY `id_menu` (`id_menu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `boisson`
--

DROP TABLE IF EXISTS `boisson`;
CREATE TABLE IF NOT EXISTS `boisson` (
  `id_boisson` int NOT NULL AUTO_INCREMENT,
  `nom_boisson` varchar(45) DEFAULT NULL,
  `id_marque` int DEFAULT NULL,
  PRIMARY KEY (`id_boisson`),
  KEY `id_marque` (`id_marque`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES
(1, 'Coca-cola zéro', 1),
(2, 'Coca-cola original', 1),
(3, 'Fanta citron', 1),
(4, 'Fanta orange', 1),
(5, 'Capri-sun', 1),
(6, 'Pepsi', 2),
(7, 'Pepsi Max Zéro', 2),
(8, 'Lipton zéro citron', 2),
(9, 'Lipton Peach', 2),
(10, 'Monster energy ultra gold', 3),
(11, 'Monster energy ultra blue', 3),
(12, 'Eau de source', 4);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(45) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `cp_client` int DEFAULT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `comprend`
--

DROP TABLE IF EXISTS `comprend`;
CREATE TABLE IF NOT EXISTS `comprend` (
  `id_focaccia` int NOT NULL,
  `id_ingredient` int NOT NULL,
  PRIMARY KEY (`id_focaccia`,`id_ingredient`),
  KEY `id_ingredient` (`id_ingredient`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `comprend`
--

INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(2, 1),
(2, 3),
(2, 5),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 24),
(2, 26),
(2, 28),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(3, 1),
(3, 3),
(3, 5),
(3, 7),
(3, 8),
(3, 9),
(3, 12),
(3, 24),
(3, 26),
(3, 28),
(3, 30),
(3, 31),
(3, 32),
(3, 35),
(4, 3),
(4, 7),
(4, 8),
(4, 9),
(4, 13),
(4, 14),
(4, 15),
(4, 26),
(4, 30),
(4, 31),
(4, 32),
(4, 36),
(4, 37),
(4, 38),
(5, 1),
(5, 2),
(5, 3),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 16),
(5, 17),
(5, 24),
(5, 25),
(5, 26),
(5, 30),
(5, 31),
(5, 32),
(5, 33),
(5, 39),
(5, 40),
(6, 1),
(6, 2),
(6, 3),
(6, 8),
(6, 9),
(6, 10),
(6, 18),
(6, 19),
(6, 20),
(6, 24),
(6, 25),
(6, 26),
(6, 31),
(6, 32),
(6, 33),
(6, 41),
(6, 42),
(6, 43),
(7, 1),
(7, 2),
(7, 3),
(7, 8),
(7, 9),
(7, 10),
(7, 18),
(7, 21),
(7, 24),
(7, 25),
(7, 26),
(7, 31),
(7, 32),
(7, 33),
(7, 41),
(7, 44),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 10),
(8, 13),
(8, 21),
(8, 22),
(8, 23),
(8, 26),
(8, 27),
(8, 28),
(8, 29),
(8, 30),
(8, 31),
(8, 32),
(8, 33),
(8, 36),
(8, 44),
(8, 45),
(8, 46);

-- --------------------------------------------------------

--
-- Structure de la table `focaccia`
--

DROP TABLE IF EXISTS `focaccia`;
CREATE TABLE IF NOT EXISTS `focaccia` (
  `id_focaccia` int NOT NULL AUTO_INCREMENT,
  `nom_focaccia` varchar(45) DEFAULT NULL,
  `prix_focaccia` float DEFAULT NULL,
  PRIMARY KEY (`id_focaccia`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `focaccia`
--

INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES
(1, 'Mozaccia', 9.8),
(2, 'Gorgonzollaccia', 10.8),
(3, 'Raclaccia', 8.9),
(4, 'Emmentalaccia', 9.8),
(5, 'Tradizione', 8.9),
(6, 'Hawaienne', 11.2),
(7, 'Américaine', 10.8),
(8, 'Paysanne', 12.8),
(9, 'Mozaccia', 9.8),
(10, 'Gorgonzollaccia', 10.8),
(11, 'Raclaccia', 8.9),
(12, 'Emmentalaccia', 9.8),
(13, 'Tradizione', 8.9),
(14, 'Hawaienne', 11.2),
(15, 'Américaine', 10.8),
(16, 'Paysanne', 12.8);

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE IF NOT EXISTS `ingredient` (
  `id_ingredient` int NOT NULL AUTO_INCREMENT,
  `nom_ingredient` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_ingredient`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES
(1, 'Base tomate'),
(2, 'Mozarella'),
(3, 'cresson'),
(4, 'jambon fumé'),
(5, 'ail'),
(6, 'artichaut'),
(7, 'champignon'),
(8, 'parmesan'),
(9, 'poivre'),
(10, 'olive noire'),
(11, 'Gorgonzola'),
(12, 'raclette'),
(13, 'Base crème'),
(14, 'Emmental'),
(15, 'oignon'),
(16, 'jambon cuit'),
(17, 'olive verte'),
(18, 'bacon'),
(19, 'ananas'),
(20, 'piment'),
(21, 'pomme de terre'),
(22, 'Chèvre'),
(23, 'œuf'),
(24, 'Base tomate'),
(25, 'Mozarella'),
(26, 'cresson'),
(27, 'jambon fumé'),
(28, 'ail'),
(29, 'artichaut'),
(30, 'champignon'),
(31, 'parmesan'),
(32, 'poivre'),
(33, 'olive noire'),
(34, 'Gorgonzola'),
(35, 'raclette'),
(36, 'Base crème'),
(37, 'Emmental'),
(38, 'oignon'),
(39, 'jambon cuit'),
(40, 'olive verte'),
(41, 'bacon'),
(42, 'ananas'),
(43, 'piment'),
(44, 'pomme de terre'),
(45, 'Chèvre'),
(46, 'œuf');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE IF NOT EXISTS `marque` (
  `id_marque` int NOT NULL AUTO_INCREMENT,
  `nom_marque` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_marque`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES
(1, 'Coca-cola'),
(2, 'Pepsico'),
(3, 'Monster'),
(4, 'Cristalline');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int NOT NULL AUTO_INCREMENT,
  `nom_menu` varchar(45) DEFAULT NULL,
  `prix_menu` float DEFAULT NULL,
  `id_focaccia` int DEFAULT NULL,
  `id_boisson` int DEFAULT NULL,
  PRIMARY KEY (`id_menu`),
  KEY `id_focaccia` (`id_focaccia`),
  KEY `id_boisson` (`id_boisson`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `paye`
--

DROP TABLE IF EXISTS `paye`;
CREATE TABLE IF NOT EXISTS `paye` (
  `jour` date NOT NULL,
  `id_client` int NOT NULL,
  PRIMARY KEY (`jour`,`id_client`),
  KEY `id_client` (`id_client`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
