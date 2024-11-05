-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 05, 2024 at 08:53 AM
-- Server version: 8.3.0
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `queti`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `familles`
--

DROP TABLE IF EXISTS `familles`;
CREATE TABLE IF NOT EXISTS `familles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom_ordre` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordre_id` bigint UNSIGNED NOT NULL,
  `tpa_id` bigint UNSIGNED NOT NULL,
  `tpp_id` bigint UNSIGNED NOT NULL,
  `npa_id` bigint UNSIGNED NOT NULL,
  `ta_id` bigint UNSIGNED NOT NULL,
  `taa_id` bigint UNSIGNED NOT NULL,
  `tar_id` bigint UNSIGNED NOT NULL,
  `nc_id` bigint UNSIGNED NOT NULL,
  `tc_id` bigint UNSIGNED NOT NULL,
  `fc_id` bigint UNSIGNED NOT NULL,
  `thab_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `familles_ordre_id_foreign` (`ordre_id`),
  KEY `familles_tpa_id_foreign` (`tpa_id`),
  KEY `familles_tpp_id_foreign` (`tpp_id`),
  KEY `familles_npa_id_foreign` (`npa_id`),
  KEY `familles_ta_id_foreign` (`ta_id`),
  KEY `familles_taa_id_foreign` (`taa_id`),
  KEY `familles_tar_id_foreign` (`tar_id`),
  KEY `familles_nc_id_foreign` (`nc_id`),
  KEY `familles_tc_id_foreign` (`tc_id`),
  KEY `familles_fc_id_foreign` (`fc_id`),
  KEY `familles_thab_id_foreign` (`thab_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `familles`
--

INSERT INTO `familles` (`id`, `nom_ordre`, `photo`, `description_1`, `description_2`, `ordre_id`, `tpa_id`, `tpp_id`, `npa_id`, `ta_id`, `taa_id`, `tar_id`, `nc_id`, `tc_id`, `fc_id`, `thab_id`) VALUES
(1, 'Criquet, grillon, sauterelle', 'a', 'b', 'c', 2, 1, 2, 2, 1, 1, 1, 1, 1, 1, 1),
(2, 'Libellule', 'a', 'b', 'c', 7, 1, 1, 2, 2, 1, 2, 1, 1, 1, 1),
(3, 'Demoiselle', 'a', 'b', 'c', 7, 1, 1, 2, 2, 1, 3, 1, 1, 1, 1),
(4, 'Mouches, moustiques, cousins', 'a', 'b', 'c', 4, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1),
(5, 'Éphémère', 'a', 'b', 'c', 3, 1, 1, 2, 2, 1, 1, 2, 3, 1, 1),
(6, 'Staphylins', 'a', 'b', 'c', 1, 1, 1, 2, 5, 2, 1, 2, 2, 4, 1),
(7, 'Coccinelle, scarabée, hanneton', 'a', 'b', 'c', 1, 1, 1, 2, 5, 2, 1, 1, 1, 1, 1),
(8, 'Punaise', 'a', 'b', 'c', 9, 1, 1, 2, 5, 3, 5, 1, 1, 1, 1),
(9, 'Cicadelle, cercope', 'a', 'b', 'c', 9, 1, 1, 2, 5, 3, 2, 1, 1, 1, 1),
(10, 'Puceron', 'a', 'b', 'c', 9, 1, 1, 3, 5, 1, 1, 1, 1, 2, 1),
(11, 'Blatte', 'a', 'b', 'c', 15, 1, 1, 2, 5, 3, 1, 2, 2, 3, 1),
(12, 'Perce-oreilles', 'a', 'b', 'c', 14, 1, 1, 2, 5, 2, 1, 2, 4, 1, 1),
(13, 'Trichoptère', 'a', 'b', 'c', 6, 1, 1, 2, 3, 1, 2, 1, 1, 1, 1),
(14, 'Plécoptère', 'a', 'b', 'c', 8, 1, 1, 2, 4, 1, 1, 2, 2, 1, 1),
(15, 'Fourmilion, chrysope', 'a', 'b', 'c', 11, 1, 1, 2, 4, 1, 2, 1, 1, 1, 1),
(16, 'Poisson d’argent', 'a', 'b', 'c', 12, 1, 1, 3, 1, 1, 1, 1, 1, 5, 1),
(17, 'Mante', 'a', 'b', 'c', 13, 2, 1, 2, 5, 3, 1, 1, 1, 1, 1),
(18, 'Guêpe, abeille, fourmis ailée', 'a', 'b', 'c', 10, 1, 1, 2, 4, 1, 1, 1, 1, 1, 2),
(19, 'Fourmis', 'a', 'b', 'c', 10, 1, 1, 3, 1, 1, 1, 1, 1, 1, 2),
(20, 'Papillon', 'a', 'b', 'c', 5, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1),
(21, 'Puceron ailé', 'a', 'b', 'c', 9, 1, 1, 2, 4, 1, 1, 1, 1, 2, 1),
(22, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, '', '', '', 'les champs ne sont pas dans l\'ordre des questions !!', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, '', '', '', 'on demande les pattes post avant les ante, on demande le type d\'aile avant le nombre (suivant la réponse on redemande le type d\'aile)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `favoris`
--

DROP TABLE IF EXISTS `favoris`;
CREATE TABLE IF NOT EXISTS `favoris` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `insect_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `favoris_insect_id_foreign` (`insect_id`),
  KEY `favoris_user_id_foreign` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forme_corps`
--

DROP TABLE IF EXISTS `forme_corps`;
CREATE TABLE IF NOT EXISTS `forme_corps` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `corps_forme` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forme_corps`
--

INSERT INTO `forme_corps` (`id`, `corps_forme`) VALUES
(1, 'Info superflue'),
(2, 'En poire'),
(3, 'Applati'),
(4, 'Allongé'),
(5, 'Allongé et brillant');

-- --------------------------------------------------------

--
-- Table structure for table `insects`
--

DROP TABLE IF EXISTS `insects`;
CREATE TABLE IF NOT EXISTS `insects` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom_sc` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_fr` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `famille_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `insects_famille_id_foreign` (`famille_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(128, '0001_01_01_000000_create_users_table', 1),
(129, '0001_01_01_000001_create_cache_table', 1),
(130, '0001_01_01_000002_create_jobs_table', 1),
(131, '2024_10_14_093055_create_personal_access_tokens_table', 1),
(132, '2024_10_17_073635_create_type_pattes_ante_table', 1),
(133, '2024_10_17_080345_create_type_pattes_post_table', 1),
(134, '2024_10_17_083122_create_nbr_paire_ailes_table', 1),
(135, '2024_10_17_083549_create_type_aile_table', 1),
(136, '2024_10_17_084236_create_type_ailes_ante_table', 1),
(137, '2024_10_17_084448_create_type_ailes_repos_table', 1),
(138, '2024_10_17_084701_create_nbr_cerques_table', 1),
(139, '2024_10_17_084950_create_type_cerques_table', 1),
(140, '2024_10_17_085133_create_forme_corps_table', 1),
(141, '2024_10_17_085244_create_thorax_abdomen_table', 1),
(142, '2024_10_17_091255_create_favoris_table', 1),
(143, '2024_10_17_091958_create_ordres_table', 1),
(144, '2024_10_17_092026_create_insects_table', 1),
(145, '2024_11_04_084836_create_familles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nbr_cerques`
--

DROP TABLE IF EXISTS `nbr_cerques`;
CREATE TABLE IF NOT EXISTS `nbr_cerques` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `cerque_nbr` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nbr_cerques`
--

INSERT INTO `nbr_cerques` (`id`, `cerque_nbr`) VALUES
(1, 0),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nbr_paire_ailes`
--

DROP TABLE IF EXISTS `nbr_paire_ailes`;
CREATE TABLE IF NOT EXISTS `nbr_paire_ailes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `paire_nbr` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nbr_paire_ailes`
--

INSERT INTO `nbr_paire_ailes` (`id`, `paire_nbr`) VALUES
(1, 1),
(2, 2),
(3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ordres`
--

DROP TABLE IF EXISTS `ordres`;
CREATE TABLE IF NOT EXISTS `ordres` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom_ordre` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ordres`
--

INSERT INTO `ordres` (`id`, `nom_ordre`) VALUES
(1, 'Coléoptère'),
(2, 'Orthoptère'),
(3, 'Ephémère'),
(4, 'Diptère'),
(5, 'Lépidoptère'),
(6, 'Trichoptère'),
(7, 'Odonate'),
(8, 'Plécoptères'),
(9, 'Hémiptère'),
(10, 'Hyménoptère'),
(11, 'Névroptère'),
(12, 'Zygentome'),
(13, 'Mantoptère'),
(14, 'Dermaptère'),
(15, 'Blattoptère');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thorax_abdomens`
--

DROP TABLE IF EXISTS `thorax_abdomens`;
CREATE TABLE IF NOT EXISTS `thorax_abdomens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tho_abd` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thorax_abdomens`
--

INSERT INTO `thorax_abdomens` (`id`, `tho_abd`) VALUES
(1, 'Ordinaire ou info superflue'),
(2, 'Taille fine');

-- --------------------------------------------------------

--
-- Table structure for table `type_ailes`
--

DROP TABLE IF EXISTS `type_ailes`;
CREATE TABLE IF NOT EXISTS `type_ailes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `aile_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_ailes`
--

INSERT INTO `type_ailes` (`id`, `aile_type`) VALUES
(1, 'Absente ou info superflue'),
(2, 'Opaques et écailleuses'),
(3, 'Opaques et poilues'),
(4, 'Transparentes'),
(5, 'Différentes');

-- --------------------------------------------------------

--
-- Table structure for table `type_ailes_antes`
--

DROP TABLE IF EXISTS `type_ailes_antes`;
CREATE TABLE IF NOT EXISTS `type_ailes_antes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `aile_ante_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_ailes_antes`
--

INSERT INTO `type_ailes_antes` (`id`, `aile_ante_type`) VALUES
(1, 'Absente ou info superflue'),
(2, 'Durcits'),
(3, 'Plus rigides que les ailes postérieures'),
(4, 'Grandes');

-- --------------------------------------------------------

--
-- Table structure for table `type_ailes_repos`
--

DROP TABLE IF EXISTS `type_ailes_repos`;
CREATE TABLE IF NOT EXISTS `type_ailes_repos` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `aile_repos_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_ailes_repos`
--

INSERT INTO `type_ailes_repos` (`id`, `aile_repos_type`) VALUES
(1, 'Info superflue'),
(2, 'Ouvertes à plat'),
(3, 'Fermées à la verticale au dessus du corps'),
(4, 'Fermées en toit'),
(5, 'Fermées en X');

-- --------------------------------------------------------

--
-- Table structure for table `type_cerques`
--

DROP TABLE IF EXISTS `type_cerques`;
CREATE TABLE IF NOT EXISTS `type_cerques` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `cerque_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_cerques`
--

INSERT INTO `type_cerques` (`id`, `cerque_type`) VALUES
(1, 'Aucun ou info superflue'),
(2, 'Courts'),
(3, 'Longs'),
(4, 'En pince');

-- --------------------------------------------------------

--
-- Table structure for table `type_pattes_antes`
--

DROP TABLE IF EXISTS `type_pattes_antes`;
CREATE TABLE IF NOT EXISTS `type_pattes_antes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `patte_ante_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_pattes_antes`
--

INSERT INTO `type_pattes_antes` (`id`, `patte_ante_type`) VALUES
(1, 'Ordinaire'),
(2, 'Pliable avec des crochets');

-- --------------------------------------------------------

--
-- Table structure for table `type_pattes_posts`
--

DROP TABLE IF EXISTS `type_pattes_posts`;
CREATE TABLE IF NOT EXISTS `type_pattes_posts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `patte_post_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_pattes_posts`
--

INSERT INTO `type_pattes_posts` (`id`, `patte_post_type`) VALUES
(1, 'Ordinaires'),
(2, 'Sauteuses');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
