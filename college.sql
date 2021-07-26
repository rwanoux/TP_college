-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 26, 2021 at 08:00 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `asso_prof_classe_cours`
--

CREATE TABLE `asso_prof_classe_cours` (
  `code_prof_asso_prof_classe_cours` int(11) NOT NULL,
  `code_classe_asso_prof_classe_cours` int(11) NOT NULL,
  `code_cours_asso_prof_classe_cours` int(11) NOT NULL,
  `date_cour` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `asso_prof_eleve_eval`
--

CREATE TABLE `asso_prof_eleve_eval` (
  `note_asso_prof_eleve_eval` int(3) NOT NULL,
  `date_asso_prof_eleve_eval` date NOT NULL,
  `code_prof_asso_prof_eleve_eval` int(9) NOT NULL,
  `code_eleve_asso_prof_eleve_eval` int(9) NOT NULL,
  `code_eval_asso_prof_eleve_eval` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `asso_prof_matiere`
--

CREATE TABLE `asso_prof_matiere` (
  `code_prof_asso_prof_matiere` int(9) NOT NULL,
  `code_matiere_asso_prof_matiere` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `code_classe` int(7) NOT NULL,
  `nom_classe` varchar(8) NOT NULL,
  `niveau_classe` int(1) NOT NULL,
  `code_prof_ref_classe` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cours`
--

CREATE TABLE `cours` (
  `code_cour` int(9) NOT NULL,
  `nom_cour` varchar(50) NOT NULL,
  `niveau_cour` varchar(6) NOT NULL,
  `code_matiere_cour` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eleves`
--

CREATE TABLE `eleves` (
  `code_eleve` int(9) NOT NULL,
  `nom_eleve` varchar(25) NOT NULL,
  `prenom_eleve` varchar(25) NOT NULL,
  `date_naissance_eleve` date NOT NULL,
  `adresse_eleve` varchar(50) NOT NULL,
  `mail_eleve` varchar(25) NOT NULL,
  `telephone_eleve` varchar(20) NOT NULL,
  `code_parrain_eleve` int(9) DEFAULT NULL,
  `code_classe_eleve` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eleves`
--

INSERT INTO `eleves` (`code_eleve`, `nom_eleve`, `prenom_eleve`, `date_naissance_eleve`, `adresse_eleve`, `mail_eleve`, `telephone_eleve`, `code_parrain_eleve`, `code_classe_eleve`) VALUES
(5, 'poipoi', 'zozo', '1945-03-16', '3 rue du pochuit, 53256 Vilchouin', 'burp@uiop.fr', '032154789655', NULL, NULL),
(6, 'poipoi', 'zozo', '1945-03-16', '3 rue du pochuit, 53256 Vilchouin', 'burp@uiop.fr', '032154789655', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `evaluations`
--

CREATE TABLE `evaluations` (
  `code_evaluation` int(9) NOT NULL,
  `nom_evaluation` varchar(25) NOT NULL,
  `code_cour_evaluation` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `matieres`
--

CREATE TABLE `matieres` (
  `code_matiere` int(9) NOT NULL,
  `nom_matiere` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `professeurs`
--

CREATE TABLE `professeurs` (
  `code_professeur` int(9) NOT NULL,
  `nom_professeur` varchar(25) NOT NULL,
  `prenom_professeur` varchar(25) NOT NULL,
  `date_naissance_professeur` date NOT NULL,
  `adresse_professeur` varchar(50) NOT NULL,
  `mail_professeur` varchar(25) NOT NULL,
  `telephone_professeur` varchar(20) NOT NULL,
  `date_entree_professeur` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `professeurs`
--

INSERT INTO `professeurs` (`code_professeur`, `nom_professeur`, `prenom_professeur`, `date_naissance_professeur`, `adresse_professeur`, `mail_professeur`, `telephone_professeur`, `date_entree_professeur`) VALUES
(4, 'Mourtin', 'Ferdinand', '1945-03-16', '3 rue du pochuit, 53256 Vilchouin', 'nouveau@mail.com', '0202020202', '2000-01-03'),
(5, 'Mourtin', 'Ferdinand', '1945-03-16', '3 rue du pochuit, 53256 Vilchouin', 'burp@uiop.fr', '032154789655', '2000-01-03'),
(6, 'Mourtin', 'Ferdinand', '1945-03-16', '3 rue du pochuit, 53256 Vilchouin', 'burp@uiop.fr', '032154789655', '2000-01-03'),
(7, 'Boulhty', 'Marcel', '1921-03-10', 'le layette 32025 Burtouille', 'mon@mail.fr', '65421321545', '2020-12-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asso_prof_classe_cours`
--
ALTER TABLE `asso_prof_classe_cours`
  ADD KEY `code_classe_asso_prof_classe_cours` (`code_classe_asso_prof_classe_cours`),
  ADD KEY `code_cours_asso_prof_classe_cours` (`code_cours_asso_prof_classe_cours`),
  ADD KEY `code_prof_asso_prof_classe_cours` (`code_prof_asso_prof_classe_cours`);

--
-- Indexes for table `asso_prof_eleve_eval`
--
ALTER TABLE `asso_prof_eleve_eval`
  ADD KEY `code_eleve_asso_prof_eleve_eval` (`code_eleve_asso_prof_eleve_eval`),
  ADD KEY `code_eval_asso_prof_eleve_eval` (`code_eval_asso_prof_eleve_eval`),
  ADD KEY `asso_prof_eleve_eval_ibfk_3` (`code_prof_asso_prof_eleve_eval`);

--
-- Indexes for table `asso_prof_matiere`
--
ALTER TABLE `asso_prof_matiere`
  ADD KEY `code_matiere_asso_prof_matiere` (`code_matiere_asso_prof_matiere`),
  ADD KEY `code_prof_asso_prof_matiere` (`code_prof_asso_prof_matiere`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`code_classe`),
  ADD KEY `code_prof_ref_classe` (`code_prof_ref_classe`);

--
-- Indexes for table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`code_cour`),
  ADD KEY `code_matiere_cour` (`code_matiere_cour`);

--
-- Indexes for table `eleves`
--
ALTER TABLE `eleves`
  ADD PRIMARY KEY (`code_eleve`),
  ADD KEY `code_classe_eleve` (`code_classe_eleve`),
  ADD KEY `code_parrain_eleve` (`code_parrain_eleve`);

--
-- Indexes for table `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`code_evaluation`),
  ADD KEY `code_cour_evaluation` (`code_cour_evaluation`);

--
-- Indexes for table `matieres`
--
ALTER TABLE `matieres`
  ADD PRIMARY KEY (`code_matiere`);

--
-- Indexes for table `professeurs`
--
ALTER TABLE `professeurs`
  ADD PRIMARY KEY (`code_professeur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `code_classe` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cours`
--
ALTER TABLE `cours`
  MODIFY `code_cour` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eleves`
--
ALTER TABLE `eleves`
  MODIFY `code_eleve` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `code_evaluation` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matieres`
--
ALTER TABLE `matieres`
  MODIFY `code_matiere` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `professeurs`
--
ALTER TABLE `professeurs`
  MODIFY `code_professeur` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `asso_prof_classe_cours`
--
ALTER TABLE `asso_prof_classe_cours`
  ADD CONSTRAINT `asso_prof_classe_cours_ibfk_1` FOREIGN KEY (`code_classe_asso_prof_classe_cours`) REFERENCES `classes` (`code_classe`),
  ADD CONSTRAINT `asso_prof_classe_cours_ibfk_2` FOREIGN KEY (`code_cours_asso_prof_classe_cours`) REFERENCES `cours` (`code_cour`),
  ADD CONSTRAINT `asso_prof_classe_cours_ibfk_3` FOREIGN KEY (`code_prof_asso_prof_classe_cours`) REFERENCES `professeurs` (`code_professeur`);

--
-- Constraints for table `asso_prof_eleve_eval`
--
ALTER TABLE `asso_prof_eleve_eval`
  ADD CONSTRAINT `asso_prof_eleve_eval_ibfk_1` FOREIGN KEY (`code_eleve_asso_prof_eleve_eval`) REFERENCES `eleves` (`code_eleve`),
  ADD CONSTRAINT `asso_prof_eleve_eval_ibfk_2` FOREIGN KEY (`code_eval_asso_prof_eleve_eval`) REFERENCES `evaluations` (`code_evaluation`),
  ADD CONSTRAINT `asso_prof_eleve_eval_ibfk_3` FOREIGN KEY (`code_prof_asso_prof_eleve_eval`) REFERENCES `professeurs` (`code_professeur`);

--
-- Constraints for table `asso_prof_matiere`
--
ALTER TABLE `asso_prof_matiere`
  ADD CONSTRAINT `asso_prof_matiere_ibfk_1` FOREIGN KEY (`code_matiere_asso_prof_matiere`) REFERENCES `matieres` (`code_matiere`),
  ADD CONSTRAINT `asso_prof_matiere_ibfk_2` FOREIGN KEY (`code_prof_asso_prof_matiere`) REFERENCES `professeurs` (`code_professeur`);

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`code_prof_ref_classe`) REFERENCES `professeurs` (`code_professeur`);

--
-- Constraints for table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `cours_ibfk_1` FOREIGN KEY (`code_matiere_cour`) REFERENCES `matieres` (`code_matiere`);

--
-- Constraints for table `eleves`
--
ALTER TABLE `eleves`
  ADD CONSTRAINT `eleves_ibfk_1` FOREIGN KEY (`code_classe_eleve`) REFERENCES `classes` (`code_classe`),
  ADD CONSTRAINT `eleves_ibfk_2` FOREIGN KEY (`code_parrain_eleve`) REFERENCES `eleves` (`code_eleve`);

--
-- Constraints for table `evaluations`
--
ALTER TABLE `evaluations`
  ADD CONSTRAINT `evaluations_ibfk_1` FOREIGN KEY (`code_cour_evaluation`) REFERENCES `cours` (`code_cour`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
