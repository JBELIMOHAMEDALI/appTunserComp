-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 02 juin 2021 à 00:19
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `administrationn`
--

-- --------------------------------------------------------

--
-- Structure de la table `authorization`
--

CREATE TABLE `authorization` (
  `id` int(11) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'ongoing',
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `matricule` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `authorization`
--

INSERT INTO `authorization` (`id`, `from`, `to`, `description`, `status`, `date`, `matricule`) VALUES
(1, '15:00:00', '17:00:00', 'emergency at home.', 'ongoing', '2021-05-26 20:17:10', '1800'),
(3, '18:20:00', '19:20:00', 'description', 'ongoing', '2021-05-26 21:08:57', '1800'),
(4, '18:00:00', '19:00:00', 'description', 'ongoing', '2021-05-26 21:10:05', '1800'),
(5, '18:00:00', '19:00:00', 'description', 'ongoing', '2021-05-26 21:14:58', '1800'),
(6, '18:00:00', '19:00:00', 'description', 'ongoing', '2021-05-26 21:15:10', '1800'),
(7, '18:00:00', '19:00:00', 'description', 'ongoing', '2021-05-28 17:49:01', '1800'),
(8, '18:00:00', '19:00:00', 'description', 'ongoing', '2021-05-28 17:49:18', '1800'),
(20, '01:00:AM', '03:00:AM', 'reason', 'ongoing', '2021-06-01 15:01:32', '1803'),
(21, '01:00:AM', '03:00:AM', 'desc', 'ongoing', '2021-06-01 18:27:34', '1803');

-- --------------------------------------------------------

--
-- Structure de la table `balances`
--

CREATE TABLE `balances` (
  `leavebalance` int(11) NOT NULL DEFAULT 26,
  `authorizationbalance` int(11) NOT NULL DEFAULT 2,
  `matricule` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `holiday`
--

CREATE TABLE `holiday` (
  `name` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `matricule` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `leavee`
--

CREATE TABLE `leavee` (
  `id` int(11) NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `description` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'ongoing' COMMENT 'accepté= accepted refusé= rejected ',
  `justification` varchar(256) DEFAULT NULL,
  `year` year(4) NOT NULL DEFAULT current_timestamp(),
  `matricule` varchar(20) NOT NULL,
  `id_type_leave` int(11) NOT NULL,
  `date_request` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `leavee`
--

INSERT INTO `leavee` (`id`, `from`, `to`, `description`, `status`, `justification`, `year`, `matricule`, `id_type_leave`, `date_request`) VALUES
(1, '2021-05-06', '2021-11-06', 'My brother is getting married.', 'ongoing', NULL, 2021, '1800', 1, '2021-06-01 12:06:36'),
(2, '2021-05-27', '2021-05-30', 'I am sick.', 'ongoing', 'pfesite/imgs', 2021, '1803', 2, '2021-06-01 12:06:36'),
(3, '0000-00-00', '0000-00-00', 'description', 'ongoing', '12/12/2021', 2021, '1800', 1, '2021-06-01 12:06:36'),
(4, '0000-00-00', '0000-00-00', 'description', 'ongoing', '12/12/2021', 2021, '1800', 1, '2021-06-01 12:06:36'),
(5, '0000-00-00', '0000-00-00', 'description', 'ongoing', '12/12/2021', 2021, '1800', 1, '2021-06-01 12:06:36'),
(6, '0000-00-00', '0000-00-00', 'description', 'ongoing', '12/12/2021', 2021, '1800', 1, '2021-06-01 12:06:36'),
(7, '0000-00-00', '0000-00-00', 'description', 'ongoing', '12/12/2021', 2021, '1800', 1, '2021-06-01 12:06:36'),
(8, '0000-00-00', '0000-00-00', 'description', 'ongoing', '12/12/2021', 2021, '1800', 1, '2021-06-01 12:06:36'),
(9, '0000-00-00', '0000-00-00', 'description', 'ongoing', '12/12/2021', 2021, '1800', 1, '2021-06-01 12:06:36'),
(10, '0000-00-00', '0000-00-00', 'description', 'ongoing', '12/12/2021', 2021, '1800', 1, '2021-06-01 12:06:36'),
(11, '0000-00-00', '0000-00-00', 'description', 'ongoing', '12/12/2021', 2021, '1800', 1, '2021-06-01 12:06:36'),
(12, '0000-00-00', '0000-00-00', 'description', 'ongoing', '12/12/2021', 2021, '1800', 1, '2021-06-01 12:06:36'),
(13, '2020-05-01', '2020-05-10', 'description', 'ongoing', '12/12/2021', 2021, '1800', 1, '2021-06-01 12:06:36'),
(14, '2020-05-01', '2020-05-10', 'description', 'ongoing', '12/12/2021', 2021, '1800', 1, '2021-06-01 12:06:36'),
(15, '2020-05-01', '2020-05-10', 'description', 'ongoing', '12/12/2021', 2021, '1800', 1, '2021-06-01 12:06:36'),
(16, '2020-05-01', '2020-05-10', 'description', 'ongoing', '12/12/2021', 0000, '1800', 1, '2021-06-01 12:06:36'),
(25, '2021-07-02', '2021-07-12', 'desc', 'ongoing', 'Click to Attach file', 2021, '1803', 1, '2021-06-01 18:57:34'),
(26, '2021-07-15', '2021-07-16', 'efs', 'ongoing', 'Click to Attach file', 2021, '1803', 1, '2021-06-01 19:00:57'),
(27, '2021-07-16', '2021-07-17', 'efs', 'ongoing', 'Click to Attach file', 2021, '1803', 1, '2021-06-01 19:01:32'),
(28, '2021-07-08', '2021-07-11', 'ABCD', 'ongoing', 'Click to Attach file', 2021, '1803', 7, '2021-06-01 19:03:14'),
(29, '2021-06-18', '2021-06-24', 'desc', 'ongoing', 'Click to Attach file', 2021, '1803', 1, '2021-06-01 19:43:13'),
(30, '2021-06-01', '2021-06-03', 'desc', 'ongoing', 'Click to Attach file', 2021, '1803', 3, '2021-06-01 20:39:49'),
(31, '2021-06-01', '2021-06-03', 'dsq', 'ongoing', 'Click to Attach file', 2021, '1803', 1, '2021-06-01 20:40:27'),
(32, '2021-06-01', '2021-06-04', 'desc', 'ongoing', 'Click to Attach file', 2021, '1803', 7, '2021-06-01 20:40:56'),
(33, '2021-06-01', '2021-06-06', 'desc', 'ongoing', 'Click to Attach file', 2021, '1803', 1, '2021-06-01 20:47:25'),
(34, '2021-06-01', '2021-06-03', 'eds', 'ongoing', 'Click to Attach file', 2021, '1803', 3, '2021-06-01 20:47:48'),
(35, '2021-06-03', '2021-06-05', 'eds', 'ongoing', 'Click to Attach file', 2021, '1803', 3, '2021-06-01 20:48:19'),
(36, '2021-06-01', '2021-06-27', 'desc', 'ongoing', 'Click to Attach file', 2021, '1803', 1, '2021-06-01 20:54:12'),
(37, '2021-06-01', '2021-06-11', 'eds', 'ongoing', 'Click to Attach file', 2021, '1803', 1, '2021-06-01 20:59:41'),
(38, '2021-06-01', '2021-06-30', 'desc', 'ongoing', 'Upload2021060223960.png', 2021, '1803', 2, '2021-06-01 22:00:30'),
(39, '2021-06-01', '2021-06-30', 'desc', 'ongoing', NULL, 2021, '1803', 2, '2021-06-01 22:01:10'),
(40, '2021-06-01', '2021-06-30', 'desc', 'ongoing', '', 2021, '1803', 2, '2021-06-01 22:02:57'),
(41, '2021-06-01', '2021-06-30', 'desc', 'ongoing', NULL, 2021, '1803', 2, '2021-06-01 22:06:13'),
(42, '2021-06-01', '2021-06-30', 'desc', 'ongoing', NULL, 2021, '1803', 2, '2021-06-01 22:06:35'),
(43, '2021-06-01', '2021-06-30', 'desc', 'ongoing', NULL, 2021, '1803', 2, '2021-06-01 22:07:41'),
(44, '2021-06-01', '2021-06-30', 'desc', 'ongoing', NULL, 2021, '1803', 2, '2021-06-01 22:10:23'),
(45, '2021-06-01', '2021-06-30', 'desc', 'ongoing', NULL, 2021, '1803', 2, '2021-06-01 22:11:17'),
(46, '2021-06-01', '2021-06-30', 'desc', 'ongoing', NULL, 2021, '1803', 2, '2021-06-01 22:11:58'),
(47, '2021-06-01', '2021-06-30', 'desc', 'ongoing', 'Upload2021060271629.png', 2021, '1803', 2, '2021-06-01 22:12:09');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `service` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`service`) VALUES
('informatique'),
('ressourceshumaines');

-- --------------------------------------------------------

--
-- Structure de la table `type_leave`
--

CREATE TABLE `type_leave` (
  `type` varchar(20) NOT NULL,
  `max_nbr_day` int(11) NOT NULL,
  `id_type_leave` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `type_leave`
--

INSERT INTO `type_leave` (`type`, `max_nbr_day`, `id_type_leave`) VALUES
('Annual leave', 26, 1),
('Medical leave', 5, 2),
('Breavement leave ', 2, 3),
('Birth leave', 3, 4),
('Maternity leave', 60, 5),
('Paternity leave', 1, 6),
('Marriage leave', 3, 7);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `matricule` varchar(20) NOT NULL,
  `cin` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `cnsscnpsnum` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `birthdate` date NOT NULL,
  `entrydate` date NOT NULL DEFAULT current_timestamp(),
  `position` varchar(20) NOT NULL,
  `employment` varchar(20) NOT NULL,
  `corps` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `direction` varchar(20) NOT NULL,
  `entity` varchar(20) NOT NULL,
  `place` varchar(20) NOT NULL,
  `service` varchar(20) NOT NULL,
  `affiliate` varchar(20) NOT NULL,
  `leavebalance` int(11) NOT NULL DEFAULT 26,
  `authorizationbalance` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`matricule`, `cin`, `email`, `password`, `name`, `lastname`, `role`, `cnsscnpsnum`, `gender`, `birthdate`, `entrydate`, `position`, `employment`, `corps`, `status`, `direction`, `entity`, `place`, `service`, `affiliate`, `leavebalance`, `authorizationbalance`) VALUES
('1800', '15036699', 'bouchoucha20@gmail.c', 'tunisair2021', 'Aziz', 'Bouchoucha', 0, '1408997755', 'male', '1980-05-06', '2014-02-03', 'active', 'employee', 'pss', 'ca', 'central', 'sol', 'tunis', 'informatique', 'Tunisair-Express', 16, 2),
('1803', '15037269', 'dali@gmail.com', 'dali', 'Salma', 'Chaouch', 2, '1408897555', 'female', '1977-07-03', '2012-05-04', 'active', 'director', 'pss', 'ca', 'central', 'sol', 'tunis', 'informatique', 'Tunisair-Express', 0, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `authorization`
--
ALTER TABLE `authorization`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matricule` (`matricule`);

--
-- Index pour la table `balances`
--
ALTER TABLE `balances`
  ADD KEY `matricule` (`matricule`);

--
-- Index pour la table `holiday`
--
ALTER TABLE `holiday`
  ADD KEY `matricule` (`matricule`);

--
-- Index pour la table `leavee`
--
ALTER TABLE `leavee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matricule` (`matricule`),
  ADD KEY `id_type_leave` (`id_type_leave`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service`);

--
-- Index pour la table `type_leave`
--
ALTER TABLE `type_leave`
  ADD PRIMARY KEY (`id_type_leave`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`matricule`),
  ADD KEY `service` (`service`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `authorization`
--
ALTER TABLE `authorization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `leavee`
--
ALTER TABLE `leavee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `type_leave`
--
ALTER TABLE `type_leave`
  MODIFY `id_type_leave` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `authorization`
--
ALTER TABLE `authorization`
  ADD CONSTRAINT `authoriazation_ibfk_1` FOREIGN KEY (`matricule`) REFERENCES `user` (`matricule`);

--
-- Contraintes pour la table `balances`
--
ALTER TABLE `balances`
  ADD CONSTRAINT `balances_ibfk_1` FOREIGN KEY (`matricule`) REFERENCES `user` (`matricule`);

--
-- Contraintes pour la table `holiday`
--
ALTER TABLE `holiday`
  ADD CONSTRAINT `holiday_ibfk_1` FOREIGN KEY (`matricule`) REFERENCES `user` (`matricule`);

--
-- Contraintes pour la table `leavee`
--
ALTER TABLE `leavee`
  ADD CONSTRAINT `leavee_ibfk_1` FOREIGN KEY (`matricule`) REFERENCES `user` (`matricule`),
  ADD CONSTRAINT `leavee_ibfk_2` FOREIGN KEY (`id_type_leave`) REFERENCES `type_leave` (`id_type_leave`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`service`) REFERENCES `service` (`service`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
