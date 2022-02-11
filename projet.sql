-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 23 juil. 2020 à 16:12
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `admine`
--

DROP TABLE IF EXISTS `admine`;
CREATE TABLE IF NOT EXISTS `admine` (
  `username` varchar(20) NOT NULL,
  `passeword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admine`
--

INSERT INTO `admine` (`username`, `passeword`) VALUES
('admin', '123456');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_cat` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_cat` varchar(10) NOT NULL,
  PRIMARY KEY (`id_cat`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_cat`, `Nom_cat`) VALUES
(1, 'PC'),
(2, 'TABLETTE'),
(3, 'ORDINATEUR'),
(4, 'ACCESSOIRE');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id_com` int(10) NOT NULL AUTO_INCREMENT,
  `Nom_p` varchar(30) NOT NULL,
  `Nom_cl` varchar(30) NOT NULL,
  `prenom_cl` varchar(30) NOT NULL,
  `adresse_liv` varchar(40) NOT NULL,
  `numero_CIN` int(30) NOT NULL,
  `numero_tel` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id_com`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_com`, `Nom_p`, `Nom_cl`, `prenom_cl`, `adresse_liv`, `numero_CIN`, `numero_tel`, `email`) VALUES
(5, 'pc1', 'chahet', 'sidali', 'tizi-ouzou', 789553555, 555621462, 'chahetsidali@gmail.com'),
(6, 'ACCESOIRE', 'tttt', 'tttt', 'tizi', 89555, 552222, 'kkk'),
(7, 'APPLE_pc', 'jgjj', 'sidali', 'alger', 555663888, 520325232, 'chahetsidali@gamil.com');

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id_m` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) NOT NULL,
  `tel` int(10) NOT NULL,
  `msg` varchar(100) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  PRIMARY KEY (`id_m`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id_p` int(10) NOT NULL AUTO_INCREMENT,
  `referance` int(10) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `qtt` int(10) NOT NULL,
  `prix` double NOT NULL,
  `caracteristique` text NOT NULL,
  `image` varchar(20) NOT NULL,
  `id_cat` int(11) NOT NULL,
  PRIMARY KEY (`id_p`),
  KEY `id_m` (`id_cat`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_p`, `referance`, `nom`, `qtt`, `prix`, `caracteristique`, `image`, `id_cat`) VALUES
(1, 5, 'HP_pc', 5, 120000, 'Ce pc est fait pour vous, \r\nNom: 15-dw0055nf - 15.6 FHD.\r\nSystem d\'exploitation: Windous 10.\r\npoid: 2.5 KG.\r\nProcessus: I5.\r\nMemoire: 8Go.\r\nStockage: 500GO', '6.jpg', 1),
(2, 586, 'SAMSUNG_pc', 100, 80000, 'Ce pc est fait pour vous, \r\nNom: NoteBook 7.\r\nSystem d\'exploitation: Windous 8.\r\npoid: 2.8 KG.\r\nProcessus: I5.\r\nMemoire: 4Go.\r\nStockage: 400Go.', '7.jpg', 1),
(3, 864, 'APPLE_pc', 52, 70000, 'Ce pc est fait pour vous, \r\nNom: MacBook Pro.\r\nSystem d\'exploitation: Windous 8.1.\r\npoid: 3 KG.\r\nProcessus: I5.\r\nMemoire: 4Go.\r\nStockage: 500GO', '8.jpg', 1),
(5, 489, 'SAMSUNG_tab', 42, 35000, 'Cette tabellet est faite pour vous, \r\nNom: Galaxy tab A.\r\nJava version: 8.\r\npoid:  800G.\r\nMemoire: 8Go.\r\nStockage: 100GO.', '10.jpg', 2),
(6, 555, 'DELL_tab', 56, 30000, 'Cette tabellet est faite pour vous, \r\nNom: XPS 10.\r\nJava Version: 7\r\npoid:  800G.\r\nMemoire: 8Go.\r\nStockage: 100GO', '11.jpg', 2),
(7, 2463, 'ASUS_tab', 52, 25000, 'Cette tabellet est faite pour vous, \r\nNom: Z301ML version 4G.\r\nJava Version: 8.\r\npoid:  500G.\r\nMemoire: 4Go.\r\nStockage: 200GO', '12.jpg', 2),
(9, 985, 'HP_ordi', 46, 65000, 'Cet Ordinateur est fait pour vous, \r\nNom: HP 625 serie.\r\nSysteme d\'exploitation: windows 10.\r\npoid:  4KG.\r\nMemoire: 8Go.\r\nStockage: 300GO', '1.jpg', 3),
(10, 566, 'SAMSUNG_ordi', 56, 50000, 'Cet Ordinateur est fait pour vous, \r\nNom: DP515A2G-K02FR.\r\nSysteme d\'exploitation: windows 8\r\npoid:  3KG.\r\nMemoire: 4Go.\r\nStockage: 350GO.\r\nEcran: tactile 21.5 pouces LED.', '5.jpg', 3),
(11, 985, 'ASUS_ordi', 65, 60000, 'Cet Ordinateur est fait pour vous, \r\nNom: D310MT.\r\nSysteme d\'exploitation: windows 8.1\r\npoid:  2.5KG.\r\nMemoire: 16Go.\r\nStockage: 1To.', '4.jpg', 3),
(14, 556, 'APPLE_acc', 56, 1500, 'Cet accesoire est fait pour vous,\r\nCable usb pour telephone.\r\nCouleurs non disponible.\r\n', '2.jpg', 4),
(15, 455, 'LG_acc', 5, 3000, 'Cet Accessoire est fait pour vous,\r\nHaut parleur pour ordinateur et pc. \r\nMarque: LG.\r\nMade in America.\r\ncouleur: blanc et noir.', '3.jpg', 4),
(16, 5532, 'SAMSUNG_acc', 45, 2000, 'Cet Accessoire est fait pour vous, \r\nSouris sans fil.\r\nMarque: Samsung.\r\nMade in France.\r\ncouleur: disponible en blanc.', '9.jpg', 4);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` int(10) NOT NULL,
  `datenaiss` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_2` FOREIGN KEY (`id_cat`) REFERENCES `categorie` (`id_cat`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
