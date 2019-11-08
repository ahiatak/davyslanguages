-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 08 nov. 2019 à 12:25
-- Version du serveur :  10.4.6-MariaDB
-- Version de PHP :  7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `davyslanguages`
--

-- --------------------------------------------------------

--
-- Structure de la table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `abouts`
--

INSERT INTO `abouts` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'abouts\\October2019\\o7BfBQSAbHj9DxbwUh0t.jpg', 'A propos de nous', '<p>Davys\' Languages est un centre de formation, de traduction et d\'interpretation qui propose des services d&rsquo;expertise linguistique exceptionnels. Nous avons une &eacute;quipe exp&eacute;riment&eacute;e et une certification de qualit&eacute; internationale.</p>\n<p>Avec Davys\' Languages, vous b&eacute;n&eacute;ficier d\'une formation intensive en Anglais et Fran&ccedil;ais en cours du jour et du soir &agrave; un prix tr&egrave;s accessible.</p>', '2019-10-17 18:05:00', '2019-10-24 10:53:02');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'David Comlan Ahiataku', 'ahiatak.dav@gmail.com', '92971128', 'zezezerz', '2019-10-26 12:17:10', '2019-10-26 12:17:10'),
(2, 'David Comlan Ahiataku', 'ahiatak.dav@gmail.com', '92971128', 'sdsdsdsd', '2019-10-26 12:18:01', '2019-10-26 12:18:01'),
(3, 'David Comlan Ahiataku', 'ahiatak.@gmail.com', '92971128', 'dsddfdfdffdf', '2019-10-26 12:21:59', '2019-10-26 12:21:59'),
(4, 'David Comlan Ahiataku', 'ahiatak.dav@gmail.com', '92971128', 'dfdfdfdfdfv  fdfdf', '2019-10-26 12:23:46', '2019-10-26 12:23:46');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'name1', 'text', 'Name1', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'name2', 'text', 'Name2', 0, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'name3', 'text', 'Name3', 0, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'logo1', 'image', 'Logo1', 0, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'logo2', 'image', 'Logo2', 0, 1, 1, 1, 1, 1, '{}', 6),
(28, 4, 'logo3', 'image', 'Logo3', 0, 1, 1, 1, 1, 1, '{}', 7),
(29, 4, 'photo1', 'image', 'Photo1', 0, 1, 1, 1, 1, 1, '{}', 8),
(30, 4, 'photo2', 'image', 'Photo2', 0, 1, 1, 1, 1, 1, '{}', 9),
(31, 4, 'photo3', 'image', 'Photo3', 0, 1, 1, 1, 1, 1, '{}', 10),
(32, 4, 'titre', 'text', 'Titre', 0, 1, 1, 1, 1, 1, '{}', 11),
(33, 4, 'about1', 'text_area', 'About1', 0, 1, 1, 1, 1, 1, '{}', 12),
(34, 4, 'about2', 'text_area', 'About2', 0, 1, 1, 1, 1, 1, '{}', 13),
(35, 4, 'about3', 'text_area', 'About3', 0, 1, 1, 1, 1, 1, '{}', 14),
(36, 4, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 15),
(37, 4, 'youtube', 'text', 'Youtube', 0, 1, 1, 1, 1, 1, '{}', 16),
(38, 4, 'twitter', 'text', 'Twitter', 0, 1, 1, 1, 1, 1, '{}', 17),
(39, 4, 'instagram', 'text', 'Instagram', 0, 1, 1, 1, 1, 1, '{}', 18),
(40, 4, 'linkedin', 'text', 'Linkedin', 0, 1, 1, 1, 1, 1, '{}', 19),
(41, 4, 'skype', 'text', 'Skype', 0, 1, 1, 1, 1, 1, '{}', 20),
(42, 4, 'whatsapp', 'text', 'Whatsapp', 0, 1, 1, 1, 1, 1, '{}', 21),
(43, 4, 'mail1', 'text', 'Mail1', 0, 1, 1, 1, 1, 1, '{}', 22),
(44, 4, 'mail2', 'text', 'Mail2', 0, 1, 1, 1, 1, 1, '{}', 23),
(45, 4, 'mail3', 'text', 'Mail3', 0, 1, 1, 1, 1, 1, '{}', 24),
(46, 4, 'mail4', 'text', 'Mail4', 0, 1, 1, 1, 1, 1, '{}', 25),
(47, 4, 'mail5', 'text', 'Mail5', 0, 1, 1, 1, 1, 1, '{}', 26),
(48, 4, 'tel1', 'text', 'Tel1', 0, 1, 1, 1, 1, 1, '{}', 27),
(49, 4, 'tel2', 'text', 'Tel2', 0, 1, 1, 1, 1, 1, '{}', 28),
(50, 4, 'tel3', 'text', 'Tel3', 0, 1, 1, 1, 1, 1, '{}', 29),
(51, 4, 'tel4', 'text', 'Tel4', 0, 1, 1, 1, 1, 1, '{}', 30),
(52, 4, 'tel5', 'text', 'WhatsApp', 0, 1, 1, 1, 1, 1, '{}', 31),
(53, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 32),
(54, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 33),
(55, 5, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(56, 5, 'text', 'text_area', 'Text', 0, 1, 1, 1, 1, 1, '{}', 2),
(57, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(58, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(59, 6, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(60, 6, 'url', 'image', 'Url', 0, 1, 1, 1, 1, 1, '{}', 2),
(61, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(62, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(63, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"467\",\"height\":\"625\"}}]}', 2),
(65, 7, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(66, 7, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(67, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(68, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(69, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 8, 'icon', 'text', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 3),
(71, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(72, 8, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(73, 8, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(74, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(75, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(76, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(77, 9, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(78, 9, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(79, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(80, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(81, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(82, 10, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(83, 10, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 3),
(84, 10, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(85, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(86, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(87, 11, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(88, 11, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(89, 11, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(90, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(91, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(92, 12, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 12, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"2400\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"842\",\"height\":\"472\"}},{\"name\":\"cropped-2400\",\"crop\":{\"width\":\"2400\",\"height\":\"1600\"}},{\"name\":\"cropped-370\",\"crop\":{\"width\":\"370\",\"height\":\"208\"}},{\"name\":\"cropped-300\",\"crop\":{\"width\":\"300\",\"height\":\"200\"}},{\"name\":\"cropped-270\",\"crop\":{\"width\":\"270\",\"height\":\"152\"}},{\"name\":\"cropped-768\",\"crop\":{\"width\":\"768\",\"height\":\"512\"}},{\"name\":\"cropped-1024\",\"crop\":{\"width\":\"1024\",\"height\":\"683\"}},{\"name\":\"cropped-760\",\"crop\":{\"width\":\"760\",\"height\":\"507\"}}]}', 2),
(94, 12, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(95, 12, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(96, 12, 'vue', 'text', 'Vue', 0, 1, 1, 1, 1, 1, '{}', 5),
(97, 12, 'like', 'text', 'Like', 0, 1, 1, 1, 1, 1, '{}', 6),
(98, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(99, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(105, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(106, 14, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"2400\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"842\",\"height\":\"472\"}},{\"name\":\"cropped-2400\",\"crop\":{\"width\":\"2400\",\"height\":\"1600\"}},{\"name\":\"cropped-370\",\"crop\":{\"width\":\"370\",\"height\":\"208\"}},{\"name\":\"cropped-300\",\"crop\":{\"width\":\"300\",\"height\":\"200\"}},{\"name\":\"cropped-270\",\"crop\":{\"width\":\"270\",\"height\":\"152\"}},{\"name\":\"cropped-768\",\"crop\":{\"width\":\"768\",\"height\":\"512\"}},{\"name\":\"cropped-1024\",\"crop\":{\"width\":\"1024\",\"height\":\"683\"}},{\"name\":\"cropped-760\",\"crop\":{\"width\":\"760\",\"height\":\"507\"}}]}', 2),
(107, 14, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(108, 14, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(109, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(110, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(111, 15, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(112, 15, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(113, 15, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(114, 15, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(115, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(116, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(117, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(118, 16, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(119, 16, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(120, 16, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(121, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(122, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(123, 17, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(124, 17, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(125, 17, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(126, 17, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 4),
(127, 17, 'message', 'text_area', 'Message', 0, 1, 1, 1, 1, 1, '{}', 5),
(128, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(129, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(130, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(131, 18, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1920\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"1920\",\"height\":\"803\"}},{\"name\":\"slide-1\",\"crop\":{\"width\":\"100\",\"height\":\"50\"}}]}', 2),
(132, 18, 'texte1', 'text_area', 'Texte1', 0, 1, 1, 1, 1, 1, '{}', 3),
(133, 18, 'texte2', 'text_area', 'Texte2', 0, 1, 1, 1, 1, 1, '{}', 4),
(134, 18, 'texte3', 'text_area', 'Texte3', 0, 1, 1, 1, 1, 1, '{}', 5),
(135, 18, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(136, 18, 'btn_text', 'text', 'Btn Text', 0, 1, 1, 1, 1, 1, '{}', 7),
(137, 18, 'btn_link', 'text', 'Btn Link', 0, 1, 1, 1, 1, 1, '{}', 8),
(138, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(139, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(150, 20, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(151, 20, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(152, 20, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(153, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(154, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(155, 21, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(156, 21, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"2400\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"2400\",\"height\":\"1600\"}}]}', 2),
(157, 21, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 5),
(158, 21, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(159, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(160, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(161, 22, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(162, 22, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(163, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(164, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(165, 23, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(166, 23, 'image', 'text', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(167, 23, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(168, 23, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(169, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(170, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(171, 24, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(172, 24, 'post_id', 'select_dropdown', 'Post Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(173, 24, 'comment', 'text_area', 'Comment', 0, 1, 1, 1, 1, 1, '{}', 3),
(174, 24, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(175, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(176, 25, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(177, 25, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(178, 25, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(179, 25, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 4),
(180, 25, 'source_language', 'text', 'Source Language', 0, 1, 1, 1, 1, 1, '{}', 5),
(181, 25, 'target_language', 'text', 'Target Language', 0, 1, 1, 1, 1, 1, '{}', 6),
(182, 25, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 7),
(183, 25, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 8),
(184, 25, 'domain', 'text', 'Domain', 0, 1, 1, 1, 1, 1, '{}', 9),
(185, 25, 'deadline', 'text', 'Deadline', 0, 1, 1, 1, 1, 1, '{}', 10),
(186, 25, 'document_type', 'text', 'Document Type', 0, 1, 1, 1, 1, 1, '{}', 11),
(187, 25, 'message', 'text_area', 'Message', 0, 1, 1, 1, 1, 1, '{}', 12),
(188, 25, 'moyen_contact', 'text', 'Moyen Contact', 0, 1, 1, 1, 1, 1, '{}', 13),
(189, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 14),
(190, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
(191, 21, 'gallery_category_id', 'select_dropdown', 'Gallery Category', 1, 1, 1, 1, 1, 1, '{}', 4),
(193, 10, 'price_belongstomany_p_item_relationship', 'relationship', 'p_items', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\PItem\",\"table\":\"p_items\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"p_item_price\",\"pivot\":\"1\",\"taggable\":\"0\"}', 5),
(194, 11, 'p_item_belongstomany_price_relationship', 'relationship', 'prices', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Price\",\"table\":\"prices\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"p_item_price\",\"pivot\":\"1\",\"taggable\":\"0\"}', 4),
(195, 26, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(196, 26, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1920\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"513\",\"height\":\"549\"}},{\"name\":\"cropped-big\",\"crop\":{\"width\":\"1920\",\"height\":\"828\"}},{\"name\":\"cropped-small\",\"crop\":{\"width\":\"370\",\"height\":\"396\"}}]}', 2),
(197, 26, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(198, 26, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(199, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(200, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(201, 8, 'service_belongstomany_s_item_relationship', 'relationship', 's_items', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\SItem\",\"table\":\"s_items\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"s_item_service\",\"pivot\":\"1\",\"taggable\":\"0\"}', 6),
(202, 9, 's_item_belongstomany_service_relationship', 'relationship', 'services', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Service\",\"table\":\"services\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"s_item_service\",\"pivot\":\"1\",\"taggable\":\"0\"}', 3),
(203, 27, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(204, 27, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1200\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"1200\",\"height\":\"1200\"}},{\"name\":\"cropped-150\",\"crop\":{\"width\":\"150\",\"height\":\"150\"}},{\"name\":\"cropped-300\",\"crop\":{\"width\":\"300\",\"height\":\"300\"}},{\"name\":\"cropped-768\",\"crop\":{\"width\":\"768\",\"height\":\"768\"}},{\"name\":\"cropped-1024\",\"crop\":{\"width\":\"1024\",\"height\":\"1024\"}},{\"name\":\"cropped-370\",\"crop\":{\"width\":\"370\",\"height\":\"370\"}},{\"name\":\"cropped-90\",\"crop\":{\"width\":\"90\",\"height\":\"90\"}},{\"name\":\"cropped-760\",\"crop\":{\"width\":\"760\",\"height\":\"760\"}}]}', 2),
(205, 27, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(206, 27, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 4),
(207, 27, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(208, 27, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 6),
(209, 27, 'twitter', 'text', 'Twitter', 0, 1, 1, 1, 1, 1, '{}', 7),
(210, 27, 'instagram', 'text', 'Instagram', 0, 1, 1, 1, 1, 1, '{}', 8),
(211, 27, 'linkedin', 'text', 'Linkedin', 0, 1, 1, 1, 1, 1, '{}', 9),
(212, 27, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(213, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(214, 21, 'gallery_belongsto_gallery_category_relationship', 'relationship', 'gallery_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\GalleryCategory\",\"table\":\"gallery_categories\",\"type\":\"belongsTo\",\"column\":\"gallery_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-10-10 15:19:21', '2019-10-10 15:19:21'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-10-10 15:19:22', '2019-10-10 15:19:22'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-10-10 15:19:22', '2019-10-10 15:19:22'),
(4, 'entreprises', 'entreprises', 'Entreprise', 'Entreprises', 'voyager-home', 'App\\Entreprise', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 08:53:40', '2019-10-25 20:24:32'),
(5, 'texts', 'texts', 'Text', 'Textes', 'voyager-hammer', 'App\\Text', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-11 08:54:53', '2019-10-11 08:54:53'),
(6, 'images', 'images', 'Image', 'Images', 'voyager-images', 'App\\Image', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-11 08:56:43', '2019-10-11 08:56:43'),
(7, 'abouts', 'abouts', 'About', 'Abouts', 'voyager-font', 'App\\About', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 09:01:52', '2019-10-17 18:05:15'),
(8, 'services', 'services', 'Service', 'Services', 'voyager-lightbulb', 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 09:05:38', '2019-10-18 17:19:13'),
(9, 's_items', 's-items', 'Service Item', 'Services Items', 'voyager-list', 'App\\SItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 09:08:28', '2019-10-18 17:29:32'),
(10, 'prices', 'prices', 'Price', 'Prices', 'voyager-gift', 'App\\Price', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 09:12:27', '2019-10-11 11:31:34'),
(11, 'p_items', 'p-items', 'Price Item', 'Prices Items', 'voyager-book-download', 'App\\PItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 09:17:43', '2019-10-11 11:33:02'),
(12, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'App\\Post', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 09:24:28', '2019-10-25 11:43:26'),
(14, 'learns', 'learns', 'Learn', 'Learns', 'voyager-logbook', 'App\\Learn', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 09:28:17', '2019-10-25 12:40:56'),
(15, 'how_it_works', 'how-it-works', 'How It Work', 'How It Works', 'voyager-question', 'App\\HowItWork', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-11 09:40:31', '2019-10-11 09:40:31'),
(16, 'faqs', 'faqs', 'Faq', 'Faqs', 'voyager-medal-rank-star', 'App\\Faq', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-11 09:42:16', '2019-10-11 09:42:16'),
(17, 'contacts', 'contacts', 'Contact', 'Contacts', 'voyager-telephone', 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-11 10:33:43', '2019-10-11 10:33:43'),
(18, 'slides', 'slides', 'Slide', 'Slides', 'voyager-puzzle', 'App\\Slide', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 10:43:54', '2019-10-17 17:24:55'),
(20, 'news_letters', 'news-letters', 'News Letter', 'News Letters', 'voyager-mail', 'App\\NewsLetter', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-11 10:46:36', '2019-10-11 10:46:36'),
(21, 'galleries', 'galleries', 'Gallery', 'Galleries', 'voyager-photos', 'App\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 10:48:13', '2019-10-24 07:46:40'),
(22, 'gallery_categories', 'gallery-categories', 'Gallery Category', 'Gallery Categories', 'voyager-hotdog', 'App\\GalleryCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-11 10:49:24', '2019-10-11 10:49:24'),
(23, 'testimonials', 'testimonials', 'Testimonial', 'Testimonials', 'voyager-heart', 'App\\Testimonial', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-11 10:56:15', '2019-10-11 10:56:15'),
(24, 'comments', 'comments', 'Comment', 'Comments', 'voyager-chat', 'App\\Comment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-11 11:18:11', '2019-10-11 11:18:11'),
(25, 'order_translations', 'order-translations', 'Order Translation', 'Order Translations', 'voyager-receipt', 'App\\OrderTranslation', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-11 11:19:47', '2019-10-11 11:19:47'),
(26, 'sections', 'sections', 'Section', 'Sections', 'voyager-puzzle', 'App\\Section', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 11:34:55', '2019-10-19 09:14:24'),
(27, 'teams', 'teams', 'Team', 'Teams', 'voyager-group', 'App\\Team', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-24 07:01:38', '2019-10-24 07:07:59');

-- --------------------------------------------------------

--
-- Structure de la table `entreprises`
--

CREATE TABLE `entreprises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titre` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about1` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about3` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `entreprises`
--

INSERT INTO `entreprises` (`id`, `name1`, `name2`, `name3`, `logo1`, `logo2`, `logo3`, `photo1`, `photo2`, `photo3`, `titre`, `about1`, `about2`, `about3`, `facebook`, `youtube`, `twitter`, `instagram`, `linkedin`, `skype`, `whatsapp`, `mail1`, `mail2`, `mail3`, `mail4`, `mail5`, `tel1`, `tel2`, `tel3`, `tel4`, `tel5`, `created_at`, `updated_at`) VALUES
(1, 'Davys\' Languages', NULL, NULL, 'entreprises\\October2019\\4dRqwifjnmVSLW9nv4Qu.png', 'entreprises\\October2019\\TIRPmFs6a7Fgrw1tL9U0.png', 'entreprises\\October2019\\sHgFpHqVImAmteVmbk20.png', 'entreprises\\October2019\\mYjx01ccYjAbkKN4QIHX.jpeg', NULL, NULL, NULL, 'Situé à Novissi dans  le von du Pressing du Golfe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ahiatak.dav@gmail.com', 'elom5828@gmail.com', NULL, NULL, NULL, '+228 91 90 61 12', '+228 99 40 86 71', NULL, NULL, '22898903075', '2019-10-17 16:19:00', '2019-10-26 12:23:24');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `faqs`
--

INSERT INTO `faqs` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Qui peut suivre nos formations ?', 'Si vous souhaitez prendre des cours en Anglais et Français,<br>\nSi vous désirez suivre une formation d’anglais ou de Français dans le cadre de votre recherche d’emploi , de voyage etc...<br>\nSi vous souhaitez former vos collaborateurs en  Anglais et Français pour qu’ils représentent votre entreprise à l’étranger,<br>\nSi votre enfant a besoin d’un soutien scolaire en Anglais ou Français..', '2019-10-22 15:52:00', '2019-10-24 17:05:40'),
(2, NULL, 'Quelles sont nos méthodes d’apprentissage ?', 'La méthode qu\'utilise Davys\'languages est parfaitement dédiée à l’apprentissage des langues, qu’elles soient usuelles telles que l’anglais, l’allemand, l’italien, l’espagnol ou d’autres langues plus rares.\n\nNos cours de langue reposent sur les principes fondamentaux reconnus de méthode directe, progressive et communicative.\n\nL’apprenant est au cœur de son apprentissage, toujours en action et soutenu par le formateur. Ce dernier est un professionnel qui est là pour vous motiver, vous donner confiance et adapter sa pédagogie à vos besoins.', '2019-10-22 15:52:00', '2019-10-24 16:10:44'),
(4, NULL, 'Quelles sont nos formations en langue ?', 'L’objectif de nos cours de langue  est de vous apporter des solutions adaptées à vos attentes.\n\nQuel que soit votre niveau en langue et vos besoins, apprenez l’anglais et  le français avec un expert de la formation.\n\nNous vous préparons également aux certifications internationales et professionnelles tels que le TOEFL, IELTS etc.\n\nDavys \' languages met à votre disposition des programmes pédagogiques spécifiques en relation avec votre métier (anglais des affaires, la rédaction de mails, comment voyager à l’étranger...).', '2019-10-22 15:53:00', '2019-10-24 16:08:46');

-- --------------------------------------------------------

--
-- Structure de la table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `galleries`
--

INSERT INTO `galleries` (`id`, `gallery_category_id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, NULL, 'galleries\\October2019\\GwZseV0zF2fDwp6ylqrb.jpg', 'MARKETING TO DIRECT CLIENTS STARTS MONDAY-FULL', '', '2019-10-24 07:58:00', '2019-10-24 07:58:36'),
(2, NULL, 'galleries\\October2019\\tuGfgFmqXJLUwZkdROM2.jpg', 'A LUCRATIVE SIDELINE: EDITING FOR NON-NATIVE SPEAKERS', '', '2019-10-24 07:59:41', '2019-10-24 07:59:41'),
(3, NULL, 'galleries\\October2019\\zo8cPPEIAPDB93A8k9re.jpg', 'SPEAKING OF TRANSLATION: TRANSLATING OUTSIDE THE BOX', '', '2019-10-24 08:00:50', '2019-10-24 08:00:50');

-- --------------------------------------------------------

--
-- Structure de la table `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gallery_categories`
--

INSERT INTO `gallery_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2017', '2019-10-24 07:31:58', '2019-10-24 07:31:58'),
(2, '2018', '2019-10-24 07:32:10', '2019-10-24 07:32:10'),
(3, '2019', '2019-10-24 07:32:22', '2019-10-24 07:32:22');

-- --------------------------------------------------------

--
-- Structure de la table `how_it_works`
--

CREATE TABLE `how_it_works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `how_it_works`
--

INSERT INTO `how_it_works` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Etape 1', 'Accédez au formulaire de commande, remplissez puis envoyez ! ', '2019-10-22 15:43:00', '2019-10-24 17:51:06'),
(2, NULL, 'Etape 2', 'Vous recevrez par mail ou téléphone le prix de la commande.', '2019-10-22 15:44:00', '2019-10-24 17:51:24'),
(3, NULL, 'Etape 3', 'Approuver le devis et payer', '2019-10-24 17:42:57', '2019-10-24 17:42:57'),
(4, NULL, 'Etape 4', 'Votre traduction sera prêt dans votre boîte de réception ou par le moyen que vous avez spécifié.', '2019-10-24 17:46:32', '2019-10-24 17:46:32');

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id`, `url`, `created_at`, `updated_at`) VALUES
(1, 'images\\October2019\\u53JaSX8ZU0S7Coi35jW.jpg', '2019-10-22 15:03:51', '2019-10-22 15:03:51'),
(2, 'images\\October2019\\GtPSMXESwOlm1G3Q6qpb.jpg', '2019-10-23 13:39:20', '2019-10-23 13:39:20'),
(3, 'images\\October2019\\9kbO908iVVZF1k0kZZO8.jpg', '2019-10-24 08:13:10', '2019-10-24 08:13:10'),
(4, 'images\\October2019\\rQcsSOlhGwTfZT8HygUn.jpeg', '2019-10-28 20:13:07', '2019-10-28 20:13:07');

-- --------------------------------------------------------

--
-- Structure de la table `learns`
--

CREATE TABLE `learns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `learns`
--

INSERT INTO `learns` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(3, 'learns\\October2019\\EyuwoF4RPFFMct9Pzxt9.jpg', 'Comment vaincre la peur de l\'écriture dans une langue étrangère', '<p>Erat elementum fuga phasellus non turpis augue. Elit massa dolor id mollis magna. Orci nulla sagittis. Habitasse risus felis sollicitudin eleifend et, vehicula pharetra commodo quis, taciti ridiculus ipsum netus facilisis quisque, suspendisse diam. Nascetur turpis pulvinar sollicitudin conubia lorem neque, odio pellentesque quisque et, pellentesque augue eget tortor ut</p>\n<p>&nbsp;</p>\n<p>Placerat orci est vitae purus, morbi sit aenean sollicitudin volutpat morbi, amet lacus a convallis, sit tempus quis consectetuer lacus. Sollicitudin et, sed tortor sagittis sapien, morbi rutrum aliquam mus pellentesque felis quis. Fusce purus vel et wisi rhoncus in, metus aenean orci curabitur blandit, et lorem rutrum vestibulum turpis</p>\n<p>&nbsp;</p>\n<p>Adipiscing eu porttitor. Mauris ante blandit nesciunt fringilla montes. Sociis sapien viverra sit est ut, ullamcorper pulvinar itaque dignissim ac donec tempor, urna nam volutpat, wisi metus at a. Feugiat id eget senectus enim erat vel, varius lorem condimentum ad, magna neque, tellus quam dignissim cras, leo id atque urna</p>', '2019-10-23 17:37:00', '2019-10-25 18:27:20');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-10-10 15:19:24', '2019-10-10 15:19:24');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-10-10 15:19:24', '2019-10-10 15:19:24', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-10-10 15:19:25', '2019-10-10 15:19:25', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-10-10 15:19:25', '2019-10-10 15:19:25', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-10-10 15:19:25', '2019-10-10 15:19:25', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-10-10 15:19:25', '2019-10-10 15:19:25', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-10-10 15:19:25', '2019-10-10 15:19:25', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-10-10 15:19:25', '2019-10-10 15:19:25', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-10-10 15:19:25', '2019-10-10 15:19:25', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-10-10 15:19:25', '2019-10-10 15:19:25', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-10-10 15:19:25', '2019-10-10 15:19:25', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2019-10-10 15:19:31', '2019-10-10 15:19:31', 'voyager.hooks', NULL),
(12, 1, 'Entreprises', '', '_self', 'voyager-home', NULL, NULL, 15, '2019-10-11 08:53:40', '2019-10-11 08:53:40', 'voyager.entreprises.index', NULL),
(13, 1, 'Textes', '', '_self', 'voyager-hammer', NULL, NULL, 16, '2019-10-11 08:54:53', '2019-10-11 08:54:53', 'voyager.texts.index', NULL),
(14, 1, 'Images', '', '_self', 'voyager-images', NULL, NULL, 17, '2019-10-11 08:56:43', '2019-10-11 08:56:43', 'voyager.images.index', NULL),
(15, 1, 'Abouts', '', '_self', 'voyager-font', NULL, NULL, 18, '2019-10-11 09:01:52', '2019-10-11 09:01:52', 'voyager.abouts.index', NULL),
(16, 1, 'Services', '', '_self', 'voyager-lightbulb', NULL, NULL, 19, '2019-10-11 09:05:39', '2019-10-11 09:05:39', 'voyager.services.index', NULL),
(17, 1, 'Services Items', '', '_self', 'voyager-list', NULL, NULL, 20, '2019-10-11 09:08:29', '2019-10-11 09:08:29', 'voyager.s-items.index', NULL),
(18, 1, 'Prices', '', '_self', 'voyager-gift', NULL, NULL, 21, '2019-10-11 09:12:28', '2019-10-11 09:12:28', 'voyager.prices.index', NULL),
(19, 1, 'Prices Items', '', '_self', 'voyager-book-download', NULL, NULL, 22, '2019-10-11 09:17:43', '2019-10-11 09:17:43', 'voyager.p-items.index', NULL),
(20, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 23, '2019-10-11 09:24:28', '2019-10-11 09:24:28', 'voyager.posts.index', NULL),
(22, 1, 'Learns', '', '_self', 'voyager-logbook', NULL, NULL, 25, '2019-10-11 09:28:17', '2019-10-11 09:28:17', 'voyager.learns.index', NULL),
(23, 1, 'How It Works', '', '_self', 'voyager-question', NULL, NULL, 26, '2019-10-11 09:40:32', '2019-10-11 09:40:32', 'voyager.how-it-works.index', NULL),
(24, 1, 'Faqs', '', '_self', 'voyager-medal-rank-star', NULL, NULL, 27, '2019-10-11 09:42:17', '2019-10-11 09:42:17', 'voyager.faqs.index', NULL),
(25, 1, 'Contacts', '', '_self', 'voyager-telephone', NULL, NULL, 28, '2019-10-11 10:33:43', '2019-10-11 10:33:43', 'voyager.contacts.index', NULL),
(26, 1, 'Slides', '', '_self', 'voyager-puzzle', NULL, NULL, 29, '2019-10-11 10:43:54', '2019-10-11 10:43:54', 'voyager.slides.index', NULL),
(28, 1, 'News Letters', '', '_self', 'voyager-mail', NULL, NULL, 31, '2019-10-11 10:46:36', '2019-10-11 10:46:36', 'voyager.news-letters.index', NULL),
(29, 1, 'Galleries', '', '_self', 'voyager-photos', NULL, NULL, 32, '2019-10-11 10:48:13', '2019-10-11 10:48:13', 'voyager.galleries.index', NULL),
(30, 1, 'Gallery Categories', '', '_self', 'voyager-hotdog', NULL, NULL, 33, '2019-10-11 10:49:24', '2019-10-11 10:49:24', 'voyager.gallery-categories.index', NULL),
(31, 1, 'Testimonials', '', '_self', 'voyager-heart', NULL, NULL, 34, '2019-10-11 10:56:15', '2019-10-11 10:56:15', 'voyager.testimonials.index', NULL),
(32, 1, 'Comments', '', '_self', 'voyager-chat', NULL, NULL, 35, '2019-10-11 11:18:12', '2019-10-11 11:18:12', 'voyager.comments.index', NULL),
(33, 1, 'Order Translations', '', '_self', 'voyager-receipt', NULL, NULL, 36, '2019-10-11 11:19:48', '2019-10-11 11:19:48', 'voyager.order-translations.index', NULL),
(34, 1, 'Sections', '', '_self', 'voyager-puzzle', NULL, NULL, 37, '2019-10-11 11:34:55', '2019-10-11 11:34:55', 'voyager.sections.index', NULL),
(35, 1, 'Teams', '', '_self', 'voyager-group', NULL, NULL, 38, '2019-10-24 07:01:39', '2019-10-24 07:01:39', 'voyager.teams.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_10_02_093858_create_entreprises_table', 1),
(25, '2019_10_02_095220_create_slides_table', 1),
(26, '2019_10_02_102248_create_images_table', 1),
(27, '2019_10_02_103006_create_texts_table', 1),
(28, '2019_10_02_103731_create_services_table', 1),
(29, '2019_10_02_103805_create_contacts_table', 1),
(30, '2019_10_02_103821_create_translates_table', 1),
(31, '2019_10_02_103900_create_how_it_works_table', 1),
(32, '2019_10_02_103916_create_faqs_table', 1),
(33, '2019_10_02_103939_create_teams_table', 1),
(34, '2019_10_02_103957_create_testimonials_table', 1),
(35, '2019_10_02_104649_create_posts_table', 1),
(36, '2019_10_02_110507_create_learns_table', 1),
(37, '2019_10_02_110605_create_prices_table', 1),
(40, '2019_10_02_113027_create_gallery_categories_table', 1),
(41, '2019_10_02_130404_create_p_items_table', 1),
(42, '2019_10_02_130404_create_s_items_table', 1),
(43, '2019_10_02_132905_create_s_item_service_table', 1),
(44, '2019_10_02_132945_create_p_item_price_table', 1),
(45, '2019_10_11_105846_create_abouts_table', 2),
(46, '2018_08_08_100000_create_telescope_entries_table', 3),
(47, '2019_10_11_114514_create_news_letters_table', 3),
(48, '2019_10_02_110741_create_comments_table', 4),
(49, '2019_10_11_130545_create_sections_table', 4),
(50, '2019_10_11_130635_create_order_translations_table', 4),
(51, '2019_10_02_113030_create_galleries_table', 5),
(52, '2018_10_30_000000_create_tables', 6),
(53, '2018_11_16_000000_add_meta_fields', 6);

-- --------------------------------------------------------

--
-- Structure de la table `news_letters`
--

CREATE TABLE `news_letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `order_translations`
--

CREATE TABLE `order_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moyen_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order_translations`
--

INSERT INTO `order_translations` (`id`, `name`, `firstname`, `email`, `phone`, `source_language`, `target_language`, `type`, `file`, `domain`, `deadline`, `document_type`, `message`, `moyen_contact`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, 'Source Language', 'Target Language', 'Company', NULL, 'Industry', NULL, NULL, NULL, NULL, '2019-10-25 17:01:58', '2019-10-25 17:01:58'),
(2, NULL, NULL, NULL, NULL, 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', NULL, 'Marketing', 'Please Select *', 'Please Select *', NULL, 'Appelez-moi', '2019-10-25 17:02:45', '2019-10-25 17:02:45'),
(3, NULL, NULL, NULL, NULL, 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', NULL, 'Marketing', 'Please Select *', 'Please Select *', NULL, 'Appelez-moi', '2019-10-25 17:02:46', '2019-10-25 17:02:46'),
(4, NULL, NULL, NULL, NULL, 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', 'file/_1572024087', 'Marketing', 'Please Select *', 'Please Select *', NULL, 'Appelez-moi', '2019-10-25 17:21:27', '2019-10-25 17:21:27'),
(5, NULL, NULL, NULL, NULL, 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', 'public/order-translations/_1572024733pdf', 'Marketing', 'Please Select *', 'Please Select *', NULL, 'Appelez-moi', '2019-10-25 17:32:13', '2019-10-25 17:32:13'),
(6, NULL, NULL, NULL, NULL, 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', 'public/order-translations/_1572024797.pdf', 'Scientifique', 'Please Select *', 'Please Select *', NULL, 'Appelez-moi', '2019-10-25 17:33:17', '2019-10-25 17:33:17'),
(7, 'Admin', NULL, NULL, NULL, 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', 'public/order-translations/Admin_1572025193.jpg', 'Marketing', 'Please Select *', 'Please Select *', NULL, 'Appelez-moi', '2019-10-25 17:39:53', '2019-10-25 17:39:53'),
(8, NULL, NULL, NULL, NULL, 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', 'public/order-translations/_1572025323.jpg', 'Marketing', 'Please Select *', 'Please Select *', NULL, 'Appelez-moi', '2019-10-25 17:42:03', '2019-10-25 17:42:03'),
(9, 'Admin', NULL, NULL, NULL, 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', 'public/order-translations/Admin_1572025628.pdf', 'Marketing', 'Please Select *', 'Please Select *', NULL, 'Appelez-moi', '2019-10-25 17:47:08', '2019-10-25 17:47:08'),
(10, 'Admin', 'Sadia Joli', NULL, '667878', 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', 'public/order-translations/Admin_1572026497.jpg', 'Marketing', 'Veuillez choisir *', 'Veuillez choisir *', NULL, 'Appelez-moi', '2019-10-25 18:01:37', '2019-10-25 18:01:37'),
(11, 'elom', 'Sadia Joli', NULL, '667878', 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', 'public/order-translations/elom_1572027262.jpg', 'Marketing', 'Veuillez choisir *', 'Veuillez choisir *', NULL, 'Appelez-moi', '2019-10-25 18:14:22', '2019-10-25 18:14:22');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(2, 'browse_bread', NULL, '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(3, 'browse_database', NULL, '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(4, 'browse_media', NULL, '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(5, 'browse_compass', NULL, '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(6, 'browse_menus', 'menus', '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(7, 'read_menus', 'menus', '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(8, 'edit_menus', 'menus', '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(9, 'add_menus', 'menus', '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(10, 'delete_menus', 'menus', '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(11, 'browse_roles', 'roles', '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(12, 'read_roles', 'roles', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(13, 'edit_roles', 'roles', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(14, 'add_roles', 'roles', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(15, 'delete_roles', 'roles', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(16, 'browse_users', 'users', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(17, 'read_users', 'users', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(18, 'edit_users', 'users', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(19, 'add_users', 'users', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(20, 'delete_users', 'users', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(21, 'browse_settings', 'settings', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(22, 'read_settings', 'settings', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(23, 'edit_settings', 'settings', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(24, 'add_settings', 'settings', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(25, 'delete_settings', 'settings', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(26, 'browse_hooks', NULL, '2019-10-10 15:19:31', '2019-10-10 15:19:31'),
(27, 'browse_entreprises', 'entreprises', '2019-10-11 08:53:40', '2019-10-11 08:53:40'),
(28, 'read_entreprises', 'entreprises', '2019-10-11 08:53:40', '2019-10-11 08:53:40'),
(29, 'edit_entreprises', 'entreprises', '2019-10-11 08:53:40', '2019-10-11 08:53:40'),
(30, 'add_entreprises', 'entreprises', '2019-10-11 08:53:40', '2019-10-11 08:53:40'),
(31, 'delete_entreprises', 'entreprises', '2019-10-11 08:53:40', '2019-10-11 08:53:40'),
(32, 'browse_texts', 'texts', '2019-10-11 08:54:53', '2019-10-11 08:54:53'),
(33, 'read_texts', 'texts', '2019-10-11 08:54:53', '2019-10-11 08:54:53'),
(34, 'edit_texts', 'texts', '2019-10-11 08:54:53', '2019-10-11 08:54:53'),
(35, 'add_texts', 'texts', '2019-10-11 08:54:53', '2019-10-11 08:54:53'),
(36, 'delete_texts', 'texts', '2019-10-11 08:54:53', '2019-10-11 08:54:53'),
(37, 'browse_images', 'images', '2019-10-11 08:56:43', '2019-10-11 08:56:43'),
(38, 'read_images', 'images', '2019-10-11 08:56:43', '2019-10-11 08:56:43'),
(39, 'edit_images', 'images', '2019-10-11 08:56:43', '2019-10-11 08:56:43'),
(40, 'add_images', 'images', '2019-10-11 08:56:43', '2019-10-11 08:56:43'),
(41, 'delete_images', 'images', '2019-10-11 08:56:43', '2019-10-11 08:56:43'),
(42, 'browse_abouts', 'abouts', '2019-10-11 09:01:52', '2019-10-11 09:01:52'),
(43, 'read_abouts', 'abouts', '2019-10-11 09:01:52', '2019-10-11 09:01:52'),
(44, 'edit_abouts', 'abouts', '2019-10-11 09:01:52', '2019-10-11 09:01:52'),
(45, 'add_abouts', 'abouts', '2019-10-11 09:01:52', '2019-10-11 09:01:52'),
(46, 'delete_abouts', 'abouts', '2019-10-11 09:01:52', '2019-10-11 09:01:52'),
(47, 'browse_services', 'services', '2019-10-11 09:05:39', '2019-10-11 09:05:39'),
(48, 'read_services', 'services', '2019-10-11 09:05:39', '2019-10-11 09:05:39'),
(49, 'edit_services', 'services', '2019-10-11 09:05:39', '2019-10-11 09:05:39'),
(50, 'add_services', 'services', '2019-10-11 09:05:39', '2019-10-11 09:05:39'),
(51, 'delete_services', 'services', '2019-10-11 09:05:39', '2019-10-11 09:05:39'),
(52, 'browse_s_items', 's_items', '2019-10-11 09:08:28', '2019-10-11 09:08:28'),
(53, 'read_s_items', 's_items', '2019-10-11 09:08:28', '2019-10-11 09:08:28'),
(54, 'edit_s_items', 's_items', '2019-10-11 09:08:28', '2019-10-11 09:08:28'),
(55, 'add_s_items', 's_items', '2019-10-11 09:08:28', '2019-10-11 09:08:28'),
(56, 'delete_s_items', 's_items', '2019-10-11 09:08:28', '2019-10-11 09:08:28'),
(57, 'browse_prices', 'prices', '2019-10-11 09:12:27', '2019-10-11 09:12:27'),
(58, 'read_prices', 'prices', '2019-10-11 09:12:27', '2019-10-11 09:12:27'),
(59, 'edit_prices', 'prices', '2019-10-11 09:12:27', '2019-10-11 09:12:27'),
(60, 'add_prices', 'prices', '2019-10-11 09:12:27', '2019-10-11 09:12:27'),
(61, 'delete_prices', 'prices', '2019-10-11 09:12:27', '2019-10-11 09:12:27'),
(62, 'browse_p_items', 'p_items', '2019-10-11 09:17:43', '2019-10-11 09:17:43'),
(63, 'read_p_items', 'p_items', '2019-10-11 09:17:43', '2019-10-11 09:17:43'),
(64, 'edit_p_items', 'p_items', '2019-10-11 09:17:43', '2019-10-11 09:17:43'),
(65, 'add_p_items', 'p_items', '2019-10-11 09:17:43', '2019-10-11 09:17:43'),
(66, 'delete_p_items', 'p_items', '2019-10-11 09:17:43', '2019-10-11 09:17:43'),
(67, 'browse_posts', 'posts', '2019-10-11 09:24:28', '2019-10-11 09:24:28'),
(68, 'read_posts', 'posts', '2019-10-11 09:24:28', '2019-10-11 09:24:28'),
(69, 'edit_posts', 'posts', '2019-10-11 09:24:28', '2019-10-11 09:24:28'),
(70, 'add_posts', 'posts', '2019-10-11 09:24:28', '2019-10-11 09:24:28'),
(71, 'delete_posts', 'posts', '2019-10-11 09:24:28', '2019-10-11 09:24:28'),
(77, 'browse_learns', 'learns', '2019-10-11 09:28:17', '2019-10-11 09:28:17'),
(78, 'read_learns', 'learns', '2019-10-11 09:28:17', '2019-10-11 09:28:17'),
(79, 'edit_learns', 'learns', '2019-10-11 09:28:17', '2019-10-11 09:28:17'),
(80, 'add_learns', 'learns', '2019-10-11 09:28:17', '2019-10-11 09:28:17'),
(81, 'delete_learns', 'learns', '2019-10-11 09:28:17', '2019-10-11 09:28:17'),
(82, 'browse_how_it_works', 'how_it_works', '2019-10-11 09:40:32', '2019-10-11 09:40:32'),
(83, 'read_how_it_works', 'how_it_works', '2019-10-11 09:40:32', '2019-10-11 09:40:32'),
(84, 'edit_how_it_works', 'how_it_works', '2019-10-11 09:40:32', '2019-10-11 09:40:32'),
(85, 'add_how_it_works', 'how_it_works', '2019-10-11 09:40:32', '2019-10-11 09:40:32'),
(86, 'delete_how_it_works', 'how_it_works', '2019-10-11 09:40:32', '2019-10-11 09:40:32'),
(87, 'browse_faqs', 'faqs', '2019-10-11 09:42:17', '2019-10-11 09:42:17'),
(88, 'read_faqs', 'faqs', '2019-10-11 09:42:17', '2019-10-11 09:42:17'),
(89, 'edit_faqs', 'faqs', '2019-10-11 09:42:17', '2019-10-11 09:42:17'),
(90, 'add_faqs', 'faqs', '2019-10-11 09:42:17', '2019-10-11 09:42:17'),
(91, 'delete_faqs', 'faqs', '2019-10-11 09:42:17', '2019-10-11 09:42:17'),
(92, 'browse_contacts', 'contacts', '2019-10-11 10:33:43', '2019-10-11 10:33:43'),
(93, 'read_contacts', 'contacts', '2019-10-11 10:33:43', '2019-10-11 10:33:43'),
(94, 'edit_contacts', 'contacts', '2019-10-11 10:33:43', '2019-10-11 10:33:43'),
(95, 'add_contacts', 'contacts', '2019-10-11 10:33:43', '2019-10-11 10:33:43'),
(96, 'delete_contacts', 'contacts', '2019-10-11 10:33:43', '2019-10-11 10:33:43'),
(97, 'browse_slides', 'slides', '2019-10-11 10:43:54', '2019-10-11 10:43:54'),
(98, 'read_slides', 'slides', '2019-10-11 10:43:54', '2019-10-11 10:43:54'),
(99, 'edit_slides', 'slides', '2019-10-11 10:43:54', '2019-10-11 10:43:54'),
(100, 'add_slides', 'slides', '2019-10-11 10:43:54', '2019-10-11 10:43:54'),
(101, 'delete_slides', 'slides', '2019-10-11 10:43:54', '2019-10-11 10:43:54'),
(107, 'browse_news_letters', 'news_letters', '2019-10-11 10:46:36', '2019-10-11 10:46:36'),
(108, 'read_news_letters', 'news_letters', '2019-10-11 10:46:36', '2019-10-11 10:46:36'),
(109, 'edit_news_letters', 'news_letters', '2019-10-11 10:46:36', '2019-10-11 10:46:36'),
(110, 'add_news_letters', 'news_letters', '2019-10-11 10:46:36', '2019-10-11 10:46:36'),
(111, 'delete_news_letters', 'news_letters', '2019-10-11 10:46:36', '2019-10-11 10:46:36'),
(112, 'browse_galleries', 'galleries', '2019-10-11 10:48:13', '2019-10-11 10:48:13'),
(113, 'read_galleries', 'galleries', '2019-10-11 10:48:13', '2019-10-11 10:48:13'),
(114, 'edit_galleries', 'galleries', '2019-10-11 10:48:13', '2019-10-11 10:48:13'),
(115, 'add_galleries', 'galleries', '2019-10-11 10:48:13', '2019-10-11 10:48:13'),
(116, 'delete_galleries', 'galleries', '2019-10-11 10:48:13', '2019-10-11 10:48:13'),
(117, 'browse_gallery_categories', 'gallery_categories', '2019-10-11 10:49:24', '2019-10-11 10:49:24'),
(118, 'read_gallery_categories', 'gallery_categories', '2019-10-11 10:49:24', '2019-10-11 10:49:24'),
(119, 'edit_gallery_categories', 'gallery_categories', '2019-10-11 10:49:24', '2019-10-11 10:49:24'),
(120, 'add_gallery_categories', 'gallery_categories', '2019-10-11 10:49:24', '2019-10-11 10:49:24'),
(121, 'delete_gallery_categories', 'gallery_categories', '2019-10-11 10:49:24', '2019-10-11 10:49:24'),
(122, 'browse_testimonials', 'testimonials', '2019-10-11 10:56:15', '2019-10-11 10:56:15'),
(123, 'read_testimonials', 'testimonials', '2019-10-11 10:56:15', '2019-10-11 10:56:15'),
(124, 'edit_testimonials', 'testimonials', '2019-10-11 10:56:15', '2019-10-11 10:56:15'),
(125, 'add_testimonials', 'testimonials', '2019-10-11 10:56:15', '2019-10-11 10:56:15'),
(126, 'delete_testimonials', 'testimonials', '2019-10-11 10:56:15', '2019-10-11 10:56:15'),
(127, 'browse_comments', 'comments', '2019-10-11 11:18:12', '2019-10-11 11:18:12'),
(128, 'read_comments', 'comments', '2019-10-11 11:18:12', '2019-10-11 11:18:12'),
(129, 'edit_comments', 'comments', '2019-10-11 11:18:12', '2019-10-11 11:18:12'),
(130, 'add_comments', 'comments', '2019-10-11 11:18:12', '2019-10-11 11:18:12'),
(131, 'delete_comments', 'comments', '2019-10-11 11:18:12', '2019-10-11 11:18:12'),
(132, 'browse_order_translations', 'order_translations', '2019-10-11 11:19:48', '2019-10-11 11:19:48'),
(133, 'read_order_translations', 'order_translations', '2019-10-11 11:19:48', '2019-10-11 11:19:48'),
(134, 'edit_order_translations', 'order_translations', '2019-10-11 11:19:48', '2019-10-11 11:19:48'),
(135, 'add_order_translations', 'order_translations', '2019-10-11 11:19:48', '2019-10-11 11:19:48'),
(136, 'delete_order_translations', 'order_translations', '2019-10-11 11:19:48', '2019-10-11 11:19:48'),
(137, 'browse_sections', 'sections', '2019-10-11 11:34:55', '2019-10-11 11:34:55'),
(138, 'read_sections', 'sections', '2019-10-11 11:34:55', '2019-10-11 11:34:55'),
(139, 'edit_sections', 'sections', '2019-10-11 11:34:55', '2019-10-11 11:34:55'),
(140, 'add_sections', 'sections', '2019-10-11 11:34:55', '2019-10-11 11:34:55'),
(141, 'delete_sections', 'sections', '2019-10-11 11:34:55', '2019-10-11 11:34:55'),
(142, 'browse_teams', 'teams', '2019-10-24 07:01:39', '2019-10-24 07:01:39'),
(143, 'read_teams', 'teams', '2019-10-24 07:01:39', '2019-10-24 07:01:39'),
(144, 'edit_teams', 'teams', '2019-10-24 07:01:39', '2019-10-24 07:01:39'),
(145, 'add_teams', 'teams', '2019-10-24 07:01:39', '2019-10-24 07:01:39'),
(146, 'delete_teams', 'teams', '2019-10-24 07:01:39', '2019-10-24 07:01:39');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(31, 1),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(46, 1),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(81, 1),
(81, 3),
(82, 1),
(82, 3),
(83, 1),
(83, 3),
(84, 1),
(84, 3),
(85, 1),
(85, 3),
(86, 1),
(86, 3),
(87, 1),
(87, 3),
(88, 1),
(88, 3),
(89, 1),
(89, 3),
(90, 1),
(90, 3),
(91, 1),
(91, 3),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(97, 3),
(98, 1),
(98, 3),
(99, 1),
(99, 3),
(100, 1),
(100, 3),
(101, 1),
(101, 3),
(107, 1),
(107, 3),
(108, 1),
(108, 3),
(109, 1),
(109, 3),
(110, 1),
(110, 3),
(111, 1),
(111, 3),
(112, 1),
(112, 3),
(113, 1),
(113, 3),
(114, 1),
(114, 3),
(115, 1),
(115, 3),
(116, 1),
(116, 3),
(117, 1),
(117, 3),
(118, 1),
(118, 3),
(119, 1),
(119, 3),
(120, 1),
(120, 3),
(121, 1),
(121, 3),
(122, 1),
(122, 3),
(123, 1),
(123, 3),
(124, 1),
(124, 3),
(125, 1),
(125, 3),
(126, 1),
(126, 3),
(127, 1),
(127, 3),
(128, 1),
(128, 3),
(129, 1),
(129, 3),
(130, 1),
(130, 3),
(131, 1),
(131, 3),
(132, 1),
(132, 3),
(133, 1),
(133, 3),
(134, 1),
(134, 3),
(135, 1),
(135, 3),
(136, 1),
(136, 3),
(137, 1),
(137, 3),
(138, 1),
(138, 3),
(139, 1),
(139, 3),
(140, 1),
(140, 3),
(141, 1),
(141, 3),
(142, 1),
(142, 3),
(143, 1),
(143, 3),
(144, 1),
(144, 3),
(145, 1),
(145, 3),
(146, 1),
(146, 3);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vue` bigint(20) DEFAULT NULL,
  `like` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `image`, `title`, `description`, `vue`, `like`, `created_at`, `updated_at`) VALUES
(2, 'posts\\October2019\\dbtRrNYalzw3S4McIMjN.jpg', 'The Differences Between Native Speakers And Philologists', '<p>dipiscing eu porttitor. Mauris ante blandit nesciunt fringilla montes. Sociis sapien viverra sit est ut, ullamcorper pulvinar itaque dignissim ac donec tempor, urna nam volutpat, wisi metus at a. Feugiat id eget senectus enim erat vel, varius lorem condimentum ad, magna neque, tellus quam dignissim cras, leo id atque urna</p>\n<p>&nbsp;</p>\n<p>Elementum praesent tristique velit mollis. Sit sapien totam, dignissim diam sed at quis, amet tincidunt nam et quis, tortor sit nulla. Sit porttitor libero ut at et turpis, eu rhoncus blandit donec erat mauris sollicitudin, officia aptent consectetuer urna nulla. Alias consequat sem lacus porttitor ornare erat. Et vitae in</p>', 124, 2556, '2019-10-23 18:25:00', '2019-10-25 11:43:56'),
(4, 'posts\\October2019\\ck9faTcOG9v4wSvclM1o.jpg', '5 Façons qui vont t\'aider à vite parler Anglais', '<p>Elementum praesent tristique velit mollis. Sit sapien totam, dignissim diam sed at quis, amet tincidunt nam et quis, tortor sit nulla. Sit porttitor libero ut at et turpis, eu rhoncus blandit donec erat mauris sollicitudin, officia aptent consectetuer urna nulla. Alias consequat sem lacus porttitor ornare erat. Et vitae in curae quis risus, parturient sociis diam arcu odio nec, consectetuer malesuada tortor quis id nunc eu, facilisis sodales. At cras blandit felis vel id, consequat laoreet venenatis sem, mi ullamcorper curabitur urna morbi leo, lorem purus, vestibulum cursus rutrum curabitur augue tellus deserunt. Nullam quisque voluptates dolor amet integer id, amet justo orci pellentesque in pellentesque, odio pede tempor lectus in, cursus metus euismod, pharetra mollis ipsum. Phasellus magna condimentum semper, sit pellentesque tristique, voluptatem nec morbi nullam, soluta vel commodo massa aliquam leo ut, mauris porta id lectus. Fringilla pellentesque, amet ipsum odio at sapien aliquam, nullam adipiscing eu aliquam enim eget adipiscing. Adipiscing ac vestibulum, ipsum ut hendrerit duis lacus praesent, pellentesque eros non aliquet convallis, risus vel arcu. Nec aliquet dui lacus, dolor ante erat ipsum molestie arcu, vitae fusce ut laoreet maecenas nulla magna, vulputate libero pellentesque, magna vel amet ac convallis sem tortor.</p>\n<p>Sollicitudin mauris massa mi, diam morbi mi taciti amet aliquam, vel ornare. Proin wisi tempus, neque aliquam at. Congue id rhoncus nunc orci magna, vitae massa fringilla cum, suspendisse magni porttitor pellentesque ultrices risus, nibh venenatis curabitur accumsan erat libero quisque. Adipiscing justo nunc, consequat aenean lacus euismod hic sed. Ut integer, nulla tellus, aenean netus, elit interdum eget, sed elit eu sed consectetuer wisi id. Odio justo elit morbi, etiam ac, dolor penatibus sint libero scelerisque fringilla, id in fusce.</p>', NULL, NULL, '2019-10-25 23:04:00', '2019-10-25 23:38:39');

-- --------------------------------------------------------

--
-- Structure de la table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `prices`
--

INSERT INTO `prices` (`id`, `title`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Programme relax  <br> 2 jrs / semaine', '10000', '', '2019-10-23 16:11:00', '2019-10-24 12:36:06'),
(2, 'Programme normal <br> 4 jrs / semaine', '15000', '', '2019-10-23 16:12:00', '2019-10-24 12:36:50'),
(3, 'Programme accéléré <br> 6 jrs / semaine', '25000', '', '2019-10-23 16:12:00', '2019-10-24 12:37:46');

-- --------------------------------------------------------

--
-- Structure de la table `p_items`
--

CREATE TABLE `p_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `p_items`
--

INSERT INTO `p_items` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(8, 'Niveau 1', '', '2019-10-24 12:42:58', '2019-10-24 12:42:58'),
(9, 'Niveau 2', '', '2019-10-24 12:43:14', '2019-10-24 12:43:14'),
(10, 'Niveau 3', '', '2019-10-24 12:43:32', '2019-10-24 12:43:32'),
(11, 'Business English', '', '2019-10-24 12:44:17', '2019-10-24 12:44:17'),
(12, 'Intermediate', '', '2019-10-24 12:44:42', '2019-10-24 12:44:42'),
(13, 'TOEFL / IELTS (Prix variable)', '', '2019-10-24 12:46:00', '2019-10-24 12:47:20');

-- --------------------------------------------------------

--
-- Structure de la table `p_item_price`
--

CREATE TABLE `p_item_price` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_item_id` bigint(20) UNSIGNED NOT NULL,
  `price_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `p_item_price`
--

INSERT INTO `p_item_price` (`id`, `p_item_id`, `price_id`, `created_at`, `updated_at`) VALUES
(18, 8, 1, NULL, NULL),
(19, 9, 1, NULL, NULL),
(20, 10, 1, NULL, NULL),
(21, 11, 1, NULL, NULL),
(22, 12, 1, NULL, NULL),
(23, 13, 1, NULL, NULL),
(24, 8, 2, NULL, NULL),
(25, 9, 2, NULL, NULL),
(26, 10, 2, NULL, NULL),
(27, 11, 2, NULL, NULL),
(28, 12, 2, NULL, NULL),
(29, 13, 2, NULL, NULL),
(30, 8, 3, NULL, NULL),
(31, 9, 3, NULL, NULL),
(32, 10, 3, NULL, NULL),
(33, 11, 3, NULL, NULL),
(34, 12, 3, NULL, NULL),
(35, 13, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-10-10 15:19:25', '2019-10-10 15:19:25'),
(2, 'user', 'Normal User', '2019-10-10 15:19:25', '2019-10-10 15:19:25'),
(3, 'modo', 'Moderateur', '2019-10-24 09:57:47', '2019-10-24 09:57:47');

-- --------------------------------------------------------

--
-- Structure de la table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sections`
--

INSERT INTO `sections` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'sections\\October2019\\XTDwatj1xmbjOL54Wz8N.jpg', 'Voulez-vous étudier ou travailler à l\'étranger ?', '<p>Notre partenaire ODZUNA CONSULTING vous aide dans l\'obtention de bourse pour les &eacute;tudes en Chypres.</p>', '2019-10-18 18:17:00', '2019-10-24 16:24:03'),
(2, 'sections\\October2019\\FPjuTixSHpP4SvInX3DN.jpg', 'Commencer par parler l\'Anglais comme des professionnels', '<p>Inscrivez-vous &agrave; notre cours et booster votre connaissance en Anglais ou Fran&ccedil;ais</p>', '2019-10-22 14:46:00', '2019-10-24 17:16:03'),
(3, 'sections\\October2019\\mI64xkrMfipBV0giYLAp.jpg', 'Ce que vous devez savoir sur nous', '<p>Pour que nous puissions tenir notre promesse d\'un service exceptionnel, chaque poste est attribu&eacute; &agrave; des linguistes sp&eacute;cialis&eacute;s dans diff&eacute;rentes langues et travaillant pour notre entreprise &agrave; plein temps.</p>', '2019-10-23 15:51:00', '2019-10-24 19:49:11'),
(4, 'sections\\October2019\\lyy7tE7rmkt8vurPIiar.jpg', 'Transforming the World of Professional Translation', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam, quis nostrud exercitatio.</p>', '2019-10-23 16:45:37', '2019-10-23 16:45:37');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `icon`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'icon-analytics_doc', NULL, 'Traduction de documents', '', '2019-10-18 17:16:00', '2019-10-24 11:21:26'),
(2, 'icon-clipboard-1', NULL, 'Inter- prétation', '', '2019-10-18 17:17:00', '2019-10-24 11:30:30'),
(3, 'icon-global', NULL, 'Cours Anglais / Français', '', '2019-10-18 17:20:00', '2019-10-24 11:25:35'),
(4, 'icon-analytics_mob', NULL, 'Préparation au TOEFL / IELTS', '', '2019-10-18 17:20:00', '2019-10-24 11:26:42');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texte1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texte2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texte3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `slides`
--

INSERT INTO `slides` (`id`, `image`, `texte1`, `texte2`, `texte3`, `description`, `btn_text`, `btn_link`, `created_at`, `updated_at`) VALUES
(1, 'slides\\October2019\\urs9lCfmgvHNHDzgYJDH.jpg', 'Centre de formation', 'Anglais / Français', 'Cours du jour / soir\n', '', 'Contactez-nous', NULL, '2019-10-17 17:31:00', '2019-10-24 10:26:26'),
(2, 'slides\\October2019\\MxMVQ1VIzewq6WQoWAZv.jpg', 'Agence de traduction', 'Et d\'interprétation ', '', '', 'Traduisez maintenant', NULL, '2019-10-17 17:42:00', '2019-10-24 11:01:28'),
(3, 'slides\\October2019\\QOh8bYgUvs8oGklv8jlN.jpg', 'Améliorer votre Anglais ou Français ?', 'Pas de soucis, ne trainez plus', 'Venez à nous...', '', 'Contactez-nous', NULL, '2019-10-24 10:31:00', '2019-10-24 10:35:37');

-- --------------------------------------------------------

--
-- Structure de la table `s_items`
--

CREATE TABLE `s_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `s_items`
--

INSERT INTO `s_items` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(8, 'certification de documents', '', '2019-10-24 11:31:00', '2019-10-24 11:52:26'),
(9, 'traduction de documents commerciaux', '', '2019-10-24 11:31:00', '2019-10-24 11:35:28'),
(10, 'Traduction de diplômes', '', '2019-10-24 11:32:00', '2019-10-24 11:35:08'),
(12, 'traductions de documents juridiques', '', '2019-10-24 11:33:00', '2019-10-24 11:34:26'),
(13, 'Interprétation consécutive', '', '2019-10-24 11:54:00', '2019-10-24 11:54:00'),
(14, 'Interprétation de liaison', '', '2019-10-24 11:54:35', '2019-10-24 11:54:35'),
(15, 'Interprétation de conférence', '', '2019-10-24 11:55:24', '2019-10-24 11:55:24'),
(16, 'Lire', '', '2019-10-24 11:57:00', '2019-10-24 12:02:59'),
(17, 'Ecrire', '', '2019-10-24 11:58:00', '2019-10-24 12:03:20'),
(18, 'Parler', '', '2019-10-24 12:03:00', '2019-10-24 12:04:27'),
(19, 'Comprendre', '', '2019-10-24 12:04:08', '2019-10-24 12:04:08'),
(20, 'Cours préparatoires', '', '2019-10-24 12:05:00', '2019-10-24 12:05:52');

-- --------------------------------------------------------

--
-- Structure de la table `s_item_service`
--

CREATE TABLE `s_item_service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_item_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `s_item_service`
--

INSERT INTO `s_item_service` (`id`, `s_item_id`, `service_id`, `created_at`, `updated_at`) VALUES
(18, 12, 1, NULL, NULL),
(20, 10, 1, NULL, NULL),
(21, 9, 1, NULL, NULL),
(22, 8, 1, NULL, NULL),
(23, 13, 2, NULL, NULL),
(24, 14, 2, NULL, NULL),
(25, 15, 2, NULL, NULL),
(26, 16, 3, NULL, NULL),
(27, 17, 3, NULL, NULL),
(28, 19, 3, NULL, NULL),
(29, 18, 3, NULL, NULL),
(30, 20, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `teams`
--

INSERT INTO `teams` (`id`, `image`, `name`, `title`, `description`, `facebook`, `twitter`, `instagram`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'teams\\October2019\\sD3MBxOKU5D8Psfth72M.jpg', 'Kyle Johnson', 'CEO & FOUNDER', 'Our company mission is to provide high quality translations to our international clients.', NULL, NULL, NULL, NULL, '2019-10-24 07:07:00', '2019-10-24 07:09:46'),
(2, 'teams\\October2019\\G7tiarO6eWNhk96z698g.jpg', 'Diane Thomas', 'OPERATIONS MANAGER', 'Our clients are our main priority which is why our team understands their different needs.', NULL, NULL, NULL, NULL, '2019-10-24 07:09:33', '2019-10-24 07:09:33'),
(3, 'teams\\October2019\\m8HZn1SFakunz74qtMrA.jpg', 'Jasmin Batten', 'MANAGER', 'You can count on us to get the job done efficiently, and at the highest quality level.', NULL, NULL, NULL, NULL, '2019-10-24 07:10:37', '2019-10-24 07:10:37');

-- --------------------------------------------------------

--
-- Structure de la table `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `telescope_entries`
--

INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(1, '8f0398a3-b2f2-4435-9004-2c20dff6c847', '8f0398a4-7207-44e8-9c27-4c080652bf78', 'ad7d07e5104cadcc6e9623dfc5fefdd8', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'davyslanguages\' and table_name = \'data_types\' and table_type = \'BASE TABLE\'\",\"time\":\"1.12\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\public\\\\index.php\",\"line\":55,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(2, '8f0398a3-b66d-4f2b-baae-ca5e43e4efca', '8f0398a4-7207-44e8-9c27-4c080652bf78', 'a6ef1e802d2e0a6164a0c3f541709e91', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `policy_name`, `model_name` from `data_types`\",\"time\":\"0.92\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\public\\\\index.php\",\"line\":55,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(3, '8f0398a3-bb16-40f7-ba6f-aa5b35d7ac35', '8f0398a4-7207-44e8-9c27-4c080652bf78', '224969891851189f27156a8441edc61a', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `entreprises`\",\"time\":\"0.90\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":52,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(4, '8f0398a3-bc14-408d-b5c4-01a8a75399d6', '8f0398a4-7207-44e8-9c27-4c080652bf78', '1298051ac5cf68f00a930bbc07306b13', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `abouts`\",\"time\":\"0.72\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(5, '8f0398a3-bd17-4b13-a23b-4b2683470c62', '8f0398a4-7207-44e8-9c27-4c080652bf78', 'eba0e940650312fa7bd08e1faa1308d4', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `teams`\",\"time\":\"0.58\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":54,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(6, '8f0398a3-becb-4800-8e91-1985bfb86990', '8f0398a4-7207-44e8-9c27-4c080652bf78', '427a05c55da9f3dabe001791a76a08a4', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `galleries`\",\"time\":\"0.67\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":55,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(7, '8f0398a3-bff5-4621-a1e7-d246bff369c9', '8f0398a4-7207-44e8-9c27-4c080652bf78', 'c0f29b3aeb2013b9e21306140d4adabc', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `services`\",\"time\":\"0.80\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":56,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(8, '8f0398a3-c103-4fb3-99fe-18049919afb2', '8f0398a4-7207-44e8-9c27-4c080652bf78', '9523161cb34db8c996608817be5427d1', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `learns`\",\"time\":\"0.63\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":57,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(9, '8f0398a3-c1b1-4a3c-9f39-e646794b6bf8', '8f0398a4-7207-44e8-9c27-4c080652bf78', 'b27d772fbbfd5a4e9635ac31c20306c2', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `learns` order by `created_at` desc limit 9 offset 0\",\"time\":\"0.75\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":57,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(10, '8f0398a3-c336-45cd-923d-1acd012add65', '8f0398a4-7207-44e8-9c27-4c080652bf78', 'd27518a9fda8bec92813266d829ce19a', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `posts`\",\"time\":\"0.75\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":58,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(11, '8f0398a3-c3ae-40ae-991b-0d328973d385', '8f0398a4-7207-44e8-9c27-4c080652bf78', 'bc9856c76383bc65c1869f9caee66ed0', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `posts` order by `created_at` desc limit 9 offset 0\",\"time\":\"0.48\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":58,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(12, '8f0398a3-c46d-4401-a347-c38e3c7880e7', '8f0398a4-7207-44e8-9c27-4c080652bf78', '27ec523f753d747f23c97a5cdd3edbf8', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `testimonials`\",\"time\":\"0.41\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":59,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(13, '8f0398a3-c54b-4de4-a8fe-2136567258d8', '8f0398a4-7207-44e8-9c27-4c080652bf78', '9b18c1e1a1993730e12327864ab0d069', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `slides`\",\"time\":\"0.74\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":60,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(14, '8f0398a3-c659-4e54-8c46-dbb43df551f0', '8f0398a4-7207-44e8-9c27-4c080652bf78', '38165ea061ef3bf6522a03bc0e508b72', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sections`\",\"time\":\"0.73\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":61,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(15, '8f0398a3-c749-4649-a160-d82d0713b749', '8f0398a4-7207-44e8-9c27-4c080652bf78', '0d62e08897edd0ca9b5dc5a4d0ef0432', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `images`\",\"time\":\"0.65\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":62,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(16, '8f0398a3-c859-44ed-b05c-c15f688f62a3', '8f0398a4-7207-44e8-9c27-4c080652bf78', '8ac08af82ba128d057cd8523bf82b7f7', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `how_it_works`\",\"time\":\"0.86\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":63,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(17, '8f0398a3-c949-48eb-aeb9-d6edd501b684', '8f0398a4-7207-44e8-9c27-4c080652bf78', 'b1a84e35499a2ce1c88faf4ca5b52e20', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `faqs`\",\"time\":\"0.57\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":64,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(18, '8f0398a3-ca0c-434b-bf84-fe6146574131', '8f0398a4-7207-44e8-9c27-4c080652bf78', 'e464cdd5ceb338969b3c46c8deec8f1c', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `prices`\",\"time\":\"0.50\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":65,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(19, '8f0398a3-cafc-44a4-ac42-314270fa18eb', '8f0398a4-7207-44e8-9c27-4c080652bf78', '4b2e4012a686d71c41bb1fff5f9a5d12', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `texts`\",\"time\":\"1.01\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":66,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(20, '8f0398a3-cf18-45d6-9b92-6dfbc1f95c11', '8f0398a4-7207-44e8-9c27-4c080652bf78', '069de8548ec8692f5d6cf8ccbf9c2296', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'texts\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76) and (`locale` = \'fr\' or `locale` = \'en\')\",\"time\":\"1.94\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":66,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(21, '8f0398a3-d1d8-4124-9b3a-a2311a3fe936', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'event', '{\"name\":\"voyager.routing\",\"payload\":[{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}],\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(22, '8f0398a3-d244-415d-ad8d-df76a3bfd16c', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'event', '{\"name\":\"TCG\\\\Voyager\\\\Events\\\\Routing\",\"payload\":{\"router\":{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}},\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(23, '8f0398a3-d305-40f6-9d51-f17d4bf8642a', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'event', '{\"name\":\"voyager.admin.routing\",\"payload\":[{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}],\"listeners\":[{\"name\":\"Larapack\\\\VoyagerHooks\\\\VoyagerHooksServiceProvider@addHookRoute\",\"queued\":false}],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(24, '8f0398a3-d344-45a1-8a53-dfb792fd2712', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'event', '{\"name\":\"TCG\\\\Voyager\\\\Events\\\\RoutingAdmin\",\"payload\":{\"router\":{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}},\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(25, '8f0398a3-d400-4705-bc32-d0e50312d433', '8f0398a4-7207-44e8-9c27-4c080652bf78', 'cf4477047bd9084d2cf6a57cf518a133', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `data_types`\",\"time\":\"1.02\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\routes\\\\web.php\",\"line\":20,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(26, '8f0398a3-da3a-48c5-8a97-167d3559872a', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'event', '{\"name\":\"voyager.admin.routing.after\",\"payload\":[{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}],\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(27, '8f0398a3-da7c-4f55-bba0-fe4353a99756', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'event', '{\"name\":\"TCG\\\\Voyager\\\\Events\\\\RoutingAdminAfter\",\"payload\":{\"router\":{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}},\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(28, '8f0398a3-daf5-45f0-af66-5f7d82fefee4', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'event', '{\"name\":\"voyager.routing.after\",\"payload\":[{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}],\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(29, '8f0398a3-db31-443d-98d5-7cd12b0256da', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'event', '{\"name\":\"TCG\\\\Voyager\\\\Events\\\\RoutingAfter\",\"payload\":{\"router\":{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}},\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(30, '8f0398a3-e90b-4408-9a62-da3f40c61d0f', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'view', '{\"name\":\"welcome\",\"path\":\"\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(31, '8f0398a3-e9ba-4568-86c6-bd253ac31f7b', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'view', '{\"name\":\"partials.banner\",\"path\":\"\\\\resources\\\\views\\/partials\\/banner.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(32, '8f0398a3-eebb-40bd-b04f-ada57fc2c600', '8f0398a4-7207-44e8-9c27-4c080652bf78', '50b79c8cc7d7c9b2bc5d9285aaafb554', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'slides\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (1)\",\"time\":\"1.02\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\0e7e672ed6eefcf3a906f2b0a164d054488e596c.php\",\"line\":28,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(33, '8f0398a3-efdc-41b5-92f9-627861fa7aa5', '8f0398a4-7207-44e8-9c27-4c080652bf78', '5e4c1894906905236cf7862f51d4d3d9', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'slides\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (2)\",\"time\":\"1.02\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\0e7e672ed6eefcf3a906f2b0a164d054488e596c.php\",\"line\":28,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(34, '8f0398a3-f0b2-48ff-b18f-cea87e75a04d', '8f0398a4-7207-44e8-9c27-4c080652bf78', '290b3aefc17b5a66de6971d316ad40b6', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'slides\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (3)\",\"time\":\"0.64\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\0e7e672ed6eefcf3a906f2b0a164d054488e596c.php\",\"line\":28,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(35, '8f0398a3-f136-4f24-b739-a19dc3466cc0', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'view', '{\"name\":\"abouts.overview\",\"path\":\"\\\\resources\\\\views\\/abouts\\/overview.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(36, '8f0398a3-f2b2-491a-8cce-ce6ed2e0d4ea', '8f0398a4-7207-44e8-9c27-4c080652bf78', '50b79c8cc7d7c9b2bc5d9285aaafb554', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'abouts\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (1)\",\"time\":\"0.91\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\fc792b1d14d89b6e06287421c4faee6089adb51a.php\",\"line\":23,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(37, '8f0398a3-f44c-4069-9798-52860d95f0ac', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'view', '{\"name\":\"services.overview\",\"path\":\"\\\\resources\\\\views\\/services\\/overview.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(38, '8f0398a3-f68f-4c5b-8a33-90856ee7409b', '8f0398a4-7207-44e8-9c27-4c080652bf78', '50b79c8cc7d7c9b2bc5d9285aaafb554', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'services\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (1)\",\"time\":\"1.14\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":38,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(39, '8f0398a4-3814-4ad9-a0c1-7fa85fffd546', '8f0398a4-7207-44e8-9c27-4c080652bf78', '895fcb85b0779e7cfa0ab751392fd31a', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `s_items`.*, `s_item_service`.`service_id` as `pivot_service_id`, `s_item_service`.`s_item_id` as `pivot_s_item_id` from `s_items` inner join `s_item_service` on `s_items`.`id` = `s_item_service`.`s_item_id` where `s_item_service`.`service_id` = 1\",\"time\":\"162.16\",\"slow\":true,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":52,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(40, '8f0398a4-397f-4901-8934-2719cf34d043', '8f0398a4-7207-44e8-9c27-4c080652bf78', '8f16dbe7dbea58eafa1fa51b8401a879', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (12)\",\"time\":\"0.77\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(41, '8f0398a4-3a5a-4809-9ff9-bfb92f45aa31', '8f0398a4-7207-44e8-9c27-4c080652bf78', '1c780960e7697fc6cabc8635d919c28f', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (10)\",\"time\":\"0.84\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(42, '8f0398a4-3b3f-4d53-82d4-14c51961d221', '8f0398a4-7207-44e8-9c27-4c080652bf78', 'abff96598b38b702681fb16b0e47d72d', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (9)\",\"time\":\"0.84\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(43, '8f0398a4-3c2b-4bfd-be61-136089a355dc', '8f0398a4-7207-44e8-9c27-4c080652bf78', '152dd9223a059f5a4f6c8573eede9c51', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (8)\",\"time\":\"0.92\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(44, '8f0398a4-3d21-4dc3-9a4e-4b9db286e39d', '8f0398a4-7207-44e8-9c27-4c080652bf78', '5e4c1894906905236cf7862f51d4d3d9', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'services\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (2)\",\"time\":\"0.82\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":38,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(45, '8f0398a4-3e2f-490b-afdc-48d019ef2817', '8f0398a4-7207-44e8-9c27-4c080652bf78', '895fcb85b0779e7cfa0ab751392fd31a', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `s_items`.*, `s_item_service`.`service_id` as `pivot_service_id`, `s_item_service`.`s_item_id` as `pivot_s_item_id` from `s_items` inner join `s_item_service` on `s_items`.`id` = `s_item_service`.`s_item_id` where `s_item_service`.`service_id` = 2\",\"time\":\"1.11\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":52,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(46, '8f0398a4-3ef6-48ad-b661-1d8e8f2a7285', '8f0398a4-7207-44e8-9c27-4c080652bf78', '7aefd1ed147b18644830adb7abce3cd7', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (13)\",\"time\":\"0.66\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(47, '8f0398a4-3f96-45a1-b747-0df6ca3b7c24', '8f0398a4-7207-44e8-9c27-4c080652bf78', '15032f16a5e1337d09f49380468e8c68', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (14)\",\"time\":\"0.60\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(48, '8f0398a4-402d-4ab9-95bd-8c63eefcc86d', '8f0398a4-7207-44e8-9c27-4c080652bf78', 'a0fb7aa6b478e5b40591cb454ea05ca3', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (15)\",\"time\":\"0.56\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(49, '8f0398a4-4107-409c-a6bd-204041f779db', '8f0398a4-7207-44e8-9c27-4c080652bf78', '290b3aefc17b5a66de6971d316ad40b6', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'services\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (3)\",\"time\":\"0.98\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":38,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(50, '8f0398a4-4206-496d-ad98-f799e0a6084b', '8f0398a4-7207-44e8-9c27-4c080652bf78', '895fcb85b0779e7cfa0ab751392fd31a', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `s_items`.*, `s_item_service`.`service_id` as `pivot_service_id`, `s_item_service`.`s_item_id` as `pivot_s_item_id` from `s_items` inner join `s_item_service` on `s_items`.`id` = `s_item_service`.`s_item_id` where `s_item_service`.`service_id` = 3\",\"time\":\"1.01\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":52,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(51, '8f0398a4-4308-47ac-a4af-3dffd8fc191a', '8f0398a4-7207-44e8-9c27-4c080652bf78', '8bbb408d041526dea96b8f5ac1f121e1', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (16)\",\"time\":\"0.88\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(52, '8f0398a4-43e7-4abc-ada6-67c6d8f8f476', '8f0398a4-7207-44e8-9c27-4c080652bf78', '6b32e5d8451f4f5ca3d328b54ad19617', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (17)\",\"time\":\"0.86\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(53, '8f0398a4-4518-476e-8338-7349e0acd762', '8f0398a4-7207-44e8-9c27-4c080652bf78', '29b1559ffcb7816f25bc4e8ffe7de3ea', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (19)\",\"time\":\"1.33\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(54, '8f0398a4-45d9-4126-8350-b20b6be12bf5', '8f0398a4-7207-44e8-9c27-4c080652bf78', '25ededad6e198756f2c1d322ea5d7737', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (18)\",\"time\":\"0.71\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(55, '8f0398a4-4681-497c-83a2-a1caac86406d', '8f0398a4-7207-44e8-9c27-4c080652bf78', 'efd67c6147ff7951038a13a644b0d726', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'services\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (4)\",\"time\":\"0.60\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":38,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(56, '8f0398a4-4753-4fae-812e-c81a785d3630', '8f0398a4-7207-44e8-9c27-4c080652bf78', '895fcb85b0779e7cfa0ab751392fd31a', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `s_items`.*, `s_item_service`.`service_id` as `pivot_service_id`, `s_item_service`.`s_item_id` as `pivot_s_item_id` from `s_items` inner join `s_item_service` on `s_items`.`id` = `s_item_service`.`s_item_id` where `s_item_service`.`service_id` = 4\",\"time\":\"0.71\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":52,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(57, '8f0398a4-4834-4d01-8649-7489835a814c', '8f0398a4-7207-44e8-9c27-4c080652bf78', 'c275b5d1422ae8354f94ac49a95d8016', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (20)\",\"time\":\"0.79\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(58, '8f0398a4-49ae-4ae0-a941-76a381d28152', '8f0398a4-7207-44e8-9c27-4c080652bf78', '50b79c8cc7d7c9b2bc5d9285aaafb554', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'sections\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (1)\",\"time\":\"0.88\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":121,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(59, '8f0398a4-4ae6-482e-80fb-9308194bf592', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'view', '{\"name\":\"sections.pub-image\",\"path\":\"\\\\resources\\\\views\\/sections\\/pub-image.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(60, '8f0398a4-4b72-41fb-8e64-9fb4b41bb3e6', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'view', '{\"name\":\"sections.cours\",\"path\":\"\\\\resources\\\\views\\/sections\\/cours.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(61, '8f0398a4-4c58-44ca-be9d-b81c1122428a', '8f0398a4-7207-44e8-9c27-4c080652bf78', '5e4c1894906905236cf7862f51d4d3d9', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'sections\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (2)\",\"time\":\"0.80\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\34b5bdb43493f02338cdb2bfa74126942107a06d.php\",\"line\":21,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(62, '8f0398a4-4d4c-441d-9fcb-7adb0739f714', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'view', '{\"name\":\"faqs.overview\",\"path\":\"\\\\resources\\\\views\\/faqs\\/overview.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(63, '8f0398a4-4f04-471d-a49a-048db13ae64d', '8f0398a4-7207-44e8-9c27-4c080652bf78', '50b79c8cc7d7c9b2bc5d9285aaafb554', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'how_it_works\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (1)\",\"time\":\"0.87\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\8af9c3ce6e383ec0aceb9c58be4d4f6af947f102.php\",\"line\":35,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(64, '8f0398a4-4fea-4cd0-af4b-f53ff94218cf', '8f0398a4-7207-44e8-9c27-4c080652bf78', '5e4c1894906905236cf7862f51d4d3d9', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'how_it_works\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (2)\",\"time\":\"0.78\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\8af9c3ce6e383ec0aceb9c58be4d4f6af947f102.php\",\"line\":35,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(65, '8f0398a4-50c7-4da6-b939-39a10827df0f', '8f0398a4-7207-44e8-9c27-4c080652bf78', '290b3aefc17b5a66de6971d316ad40b6', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'how_it_works\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (3)\",\"time\":\"0.78\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\8af9c3ce6e383ec0aceb9c58be4d4f6af947f102.php\",\"line\":35,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(66, '8f0398a4-51a7-4489-b44c-20dd7f3e6d2e', '8f0398a4-7207-44e8-9c27-4c080652bf78', 'efd67c6147ff7951038a13a644b0d726', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'how_it_works\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (4)\",\"time\":\"0.71\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\8af9c3ce6e383ec0aceb9c58be4d4f6af947f102.php\",\"line\":35,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(67, '8f0398a4-52d4-423d-84bb-4b0b4a439e5d', '8f0398a4-7207-44e8-9c27-4c080652bf78', '50b79c8cc7d7c9b2bc5d9285aaafb554', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'faqs\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (1)\",\"time\":\"0.61\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\8af9c3ce6e383ec0aceb9c58be4d4f6af947f102.php\",\"line\":67,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(68, '8f0398a4-537b-4ff0-b85e-0cfa7d8d3040', '8f0398a4-7207-44e8-9c27-4c080652bf78', '5e4c1894906905236cf7862f51d4d3d9', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'faqs\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (2)\",\"time\":\"0.57\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\8af9c3ce6e383ec0aceb9c58be4d4f6af947f102.php\",\"line\":67,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(69, '8f0398a4-5421-47ee-bcb7-dc497d88814f', '8f0398a4-7207-44e8-9c27-4c080652bf78', 'efd67c6147ff7951038a13a644b0d726', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'faqs\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (4)\",\"time\":\"0.60\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\8af9c3ce6e383ec0aceb9c58be4d4f6af947f102.php\",\"line\":67,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(70, '8f0398a4-54b5-4c77-81a9-a56966ef450d', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'view', '{\"name\":\"translates.create2\",\"path\":\"\\\\resources\\\\views\\/translates\\/create2.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(71, '8f0398a4-5c1f-4b15-bb7a-24bedf9c3a27', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'view', '{\"name\":\"layouts.app\",\"path\":\"\\\\resources\\\\views\\/layouts\\/app.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(72, '8f0398a4-5d70-4c8e-a4ff-57e8bc2792b0', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'view', '{\"name\":\"laravelpwa::meta\",\"path\":\"\\\\resources\\\\views\\/modules\\/laravelpwa\\/meta.blade.php\",\"data\":[\"config\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(73, '8f0398a4-5e2c-4f93-8657-7a1d70955cb6', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'view', '{\"name\":\"partials.header\",\"path\":\"\\\\resources\\\\views\\/partials\\/header.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\",\"config\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(74, '8f0398a4-637e-4f3f-9be8-e47619bf6280', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'view', '{\"name\":\"partials.header-mobile\",\"path\":\"\\\\resources\\\\views\\/partials\\/header-mobile.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\",\"config\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(75, '8f0398a4-6872-41ec-bb10-fb6656e93ca4', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'view', '{\"name\":\"partials.footer\",\"path\":\"\\\\resources\\\\views\\/partials\\/footer.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\",\"config\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(76, '8f0398a4-6c5f-4d6e-ba94-2adbd92c4e25', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'view', '{\"name\":\"sweetalert::alert\",\"path\":\"\\\\resources\\\\views\\/vendor\\/sweetalert\\/alert.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\",\"config\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(77, '8f0398a4-713c-4d77-af70-a22ae56e3d04', '8f0398a4-7207-44e8-9c27-4c080652bf78', NULL, 1, 'request', '{\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\HomeController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8001\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3\",\"dnt\":\"1\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/77.0.3865.120 Safari\\/537.36\",\"sec-fetch-mode\":\"same-origin\",\"sec-fetch-site\":\"same-origin\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7\",\"cookie\":\"trx_addons_is_retina=0; XSRF-TOKEN=eyJpdiI6Ik1DWnd2RXlPaU1PXC93YzFzRjZkVVwvZz09IiwidmFsdWUiOiJhYjNUT2ZyNVdPRlEzM2ZTNEdYRURXZmpaTFFwMTlEcW9pXC9BUm1XVGl1M3llY2Ixd2dKbkU3UmpwamxyUFdaMSIsIm1hYyI6ImNmMjU5YTA2NWIzYTE3MmE1MjU3MTcxNjBmMmE5ZTMzMDYyYzMxY2U1MjYwNjQ5MTg2YzgxZGM4MGQwYjIzZmEifQ%3D%3D; laravel_session=eyJpdiI6IkVNRG5wVGFUR0VUS1wvZUg1NTZzektBPT0iLCJ2YWx1ZSI6InNVMlI5MEpXM3R3c2pyTlhqc2ZtbGJpV1owayticjUzOFl5MHYrenc4S2w0bHdaNDl2RVRreWtaWmhpTGpDQjgiLCJtYWMiOiI2ZDhkNDQ2MTJkMWZhM2QwNThkNTdlMmExZmExYWEwZmQ2NjkwM2ViNGI3ZTM1ZjJmYTRjY2FmNjE0MDE2MWFlIn0%3D\"},\"payload\":[],\"session\":{\"locale\":\"fr\",\"_token\":\"GD9gRIsetpiSGaGyC5RFaWHOIF5sD79CSPCkuUJ4\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8001\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"D:\\\\workspace\\\\davyslanguages\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[]},\"duration\":940,\"memory\":18,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:25'),
(78, '8f0398ab-e049-48e9-8e94-0a7099667764', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', 'ad7d07e5104cadcc6e9623dfc5fefdd8', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'davyslanguages\' and table_name = \'data_types\' and table_type = \'BASE TABLE\'\",\"time\":\"1.05\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\public\\\\index.php\",\"line\":55,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(79, '8f0398ab-e318-4fdc-922e-e0050c7fbe96', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', 'a6ef1e802d2e0a6164a0c3f541709e91', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `policy_name`, `model_name` from `data_types`\",\"time\":\"0.67\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\public\\\\index.php\",\"line\":55,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(80, '8f0398ab-e6d3-491e-b7e4-be63e3662240', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', '224969891851189f27156a8441edc61a', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `entreprises`\",\"time\":\"0.89\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":52,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(81, '8f0398ab-e7da-4a54-b5ce-578015f74d94', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', '1298051ac5cf68f00a930bbc07306b13', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `abouts`\",\"time\":\"0.61\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(82, '8f0398ab-e892-431c-aac8-e5570cbb6bf6', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', 'eba0e940650312fa7bd08e1faa1308d4', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `teams`\",\"time\":\"0.46\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":54,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(83, '8f0398ab-e93e-4779-9428-bc3f0a2c2136', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', '427a05c55da9f3dabe001791a76a08a4', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `galleries`\",\"time\":\"0.43\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":55,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(84, '8f0398ab-e9e9-450d-a5a2-7e4b29b6031a', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', 'c0f29b3aeb2013b9e21306140d4adabc', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `services`\",\"time\":\"0.44\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":56,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(85, '8f0398ab-ea94-48f6-867d-c4e9f456b259', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', '9523161cb34db8c996608817be5427d1', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `learns`\",\"time\":\"0.38\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":57,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(86, '8f0398ab-eb05-4a02-83b5-8507c0f81878', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', 'b27d772fbbfd5a4e9635ac31c20306c2', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `learns` order by `created_at` desc limit 9 offset 0\",\"time\":\"0.50\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":57,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(87, '8f0398ab-ec67-430f-9325-b93425ebfb8a', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', 'd27518a9fda8bec92813266d829ce19a', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `posts`\",\"time\":\"0.86\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":58,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(88, '8f0398ab-ecfb-4ef0-86b9-760bd597317d', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', 'bc9856c76383bc65c1869f9caee66ed0', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `posts` order by `created_at` desc limit 9 offset 0\",\"time\":\"0.62\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":58,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(89, '8f0398ab-ee1d-40c8-bc87-a3ff524b91da', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', '27ec523f753d747f23c97a5cdd3edbf8', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `testimonials`\",\"time\":\"0.73\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":59,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(90, '8f0398ab-eee5-4e76-b64c-89a74e99afb0', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', '9b18c1e1a1993730e12327864ab0d069', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `slides`\",\"time\":\"0.51\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":60,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(91, '8f0398ab-ef95-40bb-8af9-b6d549bbc77c', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', '38165ea061ef3bf6522a03bc0e508b72', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sections`\",\"time\":\"0.46\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":61,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(92, '8f0398ab-f03d-4d33-b254-b73c19b43b9f', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', '0d62e08897edd0ca9b5dc5a4d0ef0432', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `images`\",\"time\":\"0.43\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":62,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(93, '8f0398ab-f0eb-4086-b062-d6cb2b6c55f7', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', '8ac08af82ba128d057cd8523bf82b7f7', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `how_it_works`\",\"time\":\"0.44\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":63,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(94, '8f0398ab-f198-43bc-92c0-85e3be1f34a6', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', 'b1a84e35499a2ce1c88faf4ca5b52e20', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `faqs`\",\"time\":\"0.42\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":64,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(95, '8f0398ab-f26e-43ab-80b7-ac94c56682b9', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', 'e464cdd5ceb338969b3c46c8deec8f1c', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `prices`\",\"time\":\"0.70\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":65,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(96, '8f0398ab-f3c2-4b8b-9d35-de25db0c3a65', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', '4b2e4012a686d71c41bb1fff5f9a5d12', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `texts`\",\"time\":\"1.32\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":66,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(97, '8f0398ab-f6ee-4d2c-8d51-6a6af103015d', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', '069de8548ec8692f5d6cf8ccbf9c2296', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'texts\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76) and (`locale` = \'fr\' or `locale` = \'en\')\",\"time\":\"1.80\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":66,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(98, '8f0398ab-f9be-41db-8917-bc662c884796', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', NULL, 1, 'event', '{\"name\":\"voyager.routing\",\"payload\":[{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}],\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(99, '8f0398ab-fa2c-483e-a5aa-7b1e0cae15c3', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', NULL, 1, 'event', '{\"name\":\"TCG\\\\Voyager\\\\Events\\\\Routing\",\"payload\":{\"router\":{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}},\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(100, '8f0398ab-fb09-4a5c-bf10-ef5cbcf41c32', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', NULL, 1, 'event', '{\"name\":\"voyager.admin.routing\",\"payload\":[{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}],\"listeners\":[{\"name\":\"Larapack\\\\VoyagerHooks\\\\VoyagerHooksServiceProvider@addHookRoute\",\"queued\":false}],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(101, '8f0398ab-fb5e-4845-8ea5-4abedaed0054', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', NULL, 1, 'event', '{\"name\":\"TCG\\\\Voyager\\\\Events\\\\RoutingAdmin\",\"payload\":{\"router\":{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}},\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(102, '8f0398ab-fc40-480c-af1d-4969890c7c4a', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', 'cf4477047bd9084d2cf6a57cf518a133', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `data_types`\",\"time\":\"1.14\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\routes\\\\web.php\",\"line\":20,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(103, '8f0398ac-026b-4d92-890c-beff970008b8', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', NULL, 1, 'event', '{\"name\":\"voyager.admin.routing.after\",\"payload\":[{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}],\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(104, '8f0398ac-02c5-47aa-a0a9-9155e94dc094', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', NULL, 1, 'event', '{\"name\":\"TCG\\\\Voyager\\\\Events\\\\RoutingAdminAfter\",\"payload\":{\"router\":{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}},\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(105, '8f0398ac-034b-423e-a171-e68eb8131d81', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', NULL, 1, 'event', '{\"name\":\"voyager.routing.after\",\"payload\":[{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}],\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(106, '8f0398ac-038a-4e09-a043-f9268ddb89f9', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', NULL, 1, 'event', '{\"name\":\"TCG\\\\Voyager\\\\Events\\\\RoutingAfter\",\"payload\":{\"router\":{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}},\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(107, '8f0398ac-15b8-4b64-a102-c4f0d6c2cfa2', '8f0398ac-161d-4d9c-9a3f-62aff45aeff8', NULL, 1, 'request', '{\"uri\":\"\\/manifest.json\",\"method\":\"GET\",\"controller_action\":\"LaravelPWA\\\\Http\\\\Controllers\\\\LaravelPWAController@manifestJson\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8001\",\"connection\":\"keep-alive\",\"accept\":\"*\\/*\",\"dnt\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/77.0.3865.120 Safari\\/537.36\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-site\":\"same-origin\",\"referer\":\"http:\\/\\/localhost:8001\\/\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7\"},\"payload\":[],\"session\":{\"locale\":\"fr\",\"_token\":\"5zrib5JAiPuGnMpY5HifXhZ8nCwCXy3OzihQAxyp\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8001\\/manifest.json\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"name\":\"DavysLanguages\",\"short_name\":\"DL\",\"start_url\":\"http:\\/\\/localhost:8001\\/\",\"display\":\"standalone\",\"theme_color\":\"#660066\",\"background_color\":\"#ffffff\",\"orientation\":\"any\",\"splash\":{\"640x1136\":\"\\/images\\/icons\\/splash-640x1136.png\",\"750x1334\":\"\\/images\\/icons\\/splash-750x1334.png\",\"828x1792\":\"\\/images\\/icons\\/splash-828x1792.png\",\"1125x2436\":\"\\/images\\/icons\\/splash-1125x2436.png\",\"1242x2208\":\"\\/images\\/icons\\/splash-1242x2208.png\",\"1242x2688\":\"\\/images\\/icons\\/splash-1242x2688.png\",\"1536x2048\":\"\\/images\\/icons\\/splash-1536x2048.png\",\"1668x2224\":\"\\/images\\/icons\\/splash-1668x2224.png\",\"1668x2388\":\"\\/images\\/icons\\/splash-1668x2388.png\",\"2048x2732\":\"\\/images\\/icons\\/splash-2048x2732.png\"},\"icons\":[{\"src\":\"\\/images\\/icons\\/icon-72x72.png\",\"type\":\"image\\/png\",\"sizes\":\"72x72\"},{\"src\":\"\\/images\\/icons\\/icon-96x96.png\",\"type\":\"image\\/png\",\"sizes\":\"96x96\"},{\"src\":\"\\/images\\/icons\\/icon-128x128.png\",\"type\":\"image\\/png\",\"sizes\":\"128x128\"},{\"src\":\"\\/images\\/icons\\/icon-144x144.png\",\"type\":\"image\\/png\",\"sizes\":\"144x144\"},{\"src\":\"\\/images\\/icons\\/icon-152x152.png\",\"type\":\"image\\/png\",\"sizes\":\"152x152\"},{\"src\":\"\\/images\\/icons\\/icon-192x192.png\",\"type\":\"image\\/png\",\"sizes\":\"192x192\"},{\"src\":\"\\/images\\/icons\\/icon-384x384.png\",\"type\":\"image\\/png\",\"sizes\":\"384x384\"},{\"src\":\"\\/images\\/icons\\/icon-512x512.png\",\"type\":\"image\\/png\",\"sizes\":\"512x512\"}]},\"duration\":463,\"memory\":20,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:21:30'),
(108, '8f0399e6-c571-4a7b-b492-de57ec5a9b60', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', 'ad7d07e5104cadcc6e9623dfc5fefdd8', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'davyslanguages\' and table_name = \'data_types\' and table_type = \'BASE TABLE\'\",\"time\":\"1.17\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\public\\\\index.php\",\"line\":55,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(109, '8f0399e6-ca46-43cc-b191-423d2bc7986a', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', 'a6ef1e802d2e0a6164a0c3f541709e91', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `policy_name`, `model_name` from `data_types`\",\"time\":\"0.69\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\public\\\\index.php\",\"line\":55,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(110, '8f0399e6-cf15-4852-a433-32a5b8aa67b1', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '224969891851189f27156a8441edc61a', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `entreprises`\",\"time\":\"0.82\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":52,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(111, '8f0399e6-cfef-43db-8973-d18bd53f2a18', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '1298051ac5cf68f00a930bbc07306b13', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `abouts`\",\"time\":\"0.52\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(112, '8f0399e6-d0c3-4d75-b072-ed6f39cf78f1', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', 'eba0e940650312fa7bd08e1faa1308d4', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `teams`\",\"time\":\"0.57\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":54,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(113, '8f0399e6-d17a-4b24-879c-01a320a1f70b', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '427a05c55da9f3dabe001791a76a08a4', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `galleries`\",\"time\":\"0.43\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":55,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(114, '8f0399e6-d240-4c81-8261-5d3c4dba8ccd', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', 'c0f29b3aeb2013b9e21306140d4adabc', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `services`\",\"time\":\"0.55\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":56,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(115, '8f0399e6-d304-46aa-92b7-56c63b7ea506', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '9523161cb34db8c996608817be5427d1', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `learns`\",\"time\":\"0.42\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":57,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(116, '8f0399e6-d374-4106-923a-0097480a9141', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', 'b27d772fbbfd5a4e9635ac31c20306c2', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `learns` order by `created_at` desc limit 9 offset 0\",\"time\":\"0.50\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":57,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(117, '8f0399e6-d4ba-4c6f-9ca9-22bb5c04b292', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', 'd27518a9fda8bec92813266d829ce19a', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `posts`\",\"time\":\"0.58\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":58,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(118, '8f0399e6-d576-4611-bea6-9738e02f5296', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', 'bc9856c76383bc65c1869f9caee66ed0', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `posts` order by `created_at` desc limit 9 offset 0\",\"time\":\"0.93\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":58,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(119, '8f0399e6-d683-4b2e-8bf5-f4476f99b5e4', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '27ec523f753d747f23c97a5cdd3edbf8', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `testimonials`\",\"time\":\"0.65\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":59,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(120, '8f0399e6-d78e-426f-95ce-d10206ab4ee9', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '9b18c1e1a1993730e12327864ab0d069', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `slides`\",\"time\":\"0.90\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":60,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(121, '8f0399e6-d879-4af5-876b-eed262412d4e', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '38165ea061ef3bf6522a03bc0e508b72', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sections`\",\"time\":\"0.56\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":61,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(122, '8f0399e6-d933-44f1-842c-9a3a22da0eeb', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '0d62e08897edd0ca9b5dc5a4d0ef0432', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `images`\",\"time\":\"0.43\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":62,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(123, '8f0399e6-d9f7-4fa5-919f-bfff8e51e5e9', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '8ac08af82ba128d057cd8523bf82b7f7', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `how_it_works`\",\"time\":\"0.48\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":63,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(124, '8f0399e6-dab5-4f97-923d-a71c1190a12d', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', 'b1a84e35499a2ce1c88faf4ca5b52e20', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `faqs`\",\"time\":\"0.48\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":64,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(125, '8f0399e6-db8b-4fee-82d0-51119f7bd2ac', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', 'e464cdd5ceb338969b3c46c8deec8f1c', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `prices`\",\"time\":\"0.59\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":65,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(126, '8f0399e6-dcd7-4814-8f8b-6ba2e9b9cad0', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '4b2e4012a686d71c41bb1fff5f9a5d12', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `texts`\",\"time\":\"1.31\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":66,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(127, '8f0399e6-e06b-41e2-852f-024b632624b1', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '069de8548ec8692f5d6cf8ccbf9c2296', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'texts\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76) and (`locale` = \'fr\' or `locale` = \'en\')\",\"time\":\"1.71\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":66,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(128, '8f0399e6-e32f-4fd5-8682-f04379d6c08c', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'event', '{\"name\":\"voyager.routing\",\"payload\":[{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}],\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(129, '8f0399e6-e395-42a2-929c-74b89d74e7a3', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'event', '{\"name\":\"TCG\\\\Voyager\\\\Events\\\\Routing\",\"payload\":{\"router\":{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}},\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(130, '8f0399e6-e439-4dd8-a767-ba1cff39b49a', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'event', '{\"name\":\"voyager.admin.routing\",\"payload\":[{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}],\"listeners\":[{\"name\":\"Larapack\\\\VoyagerHooks\\\\VoyagerHooksServiceProvider@addHookRoute\",\"queued\":false}],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(131, '8f0399e6-e46b-4412-b776-fc7ab5e0d656', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'event', '{\"name\":\"TCG\\\\Voyager\\\\Events\\\\RoutingAdmin\",\"payload\":{\"router\":{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}},\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(132, '8f0399e6-e51e-4bc1-a07d-297b22291bc6', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', 'cf4477047bd9084d2cf6a57cf518a133', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `data_types`\",\"time\":\"0.98\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\routes\\\\web.php\",\"line\":20,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(133, '8f0399e6-eb7b-410d-b332-f4bfb3f5ea71', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'event', '{\"name\":\"voyager.admin.routing.after\",\"payload\":[{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}],\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(134, '8f0399e6-ebba-4cdc-9515-12119fbea01f', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'event', '{\"name\":\"TCG\\\\Voyager\\\\Events\\\\RoutingAdminAfter\",\"payload\":{\"router\":{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}},\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(135, '8f0399e6-ec10-4f23-a545-56759e7893b3', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'event', '{\"name\":\"voyager.routing.after\",\"payload\":[{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}],\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(136, '8f0399e6-ec43-4f99-b233-5a2ddb7cb04e', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'event', '{\"name\":\"TCG\\\\Voyager\\\\Events\\\\RoutingAfter\",\"payload\":{\"router\":{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}},\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(137, '8f0399e6-fa77-4fb8-8082-e4df2ee89a12', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'view', '{\"name\":\"welcome\",\"path\":\"\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(138, '8f0399e6-fb01-42f0-baf9-927d1c8548c6', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'view', '{\"name\":\"partials.banner\",\"path\":\"\\\\resources\\\\views\\/partials\\/banner.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(139, '8f0399e7-001d-45f9-9613-fd0085fb3d36', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '50b79c8cc7d7c9b2bc5d9285aaafb554', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'slides\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (1)\",\"time\":\"0.94\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\0e7e672ed6eefcf3a906f2b0a164d054488e596c.php\",\"line\":28,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(140, '8f0399e7-0103-4a7d-afb0-fea444e17a42', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '5e4c1894906905236cf7862f51d4d3d9', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'slides\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (2)\",\"time\":\"0.69\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\0e7e672ed6eefcf3a906f2b0a164d054488e596c.php\",\"line\":28,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(141, '8f0399e7-01f4-4e97-91eb-c14a93870659', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '290b3aefc17b5a66de6971d316ad40b6', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'slides\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (3)\",\"time\":\"0.84\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\0e7e672ed6eefcf3a906f2b0a164d054488e596c.php\",\"line\":28,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(142, '8f0399e7-02b6-454a-a5dd-992f54b7ae75', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'view', '{\"name\":\"abouts.overview\",\"path\":\"\\\\resources\\\\views\\/abouts\\/overview.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(143, '8f0399e7-0475-4068-8a2c-4087a38468f1', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '50b79c8cc7d7c9b2bc5d9285aaafb554', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'abouts\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (1)\",\"time\":\"0.86\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\fc792b1d14d89b6e06287421c4faee6089adb51a.php\",\"line\":23,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(144, '8f0399e7-05fb-40b8-9a5e-8086adceb6ed', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'view', '{\"name\":\"services.overview\",\"path\":\"\\\\resources\\\\views\\/services\\/overview.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(145, '8f0399e7-07e8-42b0-9598-1e122c25221f', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '50b79c8cc7d7c9b2bc5d9285aaafb554', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'services\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (1)\",\"time\":\"0.75\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":38,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(146, '8f0399e7-0ac2-4cf8-b426-e22d8d0fc089', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '895fcb85b0779e7cfa0ab751392fd31a', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `s_items`.*, `s_item_service`.`service_id` as `pivot_service_id`, `s_item_service`.`s_item_id` as `pivot_s_item_id` from `s_items` inner join `s_item_service` on `s_items`.`id` = `s_item_service`.`s_item_id` where `s_item_service`.`service_id` = 1\",\"time\":\"0.85\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":52,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(147, '8f0399e7-0c10-45d0-8176-cd0ca8e206a0', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '8f16dbe7dbea58eafa1fa51b8401a879', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (12)\",\"time\":\"0.68\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(148, '8f0399e7-0cb9-4c7f-9827-f3c8b2de1b19', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '1c780960e7697fc6cabc8635d919c28f', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (10)\",\"time\":\"0.58\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(149, '8f0399e7-0d4a-4615-b9c2-7a429d09ab59', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', 'abff96598b38b702681fb16b0e47d72d', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (9)\",\"time\":\"0.51\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(150, '8f0399e7-0dda-43ed-b6b2-45f08f3cd176', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '152dd9223a059f5a4f6c8573eede9c51', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (8)\",\"time\":\"0.53\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(151, '8f0399e7-0e71-4b26-a43f-9c9e76473d42', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '5e4c1894906905236cf7862f51d4d3d9', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'services\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (2)\",\"time\":\"0.56\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":38,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(152, '8f0399e7-0f24-4813-8339-2576a2e9ee31', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '895fcb85b0779e7cfa0ab751392fd31a', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `s_items`.*, `s_item_service`.`service_id` as `pivot_service_id`, `s_item_service`.`s_item_id` as `pivot_s_item_id` from `s_items` inner join `s_item_service` on `s_items`.`id` = `s_item_service`.`s_item_id` where `s_item_service`.`service_id` = 2\",\"time\":\"0.59\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":52,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(153, '8f0399e7-1015-4a2a-9697-65a7467a1bd0', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '7aefd1ed147b18644830adb7abce3cd7', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (13)\",\"time\":\"0.85\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(154, '8f0399e7-10e3-401c-9792-6056057ca4af', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '15032f16a5e1337d09f49380468e8c68', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (14)\",\"time\":\"0.84\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(155, '8f0399e7-119f-4233-9e32-618c24db7c94', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', 'a0fb7aa6b478e5b40591cb454ea05ca3', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (15)\",\"time\":\"0.69\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(156, '8f0399e7-128a-4b85-b86b-901d5424097b', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '290b3aefc17b5a66de6971d316ad40b6', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'services\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (3)\",\"time\":\"0.90\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":38,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(157, '8f0399e7-133e-4d53-88bb-c7c437e23551', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '895fcb85b0779e7cfa0ab751392fd31a', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `s_items`.*, `s_item_service`.`service_id` as `pivot_service_id`, `s_item_service`.`s_item_id` as `pivot_s_item_id` from `s_items` inner join `s_item_service` on `s_items`.`id` = `s_item_service`.`s_item_id` where `s_item_service`.`service_id` = 3\",\"time\":\"0.59\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":52,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(158, '8f0399e7-13ea-4fab-a31e-e5841c880c6d', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '8bbb408d041526dea96b8f5ac1f121e1', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (16)\",\"time\":\"0.59\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(159, '8f0399e7-1484-4e82-b871-3f4a17b1c1fd', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '6b32e5d8451f4f5ca3d328b54ad19617', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (17)\",\"time\":\"0.55\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(160, '8f0399e7-1519-4d18-bf8a-a970f07b3734', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '29b1559ffcb7816f25bc4e8ffe7de3ea', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (19)\",\"time\":\"0.56\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(161, '8f0399e7-15af-4bcf-8a59-e46d65d3e6c0', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '25ededad6e198756f2c1d322ea5d7737', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (18)\",\"time\":\"0.57\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(162, '8f0399e7-1691-4b30-9f85-10901f857b18', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', 'efd67c6147ff7951038a13a644b0d726', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'services\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (4)\",\"time\":\"0.96\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":38,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(163, '8f0399e7-1753-4c54-b838-4f9d6b945de2', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '895fcb85b0779e7cfa0ab751392fd31a', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `s_items`.*, `s_item_service`.`service_id` as `pivot_service_id`, `s_item_service`.`s_item_id` as `pivot_s_item_id` from `s_items` inner join `s_item_service` on `s_items`.`id` = `s_item_service`.`s_item_id` where `s_item_service`.`service_id` = 4\",\"time\":\"0.65\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":52,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(164, '8f0399e7-17fd-4185-bc1f-b3af1b71c0c5', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', 'c275b5d1422ae8354f94ac49a95d8016', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'s_items\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (20)\",\"time\":\"0.59\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(165, '8f0399e7-1939-4933-b202-abd9e1a71e27', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '50b79c8cc7d7c9b2bc5d9285aaafb554', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'sections\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (1)\",\"time\":\"0.59\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\a13b5b41edf8ca78e0cf3e7ecc292dab0561d7a1.php\",\"line\":121,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(166, '8f0399e7-1a39-4940-91d7-6bd0f98758bc', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'view', '{\"name\":\"sections.pub-image\",\"path\":\"\\\\resources\\\\views\\/sections\\/pub-image.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(167, '8f0399e7-1aea-4bdb-af88-5eb2d7f55591', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'view', '{\"name\":\"sections.cours\",\"path\":\"\\\\resources\\\\views\\/sections\\/cours.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(168, '8f0399e7-1c16-40aa-aba7-1a28a8ec5198', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '5e4c1894906905236cf7862f51d4d3d9', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'sections\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (2)\",\"time\":\"0.94\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\34b5bdb43493f02338cdb2bfa74126942107a06d.php\",\"line\":21,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(169, '8f0399e7-1d35-4da3-8a40-1f996c21ea4f', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'view', '{\"name\":\"faqs.overview\",\"path\":\"\\\\resources\\\\views\\/faqs\\/overview.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(170, '8f0399e7-1ecf-4ea1-8e28-abe609e5d76a', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '50b79c8cc7d7c9b2bc5d9285aaafb554', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'how_it_works\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (1)\",\"time\":\"0.85\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\8af9c3ce6e383ec0aceb9c58be4d4f6af947f102.php\",\"line\":35,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(171, '8f0399e7-1f86-4eed-bb96-81037e37a461', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '5e4c1894906905236cf7862f51d4d3d9', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'how_it_works\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (2)\",\"time\":\"0.63\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\8af9c3ce6e383ec0aceb9c58be4d4f6af947f102.php\",\"line\":35,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(172, '8f0399e7-2028-460b-bf8a-ce6a7dc9920b', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '290b3aefc17b5a66de6971d316ad40b6', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'how_it_works\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (3)\",\"time\":\"0.53\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\8af9c3ce6e383ec0aceb9c58be4d4f6af947f102.php\",\"line\":35,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(173, '8f0399e7-20c0-42f4-a6d2-bb89177f77dc', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', 'efd67c6147ff7951038a13a644b0d726', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'how_it_works\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (4)\",\"time\":\"0.56\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\8af9c3ce6e383ec0aceb9c58be4d4f6af947f102.php\",\"line\":35,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(174, '8f0399e7-21ef-46b4-9935-c301aec3b290', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '50b79c8cc7d7c9b2bc5d9285aaafb554', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'faqs\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (1)\",\"time\":\"0.72\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\8af9c3ce6e383ec0aceb9c58be4d4f6af947f102.php\",\"line\":67,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(175, '8f0399e7-22a8-4596-a963-f3195738b28a', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', '5e4c1894906905236cf7862f51d4d3d9', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'faqs\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (2)\",\"time\":\"0.67\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\8af9c3ce6e383ec0aceb9c58be4d4f6af947f102.php\",\"line\":67,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(176, '8f0399e7-236a-4b46-973f-16580c89aa7e', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', 'efd67c6147ff7951038a13a644b0d726', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'faqs\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (4)\",\"time\":\"0.68\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\storage\\\\framework\\\\views\\\\8af9c3ce6e383ec0aceb9c58be4d4f6af947f102.php\",\"line\":67,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(177, '8f0399e7-23eb-4651-a70d-9cec856a8f73', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'view', '{\"name\":\"translates.create2\",\"path\":\"\\\\resources\\\\views\\/translates\\/create2.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(178, '8f0399e7-2b35-4faa-828d-7195b1dd31d7', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'view', '{\"name\":\"layouts.app\",\"path\":\"\\\\resources\\\\views\\/layouts\\/app.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(179, '8f0399e7-2ca0-433c-aa47-099325663686', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'view', '{\"name\":\"laravelpwa::meta\",\"path\":\"\\\\resources\\\\views\\/modules\\/laravelpwa\\/meta.blade.php\",\"data\":[\"config\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(180, '8f0399e7-2d3f-4c21-9a86-1033b60b1e8d', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'view', '{\"name\":\"partials.header\",\"path\":\"\\\\resources\\\\views\\/partials\\/header.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\",\"config\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(181, '8f0399e7-328b-49d9-bc30-ca9823d0c7e8', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'view', '{\"name\":\"partials.header-mobile\",\"path\":\"\\\\resources\\\\views\\/partials\\/header-mobile.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\",\"config\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(182, '8f0399e7-3771-4aaa-a037-f822621b98a9', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'view', '{\"name\":\"partials.footer\",\"path\":\"\\\\resources\\\\views\\/partials\\/footer.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\",\"config\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(183, '8f0399e7-3b52-4604-97c0-d10a9c5d67d8', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'view', '{\"name\":\"sweetalert::alert\",\"path\":\"\\\\resources\\\\views\\/vendor\\/sweetalert\\/alert.blade.php\",\"data\":[\"langue\",\"davyslanguages\",\"about\",\"teams\",\"galleries\",\"services\",\"learns\",\"posts\",\"testimonials\",\"slides\",\"sections\",\"images\",\"howItWorks\",\"faqs\",\"prices\",\"texts\",\"config\"],\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(184, '8f0399e7-3dbf-475a-b208-4f7716a297d8', '8f0399e7-3e87-45dd-b8de-eeb48530ea50', NULL, 1, 'request', '{\"uri\":\"\\/\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\HomeController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8001\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3\",\"dnt\":\"1\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/77.0.3865.120 Safari\\/537.36\",\"sec-fetch-mode\":\"same-origin\",\"sec-fetch-site\":\"same-origin\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7\",\"cookie\":\"trx_addons_is_retina=0; XSRF-TOKEN=eyJpdiI6IjE1SnJkOGNrSkpYa3hyZmVBNEVvM2c9PSIsInZhbHVlIjoiUjV0Y3pKdjVheVlhckxHZTVSdGorMFwvT2Z3b1UzWTNremFoQ1pldGg0YjNackZNcmdveW1BTjBycUpzdDRuSTciLCJtYWMiOiJlNzNiYmY0ZTkxMjFhZjIxMWEwMTVmN2NmZmJhNzEyZTcwYmVhOGY0NWJmNmQ0N2JlYmVmNzBhYWZlOTI2YTZhIn0%3D; laravel_session=eyJpdiI6Ik9NQ1JYbzB3RkUrRUdEYUhyeGIyd0E9PSIsInZhbHVlIjoidVlxUWdHWnJDQkpuT2VRXC9TTTN5XC9MQitDb083aFNZbnNUSld0NTFuSVc2Y2F2SXd4QitcL2srM3lsS0lKMVE0ViIsIm1hYyI6ImJmMjBiMjI5ZDU0OTBiZThjNWViN2IwZGIwNTUzZGEwNzgyOWI1MzhjOTM3NjgyN2E3NWQ4MTA2Y2Q1ZTAzNTAifQ%3D%3D\"},\"payload\":[],\"session\":{\"locale\":\"fr\",\"_token\":\"GD9gRIsetpiSGaGyC5RFaWHOIF5sD79CSPCkuUJ4\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8001\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"view\":\"D:\\\\workspace\\\\davyslanguages\\\\resources\\\\views\\/welcome.blade.php\",\"data\":[]},\"duration\":748,\"memory\":22,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:24:57'),
(185, '8f0399ec-0d92-460f-9b58-2caacbdcfbd3', '8f0399ec-41ab-455d-9b35-d759247cd163', 'ad7d07e5104cadcc6e9623dfc5fefdd8', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'davyslanguages\' and table_name = \'data_types\' and table_type = \'BASE TABLE\'\",\"time\":\"1.11\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\public\\\\index.php\",\"line\":55,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(186, '8f0399ec-1072-4119-81de-6fdd2918c7cd', '8f0399ec-41ab-455d-9b35-d759247cd163', 'a6ef1e802d2e0a6164a0c3f541709e91', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `policy_name`, `model_name` from `data_types`\",\"time\":\"0.69\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\public\\\\index.php\",\"line\":55,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(187, '8f0399ec-1499-413b-b1a6-7335f3020596', '8f0399ec-41ab-455d-9b35-d759247cd163', '224969891851189f27156a8441edc61a', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `entreprises`\",\"time\":\"0.77\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":52,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(188, '8f0399ec-157a-4c96-91c4-6b54ee39dfe6', '8f0399ec-41ab-455d-9b35-d759247cd163', '1298051ac5cf68f00a930bbc07306b13', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `abouts`\",\"time\":\"0.61\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":53,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(189, '8f0399ec-16ab-48d2-9d58-20affc5a475f', '8f0399ec-41ab-455d-9b35-d759247cd163', 'eba0e940650312fa7bd08e1faa1308d4', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `teams`\",\"time\":\"0.74\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":54,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(190, '8f0399ec-1789-4487-9b39-015509d37fc8', '8f0399ec-41ab-455d-9b35-d759247cd163', '427a05c55da9f3dabe001791a76a08a4', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `galleries`\",\"time\":\"0.56\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":55,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(191, '8f0399ec-185d-4036-bd43-8a7f8df015e4', '8f0399ec-41ab-455d-9b35-d759247cd163', 'c0f29b3aeb2013b9e21306140d4adabc', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `services`\",\"time\":\"0.52\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":56,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(192, '8f0399ec-1926-465a-ae01-2be2edbb0ee6', '8f0399ec-41ab-455d-9b35-d759247cd163', '9523161cb34db8c996608817be5427d1', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `learns`\",\"time\":\"0.43\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":57,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(193, '8f0399ec-19ab-4a24-9686-24a75e5720a7', '8f0399ec-41ab-455d-9b35-d759247cd163', 'b27d772fbbfd5a4e9635ac31c20306c2', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `learns` order by `created_at` desc limit 9 offset 0\",\"time\":\"0.57\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":57,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(194, '8f0399ec-1b54-4b0e-ba7a-52bad8c3e50c', '8f0399ec-41ab-455d-9b35-d759247cd163', 'd27518a9fda8bec92813266d829ce19a', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select count(*) as aggregate from `posts`\",\"time\":\"0.50\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":58,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(195, '8f0399ec-1bce-4925-ac99-fb4a6c5ad312', '8f0399ec-41ab-455d-9b35-d759247cd163', 'bc9856c76383bc65c1869f9caee66ed0', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `posts` order by `created_at` desc limit 9 offset 0\",\"time\":\"0.54\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":58,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(196, '8f0399ec-1ca8-4a81-b5f8-04e5b023d870', '8f0399ec-41ab-455d-9b35-d759247cd163', '27ec523f753d747f23c97a5cdd3edbf8', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `testimonials`\",\"time\":\"0.54\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":59,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(197, '8f0399ec-1d7b-4fc9-be63-fdb75a117a11', '8f0399ec-41ab-455d-9b35-d759247cd163', '9b18c1e1a1993730e12327864ab0d069', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `slides`\",\"time\":\"0.58\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":60,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(198, '8f0399ec-1e56-449a-8bbf-abe6bfdb3ab1', '8f0399ec-41ab-455d-9b35-d759247cd163', '38165ea061ef3bf6522a03bc0e508b72', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `sections`\",\"time\":\"0.62\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":61,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(199, '8f0399ec-1f6d-4ba9-bf37-49f5edc5c932', '8f0399ec-41ab-455d-9b35-d759247cd163', '0d62e08897edd0ca9b5dc5a4d0ef0432', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `images`\",\"time\":\"0.58\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":62,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(200, '8f0399ec-2044-4d5d-b794-7da2ece25aac', '8f0399ec-41ab-455d-9b35-d759247cd163', '8ac08af82ba128d057cd8523bf82b7f7', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `how_it_works`\",\"time\":\"0.55\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":63,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(201, '8f0399ec-210a-4210-b35f-ce2c534ab2cd', '8f0399ec-41ab-455d-9b35-d759247cd163', 'b1a84e35499a2ce1c88faf4ca5b52e20', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `faqs`\",\"time\":\"0.50\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":64,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(202, '8f0399ec-21d6-4e1c-8574-6795f4328d91', '8f0399ec-41ab-455d-9b35-d759247cd163', 'e464cdd5ceb338969b3c46c8deec8f1c', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `prices`\",\"time\":\"0.52\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":65,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(203, '8f0399ec-22ea-4fff-ab86-0352da65448a', '8f0399ec-41ab-455d-9b35-d759247cd163', '4b2e4012a686d71c41bb1fff5f9a5d12', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `texts`\",\"time\":\"1.20\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":66,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(204, '8f0399ec-25ec-4c48-a045-0cd5a032fe0f', '8f0399ec-41ab-455d-9b35-d759247cd163', '069de8548ec8692f5d6cf8ccbf9c2296', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `translations` where `table_name` = \'texts\' and `locale` in (\'fr\', \'en\') and `translations`.`foreign_key` in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76) and (`locale` = \'fr\' or `locale` = \'en\')\",\"time\":\"1.59\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\app\\\\Providers\\\\AppServiceProvider.php\",\"line\":66,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(205, '8f0399ec-287b-479b-a70d-1f2c242dea62', '8f0399ec-41ab-455d-9b35-d759247cd163', NULL, 1, 'event', '{\"name\":\"voyager.routing\",\"payload\":[{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}],\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(206, '8f0399ec-28e0-4ef1-bb02-771b37ef719a', '8f0399ec-41ab-455d-9b35-d759247cd163', NULL, 1, 'event', '{\"name\":\"TCG\\\\Voyager\\\\Events\\\\Routing\",\"payload\":{\"router\":{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}},\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(207, '8f0399ec-2993-4993-a6b5-51936f11ba57', '8f0399ec-41ab-455d-9b35-d759247cd163', NULL, 1, 'event', '{\"name\":\"voyager.admin.routing\",\"payload\":[{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}],\"listeners\":[{\"name\":\"Larapack\\\\VoyagerHooks\\\\VoyagerHooksServiceProvider@addHookRoute\",\"queued\":false}],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(208, '8f0399ec-29c9-48cb-af0c-b4e7ed857b8b', '8f0399ec-41ab-455d-9b35-d759247cd163', NULL, 1, 'event', '{\"name\":\"TCG\\\\Voyager\\\\Events\\\\RoutingAdmin\",\"payload\":{\"router\":{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}},\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(209, '8f0399ec-2a77-42b8-a844-6d6e71edd5a5', '8f0399ec-41ab-455d-9b35-d759247cd163', 'cf4477047bd9084d2cf6a57cf518a133', 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `data_types`\",\"time\":\"0.92\",\"slow\":false,\"file\":\"D:\\\\workspace\\\\davyslanguages\\\\routes\\\\web.php\",\"line\":20,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(210, '8f0399ec-3052-4615-8573-54e02a2a76d6', '8f0399ec-41ab-455d-9b35-d759247cd163', NULL, 1, 'event', '{\"name\":\"voyager.admin.routing.after\",\"payload\":[{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}],\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(211, '8f0399ec-3091-46ac-b639-4c9a4985a43a', '8f0399ec-41ab-455d-9b35-d759247cd163', NULL, 1, 'event', '{\"name\":\"TCG\\\\Voyager\\\\Events\\\\RoutingAdminAfter\",\"payload\":{\"router\":{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}},\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(212, '8f0399ec-30f5-4126-9296-3b1c5a8fcbfd', '8f0399ec-41ab-455d-9b35-d759247cd163', NULL, 1, 'event', '{\"name\":\"voyager.routing.after\",\"payload\":[{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}],\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(213, '8f0399ec-3139-4f35-80fb-6f7dbef528ed', '8f0399ec-41ab-455d-9b35-d759247cd163', NULL, 1, 'event', '{\"name\":\"TCG\\\\Voyager\\\\Events\\\\RoutingAfter\",\"payload\":{\"router\":{\"class\":\"Illuminate\\\\Routing\\\\Router\",\"properties\":{\"middlewarePriority\":[\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"App\\\\Http\\\\Middleware\\\\Authenticate\",\"Illuminate\\\\Routing\\\\Middleware\\\\ThrottleRequests\",\"Illuminate\\\\Session\\\\Middleware\\\\AuthenticateSession\",\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"Illuminate\\\\Auth\\\\Middleware\\\\Authorize\"]}}},\"listeners\":[],\"broadcast\":false,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00'),
(214, '8f0399ec-4144-48d3-bf64-7d12dea00be6', '8f0399ec-41ab-455d-9b35-d759247cd163', NULL, 1, 'request', '{\"uri\":\"\\/manifest.json\",\"method\":\"GET\",\"controller_action\":\"LaravelPWA\\\\Http\\\\Controllers\\\\LaravelPWAController@manifestJson\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost:8001\",\"connection\":\"keep-alive\",\"accept\":\"*\\/*\",\"dnt\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/77.0.3865.120 Safari\\/537.36\",\"sec-fetch-mode\":\"cors\",\"sec-fetch-site\":\"same-origin\",\"referer\":\"http:\\/\\/localhost:8001\\/\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7\"},\"payload\":[],\"session\":{\"locale\":\"fr\",\"_token\":\"FVhGRgMdX9Gsi9bWJP2GS7cLFEXJNCzRjhf5aBtV\",\"_previous\":{\"url\":\"http:\\/\\/localhost:8001\\/manifest.json\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":200,\"response\":{\"name\":\"DavysLanguages\",\"short_name\":\"DL\",\"start_url\":\"http:\\/\\/localhost:8001\\/\",\"display\":\"standalone\",\"theme_color\":\"#660066\",\"background_color\":\"#ffffff\",\"orientation\":\"any\",\"splash\":{\"640x1136\":\"\\/images\\/icons\\/splash-640x1136.png\",\"750x1334\":\"\\/images\\/icons\\/splash-750x1334.png\",\"828x1792\":\"\\/images\\/icons\\/splash-828x1792.png\",\"1125x2436\":\"\\/images\\/icons\\/splash-1125x2436.png\",\"1242x2208\":\"\\/images\\/icons\\/splash-1242x2208.png\",\"1242x2688\":\"\\/images\\/icons\\/splash-1242x2688.png\",\"1536x2048\":\"\\/images\\/icons\\/splash-1536x2048.png\",\"1668x2224\":\"\\/images\\/icons\\/splash-1668x2224.png\",\"1668x2388\":\"\\/images\\/icons\\/splash-1668x2388.png\",\"2048x2732\":\"\\/images\\/icons\\/splash-2048x2732.png\"},\"icons\":[{\"src\":\"\\/images\\/icons\\/icon-72x72.png\",\"type\":\"image\\/png\",\"sizes\":\"72x72\"},{\"src\":\"\\/images\\/icons\\/icon-96x96.png\",\"type\":\"image\\/png\",\"sizes\":\"96x96\"},{\"src\":\"\\/images\\/icons\\/icon-128x128.png\",\"type\":\"image\\/png\",\"sizes\":\"128x128\"},{\"src\":\"\\/images\\/icons\\/icon-144x144.png\",\"type\":\"image\\/png\",\"sizes\":\"144x144\"},{\"src\":\"\\/images\\/icons\\/icon-152x152.png\",\"type\":\"image\\/png\",\"sizes\":\"152x152\"},{\"src\":\"\\/images\\/icons\\/icon-192x192.png\",\"type\":\"image\\/png\",\"sizes\":\"192x192\"},{\"src\":\"\\/images\\/icons\\/icon-384x384.png\",\"type\":\"image\\/png\",\"sizes\":\"384x384\"},{\"src\":\"\\/images\\/icons\\/icon-512x512.png\",\"type\":\"image\\/png\",\"sizes\":\"512x512\"}]},\"duration\":605,\"memory\":20,\"hostname\":\"DESKTOP-K3B1VQ4\"}', '2019-10-30 17:25:00');

-- --------------------------------------------------------

--
-- Structure de la table `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `telescope_entries_tags`
--

INSERT INTO `telescope_entries_tags` (`entry_uuid`, `tag`) VALUES
('8f0398a4-3814-4ad9-a0c1-7fa85fffd546', 'slow');

-- --------------------------------------------------------

--
-- Structure de la table `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `texts`
--

CREATE TABLE `texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `texts`
--

INSERT INTO `texts` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, 'Accueil', '2019-10-17 19:13:21', '2019-10-17 19:13:21'),
(2, 'A Propos', '2019-10-17 19:13:34', '2019-10-17 19:13:34'),
(3, 'A Propos de nous', '2019-10-17 19:14:01', '2019-10-17 19:14:01'),
(4, 'Notre Equipe', '2019-10-17 19:14:15', '2019-10-17 19:14:15'),
(5, 'Gallerie', '2019-10-17 19:14:00', '2019-10-17 19:14:58'),
(6, 'Services', '2019-10-17 19:15:18', '2019-10-17 19:15:18'),
(7, 'Cours', '2019-10-17 19:15:28', '2019-10-17 19:15:28'),
(8, 'Blog', '2019-10-17 19:15:43', '2019-10-17 19:15:43'),
(9, 'Contactez-nous', '2019-10-17 19:16:00', '2019-10-17 19:16:00'),
(10, 'Commander Translation', '2019-10-17 19:16:33', '2019-10-17 19:16:33'),
(11, 'Travaillez avec des professionnels', '2019-10-18 07:10:00', '2019-10-24 10:46:29'),
(12, 'Lire Plus', '2019-10-18 07:11:00', '2019-10-24 11:07:27'),
(13, 'Nous offrons une large', '2019-10-18 07:41:00', '2019-10-24 11:09:45'),
(14, 'Range', '2019-10-18 07:42:00', '2019-10-18 07:42:00'),
(15, 'gamme de services', '2019-10-18 07:42:00', '2019-10-24 11:11:07'),
(16, 'ProLingua is a translation company that has been providing high quality, professional translation services for over 15 years. Check out our client list and read some client testimonials. Many customers feel that ProLingua is the best translation company for their requirements.', '2019-10-18 17:12:24', '2019-10-18 17:12:24'),
(17, 'ProLingua stands for Global Translation Services. We have earned our name by being an international translation agency with global reach. With translators in over 100 countries and support of over 60 languages, we have the language expertise you need in every part of the world.', '2019-10-18 17:12:44', '2019-10-18 17:12:44'),
(18, 'Expérience dans les voyages', '2019-10-18 17:50:00', '2019-10-24 16:51:49'),
(19, 'Our Professional Translators are Native Speakers', '2019-10-19 09:15:55', '2019-10-19 09:15:55'),
(20, 'In order for us to live up to our promise of an outstanding service, each job is assigned to linguists with specializations in various languages who work for our company.', '2019-10-19 09:16:22', '2019-10-19 09:16:22'),
(21, 'Get Instant Quote', '2019-10-22 14:47:01', '2019-10-22 14:47:01'),
(22, 'Commander translation ?', '2019-10-22 15:05:00', '2019-10-24 18:04:22'),
(23, 'Foire aux questions', '2019-10-22 15:45:00', '2019-10-24 18:03:30'),
(24, 'Contact Us Now', '2019-10-22 15:50:45', '2019-10-22 15:50:45'),
(25, 'Demander un dévis', '2019-10-22 15:55:00', '2019-10-25 16:38:30'),
(26, 'Nom & Prénoms', '2019-10-23 09:45:00', '2019-10-24 18:57:24'),
(27, 'Email ', '2019-10-23 09:45:00', '2019-10-24 18:58:35'),
(28, 'Numéro de téléphone', '2019-10-23 09:46:00', '2019-10-24 18:58:12'),
(29, 'Langue source', '2019-10-23 09:48:00', '2019-10-24 19:03:25'),
(30, 'Langue cible', '2019-10-23 09:49:00', '2019-10-24 19:03:48'),
(31, 'Entreprise', '2019-10-23 09:50:00', '2019-10-24 19:00:56'),
(32, 'Personnel', '2019-10-23 09:50:00', '2019-10-24 19:03:07'),
(33, 'Select  File', '2019-10-23 09:51:38', '2019-10-23 09:51:38'),
(34, 'Choisir Fichier', '2019-10-23 09:52:00', '2019-10-24 19:03:36'),
(35, 'Domaine', '2019-10-23 09:52:00', '2019-10-24 19:05:41'),
(36, 'Votre Message', '2019-10-23 09:53:00', '2019-10-24 19:04:07'),
(37, 'Envoyer', '2019-10-23 09:58:00', '2019-10-24 19:08:19'),
(38, 'Rester à jour', '2019-10-23 10:11:00', '2019-10-24 19:17:05'),
(39, 'Soyez le premier à connaître nos dernières nouvelles', '2019-10-23 10:12:00', '2019-10-24 19:18:14'),
(40, 'et obtenez des invitations exclusives à nos événements', '2019-10-23 10:17:00', '2019-10-24 19:19:27'),
(41, 'Email', '2019-10-23 12:37:00', '2019-10-24 18:58:06'),
(42, 'Contactez-nous', '2019-10-23 12:37:00', '2019-10-24 19:20:21'),
(43, 'Nos Tarifs', '2019-10-23 16:00:00', '2019-10-24 20:17:24'),
(44, 'Nos Services', '2019-10-23 16:36:00', '2019-10-24 20:38:27'),
(45, 'Travaillez avec des professionnels', '2019-10-23 16:42:00', '2019-10-24 10:45:38'),
(46, 'Besoin de se former', '2019-10-23 16:59:09', '2019-10-23 16:59:09'),
(47, 'Nos Cours', '2019-10-23 16:59:43', '2019-10-23 16:59:43'),
(48, 'Lire Plus', '2019-10-23 17:48:27', '2019-10-23 17:48:27'),
(49, 'Notre Equipe', '2019-10-24 07:13:00', '2019-10-24 20:20:43'),
(50, 'Notre Equipe', '2019-10-24 07:15:39', '2019-10-24 07:15:39'),
(51, 'Send Message', '2019-10-24 08:24:12', '2019-10-24 08:24:12'),
(52, 'Envoyer Message', '2019-10-24 08:25:00', '2019-10-24 18:59:35'),
(53, 'Entrer en contact', '2019-10-24 08:28:00', '2019-10-24 21:01:29'),
(54, 'Pour toutes informations, vous pouvez nous contactez via les adresse ci-dessous ', '2019-10-24 08:30:00', '2019-10-25 18:47:53'),
(55, 'Adresse', '2019-10-24 21:03:49', '2019-10-24 21:03:49'),
(56, 'Je m\'inscris maintenant', '2019-10-25 12:03:57', '2019-10-25 12:03:57'),
(57, 'Nos Post', '2019-10-25 13:19:06', '2019-10-25 13:19:06'),
(58, 'Entrez les exigences du projet', '2019-10-25 14:26:37', '2019-10-25 14:26:37'),
(59, 'Veuillez choisir *', '2019-10-25 14:31:58', '2019-10-25 14:31:58'),
(60, 'Délai standard (2-5 jours ouvrables)', '2019-10-25 14:32:51', '2019-10-25 14:32:51'),
(61, 'Date limite expresse: (24 heures)', '2019-10-25 14:33:53', '2019-10-25 14:33:53'),
(62, 'Délai extra express (2 à 12 heures)', '2019-10-25 14:35:15', '2019-10-25 14:35:15'),
(63, 'Quel type de documents souhaitez-vous traduire?', '2019-10-25 14:36:19', '2019-10-25 14:36:19'),
(64, 'Sélectionner le domaine de spécialisation du document ', '2019-10-25 14:58:02', '2019-10-25 14:58:02'),
(65, 'Entrez vos informations pour procéder à la demande', '2019-10-25 15:15:22', '2019-10-25 15:15:22'),
(66, 'Nom', '2019-10-25 15:17:35', '2019-10-25 15:17:35'),
(67, 'Prénoms', '2019-10-25 15:17:53', '2019-10-25 15:17:53'),
(68, 'Comment vous contacter ?', '2019-10-25 15:20:54', '2019-10-25 15:20:54'),
(69, 'Appelez-moi', '2019-10-25 15:22:07', '2019-10-25 15:22:07'),
(70, 'Non, contactez-moi par e-mail', '2019-10-25 15:26:31', '2019-10-25 15:26:31'),
(71, 'ou écrirez-nous', '2019-10-25 18:46:00', '2019-10-25 18:49:55'),
(72, 'Contactez pour plus de détails', '2019-10-25 19:36:29', '2019-10-25 19:36:29'),
(73, 'Contacts', '2019-10-25 20:08:50', '2019-10-25 20:08:50'),
(74, 'Nos Photos', '2019-10-29 10:36:41', '2019-10-29 10:36:41'),
(75, 'Video', '2019-10-29 10:38:09', '2019-10-29 10:38:09'),
(76, 'https://player.vimeo.com/video/31159101', '2019-10-29 10:51:05', '2019-10-29 10:51:05');

-- --------------------------------------------------------

--
-- Structure de la table `translates`
--

CREATE TABLE `translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_rows', 'display_name', 63, 'en', 'Id', '2019-10-17 18:05:15', '2019-10-17 18:05:15'),
(2, 'data_rows', 'display_name', 64, 'en', 'Image', '2019-10-17 18:05:15', '2019-10-17 18:05:15'),
(3, 'data_rows', 'display_name', 65, 'en', 'Title', '2019-10-17 18:05:15', '2019-10-17 18:05:15'),
(4, 'data_rows', 'display_name', 66, 'en', 'Description', '2019-10-17 18:05:15', '2019-10-17 18:05:15'),
(5, 'data_rows', 'display_name', 67, 'en', 'Created At', '2019-10-17 18:05:15', '2019-10-17 18:05:15'),
(6, 'data_rows', 'display_name', 68, 'en', 'Updated At', '2019-10-17 18:05:15', '2019-10-17 18:05:15'),
(7, 'data_types', 'display_name_singular', 7, 'en', 'About', '2019-10-17 18:05:15', '2019-10-17 18:05:15'),
(8, 'data_types', 'display_name_plural', 7, 'en', 'Abouts', '2019-10-17 18:05:15', '2019-10-17 18:05:15'),
(9, 'texts', 'text', 5, 'en', 'Gallérie', '2019-10-17 19:14:58', '2019-10-17 19:14:58'),
(10, 'data_rows', 'display_name', 69, 'en', 'Id', '2019-10-18 17:19:13', '2019-10-18 17:19:13'),
(11, 'data_rows', 'display_name', 70, 'en', 'Icon', '2019-10-18 17:19:13', '2019-10-18 17:19:13'),
(12, 'data_rows', 'display_name', 71, 'en', 'Image', '2019-10-18 17:19:13', '2019-10-18 17:19:13'),
(13, 'data_rows', 'display_name', 72, 'en', 'Title', '2019-10-18 17:19:13', '2019-10-18 17:19:13'),
(14, 'data_rows', 'display_name', 73, 'en', 'Description', '2019-10-18 17:19:13', '2019-10-18 17:19:13'),
(15, 'data_rows', 'display_name', 74, 'en', 'Created At', '2019-10-18 17:19:13', '2019-10-18 17:19:13'),
(16, 'data_rows', 'display_name', 75, 'en', 'Updated At', '2019-10-18 17:19:13', '2019-10-18 17:19:13'),
(17, 'data_rows', 'display_name', 201, 'en', 's_items', '2019-10-18 17:19:13', '2019-10-18 17:19:13'),
(18, 'data_types', 'display_name_singular', 8, 'en', 'Service', '2019-10-18 17:19:14', '2019-10-18 17:19:14'),
(19, 'data_types', 'display_name_plural', 8, 'en', 'Services', '2019-10-18 17:19:14', '2019-10-18 17:19:14'),
(20, 'data_rows', 'display_name', 76, 'en', 'Id', '2019-10-18 17:29:32', '2019-10-18 17:29:32'),
(21, 'data_rows', 'display_name', 77, 'en', 'Title', '2019-10-18 17:29:32', '2019-10-18 17:29:32'),
(22, 'data_rows', 'display_name', 78, 'en', 'Description', '2019-10-18 17:29:32', '2019-10-18 17:29:32'),
(23, 'data_rows', 'display_name', 79, 'en', 'Created At', '2019-10-18 17:29:32', '2019-10-18 17:29:32'),
(24, 'data_rows', 'display_name', 80, 'en', 'Updated At', '2019-10-18 17:29:32', '2019-10-18 17:29:32'),
(25, 'data_rows', 'display_name', 202, 'en', 'services', '2019-10-18 17:29:32', '2019-10-18 17:29:32'),
(26, 'data_types', 'display_name_singular', 9, 'en', 'Service Item', '2019-10-18 17:29:32', '2019-10-18 17:29:32'),
(27, 'data_types', 'display_name_plural', 9, 'en', 'Services Items', '2019-10-18 17:29:33', '2019-10-18 17:29:33'),
(34, 'data_rows', 'display_name', 195, 'en', 'Id', '2019-10-18 18:14:35', '2019-10-18 18:14:35'),
(35, 'data_rows', 'display_name', 196, 'en', 'Image', '2019-10-18 18:14:35', '2019-10-18 18:14:35'),
(36, 'data_rows', 'display_name', 197, 'en', 'Title', '2019-10-18 18:14:35', '2019-10-18 18:14:35'),
(37, 'data_rows', 'display_name', 198, 'en', 'Description', '2019-10-18 18:14:35', '2019-10-18 18:14:35'),
(38, 'data_rows', 'display_name', 199, 'en', 'Created At', '2019-10-18 18:14:35', '2019-10-18 18:14:35'),
(39, 'data_rows', 'display_name', 200, 'en', 'Updated At', '2019-10-18 18:14:35', '2019-10-18 18:14:35'),
(40, 'data_types', 'display_name_singular', 26, 'en', 'Section', '2019-10-18 18:14:35', '2019-10-18 18:14:35'),
(41, 'data_types', 'display_name_plural', 26, 'en', 'Sections', '2019-10-18 18:14:35', '2019-10-18 18:14:35'),
(49, 'data_rows', 'display_name', 105, 'en', 'Id', '2019-10-23 17:31:33', '2019-10-23 17:31:33'),
(50, 'data_rows', 'display_name', 106, 'en', 'Image', '2019-10-23 17:31:33', '2019-10-23 17:31:33'),
(51, 'data_rows', 'display_name', 107, 'en', 'Title', '2019-10-23 17:31:33', '2019-10-23 17:31:33'),
(52, 'data_rows', 'display_name', 108, 'en', 'Description', '2019-10-23 17:31:33', '2019-10-23 17:31:33'),
(53, 'data_rows', 'display_name', 109, 'en', 'Created At', '2019-10-23 17:31:33', '2019-10-23 17:31:33'),
(54, 'data_rows', 'display_name', 110, 'en', 'Updated At', '2019-10-23 17:31:33', '2019-10-23 17:31:33'),
(55, 'data_types', 'display_name_singular', 14, 'en', 'Learn', '2019-10-23 17:31:33', '2019-10-23 17:31:33'),
(56, 'data_types', 'display_name_plural', 14, 'en', 'Learns', '2019-10-23 17:31:33', '2019-10-23 17:31:33'),
(57, 'data_rows', 'display_name', 92, 'en', 'Id', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(58, 'data_rows', 'display_name', 93, 'en', 'Image', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(59, 'data_rows', 'display_name', 94, 'en', 'Title', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(60, 'data_rows', 'display_name', 95, 'en', 'Description', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(61, 'data_rows', 'display_name', 96, 'en', 'Vue', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(62, 'data_rows', 'display_name', 97, 'en', 'Like', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(63, 'data_rows', 'display_name', 98, 'en', 'Created At', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(64, 'data_rows', 'display_name', 99, 'en', 'Updated At', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(65, 'data_types', 'display_name_singular', 12, 'en', 'Post', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(66, 'data_types', 'display_name_plural', 12, 'en', 'Posts', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(69, 'posts', 'title', 2, 'en', 'The Differences Between Native Speakers And Philologists', '2019-10-23 18:40:00', '2019-10-23 18:40:00'),
(70, 'posts', 'description', 2, 'en', '<p>dipiscing eu porttitor. Mauris ante blandit nesciunt fringilla montes. Sociis sapien viverra sit est ut, ullamcorper pulvinar itaque dignissim ac donec tempor, urna nam volutpat, wisi metus at a. Feugiat id eget senectus enim erat vel, varius lorem condimentum ad, magna neque, tellus quam dignissim cras, leo id atque urna</p>\n<p>&nbsp;</p>\n<p>Elementum praesent tristique velit mollis. Sit sapien totam, dignissim diam sed at quis, amet tincidunt nam et quis, tortor sit nulla. Sit porttitor libero ut at et turpis, eu rhoncus blandit donec erat mauris sollicitudin, officia aptent consectetuer urna nulla. Alias consequat sem lacus porttitor ornare erat. Et vitae in</p>', '2019-10-23 18:40:00', '2019-10-23 18:40:00'),
(85, 'data_rows', 'display_name', 203, 'en', 'Id', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(86, 'data_rows', 'display_name', 204, 'en', 'Image', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(87, 'data_rows', 'display_name', 205, 'en', 'Name', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(88, 'data_rows', 'display_name', 206, 'en', 'Title', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(89, 'data_rows', 'display_name', 207, 'en', 'Description', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(90, 'data_rows', 'display_name', 208, 'en', 'Facebook', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(91, 'data_rows', 'display_name', 209, 'en', 'Twitter', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(92, 'data_rows', 'display_name', 210, 'en', 'Instagram', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(93, 'data_rows', 'display_name', 211, 'en', 'Linkedin', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(94, 'data_rows', 'display_name', 212, 'en', 'Created At', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(95, 'data_rows', 'display_name', 213, 'en', 'Updated At', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(96, 'data_types', 'display_name_singular', 27, 'en', 'Team', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(97, 'data_types', 'display_name_plural', 27, 'en', 'Teams', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(98, 'teams', 'title', 1, 'en', 'CEO & FOUNDER', '2019-10-24 07:09:46', '2019-10-24 07:09:46'),
(99, 'data_rows', 'display_name', 155, 'en', 'Id', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(100, 'data_rows', 'display_name', 191, 'en', 'Gallery Category', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(101, 'data_rows', 'display_name', 156, 'en', 'Image', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(102, 'data_rows', 'display_name', 157, 'en', 'Title', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(103, 'data_rows', 'display_name', 158, 'en', 'Description', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(104, 'data_rows', 'display_name', 159, 'en', 'Created At', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(105, 'data_rows', 'display_name', 160, 'en', 'Updated At', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(106, 'data_rows', 'display_name', 192, 'en', 'gallery_categories', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(107, 'data_types', 'display_name_singular', 21, 'en', 'Gallery', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(108, 'data_types', 'display_name_plural', 21, 'en', 'Galleries', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(109, 'data_rows', 'display_name', 214, 'en', 'gallery_categories', '2019-10-24 07:46:40', '2019-10-24 07:46:40'),
(110, 'galleries', 'title', 1, 'en', 'MARKETING TO DIRECT CLIENTS STARTS MONDAY-FULL', '2019-10-24 07:58:36', '2019-10-24 07:58:36'),
(111, 'slides', 'texte1', 1, 'en', 'High Professional', '2019-10-24 10:09:49', '2019-10-24 10:09:49'),
(112, 'slides', 'texte2', 1, 'en', 'Translation Services', '2019-10-24 10:09:49', '2019-10-24 10:09:49'),
(113, 'slides', 'texte3', 1, 'en', 'You Can Trust', '2019-10-24 10:09:49', '2019-10-24 10:09:49'),
(114, 'slides', 'btn_text', 1, 'en', 'Translate Now', '2019-10-24 10:09:49', '2019-10-24 10:09:49'),
(115, 'slides', 'texte1', 2, 'en', 'Work Easily', '2019-10-24 10:25:27', '2019-10-24 10:25:27'),
(116, 'slides', 'texte2', 2, 'en', 'With Our Professional', '2019-10-24 10:25:27', '2019-10-24 10:25:27'),
(117, 'slides', 'texte3', 2, 'en', 'Translation Agency', '2019-10-24 10:25:27', '2019-10-24 10:25:27'),
(118, 'slides', 'btn_text', 2, 'en', 'Discover More', '2019-10-24 10:25:27', '2019-10-24 10:25:27'),
(119, 'slides', 'texte1', 3, 'en', 'Améliorer votre Anglais ou Français ?', '2019-10-24 10:35:37', '2019-10-24 10:35:37'),
(120, 'slides', 'texte2', 3, 'en', 'Pas de soucis, ne trainez plus', '2019-10-24 10:35:37', '2019-10-24 10:35:37'),
(121, 'slides', 'texte3', 3, 'en', 'Venez à nous...', '2019-10-24 10:35:37', '2019-10-24 10:35:37'),
(122, 'texts', 'text', 45, 'en', 'Proven Experience', '2019-10-24 10:45:38', '2019-10-24 10:45:38'),
(123, 'texts', 'text', 11, 'en', 'Proven Experience', '2019-10-24 10:46:29', '2019-10-24 10:46:29'),
(124, 'abouts', 'title', 1, 'en', 'Order Professional Translations in Just a Few Clicks', '2019-10-24 10:53:02', '2019-10-24 10:53:02'),
(125, 'abouts', 'description', 1, 'en', '<p>ProLingua is a professional translation company which offers exceptional language expertise services. We have experienced team, flexible prices, and international quality certification.</p>', '2019-10-24 10:53:02', '2019-10-24 10:53:02'),
(126, 'texts', 'text', 12, 'en', 'Learn More', '2019-10-24 11:07:27', '2019-10-24 11:07:27'),
(127, 'texts', 'text', 13, 'en', 'We Offer a Wide', '2019-10-24 11:09:45', '2019-10-24 11:09:45'),
(128, 'texts', 'text', 15, 'en', 'of Translation Services', '2019-10-24 11:11:07', '2019-10-24 11:11:07'),
(129, 'services', 'title', 1, 'en', 'Documents Translation', '2019-10-24 11:21:26', '2019-10-24 11:21:26'),
(130, 'services', 'title', 2, 'en', 'Apostile & Legalization', '2019-10-24 11:22:15', '2019-10-24 11:22:15'),
(131, 'services', 'title', 3, 'en', 'Localization Services', '2019-10-24 11:25:35', '2019-10-24 11:25:35'),
(132, 'services', 'title', 4, 'en', 'Website Translation', '2019-10-24 11:26:04', '2019-10-24 11:26:04'),
(133, 's_items', 'title', 12, 'en', 'traductions de documents juridiques', '2019-10-24 11:34:26', '2019-10-24 11:34:26'),
(135, 's_items', 'title', 10, 'en', 'Traduction de diplômes', '2019-10-24 11:35:08', '2019-10-24 11:35:08'),
(136, 's_items', 'title', 9, 'en', 'traduction de documents commerciaux', '2019-10-24 11:35:29', '2019-10-24 11:35:29'),
(137, 's_items', 'title', 8, 'en', 'traductions de lettres', '2019-10-24 11:35:47', '2019-10-24 11:35:47'),
(138, 's_items', 'title', 16, 'en', 'Parler / Ecrire', '2019-10-24 12:02:59', '2019-10-24 12:02:59'),
(139, 's_items', 'title', 17, 'en', 'Lire et comprendre', '2019-10-24 12:03:20', '2019-10-24 12:03:20'),
(140, 's_items', 'title', 18, 'en', 'Parler', '2019-10-24 12:04:27', '2019-10-24 12:04:27'),
(141, 's_items', 'title', 20, 'en', 'Cours préparatoire', '2019-10-24 12:05:52', '2019-10-24 12:05:52'),
(142, 'prices', 'title', 1, 'en', 'STANDART', '2019-10-24 12:33:35', '2019-10-24 12:33:35'),
(143, 'prices', 'title', 2, 'en', 'EXPRESS', '2019-10-24 12:36:50', '2019-10-24 12:36:50'),
(144, 'prices', 'title', 3, 'en', 'INSTANT', '2019-10-24 12:37:46', '2019-10-24 12:37:46'),
(145, 'p_items', 'title', 13, 'en', 'TOEFL / IELTS', '2019-10-24 12:47:20', '2019-10-24 12:47:20'),
(146, 'faqs', 'title', 4, 'en', 'Who sees the documents for translation?', '2019-10-24 16:08:46', '2019-10-24 16:08:46'),
(147, 'faqs', 'description', 4, 'en', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam, quis', '2019-10-24 16:08:47', '2019-10-24 16:08:47'),
(148, 'faqs', 'title', 2, 'en', 'How do I submit a translation project?', '2019-10-24 16:10:44', '2019-10-24 16:10:44'),
(149, 'faqs', 'description', 2, 'en', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam, quis', '2019-10-24 16:10:44', '2019-10-24 16:10:44'),
(150, 'sections', 'title', 1, 'en', 'Our Professional Translators are Native Speakers', '2019-10-24 16:24:03', '2019-10-24 16:24:03'),
(151, 'sections', 'description', 1, 'en', '<p>In order for us to live up to our promise of an outstanding service, each job is assigned to linguists with specializations in various languages who work for our company.</p>', '2019-10-24 16:24:03', '2019-10-24 16:24:03'),
(152, 'texts', 'text', 18, 'en', 'Experience in the Industry', '2019-10-24 16:51:49', '2019-10-24 16:51:49'),
(153, 'faqs', 'title', 1, 'en', 'How can I receive a quote for my website?', '2019-10-24 17:01:30', '2019-10-24 17:01:30'),
(154, 'faqs', 'description', 1, 'en', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam, quis', '2019-10-24 17:01:30', '2019-10-24 17:01:30'),
(155, 'sections', 'title', 2, 'en', 'Transforming the World of Professional Translation', '2019-10-24 17:01:53', '2019-10-24 17:01:53'),
(156, 'sections', 'description', 2, 'en', '<p>Interested, but in a hurry?</p>', '2019-10-24 17:01:53', '2019-10-24 17:01:53'),
(157, 'texts', 'text', 23, 'en', 'Faq’s', '2019-10-24 17:08:34', '2019-10-24 17:08:34'),
(158, 'texts', 'text', 22, 'en', 'How it Works', '2019-10-24 17:21:23', '2019-10-24 17:21:23'),
(159, 'how_it_works', 'title', 2, 'en', 'Approve the quote and pay', '2019-10-24 17:38:19', '2019-10-24 17:38:19'),
(160, 'how_it_works', 'description', 2, 'en', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', '2019-10-24 17:38:19', '2019-10-24 17:38:19'),
(161, 'how_it_works', 'title', 1, 'en', 'Your  translation is ready in your inbox', '2019-10-24 17:41:04', '2019-10-24 17:41:04'),
(162, 'how_it_works', 'description', 1, 'en', 'Magna aliquat enim ad minim veniam, quis nostrud exercitatio ullamco laboris nisi ut aliquip exea.', '2019-10-24 17:41:04', '2019-10-24 17:41:04'),
(163, 'texts', 'text', 25, 'en', 'Get a Quote', '2019-10-24 18:55:39', '2019-10-24 18:55:39'),
(164, 'texts', 'text', 26, 'en', 'Full Name', '2019-10-24 18:56:10', '2019-10-24 18:56:10'),
(165, 'texts', 'text', 41, 'en', 'Email Address', '2019-10-24 18:58:06', '2019-10-24 18:58:06'),
(166, 'texts', 'text', 28, 'en', 'Phone Number', '2019-10-24 18:58:12', '2019-10-24 18:58:12'),
(167, 'texts', 'text', 27, 'en', 'Email Address', '2019-10-24 18:58:35', '2019-10-24 18:58:35'),
(168, 'texts', 'text', 52, 'en', 'Send a Message', '2019-10-24 18:59:35', '2019-10-24 18:59:35'),
(169, 'texts', 'text', 31, 'en', 'Company', '2019-10-24 19:00:23', '2019-10-24 19:00:23'),
(170, 'texts', 'text', 32, 'en', 'Private', '2019-10-24 19:03:07', '2019-10-24 19:03:07'),
(171, 'texts', 'text', 29, 'en', 'Source Language', '2019-10-24 19:03:25', '2019-10-24 19:03:25'),
(172, 'texts', 'text', 34, 'en', 'Upload File', '2019-10-24 19:03:36', '2019-10-24 19:03:36'),
(173, 'texts', 'text', 30, 'en', 'Target Language', '2019-10-24 19:03:48', '2019-10-24 19:03:48'),
(174, 'texts', 'text', 36, 'en', 'Your Message', '2019-10-24 19:04:07', '2019-10-24 19:04:07'),
(175, 'texts', 'text', 35, 'en', 'Industry', '2019-10-24 19:05:41', '2019-10-24 19:05:41'),
(176, 'texts', 'text', 37, 'en', 'Get Me An Instant Quote', '2019-10-24 19:08:19', '2019-10-24 19:08:19'),
(177, 'texts', 'text', 38, 'en', 'Stay Update', '2019-10-24 19:17:05', '2019-10-24 19:17:05'),
(178, 'texts', 'text', 39, 'en', 'Be the first to know about our latest editions', '2019-10-24 19:18:14', '2019-10-24 19:18:14'),
(179, 'texts', 'text', 40, 'en', 'and get exlusive invites to our events.', '2019-10-24 19:19:27', '2019-10-24 19:19:27'),
(180, 'texts', 'text', 42, 'en', 'Contact Us', '2019-10-24 19:20:21', '2019-10-24 19:20:21'),
(181, 'sections', 'title', 3, 'en', 'What You Need to Know About Us', '2019-10-24 19:43:27', '2019-10-24 19:43:27'),
(182, 'sections', 'description', 3, 'en', '<p>In order for us to live up to our promise of an outstanding service, each job is assigned to linguists with specializations in various languages who work for our company on a full-time basis.</p>', '2019-10-24 19:43:27', '2019-10-24 19:43:27'),
(183, 'texts', 'text', 43, 'en', 'Competitive Prices', '2019-10-24 20:17:24', '2019-10-24 20:17:24'),
(184, 'texts', 'text', 49, 'en', 'Meet Our Team', '2019-10-24 20:20:43', '2019-10-24 20:20:43'),
(185, 'texts', 'text', 44, 'en', 'Our Services', '2019-10-24 20:38:27', '2019-10-24 20:38:27'),
(186, 'texts', 'text', 53, 'en', 'Get in Touch', '2019-10-24 21:01:29', '2019-10-24 21:01:29'),
(187, 'texts', 'text', 54, 'en', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', '2019-10-24 21:03:18', '2019-10-24 21:03:18'),
(188, 'learns', 'title', 3, 'en', 'How to Overcome the Fear of Writing in a Foreign Language', '2019-10-25 18:27:20', '2019-10-25 18:27:20'),
(189, 'learns', 'description', 3, 'en', '<p>Erat elementum fuga phasellus non turpis augue. Elit massa dolor id mollis magna. Orci nulla sagittis. Habitasse risus felis sollicitudin eleifend et, vehicula pharetra commodo quis, taciti ridiculus ipsum netus facilisis quisque, suspendisse diam. Nascetur turpis pulvinar sollicitudin conubia lorem neque, odio pellentesque quisque et, pellentesque augue eget tortor ut</p>\n<p>&nbsp;</p>\n<p>Placerat orci est vitae purus, morbi sit aenean sollicitudin volutpat morbi, amet lacus a convallis, sit tempus quis consectetuer lacus. Sollicitudin et, sed tortor sagittis sapien, morbi rutrum aliquam mus pellentesque felis quis. Fusce purus vel et wisi rhoncus in, metus aenean orci curabitur blandit, et lorem rutrum vestibulum turpis</p>\n<p>&nbsp;</p>\n<p>Adipiscing eu porttitor. Mauris ante blandit nesciunt fringilla montes. Sociis sapien viverra sit est ut, ullamcorper pulvinar itaque dignissim ac donec tempor, urna nam volutpat, wisi metus at a. Feugiat id eget senectus enim erat vel, varius lorem condimentum ad, magna neque, tellus quam dignissim cras, leo id atque urna</p>', '2019-10-25 18:27:20', '2019-10-25 18:27:20'),
(190, 'texts', 'text', 71, 'en', 'ou nous écrire', '2019-10-25 18:49:55', '2019-10-25 18:49:55'),
(191, 'data_rows', 'display_name', 22, 'en', 'Id', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(192, 'data_rows', 'display_name', 23, 'en', 'Name1', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(193, 'data_rows', 'display_name', 24, 'en', 'Name2', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(194, 'data_rows', 'display_name', 25, 'en', 'Name3', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(195, 'data_rows', 'display_name', 26, 'en', 'Logo1', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(196, 'data_rows', 'display_name', 27, 'en', 'Logo2', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(197, 'data_rows', 'display_name', 28, 'en', 'Logo3', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(198, 'data_rows', 'display_name', 29, 'en', 'Photo1', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(199, 'data_rows', 'display_name', 30, 'en', 'Photo2', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(200, 'data_rows', 'display_name', 31, 'en', 'Photo3', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(201, 'data_rows', 'display_name', 32, 'en', 'Titre', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(202, 'data_rows', 'display_name', 33, 'en', 'About1', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(203, 'data_rows', 'display_name', 34, 'en', 'About2', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(204, 'data_rows', 'display_name', 35, 'en', 'About3', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(205, 'data_rows', 'display_name', 36, 'en', 'Facebook', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(206, 'data_rows', 'display_name', 37, 'en', 'Youtube', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(207, 'data_rows', 'display_name', 38, 'en', 'Twitter', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(208, 'data_rows', 'display_name', 39, 'en', 'Instagram', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(209, 'data_rows', 'display_name', 40, 'en', 'Linkedin', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(210, 'data_rows', 'display_name', 41, 'en', 'Skype', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(211, 'data_rows', 'display_name', 42, 'en', 'Whatsapp', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(212, 'data_rows', 'display_name', 43, 'en', 'Mail1', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(213, 'data_rows', 'display_name', 44, 'en', 'Mail2', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(214, 'data_rows', 'display_name', 45, 'en', 'Mail3', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(215, 'data_rows', 'display_name', 46, 'en', 'Mail4', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(216, 'data_rows', 'display_name', 47, 'en', 'Mail5', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(217, 'data_rows', 'display_name', 48, 'en', 'Tel1', '2019-10-25 20:24:33', '2019-10-25 20:24:33'),
(218, 'data_rows', 'display_name', 49, 'en', 'Tel2', '2019-10-25 20:24:33', '2019-10-25 20:24:33'),
(219, 'data_rows', 'display_name', 50, 'en', 'Tel3', '2019-10-25 20:24:33', '2019-10-25 20:24:33'),
(220, 'data_rows', 'display_name', 51, 'en', 'Tel4', '2019-10-25 20:24:33', '2019-10-25 20:24:33'),
(221, 'data_rows', 'display_name', 52, 'en', 'Tel5', '2019-10-25 20:24:33', '2019-10-25 20:24:33'),
(222, 'data_rows', 'display_name', 53, 'en', 'Created At', '2019-10-25 20:24:33', '2019-10-25 20:24:33'),
(223, 'data_rows', 'display_name', 54, 'en', 'Updated At', '2019-10-25 20:24:33', '2019-10-25 20:24:33'),
(224, 'data_types', 'display_name_singular', 4, 'en', 'Entreprise', '2019-10-25 20:24:33', '2019-10-25 20:24:33'),
(225, 'data_types', 'display_name_plural', 4, 'en', 'Entreprises', '2019-10-25 20:24:33', '2019-10-25 20:24:33'),
(226, 'posts', 'title', 4, 'en', '5 Façons qui vont t\'aider à vite parler Anglais', '2019-10-25 23:38:39', '2019-10-25 23:38:39'),
(227, 'posts', 'description', 4, 'en', '<p>Elementum praesent tristique velit mollis. Sit sapien totam, dignissim diam sed at quis, amet tincidunt nam et quis, tortor sit nulla. Sit porttitor libero ut at et turpis, eu rhoncus blandit donec erat mauris sollicitudin, officia aptent consectetuer urna nulla. Alias consequat sem lacus porttitor ornare erat. Et vitae in curae quis risus, parturient sociis diam arcu odio nec, consectetuer malesuada tortor quis id nunc eu, facilisis sodales. At cras blandit felis vel id, consequat laoreet venenatis sem, mi ullamcorper curabitur urna morbi leo, lorem purus, vestibulum cursus rutrum curabitur augue tellus deserunt. Nullam quisque voluptates dolor amet integer id, amet justo orci pellentesque in pellentesque, odio pede tempor lectus in, cursus metus euismod, pharetra mollis ipsum. Phasellus magna condimentum semper, sit pellentesque tristique, voluptatem nec morbi nullam, soluta vel commodo massa aliquam leo ut, mauris porta id lectus. Fringilla pellentesque, amet ipsum odio at sapien aliquam, nullam adipiscing eu aliquam enim eget adipiscing. Adipiscing ac vestibulum, ipsum ut hendrerit duis lacus praesent, pellentesque eros non aliquet convallis, risus vel arcu. Nec aliquet dui lacus, dolor ante erat ipsum molestie arcu, vitae fusce ut laoreet maecenas nulla magna, vulputate libero pellentesque, magna vel amet ac convallis sem tortor.</p>\n<p>Sollicitudin mauris massa mi, diam morbi mi taciti amet aliquam, vel ornare. Proin wisi tempus, neque aliquam at. Congue id rhoncus nunc orci magna, vitae massa fringilla cum, suspendisse magni porttitor pellentesque ultrices risus, nibh venenatis curabitur accumsan erat libero quisque. Adipiscing justo nunc, consequat aenean lacus euismod hic sed. Ut integer, nulla tellus, aenean netus, elit interdum eget, sed elit eu sed consectetuer wisi id. Odio justo elit morbi, etiam ac, dolor penatibus sint libero scelerisque fringilla, id in fusce.</p>', '2019-10-25 23:38:39', '2019-10-25 23:38:39');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dav', 'dav@dav.com', 'users/default.png', NULL, '$2y$10$ukCIcpkuiiU5Wisafn/3NOChF9/FQJz3gGzuHNdpQoFkhrM00F1C6', NULL, NULL, '2019-10-10 15:21:34', '2019-10-10 15:21:35'),
(2, 3, 'Admin', 'admin@admin.com', 'users\\October2019\\H9C2JAJzY9rrWpAnIwwS.png', NULL, '$2y$10$9ZNiJjRMd7TKeM4N3b6j0.46c.Sp.G8Qy6UxvylDv7NTyg7UnscxO', NULL, '{\"locale\":\"fr\"}', '2019-10-24 09:55:57', '2019-10-24 10:00:10');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wink_authors`
--

CREATE TABLE `wink_authors` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wink_authors`
--

INSERT INTO `wink_authors` (`id`, `slug`, `name`, `email`, `password`, `bio`, `avatar`, `remember_token`, `created_at`, `updated_at`, `meta`) VALUES
('4a67406a-f291-41fc-be1a-092c34b302f1', 'regina-phalange', 'Regina Phalange', 'dav@dav.com', '$2y$10$ukCIcpkuiiU5Wisafn/3NOChF9/FQJz3gGzuHNdpQoFkhrM00F1C6', 'This is me.', NULL, NULL, '2019-10-12 11:44:46', '2019-10-12 11:44:46', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wink_pages`
--

CREATE TABLE `wink_pages` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wink_posts`
--

CREATE TABLE `wink_posts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `publish_date` datetime NOT NULL DEFAULT '2018-10-10 00:00:00',
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image_caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wink_posts`
--

INSERT INTO `wink_posts` (`id`, `slug`, `title`, `excerpt`, `body`, `published`, `publish_date`, `featured_image`, `featured_image_caption`, `author_id`, `created_at`, `updated_at`, `meta`) VALUES
('360c3602-b67b-492e-9192-02d14ed3d6cb', 'draft-360c3602-b67b-492e-9192-02d14ed3d6cb', 'Draft', '', '<p>u ksk sdsionsdio sdioin qsdfsdoins sidfos</p><div class=\"embedded_image\" contenteditable=\"false\" data-layout=\"default\"><img alt=\"\" src=\"/storage/wink/images/Kjm3VlUpNMUPXnF4441ZlugWm5CoVBp4ttj0mekF.jpeg\"></div><div class=\"inline_html\" contenteditable=\"false\">https://www.youtube.com/watch?v=_Kn6_0IRHck</div><div class=\"inline_html\" contenteditable=\"false\"><iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_Kn6_0IRHck\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe></div><div class=\"inline_html\" contenteditable=\"false\">https://www.youtube.com/watch?v=_Kn6_0IRHck</div><p><br></p>', 0, '2019-10-12 13:56:00', NULL, '', '4a67406a-f291-41fc-be1a-092c34b302f1', '2019-10-12 11:56:36', '2019-10-12 12:03:33', '{\"meta_description\":null,\"opengraph_title\":null,\"opengraph_description\":null,\"opengraph_image\":null,\"opengraph_image_width\":null,\"opengraph_image_height\":null,\"twitter_title\":null,\"twitter_description\":null,\"twitter_image\":null}');

-- --------------------------------------------------------

--
-- Structure de la table `wink_posts_tags`
--

CREATE TABLE `wink_posts_tags` (
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wink_tags`
--

CREATE TABLE `wink_tags` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `entreprises`
--
ALTER TABLE `entreprises`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_gallery_category_id_foreign` (`gallery_category_id`);

--
-- Index pour la table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `how_it_works`
--
ALTER TABLE `how_it_works`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `learns`
--
ALTER TABLE `learns`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `news_letters`
--
ALTER TABLE `news_letters`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `order_translations`
--
ALTER TABLE `order_translations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `p_items`
--
ALTER TABLE `p_items`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `p_item_price`
--
ALTER TABLE `p_item_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_item_price_p_item_id_foreign` (`p_item_id`),
  ADD KEY `p_item_price_price_id_foreign` (`price_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `s_items`
--
ALTER TABLE `s_items`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `s_item_service`
--
ALTER TABLE `s_item_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s_item_service_s_item_id_foreign` (`s_item_id`),
  ADD KEY `s_item_service_service_id_foreign` (`service_id`);

--
-- Index pour la table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`);

--
-- Index pour la table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Index pour la table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `translates`
--
ALTER TABLE `translates`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Index pour la table `wink_authors`
--
ALTER TABLE `wink_authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wink_authors_slug_unique` (`slug`),
  ADD UNIQUE KEY `wink_authors_email_unique` (`email`);

--
-- Index pour la table `wink_pages`
--
ALTER TABLE `wink_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wink_pages_slug_unique` (`slug`);

--
-- Index pour la table `wink_posts`
--
ALTER TABLE `wink_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wink_posts_slug_unique` (`slug`),
  ADD KEY `wink_posts_author_id_index` (`author_id`);

--
-- Index pour la table `wink_posts_tags`
--
ALTER TABLE `wink_posts_tags`
  ADD UNIQUE KEY `wink_posts_tags_post_id_tag_id_unique` (`post_id`,`tag_id`);

--
-- Index pour la table `wink_tags`
--
ALTER TABLE `wink_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wink_tags_slug_unique` (`slug`),
  ADD KEY `wink_tags_created_at_index` (`created_at`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `entreprises`
--
ALTER TABLE `entreprises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `how_it_works`
--
ALTER TABLE `how_it_works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `learns`
--
ALTER TABLE `learns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `news_letters`
--
ALTER TABLE `news_letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `order_translations`
--
ALTER TABLE `order_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `p_items`
--
ALTER TABLE `p_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `p_item_price`
--
ALTER TABLE `p_item_price`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `s_items`
--
ALTER TABLE `s_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `s_item_service`
--
ALTER TABLE `s_item_service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT pour la table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT pour la table `translates`
--
ALTER TABLE `translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_gallery_category_id_foreign` FOREIGN KEY (`gallery_category_id`) REFERENCES `gallery_categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `p_item_price`
--
ALTER TABLE `p_item_price`
  ADD CONSTRAINT `p_item_price_p_item_id_foreign` FOREIGN KEY (`p_item_id`) REFERENCES `p_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `p_item_price_price_id_foreign` FOREIGN KEY (`price_id`) REFERENCES `prices` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `s_item_service`
--
ALTER TABLE `s_item_service`
  ADD CONSTRAINT `s_item_service_s_item_id_foreign` FOREIGN KEY (`s_item_id`) REFERENCES `s_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `s_item_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
