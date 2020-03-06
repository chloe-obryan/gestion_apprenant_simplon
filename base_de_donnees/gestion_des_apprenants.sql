-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 06 mars 2020 à 16:01
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP :  7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestion_des_apprenants`
--

-- --------------------------------------------------------

--
-- Structure de la table `aprenant`
--

CREATE TABLE `aprenant` (
  `idApprenant` int(11) NOT NULL,
  `idTuteur` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `dateDeNaissance` datetime DEFAULT NULL,
  `lieuDeNaissance` varchar(50) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `villeD_origine` varchar(50) DEFAULT NULL,
  `etablissementD_origine` varchar(100) DEFAULT NULL,
  `formationD_origine` varchar(100) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `aprenant`
--

INSERT INTO `aprenant` (`idApprenant`, `idTuteur`, `nom`, `prenom`, `dateDeNaissance`, `lieuDeNaissance`, `genre`, `villeD_origine`, `etablissementD_origine`, `formationD_origine`, `telephone`, `email`) VALUES
(4, 1, 'value-3', 'value-4', '0000-00-00 00:00:00', 'value-6', 'v', 'value-8', 'value-9', 'value-10', 0, 'value-12');

-- --------------------------------------------------------

--
-- Structure de la table `tuteur`
--

CREATE TABLE `tuteur` (
  `idTuteur` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `profession` varchar(50) DEFAULT NULL,
  `numeroDeTelephone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tuteur`
--

INSERT INTO `tuteur` (`idTuteur`, `nom`, `prenom`, `profession`, `numeroDeTelephone`) VALUES
(1, 'value-2', 'value-3', 'value-4', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `aprenant`
--
ALTER TABLE `aprenant`
  ADD PRIMARY KEY (`idApprenant`),
  ADD KEY `FK_association1` (`idTuteur`);

--
-- Index pour la table `tuteur`
--
ALTER TABLE `tuteur`
  ADD PRIMARY KEY (`idTuteur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `aprenant`
--
ALTER TABLE `aprenant`
  MODIFY `idApprenant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `tuteur`
--
ALTER TABLE `tuteur`
  MODIFY `idTuteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `aprenant`
--
ALTER TABLE `aprenant`
  ADD CONSTRAINT `FK_association1` FOREIGN KEY (`idTuteur`) REFERENCES `tuteur` (`idTuteur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
