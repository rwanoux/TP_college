-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 30, 2021 at 10:18 AM
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

--
-- Dumping data for table `asso_prof_matiere`
--

INSERT INTO `asso_prof_matiere` (`code_prof_asso_prof_matiere`, `code_matiere_asso_prof_matiere`) VALUES
(57, 6),
(58, 8),
(59, 11),
(60, 4),
(60, 12),
(61, 5),
(61, 11),
(62, 2),
(62, 5),
(62, 6),
(63, 4),
(63, 5),
(64, 8),
(65, 4),
(65, 7),
(66, 2),
(67, 8),
(68, 6),
(69, 12),
(70, 8),
(70, 12),
(71, 4),
(71, 9),
(72, 5),
(72, 11),
(73, 5),
(73, 7),
(73, 8),
(74, 2),
(74, 9),
(75, 1),
(76, 5),
(77, 4),
(77, 5),
(77, 8),
(78, 4),
(78, 8),
(78, 11),
(79, 7),
(80, 1),
(80, 8),
(80, 9),
(81, 4),
(81, 12),
(82, 1),
(83, 8),
(84, 7),
(85, 10),
(86, 9),
(87, 4),
(87, 11),
(88, 1),
(88, 3),
(89, 8),
(90, 3),
(90, 5),
(91, 5),
(91, 8),
(92, 9),
(93, 8),
(94, 4),
(94, 7),
(95, 8),
(96, 10),
(97, 5),
(98, 7),
(99, 10),
(100, 4),
(101, 5),
(101, 9),
(102, 1),
(102, 2),
(102, 11),
(103, 5),
(104, 11),
(105, 5),
(106, 3),
(107, 4),
(108, 6),
(108, 7),
(108, 10),
(109, 4),
(110, 10),
(111, 7),
(112, 3),
(112, 5),
(112, 9),
(113, 9),
(114, 9),
(115, 9),
(116, 11),
(117, 2),
(118, 7),
(118, 9),
(118, 11),
(119, 5),
(119, 10);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `code_classe` int(7) NOT NULL,
  `nom_classe` varchar(8) NOT NULL,
  `code_prof_ref_classe` int(7) NOT NULL,
  `niveau_classe` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`code_classe`, `nom_classe`, `code_prof_ref_classe`, `niveau_classe`) VALUES
(23, '6a', 114, 6),
(24, '6b', 58, 6),
(25, '6c', 117, 6),
(26, '6d', 68, 6),
(27, '6e', 118, 6),
(28, '6f', 66, 6),
(29, '5a', 115, 5),
(30, '5c', 61, 5),
(31, '5d', 74, 5),
(32, '5e', 79, 5),
(33, '4a', 71, 4),
(34, '4b', 87, 4),
(35, '4c', 89, 4),
(36, '4d', 97, 4),
(37, '4e', 61, 4),
(38, '4f', 99, 4),
(39, '3a', 69, 3),
(40, '3b', 113, 3),
(41, '3c', 107, 3),
(42, '3d', 90, 3),
(43, '3e', 81, 3),
(44, '3f', 72, 3);

-- --------------------------------------------------------

--
-- Table structure for table `cours`
--

CREATE TABLE `cours` (
  `code_cour` int(9) NOT NULL,
  `nom_cour` varchar(100) NOT NULL,
  `code_matiere_cour` int(9) NOT NULL,
  `niveau_cour` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cours`
--

INSERT INTO `cours` (`code_cour`, `nom_cour`, `code_matiere_cour`, `niveau_cour`) VALUES
(21, ' Le féminin des adjectifs qualificatifs', 1, 5),
(22, ' Les homonymes et les paronymes', 1, 5),
(23, ' Prendre des notes', 1, 5),
(24, ' L\'adjectif épithète', 1, 5),
(25, ' Les noms masculins terminant par -e', 1, 6),
(26, ' Les homophones grammaticaux C\' et S\'', 1, 6),
(27, ' La conjugaison de l\'imparfait de l\'indicatif', 1, 4),
(28, 'vocabulaire valorisant ou dévalorisant', 1, 4),
(29, ' La méthode pour la dictée', 1, 5),
(30, ' L\'accord de l\'adjectif qualificatif ', 1, 3),
(31, ' Statistiques : effectifs, moyenne, fréquences, diagrammes\r\n', 2, 4),
(32, ' Cylindres de révolution', 2, 6),
(33, ' Calculs statistiques : effectifs et fréquences', 2, 6),
(34, ' Somme des angles d\'un triangle', 2, 4),
(35, ' Proportionnalité : généralités', 2, 5),
(36, ' Comparer et décomposer une fraction', 2, 5),
(37, ' Agrandissement et réduction : effets sur les aires et volumes', 2, 6),
(38, ' Les formules de distributivité', 2, 5),
(39, ' La vie courante britannique : institutions et symboles', 3, 3),
(40, ' La phrase interrogative', 3, 5),
(41, ' Le prétérit simple', 3, 6),
(42, ' Le present perfect avec les adverbes ever, yet, never, already', 3, 6),
(43, ' Le futur avec will', 3, 6),
(44, ' La vie courante aux États-Unis : institutions et symboles', 3, 5),
(45, ' Ecrire une lettre', 3, 6),
(46, ' Téléphoner', 3, 4),
(47, ' Le present perfect simple', 3, 6),
(48, ' Le superlatif', 3, 4),
(49, ' La France : une république démocratique', 4, 6),
(50, ' Les grandes phases de la Première Guerre mondiale 1914-1918', 4, 6),
(51, ' Étude de cas : la guerre du Pacifique', 4, 4),
(52, ' La fin de la Guerre Froide', 4, 4),
(53, ' L\'évolution d\'une entreprise : l\'exemple de Peugeot', 4, 3),
(54, ' Histoire des arts : Lord of War (2005)', 4, 3),
(55, ' Évolution de la structure de la population active et migrations du travail\r\n', 4, 3),
(56, ' Une guerre d\'anéantissement aux enjeux militaires, idéologiques et nationaux\r\n', 4, 6),
(57, ' La décolonisation de l\'Inde', 4, 6),
(58, ' La crise de mai 1968', 4, 6),
(59, ' La sécurité routière', 5, 3),
(60, ' Le citoyen : droits et devoirs\r\n', 5, 3),
(61, ' La prévention des risques majeurs', 5, 5),
(62, ' Les libertés individuelles et collectives', 5, 3),
(63, ' La défense nationale et la sécurité collective', 5, 5),
(64, ' Le droit de vote', 5, 5),
(65, ' Comment agir solidairement pour le développement durable ?', 5, 4),
(66, ' Nationalité, citoyenneté française et citoyenneté européenne', 5, 6),
(67, ' La France dans le monde', 5, 3),
(68, ' L\'engagement politique et social', 5, 4),
(69, 'Chanter une mélodie simple avec une intonation juste', 8, 5),
(70, 'Interpréter un chant avec expressivité.', 8, 6),
(71, 'Décrire et comparer des éléments sonores.', 8, 5),
(72, 'Comparer des musiques et identifier des ressemblances et des différences.', 8, 3),
(73, 'Imaginer des représentations graphiques ou corporelles de la musique', 8, 6),
(74, 'Inventer une organisation simple à partir de différents éléments sonores.', 8, 4),
(75, 'Exprimer ses émotions, ses sentiments et ses préférences.', 8, 6),
(76, 'Écouter et respecter l’avis des autres et l’expression de leur sensibilité.', 8, 5),
(77, ' Planning de réalisation', 7, 3),
(78, ' Outils et machines', 7, 3),
(79, ' Propriétés des matériaux', 7, 3),
(80, ' La chaîne d\'énergie', 7, 5),
(81, ' Rechercher des informations', 7, 6),
(82, ' La modélisation numérique', 7, 6),
(83, ' Les fonctions assurées par un objet technique', 7, 5),
(84, ' Outils de base', 7, 6),
(85, ' La propriété intellectuelle', 7, 5),
(86, ' La représentation d\'un objet technique', 7, 4),
(107, 'Performance expliquée de Joseph Beuys : I like America and America likes Me', 9, 3),
(108, 'Analyse de « Persepolis » de Marjane Satrapi', 9, 4),
(109, 'Friedensreich Hundertwasser, artiste écologiste engagé', 9, 6),
(110, 'Analyse de The Tower Poppies de Paul Cummins et Tom Piper', 9, 3),
(111, 'Art et panneaux signalétiques', 9, 4),
(112, 'Sticker Art et Street Art – l’art à proximité du public', 9, 6),
(113, 'Du Pop Art au Pixel Art', 9, 3),
(114, 'Des pixels dans l’histoire de l’art – De la mosaïque au Pixel Art ', 9, 3),
(115, 'Le Land Art, un partenariat entre l’art et le paysage', 9, 3),
(116, 'L’expressionnisme allemand en vidéo', 9, 5),
(117, 'Volley-ball,', 10, 5),
(118, 'hand-ball', 10, 3),
(119, 'musculation', 10, 6),
(120, 'gymnastique ', 10, 4),
(122, 'acrosport', 10, 4),
(123, 'danse', 10, 6),
(124, 'natation', 10, 3),
(125, 'boxe française', 10, 5),
(126, 'étirements (stretching', 10, 5),
(127, ' États de l\'eau', 11, 5),
(128, ' Détermination de la résistance d\'un conducteur ohmique', 11, 3),
(129, ' Loi concernant l\'intensité dans un circuit en dérivation', 11, 4),
(130, ' Masse et volume au cours d\'un changement d\'état', 11, 4),
(131, ' L\'énergie cinétique', 11, 3),
(132, ' Loi concernant l\'intensité dans un circuit en série', 11, 5),
(133, ' Rôle du conducteur ohmique dans un circuit en série', 11, 6),
(134, ' Utilisation de la vitesse de la lumière : distances dans l\'univers', 11, 4),
(135, ' Sens du courant électrique', 11, 3),
(136, ' Circuit en série : place et nombre de dipôles', 11, 6),
(137, ' Le présent des auxiliaires, des verbes de modalité et du verbe « wissen »', 12, 5),
(138, ' Quelques Allemands célèbres', 12, 5),
(139, ' La déclinaison des déterminants', 12, 6),
(140, ' L\'expression du temps', 12, 4),
(141, ' Poser des questions et y répondre', 12, 6),
(142, ' La déclinaison des déterminants', 12, 5),
(143, ' L\'expression du lieu', 12, 4),
(144, ' L\'expression de la possession', 12, 4),
(145, ' L\'adjectif épithète', 12, 4),
(146, ' Les pronoms relatifs', 12, 5);

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
  `mail_eleve` varchar(100) NOT NULL,
  `telephone_eleve` varchar(20) NOT NULL,
  `code_parrain_eleve` int(9) DEFAULT NULL,
  `code_classe_eleve` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eleves`
--

INSERT INTO `eleves` (`code_eleve`, `nom_eleve`, `prenom_eleve`, `date_naissance_eleve`, `adresse_eleve`, `mail_eleve`, `telephone_eleve`, `code_parrain_eleve`, `code_classe_eleve`) VALUES
(1318, 'Thomas', 'Julia', '2001-12-01', 'Avenue du Chateau d\'Amboise	44', 'thomas-julia@yandex.com', '76-06-53-98-77', 1445, 23),
(1319, 'Fabre', 'Elya', '1998-01-09', 'Rue des Palombes	21', 'fabre_elya@inbox.bzh', '36-53-43-30-15', 1670, 23),
(1320, 'Leclercq', 'Ethan', '1984-07-08', 'Place Chenonceaux	27', 'leclercqethan@aol.com', '17-00-88-65-25', 1552, 23),
(1321, 'Gerard', 'Juliette', '2000-06-20', 'Rue Francois Arago	18', 'gerardjuliette@gmail.bzh', '40-73-49-57-21', 1480, 23),
(1322, 'Robert', 'William', '1975-09-24', 'Avenue Charles Balezeaux	5', 'robert-william@outlook.biz', '75-03-68-83-06', 1713, 23),
(1323, 'Sanchez', 'Hana', '1983-04-12', 'Avenue Charles Balezeaux	14', 'sanchez.hana@fastmail.eu', '19-87-29-40-56', 1518, 23),
(1324, 'Martinez', 'Arya', '1972-11-19', 'Place Chinon	54', 'martinez-arya@zoho.biz', '59-61-36-38-94', 1472, 23),
(1325, 'Lefevre', 'Ellie', '1986-02-03', 'Rue Francois Arago	18', 'ellie-lefevre@yahoo.biz', '14-77-73-78-73', 1755, 23),
(1326, 'Bernard', 'Aymen', '1972-04-26', 'Allee Charles Baudelaire	18', 'bernard-aymen@yahoo.bzh', '80-09-45-70-17', 1572, 23),
(1327, 'Roux', 'Jade', '1973-11-13', 'Rue des Pinsons	30', 'roux-jade@gmail.com', '02-90-53-47-42', 1669, 23),
(1328, 'Guillot', 'Lorenz', '1999-04-22', 'Rue Lucien Brunet	77', 'lorenz-guillot@yahoo.com', '17-31-85-76-96', 1771, 23),
(1329, 'Roussel', 'Elena', '1993-07-19', 'Rue de l\'Aubepine	41', 'roussel.elena@icloud.fr', '86-84-12-68-75', 1429, 23),
(1330, 'Morin', 'Sandro', '1978-01-25', 'Rue la Fayette	37', 'sandro-morin@gmail.bzh', '39-59-82-70-08', 1368, 23),
(1331, 'Perrin', 'Garance', '2000-06-17', 'Rue Prudhon	8', 'perrin_garance@getmxrr.biz', '49-94-13-91-87', 1579, 23),
(1332, 'Bourgeois', 'Lisa', '1983-05-18', 'Rue de Chennevieres	10', 'bourgeois-lisa@getmxrr.biz', '87-19-18-40-50', 1408, 23),
(1333, 'Roussea', 'Alessio', '1977-05-05', 'Rue de la Briqueterie	5', 'alessio-roussea@inbox.bzh', '81-32-35-20-45', 1466, 23),
(1334, 'Guillaume', 'Elsa', '1963-09-10', 'Avenue des Campanules	7', 'guillaume.elsa@yandex.biz', '26-81-34-61-33', 1651, 23),
(1335, 'Deschamps', 'Myla', '1980-09-16', 'Rue Creutzer	1', 'deschampsmyla@yandex.fr', '92-36-48-89-57', 1552, 23),
(1336, 'Roux', 'Elyne', '1993-01-20', 'Avenue Charles Balezeaux	32', 'roux_elyne@getmxrr.bzh', '74-51-74-86-80', 1746, 23),
(1337, 'Louis', 'Louis', '1974-03-01', 'Allee Charles Cros	5', 'louislouis@fastmail.bzh', '87-91-72-21-32', 1745, 23),
(1338, 'Hubert', 'Joshua', '1972-05-10', 'Place Chinon	43', 'hubertjoshua@proton.biz', '88-06-38-04-70', 1460, 23),
(1339, 'Muller', 'Mia', '1979-07-13', 'Avenue des Campanules	3', 'mullermia@yandex.fr', '76-97-26-83-94', 1375, 23),
(1340, 'Blanc', 'Fatoumata', '1996-03-11', 'Place Chenonceaux	39', 'fatoumata-blanc@gmail.com', '31-98-63-14-71', 1332, 23),
(1341, 'Laurent', 'Emmy', '1966-02-12', 'Rue Francois Arago	66', 'emmy-laurent@outlook.eu', '97-11-54-27-84', 1669, 24),
(1342, 'Legrand', 'Ayoub', '1993-09-21', 'Rue du Marechal Berthier	14', 'ayoub-legrand@yahoo.biz', '08-71-94-29-37', 1350, 24),
(1343, 'Renaud', 'Valentine', '1975-01-18', 'Rue de Chennevieres	27', 'renaud_valentine@proton.fr', '77-25-34-36-87', 1617, 24),
(1344, 'Blanc', 'Assia', '1963-02-10', 'Rue Francois Arago	46', 'blancassia@outlook.fr', '50-62-05-78-29', 1761, 24),
(1345, 'Berger', 'Myriam', '1972-08-13', 'Rue des Palombes	56', 'berger.myriam@zoho.biz', '93-67-39-59-07', 1406, 24),
(1346, 'Lopez', 'Garance', '2001-09-08', 'Rue Francois Arago	36', 'lopez.garance@yandex.com', '72-16-33-74-27', 1702, 24),
(1347, 'Riviere', 'Wassim', '2000-12-05', 'Rue Francois Arago	58', 'riviere-wassim@yahoo.fr', '66-49-19-48-84', 1675, 24),
(1348, 'Simon', 'Tom', '1988-01-15', 'Rue Francois Arago	18', 'simon.tom@inbox.biz', '07-89-72-00-92', 1712, 24),
(1349, 'Olivier', 'Sandro', '1961-04-02', 'Rue de Chennevieres	3', 'oliviersandro@yahoo.biz', '85-03-93-51-40', 1634, 24),
(1350, 'Lefevre', 'Eline', '1969-10-12', 'Rue Creutzer	6', 'eline-lefevre@outlook.biz', '38-79-95-09-98', 1531, 24),
(1351, 'Philippe', 'Roxane', '1995-12-04', 'Avenue du Chateau d\'Amboise	8', 'philippe-roxane@gmail.biz', '73-85-29-76-45', 1569, 24),
(1352, 'Fontain', 'Lila', '1968-08-18', 'Rue Lucien Brunet	89', 'fontainlila@zoho.fr', '32-54-18-81-61', 1414, 24),
(1353, 'Lambert', 'Hana', '2000-03-09', 'Avenue du Chateau d\'Amboise	19', 'hana-lambert@gmail.com', '37-89-67-06-10', 1665, 24),
(1354, 'Lacroix', 'Myla', '1971-03-27', 'Rue du Platane	21', 'lacroixmyla@outlook.biz', '93-01-49-62-18', 1562, 24),
(1355, 'Dasilva', 'Thiago', '1992-12-24', 'Rue de Chennevieres	19', 'dasilva_thiago@aol.bzh', '13-48-05-75-61', 1520, 24),
(1356, 'Adam', 'Eva', '1973-12-01', 'Rue des Camelias	1', 'adam_eva@proton.eu', '87-52-52-34-01', 1747, 24),
(1357, 'Boyer', 'Hanna', '1963-09-24', 'Avenue des Campanules	9', 'boyer.hanna@icloud.biz', '16-36-22-07-65', 1334, 24),
(1358, 'Nguyen', 'Ali', '1981-02-08', 'Rue de l\'Aubepine	40', 'nguyen_ali@inbox.fr', '39-24-80-10-02', 1659, 25),
(1359, 'Gauthie', 'Kayden', '1968-02-08', 'Avenue Charles Balezeaux	6', 'gauthie.kayden@aol.eu', '83-26-29-36-62', 1587, 25),
(1360, 'Robin', 'Esteba', '2001-04-10', 'Avenue du Chateau d\'Amboise	81', 'robin_esteba@gmail.fr', '24-09-80-82-03', 1555, 25),
(1361, 'Lemoine', 'Faustine', '2001-11-25', 'Rue du Pre des Aulnes	44', 'lemoine-faustine@fastmail.eu', '08-95-44-46-44', 1442, 25),
(1362, 'Charles', 'Alexis', '1982-12-01', 'Rue Monthety	25', 'charles-alexis@inbox.biz', '55-63-45-98-97', 1542, 25),
(1363, 'Riviere', 'Thiago', '1975-11-17', 'Avenue des Campanules	8', 'riviere-thiago@aol.fr', '78-38-80-10-60', 1367, 25),
(1364, 'Gonzalez', 'Fatoumata', '1999-11-13', 'Allee des Perce Neige	3', 'fatoumata-gonzalez@aol.bzh', '69-26-87-70-80', 1426, 25),
(1365, 'Legall', 'Auguste', '1962-02-14', 'Avenue du Chateau d\'Amboise	55', 'legallauguste@yandex.biz', '41-70-24-22-76', 1630, 25),
(1366, 'Denis', 'Elya', '1976-02-28', 'Rue de la Briqueterie	14', 'denis-elya@yahoo.com', '55-45-90-58-59', 1754, 25),
(1367, 'Morel', 'Erwan', '1987-08-03', 'Rue la Fayette	35', 'erwan-morel@outlook.eu', '42-05-48-94-91', 1338, 25),
(1368, 'Moulin', 'Eden', '1963-06-13', 'Rue du Platane	7', 'moulin-eden@proton.bzh', '60-55-87-24-60', 1623, 25),
(1369, 'Boyer', 'Thiago', '1995-06-28', 'Rue des Pinsons	4', 'boyer-thiago@aol.fr', '25-69-70-53-17', 1683, 25),
(1370, 'Joly', 'Mia', '1965-06-26', 'Avenue du Chateau d\'Amboise	25', 'joly_mia@yandex.biz', '59-11-66-71-16', 1374, 25),
(1371, 'Fournier', 'Livio', '1964-06-13', 'Rue Lucien Brunet	81', 'fournier_livio@outlook.fr', '38-93-95-39-50', 1756, 25),
(1372, 'Berger', 'Jonas', '1992-02-07', 'Rue des Palombes	29', 'bergerjonas@zoho.biz', '81-86-85-53-81', 1749, 25),
(1373, 'Lecomte', 'Nathan', '1978-09-24', 'Rue de Chennevieres	12', 'lecomtenathan@zoho.biz', '59-21-58-24-69', 1698, 25),
(1374, 'Guerin', 'Sacha', '1991-06-13', 'Rue Francois Arago	58', 'sacha-guerin@fastmail.eu', '28-07-88-42-73', 1689, 25),
(1375, 'Gauthie', 'Paul', '1970-07-05', 'Rue de l\'Aubepine	68', 'gauthie_paul@proton.eu', '30-35-82-12-83', 1784, 25),
(1376, 'Menard', 'Augustine', '1990-01-25', 'Rue Lucien Brunet	111', 'menardaugustine@inbox.eu', '41-05-58-18-52', 1617, 25),
(1377, 'Masson', 'David', '1975-03-04', 'Rue de l\'Aubepine	62', 'massondavid@outlook.com', '39-26-85-68-67', 1590, 25),
(1378, 'Dumont', 'Noah', '1967-10-09', 'Rue des Palombes	21', 'dumont-noah@outlook.eu', '20-78-14-31-65', 1424, 25),
(1379, 'Girard', 'Julia', '1967-08-20', 'Place Chaumont	4', 'girard_julia@icloud.fr', '55-42-53-95-70', 1774, 25),
(1380, 'Roux', 'Elliot', '1977-08-25', 'Rue du Pre des Aulnes	1', 'roux_elliot@yandex.eu', '11-57-95-43-97', 1456, 25),
(1381, 'Faure', 'Jonas', '1963-06-02', 'Rue Francois Arago	64', 'faurejonas@fastmail.fr', '17-40-36-09-10', 1751, 25),
(1382, 'Bonnet', 'Lucien', '1999-01-06', 'Rue des Palombes	27', 'bonnet_lucien@outlook.biz', '19-03-78-43-14', 1541, 25),
(1383, 'Gerard', 'Tom', '1975-10-19', 'Rue de l\'Aubepine	22', 'gerard_tom@gmail.bzh', '00-87-13-80-17', 1568, 25),
(1384, 'Philippe', 'Lily', '1969-06-01', 'Rue de la Louvetiere	6', 'philippe_lily@fastmail.biz', '38-16-85-49-28', 1644, 25),
(1385, 'Fabre', 'Alice', '1980-07-07', 'Avenue du Chateau d\'Amboise	66', 'fabre-alice@icloud.bzh', '37-51-64-06-25', 1367, 26),
(1386, 'Deschamps', 'Selena', '1988-04-08', 'Rue de Beaubourg	47', 'deschamps-selena@getmxrr.biz', '35-01-18-52-96', 1471, 26),
(1387, 'Martinez', 'Louis', '1983-03-23', 'Rue la Fayette	44', 'martinez-louis@zoho.bzh', '06-49-73-77-77', 1587, 26),
(1388, 'Charles', 'Lucas', '1983-11-14', 'Rue de la Briqueterie	11', 'charles-lucas@inbox.com', '89-49-58-34-37', 1332, 26),
(1389, 'Nguyen', 'Mariam', '1997-01-28', 'Avenue Charles Balezeaux	20', 'nguyen_mariam@yahoo.fr', '79-35-64-94-30', 1464, 26),
(1390, 'Lemoine', 'Octave', '1987-03-21', 'Rue des Palombes	37', 'lemoineoctave@outlook.com', '50-43-00-71-78', 1475, 26),
(1391, 'Gonzalez', 'Sacha', '1978-11-25', 'Rue de Beaubourg	33', 'gonzalezsacha@zoho.fr', '54-38-03-13-16', 1485, 26),
(1392, 'Dubois', 'Faustine', '1994-08-03', 'Allee des Perce Neige	10', 'dubois_faustine@yandex.biz', '71-99-68-28-23', 1708, 26),
(1393, 'Charles', 'David', '1989-02-17', 'Rue de Beaubourg	18', 'david-charles@proton.eu', '25-71-81-16-44', 1768, 26),
(1394, 'Robin', 'Lilya', '1976-01-24', 'Rue la Fayette	62', 'robin_lilya@getmxrr.bzh', '70-25-79-16-32', 1408, 26),
(1395, 'Legall', 'Lina', '1988-02-06', 'Rue Francois Arago	55', 'legall_lina@outlook.eu', '29-18-97-24-28', 1626, 26),
(1396, 'Philippe', 'James', '1978-10-09', 'Rue de Chennevieres	19', 'philippe-james@yahoo.fr', '72-67-16-80-98', 1404, 26),
(1397, 'Picard', 'Faustine', '1975-10-01', 'Rue du General Joubert	10', 'picardfaustine@zoho.eu', '35-85-61-18-18', 1651, 26),
(1398, 'Lacroix', 'Hana', '1985-01-26', 'Rue Daniel Balavoine	8', 'lacroix.hana@yandex.com', '15-78-58-34-74', 1769, 26),
(1399, 'Mercier', 'Gabin', '1980-06-10', 'Rue Camille Desmoulins	2', 'merciergabin@fastmail.bzh', '28-14-46-94-73', 1580, 26),
(1400, 'Robin', 'Kenzo', '1987-05-03', 'Rue du General Joubert	8', 'kenzo-robin@getmxrr.biz', '88-21-58-85-81', 1461, 26),
(1401, 'Nicolas', 'Mia', '1964-07-10', 'Rue des Palombes	41', 'nicolas_mia@gmail.eu', '23-77-38-86-24', 1642, 26),
(1402, 'Gonzalez', 'Alya', '1965-06-07', 'Avenue du Chateau d\'Amboise	80', 'gonzalez.alya@inbox.biz', '65-37-58-18-02', 1679, 26),
(1403, 'Gauthie', 'Khadija', '1998-01-24', 'Rue des Palombes	22', 'gauthie-khadija@yandex.eu', '37-40-01-84-74', 1334, 26),
(1404, 'Faure', 'Jade', '1962-01-18', 'Rue du Platane	17', 'faure-jade@proton.bzh', '27-29-68-12-49', 1517, 26),
(1405, 'Roussea', 'Jules', '1977-04-08', 'Rue des Palombes	50', 'roussea-jules@outlook.fr', '83-87-34-50-46', 1786, 27),
(1406, 'Richard', 'Antonin', '1989-07-23', 'Avenue des Genets	4', 'richard.antonin@inbox.biz', '22-95-50-65-56', 1421, 27),
(1407, 'Girard', 'Wassim', '1985-04-21', 'Rue de l\'Aubepine	46', 'girard-wassim@fastmail.biz', '72-20-66-73-51', 1339, 27),
(1408, 'Dubois', 'Lorenz', '1976-01-11', 'Rue du Marechal Berthier	12', 'dubois-lorenz@fastmail.bzh', '36-71-27-07-67', 1497, 27),
(1409, 'Fournier', 'Alya', '1982-11-03', 'Rue des Palombes	23', 'fournier_alya@icloud.com', '14-16-87-47-31', 1774, 27),
(1410, 'Moreau', 'Agathe', '1973-10-07', 'Rue du Frene	26', 'moreauagathe@fastmail.com', '53-14-87-95-40', 1543, 27),
(1411, 'Guillaume', 'Bilal', '1968-07-02', 'Rue Creutzer	4', 'guillaume-bilal@inbox.biz', '47-78-71-85-59', 1479, 27),
(1412, 'Roussel', 'Paul', '1986-03-19', 'Rue de la Briqueterie	10', 'roussel-paul@zoho.biz', '28-98-34-66-52', 1631, 27),
(1413, 'Gautier', 'Elyna', '1982-01-23', 'Rue de Beaubourg	11', 'gautierelyna@proton.biz', '42-86-73-90-01', 1468, 27),
(1414, 'Legrand', 'Cassandre', '1982-05-28', 'Rue de Beaubourg	40', 'legrand-cassandre@zoho.bzh', '91-49-42-64-52', 1424, 27),
(1415, 'Gaillard', 'Lise', '1984-10-25', 'Rue de l\'Aubepine	39', 'gaillard.lise@proton.bzh', '01-44-25-82-74', 1491, 27),
(1416, 'Fleury', 'Djibril', '1963-10-06', 'Rue de l\'Aubepine	18', 'fleurydjibril@fastmail.fr', '40-21-86-58-76', 1320, 27),
(1417, 'Clement', 'James', '1992-12-09', 'Rue Camille Saint Saens	7', 'james-clement@gmail.eu', '48-54-71-16-76', 1439, 27),
(1418, 'Bernard', 'Logan', '1992-07-10', 'Rue Francois Arago	4', 'bernardlogan@zoho.com', '66-24-48-43-78', 1531, 27),
(1419, 'Roux', 'Adrien', '1997-03-19', 'Avenue du Chateau d\'Amboise	84', 'roux-adrien@fastmail.eu', '86-86-09-00-76', 1759, 27),
(1420, 'Mathieu', 'Marin', '1973-12-21', 'Allee des Perce Neige	9', 'mathieu_marin@aol.bzh', '26-70-41-65-49', 1586, 27),
(1421, 'Lefevre', 'Eline', '1969-09-13', 'Rue de l\'Aubepine	8', 'lefevre_eline@getmxrr.fr', '38-49-50-96-88', 1458, 27),
(1422, 'Renaud', 'Lorenz', '1972-06-07', 'Rue la Fayette	51', 'renaud_lorenz@outlook.fr', '13-01-51-05-17', 1790, 27),
(1423, 'Dupont', 'Lucien', '1997-06-25', 'Rue du Marechal Lannes	11', 'lucien-dupont@gmail.biz', '49-61-30-41-91', 1380, 27),
(1424, 'Blanc', 'Gabriel', '1994-11-02', 'Rue de la Briqueterie	8', 'blanc_gabriel@proton.biz', '17-36-81-43-79', 1382, 28),
(1425, 'Faure', 'Khadija', '1978-04-20', 'Place Chambord	22', 'faure_khadija@gmail.fr', '51-93-35-57-06', 1600, 28),
(1426, 'Guillaume', 'Arthur', '1978-10-18', 'Rue Camille Desmoulins	24', 'arthur-guillaume@getmxrr.biz', '99-28-01-74-78', 1577, 28),
(1427, 'Mathieu', 'Candice', '1974-10-08', 'Rue la Fayette	11', 'mathieu_candice@yandex.bzh', '85-16-67-41-57', 1598, 28),
(1428, 'Renaud', 'Mia', '1965-01-25', 'Rue de la Briqueterie	6', 'renaud.mia@gmail.com', '87-22-39-02-44', 1424, 28),
(1429, 'Renaud', 'Esteba', '1999-10-22', 'Rue Camille Saint Saens	4', 'esteba-renaud@zoho.eu', '23-92-21-78-86', 1595, 28),
(1430, 'Dasilva', 'Agathe', '1973-09-10', 'Avenue Charles Balezeaux	21', 'dasilva_agathe@yahoo.fr', '63-50-07-42-36', 1583, 28),
(1431, 'Louis', 'Kenzo', '1982-05-23', 'Rue du Marechal Berthier	11', 'kenzo-louis@yahoo.fr', '99-02-57-14-37', 1483, 28),
(1432, 'Guerin', 'Manon', '1976-08-15', 'Rue du Pre des Aulnes	30', 'guerin_manon@yahoo.bzh', '25-41-76-80-19', 1323, 28),
(1433, 'Bernard', 'Issa', '1999-02-05', 'Rue la Fayette	71', 'bernard-issa@inbox.eu', '70-03-84-41-84', 1677, 28),
(1434, 'Leroy', 'Tiago', '1993-11-21', 'Rue des Palombes	36', 'leroy.tiago@inbox.com', '65-86-95-02-09', 1463, 28),
(1435, 'Nicolas', 'Auguste', '1984-07-17', 'Place Chinon	51', 'auguste-nicolas@yahoo.biz', '96-48-29-56-02', 1373, 28),
(1436, 'Lacroix', 'Mia', '1982-07-25', 'Rue du Marechal Lannes	5', 'mia-lacroix@yandex.biz', '46-09-25-70-68', 1483, 28),
(1437, 'Chevali', 'Mila', '1978-03-13', 'Rue Monthety	3', 'chevali-mila@zoho.fr', '72-95-70-16-02', 1783, 28),
(1438, 'Picard', 'Mariam', '1962-08-11', 'Rue de l\'Aubepine	39', 'picard.mariam@fastmail.fr', '02-10-56-93-42', 1603, 28),
(1439, 'Perrin', 'Ambre', '1979-06-18', 'Rue des Lupins	8', 'ambre-perrin@zoho.com', '87-45-90-12-29', 1341, 28),
(1440, 'Henry', 'Lila', '1968-05-05', 'Rue de Beaubourg	17', 'henrylila@getmxrr.bzh', '99-74-82-66-20', 1381, 28),
(1441, 'Riviere', 'Sacha', '1977-06-20', 'Rue des Pinsons	16', 'riviere.sacha@aol.com', '23-92-47-58-25', 1586, 28),
(1442, 'Perrin', 'Livio', '1991-06-22', 'Avenue Charles Balezeaux	31', 'perrin.livio@fastmail.fr', '29-73-63-02-66', 1631, 28),
(1443, 'David', 'Naomi', '1998-01-28', 'Rue de l\'Aubepine	6', 'david_naomi@yahoo.eu', '97-72-67-35-13', 1338, 28),
(1444, 'Perrin', 'Myla', '1990-12-03', 'Clos Candalle	1', 'perrinmyla@gmail.biz', '89-84-58-93-05', 1667, 28),
(1445, 'Fleury', 'Ayoub', '1984-04-07', 'Rue Lucien Brunet	23', 'ayoub-fleury@zoho.com', '89-74-59-03-40', 1620, 28),
(1446, 'Garnier', 'Elina', '1964-01-03', 'Avenue du Chateau d\'Amboise	19', 'garnierelina@zoho.eu', '08-99-29-44-54', 1612, 28),
(1447, 'Gonzalez', 'Kassim', '1999-02-14', 'Avenue du Chateau d\'Amboise	25', 'kassim-gonzalez@zoho.eu', '37-89-20-08-24', 1441, 28),
(1448, 'David', 'Gabin', '1974-07-09', 'Place Chambord	20', 'david-gabin@zoho.bzh', '28-04-01-12-86', 1655, 28),
(1449, 'Petit', 'Mohammed', '1963-02-06', 'Rue Francois Arago	7', 'petit.mohammed@yandex.com', '35-91-30-48-64', 1686, 29),
(1450, 'Thomas', 'Maya', '1975-01-05', 'Avenue Charles Balezeaux	22', 'thomas_maya@outlook.biz', '96-28-65-04-39', 1529, 29),
(1451, 'Durand', 'David', '1966-12-04', 'Rue la Fayette	5', 'durand.david@aol.eu', '48-29-01-51-69', 1527, 29),
(1452, 'Roux', 'Lisa', '1971-02-08', 'Rue Lucien Brunet	89', 'lisa-roux@inbox.com', '90-60-16-95-96', 1610, 29),
(1453, 'Rey', 'Mathis', '1987-06-18', 'Rue Creutzer	11', 'rey_mathis@getmxrr.fr', '52-63-99-90-03', 1610, 29),
(1454, 'Lopez', 'Logan', '1967-02-16', 'Rue des Palombes	3', 'lopezlogan@inbox.fr', '42-31-61-58-96', 1785, 29),
(1455, 'Fournier', 'Esteba', '1993-02-03', 'Allee Charles Baudelaire	15', 'esteba-fournier@fastmail.com', '46-54-45-89-79', 1772, 29),
(1456, 'Leroy', 'Hugo', '1964-07-08', 'Place Chinon	54', 'leroy.hugo@aol.eu', '76-90-13-68-54', 1470, 29),
(1457, 'Masson', 'Khadija', '1966-08-17', 'Rue des Palombes	2', 'masson-khadija@inbox.bzh', '44-68-06-64-03', 1729, 29),
(1458, 'Garcia', 'Hana', '1974-08-03', 'Rue Lucien Brunet	93', 'garcia-hana@proton.bzh', '93-46-26-10-98', 1361, 29),
(1459, 'Masson', 'Apolline', '1989-01-12', 'Rue la Fayette	44', 'apolline-masson@fastmail.bzh', '34-82-64-31-03', 1398, 29),
(1460, 'Renaud', 'Aaron', '1994-12-20', 'Place Chenonceaux	42', 'renaud_aaron@yahoo.fr', '46-15-81-07-91', 1390, 29),
(1461, 'Leroy', 'Julia', '1987-06-09', 'Avenue du Chateau d\'Amboise	84', 'leroy_julia@icloud.eu', '19-13-90-03-40', 1515, 29),
(1462, 'Lemaire', 'Erwan', '1981-01-20', 'Rue de la Briqueterie	1', 'erwan-lemaire@icloud.eu', '81-47-38-00-31', 1784, 29),
(1463, 'Deschamps', 'Lorenz', '1992-04-15', 'Rue Lucien Brunet	62', 'deschamps-lorenz@inbox.bzh', '75-71-07-93-06', 1435, 29),
(1464, 'Andre', 'Anas', '1996-05-07', 'Avenue Charles Balezeaux	4', 'andre-anas@aol.fr', '30-60-17-79-08', 1741, 29),
(1465, 'Morin', 'Ella', '1987-02-15', 'Rue des Palombes	44', 'morinella@gmail.bzh', '17-47-58-04-10', 1564, 29),
(1466, 'Girard', 'Elisa', '1978-01-09', 'Rue la Fayette	32', 'girard-elisa@outlook.eu', '43-97-07-84-61', 1579, 29),
(1467, 'Lacroix', 'Naya', '1965-01-10', 'Rue du Marechal Berthier	9', 'lacroix_naya@aol.eu', '71-34-77-11-43', 1782, 29),
(1468, 'Chevali', 'Charles', '1977-05-09', 'Avenue Charles Balezeaux	17', 'charles-chevali@proton.com', '97-20-27-03-49', 1484, 30),
(1469, 'Bertrand', 'Jade', '1972-09-01', 'Rue Monthety	41', 'bertrandjade@proton.eu', '00-68-37-85-96', 1753, 30),
(1470, 'Gerard', 'Jade', '1994-11-06', 'Rue Monthety	41', 'jade-gerard@icloud.bzh', '40-81-92-27-40', 1533, 30),
(1471, 'Boyer', 'Lilya', '1977-02-22', 'Rue Lucien Brunet	17', 'boyer-lilya@yandex.fr', '94-32-19-19-41', 1744, 30),
(1472, 'Louis', 'Issa', '1975-06-13', 'Rue de Chennevieres	7', 'issa-louis@gmail.com', '82-79-87-99-93', 1504, 30),
(1473, 'Renaud', 'Aymen', '1987-02-14', 'Rue des Palombes	3', 'renaud-aymen@gmail.fr', '37-13-92-49-08', 1417, 30),
(1474, 'Dumont', 'Lia', '1962-04-19', 'Rue Lucien Brunet	4', 'dumont-lia@zoho.com', '94-03-96-75-62', 1419, 30),
(1475, 'Berger', 'Mohammed', '1999-07-04', 'Rue des Pinsons	4', 'berger-mohammed@proton.bzh', '28-10-42-12-52', 1726, 30),
(1476, 'Renaud', 'Julie', '1995-05-13', 'Rue de l\'Aubepine	39', 'renaud-julie@outlook.fr', '81-34-01-81-75', 1683, 30),
(1477, 'Nicolas', 'Adem', '1978-12-08', 'Rue Lucien Brunet	80', 'nicolasadem@yahoo.eu', '42-07-67-01-41', 1646, 30),
(1478, 'Muller', 'Maryam', '1997-10-26', 'Allee Charles Cros	1', 'muller-maryam@aol.eu', '80-69-97-79-60', 1493, 30),
(1479, 'Nicolas', 'Charlie', '1980-12-05', 'Rue la Fayette	71', 'nicolas-charlie@yahoo.com', '14-93-95-23-89', 1673, 30),
(1480, 'David', 'Lila', '1967-05-16', 'Rue Lucien Brunet	20', 'david-lila@gmail.fr', '84-92-27-90-12', 1728, 30),
(1481, 'Andre', 'Maya', '1967-03-15', 'Route Nationale 4	2', 'andre_maya@icloud.com', '70-70-58-03-58', 1325, 30),
(1482, 'Mathieu', 'Arthur', '1992-06-22', 'Allee Charles Baudelaire	20', 'mathieu_arthur@icloud.bzh', '42-60-48-38-05', 1641, 30),
(1483, 'Roussea', 'Benjamin', '1961-06-10', 'Rue des Palombes	15', 'rousseabenjamin@gmail.fr', '19-09-97-93-93', 1784, 30),
(1484, 'Garcia', 'Elena', '1964-03-28', 'Rue du Marechal Lannes	11', 'elena-garcia@outlook.bzh', '37-51-76-44-55', 1711, 30),
(1485, 'Fontain', 'Rose', '1964-11-11', 'Rue du General Joubert	14', 'fontain-rose@yahoo.fr', '02-99-18-21-44', 1450, 30),
(1486, 'Philippe', 'Myla', '1975-01-06', 'Rue Francois Arago	20', 'philippe.myla@zoho.com', '38-29-14-75-93', 1488, 31),
(1487, 'Leclercq', 'Eline', '1993-06-11', 'Che de Pontault à Berchères	9', 'leclercq_eline@outlook.fr', '58-64-66-45-17', 1529, 31),
(1488, 'Charles', 'Garance', '1992-08-22', 'Rue Lucien Brunet	78', 'garance-charles@yahoo.bzh', '94-92-62-16-28', 1630, 31),
(1489, 'Guerin', 'Mohammed', '1976-11-18', 'Rue la Fayette	81', 'guerin_mohammed@getmxrr.eu', '83-43-12-99-82', 1454, 31),
(1490, 'Leroy', 'Mia', '1989-05-06', 'Avenue du Chateau d\'Amboise	57', 'leroymia@yahoo.biz', '91-24-03-27-56', 1327, 31),
(1491, 'Mathieu', 'Julia', '1986-04-19', 'Rue de l\'Aubepine	50', 'julia-mathieu@icloud.biz', '92-11-41-31-26', 1659, 31),
(1492, 'Rodriguez', 'Gabriel', '1994-02-15', 'Allee Charles Baudelaire	9', 'rodriguez_gabriel@gmail.biz', '46-78-59-18-68', 1440, 31),
(1493, 'Girard', 'Charlie', '1998-06-09', 'Rue la Fayette	47', 'girard.charlie@gmail.eu', '19-40-14-47-45', 1521, 31),
(1494, 'Fontain', 'Kenzo', '1962-12-16', 'Rue des Palombes	2', 'fontain.kenzo@gmail.bzh', '54-45-02-49-15', 1587, 31),
(1495, 'Denis', 'Ellie', '1987-12-13', 'Rue du Pre des Aulnes	12', 'denis.ellie@outlook.biz', '72-48-16-07-39', 1755, 31),
(1496, 'Adam', 'Charly', '1979-01-01', 'Rue des Palombes	35', 'adam-charly@yahoo.fr', '10-61-66-03-16', 1687, 31),
(1497, 'Bernard', 'Charlie', '1992-03-25', 'Avenue du Chateau d\'Amboise	82', 'bernard-charlie@outlook.eu', '42-10-20-68-03', 1399, 31),
(1498, 'Dumont', 'Eline', '1979-11-08', 'Avenue du Chateau d\'Amboise	81', 'dumont-eline@zoho.com', '35-02-12-38-37', 1322, 31),
(1499, 'Berger', 'Kassim', '1984-03-26', 'Avenue du Chateau d\'Amboise	26', 'berger-kassim@icloud.com', '74-92-19-81-49', 1701, 31),
(1500, 'Roussea', 'Agathe', '1970-10-08', 'Rue de Chennevieres	10', 'roussea-agathe@yandex.bzh', '25-28-73-91-84', 1753, 31),
(1501, 'Rey', 'Lino', '1993-05-13', 'Rue des Pinsons	16', 'lino-rey@icloud.biz', '77-63-76-67-62', 1759, 31),
(1502, 'Garcia', 'Adrien', '1992-03-28', 'Avenue du Chateau d\'Amboise	79', 'garcia-adrien@inbox.biz', '14-20-49-91-42', 1753, 31),
(1503, 'Richard', 'Auguste', '1974-06-24', 'Avenue du Chateau d\'Amboise	68', 'richard-auguste@icloud.biz', '63-53-41-06-56', 1560, 31),
(1504, 'Philippe', 'Emmy', '1965-03-20', 'Rue Francois Arago	45', 'philippe-emmy@icloud.bzh', '51-22-08-93-40', 1649, 31),
(1505, 'Clement', 'Esteba', '1993-04-02', 'Rue du Pre des Aulnes	12', 'esteba-clement@outlook.com', '33-15-73-82-75', 1475, 31),
(1506, 'Garcia', 'Abel', '1967-11-15', 'Rue Francois Arago	47', 'garcia.abel@outlook.bzh', '75-43-32-29-71', 1520, 31),
(1507, 'Richard', 'Martin', '1987-01-01', 'Rue des Palombes	32', 'martin-richard@outlook.bzh', '05-58-13-17-73', 1508, 31),
(1508, 'Morel', 'Ambre', '1979-11-24', 'Rue Francois Arago	34', 'morel-ambre@getmxrr.com', '94-60-16-46-12', 1366, 31),
(1509, 'Riviere', 'Kayden', '2001-04-07', 'Rue de Rome	2', 'riviere-kayden@yandex.fr', '92-83-56-85-59', 1520, 31),
(1510, 'Masson', 'Maddy', '1970-01-28', 'Rue Creutzer	28', 'maddy-masson@fastmail.eu', '90-81-49-45-98', 1330, 31),
(1511, 'Petit', 'Roxane', '1995-02-19', 'Che de Pontault à Berchères	21', 'petit-roxane@inbox.fr', '10-42-64-92-58', 1720, 31),
(1512, 'Nguyen', 'Arthur', '2000-10-17', 'Rue Monthety	25', 'arthur-nguyen@gmail.eu', '82-75-03-07-67', 1514, 31),
(1513, 'Henry', 'Joshua', '1965-11-01', 'Rue de l\'Aubepine	68', 'joshua-henry@getmxrr.com', '49-90-20-82-33', 1734, 31),
(1514, 'Boyer', 'Neyla', '1974-10-09', 'Allee Charles Baudelaire	6', 'boyer_neyla@proton.eu', '31-74-64-26-37', 1573, 32),
(1515, 'Bonnet', 'Esteba', '1990-08-07', 'Rue des Palombes	5', 'bonnet-esteba@proton.bzh', '18-14-90-26-33', 1356, 32),
(1516, 'Philippe', 'Sandro', '1974-03-18', 'Rue de l\'Aubepine	7', 'sandro-philippe@outlook.com', '21-08-29-65-82', 1481, 32),
(1517, 'Girard', 'Soline', '1994-12-10', 'Place Chinon	54', 'soline-girard@fastmail.eu', '73-88-79-28-01', 1772, 32),
(1518, 'Masson', 'Auguste', '1980-06-02', 'Rue du Marechal Berthier	12', 'masson_auguste@proton.biz', '89-28-58-13-61', 1358, 32),
(1519, 'Roussea', 'Paul', '2000-06-28', 'Rue Lucien Brunet	70', 'paul-roussea@outlook.com', '80-25-59-02-15', 1638, 32),
(1520, 'Richard', 'Edouard', '1986-05-19', 'Rue des Pinsons	4', 'richard-edouard@getmxrr.bzh', '12-45-04-29-73', 1459, 32),
(1521, 'Guillaume', 'Mylan', '1968-11-21', 'Rue Creutzer	19', 'guillaume.mylan@yandex.bzh', '57-68-72-84-49', 1436, 32),
(1522, 'Philippe', 'Mia', '2001-02-26', 'Allee Charles Baudelaire	12', 'philippe_mia@fastmail.bzh', '19-75-58-93-83', 1710, 32),
(1523, 'Lefevre', 'Adrien', '1973-08-15', 'Rue Lucien Brunet	78', 'lefevreadrien@outlook.com', '64-55-32-32-57', 1555, 32),
(1524, 'Adam', 'David', '1963-08-17', 'Rue la Fayette	65', 'adamdavid@yandex.com', '34-05-51-56-65', 1740, 32),
(1525, 'Dupuis', 'Hanna', '1971-09-14', 'Avenue Charles Balezeaux	9', 'dupuis-hanna@fastmail.fr', '77-56-19-85-83', 1620, 32),
(1526, 'Gonzalez', 'James', '1974-12-19', 'Place Chenonceaux	35', 'gonzalezjames@inbox.eu', '70-67-32-44-71', 1771, 32),
(1527, 'Petit', 'Louise', '1994-07-03', 'Rue Lucien Brunet	65', 'louise-petit@icloud.fr', '41-69-04-83-31', 1360, 32),
(1528, 'Fournier', 'Lorenz', '1983-04-14', 'Rue du Frene	6', 'fournier-lorenz@icloud.com', '42-42-86-92-95', 1397, 32),
(1529, 'Lecomte', 'Eline', '1985-09-02', 'Allee Charles Baudelaire	3', 'lecomteeline@proton.fr', '42-35-07-49-61', 1470, 32),
(1530, 'Mercier', 'Adrien', '1974-06-26', 'Rue des Palombes	36', 'mercieradrien@fastmail.bzh', '62-43-33-68-97', 1557, 33),
(1531, 'Francois', 'Noah', '2000-11-22', 'Avenue des Genets	5', 'francois-noah@outlook.com', '71-42-01-35-87', 1589, 33),
(1532, 'Masson', 'Ilyana', '1971-01-13', 'Rue de l\'Aubepine	41', 'masson_ilyana@inbox.biz', '03-94-91-34-06', 1597, 33),
(1533, 'Blanc', 'Esteba', '1964-05-13', 'Rue du Marechal Berthier	8', 'blanc_esteba@yahoo.com', '09-37-72-93-92', 1337, 33),
(1534, 'Perrin', 'Amine', '1991-03-28', 'Rue Lucien Brunet	59', 'perrin_amine@proton.bzh', '09-53-89-19-11', 1434, 33),
(1535, 'Simon', 'Jade', '1975-07-05', 'Rue Lucien Brunet	56', 'simon-jade@proton.biz', '22-35-05-19-21', 1696, 33),
(1536, 'Fleury', 'Loan', '1983-02-25', 'Rue des Palombes	16', 'fleuryloan@getmxrr.bzh', '08-98-41-70-63', 1488, 33),
(1537, 'Bourgeois', 'Noah', '1997-11-28', 'Rue de Beaubourg	20', 'bourgeois.noah@outlook.bzh', '29-90-71-23-22', 1572, 33),
(1538, 'Durand', 'Joseph', '1983-11-24', 'Rue du Pre des Aulnes	16', 'durand-joseph@aol.com', '98-68-73-86-70', 1754, 33),
(1539, 'Lacroix', 'William', '1966-10-19', 'Rue Daniel Balavoine	18', 'lacroix_william@outlook.com', '94-08-62-48-45', 1555, 33),
(1540, 'Laurent', 'Jade', '1989-06-28', 'Rue Lucien Brunet	94', 'laurent-jade@aol.bzh', '47-12-55-72-73', 1573, 33),
(1541, 'Gautier', 'Octave', '1965-11-23', 'Rue de Beaubourg	18', 'gautier-octave@zoho.fr', '20-69-97-90-99', 1691, 33),
(1542, 'Fournier', 'Mila', '1964-09-21', 'Rue du Marechal Lannes	29', 'fournier-mila@zoho.biz', '81-06-47-23-01', 1485, 33),
(1543, 'Girard', 'Neyla', '1964-11-26', 'Rue des Palombes	21', 'girard-neyla@icloud.biz', '14-22-71-86-91', 1378, 33),
(1544, 'Menard', 'Nicolas', '1974-03-24', 'Allee Charles Cros	9', 'menard-nicolas@aol.fr', '69-18-33-51-33', 1757, 33),
(1545, 'Duval', 'Bilal', '1996-02-11', 'Rue Lucien Brunet	80', 'duval-bilal@yandex.bzh', '29-92-69-19-33', 1410, 33),
(1546, 'Morin', 'Jean', '1969-05-19', 'Rue des Pinsons	30', 'morin-jean@inbox.eu', '35-16-20-53-75', 1678, 33),
(1547, 'Roussea', 'Joy', '1975-07-01', 'Avenue Charles Balezeaux	10', 'roussea-joy@getmxrr.com', '61-22-20-35-71', 1329, 33),
(1548, 'Morel', 'Maya', '1979-01-27', 'Rue du Marechal Berthier	10', 'morelmaya@gmail.biz', '44-24-13-87-40', 1753, 33),
(1549, 'Lopez', 'Lino', '1979-03-02', 'Rue de la Louvetiere	4', 'lopez_lino@yahoo.bzh', '57-30-19-01-90', 1696, 33),
(1550, 'Bourgeois', 'Naya', '1995-10-08', 'Rue Francois Arago	38', 'bourgeoisnaya@getmxrr.biz', '45-01-03-25-77', 1734, 33),
(1551, 'Renaud', 'David', '1997-11-03', 'Rue des Palombes	32', 'renaud.david@zoho.eu', '14-44-85-84-47', 1774, 33),
(1552, 'Garnier', 'Arthur', '1983-09-25', 'Rue des Pinsons	14', 'garnier.arthur@gmail.biz', '56-18-07-54-53', 1693, 33),
(1553, 'Nicolas', 'Charles', '1979-10-28', 'Rue du Platane	31', 'nicolas.charles@yahoo.eu', '94-08-09-74-65', 1532, 33),
(1554, 'Lacroix', 'Logan', '1992-12-16', 'Rue la Fayette	87', 'logan-lacroix@zoho.fr', '01-53-66-81-73', 1592, 33),
(1555, 'Gonzalez', 'Ali', '1962-04-24', 'Rue du Platane	25', 'ali-gonzalez@fastmail.com', '59-97-72-16-21', 1743, 34),
(1556, 'Guillaume', 'Elina', '1987-01-14', 'Rue du Marechal Berthier	8', 'guillaume.elina@yahoo.fr', '41-55-67-37-37', 1401, 34),
(1557, 'Carpentier', 'Elena', '1987-11-19', 'Place Chambord	22', 'elena-carpentier@yahoo.fr', '46-43-90-92-20', 1673, 34),
(1558, 'Roussel', 'Auguste', '1987-07-12', 'Rue la Fayette	59', 'roussel-auguste@zoho.com', '82-84-67-72-49', 1562, 34),
(1559, 'Garcia', 'Ryan', '1980-11-19', 'Rue de Beaubourg	48', 'garcia.ryan@outlook.bzh', '51-76-33-82-73', 1388, 34),
(1560, 'Fournier', 'Noham', '1968-12-19', 'Rue Francois Arago	50', 'fournier.noham@fastmail.bzh', '49-49-29-52-68', 1783, 34),
(1561, 'Francois', 'Hugo', '1981-08-06', 'Rue du Pre des Aulnes	38', 'francois_hugo@zoho.eu', '13-93-74-61-91', 1479, 34),
(1562, 'Chevali', 'Livio', '1986-12-23', 'Rue Lucien Brunet	66', 'chevalilivio@aol.bzh', '16-64-97-52-35', 1669, 34),
(1563, 'Legrand', 'Marie', '1976-06-14', 'Rue Lucien Brunet	113', 'legrand-marie@inbox.biz', '52-25-87-64-40', 1673, 34),
(1564, 'Francois', 'Bilal', '1976-03-11', 'Allee des Perce Neige	9', 'francois-bilal@proton.biz', '72-04-20-27-01', 1590, 34),
(1565, 'Dupont', 'Alessio', '1978-12-27', 'Rue de Chennevieres	8', 'alessio-dupont@proton.biz', '58-46-40-51-63', 1653, 34),
(1566, 'Garcia', 'Eva', '1997-05-23', 'Rue Lucien Brunet	97', 'garciaeva@yandex.fr', '03-36-75-92-45', 1743, 34),
(1567, 'Garnier', 'Ambre', '1968-12-13', 'Rue du Pre des Aulnes	50', 'garnier-ambre@icloud.eu', '26-81-07-09-53', 1474, 34),
(1568, 'Gautier', 'Elyne', '1977-03-02', 'Rue du Frene	12', 'gautier-elyne@yahoo.biz', '14-57-08-41-03', 1569, 34),
(1569, 'Garcia', 'Sacha', '1981-05-11', 'Rue du Pre des Aulnes	5', 'garciasacha@outlook.com', '06-12-43-07-35', 1669, 34),
(1570, 'Lefebvre', 'Lise', '1994-02-19', 'Rue Francois Arago	14', 'lefebvre.lise@proton.bzh', '96-51-60-74-61', 1468, 34),
(1571, 'Morin', 'Candice', '1969-02-16', 'Allee Charles Baudelaire	4', 'candice-morin@getmxrr.bzh', '21-82-25-18-27', 1505, 34),
(1572, 'Gerard', 'Louka', '1979-11-01', 'Avenue du Chateau d\'Amboise	92', 'gerard-louka@getmxrr.bzh', '35-20-38-00-60', 1711, 34),
(1573, 'Dubois', 'Paul', '1983-12-15', 'Rue de Beaubourg	13', 'dubois.paul@fastmail.biz', '31-10-27-90-93', 1472, 34),
(1574, 'Dupont', 'Sacha', '1988-01-25', 'Rue de Chennevieres	19', 'dupont.sacha@proton.biz', '04-73-52-17-60', 1735, 35),
(1575, 'Laurent', 'Cassandre', '1973-02-02', 'Rue Lucien Brunet	65', 'laurentcassandre@yandex.eu', '77-25-32-00-93', 1416, 35),
(1576, 'Lecomte', 'Kassim', '1967-06-18', 'Rue Lucien Brunet	54', 'lecomte_kassim@zoho.bzh', '60-05-92-48-68', 1667, 35),
(1577, 'Riviere', 'Djibril', '1999-09-02', 'Rue la Fayette	8', 'riviere-djibril@inbox.biz', '71-28-01-18-28', 1431, 35),
(1578, 'Lemoine', 'Lisa', '1966-07-20', 'Rue de l\'Aubepine	48', 'lemoine.lisa@yahoo.com', '21-81-55-11-63', 1598, 35),
(1579, 'Fleury', 'Charles', '1961-03-18', 'Rue Francois Arago	18', 'charles-fleury@icloud.com', '96-79-85-96-73', 1342, 35),
(1580, 'Robin', 'Mohammed', '1970-08-14', 'Avenue du Chateau d\'Amboise	5', 'robin-mohammed@icloud.fr', '94-22-27-28-24', 1480, 35),
(1581, 'Fournier', 'Emmy', '1981-01-07', 'Rue de Chennevieres	18', 'fournieremmy@outlook.com', '08-10-78-60-80', 1689, 35),
(1582, 'Legall', 'Valentine', '2000-05-14', 'Rue du Pre des Aulnes	12', 'legallvalentine@outlook.bzh', '54-58-40-08-63', 1604, 35),
(1583, 'Olivier', 'Garance', '1988-02-13', 'Rue du Platane	19', 'olivier.garance@inbox.bzh', '46-22-74-11-03', 1501, 35),
(1584, 'Legrand', 'Maddy', '1964-09-15', 'Allee des Perce Neige	4', 'legrand-maddy@getmxrr.biz', '12-69-63-70-73', 1371, 35),
(1585, 'Lefebvre', 'Manon', '1997-03-08', 'Rue de Beaubourg	28', 'lefebvremanon@getmxrr.bzh', '02-77-07-98-09', 1348, 35),
(1586, 'Andre', 'Loan', '1996-09-16', 'Rue la Fayette	29', 'andreloan@icloud.bzh', '71-80-98-70-63', 1372, 35),
(1587, 'Simon', 'Sandro', '1982-08-18', 'Rue Creutzer	5', 'simon-sandro@inbox.eu', '04-30-43-20-40', 1376, 35),
(1588, 'Petit', 'Auguste', '1997-10-23', 'Rue du Platane	23', 'petit_auguste@proton.biz', '49-86-97-06-14', 1648, 35),
(1589, 'Nguyen', 'Abel', '1998-10-13', 'Rue Lucien Brunet	15', 'nguyenabel@yandex.com', '31-23-49-75-27', 1469, 35),
(1590, 'Muller', 'Ilyana', '1980-05-06', 'Rue Francois Arago	35', 'muller.ilyana@zoho.eu', '96-46-55-41-43', 1730, 35),
(1591, 'Duval', 'Corentin', '1976-10-02', 'Rue de l\'Aubepine	26', 'corentin-duval@outlook.fr', '75-06-87-20-15', 1590, 35),
(1592, 'Perrin', 'Constance', '1963-09-16', 'Avenue du Chateau d\'Amboise	92', 'perrin.constance@getmxrr.com', '46-17-69-06-71', 1701, 35),
(1593, 'Fleury', 'Maryam', '2000-03-08', 'Rue Jean Cocteau	6', 'maryam-fleury@proton.fr', '23-45-75-85-31', 1679, 35),
(1594, 'Thomas', 'Antonin', '1981-08-03', 'Rue du Marechal Berthier	4', 'antonin-thomas@icloud.com', '95-90-99-36-55', 1584, 35),
(1595, 'Louis', 'Mila', '1972-05-08', 'Rue Lucien Brunet	97', 'louismila@yahoo.com', '57-24-85-06-65', 1738, 35),
(1596, 'Lopez', 'Faustine', '1981-07-25', 'Avenue Charles Balezeaux	22', 'lopez.faustine@zoho.com', '60-08-12-44-40', 1612, 36),
(1597, 'Lefebvre', 'Sandro', '1964-12-02', 'Rue des Palombes	20', 'sandro-lefebvre@yahoo.biz', '03-59-80-64-45', 1635, 36),
(1598, 'Chevali', 'Candice', '1977-03-22', 'Allee des Cytises	2', 'chevali-candice@proton.fr', '74-85-15-84-00', 1535, 36),
(1599, 'Picard', 'Wassim', '1999-06-23', 'Rue de l\'Aubepine	66', 'picardwassim@proton.biz', '64-51-44-57-58', 1473, 36),
(1600, 'Dumont', 'Edouard', '1971-10-02', 'Avenue du Chateau d\'Amboise	63', 'dumont.edouard@outlook.com', '86-76-50-62-17', 1394, 36),
(1601, 'Gonzalez', 'Edouard', '1976-06-04', 'Avenue Charles Balezeaux	5', 'gonzalezedouard@gmail.bzh', '28-48-28-42-73', 1634, 36),
(1602, 'Petit', 'Lino', '1974-12-25', 'Rue de l\'Aubepine	22', 'petit.lino@gmail.bzh', '49-97-55-21-65', 1641, 36),
(1603, 'Bertrand', 'Ilyana', '1996-01-28', 'Rue de Chennevieres	9', 'bertrand_ilyana@fastmail.eu', '82-07-81-28-21', 1526, 36),
(1604, 'Guerin', 'Charles', '1965-04-18', 'Rue des Palombes	16', 'guerin-charles@gmail.com', '68-62-05-29-84', 1727, 36),
(1605, 'Bonnet', 'Lise', '1972-05-16', 'Rue la Fayette	75', 'bonnetlise@aol.bzh', '75-53-72-86-01', 1528, 36),
(1606, 'Guillaume', 'Elina', '1970-12-26', 'Rue des Lupins	4', 'guillaume-elina@icloud.com', '96-47-89-45-99', 1353, 36),
(1607, 'Deschamps', 'Hugo', '1986-03-01', 'Rue de Beaubourg	48', 'deschampshugo@yandex.fr', '28-07-12-69-86', 1588, 36),
(1608, 'Muller', 'Benjamin', '1970-11-14', 'Rue des Palombes	13', 'muller-benjamin@inbox.com', '83-79-01-15-78', 1765, 36),
(1609, 'Gautier', 'Roxane', '1973-10-16', 'Avenue des Campanules	7', 'gautierroxane@proton.bzh', '85-85-12-68-23', 1354, 36),
(1610, 'Olivier', 'Gabriel', '1998-09-24', 'Rue du Marechal Lannes	21', 'olivier-gabriel@icloud.bzh', '81-70-42-33-83', 1425, 36),
(1611, 'Duval', 'Antonin', '1989-10-13', 'Rue Lucien Brunet	57', 'duval.antonin@yahoo.com', '48-23-85-94-78', 1684, 36),
(1612, 'Bourgeois', 'Elya', '1991-12-22', 'Rue la Fayette	54', 'bourgeois-elya@proton.biz', '65-01-54-88-91', 1451, 36),
(1613, 'Lemaire', 'Cassandre', '1967-11-25', 'Allee Charles Baudelaire	13', 'lemairecassandre@aol.eu', '38-68-02-50-85', 1391, 36),
(1614, 'Menard', 'Aymen', '1988-11-04', 'Rue Jean Cocteau	7', 'menard.aymen@proton.fr', '43-61-42-14-31', 1345, 36),
(1615, 'Dumont', 'Jean', '1967-08-18', 'Rue de l\'Aubepine	60', 'dumontjean@aol.eu', '73-48-42-18-81', 1673, 36),
(1616, 'Picard', 'James', '1986-05-15', 'Rue du Pre des Aulnes	20', 'picardjames@proton.fr', '20-73-96-71-88', 1785, 36),
(1617, 'Perrin', 'Apolline', '1996-06-11', 'Rue Daniel Balavoine	18', 'perrin-apolline@fastmail.bzh', '51-30-69-53-59', 1769, 36),
(1618, 'Nicolas', 'Mohammed', '1983-04-02', 'Place Chinon	53', 'nicolas-mohammed@fastmail.biz', '11-78-23-64-29', 1525, 36),
(1619, 'Legall', 'Eline', '1978-06-19', 'Rue de Beaubourg	13', 'legall-eline@aol.bzh', '50-21-75-29-68', 1594, 36),
(1620, 'Thomas', 'Arya', '1961-08-04', 'Rue Francois Arago	5', 'thomas-arya@zoho.biz', '74-29-10-72-89', 1515, 37),
(1621, 'Perrin', 'Myla', '1999-04-23', 'Rue des Pinsons	22', 'perrin.myla@yahoo.biz', '62-15-49-27-43', 1791, 37),
(1622, 'Philippe', 'Thiago', '1963-01-24', 'Rue Jean Cocteau	4', 'thiago-philippe@proton.fr', '88-85-19-86-65', 1767, 37),
(1623, 'Perrin', 'Emma', '1969-04-18', 'Avenue du Chateau d\'Amboise	88', 'perrin-emma@inbox.biz', '83-34-31-33-73', 1523, 37),
(1624, 'Fontain', 'Naomi', '1966-12-07', 'Rue de l\'Aubepine	40', 'fontain.naomi@getmxrr.fr', '18-21-18-45-26', 1546, 37),
(1625, 'Bernard', 'Ethan', '1986-07-05', 'Rue Prudhon	4', 'ethan-bernard@aol.bzh', '11-10-50-57-71', 1513, 37),
(1626, 'Garcia', 'Myla', '1999-11-13', 'Rue de Chennevieres	30', 'garcia-myla@gmail.fr', '18-89-61-42-99', 1660, 37),
(1627, 'Clement', 'Lia', '1961-09-11', 'Rue la Fayette	28', 'clement-lia@outlook.biz', '77-29-80-03-35', 1727, 37),
(1628, 'Riviere', 'Emma', '1971-07-08', 'Avenue du Chateau d\'Amboise	75', 'riviere_emma@gmail.fr', '58-14-13-53-76', 1550, 37),
(1629, 'Joly', 'Alice', '1977-04-13', 'Rue Lucien Brunet	62', 'jolyalice@outlook.fr', '05-23-42-59-11', 1393, 37),
(1630, 'Carpentier', 'Constance', '1997-06-23', 'Rue la Fayette	31', 'carpentier_constance@yandex.bzh', '66-34-55-89-54', 1318, 37),
(1631, 'Berger', 'Alba', '1985-11-11', 'Rue de l\'Aubepine	14', 'alba-berger@icloud.biz', '89-27-08-79-45', 1695, 37),
(1632, 'Olivier', 'Ellie', '1991-01-24', 'Rue Francois Arago	60', 'olivier.ellie@fastmail.fr', '50-86-74-01-14', 1349, 37),
(1633, 'Louis', 'Emmy', '1996-06-26', 'Rue de l\'Aubepine	18', 'louis.emmy@aol.biz', '30-88-95-07-55', 1598, 37),
(1634, 'Thomas', 'Jean', '1973-04-01', 'Avenue du Chateau d\'Amboise	31', 'thomas-jean@fastmail.biz', '18-22-99-37-27', 1540, 37),
(1635, 'Lemoine', 'Sandro', '1980-03-13', 'Avenue du Chateau d\'Amboise	89', 'lemoine.sandro@yandex.biz', '41-28-57-99-14', 1592, 37),
(1636, 'Faure', 'Soline', '1972-05-16', 'Rue des Lupins	8', 'faure-soline@fastmail.biz', '91-19-18-66-89', 1754, 37),
(1637, 'Dasilva', 'Charly', '1998-12-06', 'Place Chaumont	4', 'dasilvacharly@yandex.fr', '61-33-72-27-30', 1755, 37),
(1638, 'Lambert', 'Lina', '1977-08-13', 'Rue des Palombes	35', 'lambert_lina@fastmail.com', '80-45-57-49-37', 1731, 37),
(1639, 'Renaud', 'Adem', '1995-09-21', 'Rue Lucien Brunet	46', 'renaud_adem@outlook.bzh', '94-85-65-59-55', 1775, 37),
(1640, 'Rey', 'Aaron', '1997-06-19', 'Rue de l\'Aubepine	40', 'aaron-rey@gmail.eu', '98-09-47-60-02', 1531, 37),
(1641, 'Dasilva', 'Louis', '1988-12-27', 'Avenue du Chateau d\'Amboise	75', 'dasilva-louis@yahoo.fr', '10-06-31-89-19', 1656, 37),
(1642, 'Fontain', 'Eden', '1987-12-24', 'Avenue du Chateau d\'Amboise	57', 'fontain_eden@fastmail.biz', '73-09-50-65-10', 1422, 38),
(1643, 'Morin', 'Fatoumata', '2001-01-18', 'Avenue Charles Balezeaux	14', 'morin-fatoumata@gmail.eu', '33-98-37-51-51', 1594, 38),
(1644, 'Guillaume', 'Benjamin', '1961-05-18', 'Place Chenonceaux	38', 'guillaumebenjamin@icloud.biz', '90-47-19-08-12', 1698, 38),
(1645, 'Henry', 'Charly', '1985-08-21', 'Avenue Charles Balezeaux	18', 'henry-charly@yahoo.bzh', '80-06-21-00-06', 1565, 38),
(1646, 'Guillot', 'Swann', '1987-05-03', 'Rue Lucien Brunet	29', 'swann-guillot@yandex.com', '69-66-87-31-15', 1582, 38),
(1647, 'Mercier', 'Jonas', '1963-12-25', 'Place Chenonceaux	23', 'mercierjonas@icloud.biz', '63-85-36-01-86', 1532, 38),
(1648, 'Muller', 'Adrien', '1975-11-09', 'Rue des Pinsons	30', 'muller_adrien@yahoo.biz', '77-68-02-80-71', 1502, 38),
(1649, 'Michel', 'Adem', '1981-02-09', 'Avenue du Chateau d\'Amboise	44', 'michel_adem@gmail.eu', '01-25-01-06-81', 1583, 38),
(1650, 'Legall', 'Myriam', '1986-11-21', 'Allee Charles Baudelaire	15', 'legall-myriam@zoho.eu', '86-02-84-53-36', 1725, 38),
(1651, 'Fournier', 'Myla', '1970-04-21', 'Avenue du Chateau d\'Amboise	72', 'fournier.myla@outlook.biz', '82-81-52-26-45', 1761, 38),
(1652, 'Picard', 'Juliette', '1995-08-18', 'Allee des Perce Neige	2', 'picardjuliette@proton.com', '62-20-58-35-88', 1731, 38),
(1653, 'Dasilva', 'Amine', '1994-04-03', 'Rue Francois Arago	25', 'dasilva.amine@icloud.biz', '23-45-22-27-99', 1657, 38),
(1654, 'Bernard', 'Joshua', '1989-09-04', 'Rue Camille Desmoulins	4', 'bernard-joshua@gmail.fr', '38-05-23-41-55', 1624, 38),
(1655, 'Mathieu', 'Agathe', '1983-09-22', 'Rue Camille Desmoulins	10', 'mathieuagathe@yahoo.biz', '80-76-66-92-95', 1584, 38),
(1656, 'Fournier', 'Gabriel', '1961-03-06', 'Allee Charles Baudelaire	3', 'fournier-gabriel@getmxrr.bzh', '65-23-83-92-36', 1590, 38),
(1657, 'Michel', 'Augustine', '1992-01-13', 'Rue Francois Arago	58', 'michel.augustine@proton.bzh', '98-16-28-90-87', 1548, 38),
(1658, 'Martinez', 'Sophie', '1968-06-18', 'Rue Monthety	29', 'sophie-martinez@zoho.eu', '14-74-52-74-55', 1617, 38),
(1659, 'Francois', 'Myriam', '1971-07-12', 'Chemin des 4 Chenes	5', 'francois_myriam@inbox.fr', '20-54-41-51-20', 1555, 38),
(1660, 'Riviere', 'Faustine', '1974-01-24', 'Route Nationale 4	1', 'faustine-riviere@icloud.eu', '14-46-50-16-30', 1392, 38),
(1661, 'Riviere', 'Eva', '1995-01-07', 'Rue Francois Arago	83', 'riviere-eva@zoho.fr', '87-70-35-75-25', 1493, 38),
(1662, 'Bourgeois', 'Tiago', '1967-09-09', 'Rue Francois Arago	63', 'bourgeois_tiago@getmxrr.biz', '41-05-84-43-08', 1712, 38),
(1663, 'Leroy', 'Corentin', '1979-06-21', 'Rue Lucien Brunet	85', 'leroycorentin@yahoo.eu', '31-48-40-08-15', 1680, 38),
(1664, 'Nicolas', 'Naomi', '1992-10-22', 'Avenue du Chateau d\'Amboise	76', 'naomi-nicolas@zoho.eu', '74-57-06-31-70', 1696, 39),
(1665, 'Denis', 'Nathan', '1978-08-22', 'Rue des Pinsons	22', 'denis_nathan@yandex.biz', '89-42-45-19-08', 1549, 39),
(1666, 'Gerard', 'Edouard', '1974-02-28', 'Avenue des Genets	5', 'gerard-edouard@gmail.biz', '66-80-80-38-34', 1708, 39),
(1667, 'Richard', 'Gabriel', '1964-11-05', 'Rue Lucien Brunet	89', 'richard-gabriel@outlook.com', '90-43-33-39-72', 1678, 39),
(1668, 'Rey', 'Elyne', '1976-08-22', 'Rue du General Joubert	14', 'rey.elyne@inbox.eu', '62-09-48-79-39', 1596, 39),
(1669, 'Dupuis', 'Elyne', '1965-09-25', 'Rue de l\'Aubepine	58', 'dupuis-elyne@proton.biz', '20-73-02-33-82', 1768, 39),
(1670, 'Lambert', 'Khadija', '1979-06-07', 'Rue de Beaubourg	10', 'khadija-lambert@aol.bzh', '78-09-83-69-67', 1383, 39),
(1671, 'Mathieu', 'Mathis', '1988-06-23', 'Rue Francois Arago	31', 'mathieu-mathis@inbox.biz', '69-09-22-40-74', 1369, 39),
(1672, 'Lemoine', 'Soline', '1970-09-15', 'Rue la Fayette	62', 'lemoine.soline@zoho.com', '76-98-06-84-30', 1489, 39),
(1673, 'Moulin', 'Livia', '1966-03-02', 'Rue de l\'Aubepine	24', 'moulin-livia@yahoo.com', '11-19-11-42-60', 1453, 39),
(1674, 'Lacroix', 'Benjamin', '1989-12-26', 'Rue de l\'Aubepine	50', 'lacroixbenjamin@yandex.eu', '32-38-55-85-21', 1515, 39),
(1675, 'Berger', 'Eva', '1972-08-01', 'Avenue du Chateau d\'Amboise	59', 'berger_eva@getmxrr.bzh', '36-90-01-63-39', 1523, 39),
(1676, 'Andre', 'Mathis', '1999-04-10', 'Rue de la Louvetiere	2', 'mathis-andre@getmxrr.bzh', '58-95-17-56-67', 1629, 39),
(1677, 'Martin', 'Agathe', '1993-01-27', 'Rue de l\'Aubepine	31', 'martin_agathe@fastmail.bzh', '91-82-39-91-96', 1474, 39),
(1678, 'Dumont', 'David', '1963-06-23', 'Rue de l\'Aubepine	70', 'dumontdavid@getmxrr.eu', '34-98-95-79-70', 1513, 39),
(1679, 'Louis', 'Naomi', '1995-12-06', 'Rue Monthety	39', 'louisnaomi@zoho.bzh', '78-75-39-66-26', 1477, 39),
(1680, 'Hubert', 'Jade', '1975-12-24', 'Rue Francois Arago	25', 'jade-hubert@yahoo.fr', '88-53-10-50-50', 1641, 39),
(1681, 'Lecomte', 'Lilya', '1984-12-26', 'Rue Francois Arago	58', 'lecomte-lilya@fastmail.eu', '62-25-01-23-34', 1642, 39),
(1682, 'Menard', 'Cassandre', '1969-09-18', 'Avenue du Chateau d\'Amboise	78', 'menardcassandre@fastmail.fr', '08-86-39-19-19', 1516, 39),
(1683, 'Hubert', 'Lucien', '1986-06-03', 'Rue de l\'Aubepine	19', 'lucien-hubert@proton.fr', '14-79-44-36-69', 1788, 40),
(1684, 'Nicolas', 'Julia', '1962-08-23', 'Avenue Charles Balezeaux	32', 'nicolas_julia@gmail.fr', '49-84-25-34-09', 1500, 40),
(1685, 'Sanchez', 'Elliot', '1987-02-16', 'Allee Charles Baudelaire	7', 'elliot-sanchez@gmail.fr', '49-74-36-44-87', 1386, 40),
(1686, 'Louis', 'Manon', '1964-03-10', 'Rue des Palombes	47', 'louis-manon@yandex.bzh', '87-99-51-30-41', 1643, 40),
(1687, 'Fournier', 'Elyne', '1965-03-11', 'Rue du Frene	12', 'fournier.elyne@icloud.eu', '63-22-63-65-57', 1409, 40),
(1688, 'Rey', 'Joseph', '1974-02-09', 'Rue la Fayette	60', 'rey-joseph@getmxrr.fr', '84-09-85-53-31', 1622, 40),
(1689, 'Lopez', 'Apolline', '1985-11-09', 'Rue de Chennevieres	20', 'lopez_apolline@icloud.bzh', '80-90-49-53-62', 1766, 40),
(1690, 'Thomas', 'Tom', '1980-04-11', 'Rue de Beaubourg	31', 'thomas.tom@yahoo.biz', '62-98-03-94-65', 1752, 40),
(1691, 'Riviere', 'Eden', '1966-10-09', 'Allee Charles Baudelaire	13', 'riviereeden@icloud.bzh', '00-71-49-88-96', 1721, 40),
(1692, 'Robert', 'Loan', '1962-07-20', 'Rue Hoffmann	1', 'robert.loan@icloud.com', '82-43-90-92-84', 1446, 40),
(1693, 'David', 'Ethan', '1982-06-11', 'Rue de Beaubourg	27', 'ethan-david@yandex.eu', '04-04-61-14-80', 1411, 40),
(1694, 'Gaillard', 'Corentin', '1997-08-04', 'Rue Lucien Brunet	87', 'gaillardcorentin@icloud.bzh', '88-89-04-04-15', 1494, 40),
(1695, 'Durand', 'Hana', '1961-06-11', 'Rue Creutzer	5', 'durand_hana@proton.fr', '48-27-60-85-76', 1447, 40),
(1696, 'Renaud', 'William', '1977-01-17', 'Rue Lucien Brunet	11', 'renaud-william@inbox.bzh', '37-70-91-60-53', 1602, 40),
(1697, 'Vincent', 'Elina', '1999-04-28', 'Rue de Beaubourg	8', 'vincent.elina@gmail.com', '65-98-88-90-21', 1352, 40),
(1698, 'Carpentier', 'Basile', '1997-01-04', 'Rue Creutzer	17', 'carpentierbasile@getmxrr.eu', '80-89-37-74-42', 1715, 40),
(1699, 'Roux', 'Nathan', '1978-12-15', 'Rue du Pre des Aulnes	32', 'roux-nathan@proton.eu', '87-76-37-82-73', 1467, 40),
(1700, 'Sanchez', 'Livia', '2001-02-04', 'Avenue du Chateau d\'Amboise	74', 'livia-sanchez@zoho.biz', '79-45-34-31-08', 1684, 40),
(1701, 'Faure', 'Adam', '1979-05-24', 'Rue de l\'Aubepine	9', 'adam-faure@inbox.fr', '64-95-77-55-33', 1752, 40),
(1702, 'Fleury', 'Martin', '2001-05-12', 'Rue Jean Cocteau	16', 'fleurymartin@getmxrr.eu', '76-84-32-27-47', 1782, 40),
(1703, 'Moreau', 'Ryan', '1993-04-01', 'Rue du Marechal Lannes	23', 'moreau_ryan@fastmail.bzh', '35-71-54-74-42', 1553, 40),
(1704, 'Garnier', 'Elena', '1961-03-25', 'Rue Creutzer	26', 'garnier-elena@zoho.com', '46-28-62-71-58', 1776, 40),
(1705, 'Denis', 'Jade', '1978-07-26', 'Rue de Beaubourg	46', 'denis-jade@getmxrr.com', '05-16-32-73-17', 1609, 40),
(1706, 'Muller', 'Lise', '1970-11-20', 'Rue Francois Arago	22', 'muller-lise@inbox.com', '08-37-90-85-48', 1743, 40),
(1707, 'Berger', 'Lucien', '1972-02-25', 'Place Chinon	49', 'lucien-berger@aol.fr', '84-60-23-93-73', 1574, 40),
(1708, 'Henry', 'Elias', '1968-02-14', 'Avenue Charles Balezeaux	4', 'henryelias@getmxrr.bzh', '81-59-31-69-31', 1790, 41),
(1709, 'Renaud', 'Julie', '1989-12-12', 'Place Chambord	16', 'renaud-julie@icloud.fr', '01-50-16-72-75', 1319, 41),
(1710, 'Gauthie', 'Ali', '1981-01-02', 'Rue de la Louvetiere	12', 'gauthie-ali@inbox.com', '69-23-69-00-10', 1710, 41),
(1711, 'Gerard', 'Anas', '1987-06-14', 'Rue des Palombes	39', 'gerard-anas@getmxrr.com', '32-35-67-97-84', 1767, 41),
(1712, 'Picard', 'Assia', '1988-11-10', 'Rue du Pre des Aulnes	22', 'picard_assia@icloud.bzh', '52-77-26-78-99', 1387, 41),
(1713, 'Francois', 'Thiago', '1975-01-09', 'Rue Francois Arago	40', 'francois-thiago@inbox.bzh', '62-47-25-89-87', 1687, 41),
(1714, 'Dasilva', 'Sasha', '1962-04-16', 'Rue Jean Cocteau	6', 'dasilvasasha@outlook.com', '74-72-51-37-61', 1774, 41),
(1715, 'Fleury', 'Adem', '1994-09-28', 'Rue Jean Cocteau	6', 'fleuryadem@outlook.com', '68-69-22-60-97', 1788, 41),
(1716, 'Francois', 'Auguste', '1998-08-03', 'Rue Francois Arago	57', 'francois_auguste@aol.com', '73-80-45-10-25', 1613, 41),
(1717, 'Philippe', 'Eline', '1981-02-10', 'Rue de Beaubourg	38', 'philippeeline@inbox.com', '83-43-45-62-86', 1686, 41),
(1718, 'Guillot', 'Elliot', '1978-08-17', 'Avenue du Chateau d\'Amboise	15', 'guillot-elliot@inbox.biz', '79-42-20-85-47', 1695, 41),
(1719, 'Dupuis', 'Faustine', '1963-04-26', 'Avenue du Chateau d\'Amboise	93', 'dupuis.faustine@outlook.eu', '79-57-49-26-04', 1430, 41),
(1720, 'Michel', 'Basile', '1990-02-18', 'Allee Charles Baudelaire	9', 'michel-basile@inbox.com', '42-83-40-52-79', 1384, 41),
(1721, 'Masson', 'Mathis', '1995-03-16', 'Rue la Fayette	21', 'masson-mathis@proton.bzh', '70-49-91-95-50', 1688, 41),
(1722, 'Berger', 'Mylan', '1989-01-28', 'Rue du Marechal Lannes	15', 'mylan-berger@inbox.biz', '42-02-38-88-89', 1465, 41),
(1723, 'Gonzalez', 'Mohammed', '1961-04-09', 'Rue de Chennevieres	4', 'mohammed-gonzalez@getmxrr.biz', '51-19-31-60-42', 1771, 41),
(1724, 'Roussea', 'Nicolas', '1976-02-20', 'Rue Suard	1', 'roussea.nicolas@aol.eu', '07-40-82-57-94', 1448, 41),
(1725, 'Laurent', 'Issa', '1998-10-12', 'Allee des Perce Neige	1', 'laurent-issa@proton.biz', '28-92-98-86-08', 1714, 41),
(1726, 'Guerin', 'Lia', '1977-12-16', 'Rue des Palombes	19', 'guerinlia@icloud.fr', '87-05-19-30-03', 1645, 41),
(1727, 'Bourgeois', 'Manon', '1964-01-08', 'Rue des Camelias	3', 'bourgeois-manon@icloud.fr', '37-84-23-53-83', 1608, 41),
(1728, 'Lefevre', 'Arya', '1969-02-10', 'Rue de Beaubourg	40', 'lefevre.arya@gmail.eu', '53-47-18-45-39', 1785, 41),
(1729, 'Andre', 'Soline', '1963-03-25', 'Place Chinon	54', 'andre_soline@inbox.eu', '47-01-90-72-95', 1576, 41),
(1730, 'Bertrand', 'Malone', '1963-11-04', 'Rue des Lupins	2', 'bertrandmalone@fastmail.com', '08-92-21-35-10', 1509, 41),
(1731, 'Girard', 'Candice', '1980-04-11', 'Rue Francois Arago	52', 'candice-girard@fastmail.eu', '09-39-86-93-17', 1335, 41);
INSERT INTO `eleves` (`code_eleve`, `nom_eleve`, `prenom_eleve`, `date_naissance_eleve`, `adresse_eleve`, `mail_eleve`, `telephone_eleve`, `code_parrain_eleve`, `code_classe_eleve`) VALUES
(1732, 'Legall', 'Alice', '1996-05-04', 'Rue des Palombes	22', 'legall-alice@zoho.com', '85-06-83-85-31', 1690, 41),
(1733, 'Robert', 'Ella', '1974-10-26', 'Rue Francois Arago	54', 'robert-ella@aol.com', '42-96-28-96-80', 1490, 41),
(1734, 'Muller', 'Elsa', '1998-04-12', 'Rue Francois Arago	5', 'elsa-muller@proton.com', '17-74-65-82-05', 1618, 42),
(1735, 'Moreau', 'Faustine', '1990-10-09', 'Rue Lucien Brunet	117', 'moreau_faustine@icloud.biz', '82-53-96-50-48', 1700, 42),
(1736, 'Perrin', 'Naomi', '1978-07-18', 'Rue Hoffmann	6', 'naomi-perrin@fastmail.eu', '04-97-02-12-29', 1632, 42),
(1737, 'Guillaume', 'Ella', '1982-12-24', 'Place Chinon	48', 'guillaume-ella@yandex.eu', '69-28-51-27-42', 1405, 42),
(1738, 'Dumont', 'Mohamed', '1981-03-02', 'Rue du Pre des Aulnes	20', 'dumont-mohamed@aol.fr', '23-24-59-35-36', 1697, 42),
(1739, 'Francois', 'Louka', '2001-12-22', 'Avenue Charles Balezeaux	29', 'francois_louka@getmxrr.eu', '60-58-51-35-78', 1510, 42),
(1740, 'Gauthie', 'Apolline', '1989-09-10', 'Rue Francois Arago	24', 'gauthie-apolline@fastmail.com', '27-03-54-06-72', 1321, 42),
(1741, 'Muller', 'Kayden', '1999-10-06', 'Rue de l\'Aubepine	40', 'mullerkayden@zoho.biz', '38-97-78-74-90', 1611, 42),
(1742, 'Rey', 'Alba', '1991-10-18', 'Rue Monthety	9', 'alba-rey@gmail.fr', '83-51-91-87-69', 1662, 42),
(1743, 'Dupuis', 'Paul', '1964-07-01', 'Rue Francois Arago	15', 'dupuis_paul@inbox.biz', '10-98-75-74-31', 1599, 42),
(1744, 'Masson', 'Jade', '1986-12-10', 'Rue de Chennevieres	28', 'massonjade@inbox.com', '68-48-40-50-20', 1687, 42),
(1745, 'Boyer', 'Marie', '1984-05-21', 'Rue Lucien Brunet	81', 'marie-boyer@outlook.eu', '77-91-50-10-31', 1757, 42),
(1746, 'Clement', 'Kenzo', '1961-02-09', 'Rue de l\'Aubepine	8', 'clement-kenzo@yahoo.com', '34-76-40-69-23', 1507, 42),
(1747, 'Roussel', 'Elina', '1972-06-05', 'Route Nationale 4	9', 'roussel.elina@icloud.com', '79-67-50-53-96', 1781, 42),
(1748, 'Bernard', 'Kenzo', '1980-10-12', 'Rue de Beaubourg	10', 'bernard_kenzo@aol.com', '42-46-74-57-87', 1524, 42),
(1749, 'Dupuis', 'Agathe', '1991-10-23', 'Rue de Beaubourg	26', 'agathe-dupuis@yahoo.biz', '64-12-22-11-14', 1760, 42),
(1750, 'Charles', 'Soline', '1987-07-22', 'Rue du Pre des Aulnes	34', 'charles-soline@yahoo.fr', '40-51-44-51-28', 1739, 42),
(1751, 'Masson', 'Mia', '1972-11-24', 'Rue du Pre des Aulnes	50', 'massonmia@zoho.eu', '58-92-41-29-88', 1716, 42),
(1752, 'Moreau', 'Ethan', '1983-05-06', 'Rue Lucien Brunet	87', 'moreau_ethan@gmail.bzh', '91-82-77-19-42', 1730, 42),
(1753, 'Martinez', 'Elyna', '1991-09-19', 'Avenue du Chateau d\'Amboise	32', 'martinez_elyna@icloud.com', '77-45-96-80-17', 1685, 42),
(1754, 'Joly', 'Neyla', '1982-08-09', 'Rue Prudhon	3', 'jolyneyla@proton.biz', '72-55-47-67-41', 1663, 43),
(1755, 'Riviere', 'Abel', '1979-01-17', 'Rue des Palombes	20', 'riviere_abel@gmail.fr', '05-11-26-38-44', 1769, 43),
(1756, 'Simon', 'Lorenz', '1998-10-08', 'Rue la Fayette	22', 'lorenz-simon@getmxrr.biz', '77-09-97-25-16', 1751, 43),
(1757, 'Lefevre', 'Jules', '1967-06-25', 'Rue du Pre des Aulnes	28', 'lefevrejules@zoho.eu', '58-15-66-48-82', 1627, 43),
(1758, 'Moulin', 'Myriam', '1994-04-23', 'Avenue Charles Balezeaux	17', 'moulin_myriam@outlook.biz', '58-70-90-16-95', 1355, 43),
(1759, 'Boyer', 'Kayden', '1991-11-28', 'Rue Lucien Brunet	111', 'boyer-kayden@yandex.bzh', '52-75-18-43-50', 1740, 43),
(1760, 'Robin', 'Sacha', '1999-08-25', 'Avenue du Chateau d\'Amboise	92', 'robinsacha@inbox.eu', '38-71-18-00-48', 1486, 43),
(1761, 'Mathieu', 'Soline', '1977-02-19', 'Rue des Palombes	24', 'mathieu-soline@inbox.biz', '69-01-45-96-73', 1538, 43),
(1762, 'Blanc', 'Joshua', '1964-09-26', 'Rue des Pinsons	28', 'joshua-blanc@getmxrr.com', '53-90-70-95-22', 1503, 43),
(1763, 'Lemaire', 'Faustine', '1968-05-23', 'Rue des Pinsons	36', 'lemairefaustine@yandex.fr', '89-27-78-88-85', 1506, 43),
(1764, 'Michel', 'Anna', '1975-10-21', 'Rue de la Briqueterie	14', 'michel-anna@gmail.com', '87-45-24-37-52', 1545, 43),
(1765, 'Fontain', 'Aymen', '1995-10-28', 'Avenue des Genets	5', 'fontain_aymen@fastmail.bzh', '29-43-40-51-61', 1625, 43),
(1766, 'Andre', 'Candice', '1991-12-28', 'Avenue du Chateau d\'Amboise	46', 'andre-candice@outlook.fr', '25-45-14-83-58', 1650, 43),
(1767, 'Louis', 'Corentin', '1982-01-06', 'Rue Daniel Balavoine	18', 'louis_corentin@outlook.fr', '63-05-28-81-19', 1683, 43),
(1768, 'Henry', 'Adem', '1969-08-20', 'Rue Jean Cocteau	10', 'henry.adem@outlook.eu', '10-18-77-09-24', 1379, 43),
(1769, 'Roussel', 'Julie', '1971-07-08', 'Avenue du Chateau d\'Amboise	5', 'roussel.julie@getmxrr.bzh', '28-71-56-48-29', 1363, 43),
(1770, 'Legall', 'Anna', '1990-07-20', 'Rue Lucien Brunet	67', 'legall.anna@zoho.biz', '30-74-34-98-40', 1707, 43),
(1771, 'Dubois', 'Elsa', '1991-07-26', 'Rue des Camelias	10', 'elsa-dubois@outlook.fr', '79-38-62-96-43', 1636, 43),
(1772, 'Chevali', 'Elya', '1991-12-24', 'Rue de la Louvetiere	8', 'chevalielya@outlook.eu', '52-31-95-76-04', 1585, 43),
(1773, 'Andre', 'Wassim', '1977-06-24', 'Rue des Palombes	31', 'andrewassim@zoho.fr', '27-15-15-46-70', 1498, 44),
(1774, 'Picard', 'Thiago', '1979-10-08', 'Rue des Camelias	2', 'picard_thiago@aol.bzh', '73-20-52-94-41', 1790, 44),
(1775, 'Guillot', 'Lorenz', '1996-12-22', 'Avenue Charles Balezeaux	33', 'guillot_lorenz@yandex.com', '34-89-95-88-97', 1326, 44),
(1776, 'Morin', 'Marie', '1988-12-15', 'Rue de l\'Aubepine	30', 'morin_marie@yahoo.fr', '25-18-83-07-35', 1615, 44),
(1777, 'Mathieu', 'Eva', '1986-03-07', 'Rue Francois Arago	48', 'mathieu-eva@proton.biz', '69-15-25-36-09', 1791, 44),
(1778, 'Fabre', 'Ambre', '1981-05-14', 'Avenue du Chateau d\'Amboise	39', 'fabre-ambre@yandex.biz', '49-86-55-49-80', 1455, 44),
(1779, 'Durand', 'Aymen', '1968-03-10', 'Rue de Beaubourg	15', 'durand.aymen@aol.com', '84-59-02-71-74', 1751, 44),
(1780, 'Boyer', 'Ryan', '1964-12-04', 'Rue des Pinsons	10', 'ryan-boyer@getmxrr.biz', '25-12-80-05-95', 1537, 44),
(1781, 'Michel', 'Charlie', '1990-03-03', 'Rue la Fayette	53', 'michel-charlie@zoho.fr', '83-58-65-54-34', 1766, 44),
(1782, 'Morel', 'Louise', '1962-04-26', 'Rue de l\'Aubepine	43', 'morel.louise@inbox.com', '86-32-84-66-56', 1664, 44),
(1783, 'Michel', 'Elias', '1984-06-23', 'Rue Creutzer	107', 'michelelias@proton.biz', '56-22-45-20-77', 1457, 44),
(1784, 'Lemoine', 'Joshua', '1987-11-01', 'Rue Hoffmann	4', 'lemoinejoshua@zoho.com', '27-87-73-68-64', 1671, 44),
(1785, 'Martinez', 'Ellie', '1968-09-26', 'Chemin des 4 Chenes	1', 'martinez_ellie@icloud.fr', '59-85-17-20-91', 1778, 44),
(1786, 'Henry', 'Lilya', '1974-05-20', 'Avenue du Chateau d\'Amboise	38', 'henry-lilya@outlook.fr', '98-58-15-13-23', 1444, 44),
(1787, 'Lambert', 'Ambre', '1990-01-14', 'Rue Lucien Brunet	66', 'lambertambre@aol.com', '54-80-84-59-98', 1539, 44),
(1788, 'Chevali', 'Joy', '1995-08-26', 'Rue de l\'Aubepine	4', 'chevali-joy@proton.fr', '65-76-86-68-95', 1385, 44),
(1789, 'Gaillard', 'Alessio', '1989-12-04', 'Rue des Palombes	23', 'gaillard.alessio@gmail.com', '48-59-77-43-86', 1765, 44),
(1790, 'Vincent', 'Hugo', '1977-10-28', 'Rue des Palombes	42', 'vincent-hugo@yandex.fr', '18-26-56-10-44', 1743, 44),
(1791, 'Robert', 'Noah', '1989-06-05', 'Rue du Pre des Aulnes	12', 'noah-robert@yahoo.fr', '80-25-42-22-62', 1748, 44),
(1792, 'Carpentier', 'Alexis', '1988-05-28', 'Rue Monthety	94', 'carpentier.alexis@inbox.eu', '32-73-60-24-60', 1786, 44);

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

--
-- Dumping data for table `matieres`
--

INSERT INTO `matieres` (`code_matiere`, `nom_matiere`) VALUES
(1, 'français'),
(2, 'mathématiques'),
(3, 'anglais'),
(4, 'histoire-géographie'),
(5, 'education civique'),
(6, 'sciences de la vie et de la terre'),
(7, 'technologies'),
(8, 'education musicale'),
(9, 'arts plastiques'),
(10, 'education physique'),
(11, 'physique chimie'),
(12, 'allemand');

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
  `mail_professeur` varchar(50) NOT NULL,
  `telephone_professeur` varchar(20) NOT NULL,
  `date_entree_professeur` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `professeurs`
--

INSERT INTO `professeurs` (`code_professeur`, `nom_professeur`, `prenom_professeur`, `date_naissance_professeur`, `adresse_professeur`, `mail_professeur`, `telephone_professeur`, `date_entree_professeur`) VALUES
(57, 'Gonzalez', 'Logan', '1991-11-19', 'Rue Lucien Brunet	52', 'gonzalez.logan@inbox.biz', '93-40-37-41-12', '2006-02-09'),
(58, 'Gaillard', 'William', '1999-11-03', 'Rue Lucien Brunet	24', 'william-gaillard@gmail.com', '04-34-60-43-16', '2009-09-23'),
(59, 'Adam', 'Ayoub', '1977-04-03', 'Rue la Fayette	16', 'adamayoub@icloud.com', '70-36-85-98-57', '2008-05-20'),
(60, 'Guillot', 'Gabriel', '1990-10-09', 'Avenue du Chateau d\'Amboise	93', 'gabriel-guillot@aol.biz', '70-33-52-74-95', '2003-11-27'),
(61, 'Moulin', 'Mohammed', '1993-10-28', 'Rue Suard	2', 'moulin.mohammed@gmail.bzh', '30-47-93-28-91', '2004-02-03'),
(62, 'Guerin', 'Lise', '1988-08-17', 'Rue Camille Desmoulins	26', 'guerin_lise@gmail.fr', '73-59-34-85-23', '2010-09-24'),
(63, 'Andre', 'Manon', '1988-01-06', 'Rue de la Briqueterie	11', 'manon-andre@zoho.biz', '67-24-35-84-73', '2002-09-08'),
(64, 'Muller', 'Julie', '1999-02-12', 'Allee Charles Baudelaire	10', 'julie-muller@zoho.bzh', '42-17-43-41-00', '2002-01-13'),
(65, 'Picard', 'Gabin', '2001-08-04', 'Allee Charles Baudelaire	7', 'picard_gabin@outlook.bzh', '33-75-92-59-11', '2010-01-04'),
(66, 'Fabre', 'Gabin', '1974-06-25', 'Rue de Chennevieres	22', 'fabre.gabin@zoho.eu', '76-29-44-26-58', '2002-11-21'),
(67, 'Lefebvre', 'Tiago', '1998-08-06', 'Rue Monthety	37', 'lefebvre.tiago@zoho.com', '85-48-18-81-48', '2006-12-25'),
(68, 'Bonnet', 'Arya', '1973-08-13', 'Rue Lucien Brunet	22', 'bonnet.arya@outlook.fr', '96-43-72-75-49', '2003-10-24'),
(69, 'Morel', 'Yousse', '1973-07-24', 'Rue des Palombes	4', 'yousse-morel@getmxrr.fr', '76-08-41-48-07', '2008-01-12'),
(70, 'Joly', 'Ilyana', '1962-11-08', 'Rue la Fayette	91', 'ilyana-joly@yahoo.com', '15-43-94-27-21', '2004-03-04'),
(71, 'Blanc', 'Lia', '1961-06-18', 'Place Chinon	48', 'blanclia@yahoo.eu', '13-52-35-81-27', '2008-10-15'),
(72, 'Clement', 'Gustave', '1967-07-26', 'Rue Hoffmann	5', 'clement.gustave@inbox.com', '89-67-82-72-47', '2001-06-16'),
(73, 'Garnier', 'Eva', '1991-08-01', 'Avenue du Chateau d\'Amboise	2', 'garnier-eva@yandex.bzh', '56-14-52-53-47', '2011-01-22'),
(74, 'Lopez', 'Alexis', '1988-07-15', 'Place Chaumont	4', 'alexis-lopez@yahoo.com', '38-43-96-55-18', '2009-11-22'),
(75, 'Lopez', 'Maya', '1981-10-18', 'Rue la Fayette	61', 'lopez-maya@zoho.biz', '01-78-99-00-44', '2010-04-13'),
(76, 'Vincent', 'Gustave', '1961-12-14', 'Rue Prudhon	6', 'vincentgustave@aol.com', '95-60-67-71-54', '2007-06-24'),
(77, 'Riviere', 'Livio', '1973-09-25', 'Allee Charles Baudelaire	3', 'livio-riviere@proton.bzh', '17-28-28-76-16', '2011-10-08'),
(78, 'Leroy', 'Sandro', '1999-03-14', 'Avenue du Chateau d\'Amboise	38', 'leroy_sandro@inbox.eu', '88-33-89-48-35', '2003-07-23'),
(79, 'Bernard', 'Esteba', '1995-07-28', 'Rue des Palombes	35', 'bernard-esteba@gmail.fr', '79-93-12-67-51', '2008-03-19'),
(80, 'Philippe', 'Aaron', '1998-09-22', 'Rue des Lupins	8', 'aaron-philippe@gmail.eu', '63-65-79-22-19', '2003-07-02'),
(81, 'Masson', 'Corentin', '1995-04-28', 'Rue Lucien Brunet	81', 'masson-corentin@icloud.fr', '68-35-24-80-22', '2001-01-21'),
(82, 'Guillaume', 'Joseph', '1989-04-20', 'Rue de Beaubourg	28', 'guillaume-joseph@outlook.com', '60-39-89-76-64', '2008-05-18'),
(83, 'Michel', 'Lia', '1977-07-17', 'Rue du Marechal Lannes	5', 'michel.lia@icloud.com', '15-68-06-81-95', '2011-05-05'),
(84, 'Moulin', 'Maya', '1988-02-22', 'Rue des Palombes	30', 'moulin_maya@proton.biz', '86-58-78-83-00', '2003-06-16'),
(85, 'Louis', 'Thiago', '1970-08-12', 'Rue de l\'Aubepine	18', 'louisthiago@gmail.com', '47-62-64-40-87', '2009-12-03'),
(86, 'Carpentier', 'Mylan', '1973-01-06', 'Avenue Charles Balezeaux	23', 'carpentiermylan@yandex.eu', '29-78-73-42-38', '2010-10-08'),
(87, 'Rey', 'Arya', '1998-12-17', 'Avenue du Chateau d\'Amboise	30', 'rey-arya@fastmail.bzh', '08-93-86-61-27', '2002-05-03'),
(88, 'Louis', 'Joy', '1977-01-19', 'Avenue du Chateau d\'Amboise	54', 'louis-joy@inbox.biz', '71-94-48-17-66', '2011-01-13'),
(89, 'Simon', 'Ella', '1987-11-14', 'Avenue du Chateau d\'Amboise	26', 'simon-ella@proton.com', '12-55-23-33-39', '2011-12-23'),
(90, 'Gerard', 'Adrien', '1993-08-01', 'Allee Charles Baudelaire	2', 'gerardadrien@inbox.fr', '12-48-58-68-75', '2005-02-24'),
(91, 'Hubert', 'Maya', '1979-03-12', 'Rue Lucien Brunet	82', 'hubert.maya@aol.biz', '10-47-80-41-41', '2010-05-25'),
(92, 'Renaud', 'Nolan', '1988-10-20', 'Allee Charles Baudelaire	17', 'renaud_nolan@zoho.bzh', '99-14-85-37-88', '2007-10-11'),
(93, 'Robin', 'Manon', '1975-03-15', 'Rue des Palombes	12', 'robin.manon@yahoo.biz', '50-93-06-96-95', '2010-07-21'),
(94, 'Laurent', 'Ella', '1963-03-28', 'Rue des Palombes	19', 'laurent-ella@icloud.biz', '70-95-14-58-21', '2004-02-14'),
(95, 'Morel', 'Candice', '1976-12-19', 'Rue du Marechal Lannes	5', 'morel-candice@icloud.com', '60-43-54-57-41', '2006-02-20'),
(96, 'Gonzalez', 'Ryan', '1994-10-26', 'Rue des Camelias	10', 'gonzalez.ryan@fastmail.biz', '97-05-59-35-99', '2008-08-28'),
(97, 'Chevali', 'Paul', '1970-12-28', 'Avenue du Chateau d\'Amboise	47', 'chevali-paul@getmxrr.com', '00-97-72-89-94', '2007-09-21'),
(98, 'Martinez', 'Lilya', '1985-09-10', 'Rue Francois Arago	12', 'martinez-lilya@icloud.com', '91-02-35-25-03', '2011-01-12'),
(99, 'Dubois', 'Noah', '1970-07-09', 'Rue la Fayette	44', 'dubois-noah@zoho.fr', '28-83-23-60-82', '2011-10-11'),
(100, 'Leclercq', 'Mariam', '1971-08-16', 'Place Chaumont	1', 'leclercqmariam@aol.fr', '70-66-48-65-46', '2011-09-23'),
(101, 'Lefebvre', 'Ali', '1993-10-28', 'Rue de l\'Aubepine	70', 'lefebvre_ali@zoho.eu', '92-99-12-14-65', '2004-09-07'),
(102, 'Sanchez', 'Ilyana', '1987-12-13', 'Rue du Pre des Aulnes	32', 'sanchezilyana@yahoo.bzh', '17-24-59-38-54', '2002-07-14'),
(103, 'Legall', 'Louis', '2001-11-27', 'Rue Lucien Brunet	5', 'legall_louis@yandex.fr', '84-66-95-15-04', '2008-01-23'),
(104, 'Leroy', 'Emma', '2000-02-23', 'Rue des Pinsons	8', 'emma-leroy@zoho.eu', '53-85-66-80-32', '2010-09-09'),
(105, 'Dupuis', 'Jean', '1969-03-23', 'Rue du Pre des Aulnes	2', 'dupuisjean@gmail.eu', '92-89-20-98-64', '2002-03-02'),
(106, 'Masson', 'Jade', '2001-08-15', 'Place Chambord	16', 'masson-jade@outlook.bzh', '10-99-16-96-45', '2003-01-12'),
(107, 'Martin', 'Naya', '1987-08-03', 'Place Chenonceaux	40', 'martin.naya@inbox.eu', '45-43-40-94-51', '2007-12-15'),
(108, 'Lefevre', 'James', '1985-04-09', 'Place Chinon	50', 'james-lefevre@zoho.bzh', '82-17-16-94-40', '2007-04-17'),
(109, 'Duval', 'Yousse', '1975-03-17', 'Route Nationale 4	9', 'duvalyousse@zoho.fr', '43-91-76-54-18', '2004-08-17'),
(110, 'Muller', 'Loan', '1978-07-13', 'Rue de Beaubourg	35', 'muller_loan@yahoo.eu', '14-37-49-33-66', '2002-10-18'),
(111, 'Joly', 'Agathe', '1998-06-08', 'Place Cheverny	89', 'joly.agathe@outlook.fr', '10-53-93-53-37', '2007-10-12'),
(112, 'Fleury', 'Lucas', '1984-04-12', 'Rue des Palombes	9', 'fleury.lucas@icloud.fr', '90-57-81-58-97', '2004-06-07'),
(113, 'Hubert', 'Lucas', '1991-12-22', 'Rue des Pinsons	14', 'hubert-lucas@fastmail.eu', '51-35-02-59-43', '2011-05-12'),
(114, 'Nicolas', 'Adem', '1982-05-22', 'Rue la Fayette	42', 'nicolasadem@outlook.fr', '50-25-53-13-55', '2005-12-26'),
(115, 'Adam', 'Soline', '1995-03-28', 'Place Chinon	47', 'adam.soline@yandex.fr', '59-34-58-53-59', '2002-11-09'),
(116, 'Perrin', 'Thiago', '1987-12-04', 'Rue de Chennevieres	17', 'perrin.thiago@gmail.eu', '89-30-26-40-40', '2002-05-15'),
(117, 'Berger', 'Elina', '2001-10-06', 'Rue Lucien Brunet	65', 'berger-elina@icloud.biz', '89-54-94-65-16', '2005-09-03'),
(118, 'Menard', 'Elyna', '1995-08-24', 'Allee Charles Baudelaire	3', 'menard.elyna@gmail.biz', '78-21-96-53-17', '2008-11-27'),
(119, 'Muller', 'Charlie', '1977-12-14', 'Avenue du Chateau d\'Amboise	11', 'muller-charlie@getmxrr.com', '47-65-82-31-38', '2001-01-24');

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
  MODIFY `code_classe` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `cours`
--
ALTER TABLE `cours`
  MODIFY `code_cour` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `eleves`
--
ALTER TABLE `eleves`
  MODIFY `code_eleve` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1793;

--
-- AUTO_INCREMENT for table `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `code_evaluation` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matieres`
--
ALTER TABLE `matieres`
  MODIFY `code_matiere` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `professeurs`
--
ALTER TABLE `professeurs`
  MODIFY `code_professeur` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

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
