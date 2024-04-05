-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 05 avr. 2024 à 08:35
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetweb`
--

-- --------------------------------------------------------

--
-- Structure de la table `amis`
--

DROP TABLE IF EXISTS `amis`;
CREATE TABLE IF NOT EXISTS `amis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_demandeur` int NOT NULL,
  `id_receveur` int NOT NULL,
  `statut` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_receveur` (`id_receveur`),
  KEY `id_demandeur` (`id_demandeur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(5000) NOT NULL,
  `email` varchar(500) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `photoprofil` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `admin`, `photoprofil`) VALUES
(1, '0', '0', '', 0, ''),
(2, '071237270BF', '$2y$10$kYxKkImogQPSG00XOOnsFuvZ6Keck4Oov8/yLsEKUTjWBqA3WuDQS', '', 0, '2.jpg'),
(3, 'valoupipop', '$2y$10$U43lU6AQaAgRtMo1uNatsOMs0W.zcYiCRBEX5l/LACZ5VPRDvWlfC', '', 1, '3.jpg'),
(4, 'test', '$2y$10$UItY2t1n0J090c.SKAm0F.aFBW8/oHISEbqpbl3vrMn/dgVZoYleS', '', 0, '4.jpg'),
(5, 'test1', '$2y$10$rBSm9cnCTcUqQHOK853VPe/bqU0KUXFy6DP8Dt8LVvCJ7PsIS5lGW', 'apodurand56@gmail.com', 0, 'base.png'),
(6, 'test2', '$2y$10$9XqP6eTqMlx9/3YpxCNF9ON1nP9wtuDCowL4w6Vb3LFFHEr8KTUIu', 'test2@gmail.com', 0, 'base.png');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `amis`
--
ALTER TABLE `amis`
  ADD CONSTRAINT `amis_ibfk_1` FOREIGN KEY (`id_receveur`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
