-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2020 at 06:38 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peacelandrp`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('bank_savings', 'Livret Bleu', 0),
('caution', 'Caution', 0),
('property_black_money', 'Argent Sale Propriété', 0),
('society_admin', 'admin', 1),
('society_ambulance', 'Ambulance', 1),
('society_avocat', 'Advokat', 1),
('society_banker', 'Banque', 1),
('society_bishops', 'Bishops', 1),
('society_cardealer', 'Concessionnaire', 1),
('society_dismay', 'Dismay', 1),
('society_dock', 'Marina', 1),
('society_fire', 'fire', 1),
('society_foodtruck', 'Foodtruck', 1),
('society_grove', 'Grove', 1),
('society_mafia', 'Mafia', 1),
('society_mechanic', 'Mécano', 1),
('society_police', 'Police', 1),
('society_realestateagent', 'Agent immobilier', 1),
('society_rebel', 'Rebel', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vigne', 'Winegrower', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_ambulance', 0, NULL),
(2, 'society_avocat', 0, NULL),
(3, 'society_banker', 0, NULL),
(4, 'society_bishops', 0, NULL),
(5, 'society_cardealer', 0, NULL),
(6, 'society_dismay', 0, NULL),
(7, 'society_fire', 0, NULL),
(8, 'society_foodtruck', 0, NULL),
(9, 'society_grove', 0, NULL),
(10, 'society_mafia', 0, NULL),
(11, 'society_mechanic', 400, NULL),
(12, 'society_police', 0, NULL),
(13, 'society_realestateagent', 0, NULL),
(14, 'society_rebel', 0, NULL),
(15, 'society_taxi', 0, NULL),
(16, 'society_unicorn', 0, NULL),
(17, 'society_vigne', 0, NULL),
(18, 'society_dock', 0, NULL),
(19, 'bank_savings', 0, 'steam:11000013c742c7c'),
(20, 'property_black_money', 0, 'steam:11000013c742c7c'),
(21, 'caution', 0, 'steam:11000013c742c7c'),
(22, 'bank_savings', 0, 'steam:11000010ef561cd'),
(23, 'caution', 0, 'steam:11000010ef561cd'),
(24, 'property_black_money', 0, 'steam:11000010ef561cd'),
(25, 'bank_savings', 0, 'steam:11000011c609b9f'),
(26, 'caution', 0, 'steam:11000011c609b9f'),
(27, 'property_black_money', 0, 'steam:11000011c609b9f'),
(28, 'society_admin', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_admin', 'admin', 1),
('society_ambulance', 'Ambulance', 1),
('society_avocat', 'Advokat', 1),
('society_bishops', 'Bishops', 1),
('society_cardealer', 'Concesionnaire', 1),
('society_dismay', 'Dismay', 1),
('society_dock', 'Marina', 1),
('society_fire', 'fire', 1),
('society_grove', 'Grove', 1),
('society_mafia', 'Mafia', 1),
('society_mechanic', 'Mécano', 1),
('society_police', 'Police', 1),
('society_rebel', 'Rebel', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_unicorn_fridge', 'Unicorn (frigo)', 1),
('society_vigne', 'Winegrower', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `ID` int(255) NOT NULL,
  `name` varchar(1024) NOT NULL,
  `identifier` varchar(1024) NOT NULL,
  `reason` varchar(1024) NOT NULL,
  `ban_issued` varchar(1024) NOT NULL,
  `banned_until` varchar(1024) NOT NULL,
  `staff_name` varchar(1024) NOT NULL,
  `staff_steamid` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id`, `identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
(1, 'steam:11000013c742c7c', 'Ruben', 'Ribeiro', '2001-02-04', 'm', '200'),
(2, 'steam:11000010ef561cd', 'Tony ', 'Mirandelas', '541561516', 'm', '145'),
(3, 'steam:11000011c609b9f', 'Hamidreza', 'Karimi', '1994-08-16', 'm', '190');

-- --------------------------------------------------------

--
-- Table structure for table `coffees`
--

CREATE TABLE `coffees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coffees`
--

INSERT INTO `coffees` (`id`, `name`, `item`, `price`) VALUES
(1, 'Coffee', 'coffee', 30);

-- --------------------------------------------------------

--
-- Table structure for table `commend`
--

CREATE TABLE `commend` (
  `ID` int(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `reason` varchar(1024) NOT NULL,
  `staff_name` varchar(255) NOT NULL,
  `staff_steamid` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `ID` int(255) NOT NULL,
  `community_name` varchar(255) NOT NULL DEFAULT 'Community Name',
  `discord_webhook` varchar(1024) DEFAULT NULL,
  `joinmessages` enum('true','false') NOT NULL DEFAULT 'false',
  `chatcommands` enum('true','false') NOT NULL DEFAULT 'true',
  `checktimeout` int(255) NOT NULL DEFAULT 15,
  `trustscore` int(255) NOT NULL DEFAULT 75,
  `tswarn` int(255) NOT NULL DEFAULT 3,
  `tskick` int(255) NOT NULL DEFAULT 6,
  `tsban` int(255) NOT NULL DEFAULT 10,
  `tscommend` int(255) NOT NULL DEFAULT 2,
  `tstime` int(255) NOT NULL DEFAULT 1,
  `recent_time` int(255) NOT NULL DEFAULT 10,
  `permissions` varchar(20480) NOT NULL,
  `serveractions` varchar(20480) NOT NULL,
  `debug` enum('false','true') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`ID`, `community_name`, `discord_webhook`, `joinmessages`, `chatcommands`, `checktimeout`, `trustscore`, `tswarn`, `tskick`, `tsban`, `tscommend`, `tstime`, `recent_time`, `permissions`, `serveractions`, `debug`) VALUES
(1, 'change Me', '', 'false', 'true', 5, 75, 3, 6, 10, 2, 1, 10, 'O:8:\"stdClass\":6:{s:5:\"owner\";a:9:{i:0;s:7:\"commend\";i:1;s:4:\"warn\";i:2;s:4:\"kick\";i:3;s:3:\"ban\";i:4;s:5:\"unban\";i:5;s:9:\"editstaff\";i:6;s:11:\"editservers\";i:7;s:9:\"editpanel\";i:8;s:9:\"delrecord\";}s:16:\"communitymanager\";a:7:{i:0;s:7:\"commend\";i:1;s:4:\"warn\";i:2;s:4:\"kick\";i:3;s:3:\"ban\";i:4;s:5:\"unban\";i:5;s:9:\"editstaff\";i:6;s:9:\"delrecord\";}s:11:\"senioradmin\";a:5:{i:0;s:7:\"commend\";i:1;s:4:\"warn\";i:2;s:4:\"kick\";i:3;s:3:\"ban\";i:4;s:5:\"unban\";}s:5:\"admin\";a:4:{i:0;s:7:\"commend\";i:1;s:4:\"warn\";i:2;s:4:\"kick\";i:3;s:3:\"ban\";}s:9:\"moderator\";a:4:{i:0;s:7:\"commend\";i:1;s:4:\"warn\";i:2;s:4:\"kick\";i:3;s:3:\"ban\";}s:8:\"trialmod\";a:3:{i:0;s:7:\"commend\";i:1;s:4:\"warn\";i:2;s:4:\"kick\";}}', 'O:8:\"stdClass\":1:{s:18:\"108.61.69.48:30120\";O:8:\"stdClass\":4:{s:12:\"kickforstaff\";O:8:\"stdClass\":4:{s:6:\"action\";s:12:\"kickforstaff\";s:5:\"input\";s:0:\"\";s:10:\"buttonname\";s:14:\"Kick For Staff\";s:11:\"buttonstyle\";s:11:\"btn-warning\";}s:10:\"aop-blaine\";O:8:\"stdClass\":4:{s:6:\"action\";s:7:\"command\";s:5:\"input\";s:17:\"aop Blaine County\";s:10:\"buttonname\";s:10:\"AOP Blaine\";s:11:\"buttonstyle\";s:11:\"btn-success\";}s:8:\"aop-city\";O:8:\"stdClass\":4:{s:6:\"action\";s:7:\"command\";s:5:\"input\";s:14:\"aop Los Santos\";s:10:\"buttonname\";s:8:\"AOP City\";s:11:\"buttonstyle\";s:11:\"btn-success\";}s:10:\"aop-paleto\";O:8:\"stdClass\":4:{s:6:\"action\";s:7:\"command\";s:5:\"input\";s:14:\"aop Paleto Bay\";s:10:\"buttonname\";s:10:\"AOP Paleto\";s:11:\"buttonstyle\";s:11:\"btn-success\";}}}', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `darkshops`
--

CREATE TABLE `darkshops` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `darkshops`
--

INSERT INTO `darkshops` (`id`, `name`, `item`, `price`) VALUES
(1, 'Darks', 'Darknet', 15);

-- --------------------------------------------------------

--
-- Table structure for table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_admin', 'admin', 1),
('society_ambulance', 'Ambulance', 1),
('society_avocat', 'Advokat', 1),
('society_bishops', 'Bishops', 1),
('society_dismay', 'Dismay', 1),
('society_fire', 'fire', 1),
('society_grove', 'Grove', 1),
('society_mafia', 'Mafia', 1),
('society_police', 'Police', 1),
('society_rebel', 'Rebel', 1),
('society_taxi', 'Taxi', 1),
('society_unicorn', 'Unicorn', 1),
('society_vigne', 'Winegrower', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Table structure for table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_ambulance', NULL, '{}'),
(2, 'society_avocat', NULL, '{}'),
(3, 'society_bishops', NULL, '{}'),
(4, 'society_dismay', NULL, '{}'),
(5, 'society_fire', NULL, '{}'),
(6, 'society_grove', NULL, '{}'),
(7, 'society_mafia', NULL, '{}'),
(8, 'society_police', NULL, '{}'),
(9, 'society_rebel', NULL, '{}'),
(10, 'society_taxi', NULL, '{}'),
(11, 'society_unicorn', NULL, '{}'),
(12, 'society_vigne', NULL, '{}'),
(13, 'property', 'steam:11000013c742c7c', '{}'),
(14, 'user_ears', 'steam:11000013c742c7c', '{}'),
(15, 'user_helmet', 'steam:11000013c742c7c', '{}'),
(16, 'user_glasses', 'steam:11000013c742c7c', '{}'),
(17, 'user_mask', 'steam:11000013c742c7c', '{}'),
(18, 'user_ears', 'steam:11000010ef561cd', '{}'),
(19, 'property', 'steam:11000010ef561cd', '{}'),
(20, 'user_glasses', 'steam:11000010ef561cd', '{}'),
(21, 'user_helmet', 'steam:11000010ef561cd', '{}'),
(22, 'user_mask', 'steam:11000010ef561cd', '{}'),
(23, 'user_mask', 'steam:11000011c609b9f', '{}'),
(24, 'user_helmet', 'steam:11000011c609b9f', '{}'),
(25, 'property', 'steam:11000011c609b9f', '{}'),
(26, 'user_ears', 'steam:11000011c609b9f', '{}'),
(27, 'user_glasses', 'steam:11000011c609b9f', '{}'),
(28, 'society_admin', NULL, '{}');

-- --------------------------------------------------------

--
-- Table structure for table `dock`
--

CREATE TABLE `dock` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dock`
--

INSERT INTO `dock` (`id`, `name`, `model`, `price`, `category`) VALUES
(1, 'Seashark', 'seashark', 1500, 'dock'),
(2, 'Seashark2', 'seashark2', 1500, 'dock'),
(3, 'Yacht Seashark', 'seashark3', 1500, 'dock'),
(4, 'Suntrap', 'suntrap', 1500, 'dock'),
(5, 'Dinghy', 'dinghy', 2500, 'dock'),
(6, 'Dinghy2 ', 'dinghy2', 2500, 'dock'),
(7, 'Yacht Dinghy', 'dinghy4', 1500, 'dock'),
(8, 'Tropic', 'tropic', 10000, 'dock'),
(9, 'Yacht Tropic', 'tropic2', 10000, 'dock'),
(10, 'Squalo', 'squalo', 12000, 'dock'),
(11, 'Yacht Toro', 'toro2', 15000, 'dock'),
(12, 'Toro', 'toro', 15000, 'dock'),
(13, 'Jetmax', 'jetmax', 17500, 'dock'),
(14, 'Voilier Marquis', 'marquis', 45500, 'dock');

-- --------------------------------------------------------

--
-- Table structure for table `dock_categories`
--

CREATE TABLE `dock_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dock_categories`
--

INSERT INTO `dock_categories` (`id`, `name`, `label`) VALUES
(1, 'dock', 'Bateaux');

-- --------------------------------------------------------

--
-- Table structure for table `dock_vehicles`
--

CREATE TABLE `dock_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Usage abusif du klaxon', 30, 0),
(2, 'Franchir une ligne continue', 40, 0),
(3, 'Circulation à contresens', 250, 0),
(4, 'Demi-tour non autorisé', 250, 0),
(5, 'Circulation hors-route', 170, 0),
(6, 'Non-respect des distances de sécurité', 30, 0),
(7, 'Arrêt dangereux / interdit', 150, 0),
(8, 'Stationnement gênant / interdit', 70, 0),
(9, 'Non respect  de la priorité à droite', 70, 0),
(10, 'Non-respect à un véhicule prioritaire', 90, 0),
(11, 'Non-respect d\'un stop', 105, 0),
(12, 'Non-respect d\'un feu rouge', 130, 0),
(13, 'Dépassement dangereux', 100, 0),
(14, 'Véhicule non en état', 100, 0),
(15, 'Conduite sans permis', 1500, 0),
(16, 'Délit de fuite', 800, 0),
(17, 'Excès de vitesse < 5 kmh', 90, 0),
(18, 'Excès de vitesse 5-15 kmh', 120, 0),
(19, 'Excès de vitesse 15-30 kmh', 180, 0),
(20, 'Excès de vitesse > 30 kmh', 300, 0),
(21, 'Entrave de la circulation', 110, 1),
(22, 'Dégradation de la voie publique', 90, 1),
(23, 'Trouble à l\'ordre publique', 90, 1),
(24, 'Entrave opération de police', 130, 1),
(25, 'Insulte envers / entre civils', 75, 1),
(26, 'Outrage à agent de police', 110, 1),
(27, 'Menace verbale ou intimidation envers civil', 90, 1),
(28, 'Menace verbale ou intimidation envers policier', 150, 1),
(29, 'Manifestation illégale', 250, 1),
(30, 'Tentative de corruption', 1500, 1),
(31, 'Arme blanche sortie en ville', 120, 2),
(32, 'Arme léthale sortie en ville', 300, 2),
(33, 'Port d\'arme non autorisé (défaut de license)', 600, 2),
(34, 'Port d\'arme illégal', 700, 2),
(35, 'Pris en flag lockpick', 300, 2),
(36, 'Vol de voiture', 1800, 2),
(37, 'Vente de drogue', 1500, 2),
(38, 'Fabriquation de drogue', 1500, 2),
(39, 'Possession de drogue', 650, 2),
(40, 'Prise d\'ôtage civil', 1500, 2),
(41, 'Prise d\'ôtage agent de l\'état', 2000, 2),
(42, 'Braquage particulier', 650, 2),
(43, 'Braquage magasin', 650, 2),
(44, 'Braquage de banque', 1500, 2),
(45, 'Tir sur civil', 2000, 3),
(46, 'Tir sur agent de l\'état', 2500, 3),
(47, 'Tentative de meurtre sur civil', 3000, 3),
(48, 'Tentative de meurtre sur agent de l\'état', 5000, 3),
(49, 'Meurtre sur civil', 10000, 3),
(50, 'Meurte sur agent de l\'état', 30000, 3),
(51, 'Meurtre involontaire', 1800, 3),
(52, 'Escroquerie à l\'entreprise', 2000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_bishops`
--

CREATE TABLE `fine_types_bishops` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_types_bishops`
--

INSERT INTO `fine_types_bishops` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_dismay`
--

CREATE TABLE `fine_types_dismay` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_types_dismay`
--

INSERT INTO `fine_types_dismay` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_grove`
--

CREATE TABLE `fine_types_grove` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_types_grove`
--

INSERT INTO `fine_types_grove` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_mafia`
--

CREATE TABLE `fine_types_mafia` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_types_mafia`
--

INSERT INTO `fine_types_mafia` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fine_types_rebel`
--

CREATE TABLE `fine_types_rebel` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine_types_rebel`
--

INSERT INTO `fine_types_rebel` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `glovebox_inventory`
--

CREATE TABLE `glovebox_inventory` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hungerthirst`
--

CREATE TABLE `hungerthirst` (
  `idSteam` varchar(255) NOT NULL,
  `hunger` int(11) NOT NULL DEFAULT 100,
  `thirst` int(11) NOT NULL DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL DEFAULT 0,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`, `price`, `weight`) VALUES
('alive_chicken', 'Poulet vivant', 20, 0, 1, 0, 0),
('bait', 'Bait', 20, 0, 1, 0, 0),
('bandage', 'Bandage', 20, 0, 1, 0, 0),
('binoculars', 'Binoculars', 1, 0, 1, 0, 0),
('blowpipe', 'Chalumeaux', 10, 0, 1, 0, 0),
('bolcacahuetes', 'Bol de cacahuètes', 5, 0, 1, 0, 0),
('bolchips', 'Bol de chips', 5, 0, 1, 0, 0),
('bolnoixcajou', 'Bol de noix de cajou', 5, 0, 1, 0, 0),
('bolpistache', 'Bol de pistaches', 5, 0, 1, 0, 0),
('bread', 'Pain', 10, 0, 1, 0, 0),
('burger', 'Burger', 20, 0, 1, 0, 0),
('cannabis', 'Cannabis', 40, 0, 1, 0, 0),
('carokit', 'Kit carosserie', 3, 0, 1, 0, 0),
('carotool', 'outils carosserie', 4, 0, 1, 0, 0),
('clothe', 'Vêtement', 40, 0, 1, 0, 0),
('cola', 'Coke', 20, 0, 1, 0, 0),
('contrat', 'Salvage', 15, 0, 1, 0, 0),
('copper', 'Cuivre', 56, 0, 1, 0, 0),
('croquettes', 'Croquettes', 20, 0, 1, 0, 0),
('cutted_wood', 'Bois coupé', 20, 0, 1, 0, 0),
('diamond', 'Diamant', 50, 0, 1, 0, 0),
('drpepper', 'Dr. Pepper', 5, 0, 1, 0, 0),
('energy', 'Energy Drink', 5, 0, 1, 0, 0),
('essence', 'Essence', 24, 0, 1, 0, 0),
('fabric', 'Tissu', 80, 0, 1, 0, 0),
('fish', 'Poisson', 100, 0, 1, 0, 0),
('fishingrod', 'Fishing rod', 5, 0, 1, 0, 0),
('fixkit', 'Kit réparation', 5, 0, 1, 0, 0),
('fixtool', 'outils réparation', 6, 0, 1, 0, 0),
('gazbottle', 'bouteille de gaz', 11, 0, 1, 0, 0),
('gold', 'Or', 21, 0, 1, 0, 0),
('golem', 'Golem', 5, 0, 1, 0, 0),
('grand_cru', 'Vintage Bottle', -1, 0, 1, 0, 0),
('grapperaisin', 'Grappe de raisin', 5, 0, 1, 0, 0),
('ice', 'Glaçon', 5, 0, 1, 0, 0),
('icetea', 'Ice Tea', 5, 0, 1, 0, 0),
('iron', 'Fer', 42, 0, 1, 0, 0),
('jager', 'Jägermeister', 5, 0, 1, 0, 0),
('jagerbomb', 'Jägerbomb', 5, 0, 1, 0, 0),
('jagercerbere', 'Jäger Cerbère', 3, 0, 1, 0, 0),
('jewels', 'Jewels', -1, 0, 1, 0, 0),
('journal', 'Journal', -1, 0, 1, 0, 0),
('jusfruit', 'Jus de fruits', 5, 0, 1, 0, 0),
('jus_raisin', 'Grape juice', -1, 0, 1, 0, 0),
('limonade', 'Limonade', 5, 0, 1, 0, 0),
('litter', 'Litter', -1, 0, 1, 0, 0),
('litter_pooch', 'Pochon de LITTER', -1, 0, 1, 0, 0),
('lsd', 'Lsd', -1, 0, 1, 0, 0),
('lsd_pooch', 'Pochon de LSD', -1, 0, 1, 0, 0),
('marijuana', 'Marijuana', 14, 0, 1, 0, 0),
('martini', 'Martini blanc', 5, 0, 1, 0, 0),
('meat', 'Meat', 20, 0, 1, 0, 0),
('medikit', 'Medikit', 5, 0, 1, 0, 0),
('menthe', 'Feuille de menthe', 10, 0, 1, 0, 0),
('metreshooter', 'Mètre de shooter', 3, 0, 1, 0, 0),
('mixapero', 'Mix Apéritif', 3, 0, 1, 0, 0),
('mojito', 'Mojito', 5, 0, 1, 0, 0),
('packaged_chicken', 'Poulet en barquette', 100, 0, 1, 0, 0),
('packaged_plank', 'Paquet de planches', 100, 0, 1, 0, 0),
('petrol', 'Pétrole', 24, 0, 1, 0, 0),
('petrol_raffin', 'Pétrole Raffiné', 24, 0, 1, 0, 0),
('plongee1', 'Plongee courte', -1, 0, 1, 0, 0),
('plongee2', 'Plongee longue', -1, 0, 1, 0, 0),
('raisin', 'Grapes', -1, 0, 1, 0, 0),
('rhum', 'Rhum', 5, 0, 1, 0, 0),
('rhumcoca', 'Rhum-coca', 5, 0, 1, 0, 0),
('rhumfruit', 'Rhum-jus de fruits', 5, 0, 1, 0, 0),
('saucisson', 'Saucisson', 5, 0, 1, 0, 0),
('sim_card', 'Sim Card', 10, 0, 1, 0, 0),
('slaughtered_chicken', 'Poulet abattu', 20, 0, 1, 0, 0),
('soda', 'Soda', 5, 0, 1, 0, 0),
('stone', 'Pierre', 7, 0, 1, 0, 0),
('tacos', 'Tacos', 20, 0, 1, 0, 0),
('teqpaf', 'Teq\'paf', 5, 0, 1, 0, 0),
('tequila', 'Tequila', 5, 0, 1, 0, 0),
('vegetables', 'Vegetables', 20, 0, 1, 0, 0),
('vine', 'Vine', -1, 0, 1, 0, 0),
('vodka', 'Vodka', 5, 0, 1, 0, 0),
('vodkaenergy', 'Vodka-energy', 5, 0, 1, 0, 0),
('vodkafruit', 'Vodka-jus de fruits', 5, 0, 1, 0, 0),
('washed_stone', 'Pierre Lavée', 7, 0, 1, 0, 0),
('water', 'Eau', 5, 0, 1, 0, 0),
('whisky', 'Whisky', 5, 0, 1, 0, 0),
('whiskycoca', 'Whisky-coca', 5, 0, 1, 0, 0),
('wood', 'Bois', 20, 0, 1, 0, 0),
('wool', 'Laine', 40, 0, 1, 0, 0),
('xanax', 'Xanax', -1, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jail`
--

CREATE TABLE `jail` (
  `identifier` varchar(100) NOT NULL,
  `jail_time` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('admin', 'Admin', 1),
('ambulance', 'Ambulance', 0),
('avocat', 'Advokat', 1),
('banker', 'Banquier', 0),
('bishops', 'Bishops', 1),
('bus', 'busdriver', 0),
('cardealer', 'Concessionnaire', 0),
('coastguard', 'coastguard', 0),
('deliverer', 'Deliverer', 0),
('dismay', 'Dismay', 1),
('dock', 'Marina', 0),
('fire', 'LSFD', 0),
('fisherman', 'Pêcheur', 0),
('foodtruck', 'Foodtruck', 1),
('fueler', 'Raffineur', 0),
('gopostal', 'Correios', 0),
('grove', 'Grove', 1),
('lumberjack', 'Bûcheron', 0),
('mafia', 'Mafia', 1),
('mechanic', 'Mécano', 0),
('miner', 'Mineur', 0),
('pizza', '?Pizzadelivery', 0),
('police', 'LSPD', 0),
('poolcleaner', 'Nettoyeur de piscine', 0),
('realestateagent', 'Agent immobilier', 0),
('rebel', 'Rebel', 1),
('reporter', 'Journaliste', 0),
('Salvage', 'Salvage', 0),
('slaughterer', 'Abatteur', 0),
('tailor', 'Couturier', 0),
('taxi', 'Taxi', 0),
('trucker', 'Chauffeur', 0),
('unemployed', 'Unemployed', 0),
('unicorn', 'Unicorn', 1),
('vigne', 'Winegrower', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}'),
(2, 'lumberjack', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(3, 'fisherman', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(4, 'fueler', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(5, 'reporter', 0, 'employee', 'Intérimaire', 0, '{}', '{}'),
(6, 'tailor', 0, 'employee', 'Intérimaire', 0, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(7, 'miner', 0, 'employee', 'Intérimaire', 0, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(8, 'slaughterer', 0, 'employee', 'Intérimaire', 0, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(9, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(10, 'ambulance', 1, 'doctor', 'Medecin', 40, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(11, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(12, 'ambulance', 3, 'boss', 'Chirurgien', 80, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(13, 'banker', 0, 'advisor', 'Conseiller', 10, '{}', '{}'),
(14, 'banker', 1, 'banker', 'Banquier', 20, '{}', '{}'),
(15, 'banker', 2, 'business_banker', 'Banquier d\'affaire', 30, '{}', '{}'),
(16, 'banker', 3, 'trader', 'Trader', 40, '{}', '{}'),
(17, 'banker', 4, 'boss', 'Patron', 0, '{}', '{}'),
(18, 'bishops', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
(19, 'bishops', 1, 'capo', 'Capo', 1800, '{}', '{}'),
(20, 'bishops', 2, 'consigliere', 'Consigliere', 2100, '{}', '{}'),
(21, 'bishops', 3, 'boss', 'Parain', 2700, '{}', '{}'),
(22, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(23, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(24, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(25, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(26, 'bus', 0, 'employee', 'Valores', 200, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}'),
(27, 'coastguard', 0, 'employee', 'Valores', 200, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}'),
(28, 'deliverer', 0, 'employee', 'Employee', 200, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}'),
(29, 'dismay', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
(30, 'dismay', 1, 'capo', 'Capo', 1800, '{}', '{}'),
(31, 'dismay', 2, 'consigliere', 'Consigliere', 2100, '{}', '{}'),
(32, 'dismay', 3, 'boss', 'Parain', 2700, '{}', '{}'),
(33, 'fire', 0, 'recruit', 'Recrue', 20, '{\"tshirt_1\":57,\"torso_1\":55,\"arms\":0,\"pants_1\":35,\"glasses\":0,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":5,\"face\":19,\"glasses_2\":1,\"torso_2\":0,\"shoes\":24,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":8}', '{\"tshirt_1\":34,\"torso_1\":48,\"shoes\":24,\"pants_1\":34,\"torso_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"glasses\":0,\"helmet_2\":0,\"hair_2\":3,\"face\":21,\"decals_1\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"arms\":14,\"hair_color_1\":10,\"tshirt_2\":0,\"helmet_1\":57}'),
(34, 'fire', 1, 'sergeant', 'Sergent', 40, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":0,\"decals_1\":8,\"torso_2\":0,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"hair_color_1\":5,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":14,\"pants_1\":34,\"pants_2\":0,\"decals_2\":1,\"hair_color_2\":0,\"shoes\":24,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"face\":21,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"hair_color_1\":10,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(35, 'fire', 2, 'lieutenant', 'Lieutenant', 65, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":2,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"glasses\":0,\"decals_1\":8,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"torso_2\":0,\"arms\":41,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"hair_2\":3,\"decals_2\":2,\"hair_color_2\":0,\"hair_color_1\":10,\"helmet_2\":0,\"face\":21,\"shoes\":24,\"torso_2\":0,\"glasses_2\":1,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"pants_2\":0,\"decals_1\":7,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(36, 'fire', 3, 'boss', 'Commandant', 80, '{\"tshirt_1\":58,\"torso_1\":55,\"shoes\":24,\"pants_1\":35,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":19,\"helmet_2\":0,\"hair_2\":0,\"arms\":41,\"torso_2\":0,\"hair_color_1\":5,\"hair_1\":2,\"skin\":34,\"sex\":0,\"glasses_1\":0,\"glasses_2\":1,\"decals_1\":8,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":11}', '{\"tshirt_1\":35,\"torso_1\":48,\"arms\":44,\"pants_1\":34,\"pants_2\":0,\"decals_2\":3,\"hair_color_2\":0,\"face\":21,\"helmet_2\":0,\"hair_2\":3,\"decals_1\":7,\"torso_2\":0,\"hair_color_1\":10,\"hair_1\":11,\"skin\":34,\"sex\":1,\"glasses_1\":5,\"glasses_2\":1,\"shoes\":24,\"glasses\":0,\"tshirt_2\":0,\"helmet_1\":57}'),
(37, 'foodtruck', 0, 'cook', 'Cook', 200, '{}', '{}'),
(38, 'foodtruck', 1, 'boss', 'Owner', 300, '{}', '{}'),
(39, 'gopostal', 0, 'employee', 'Sedex', 200, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}'),
(40, 'grove', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
(41, 'grove', 1, 'capo', 'Capo', 1800, '{}', '{}'),
(42, 'grove', 2, 'consigliere', 'Consigliere', 2100, '{}', '{}'),
(43, 'grove', 3, 'boss', 'Parain', 2700, '{}', '{}'),
(83, 'avocat', 0, 'boss', 'Patron', 500, '', ''),
(84, 'mechanic', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(85, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
(86, 'mechanic', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(87, 'mechanic', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
(88, 'mechanic', 4, 'boss', 'Patron', 0, '{}', '{}'),
(89, 'Salvage', 0, 'interim', 'Diver', 80, '{}', '{}'),
(90, 'pizza', 0, 'employee', 'Valores', 200, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}'),
(91, 'police', 0, 'recruit', 'Recrue', 20, '{}', '{}'),
(92, 'police', 1, 'officer', 'Officier', 40, '{}', '{}'),
(93, 'police', 2, 'sergeant', 'Sergent', 60, '{}', '{}'),
(94, 'police', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}'),
(95, 'police', 4, 'boss', 'Commandant', 100, '{}', '{}'),
(96, 'poolcleaner', 0, 'interim', 'Intérimaire', 400, '{}', '{}'),
(97, 'realestateagent', 0, 'location', 'Location', 10, '{}', '{}'),
(98, 'realestateagent', 1, 'vendeur', 'Vendeur', 25, '{}', '{}'),
(99, 'realestateagent', 2, 'gestion', 'Gestion', 40, '{}', '{}'),
(100, 'realestateagent', 3, 'boss', 'Patron', 0, '{}', '{}'),
(101, 'mafia', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
(102, 'mafia', 1, 'capo', 'Capo', 1800, '{}', '{}'),
(103, 'mafia', 2, 'consigliere', 'Consigliere', 2100, '{}', '{}'),
(104, 'mafia', 3, 'boss', 'Parain', 2700, '{}', '{}'),
(105, 'rebel', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
(106, 'rebel', 1, 'capo', 'Capo', 1800, '{}', '{}'),
(107, 'rebel', 2, 'consigliere', 'Consigliere', 2100, '{}', '{}'),
(108, 'rebel', 3, 'boss', 'Parain', 2700, '{}', '{}'),
(109, 'taxi', 0, 'recrue', 'Recrue', 12, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(110, 'taxi', 1, 'novice', 'Novice', 24, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(111, 'taxi', 2, 'experimente', 'Experimente', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(112, 'taxi', 3, 'uber', 'Uber', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(113, 'taxi', 4, 'boss', 'Patron', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(114, 'trucker', 0, 'employee', 'Employé', 200, '{\"tshirt_1\":59,\"torso_1\":89,\"arms\":31,\"pants_1\":36,\"glasses_1\":19,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":2,\"glasses_2\":0,\"torso_2\":1,\"shoes\":35,\"hair_1\":0,\"skin\":0,\"sex\":0,\"glasses_1\":19,\"pants_2\":0,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":5}', '{\"tshirt_1\":36,\"torso_1\":0,\"arms\":68,\"pants_1\":30,\"glasses_1\":15,\"decals_2\":0,\"hair_color_2\":0,\"helmet_2\":0,\"hair_color_1\":0,\"face\":27,\"glasses_2\":0,\"torso_2\":11,\"shoes\":26,\"hair_1\":5,\"skin\":0,\"sex\":1,\"glasses_1\":15,\"pants_2\":2,\"hair_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"helmet_1\":19}'),
(115, 'unicorn', 0, 'barman', 'Barman', 300, '{}', '{}'),
(116, 'unicorn', 1, 'dancer', 'Danseur', 300, '{}', '{}'),
(117, 'unicorn', 2, 'viceboss', 'Co-gérant', 500, '{}', '{}'),
(118, 'unicorn', 3, 'boss', 'Gérant', 600, '{}', '{}'),
(119, 'vigne', 0, 'recrue', 'Interim', 500, '{\"tshirt_1\":59,\"tshirt_2\":0,\"torso_1\":12,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(120, 'vigne', 1, 'novice', 'Winegrower', 750, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(121, 'vigne', 2, 'cdisenior', 'Team boss', 1200, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(122, 'vigne', 3, 'boss', 'Boss', 1600, '{\"tshirt_1\":57,\"tshirt_2\":0,\"torso_1\":13,\"torso_2\":5,\"shoes_1\":7,\"shoes_2\":2,\"pants_1\":9, \"pants_2\":7, \"arms\":11, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":14,\"torso_2\":15,\"shoes_1\":12,\"shoes_2\":0,\"pants_1\":9, \"pants_2\":5, \"arms\":1, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}'),
(123, 'dock', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(124, 'dock', 1, 'novice', 'Novice', 25, '{}', '{}'),
(125, 'dock', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(126, 'dock', 3, 'boss', 'Patron', 0, '{}', '{}'),
(127, 'admin', 0, 'low admin', 'Low admin', 250, '{}', '{}'),
(128, 'admin', 1, 'meduim admin', 'Meduim admin', 500, '{}', '{}'),
(129, 'admin', 2, 'high admin', 'High admin', 750, '{}', '{}'),
(130, 'admin', 3, 'boss', 'Owner', 1000, '{}', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `kicks`
--

CREATE TABLE `kicks` (
  `ID` int(255) NOT NULL,
  `license` varchar(1024) NOT NULL,
  `reason` varchar(1024) NOT NULL,
  `staff_name` varchar(255) NOT NULL,
  `staff_steamid` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('boat', 'Boat License'),
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion'),
('weapon', 'Permis de port d\'arme'),
('weed_processing', 'Weed Processing License');

-- --------------------------------------------------------

--
-- Table structure for table `outfits`
--

CREATE TABLE `outfits` (
  `idSteam` varchar(255) NOT NULL,
  `dad` int(11) NOT NULL DEFAULT 0,
  `mum` int(11) NOT NULL DEFAULT 0,
  `dadmumpercent` int(11) NOT NULL DEFAULT 0,
  `skinton` int(11) NOT NULL DEFAULT 0,
  `eyecolor` int(11) NOT NULL DEFAULT 0,
  `acne` int(11) NOT NULL DEFAULT 0,
  `skinproblem` int(11) NOT NULL DEFAULT 0,
  `freckle` int(11) NOT NULL DEFAULT 0,
  `wrinkle` int(11) NOT NULL DEFAULT 0,
  `wrinkleopacity` int(11) NOT NULL DEFAULT 0,
  `eyebrow` int(11) NOT NULL DEFAULT 0,
  `eyebrowopacity` int(11) NOT NULL DEFAULT 0,
  `beard` int(11) NOT NULL DEFAULT 0,
  `beardopacity` int(11) NOT NULL DEFAULT 0,
  `beardcolor` int(11) NOT NULL DEFAULT 0,
  `hair` int(11) NOT NULL DEFAULT 0,
  `hairtext` int(11) NOT NULL DEFAULT 0,
  `torso` int(11) NOT NULL DEFAULT 0,
  `torsotext` int(11) NOT NULL DEFAULT 0,
  `leg` int(11) NOT NULL DEFAULT 0,
  `legtext` int(11) NOT NULL DEFAULT 0,
  `shoes` int(11) NOT NULL DEFAULT 0,
  `shoestext` int(11) NOT NULL DEFAULT 0,
  `accessory` int(11) NOT NULL DEFAULT 0,
  `accessorytext` int(11) NOT NULL DEFAULT 0,
  `undershirt` int(11) NOT NULL DEFAULT 0,
  `undershirttext` int(11) NOT NULL DEFAULT 0,
  `torso2` int(11) NOT NULL DEFAULT 0,
  `torso2text` int(11) NOT NULL DEFAULT 0,
  `prop_hat` int(11) NOT NULL DEFAULT 0,
  `prop_hat_text` int(11) NOT NULL DEFAULT 0,
  `prop_glasses` int(11) NOT NULL DEFAULT 0,
  `prop_glasses_text` int(11) NOT NULL DEFAULT 0,
  `prop_earrings` int(11) NOT NULL DEFAULT 0,
  `prop_earrings_text` int(11) NOT NULL DEFAULT 0,
  `prop_watches` int(11) NOT NULL DEFAULT 0,
  `prop_watches_text` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `owned_dock`
--

CREATE TABLE `owned_dock` (
  `id` int(11) NOT NULL,
  `vehicle` longtext NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `vehicle` longtext NOT NULL,
  `owner` varchar(60) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'State of the car',
  `stored` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Etat de la voiture',
  `garage_name` varchar(50) NOT NULL DEFAULT 'Garage_Centre',
  `fourrieremecano` tinyint(1) NOT NULL DEFAULT 0,
  `vehiclename` varchar(50) NOT NULL DEFAULT 'voiture',
  `plate` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'car',
  `job` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`vehicle`, `owner`, `state`, `stored`, `garage_name`, `fourrieremecano`, `vehiclename`, `plate`, `type`, `job`) VALUES
('{\"neonColor\":[255,0,255],\"modRoof\":-1,\"modLivery\":-1,\"modFrontBumper\":-1,\"modTransmission\":-1,\"modTrimB\":-1,\"modVanityPlate\":-1,\"modEngineBlock\":-1,\"modEngine\":-1,\"modAPlate\":-1,\"dirtLevel\":9.0,\"modBackWheels\":-1,\"modSteeringWheel\":-1,\"modBrakes\":-1,\"modExhaust\":-1,\"model\":745926877,\"modHydrolic\":-1,\"modDashboard\":-1,\"modSmokeEnabled\":false,\"modFrontWheels\":-1,\"modTurbo\":false,\"modGrille\":-1,\"plateIndex\":4,\"modWindows\":-1,\"modTrunk\":-1,\"plate\":\"IFK 156\",\"modFender\":-1,\"modDial\":-1,\"modArmor\":-1,\"modSeats\":-1,\"wheelColor\":156,\"modStruts\":-1,\"bodyHealth\":1000.0,\"pearlescentColor\":0,\"modRearBumper\":-1,\"modShifterLeavers\":-1,\"modTank\":-1,\"modHorns\":-1,\"modRightFender\":-1,\"modSuspension\":-1,\"fuelLevel\":100.0,\"color2\":112,\"modTrimA\":-1,\"color1\":0,\"modHood\":-1,\"modAerials\":-1,\"modFrame\":-1,\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"modSpeakers\":-1,\"modOrnaments\":-1,\"windowTint\":-1,\"modSideSkirt\":-1,\"neonEnabled\":[false,false,false,false],\"modPlateHolder\":-1,\"modXenon\":false,\"engineHealth\":1000.0,\"tyreSmokeColor\":[255,255,255],\"extras\":{\"7\":true,\"2\":true,\"1\":true},\"modSpoilers\":-1,\"modArchCover\":-1,\"wheels\":0}', 'steam:11000011c609b9f', 1, 0, 'Garage_Centre', 0, 'voiture', 'IFK 156', 'helicopter', 'ambulance'),
('{\"modBrakes\":-1,\"windowTint\":-1,\"modWindows\":-1,\"modVanityPlate\":-1,\"modAerials\":-1,\"modSideSkirt\":-1,\"modDashboard\":-1,\"modFrontBumper\":-1,\"bodyHealth\":1000.0,\"modGrille\":-1,\"wheels\":0,\"modBackWheels\":-1,\"plateIndex\":4,\"pearlescentColor\":112,\"model\":1171614426,\"modTank\":-1,\"modRightFender\":-1,\"color2\":28,\"modStruts\":-1,\"modTrunk\":-1,\"modArmor\":-1,\"modSpeakers\":-1,\"modDial\":-1,\"modFrontWheels\":-1,\"modHood\":-1,\"modArchCover\":-1,\"modEngine\":-1,\"wheelColor\":156,\"neonColor\":[255,0,255],\"fuelLevel\":70.0,\"modExhaust\":-1,\"modTurbo\":false,\"modRearBumper\":-1,\"modSuspension\":-1,\"modDoorSpeaker\":-1,\"modAPlate\":-1,\"modSeats\":-1,\"modSteeringWheel\":-1,\"modRoof\":-1,\"modShifterLeavers\":-1,\"modOrnaments\":-1,\"modHorns\":-1,\"modTrimA\":-1,\"modHydrolic\":-1,\"neonEnabled\":[false,false,false,false],\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"dirtLevel\":5.0,\"modEngineBlock\":-1,\"modTransmission\":-1,\"plate\":\"RIB 720\",\"engineHealth\":1000.0,\"modTrimB\":-1,\"modLivery\":1,\"extras\":{\"1\":false},\"modPlateHolder\":-1,\"modAirFilter\":-1,\"modXenon\":false,\"modSmokeEnabled\":false,\"modFender\":-1,\"color1\":112,\"modSpoilers\":-1}', 'steam:11000011c609b9f', 1, 1, 'Garage_Centre', 0, 'voiture', 'RIB 720', 'car', 'ambulance'),
('{\"modSpeakers\":-1,\"modSpoilers\":-1,\"bodyHealth\":1000.0,\"plate\":\"SYH 012\",\"modEngine\":-1,\"pearlescentColor\":0,\"modFrontBumper\":-1,\"modXenon\":false,\"modTrimA\":-1,\"neonEnabled\":[false,false,false,false],\"engineHealth\":1000.0,\"fuelLevel\":65.0,\"modFrame\":-1,\"modSteeringWheel\":-1,\"modSeats\":-1,\"modSuspension\":-1,\"wheels\":1,\"modFrontWheels\":-1,\"modShifterLeavers\":-1,\"modExhaust\":-1,\"modTrunk\":-1,\"model\":2046537925,\"modTransmission\":-1,\"modArmor\":-1,\"wheelColor\":156,\"modTurbo\":false,\"color1\":134,\"modBrakes\":-1,\"modPlateHolder\":-1,\"modGrille\":-1,\"tyreSmokeColor\":[255,255,255],\"modFender\":-1,\"modDoorSpeaker\":-1,\"modHorns\":-1,\"modAPlate\":-1,\"plateIndex\":4,\"modRoof\":-1,\"modTank\":-1,\"modOrnaments\":-1,\"modRightFender\":-1,\"windowTint\":-1,\"color2\":134,\"modDial\":-1,\"neonColor\":[255,0,255],\"modWindows\":-1,\"dirtLevel\":1.0,\"modAerials\":-1,\"extras\":{\"1\":false,\"2\":true},\"modHydrolic\":-1,\"modVanityPlate\":-1,\"modArchCover\":-1,\"modBackWheels\":-1,\"modStruts\":-1,\"modAirFilter\":-1,\"modHood\":-1,\"modSmokeEnabled\":false,\"modSideSkirt\":-1,\"modLivery\":3,\"modEngineBlock\":-1,\"modRearBumper\":-1,\"modDashboard\":-1,\"modTrimB\":-1}', 'steam:11000011c609b9f', 1, 0, 'Garage_Centre', 0, 'voiture', 'SYH 012', 'car', 'police'),
('{\"modDial\":-1,\"modHydrolic\":-1,\"modPlateHolder\":-1,\"tyreSmokeColor\":[255,255,255],\"modDoorSpeaker\":-1,\"modBrakes\":-1,\"modFrame\":-1,\"model\":2046537925,\"fuelLevel\":65.0,\"color1\":134,\"plate\":\"VKF 674\",\"modTransmission\":-1,\"modShifterLeavers\":-1,\"wheelColor\":156,\"modLivery\":1,\"color2\":134,\"modSpoilers\":-1,\"modStruts\":-1,\"windowTint\":-1,\"modAirFilter\":-1,\"modBackWheels\":-1,\"modFender\":-1,\"modFrontWheels\":-1,\"modDashboard\":-1,\"neonEnabled\":[false,false,false,false],\"modRightFender\":-1,\"modSuspension\":-1,\"modTrimA\":-1,\"modArmor\":-1,\"modVanityPlate\":-1,\"extras\":{\"2\":true,\"1\":false},\"modHood\":-1,\"engineHealth\":1000.0,\"modXenon\":false,\"dirtLevel\":1.0,\"modEngine\":-1,\"modFrontBumper\":-1,\"modSpeakers\":-1,\"modArchCover\":-1,\"modSmokeEnabled\":false,\"modAerials\":-1,\"modSteeringWheel\":-1,\"modGrille\":-1,\"bodyHealth\":1000.0,\"modTurbo\":false,\"modTrunk\":-1,\"plateIndex\":4,\"pearlescentColor\":0,\"modRoof\":-1,\"modExhaust\":-1,\"neonColor\":[255,0,255],\"modWindows\":-1,\"modTrimB\":-1,\"modTank\":-1,\"modOrnaments\":-1,\"modSideSkirt\":-1,\"modRearBumper\":-1,\"modSeats\":-1,\"wheels\":1,\"modAPlate\":-1,\"modHorns\":-1,\"modEngineBlock\":-1}', 'steam:11000011c609b9f', 0, 0, 'Garage_Centre', 0, 'voiture', 'VKF 674', 'car', 'police');

-- --------------------------------------------------------

--
-- Table structure for table `owner_vehicles`
--

CREATE TABLE `owner_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `peage_flash`
--

CREATE TABLE `peage_flash` (
  `id` int(11) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `speed` int(11) NOT NULL,
  `modele` varchar(25) NOT NULL,
  `station` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peage_flash`
--

INSERT INTO `peage_flash` (`id`, `plate`, `speed`, `modele`, `station`) VALUES
(1, '09JBK526', 168, 'T20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `ID` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `license` varchar(255) NOT NULL,
  `steam` varchar(255) NOT NULL,
  `playtime` int(255) NOT NULL DEFAULT 0,
  `firstjoined` varchar(255) NOT NULL,
  `lastplayed` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `identifier` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dept` int(11) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`identifier`, `dept`, `rank`) VALUES
('steam:11000011c609b9f', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000),
(43, 'MazeBankBuilding', 'Maze Bank Building', '{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}', NULL, NULL, '{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}', '[]', NULL, 0, 0, 1, NULL, 0),
(44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(47, 'ExecutiveRich', 'Executive Rich', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(48, 'ExecutiveCool', 'Executive Cool', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(53, 'LomBank', 'Lom Bank', '{\"x\":-1581.36,\"y\":-558.23,\"z\":34.07}', NULL, NULL, '{\"x\":-1583.60,\"y\":-555.12,\"z\":34.07}', '[]', NULL, 0, 0, 1, NULL, 0),
(54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(63, 'MazeBankWest', 'Maze Bank West', '{\"x\":-1379.58,\"y\":-499.63,\"z\":32.22}', NULL, NULL, '{\"x\":-1378.95,\"y\":-502.82,\"z\":32.22}', '[]', NULL, 0, 0, 1, NULL, 0),
(64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);

-- --------------------------------------------------------

--
-- Table structure for table `qalle_brottsregister`
--

CREATE TABLE `qalle_brottsregister` (
  `id` int(255) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofcrime` varchar(255) NOT NULL,
  `crime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rented_dock`
--

CREATE TABLE `rented_dock` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE `servers` (
  `ID` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `connection` varchar(255) NOT NULL,
  `rcon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 30),
(2, 'TwentyFourSeven', 'water', 15),
(3, 'RobsLiquor', 'bread', 30),
(4, 'RobsLiquor', 'water', 15),
(5, 'LTDgasoline', 'bread', 30),
(6, 'LTDgasoline', 'water', 15),
(7, 'LTDgasoline', 'croquettes', 100),
(8, 'TwentyFourSeven', 'binoculars', 1000),
(9, 'RobsLiquor', 'binoculars', 1000),
(10, 'LTDgasoline', 'binoculars', 1000),
(11, 'LTDgasoline', 'plongee1', 250),
(12, 'RobsLiquor', 'plongee1', 250),
(13, 'TwentyFourSeven', 'plongee1', 250),
(14, 'LTDgasoline', 'plongee2', 350),
(15, 'RobsLiquor', 'plongee2', 350),
(16, 'TwentyFourSeven', 'plongee2', 350);

-- --------------------------------------------------------

--
-- Table structure for table `shops2`
--

CREATE TABLE `shops2` (
  `id` int(11) NOT NULL,
  `store` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `truck_inventory`
--

CREATE TABLE `truck_inventory` (
  `id` int(11) NOT NULL,
  `item` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `owned` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trunk_inventory`
--

CREATE TABLE `trunk_inventory` (
  `id` int(11) NOT NULL,
  `plate` varchar(8) NOT NULL,
  `data` text NOT NULL,
  `owned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `pet` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `phone_number` int(11) DEFAULT NULL,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `tattoos` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `bankbalance` int(32) DEFAULT 0,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`identifier`, `license`, `money`, `name`, `skin`, `job`, `job_grade`, `loadout`, `position`, `bank`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `pet`, `is_dead`, `phone_number`, `last_property`, `status`, `tattoos`, `bankbalance`, `ID`) VALUES
('steam:11000013c742c7c', 'license:2fb4c87a5078639b770392ca0ca38c7a1c1ac41e', 992000, 'kelputoo CSGO500', '{\"makeup_3\":0,\"sun_2\":0,\"complexion_1\":0,\"arms_2\":0,\"eye_color\":0,\"sun_1\":0,\"lipstick_3\":0,\"tshirt_2\":0,\"decals_2\":0,\"hair_2\":0,\"bracelets_1\":-1,\"hair_color_2\":0,\"eyebrows_3\":0,\"glasses_1\":0,\"bracelets_2\":0,\"makeup_4\":0,\"age_2\":0,\"hair_color_1\":0,\"mask_1\":0,\"beard_3\":0,\"chest_1\":0,\"decals_1\":0,\"blemishes_2\":0,\"bags_2\":0,\"blush_2\":0,\"torso_1\":0,\"glasses_2\":0,\"blemishes_1\":0,\"chest_3\":0,\"sex\":0,\"bproof_2\":0,\"tshirt_1\":0,\"eyebrows_1\":0,\"beard_2\":0,\"chest_2\":0,\"shoes_1\":0,\"arms\":0,\"makeup_1\":0,\"pants_1\":0,\"watches_2\":0,\"chain_1\":0,\"beard_4\":0,\"lipstick_2\":0,\"moles_2\":0,\"skin\":0,\"complexion_2\":0,\"eyebrows_4\":0,\"torso_2\":0,\"makeup_2\":0,\"mask_2\":0,\"bags_1\":0,\"watches_1\":-1,\"beard_1\":0,\"ears_2\":0,\"blush_3\":0,\"face\":0,\"lipstick_1\":0,\"pants_2\":0,\"blush_1\":0,\"ears_1\":-1,\"age_1\":0,\"helmet_1\":-1,\"helmet_2\":0,\"bproof_1\":0,\"moles_1\":0,\"lipstick_4\":0,\"bodyb_1\":0,\"shoes_2\":0,\"bodyb_2\":0,\"eyebrows_2\":0,\"chain_2\":0,\"hair_1\":0}', 'gopostal', 0, '[]', '{\"z\":30.7,\"y\":-799.0,\"x\":219.2}', 490, 4, 'superadmin', 'Ruben', 'Ribeiro', '2001-02-04', 'm', '200', '', 0, 38696, NULL, '[{\"percent\":42.73,\"name\":\"hunger\",\"val\":427300},{\"percent\":44.5475,\"name\":\"thirst\",\"val\":445475},{\"percent\":0.0,\"name\":\"drug\",\"val\":0},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', NULL, 0, 0),
('steam:11000010ef561cd', 'license:bdc3d8478bebabeef465af3c9f879cad55b078fe', 2249509, 'Tony Mirandelas', '{\"makeup_3\":0,\"sun_2\":0,\"complexion_1\":0,\"arms_2\":0,\"face\":0,\"sun_1\":0,\"lipstick_3\":0,\"tshirt_2\":0,\"decals_2\":0,\"hair_2\":0,\"bracelets_1\":-1,\"hair_color_2\":0,\"eyebrows_3\":0,\"glasses_1\":0,\"bracelets_2\":0,\"makeup_4\":0,\"age_2\":0,\"hair_color_1\":0,\"mask_1\":0,\"beard_3\":0,\"chest_1\":0,\"decals_1\":0,\"blemishes_2\":0,\"bags_2\":0,\"lipstick_1\":0,\"torso_1\":0,\"glasses_2\":0,\"helmet_2\":0,\"chest_3\":0,\"sex\":0,\"bproof_2\":0,\"tshirt_1\":0,\"eyebrows_1\":0,\"beard_2\":0,\"chest_2\":0,\"shoes_1\":0,\"arms\":0,\"makeup_1\":0,\"pants_1\":0,\"watches_2\":0,\"chain_1\":0,\"beard_4\":0,\"lipstick_2\":0,\"moles_2\":0,\"skin\":0,\"complexion_2\":0,\"eyebrows_4\":0,\"torso_2\":0,\"makeup_2\":0,\"mask_2\":0,\"bags_1\":0,\"watches_1\":-1,\"beard_1\":0,\"ears_2\":0,\"helmet_1\":-1,\"blush_2\":0,\"bproof_1\":0,\"ears_1\":-1,\"blush_1\":0,\"age_1\":0,\"pants_2\":0,\"shoes_2\":0,\"chain_2\":0,\"blemishes_1\":0,\"moles_1\":0,\"lipstick_4\":0,\"eye_color\":0,\"bodyb_1\":0,\"blush_3\":0,\"hair_1\":0,\"eyebrows_2\":0,\"bodyb_2\":0}', 'mechanic', 3, '[]', '{\"x\":-338.9,\"y\":-135.2,\"z\":38.4}', 330, 0, 'user', 'Tony ', 'Mirandelas', '541561516', 'm', '145', '', 0, 71009, NULL, '[{\"percent\":91.54,\"val\":915400,\"name\":\"hunger\"},{\"percent\":93.655,\"val\":936550,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drug\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', NULL, 0, 0),
('steam:11000011c609b9f', 'license:24231feadd43cb604bf693cb81bc90004fc68859', 990000, 'Hamidreza', '{\"blush_1\":0,\"pants_2\":0,\"arms\":0,\"torso_1\":0,\"chest_1\":0,\"decals_1\":0,\"bracelets_1\":-1,\"face\":0,\"mask_2\":0,\"blemishes_2\":0,\"ears_2\":0,\"torso_2\":0,\"hair_color_1\":0,\"pants_1\":0,\"lipstick_4\":0,\"makeup_3\":0,\"beard_2\":0,\"decals_2\":0,\"eyebrows_3\":0,\"moles_2\":0,\"makeup_4\":0,\"chain_1\":0,\"bproof_2\":0,\"tshirt_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"lipstick_1\":0,\"hair_2\":0,\"makeup_2\":0,\"beard_1\":0,\"bodyb_1\":0,\"eye_color\":0,\"age_2\":0,\"tshirt_1\":0,\"eyebrows_4\":0,\"chest_3\":0,\"blemishes_1\":0,\"beard_3\":0,\"complexion_1\":0,\"age_1\":0,\"eyebrows_1\":0,\"hair_color_2\":0,\"makeup_1\":0,\"lipstick_2\":0,\"blush_2\":0,\"arms_2\":0,\"eyebrows_2\":0,\"sex\":0,\"moles_1\":0,\"glasses_2\":0,\"sun_1\":0,\"lipstick_3\":0,\"skin\":0,\"mask_1\":0,\"chest_2\":0,\"helmet_2\":0,\"bags_2\":0,\"watches_2\":0,\"shoes_1\":0,\"bracelets_2\":0,\"chain_2\":0,\"bags_1\":0,\"hair_1\":0,\"shoes_2\":0,\"helmet_1\":-1,\"beard_4\":0,\"bodyb_2\":0,\"sun_2\":0,\"complexion_2\":0,\"watches_1\":-1,\"bproof_1\":0,\"blush_3\":0}', 'police', 4, '[{\"label\":\"Fusil à pompe\",\"ammo\":20,\"name\":\"WEAPON_PUMPSHOTGUN\",\"components\":[]}]', '{\"x\":721.3,\"y\":-62.6,\"z\":57.1}', 9820, 1000, 'superadmin', 'Hamidreza', 'Karimi', '1994-08-16', 'm', '190', '', 0, 85899, NULL, '[{\"name\":\"hunger\",\"val\":434500,\"percent\":43.45},{\"name\":\"thirst\",\"val\":450875,\"percent\":45.0875},{\"name\":\"drug\",\"val\":0,\"percent\":0.0},{\"name\":\"drunk\",\"val\":0,\"percent\":0.0}]', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
(1, 'steam:11000013c742c7c', 'black_money', 0),
(2, 'steam:11000010ef561cd', 'black_money', 0),
(3, 'steam:11000011c609b9f', 'black_money', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `item` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_inventory`
--

INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(1, 'steam:11000013c742c7c', 'energy', 0),
(2, 'steam:11000013c742c7c', 'jusfruit', 0),
(3, 'steam:11000013c742c7c', 'carokit', 0),
(4, 'steam:11000013c742c7c', 'golem', 0),
(5, 'steam:11000013c742c7c', 'diamond', 0),
(6, 'steam:11000013c742c7c', 'essence', 0),
(7, 'steam:11000013c742c7c', 'packaged_chicken', 0),
(8, 'steam:11000013c742c7c', 'copper', 0),
(9, 'steam:11000013c742c7c', 'meat', 0),
(10, 'steam:11000013c742c7c', 'jager', 0),
(11, 'steam:11000013c742c7c', 'burger', 0),
(12, 'steam:11000013c742c7c', 'blowpipe', 0),
(13, 'steam:11000013c742c7c', 'ice', 0),
(14, 'steam:11000013c742c7c', 'mixapero', 0),
(15, 'steam:11000013c742c7c', 'carotool', 0),
(16, 'steam:11000013c742c7c', 'limonade', 0),
(17, 'steam:11000013c742c7c', 'fixtool', 0),
(18, 'steam:11000013c742c7c', 'jagercerbere', 0),
(19, 'steam:11000013c742c7c', 'cola', 0),
(20, 'steam:11000013c742c7c', 'grand_cru', 0),
(21, 'steam:11000013c742c7c', 'mojito', 0),
(22, 'steam:11000013c742c7c', 'grapperaisin', 0),
(23, 'steam:11000013c742c7c', 'gazbottle', 0),
(24, 'steam:11000013c742c7c', 'fish', 0),
(25, 'steam:11000013c742c7c', 'icetea', 0),
(26, 'steam:11000013c742c7c', 'rhumcoca', 0),
(27, 'steam:11000013c742c7c', 'wool', 0),
(28, 'steam:11000013c742c7c', 'fishingrod', 0),
(29, 'steam:11000013c742c7c', 'packaged_plank', 0),
(30, 'steam:11000013c742c7c', 'bolpistache', 0),
(31, 'steam:11000013c742c7c', 'xanax', 0),
(32, 'steam:11000013c742c7c', 'lsd', 0),
(33, 'steam:11000013c742c7c', 'litter', 0),
(34, 'steam:11000013c742c7c', 'martini', 0),
(35, 'steam:11000013c742c7c', 'whiskycoca', 0),
(36, 'steam:11000013c742c7c', 'litter_pooch', 0),
(37, 'steam:11000013c742c7c', 'whisky', 0),
(38, 'steam:11000013c742c7c', 'marijuana', 0),
(39, 'steam:11000013c742c7c', 'raisin', 0),
(40, 'steam:11000013c742c7c', 'water', 0),
(41, 'steam:11000013c742c7c', 'plongee2', 0),
(42, 'steam:11000013c742c7c', 'vodkafruit', 0),
(43, 'steam:11000013c742c7c', 'lsd_pooch', 0),
(44, 'steam:11000013c742c7c', 'bait', 0),
(45, 'steam:11000013c742c7c', 'contrat', 0),
(46, 'steam:11000013c742c7c', 'vodkaenergy', 0),
(47, 'steam:11000013c742c7c', 'vodka', 0),
(48, 'steam:11000013c742c7c', 'bandage', 0),
(49, 'steam:11000013c742c7c', 'vine', 0),
(50, 'steam:11000013c742c7c', 'journal', 0),
(51, 'steam:11000013c742c7c', 'vegetables', 0),
(52, 'steam:11000013c742c7c', 'jewels', 0),
(53, 'steam:11000013c742c7c', 'slaughtered_chicken', 0),
(54, 'steam:11000013c742c7c', 'tequila', 0),
(55, 'steam:11000013c742c7c', 'teqpaf', 0),
(56, 'steam:11000013c742c7c', 'croquettes', 0),
(57, 'steam:11000013c742c7c', 'metreshooter', 0),
(58, 'steam:11000013c742c7c', 'stone', 0),
(59, 'steam:11000013c742c7c', 'petrol_raffin', 0),
(60, 'steam:11000013c742c7c', 'alive_chicken', 0),
(61, 'steam:11000013c742c7c', 'soda', 0),
(62, 'steam:11000013c742c7c', 'bolnoixcajou', 0),
(63, 'steam:11000013c742c7c', 'rhumfruit', 0),
(64, 'steam:11000013c742c7c', 'petrol', 0),
(65, 'steam:11000013c742c7c', 'jus_raisin', 0),
(66, 'steam:11000013c742c7c', 'washed_stone', 0),
(67, 'steam:11000013c742c7c', 'plongee1', 0),
(68, 'steam:11000013c742c7c', 'rhum', 0),
(69, 'steam:11000013c742c7c', 'saucisson', 0),
(70, 'steam:11000013c742c7c', 'drpepper', 0),
(71, 'steam:11000013c742c7c', 'jagerbomb', 0),
(72, 'steam:11000013c742c7c', 'bread', 0),
(73, 'steam:11000013c742c7c', 'tacos', 0),
(74, 'steam:11000013c742c7c', 'menthe', 0),
(75, 'steam:11000013c742c7c', 'medikit', 0),
(76, 'steam:11000013c742c7c', 'fixkit', 0),
(77, 'steam:11000013c742c7c', 'wood', 0),
(78, 'steam:11000013c742c7c', 'clothe', 0),
(79, 'steam:11000013c742c7c', 'iron', 0),
(80, 'steam:11000013c742c7c', 'fabric', 0),
(81, 'steam:11000013c742c7c', 'cutted_wood', 0),
(82, 'steam:11000013c742c7c', 'gold', 0),
(83, 'steam:11000013c742c7c', 'cannabis', 0),
(84, 'steam:11000013c742c7c', 'bolcacahuetes', 0),
(85, 'steam:11000013c742c7c', 'bolchips', 0),
(86, 'steam:11000013c742c7c', 'binoculars', 0),
(87, 'steam:11000010ef561cd', 'energy', 0),
(88, 'steam:11000010ef561cd', 'carokit', 0),
(89, 'steam:11000010ef561cd', 'jusfruit', 0),
(90, 'steam:11000010ef561cd', 'golem', 0),
(91, 'steam:11000010ef561cd', 'diamond', 0),
(92, 'steam:11000010ef561cd', 'essence', 0),
(93, 'steam:11000010ef561cd', 'packaged_chicken', 0),
(94, 'steam:11000010ef561cd', 'copper', 0),
(95, 'steam:11000010ef561cd', 'meat', 0),
(96, 'steam:11000010ef561cd', 'jager', 0),
(97, 'steam:11000010ef561cd', 'burger', 0),
(98, 'steam:11000010ef561cd', 'blowpipe', 0),
(99, 'steam:11000010ef561cd', 'ice', 0),
(100, 'steam:11000010ef561cd', 'mixapero', 0),
(101, 'steam:11000010ef561cd', 'carotool', 0),
(102, 'steam:11000010ef561cd', 'limonade', 0),
(103, 'steam:11000010ef561cd', 'fixtool', 0),
(104, 'steam:11000010ef561cd', 'jagercerbere', 0),
(105, 'steam:11000010ef561cd', 'cola', 0),
(106, 'steam:11000010ef561cd', 'grand_cru', 0),
(107, 'steam:11000010ef561cd', 'mojito', 0),
(108, 'steam:11000010ef561cd', 'grapperaisin', 0),
(109, 'steam:11000010ef561cd', 'gazbottle', 0),
(110, 'steam:11000010ef561cd', 'fish', 0),
(111, 'steam:11000010ef561cd', 'icetea', 0),
(112, 'steam:11000010ef561cd', 'rhumcoca', 0),
(113, 'steam:11000010ef561cd', 'wool', 0),
(114, 'steam:11000010ef561cd', 'fishingrod', 0),
(115, 'steam:11000010ef561cd', 'packaged_plank', 0),
(116, 'steam:11000010ef561cd', 'bolpistache', 0),
(117, 'steam:11000010ef561cd', 'xanax', 0),
(118, 'steam:11000010ef561cd', 'lsd', 0),
(119, 'steam:11000010ef561cd', 'litter', 0),
(120, 'steam:11000010ef561cd', 'martini', 0),
(121, 'steam:11000010ef561cd', 'whiskycoca', 0),
(122, 'steam:11000010ef561cd', 'litter_pooch', 0),
(123, 'steam:11000010ef561cd', 'whisky', 0),
(124, 'steam:11000010ef561cd', 'marijuana', 0),
(125, 'steam:11000010ef561cd', 'raisin', 0),
(126, 'steam:11000010ef561cd', 'water', 0),
(127, 'steam:11000010ef561cd', 'plongee2', 0),
(128, 'steam:11000010ef561cd', 'vodkafruit', 0),
(129, 'steam:11000010ef561cd', 'lsd_pooch', 0),
(130, 'steam:11000010ef561cd', 'bait', 0),
(131, 'steam:11000010ef561cd', 'contrat', 0),
(132, 'steam:11000010ef561cd', 'vodkaenergy', 0),
(133, 'steam:11000010ef561cd', 'vodka', 0),
(134, 'steam:11000010ef561cd', 'bandage', 0),
(135, 'steam:11000010ef561cd', 'vine', 0),
(136, 'steam:11000010ef561cd', 'journal', 0),
(137, 'steam:11000010ef561cd', 'vegetables', 0),
(138, 'steam:11000010ef561cd', 'jewels', 0),
(139, 'steam:11000010ef561cd', 'slaughtered_chicken', 0),
(140, 'steam:11000010ef561cd', 'tequila', 0),
(141, 'steam:11000010ef561cd', 'teqpaf', 0),
(142, 'steam:11000010ef561cd', 'croquettes', 0),
(143, 'steam:11000010ef561cd', 'metreshooter', 0),
(144, 'steam:11000010ef561cd', 'stone', 0),
(145, 'steam:11000010ef561cd', 'petrol_raffin', 0),
(146, 'steam:11000010ef561cd', 'alive_chicken', 0),
(147, 'steam:11000010ef561cd', 'soda', 0),
(148, 'steam:11000010ef561cd', 'bolnoixcajou', 0),
(149, 'steam:11000010ef561cd', 'rhumfruit', 0),
(150, 'steam:11000010ef561cd', 'petrol', 0),
(151, 'steam:11000010ef561cd', 'jus_raisin', 0),
(152, 'steam:11000010ef561cd', 'washed_stone', 0),
(153, 'steam:11000010ef561cd', 'plongee1', 0),
(154, 'steam:11000010ef561cd', 'rhum', 0),
(155, 'steam:11000010ef561cd', 'saucisson', 0),
(156, 'steam:11000010ef561cd', 'drpepper', 0),
(157, 'steam:11000010ef561cd', 'jagerbomb', 0),
(158, 'steam:11000010ef561cd', 'bread', 0),
(159, 'steam:11000010ef561cd', 'tacos', 0),
(160, 'steam:11000010ef561cd', 'menthe', 0),
(161, 'steam:11000010ef561cd', 'medikit', 4),
(162, 'steam:11000010ef561cd', 'fixkit', 0),
(163, 'steam:11000010ef561cd', 'clothe', 0),
(164, 'steam:11000010ef561cd', 'wood', 0),
(165, 'steam:11000010ef561cd', 'iron', 0),
(166, 'steam:11000010ef561cd', 'fabric', 0),
(167, 'steam:11000010ef561cd', 'cutted_wood', 0),
(168, 'steam:11000010ef561cd', 'gold', 0),
(169, 'steam:11000010ef561cd', 'cannabis', 0),
(170, 'steam:11000010ef561cd', 'bolcacahuetes', 0),
(171, 'steam:11000010ef561cd', 'bolchips', 0),
(172, 'steam:11000010ef561cd', 'binoculars', 0),
(173, 'steam:11000011c609b9f', 'litter', 0),
(174, 'steam:11000011c609b9f', 'mixapero', 0),
(175, 'steam:11000011c609b9f', 'metreshooter', 0),
(176, 'steam:11000011c609b9f', 'tacos', 0),
(177, 'steam:11000011c609b9f', 'contrat', 0),
(178, 'steam:11000011c609b9f', 'blowpipe', 0),
(179, 'steam:11000011c609b9f', 'raisin', 0),
(180, 'steam:11000011c609b9f', 'bandage', 0),
(181, 'steam:11000011c609b9f', 'jagercerbere', 0),
(182, 'steam:11000011c609b9f', 'tequila', 0),
(183, 'steam:11000011c609b9f', 'lsd_pooch', 0),
(184, 'steam:11000011c609b9f', 'fishingrod', 0),
(185, 'steam:11000011c609b9f', 'carotool', 0),
(186, 'steam:11000011c609b9f', 'iron', 0),
(187, 'steam:11000011c609b9f', 'burger', 0),
(188, 'steam:11000011c609b9f', 'grapperaisin', 0),
(189, 'steam:11000011c609b9f', 'limonade', 0),
(190, 'steam:11000011c609b9f', 'golem', 0),
(191, 'steam:11000011c609b9f', 'fixkit', 0),
(192, 'steam:11000011c609b9f', 'ice', 0),
(193, 'steam:11000011c609b9f', 'fish', 0),
(194, 'steam:11000011c609b9f', 'vodkaenergy', 0),
(195, 'steam:11000011c609b9f', 'xanax', 0),
(196, 'steam:11000011c609b9f', 'fabric', 0),
(197, 'steam:11000011c609b9f', 'packaged_plank', 0),
(198, 'steam:11000011c609b9f', 'clothe', 0),
(199, 'steam:11000011c609b9f', 'jus_raisin', 0),
(200, 'steam:11000011c609b9f', 'croquettes', 0),
(201, 'steam:11000011c609b9f', 'jusfruit', 0),
(202, 'steam:11000011c609b9f', 'packaged_chicken', 0),
(203, 'steam:11000011c609b9f', 'binoculars', 0),
(204, 'steam:11000011c609b9f', 'drpepper', 0),
(205, 'steam:11000011c609b9f', 'meat', 0),
(206, 'steam:11000011c609b9f', 'lsd', 0),
(207, 'steam:11000011c609b9f', 'wool', 0),
(208, 'steam:11000011c609b9f', 'wood', 0),
(209, 'steam:11000011c609b9f', 'gazbottle', 0),
(210, 'steam:11000011c609b9f', 'stone', 0),
(211, 'steam:11000011c609b9f', 'alive_chicken', 0),
(212, 'steam:11000011c609b9f', 'water', 0),
(213, 'steam:11000011c609b9f', 'plongee1', 0),
(214, 'steam:11000011c609b9f', 'fixtool', 0),
(215, 'steam:11000011c609b9f', 'cannabis', 0),
(216, 'steam:11000011c609b9f', 'washed_stone', 0),
(217, 'steam:11000011c609b9f', 'litter_pooch', 0),
(218, 'steam:11000011c609b9f', 'gold', 0),
(219, 'steam:11000011c609b9f', 'vodkafruit', 0),
(220, 'steam:11000011c609b9f', 'marijuana', 0),
(221, 'steam:11000011c609b9f', 'vodka', 0),
(222, 'steam:11000011c609b9f', 'vine', 0),
(223, 'steam:11000011c609b9f', 'bolcacahuetes', 0),
(224, 'steam:11000011c609b9f', 'mojito', 0),
(225, 'steam:11000011c609b9f', 'teqpaf', 0),
(226, 'steam:11000011c609b9f', 'whiskycoca', 0),
(227, 'steam:11000011c609b9f', 'soda', 0),
(228, 'steam:11000011c609b9f', 'energy', 0),
(229, 'steam:11000011c609b9f', 'carokit', 0),
(230, 'steam:11000011c609b9f', 'rhumcoca', 0),
(231, 'steam:11000011c609b9f', 'petrol_raffin', 0),
(232, 'steam:11000011c609b9f', 'rhumfruit', 0),
(233, 'steam:11000011c609b9f', 'plongee2', 0),
(234, 'steam:11000011c609b9f', 'cola', 0),
(235, 'steam:11000011c609b9f', 'vegetables', 0),
(236, 'steam:11000011c609b9f', 'grand_cru', 0),
(237, 'steam:11000011c609b9f', 'jewels', 0),
(238, 'steam:11000011c609b9f', 'whisky', 0),
(239, 'steam:11000011c609b9f', 'journal', 0),
(240, 'steam:11000011c609b9f', 'essence', 0),
(241, 'steam:11000011c609b9f', 'medikit', 0),
(242, 'steam:11000011c609b9f', 'rhum', 0),
(243, 'steam:11000011c609b9f', 'bread', 0),
(244, 'steam:11000011c609b9f', 'diamond', 0),
(245, 'steam:11000011c609b9f', 'saucisson', 0),
(246, 'steam:11000011c609b9f', 'copper', 0),
(247, 'steam:11000011c609b9f', 'petrol', 0),
(248, 'steam:11000011c609b9f', 'bolpistache', 0),
(249, 'steam:11000011c609b9f', 'menthe', 0),
(250, 'steam:11000011c609b9f', 'bolchips', 0),
(251, 'steam:11000011c609b9f', 'cutted_wood', 0),
(252, 'steam:11000011c609b9f', 'bolnoixcajou', 0),
(253, 'steam:11000011c609b9f', 'martini', 0),
(254, 'steam:11000011c609b9f', 'jagerbomb', 0),
(255, 'steam:11000011c609b9f', 'icetea', 0),
(256, 'steam:11000011c609b9f', 'jager', 0),
(257, 'steam:11000011c609b9f', 'bait', 0),
(258, 'steam:11000011c609b9f', 'slaughtered_chicken', 0),
(259, 'steam:11000011c609b9f', 'sim_card', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Adder', 'adder', 900000, 'super'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Alpha', 'alpha', 60000, 'sports'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Asea', 'asea', 5500, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('BF400', 'bf400', 6500, 'motorcycles'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 45000, 'vans'),
('Blade', 'blade', 15000, 'muscle'),
('Blazer', 'blazer', 6500, 'offroad'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('blazer5', 'blazer5', 1755600, 'offroad'),
('Blista', 'blista', 8000, 'compacts'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Dominator', 'dominator', 35000, 'muscle'),
('Double T', 'double', 28000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 425000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 45000, 'offroad'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Minivan', 'minivan', 13000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('The Liberator', 'monster', 210000, 'offroad'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Neon', 'neon', 1500000, 'sports'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oppressor', 'oppressor', 3524500, 'super'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Sandking', 'sandking', 55000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 90000, 'sedans'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vader', 'vader', 7200, 'motorcycles'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voltic 2', 'voltic2', 3830400, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warnings`
--

CREATE TABLE `warnings` (
  `ID` int(255) NOT NULL,
  `license` varchar(1024) NOT NULL,
  `reason` varchar(1024) NOT NULL,
  `staff_name` varchar(255) NOT NULL,
  `staff_steamid` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weashops`
--

INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
(1, 'GunShop', 'WEAPON_PISTOL', 300),
(2, 'BlackWeashop', 'WEAPON_PISTOL', 500),
(3, 'GunShop', 'WEAPON_FLASHLIGHT', 60),
(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 70),
(5, 'GunShop', 'WEAPON_MACHETE', 90),
(6, 'BlackWeashop', 'WEAPON_MACHETE', 110),
(7, 'GunShop', 'WEAPON_NIGHTSTICK', 150),
(8, 'BlackWeashop', 'WEAPON_NIGHTSTICK', 150),
(9, 'GunShop', 'WEAPON_BAT', 100),
(10, 'BlackWeashop', 'WEAPON_BAT', 100),
(11, 'GunShop', 'WEAPON_STUNGUN', 50),
(12, 'BlackWeashop', 'WEAPON_STUNGUN', 50),
(13, 'GunShop', 'WEAPON_MICROSMG', 1400),
(14, 'BlackWeashop', 'WEAPON_MICROSMG', 1700),
(15, 'GunShop', 'WEAPON_PUMPSHOTGUN', 3400),
(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 3500),
(17, 'GunShop', 'WEAPON_ASSAULTRIFLE', 10000),
(18, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 11000),
(19, 'GunShop', 'WEAPON_SPECIALCARBINE', 15000),
(20, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 16500),
(21, 'GunShop', 'WEAPON_SNIPERRIFLE', 22000),
(22, 'BlackWeashop', 'WEAPON_SNIPERRIFLE', 24000),
(23, 'GunShop', 'WEAPON_FIREWORK', 18000),
(24, 'BlackWeashop', 'WEAPON_FIREWORK', 20000),
(25, 'GunShop', 'WEAPON_GRENADE', 500),
(26, 'BlackWeashop', 'WEAPON_GRENADE', 650),
(27, 'GunShop', 'WEAPON_BZGAS', 200),
(28, 'BlackWeashop', 'WEAPON_BZGAS', 350),
(29, 'GunShop', 'WEAPON_FIREEXTINGUISHER', 100),
(30, 'BlackWeashop', 'WEAPON_FIREEXTINGUISHER', 100),
(31, 'GunShop', 'WEAPON_BALL', 50),
(32, 'BlackWeashop', 'WEAPON_BALL', 50),
(33, 'GunShop', 'WEAPON_SMOKEGRENADE', 100),
(34, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 100),
(35, 'BlackWeashop', 'WEAPON_APPISTOL', 1100),
(36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 12000),
(37, 'BlackWeashop', 'WEAPON_HEAVYSNIPER', 30000),
(38, 'BlackWeashop', 'WEAPON_MINIGUN', 45000),
(39, 'BlackWeashop', 'WEAPON_RAILGUN', 50000),
(40, 'BlackWeashop', 'WEAPON_STICKYBOMB', 500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Indexes for table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coffees`
--
ALTER TABLE `coffees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commend`
--
ALTER TABLE `commend`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `darkshops`
--
ALTER TABLE `darkshops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Indexes for table `dock`
--
ALTER TABLE `dock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dock_categories`
--
ALTER TABLE `dock_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dock_vehicles`
--
ALTER TABLE `dock_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_bishops`
--
ALTER TABLE `fine_types_bishops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_dismay`
--
ALTER TABLE `fine_types_dismay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_grove`
--
ALTER TABLE `fine_types_grove`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_mafia`
--
ALTER TABLE `fine_types_mafia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types_rebel`
--
ALTER TABLE `fine_types_rebel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `glovebox_inventory`
--
ALTER TABLE `glovebox_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `jail`
--
ALTER TABLE `jail`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kicks`
--
ALTER TABLE `kicks`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `owned_dock`
--
ALTER TABLE `owned_dock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`),
  ADD KEY `vehsowned` (`owner`);

--
-- Indexes for table `owner_vehicles`
--
ALTER TABLE `owner_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peage_flash`
--
ALTER TABLE `peage_flash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `license` (`license`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qalle_brottsregister`
--
ALTER TABLE `qalle_brottsregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rented_dock`
--
ALTER TABLE `rented_dock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops2`
--
ALTER TABLE `shops2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `truck_inventory`
--
ALTER TABLE `truck_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item` (`item`,`plate`);

--
-- Indexes for table `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `index_users_phone_number` (`phone_number`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_user_contacts_identifier_name_number` (`identifier`,`name`,`number`);

--
-- Indexes for table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coffees`
--
ALTER TABLE `coffees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `darkshops`
--
ALTER TABLE `darkshops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `dock`
--
ALTER TABLE `dock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `dock_categories`
--
ALTER TABLE `dock_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dock_vehicles`
--
ALTER TABLE `dock_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `fine_types_bishops`
--
ALTER TABLE `fine_types_bishops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fine_types_dismay`
--
ALTER TABLE `fine_types_dismay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fine_types_grove`
--
ALTER TABLE `fine_types_grove`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fine_types_mafia`
--
ALTER TABLE `fine_types_mafia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fine_types_rebel`
--
ALTER TABLE `fine_types_rebel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `glovebox_inventory`
--
ALTER TABLE `glovebox_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `owned_dock`
--
ALTER TABLE `owned_dock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `owner_vehicles`
--
ALTER TABLE `owner_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peage_flash`
--
ALTER TABLE `peage_flash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `qalle_brottsregister`
--
ALTER TABLE `qalle_brottsregister`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `rented_dock`
--
ALTER TABLE `rented_dock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `shops2`
--
ALTER TABLE `shops2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `truck_inventory`
--
ALTER TABLE `truck_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trunk_inventory`
--
ALTER TABLE `trunk_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
