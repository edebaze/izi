-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 25 Janvier 2018 à 12:47
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `izi`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_commandes`
--

CREATE TABLE `t_commandes` (
  `ID_COMMANDE` int(11) NOT NULL,
  `ID_USER` int(11) NOT NULL,
  `ID_RESTAURENT` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_commandes`
--

INSERT INTO `t_commandes` (`ID_COMMANDE`, `ID_USER`, `ID_RESTAURENT`) VALUES
(1, 1, 2),
(2, 1, 2),
(3, 1, 2),
(4, 1, 5),
(5, 1, 4),
(6, 1, 3),
(7, 1, 1),
(8, 1, 2),
(9, 1, 3),
(10, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `t_restaurents`
--

CREATE TABLE `t_restaurents` (
  `id_restaurent` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `note` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_restaurents`
--

INSERT INTO `t_restaurents` (`id_restaurent`, `nom`, `image`, `note`) VALUES
(1, 'Mac Donald', '../img/macdonald.jpg', 1),
(2, 'Buffalo Grill\'s', '../img/buffalo.jpg', 4),
(3, 'sushishop', '../img/sushishop.jpg', 5),
(4, 'pizzeria', '../img/pizzeria.jpg', 3),
(5, 'pates', '../img/pates.jpg', 3);

-- --------------------------------------------------------

--
-- Structure de la table `t_users`
--

CREATE TABLE `t_users` (
  `ID_USER` int(11) NOT NULL,
  `pseudo` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mdp` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_users`
--

INSERT INTO `t_users` (`ID_USER`, `pseudo`, `email`, `mdp`) VALUES
(1, 'etienne', 'etienne', 'etienne');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `t_commandes`
--
ALTER TABLE `t_commandes`
  ADD PRIMARY KEY (`ID_COMMANDE`);

--
-- Index pour la table `t_restaurents`
--
ALTER TABLE `t_restaurents`
  ADD PRIMARY KEY (`id_restaurent`);

--
-- Index pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`ID_USER`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `t_commandes`
--
ALTER TABLE `t_commandes`
  MODIFY `ID_COMMANDE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `t_restaurents`
--
ALTER TABLE `t_restaurents`
  MODIFY `id_restaurent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `t_users`
--
ALTER TABLE `t_users`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
