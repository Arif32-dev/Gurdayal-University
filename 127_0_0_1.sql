-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2020 at 11:23 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--
CREATE DATABASE IF NOT EXISTS `wordpress` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wordpress`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-04-13 07:22:23', '2020-04-13 07:22:23', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_gmp_icons`
--

CREATE TABLE `wp_gmp_icons` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `path` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_gmp_icons`
--

INSERT INTO `wp_gmp_icons` (`id`, `title`, `description`, `path`) VALUES
(1, 'marker', 'blue,white,star,pin', 'bblue.png'),
(2, 'marker', 'green,white,star,pin', 'bgreen.png'),
(3, 'marker', 'purple,white,star,pin', 'purple.png'),
(4, 'marker', 'blue,white,star,pin', 'bred.png'),
(5, 'marker', 'blue,pin', 'blue.png'),
(6, 'marker', 'gray,pin', 'gray.png'),
(7, 'marker', 'green,pin', 'green.png'),
(8, 'marker', 'pin,yellow', 'orange.png'),
(9, 'marker', 'pin,red', 'red.png'),
(10, 'flag', 'gray', 'flag_black.png'),
(11, 'flag', 'blue', 'flag_blue.png'),
(12, 'flag', 'green', 'flag_green.png'),
(13, 'flag', 'orange', 'flag_orange.png'),
(14, 'flag', 'purple', 'flag_purple.png'),
(15, 'flag', 'red', 'flag_red.png'),
(16, 'marker', 'pin,cycle,blue', 'blue_circle.png'),
(17, 'marker', 'white,blue,pin', 'blue_orifice.png'),
(18, 'marker', 'blue,pin', 'blue_std.png'),
(19, 'pin', 'green,marker,cycle', 'green_circle.png'),
(20, 'pin', 'green,cycle', 'green_orifice.png'),
(21, 'pin', 'green', 'green_std.png'),
(22, 'pin', 'orange,cycle', 'orange_circle.png'),
(23, 'pin', 'orange,cycle', 'orange_orifice.png'),
(24, 'pin', 'orange', 'orange_std.png'),
(25, 'pin', 'purple,cycle', 'purple_circle.png'),
(26, 'pin', 'purple,cycle', 'purple_orifice.png'),
(27, 'pin', 'purple', 'purple_std.png'),
(28, 'pin', 'red,cycle', 'red_circle.png'),
(29, 'pin', 'red,cycle', 'red_orifice.png'),
(30, 'pin', 'red', 'red_std.png'),
(31, 'star', 'black,dark,pin', 'star_pin_black.png'),
(32, 'star', 'blue,pin', 'star_pin_blue.png'),
(33, 'star', 'green,pin', 'star_pin_green.png'),
(34, 'star', 'orange,pin', 'star_pin_orange.png'),
(35, 'star', 'purple', 'star_pin_purple.png'),
(36, 'star', 'red,pin', 'star_pin_red.png'),
(37, 'pin', 'gray,white,cycle', 'white_circlepng.png'),
(38, 'pin', 'gray,white,cycle', 'white_orifice.png'),
(39, 'pin', 'white,gray', 'white_std.png'),
(40, 'pin', 'yellow,cycle', 'yellow_circlepng.png'),
(41, 'pin', 'yellow,cycle', 'yellow_orifice.png'),
(42, 'pin', 'yellow', 'yellow_std.png'),
(43, 'marker', 'red', 'marker.png'),
(44, 'marker', 'blue', 'marker_blue.png'),
(45, 'marker', 'red,letter', 'markerA.png'),
(46, 'marker', 'orange', 'marker_orange.png'),
(47, 'marker', 'green', 'marker_green.png');

-- --------------------------------------------------------

--
-- Table structure for table `wp_gmp_maps`
--

CREATE TABLE `wp_gmp_maps` (
  `id` int(11) NOT NULL,
  `title` varchar(125) NOT NULL,
  `description` text DEFAULT NULL,
  `params` text DEFAULT NULL,
  `html_options` text NOT NULL,
  `create_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_gmp_markers`
--

CREATE TABLE `wp_gmp_markers` (
  `id` int(11) NOT NULL,
  `title` varchar(125) NOT NULL,
  `description` text DEFAULT NULL,
  `coord_x` varchar(30) NOT NULL,
  `coord_y` varchar(30) NOT NULL,
  `icon` int(11) DEFAULT NULL,
  `map_id` int(11) DEFAULT NULL,
  `marker_group_id` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `animation` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `params` text NOT NULL,
  `sort_order` smallint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) DEFAULT NULL,
  `period_from` date DEFAULT NULL,
  `period_to` date DEFAULT NULL,
  `hash` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_gmp_marker_groups`
--

CREATE TABLE `wp_gmp_marker_groups` (
  `id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `params` text DEFAULT NULL,
  `parent` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` smallint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_gmp_marker_groups_relation`
--

CREATE TABLE `wp_gmp_marker_groups_relation` (
  `id` int(11) NOT NULL,
  `marker_id` int(11) NOT NULL,
  `groups_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_gmp_membership_presets`
--

CREATE TABLE `wp_gmp_membership_presets` (
  `maps_id` int(11) NOT NULL,
  `allow_use` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_gmp_modules`
--

CREATE TABLE `wp_gmp_modules` (
  `id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `type_id` smallint(3) NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `has_tab` tinyint(1) NOT NULL DEFAULT 0,
  `label` varchar(128) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `ex_plug_dir` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_gmp_modules`
--

INSERT INTO `wp_gmp_modules` (`id`, `code`, `active`, `type_id`, `params`, `has_tab`, `label`, `description`, `ex_plug_dir`) VALUES
(1, 'adminmenu', 1, 1, '', 0, 'Admin Menu', '', NULL),
(2, 'options', 1, 1, '', 1, 'Options', '', NULL),
(3, 'user', 1, 1, '', 1, 'Users', '', NULL),
(4, 'templates', 1, 1, '', 1, 'Templates for Plugin', '', NULL),
(5, 'shortcodes', 1, 6, '', 0, 'Shortcodes', 'Shortcodes data', NULL),
(6, 'gmap', 1, 1, '', 1, 'Gmap', 'Gmap', NULL),
(7, 'marker', 1, 1, '', 0, 'Markers', 'Google Maps Markers', NULL),
(8, 'marker_groups', 1, 1, '', 0, 'Marker Gropus', 'Marker Groups', NULL),
(9, 'supsystic_promo', 1, 1, '', 0, 'Promo', 'Promo', NULL),
(10, 'icons', 1, 1, '', 1, 'Marker Icons', 'Marker Icons', NULL),
(11, 'mail', 1, 1, '', 1, 'mail', 'mail', NULL),
(12, 'membership', 1, 1, '', 1, 'membership', 'membership', NULL),
(13, 'csv', 1, 1, '', 0, 'csv', 'csv', NULL),
(14, 'gmap_widget', 1, 1, '', 0, 'gmap_widget', 'gmap_widget', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_gmp_modules_type`
--

CREATE TABLE `wp_gmp_modules_type` (
  `id` int(11) NOT NULL,
  `label` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_gmp_modules_type`
--

INSERT INTO `wp_gmp_modules_type` (`id`, `label`) VALUES
(1, 'system'),
(4, 'widget'),
(6, 'addons'),
(7, 'template');

-- --------------------------------------------------------

--
-- Table structure for table `wp_gmp_options`
--

CREATE TABLE `wp_gmp_options` (
  `id` int(11) NOT NULL,
  `code` varchar(64) CHARACTER SET latin1 NOT NULL,
  `value` text DEFAULT NULL,
  `label` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `description` text CHARACTER SET latin1 DEFAULT NULL,
  `htmltype_id` smallint(2) NOT NULL DEFAULT 1,
  `params` text DEFAULT NULL,
  `cat_id` mediumint(3) DEFAULT 0,
  `sort_order` mediumint(3) DEFAULT 0,
  `value_type` varchar(16) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_gmp_options`
--

INSERT INTO `wp_gmp_options` (`id`, `code`, `value`, `label`, `description`, `htmltype_id`, `params`, `cat_id`, `sort_order`, `value_type`) VALUES
(1, 'save_statistic', '0', 'Send statistic', NULL, 1, NULL, 0, 0, NULL),
(2, 'infowindow_size', 'a:2:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"100\";}', 'Info Window Size', NULL, 1, NULL, 0, 0, 'array');

-- --------------------------------------------------------

--
-- Table structure for table `wp_gmp_options_categories`
--

CREATE TABLE `wp_gmp_options_categories` (
  `id` int(11) NOT NULL,
  `label` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_gmp_options_categories`
--

INSERT INTO `wp_gmp_options_categories` (`id`, `label`) VALUES
(1, 'General'),
(2, 'Template'),
(3, 'Subscribe'),
(4, 'Social');

-- --------------------------------------------------------

--
-- Table structure for table `wp_gmp_usage_stat`
--

CREATE TABLE `wp_gmp_usage_stat` (
  `id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `visits` int(11) NOT NULL DEFAULT 0,
  `spent_time` int(11) NOT NULL DEFAULT 0,
  `modify_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_gmp_usage_stat`
--

INSERT INTO `wp_gmp_usage_stat` (`id`, `code`, `visits`, `spent_time`, `modify_timestamp`) VALUES
(1, 'installed', 1, 0, '2020-04-16 12:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/practice/wordpress', 'yes'),
(2, 'home', 'http://localhost/practice/wordpress', 'yes'),
(3, 'blogname', 'Gurudayal University', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dxridder0024@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '2', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:219:{s:8:\"event/?$\";s:25:\"index.php?post_type=event\";s:38:\"event/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:33:\"event/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:25:\"event/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:10:\"program/?$\";s:27:\"index.php?post_type=program\";s:40:\"program/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:35:\"program/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:27:\"program/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:9:\"campus/?$\";s:26:\"index.php?post_type=campus\";s:39:\"campus/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:34:\"campus/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:26:\"campus/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=campus&paged=$matches[1]\";s:12:\"professor/?$\";s:29:\"index.php?post_type=professor\";s:42:\"professor/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=professor&feed=$matches[1]\";s:37:\"professor/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=professor&feed=$matches[1]\";s:29:\"professor/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=professor&paged=$matches[1]\";s:7:\"note/?$\";s:24:\"index.php?post_type=note\";s:37:\"note/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=note&feed=$matches[1]\";s:32:\"note/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=note&feed=$matches[1]\";s:24:\"note/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=note&paged=$matches[1]\";s:7:\"like/?$\";s:24:\"index.php?post_type=like\";s:37:\"like/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=like&feed=$matches[1]\";s:32:\"like/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=like&feed=$matches[1]\";s:24:\"like/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=like&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"event/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"event/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"event/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"event/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:26:\"event/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:46:\"event/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:41:\"event/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:34:\"event/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:41:\"event/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:30:\"event/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:22:\"event/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"event/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"event/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"program/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"program/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"program/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"program/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"program/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"program/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"program/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:28:\"program/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:48:\"program/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:43:\"program/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:36:\"program/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:43:\"program/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:32:\"program/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:24:\"program/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"program/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"program/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"program/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"program/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"program/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"campus/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"campus/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"campus/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"campus/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"campus/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"campus/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"campus/([^/]+)/embed/?$\";s:39:\"index.php?campus=$matches[1]&embed=true\";s:27:\"campus/([^/]+)/trackback/?$\";s:33:\"index.php?campus=$matches[1]&tb=1\";s:47:\"campus/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:42:\"campus/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:35:\"campus/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&paged=$matches[2]\";s:42:\"campus/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&cpage=$matches[2]\";s:31:\"campus/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?campus=$matches[1]&page=$matches[2]\";s:23:\"campus/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"campus/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"campus/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"campus/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"campus/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"campus/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"professor/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"professor/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"professor/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"professor/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"professor/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"professor/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"professor/(.+?)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:28:\"professor/(.+?)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:48:\"professor/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?professor=$matches[1]&feed=$matches[2]\";s:43:\"professor/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?professor=$matches[1]&feed=$matches[2]\";s:36:\"professor/(.+?)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:43:\"professor/(.+?)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:32:\"professor/(.+?)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:32:\"note/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"note/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"note/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"note/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"note/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"note/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"note/([^/]+)/embed/?$\";s:37:\"index.php?note=$matches[1]&embed=true\";s:25:\"note/([^/]+)/trackback/?$\";s:31:\"index.php?note=$matches[1]&tb=1\";s:45:\"note/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?note=$matches[1]&feed=$matches[2]\";s:40:\"note/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?note=$matches[1]&feed=$matches[2]\";s:33:\"note/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?note=$matches[1]&paged=$matches[2]\";s:40:\"note/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?note=$matches[1]&cpage=$matches[2]\";s:29:\"note/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?note=$matches[1]&page=$matches[2]\";s:21:\"note/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"note/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"note/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"note/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"note/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"note/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"like/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"like/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"like/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"like/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"like/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"like/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"like/([^/]+)/embed/?$\";s:37:\"index.php?like=$matches[1]&embed=true\";s:25:\"like/([^/]+)/trackback/?$\";s:31:\"index.php?like=$matches[1]&tb=1\";s:45:\"like/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?like=$matches[1]&feed=$matches[2]\";s:40:\"like/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?like=$matches[1]&feed=$matches[2]\";s:33:\"like/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?like=$matches[1]&paged=$matches[2]\";s:40:\"like/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?like=$matches[1]&cpage=$matches[2]\";s:29:\"like/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?like=$matches[1]&page=$matches[2]\";s:21:\"like/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"like/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"like/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"like/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"like/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"like/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=18&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:19:\"members/members.php\";i:3;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:4;s:67:\"what-template-file-am-i-viewing/what-template-file-am-i-viewing.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'fictional-university-theme', 'yes'),
(41, 'stylesheet', 'fictional-university-theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}s:24:\"google-maps-easy/gmp.php\";a:2:{i:0;s:8:\"utilsGmp\";i:1;s:12:\"deletePlugin\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '26', 'yes'),
(84, 'page_on_front', '18', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1602314522', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:76:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:16:\"restrict_content\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:12:\"delete_roles\";b:1;s:10:\"edit_roles\";b:1;s:10:\"edit_notes\";b:1;s:17:\"edit_others_notes\";b:1;s:12:\"delete_notes\";b:1;s:13:\"publish_notes\";b:1;s:18:\"read_private_notes\";b:1;s:20:\"delete_private_notes\";b:1;s:22:\"delete_published_notes\";b:1;s:19:\"delete_others_notes\";b:1;s:18:\"edit_private_notes\";b:1;s:20:\"edit_published_notes\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:4:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_notes\";b:1;s:10:\"edit_notes\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:4;a:1:{s:5:\"title\";s:11:\"Search here\";}}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:8:\"search-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:8:{i:1588328291;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1588360954;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1588360955;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1588404148;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588404176;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588404180;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588663349;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(115, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1586763994;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1588324675;s:7:\"checked\";a:5:{s:9:\"blogtheme\";s:0:\"\";s:26:\"fictional-university-theme\";s:3:\"0.1\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(130, 'can_compress_scripts', '1', 'no'),
(145, 'theme_mods_fictional-university-master/fictional-university-theme', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1586763988;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(146, 'current_theme', 'Gurudayal University Theme', 'yes'),
(147, 'theme_switched', '', 'yes'),
(148, 'recently_activated', 'a:0:{}', 'yes'),
(153, 'theme_mods_fictional-university-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:12:\"primary_menu\";i:2;s:11:\"footer_menu\";i:0;s:16:\"login_and_signin\";i:5;s:6:\"logout\";i:0;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(164, 'recovery_mode_email_last_sent', '1588235060', 'yes'),
(169, 'theme_mods_blogtheme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1586789432;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(175, 'acf_version', '5.8.9', 'yes'),
(196, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(205, '_transient_health-check-site-status-result', '{\"good\":\"10\",\"recommended\":\"7\",\"critical\":\"0\"}', 'yes'),
(237, 'wp_gmp_mg_cleared_inv', '1', 'yes'),
(238, 'wp_gmp_db_version', '1.9.28', 'yes'),
(239, 'wp_gmp_db_installed', '1', 'yes'),
(240, 'gmp_def_icons_installed', '1', 'yes'),
(241, 'gmp_plugin_activation_errors', '', 'yes'),
(242, 'widget_gmpmapswidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(243, 'gmp_opts_data', 'a:6:{s:10:\"api_domain\";a:2:{s:5:\"value\";s:28:\"https://maps.googleapis.com/\";s:10:\"changed_on\";i:1587039501;}s:12:\"user_api_key\";a:2:{s:5:\"value\";s:39:\"AIzaSyCHzkWdAoLYQ8-Uk-EX88Ft1jqFnc5vzTE\";s:10:\"changed_on\";i:1587039501;}s:10:\"send_stats\";a:1:{s:5:\"value\";s:1:\"0\";}s:13:\"add_love_link\";a:1:{s:5:\"value\";s:1:\"0\";}s:12:\"access_roles\";a:2:{s:5:\"value\";a:1:{i:0;s:13:\"administrator\";}s:10:\"changed_on\";i:1587039501;}s:11:\"start_usage\";a:2:{s:5:\"value\";i:1587039361;s:10:\"changed_on\";i:1587039361;}}', 'yes'),
(246, 'category_children', 'a:0:{}', 'yes'),
(288, 'WPLANG', '', 'yes'),
(289, 'new_admin_email', 'dxridder0024@gmail.com', 'yes'),
(366, 'theme_mods_twentynineteen', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:2;s:6:\"footer\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:13:\"primary_color\";s:6:\"custom\";s:17:\"primary_color_hue\";i:306;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1587386877;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:8:\"search-4\";}}}}', 'yes'),
(368, 'theme_switch_menu_locations', 'a:2:{s:6:\"menu-1\";i:2;s:6:\"footer\";i:3;}', 'yes'),
(369, 'theme_switched_via_customizer', '', 'yes'),
(370, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(395, '_site_transient_timeout_browser_952637548dc3e67d2638455ee5804af8', '1588369906', 'no'),
(396, '_site_transient_browser_952637548dc3e67d2638455ee5804af8', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.122\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(403, 'members_addons_migrated', '1', 'yes'),
(404, 'widget_members-widget-login', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(405, 'widget_members-widget-users', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(476, '_site_transient_timeout_php_check_fb6df547cfb7d95cb9b49b8301cad3ab', '1588588089', 'no'),
(477, '_site_transient_php_check_fb6df547cfb7d95cb9b49b8301cad3ab', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(550, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1588324666;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:0:{}}', 'no'),
(551, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"dxridder0024@gmail.com\";s:7:\"version\";s:5:\"5.4.1\";s:9:\"timestamp\";i:1588234434;}', 'no'),
(552, '_site_transient_timeout_browser_267bde5badd5f244b85b83450accebb5', '1588839329', 'no'),
(553, '_site_transient_browser_267bde5badd5f244b85b83450accebb5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.129\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(577, '_site_transient_timeout_theme_roots', '1588326472', 'no'),
(578, '_site_transient_theme_roots', 'a:6:{s:9:\"blogtheme\";s:7:\"/themes\";s:26:\"fictional-university-theme\";s:7:\"/themes\";s:10:\"strangerwp\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(579, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1588324681;s:7:\"checked\";a:7:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.9\";s:19:\"akismet/akismet.php\";s:5:\"4.1.4\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:9:\"hello.php\";s:5:\"1.7.2\";s:19:\"members/members.php\";s:5:\"3.0.5\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.3\";s:67:\"what-template-file-am-i-viewing/what-template-file-am-i-viewing.php\";s:3:\"1.2\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"members/members.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/members\";s:4:\"slug\";s:7:\"members\";s:6:\"plugin\";s:19:\"members/members.php\";s:11:\"new_version\";s:5:\"3.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/members/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/members.3.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/members/assets/icon-256x256.png?rev=2126126\";s:2:\"1x\";s:60:\"https://ps.w.org/members/assets/icon-128x128.png?rev=2126126\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/members/assets/banner-1544x500.png?rev=2126126\";s:2:\"1x\";s:62:\"https://ps.w.org/members/assets/banner-772x250.png?rev=2126126\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.9\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.3\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}s:67:\"what-template-file-am-i-viewing/what-template-file-am-i-viewing.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:45:\"w.org/plugins/what-template-file-am-i-viewing\";s:4:\"slug\";s:31:\"what-template-file-am-i-viewing\";s:6:\"plugin\";s:67:\"what-template-file-am-i-viewing/what-template-file-am-i-viewing.php\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:62:\"https://wordpress.org/plugins/what-template-file-am-i-viewing/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/what-template-file-am-i-viewing.1.2.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:82:\"https://s.w.org/plugins/geopattern-icon/what-template-file-am-i-viewing_9a9488.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:85:\"https://ps.w.org/what-template-file-am-i-viewing/assets/banner-772x250.png?rev=546775\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(581, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1588368013', 'no'),
(582, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:1:{i:0;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:23:\"WordCamp España Online\";s:3:\"url\";s:31:\"https://2020.spain.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-05-06 14:00:00\";s:8:\"end_date\";s:19:\"2020-05-09 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"ES\";s:8:\"latitude\";d:40.463667;s:9:\"longitude\";d:-3.74922;}}}}', 'no'),
(583, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1588368031', 'no'),
(584, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 0 bytes received</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 0 out of 0 bytes received</p></div>', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 1, '_edit_lock', '1586790625:1'),
(5, 1, '_edit_last', '1'),
(10, 6, '_edit_last', '1'),
(11, 6, '_edit_lock', '1587386344:1'),
(14, 8, '_edit_last', '1'),
(17, 8, '_edit_lock', '1586790711:1'),
(18, 10, '_edit_last', '1'),
(21, 10, '_edit_lock', '1586790733:1'),
(22, 12, '_edit_last', '1'),
(25, 12, '_edit_lock', '1586792348:1'),
(26, 14, '_edit_last', '1'),
(27, 14, '_edit_lock', '1587278670:1'),
(36, 18, '_edit_last', '1'),
(37, 18, '_edit_lock', '1586844003:1'),
(38, 20, '_edit_last', '1'),
(39, 20, '_edit_lock', '1587131961:1'),
(40, 22, '_edit_last', '1'),
(41, 22, '_edit_lock', '1587112320:1'),
(44, 26, '_edit_last', '1'),
(45, 26, '_edit_lock', '1586880156:1'),
(46, 28, '_menu_item_type', 'post_type'),
(47, 28, '_menu_item_menu_item_parent', '0'),
(48, 28, '_menu_item_object_id', '26'),
(49, 28, '_menu_item_object', 'page'),
(50, 28, '_menu_item_target', ''),
(51, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 28, '_menu_item_xfn', ''),
(53, 28, '_menu_item_url', ''),
(64, 30, '_menu_item_type', 'post_type'),
(65, 30, '_menu_item_menu_item_parent', '0'),
(66, 30, '_menu_item_object_id', '22'),
(67, 30, '_menu_item_object', 'page'),
(68, 30, '_menu_item_target', ''),
(69, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(70, 30, '_menu_item_xfn', ''),
(71, 30, '_menu_item_url', ''),
(73, 31, '_menu_item_type', 'post_type'),
(74, 31, '_menu_item_menu_item_parent', '0'),
(75, 31, '_menu_item_object_id', '20'),
(76, 31, '_menu_item_object', 'page'),
(77, 31, '_menu_item_target', ''),
(78, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(79, 31, '_menu_item_xfn', ''),
(80, 31, '_menu_item_url', ''),
(82, 32, '_menu_item_type', 'post_type'),
(83, 32, '_menu_item_menu_item_parent', '0'),
(84, 32, '_menu_item_object_id', '18'),
(85, 32, '_menu_item_object', 'page'),
(86, 32, '_menu_item_target', ''),
(87, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 32, '_menu_item_xfn', ''),
(89, 32, '_menu_item_url', ''),
(127, 38, '_edit_last', '1'),
(128, 38, '_edit_lock', '1586848632:1'),
(129, 40, '_edit_last', '1'),
(130, 40, '_edit_lock', '1587368842:1'),
(131, 38, '_wp_trash_meta_status', 'publish'),
(132, 38, '_wp_trash_meta_time', '1586848880'),
(133, 38, '_wp_desired_post_slug', 'group_5e95626046b25'),
(134, 39, '_wp_trash_meta_status', 'publish'),
(135, 39, '_wp_trash_meta_time', '1586848880'),
(136, 39, '_wp_desired_post_slug', 'field_5e956292076ae'),
(137, 41, '_edit_last', '1'),
(138, 41, '_edit_lock', '1587368597:1'),
(139, 42, '_edit_last', '1'),
(140, 42, '_edit_lock', '1587368582:1'),
(141, 43, '_edit_last', '1'),
(142, 43, '_edit_lock', '1586871297:1'),
(143, 44, '_edit_last', '1'),
(144, 44, '_edit_lock', '1586871371:1'),
(145, 45, '_edit_last', '1'),
(146, 45, '_edit_lock', '1587368606:1'),
(147, 46, '_edit_last', '1'),
(148, 46, '_edit_lock', '1586872420:1'),
(149, 41, 'manage_events_date', '20200506'),
(150, 41, '_manage_events_date', 'field_5e95a475bb5f1'),
(151, 45, 'manage_events_date', '20200601'),
(152, 45, '_manage_events_date', 'field_5e95a475bb5f1'),
(153, 44, 'manage_events_date', '20200705'),
(154, 44, '_manage_events_date', 'field_5e95a475bb5f1'),
(155, 40, 'manage_events_date', '20180102'),
(156, 40, '_manage_events_date', 'field_5e95a475bb5f1'),
(157, 43, 'manage_events_date', '20180712'),
(158, 43, '_manage_events_date', 'field_5e95a475bb5f1'),
(159, 42, 'manage_events_date', '20171019'),
(160, 42, '_manage_events_date', 'field_5e95a475bb5f1'),
(161, 48, '_edit_last', '1'),
(162, 48, '_edit_lock', '1587944540:1'),
(163, 22, 'page_hero_title', 'Eventsasfd'),
(164, 22, '_page_hero_title', 'field_5e95cdea9e9e6'),
(165, 22, 'page_hero_subtitle', 'Events that are mesmerizing'),
(166, 22, '_page_hero_subtitle', 'field_5e95ce27729fb'),
(167, 51, 'page_hero_title', 'Events'),
(168, 51, '_page_hero_title', 'field_5e95cdea9e9e6'),
(169, 51, 'page_hero_subtitle', 'Events that are mesmerizing'),
(170, 51, '_page_hero_subtitle', 'field_5e95ce27729fb'),
(171, 52, 'page_hero_title', 'Eventsasfd'),
(172, 52, '_page_hero_title', 'field_5e95cdea9e9e6'),
(173, 52, 'page_hero_subtitle', 'Events that are mesmerizing'),
(174, 52, '_page_hero_subtitle', 'field_5e95ce27729fb'),
(175, 22, 'page_subtitle', 'Events that are mesmerizing'),
(176, 22, '_page_subtitle', 'field_5e95ce27729fb'),
(177, 53, 'page_hero_title', 'Eventsasfd'),
(178, 53, '_page_hero_title', 'field_5e95cdea9e9e6'),
(179, 53, 'page_hero_subtitle', 'Events that are mesmerizing'),
(180, 53, '_page_hero_subtitle', 'field_5e95ce27729fb'),
(181, 53, 'page_subtitle', 'Events that are mesmerizing'),
(182, 53, '_page_subtitle', 'field_5e95ce27729fb'),
(187, 56, '_wp_attached_file', '2020/04/Hero-Image.jpg'),
(188, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1341;s:6:\"height\";i:984;s:4:\"file\";s:22:\"2020/04/Hero-Image.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Hero-Image-300x220.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"Hero-Image-1024x751.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:751;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Hero-Image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"Hero-Image-768x564.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:564;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:22:\"Hero-Image-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:22:\"Hero-Image-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:23:\"Hero-Image-1341x350.jpg\";s:5:\"width\";i:1341;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(189, 22, 'page_hero_image', '58'),
(190, 22, '_page_hero_image', 'field_5e95cff4a5676'),
(191, 57, 'page_hero_title', 'Eventsasfd'),
(192, 57, '_page_hero_title', 'field_5e95cdea9e9e6'),
(193, 57, 'page_hero_subtitle', 'Events that are mesmerizing'),
(194, 57, '_page_hero_subtitle', 'field_5e95ce27729fb'),
(195, 57, 'page_subtitle', 'Events that are mesmerizing'),
(196, 57, '_page_subtitle', 'field_5e95ce27729fb'),
(197, 57, 'page_hero_image', '56'),
(198, 57, '_page_hero_image', 'field_5e95cff4a5676'),
(199, 58, '_wp_attached_file', '2020/04/auditorium-benches-chairs-class-207691.jpg'),
(200, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:914;s:4:\"file\";s:50:\"2020/04/auditorium-benches-chairs-class-207691.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"auditorium-benches-chairs-class-207691-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"auditorium-benches-chairs-class-207691-1024x731.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:731;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"auditorium-benches-chairs-class-207691-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"auditorium-benches-chairs-class-207691-768x548.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:548;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:50:\"auditorium-benches-chairs-class-207691-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:50:\"auditorium-benches-chairs-class-207691-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:51:\"auditorium-benches-chairs-class-207691-1280x350.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(201, 59, 'page_hero_title', 'Eventsasfd'),
(202, 59, '_page_hero_title', 'field_5e95cdea9e9e6'),
(203, 59, 'page_hero_subtitle', 'Events that are mesmerizing'),
(204, 59, '_page_hero_subtitle', 'field_5e95ce27729fb'),
(205, 59, 'page_subtitle', 'Events that are mesmerizing'),
(206, 59, '_page_subtitle', 'field_5e95ce27729fb'),
(207, 59, 'page_hero_image', '58'),
(208, 59, '_page_hero_image', 'field_5e95cff4a5676'),
(209, 60, '_wp_attached_file', '2020/04/apple-background-desk-electronics-399161.jpg'),
(210, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:52:\"2020/04/apple-background-desk-electronics-399161.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"apple-background-desk-electronics-399161-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:53:\"apple-background-desk-electronics-399161-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"apple-background-desk-electronics-399161-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"apple-background-desk-electronics-399161-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:52:\"apple-background-desk-electronics-399161-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:52:\"apple-background-desk-electronics-399161-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:53:\"apple-background-desk-electronics-399161-1280x350.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(217, 62, '_wp_attached_file', '2020/04/Gallery-1.jpg'),
(218, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2020/04/Gallery-1.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Gallery-1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"Gallery-1-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Gallery-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"Gallery-1-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"Gallery-1-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:21:\"Gallery-1-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:22:\"Gallery-1-1280x350.jpg\";s:5:\"width\";i:1280;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(219, 20, 'page_subtitle', 'Programs that describe deeds'),
(220, 20, '_page_subtitle', 'field_5e95ce27729fb'),
(221, 20, 'page_hero_image', '62'),
(222, 20, '_page_hero_image', 'field_5e95cff4a5676'),
(223, 63, 'page_subtitle', 'Programs that describe deeds'),
(224, 63, '_page_subtitle', 'field_5e95ce27729fb'),
(225, 63, 'page_hero_image', '62'),
(226, 63, '_page_hero_image', 'field_5e95cff4a5676'),
(227, 64, '_wp_attached_file', '2020/04/Blog-2.jpg'),
(228, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:18:\"2020/04/Blog-2.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"Blog-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"Blog-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:18:\"Blog-2-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:18:\"Blog-2-480x426.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:426;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:18:\"Blog-2-640x350.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(229, 26, 'page_subtitle', 'A world of knowledge'),
(230, 26, '_page_subtitle', 'field_5e95ce27729fb'),
(231, 26, 'page_hero_image', '64'),
(232, 26, '_page_hero_image', 'field_5e95cff4a5676'),
(233, 65, 'page_subtitle', 'A world of knowledge'),
(234, 65, '_page_subtitle', 'field_5e95ce27729fb'),
(235, 65, 'page_hero_image', '64'),
(236, 65, '_page_hero_image', 'field_5e95cff4a5676'),
(237, 66, 'page_subtitle', 'Programs that describe deeds'),
(238, 66, '_page_subtitle', 'field_5e95ce27729fb'),
(239, 66, 'page_hero_image', ''),
(240, 66, '_page_hero_image', 'field_5e95cff4a5676'),
(241, 67, 'page_subtitle', 'Programs that describe deeds'),
(242, 67, '_page_subtitle', 'field_5e95ce27729fb'),
(243, 67, 'page_hero_image', '62'),
(244, 67, '_page_hero_image', 'field_5e95cff4a5676'),
(245, 69, '_edit_last', '1'),
(246, 69, '_edit_lock', '1587110794:1'),
(254, 75, '_edit_last', '1'),
(255, 75, '_edit_lock', '1587369431:1'),
(256, 78, '_edit_last', '1'),
(257, 78, '_edit_lock', '1587365599:1'),
(258, 78, 'related_campus', 'a:2:{i:0;s:2:\"87\";i:1;s:2:\"91\";}'),
(259, 78, '_related_campus', 'field_5e986efb64c21'),
(260, 79, '_edit_last', '1'),
(261, 79, '_edit_lock', '1587295030:1'),
(262, 79, 'related_campus', 'a:1:{i:0;s:2:\"91\";}'),
(263, 79, '_related_campus', 'field_5e986efb64c21'),
(264, 80, '_edit_last', '1'),
(265, 80, '_edit_lock', '1587371285:1'),
(266, 80, 'related_campus', 'a:1:{i:0;s:2:\"87\";}'),
(267, 80, '_related_campus', 'field_5e986efb64c21'),
(268, 81, '_edit_last', '1'),
(269, 81, '_edit_lock', '1587944524:1'),
(270, 81, 'related_campus', 'a:1:{i:0;s:2:\"91\";}'),
(271, 81, '_related_campus', 'field_5e986efb64c21'),
(275, 83, '_edit_last', '1'),
(276, 83, '_edit_lock', '1587984184:1'),
(277, 83, 'page_subtitle', ''),
(278, 83, '_page_subtitle', 'field_5e95ce27729fb'),
(279, 83, 'page_hero_image', '60'),
(280, 83, '_page_hero_image', 'field_5e95cff4a5676'),
(281, 84, 'page_subtitle', ''),
(282, 84, '_page_subtitle', 'field_5e95ce27729fb'),
(283, 84, 'page_hero_image', '60'),
(284, 84, '_page_hero_image', 'field_5e95cff4a5676'),
(285, 85, '_menu_item_type', 'post_type'),
(286, 85, '_menu_item_menu_item_parent', '0'),
(287, 85, '_menu_item_object_id', '83'),
(288, 85, '_menu_item_object', 'page'),
(289, 85, '_menu_item_target', ''),
(290, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(291, 85, '_menu_item_xfn', ''),
(292, 85, '_menu_item_url', ''),
(293, 85, '_menu_item_orphaned', '1587049744'),
(294, 86, '_menu_item_type', 'post_type'),
(295, 86, '_menu_item_menu_item_parent', '0'),
(296, 86, '_menu_item_object_id', '83'),
(297, 86, '_menu_item_object', 'page'),
(298, 86, '_menu_item_target', ''),
(299, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(300, 86, '_menu_item_xfn', ''),
(301, 86, '_menu_item_url', ''),
(303, 87, '_edit_last', '1'),
(304, 87, '_edit_lock', '1587114316:1'),
(305, 87, 'address', 'Menlo Park, California, United States'),
(306, 87, '_address', 'field_5e98522bfe5ed'),
(307, 87, 'phone_number', '+1 202 555 0156'),
(308, 87, '_phone_number', 'field_5e985250fe5ee'),
(309, 87, 'google_url', 'https://maps.google.com/maps?q=university%20of%20san%20francisco&t=&z=13&ie=UTF8&iwloc=&output=embed'),
(310, 87, '_google_url', 'field_5e99631d79e93'),
(313, 89, 'page_subtitle', ''),
(314, 89, '_page_subtitle', 'field_5e95ce27729fb'),
(315, 89, 'page_hero_image', '60'),
(316, 89, '_page_hero_image', 'field_5e95cff4a5676'),
(317, 90, 'page_subtitle', ''),
(318, 90, '_page_subtitle', 'field_5e95ce27729fb'),
(319, 90, 'page_hero_image', '60'),
(320, 90, '_page_hero_image', 'field_5e95cff4a5676'),
(324, 91, '_edit_last', '1'),
(325, 91, '_edit_lock', '1587114388:1'),
(326, 91, 'address', 'Kishoreganj 2300, Kishoreganj, Dhaka, Bangladesh'),
(327, 91, '_address', 'field_5e98522bfe5ed'),
(328, 91, 'phone_number', '+8801891852840'),
(329, 91, '_phone_number', 'field_5e985250fe5ee'),
(330, 91, 'google_url', 'https://maps.google.com/maps?q=Gurudoyal%20College&t=k&z=19&ie=UTF8&iwloc=&output=embed'),
(331, 91, '_google_url', 'field_5e99631d79e93'),
(332, 92, '_edit_last', '1'),
(333, 92, '_edit_lock', '1587132002:1'),
(334, 92, '_wp_trash_meta_status', 'publish'),
(335, 92, '_wp_trash_meta_time', '1587132152'),
(336, 92, '_wp_desired_post_slug', 'group_5e99b62acf9b7'),
(337, 94, '_wp_trash_meta_status', 'publish'),
(338, 94, '_wp_trash_meta_time', '1587132153'),
(339, 94, '_wp_desired_post_slug', 'field_5e99b69a8afe6'),
(340, 96, '_edit_last', '1'),
(341, 96, '_edit_lock', '1587898294:1'),
(342, 97, '_wp_attached_file', '2020/04/images-1.jpg'),
(343, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:318;s:6:\"height\";i:159;s:4:\"file\";s:20:\"2020/04/images-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"images-1-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(344, 96, '_thumbnail_id', '97'),
(345, 98, '_edit_last', '1'),
(346, 98, '_edit_lock', '1587367339:1'),
(347, 99, '_wp_attached_file', '2020/04/images.jpg'),
(348, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:308;s:6:\"height\";i:163;s:4:\"file\";s:18:\"2020/04/images.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"images-300x159.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(349, 98, '_thumbnail_id', '99'),
(350, 100, '_edit_last', '1'),
(351, 100, '_edit_lock', '1587900374:1'),
(352, 101, '_wp_attached_file', '2020/04/Professor-Adnan-Zillur-Morshed.jpg'),
(353, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:510;s:4:\"file\";s:42:\"2020/04/Professor-Adnan-Zillur-Morshed.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"Professor-Adnan-Zillur-Morshed-221x300.jpg\";s:5:\"width\";i:221;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"Professor-Adnan-Zillur-Morshed-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:42:\"Professor-Adnan-Zillur-Morshed-375x260.jpg\";s:5:\"width\";i:375;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:42:\"Professor-Adnan-Zillur-Morshed-375x350.jpg\";s:5:\"width\";i:375;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(354, 100, '_thumbnail_id', '101'),
(355, 102, '_edit_last', '1'),
(356, 102, '_edit_lock', '1587942491:1'),
(357, 103, '_wp_attached_file', '2020/04/Professor-Vincent-Chang.jpg'),
(358, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:509;s:4:\"file\";s:35:\"2020/04/Professor-Vincent-Chang.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"Professor-Vincent-Chang-221x300.jpg\";s:5:\"width\";i:221;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Professor-Vincent-Chang-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:35:\"Professor-Vincent-Chang-375x260.jpg\";s:5:\"width\";i:375;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:35:\"Professor-Vincent-Chang-375x350.jpg\";s:5:\"width\";i:375;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(359, 102, '_thumbnail_id', '103'),
(360, 104, '_edit_last', '1'),
(361, 104, '_edit_lock', '1587281711:1'),
(362, 104, 'page_subtitle', 'Our professor who make the nations people'),
(363, 104, '_page_subtitle', 'field_5e95ce27729fb'),
(364, 104, 'page_hero_image', ''),
(365, 104, '_page_hero_image', 'field_5e95cff4a5676'),
(366, 105, 'page_subtitle', 'Our professor who make the nations people'),
(367, 105, '_page_subtitle', 'field_5e95ce27729fb'),
(368, 105, 'page_hero_image', ''),
(369, 105, '_page_hero_image', 'field_5e95cff4a5676'),
(370, 106, '_menu_item_type', 'post_type'),
(371, 106, '_menu_item_menu_item_parent', '0'),
(372, 106, '_menu_item_object_id', '104'),
(373, 106, '_menu_item_object', 'page'),
(374, 106, '_menu_item_target', ''),
(375, 106, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(376, 106, '_menu_item_xfn', ''),
(377, 106, '_menu_item_url', ''),
(379, 107, '_edit_last', '1'),
(380, 107, '_edit_lock', '1587364810:1'),
(381, 96, 'related_programs', 'a:1:{i:0;s:2:\"79\";}'),
(382, 96, '_related_programs', 'field_5e9c01682e03b'),
(383, 98, 'related_programs', 'a:1:{i:0;s:2:\"80\";}'),
(384, 98, '_related_programs', 'field_5e9c01682e03b'),
(385, 102, 'related_programs', 'a:1:{i:0;s:2:\"81\";}'),
(386, 102, '_related_programs', 'field_5e9c01682e03b'),
(387, 100, 'related_programs', 'a:2:{i:0;s:2:\"78\";i:1;s:2:\"80\";}'),
(388, 100, '_related_programs', 'field_5e9c01682e03b'),
(389, 109, '_menu_item_type', 'post_type'),
(390, 109, '_menu_item_menu_item_parent', '0'),
(391, 109, '_menu_item_object_id', '102'),
(392, 109, '_menu_item_object', 'professor'),
(393, 109, '_menu_item_target', ''),
(394, 109, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(395, 109, '_menu_item_xfn', ''),
(396, 109, '_menu_item_url', ''),
(397, 109, '_menu_item_orphaned', '1587303344'),
(398, 110, '_menu_item_type', 'custom'),
(399, 110, '_menu_item_menu_item_parent', '0'),
(400, 110, '_menu_item_object_id', '110'),
(401, 110, '_menu_item_object', 'custom'),
(402, 110, '_menu_item_target', ''),
(403, 110, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(404, 110, '_menu_item_xfn', ''),
(405, 110, '_menu_item_url', 'http://asdfa'),
(406, 110, '_menu_item_orphaned', '1587303395'),
(416, 113, '_edit_lock', '1587386187:1'),
(417, 113, '_wp_trash_meta_status', 'publish'),
(418, 113, '_wp_trash_meta_time', '1587386202'),
(419, 114, '_edit_lock', '1587386247:1'),
(420, 114, '_wp_trash_meta_status', 'publish'),
(421, 114, '_wp_trash_meta_time', '1587386247'),
(422, 115, '_wp_trash_meta_status', 'publish'),
(423, 115, '_wp_trash_meta_time', '1587386295'),
(424, 116, '_wp_trash_meta_status', 'publish'),
(425, 116, '_wp_trash_meta_time', '1587386878'),
(426, 117, '_wp_trash_meta_status', 'publish'),
(427, 117, '_wp_trash_meta_time', '1587387202'),
(428, 118, '_edit_lock', '1587734263:1'),
(429, 118, '_edit_last', '1'),
(430, 118, 'page_subtitle', 'Create your own notes'),
(431, 118, '_page_subtitle', 'field_5e95ce27729fb'),
(432, 118, 'page_hero_image', ''),
(433, 118, '_page_hero_image', 'field_5e95cff4a5676'),
(434, 119, 'page_subtitle', 'Create your own notes'),
(435, 119, '_page_subtitle', 'field_5e95ce27729fb'),
(436, 119, 'page_hero_image', ''),
(437, 119, '_page_hero_image', 'field_5e95cff4a5676'),
(447, 121, '_edit_lock', '1587766577:1'),
(448, 121, '_edit_last', '1'),
(449, 122, '_edit_lock', '1587769897:1'),
(450, 122, '_edit_last', '1'),
(459, 122, '_wp_old_slug', 'biology-lecture-2__trashed'),
(472, 121, '_wp_old_slug', 'math-lecture-1__trashed'),
(482, 124, '_edit_lock', '1587866870:1'),
(483, 124, '_edit_last', '1'),
(493, 124, '_wp_old_slug', 'english-class-1__trashed'),
(643, 146, '_edit_lock', '1587866863:1'),
(772, 188, '_edit_lock', '1587942486:1'),
(773, 188, '_edit_last', '1'),
(1156, 275, 'liked_professor_id', '100'),
(1157, 275, 'liked_user_id', '1'),
(1158, 275, '_wp_trash_meta_status', 'publish'),
(1159, 275, '_wp_trash_meta_time', '1587954289'),
(1160, 275, '_wp_desired_post_slug', '275'),
(1256, 292, '_edit_last', '1'),
(1257, 292, 'page_subtitle', ''),
(1258, 292, '_page_subtitle', 'field_5e95ce27729fb'),
(1259, 292, 'page_hero_image', ''),
(1260, 292, '_page_hero_image', 'field_5e95cff4a5676'),
(1261, 293, 'page_subtitle', ''),
(1262, 293, '_page_subtitle', 'field_5e95ce27729fb'),
(1263, 293, 'page_hero_image', ''),
(1264, 293, '_page_hero_image', 'field_5e95cff4a5676'),
(1265, 292, '_edit_lock', '1587985733:1'),
(1266, 294, '_edit_last', '1'),
(1267, 294, 'page_subtitle', ''),
(1268, 294, '_page_subtitle', 'field_5e95ce27729fb'),
(1269, 294, 'page_hero_image', ''),
(1270, 294, '_page_hero_image', 'field_5e95cff4a5676'),
(1271, 295, 'page_subtitle', ''),
(1272, 295, '_page_subtitle', 'field_5e95ce27729fb'),
(1273, 295, 'page_hero_image', ''),
(1274, 295, '_page_hero_image', 'field_5e95cff4a5676'),
(1275, 294, '_edit_lock', '1587989994:1'),
(1276, 296, '_menu_item_type', 'post_type'),
(1277, 296, '_menu_item_menu_item_parent', '0'),
(1278, 296, '_menu_item_object_id', '292'),
(1279, 296, '_menu_item_object', 'page'),
(1280, 296, '_menu_item_target', ''),
(1281, 296, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1282, 296, '_menu_item_xfn', ''),
(1283, 296, '_menu_item_url', ''),
(1285, 297, '_menu_item_type', 'post_type'),
(1286, 297, '_menu_item_menu_item_parent', '0'),
(1287, 297, '_menu_item_object_id', '294'),
(1288, 297, '_menu_item_object', 'page'),
(1289, 297, '_menu_item_target', ''),
(1290, 297, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1291, 297, '_menu_item_xfn', ''),
(1292, 297, '_menu_item_url', ''),
(1303, 145, '_wp_trash_meta_status', 'private'),
(1304, 145, '_wp_trash_meta_time', '1588153347'),
(1305, 145, '_wp_desired_post_slug', 'adsf'),
(1306, 301, 'liked_professor_id', '102'),
(1307, 301, 'liked_user_id', '22'),
(1308, 302, 'liked_professor_id', '100'),
(1309, 302, 'liked_user_id', '22'),
(1310, 303, 'liked_professor_id', '98'),
(1311, 303, 'liked_user_id', '22'),
(1314, 305, 'liked_professor_id', '98'),
(1315, 305, 'liked_user_id', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-04-13 07:22:23', '2020-04-13 07:22:23', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<p>industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-04-13 15:12:46', '2020-04-13 15:12:46', '', 0, 'http://localhost/practice/wordpress/?p=1', 0, 'post', '', 1),
(5, 1, '2020-04-13 15:11:15', '2020-04-13 15:11:15', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<p>industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-04-13 15:11:15', '2020-04-13 15:11:15', '', 1, 'http://localhost/practice/wordpress/index.php/2020/04/13/1-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2020-04-13 15:13:41', '2020-04-13 15:13:41', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum', '', 'publish', 'open', 'open', '', 'lorem-ipsum', '', '', '2020-04-13 15:13:41', '2020-04-13 15:13:41', '', 0, 'http://localhost/practice/wordpress/?p=6', 0, 'post', '', 0),
(7, 1, '2020-04-13 15:13:41', '2020-04-13 15:13:41', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-04-13 15:13:41', '2020-04-13 15:13:41', '', 6, 'http://localhost/practice/wordpress/index.php/2020/04/13/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2020-04-13 15:14:01', '2020-04-13 15:14:01', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'What is Lorem Ipsum?', '', 'publish', 'open', 'open', '', 'what-is-lorem-ipsum', '', '', '2020-04-13 15:14:01', '2020-04-13 15:14:01', '', 0, 'http://localhost/practice/wordpress/?p=8', 0, 'post', '', 0),
(9, 1, '2020-04-13 15:14:01', '2020-04-13 15:14:01', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'What is Lorem Ipsum?', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-04-13 15:14:01', '2020-04-13 15:14:01', '', 8, 'http://localhost/practice/wordpress/index.php/2020/04/13/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-04-13 15:14:27', '2020-04-13 15:14:27', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Why do we use it?', '', 'publish', 'open', 'open', '', 'why-do-we-use-it', '', '', '2020-04-13 15:14:27', '2020-04-13 15:14:27', '', 0, 'http://localhost/practice/wordpress/?p=10', 0, 'post', '', 0),
(11, 1, '2020-04-13 15:14:27', '2020-04-13 15:14:27', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Why do we use it?', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-04-13 15:14:27', '2020-04-13 15:14:27', '', 10, 'http://localhost/practice/wordpress/index.php/2020/04/13/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-04-13 15:14:50', '2020-04-13 15:14:50', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of', 'Where does it come from?', '', 'publish', 'open', 'open', '', 'where-does-it-come-from', '', '', '2020-04-13 15:14:50', '2020-04-13 15:14:50', '', 0, 'http://localhost/practice/wordpress/?p=12', 0, 'post', '', 0),
(13, 1, '2020-04-13 15:14:50', '2020-04-13 15:14:50', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of', 'Where does it come from?', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-04-13 15:14:50', '2020-04-13 15:14:50', '', 12, 'http://localhost/practice/wordpress/index.php/2020/04/13/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2020-04-13 15:15:15', '2020-04-13 15:15:15', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Where can I get some?', '', 'publish', 'open', 'open', '', 'where-can-i-get-some', '', '', '2020-04-13 15:15:15', '2020-04-13 15:15:15', '', 0, 'http://localhost/practice/wordpress/?p=14', 0, 'post', '', 0),
(15, 1, '2020-04-13 15:15:15', '2020-04-13 15:15:15', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Where can I get some?', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-04-13 15:15:15', '2020-04-13 15:15:15', '', 14, 'http://localhost/practice/wordpress/index.php/2020/04/13/14-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-04-14 06:02:10', '2020-04-14 06:02:10', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-04-14 06:02:10', '2020-04-14 06:02:10', '', 0, 'http://localhost/practice/wordpress/?page_id=18', 0, 'page', '', 0),
(19, 1, '2020-04-14 06:02:10', '2020-04-14 06:02:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-04-14 06:02:10', '2020-04-14 06:02:10', '', 18, 'http://localhost/practice/wordpress/index.php/2020/04/14/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-04-14 06:02:40', '2020-04-14 06:02:40', '', 'Programs', '', 'publish', 'closed', 'closed', '', 'programs', '', '', '2020-04-14 16:02:03', '2020-04-14 16:02:03', '', 0, 'http://localhost/practice/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2020-04-14 06:02:40', '2020-04-14 06:02:40', '', 'Programs', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2020-04-14 06:02:40', '2020-04-14 06:02:40', '', 20, 'http://localhost/practice/wordpress/index.php/2020/04/14/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2020-04-14 06:02:54', '2020-04-14 06:02:54', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2020-04-14 15:09:45', '2020-04-14 15:09:45', '', 0, 'http://localhost/practice/wordpress/?page_id=22', 0, 'page', '', 0),
(23, 1, '2020-04-14 06:02:54', '2020-04-14 06:02:54', '', 'Events', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-04-14 06:02:54', '2020-04-14 06:02:54', '', 22, 'http://localhost/practice/wordpress/index.php/2020/04/14/22-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2020-04-14 06:03:53', '2020-04-14 06:03:53', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-04-14 15:56:29', '2020-04-14 15:56:29', '', 0, 'http://localhost/practice/wordpress/?page_id=26', 0, 'page', '', 0),
(27, 1, '2020-04-14 06:03:53', '2020-04-14 06:03:53', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-04-14 06:03:53', '2020-04-14 06:03:53', '', 26, 'http://localhost/practice/wordpress/index.php/2020/04/14/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-04-14 06:10:30', '2020-04-14 06:10:30', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2020-04-24 13:45:01', '2020-04-24 13:45:01', '', 0, 'http://localhost/practice/wordpress/?p=28', 6, 'nav_menu_item', '', 0),
(30, 1, '2020-04-14 06:10:30', '2020-04-14 06:10:30', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2020-04-24 13:45:01', '2020-04-24 13:45:01', '', 0, 'http://localhost/practice/wordpress/?p=30', 2, 'nav_menu_item', '', 0),
(31, 1, '2020-04-14 06:10:29', '2020-04-14 06:10:29', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2020-04-24 13:45:01', '2020-04-24 13:45:01', '', 0, 'http://localhost/practice/wordpress/?p=31', 4, 'nav_menu_item', '', 0),
(32, 1, '2020-04-14 06:10:29', '2020-04-14 06:10:29', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2020-04-24 13:45:01', '2020-04-24 13:45:01', '', 0, 'http://localhost/practice/wordpress/?p=32', 1, 'nav_menu_item', '', 0),
(38, 1, '2020-04-14 07:19:32', '2020-04-14 07:19:32', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Events date', 'events-date', 'trash', 'closed', 'closed', '', 'group_5e95626046b25__trashed', '', '', '2020-04-14 07:21:20', '2020-04-14 07:21:20', '', 0, 'http://localhost/practice/wordpress/?post_type=acf-field-group&#038;p=38', 0, 'acf-field-group', '', 0),
(39, 1, '2020-04-14 07:19:32', '2020-04-14 07:19:32', 'a:8:{s:4:\"type\";s:16:\"date_time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:11:\"d/m/Y g:i a\";s:13:\"return_format\";s:11:\"d/m/Y g:i a\";s:9:\"first_day\";i:1;}', 'Events date', 'events_date', 'trash', 'closed', 'closed', '', 'field_5e956292076ae__trashed', '', '', '2020-04-14 07:21:20', '2020-04-14 07:21:20', '', 38, 'http://localhost/practice/wordpress/?post_type=acf-field&#038;p=39', 0, 'acf-field', '', 0),
(40, 1, '2020-04-14 11:58:29', '2020-04-14 11:58:29', 'or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book.', 'Lorem Events', '', 'publish', 'closed', 'closed', '', 'lorem-events', '', '', '2020-04-14 13:32:14', '2020-04-14 13:32:14', '', 0, 'http://localhost/practice/wordpress/?post_type=event&#038;p=40', 0, 'event', '', 0),
(41, 1, '2020-04-14 07:22:12', '2020-04-14 07:22:12', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Biology Event', '', 'publish', 'closed', 'closed', '', 'biology-event', '', '', '2020-04-14 13:49:24', '2020-04-14 13:49:24', '', 0, 'http://localhost/practice/wordpress/?post_type=event&#038;p=41', 0, 'event', '', 0),
(42, 1, '2020-04-14 07:22:38', '2020-04-14 07:22:38', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the', 'Science Event', '', 'publish', 'closed', 'closed', '', 'science-event', '', '', '2020-04-14 11:59:21', '2020-04-14 11:59:21', '', 0, 'http://localhost/practice/wordpress/?post_type=event&#038;p=42', 0, 'event', '', 0),
(43, 1, '2020-04-14 07:23:05', '2020-04-14 07:23:05', 'using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nusing Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Math Event', '', 'publish', 'closed', 'closed', '', 'math-event', '', '', '2020-04-14 11:58:59', '2020-04-14 11:58:59', '', 0, 'http://localhost/practice/wordpress/?post_type=event&#038;p=43', 0, 'event', '', 0),
(44, 1, '2020-04-14 07:23:27', '2020-04-14 07:23:27', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'English Event', '', 'publish', 'closed', 'closed', '', 'english-event', '', '', '2020-04-14 11:57:21', '2020-04-14 11:57:21', '', 0, 'http://localhost/practice/wordpress/?post_type=event&#038;p=44', 0, 'event', '', 0),
(45, 1, '2020-04-14 07:24:10', '2020-04-14 07:24:10', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'Culture Event', '', 'publish', 'closed', 'closed', '', 'culture-event', '', '', '2020-04-14 12:33:21', '2020-04-14 12:33:21', '', 0, 'http://localhost/practice/wordpress/?post_type=event&#038;p=45', 0, 'event', '', 0),
(46, 1, '2020-04-14 11:56:03', '2020-04-14 11:56:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Manage Events Date', 'manage-events-date', 'publish', 'closed', 'closed', '', 'group_5e95a430bf794', '', '', '2020-04-14 13:54:03', '2020-04-14 13:54:03', '', 0, 'http://localhost/practice/wordpress/?post_type=acf-field-group&#038;p=46', 0, 'acf-field-group', '', 0),
(47, 1, '2020-04-14 11:56:03', '2020-04-14 11:56:03', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}', 'Manage Events Date', 'manage_events_date', 'publish', 'closed', 'closed', '', 'field_5e95a475bb5f1', '', '', '2020-04-14 13:53:47', '2020-04-14 13:53:47', '', 46, 'http://localhost/practice/wordpress/?post_type=acf-field&#038;p=47', 0, 'acf-field', '', 0),
(48, 1, '2020-04-14 14:52:20', '2020-04-14 14:52:20', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Page Info', 'page-info', 'publish', 'closed', 'closed', '', 'group_5e95cdc72c065', '', '', '2020-04-14 15:00:32', '2020-04-14 15:00:32', '', 0, 'http://localhost/practice/wordpress/?post_type=acf-field-group&#038;p=48', 0, 'acf-field-group', '', 0),
(50, 1, '2020-04-14 14:52:41', '2020-04-14 14:52:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Page Subtitle', 'page_subtitle', 'publish', 'closed', 'closed', '', 'field_5e95ce27729fb', '', '', '2020-04-14 14:55:50', '2020-04-14 14:55:50', '', 48, 'http://localhost/practice/wordpress/?post_type=acf-field&#038;p=50', 0, 'acf-field', '', 0),
(51, 1, '2020-04-14 14:53:30', '2020-04-14 14:53:30', '', 'Events', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-04-14 14:53:30', '2020-04-14 14:53:30', '', 22, 'http://localhost/practice/wordpress/22-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2020-04-14 14:54:19', '2020-04-14 14:54:19', '', 'Events', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-04-14 14:54:19', '2020-04-14 14:54:19', '', 22, 'http://localhost/practice/wordpress/22-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-04-14 14:56:13', '2020-04-14 14:56:13', '', 'Events', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-04-14 14:56:13', '2020-04-14 14:56:13', '', 22, 'http://localhost/practice/wordpress/22-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-04-14 15:00:32', '2020-04-14 15:00:32', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Page Hero Image', 'page_hero_image', 'publish', 'closed', 'closed', '', 'field_5e95cff4a5676', '', '', '2020-04-14 15:00:32', '2020-04-14 15:00:32', '', 48, 'http://localhost/practice/wordpress/?post_type=acf-field&p=55', 1, 'acf-field', '', 0),
(56, 1, '2020-04-14 15:03:48', '2020-04-14 15:03:48', '', 'Hero Image', '', 'inherit', 'open', 'closed', '', 'hero-image', '', '', '2020-04-14 15:03:48', '2020-04-14 15:03:48', '', 22, 'http://localhost/practice/wordpress/wp-content/uploads/2020/04/Hero-Image.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2020-04-14 15:05:27', '2020-04-14 15:05:27', '', 'Events', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-04-14 15:05:27', '2020-04-14 15:05:27', '', 22, 'http://localhost/practice/wordpress/22-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-04-14 15:09:13', '2020-04-14 15:09:13', '', 'auditorium-benches-chairs-class-207691', '', 'inherit', 'open', 'closed', '', 'auditorium-benches-chairs-class-207691', '', '', '2020-04-14 15:09:13', '2020-04-14 15:09:13', '', 22, 'http://localhost/practice/wordpress/wp-content/uploads/2020/04/auditorium-benches-chairs-class-207691.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2020-04-14 15:09:27', '2020-04-14 15:09:27', '', 'Events', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2020-04-14 15:09:27', '2020-04-14 15:09:27', '', 22, 'http://localhost/practice/wordpress/22-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-04-14 15:50:37', '2020-04-14 15:50:37', '', 'apple-background-desk-electronics-399161', '', 'inherit', 'open', 'closed', '', 'apple-background-desk-electronics-399161', '', '', '2020-04-16 15:08:54', '2020-04-16 15:08:54', '', 83, 'http://localhost/practice/wordpress/wp-content/uploads/2020/04/apple-background-desk-electronics-399161.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2020-04-14 15:54:28', '2020-04-14 15:54:28', '', 'Gallery 1', '', 'inherit', 'open', 'closed', '', 'gallery-1', '', '', '2020-04-14 15:54:28', '2020-04-14 15:54:28', '', 20, 'http://localhost/practice/wordpress/wp-content/uploads/2020/04/Gallery-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2020-04-14 15:54:35', '2020-04-14 15:54:35', '', 'Programs', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2020-04-14 15:54:35', '2020-04-14 15:54:35', '', 20, 'http://localhost/practice/wordpress/20-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-04-14 15:56:23', '2020-04-14 15:56:23', '', 'Blog 2', '', 'inherit', 'open', 'closed', '', 'blog-2', '', '', '2020-04-14 15:56:23', '2020-04-14 15:56:23', '', 26, 'http://localhost/practice/wordpress/wp-content/uploads/2020/04/Blog-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2020-04-14 15:56:29', '2020-04-14 15:56:29', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-04-14 15:56:29', '2020-04-14 15:56:29', '', 26, 'http://localhost/practice/wordpress/26-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2020-04-14 16:00:43', '2020-04-14 16:00:43', '', 'Programs', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2020-04-14 16:00:43', '2020-04-14 16:00:43', '', 20, 'http://localhost/practice/wordpress/20-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2020-04-14 16:02:03', '2020-04-14 16:02:03', '', 'Programs', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2020-04-14 16:02:03', '2020-04-14 16:02:03', '', 20, 'http://localhost/practice/wordpress/20-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-04-15 10:14:51', '2020-04-15 10:14:51', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"campus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Campus Location', 'campus-location', 'publish', 'closed', 'closed', '', 'group_5e96de4a78060', '', '', '2020-04-17 08:05:10', '2020-04-17 08:05:10', '', 0, 'http://localhost/practice/wordpress/?post_type=acf-field-group&#038;p=69', 0, 'acf-field-group', '', 0),
(72, 1, '2020-04-16 12:42:13', '2020-04-16 12:42:13', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_5e98522bfe5ed', '', '', '2020-04-16 12:47:46', '2020-04-16 12:47:46', '', 69, 'http://localhost/practice/wordpress/?post_type=acf-field&#038;p=72', 0, 'acf-field', '', 0),
(73, 1, '2020-04-16 12:42:14', '2020-04-16 12:42:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:14:\"+8801891852840\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Phone Number', 'phone_number', 'publish', 'closed', 'closed', '', 'field_5e985250fe5ee', '', '', '2020-04-16 12:47:46', '2020-04-16 12:47:46', '', 69, 'http://localhost/practice/wordpress/?post_type=acf-field&#038;p=73', 1, 'acf-field', '', 0),
(75, 1, '2020-04-16 13:27:08', '2020-04-16 13:27:08', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Related to', 'related-to', 'publish', 'closed', 'closed', '', 'group_5e985ceaa6f1f', '', '', '2020-04-17 07:34:08', '2020-04-17 07:34:08', '', 0, 'http://localhost/practice/wordpress/?post_type=acf-field-group&#038;p=75', 0, 'acf-field-group', '', 0),
(78, 1, '2020-04-16 13:30:10', '2020-04-16 13:30:10', 'Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,', 'Math Program', '', 'publish', 'closed', 'closed', '', 'math-program', '', '', '2020-04-19 11:19:44', '2020-04-19 11:19:44', '', 0, 'http://localhost/practice/wordpress/?post_type=program&#038;p=78', 0, 'program', '', 0),
(79, 1, '2020-04-16 13:32:41', '2020-04-16 13:32:41', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenea', 'English Program', '', 'publish', 'closed', 'closed', '', 'english-program', '', '', '2020-04-19 11:19:28', '2020-04-19 11:19:28', '', 0, 'http://localhost/practice/wordpress/?post_type=program&#038;p=79', 0, 'program', '', 0),
(80, 1, '2020-04-16 13:33:06', '2020-04-16 13:33:06', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non providen', 'Biology Program', '', 'publish', 'closed', 'closed', '', 'biology-program', '', '', '2020-04-17 08:09:09', '2020-04-17 08:09:09', '', 0, 'http://localhost/practice/wordpress/?post_type=program&#038;p=80', 0, 'program', '', 0),
(81, 1, '2020-04-16 14:41:07', '2020-04-16 14:41:07', '<em>By using the ‘meta_value’ parameter the value 99 will be considered greater than 100 as the data are stored as ‘strings’, not ‘numbers’. For number comparison use ‘meta_value_num</em><em>By using the ‘meta_value’ parameter the value 99 will be considered greater than 100 as the data are stored as ‘strings’, not ‘numbers’. For number comparison use ‘meta_value_num</em><em>By using the ‘meta_value’ parameter the value 99 will be considered greater than 100 as the data are stored as ‘strings’, not ‘numbers’. For number comparison use ‘meta_value_num</em>', 'Science Program', '', 'publish', 'closed', 'closed', '', 'science-program', '', '', '2020-04-19 11:18:58', '2020-04-19 11:18:58', '', 0, 'http://localhost/practice/wordpress/?post_type=program&#038;p=81', 0, 'program', '', 0),
(82, 1, '2020-04-16 14:44:09', '2020-04-16 14:44:09', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:6:\"campus\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'Related Campus', 'related_campus', 'publish', 'closed', 'closed', '', 'field_5e986efb64c21', '', '', '2020-04-17 07:33:59', '2020-04-17 07:33:59', '', 75, 'http://localhost/practice/wordpress/?post_type=acf-field&#038;p=82', 0, 'acf-field', '', 0),
(83, 1, '2020-04-16 15:08:54', '2020-04-16 15:08:54', '', 'Campuses', '', 'publish', 'closed', 'closed', '', 'campuses', '', '', '2020-04-17 08:28:22', '2020-04-17 08:28:22', '', 0, 'http://localhost/practice/wordpress/?page_id=83', 0, 'page', '', 0),
(84, 1, '2020-04-16 15:08:54', '2020-04-16 15:08:54', '', 'Campuses', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2020-04-16 15:08:54', '2020-04-16 15:08:54', '', 83, 'http://localhost/practice/wordpress/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2020-04-16 15:09:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-16 15:09:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/practice/wordpress/?p=85', 1, 'nav_menu_item', '', 0),
(86, 1, '2020-04-16 15:09:28', '2020-04-16 15:09:28', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2020-04-24 13:45:01', '2020-04-24 13:45:01', '', 0, 'http://localhost/practice/wordpress/?p=86', 3, 'nav_menu_item', '', 0),
(87, 1, '2020-04-17 07:57:51', '2020-04-17 07:57:51', 'Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un', 'East College Campus', '', 'publish', 'closed', 'closed', '', 'east-college-campus', '', '', '2020-04-17 08:05:40', '2020-04-17 08:05:40', '', 0, 'http://localhost/practice/wordpress/?post_type=campus&#038;p=87', 0, 'campus', '', 0),
(88, 1, '2020-04-17 08:05:10', '2020-04-17 08:05:10', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Google Url', 'google_url', 'publish', 'closed', 'closed', '', 'field_5e99631d79e93', '', '', '2020-04-17 08:05:10', '2020-04-17 08:05:10', '', 69, 'http://localhost/practice/wordpress/?post_type=acf-field&p=88', 2, 'acf-field', '', 0),
(89, 1, '2020-04-17 08:27:59', '2020-04-17 08:27:59', '', 'All Campuses', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2020-04-17 08:27:59', '2020-04-17 08:27:59', '', 83, 'http://localhost/practice/wordpress/83-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2020-04-17 08:28:22', '2020-04-17 08:28:22', '', 'Campuses', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2020-04-17 08:28:22', '2020-04-17 08:28:22', '', 83, 'http://localhost/practice/wordpress/83-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-04-17 09:08:49', '2020-04-17 09:08:49', 'has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Gurudoyal College Campus', '', 'publish', 'closed', 'closed', '', 'gurudoyal-college-campus', '', '', '2020-04-17 09:08:49', '2020-04-17 09:08:49', '', 0, 'http://localhost/practice/wordpress/?post_type=campus&#038;p=91', 0, 'campus', '', 0),
(92, 1, '2020-04-17 14:00:14', '2020-04-17 14:00:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"20\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'asdfasdf', 'asdfasdf', 'trash', 'closed', 'closed', '', 'group_5e99b62acf9b7__trashed', '', '', '2020-04-17 14:02:33', '2020-04-17 14:02:33', '', 0, 'http://localhost/practice/wordpress/?post_type=acf-field-group&#038;p=92', 0, 'acf-field-group', '', 0),
(94, 1, '2020-04-17 14:01:34', '2020-04-17 14:01:34', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'asdf', 'asdf', 'trash', 'closed', 'closed', '', 'field_5e99b69a8afe6__trashed', '', '', '2020-04-17 14:02:33', '2020-04-17 14:02:33', '', 92, 'http://localhost/practice/wordpress/?post_type=acf-field&#038;p=94', 0, 'acf-field', '', 0),
(96, 1, '2020-04-19 07:14:37', '2020-04-19 07:14:37', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the', 'Dr. Henry Cavil', '', 'publish', 'closed', 'closed', '', 'dr-henry-cavil', '', '', '2020-04-19 07:46:33', '2020-04-19 07:46:33', '', 0, 'http://localhost/practice/wordpress/?post_type=professor&#038;p=96', 0, 'professor', '', 0),
(97, 1, '2020-04-19 07:14:21', '2020-04-19 07:14:21', '', 'images (1)', '', 'inherit', 'open', 'closed', '', 'images-1', '', '', '2020-04-19 07:14:21', '2020-04-19 07:14:21', '', 96, 'http://localhost/practice/wordpress/wp-content/uploads/2020/04/images-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2020-04-19 07:15:18', '2020-04-19 07:15:18', 'I love biology.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental. To an English person, it will seem like simplified English, as a skeptical Cambridge friend of mine told me what Occidental is.The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes', 'Mr. Froggerson', '', 'publish', 'closed', 'closed', '', 'mr-froggerson', '', '', '2020-04-20 07:05:40', '2020-04-20 07:05:40', '', 0, 'http://localhost/practice/wordpress/?post_type=professor&#038;p=98', 0, 'professor', '', 0),
(99, 1, '2020-04-19 07:15:13', '2020-04-19 07:15:13', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2020-04-19 07:15:13', '2020-04-19 07:15:13', '', 98, 'http://localhost/practice/wordpress/wp-content/uploads/2020/04/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2020-04-19 07:15:59', '2020-04-19 07:15:59', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty', 'Prof. Alen', '', 'publish', 'closed', 'closed', '', 'prof-alen', '', '', '2020-04-19 12:21:23', '2020-04-19 12:21:23', '', 0, 'http://localhost/practice/wordpress/?post_type=professor&#038;p=100', 0, 'professor', '', 0),
(101, 1, '2020-04-19 07:16:12', '2020-04-19 07:16:12', '', 'Professor Adnan Zillur Morshed', '', 'inherit', 'open', 'closed', '', 'professor-adnan-zillur-morshed', '', '', '2020-04-19 07:16:12', '2020-04-19 07:16:12', '', 100, 'http://localhost/practice/wordpress/wp-content/uploads/2020/04/Professor-Adnan-Zillur-Morshed.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2020-04-19 07:17:03', '2020-04-19 07:17:03', 'The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs grab quick-jived waltz. Brick quiz whangs jumpy veldt fox. Bright vixens jump; dozy fowl quack. Quick wafting zephyrs vex bold Jim. Quick zephyrs blow, vexing daft Jim. Sex-charged fop blew my junk TV quiz. How quickly daft jumping zebras vex. Two driven jocks help fax my big quiz. Quick, Baz, get my woven flax jodhpurs! \"Now fax quiz Jack!\" my brave ghost pled. Five quacking zephyrs jolt my wax bed. Flummoxed by job, kvetching W. zaps Iraq. Cozy sphinx waves quart jug of bad milk. A very bad quack might jinx zippy fowls. Few quips galvanized the mock jury box. Quick brown dogs jump over the lazy fox. The jay, pig, fox,', 'Mr. Wuhan', '', 'publish', 'closed', 'closed', '', 'mr-wuhan', '', '', '2020-04-19 07:47:04', '2020-04-19 07:47:04', '', 0, 'http://localhost/practice/wordpress/?post_type=professor&#038;p=102', 0, 'professor', '', 0),
(103, 1, '2020-04-19 07:16:57', '2020-04-19 07:16:57', '', 'Professor Vincent Chang', '', 'inherit', 'open', 'closed', '', 'professor-vincent-chang', '', '', '2020-04-19 07:16:57', '2020-04-19 07:16:57', '', 102, 'http://localhost/practice/wordpress/wp-content/uploads/2020/04/Professor-Vincent-Chang.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2020-04-19 07:37:30', '2020-04-19 07:37:30', '', 'Professors', '', 'publish', 'closed', 'closed', '', 'professors', '', '', '2020-04-19 07:37:30', '2020-04-19 07:37:30', '', 0, 'http://localhost/practice/wordpress/?page_id=104', 0, 'page', '', 0),
(105, 1, '2020-04-19 07:37:30', '2020-04-19 07:37:30', '', 'Professors', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2020-04-19 07:37:30', '2020-04-19 07:37:30', '', 104, 'http://localhost/practice/wordpress/104-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2020-04-19 07:37:54', '2020-04-19 07:37:54', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2020-04-24 13:45:01', '2020-04-24 13:45:01', '', 0, 'http://localhost/practice/wordpress/?p=106', 5, 'nav_menu_item', '', 0),
(107, 1, '2020-04-19 07:46:19', '2020-04-19 07:46:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'related program', 'related-program', 'publish', 'closed', 'closed', '', 'group_5e9c015a9ebca', '', '', '2020-04-19 07:46:19', '2020-04-19 07:46:19', '', 0, 'http://localhost/practice/wordpress/?post_type=acf-field-group&#038;p=107', 0, 'acf-field-group', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(108, 1, '2020-04-19 07:46:19', '2020-04-19 07:46:19', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'Related programs', 'related_programs', 'publish', 'closed', 'closed', '', 'field_5e9c01682e03b', '', '', '2020-04-19 07:46:19', '2020-04-19 07:46:19', '', 107, 'http://localhost/practice/wordpress/?post_type=acf-field&p=108', 0, 'acf-field', '', 0),
(109, 1, '2020-04-19 13:35:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-19 13:35:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/practice/wordpress/?p=109', 1, 'nav_menu_item', '', 0),
(110, 1, '2020-04-19 13:36:35', '0000-00-00 00:00:00', '', 'aasdf', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-19 13:36:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/practice/wordpress/?p=110', 1, 'nav_menu_item', '', 0),
(113, 1, '2020-04-20 12:36:41', '2020-04-20 12:36:41', '{\n    \"twentynineteen::primary_color\": {\n        \"value\": \"custom\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-20 12:36:27\"\n    },\n    \"twentynineteen::primary_color_hue\": {\n        \"value\": 306,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-20 12:36:27\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-20 12:36:41\"\n    },\n    \"widget_search[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjExOiJTZWFyY2ggaGVyZSI7fQ==\",\n            \"title\": \"Search here\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"fe46a43396ff245c297abbf3a43e00c3\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-20 12:36:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd6e6114d-962f-4059-8f59-32e321b78ea2', '', '', '2020-04-20 12:36:41', '2020-04-20 12:36:41', '', 0, 'http://localhost/practice/wordpress/?p=113', 0, 'customize_changeset', '', 0),
(114, 1, '2020-04-20 12:37:27', '2020-04-20 12:37:27', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-20 12:37:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2436102d-4694-43d1-9b4b-db3ebf9f0d74', '', '', '2020-04-20 12:37:27', '2020-04-20 12:37:27', '', 0, 'http://localhost/practice/wordpress/?p=114', 0, 'customize_changeset', '', 0),
(115, 1, '2020-04-20 12:38:14', '2020-04-20 12:38:14', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-20 12:38:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6ef62cd7-0a67-4673-9db6-1c455deb745d', '', '', '2020-04-20 12:38:14', '2020-04-20 12:38:14', '', 0, 'http://localhost/practice/wordpress/6ef62cd7-0a67-4673-9db6-1c455deb745d/', 0, 'customize_changeset', '', 0),
(116, 1, '2020-04-20 12:47:58', '2020-04-20 12:47:58', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ],\n            \"sidebar-1\": [\n                \"search-4\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-20 12:47:57\"\n    },\n    \"fictional-university-theme::nav_menu_locations[primary_menu]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-20 12:47:57\"\n    },\n    \"fictional-university-theme::nav_menu_locations[footer_menu]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-20 12:47:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1cac0728-4b5c-4eaa-8379-4459e54eb165', '', '', '2020-04-20 12:47:58', '2020-04-20 12:47:58', '', 0, 'http://localhost/practice/wordpress/1cac0728-4b5c-4eaa-8379-4459e54eb165/', 0, 'customize_changeset', '', 0),
(117, 1, '2020-04-20 12:53:21', '2020-04-20 12:53:21', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-20 12:53:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8895521c-fbb8-4c99-b221-32717c301d45', '', '', '2020-04-20 12:53:21', '2020-04-20 12:53:21', '', 0, 'http://localhost/practice/wordpress/8895521c-fbb8-4c99-b221-32717c301d45/', 0, 'customize_changeset', '', 0),
(118, 1, '2020-04-24 13:19:52', '2020-04-24 13:19:52', '', 'My Notes', '', 'publish', 'closed', 'closed', '', 'my-notes', '', '', '2020-04-24 13:19:52', '2020-04-24 13:19:52', '', 0, 'http://localhost/practice/wordpress/?page_id=118', 0, 'page', '', 0),
(119, 1, '2020-04-24 13:19:52', '2020-04-24 13:19:52', '', 'My Notes', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2020-04-24 13:19:52', '2020-04-24 13:19:52', '', 118, 'http://localhost/practice/wordpress/118-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2020-04-24 22:00:54', '2020-04-24 22:00:54', 'updated The quick, brown fox jumps over a lazy dog. DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps. Bawds jog, flick quartz, vex nymphs. Waltz, bad nymph, for quick jigs vex! Fox nymphs grab quick-jived waltz. Brick quiz whangs jumpy veldt fox. Bright vixens jump; dozy fowl quack. Quick wafting zephyrs vex bold                                ', 'Math Lecture #2', '', 'private', 'closed', 'closed', '', 'math-lecture-1', '', '', '2020-04-26 02:03:41', '2020-04-26 02:03:41', '', 0, 'http://localhost/practice/wordpress/?post_type=note&#038;p=121', 0, 'note', '', 0),
(122, 1, '2020-04-24 22:01:18', '2020-04-24 22:01:18', 'updated The European languages are members of the same family. Their separate existence is a myth. For science, music, sport, etc, Europe uses the same vocabulary. The languages only differ in their grammar, their pronunciation and their most common words. Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple and regular than the existing European languages. I                                ', 'Biology Lecture #1', '', 'private', 'closed', 'closed', '', 'biology-lecture-2', '', '', '2020-04-26 02:16:59', '2020-04-26 02:16:59', '', 0, 'http://localhost/practice/wordpress/?post_type=note&#038;p=122', 0, 'note', '', 0),
(124, 1, '2020-04-25 13:37:39', '2020-04-25 13:37:39', 'hello world  class was o awesome to hear..updated\n\n                                                                                                                                                                                                                                 ', 'English Class #2', '', 'private', 'closed', 'closed', '', 'english-class-1', '', '', '2020-04-26 10:39:57', '2020-04-26 10:39:57', '', 0, 'http://localhost/practice/wordpress/?post_type=note&#038;p=124', 0, 'note', '', 0),
(137, 1, '2020-04-26 01:38:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 01:38:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/practice/wordpress/?post_type=note&p=137', 0, 'note', '', 0),
(145, 2, '2020-04-26 02:08:47', '2020-04-26 02:08:47', 'subscriber #2', 'sub #2', '', 'trash', 'closed', 'closed', '', 'adsf__trashed', '', '', '2020-04-29 09:42:27', '2020-04-29 09:42:27', '', 0, 'http://localhost/practice/wordpress/note/adsf/', 0, 'note', '', 0),
(146, 2, '2020-04-26 02:08:59', '2020-04-26 02:08:59', 'subscriber created', 'sub modified', '', 'private', 'closed', 'closed', '', 'asdfasdf', '', '', '2020-04-29 09:42:20', '2020-04-29 09:42:20', '', 0, 'http://localhost/practice/wordpress/note/asdfasdf/', 0, 'note', '', 0),
(186, 1, '2020-04-26 10:53:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 10:53:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/practice/wordpress/?post_type=like&p=186', 0, 'like', '', 0),
(188, 1, '2020-04-26 11:15:55', '2020-04-26 11:15:55', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"like\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Like', 'like', 'publish', 'closed', 'closed', '', 'group_5ea56d22015e5', '', '', '2020-04-26 11:17:18', '2020-04-26 11:17:18', '', 0, 'http://localhost/practice/wordpress/?post_type=acf-field-group&#038;p=188', 0, 'acf-field-group', '', 0),
(189, 1, '2020-04-26 11:15:55', '2020-04-26 11:15:55', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Liked Professor ID', 'liked_professor_id', 'publish', 'closed', 'closed', '', 'field_5ea56d471e794', '', '', '2020-04-26 11:15:55', '2020-04-26 11:15:55', '', 188, 'http://localhost/practice/wordpress/?post_type=acf-field&p=189', 0, 'acf-field', '', 0),
(190, 1, '2020-04-26 11:16:51', '2020-04-26 11:16:51', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Liked User ID', 'liked_user_id', 'publish', 'closed', 'closed', '', 'field_5ea56d6d5089f', '', '', '2020-04-26 11:16:51', '2020-04-26 11:16:51', '', 188, 'http://localhost/practice/wordpress/?post_type=acf-field&p=190', 1, 'acf-field', '', 0),
(193, 1, '2020-04-26 11:28:35', '2020-04-26 11:28:35', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty', 'Prof. Alen', '', 'inherit', 'closed', 'closed', '', '100-autosave-v1', '', '', '2020-04-26 11:28:35', '2020-04-26 11:28:35', '', 100, 'http://localhost/practice/wordpress/100-autosave-v1/', 0, 'revision', '', 0),
(207, 1, '2020-04-26 23:43:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-26 23:43:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/practice/wordpress/?post_type=like&p=207', 0, 'like', '', 0),
(275, 1, '2020-04-27 02:24:11', '2020-04-27 02:24:11', '', '', '', 'trash', 'closed', 'closed', '', '275__trashed', '', '', '2020-04-27 02:24:49', '2020-04-27 02:24:49', '', 0, 'http://localhost/practice/wordpress/like/275/', 0, 'like', '', 0),
(276, 1, '2020-04-27 10:28:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-27 10:28:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/practice/wordpress/?p=276', 0, 'post', '', 0),
(292, 1, '2020-04-27 11:11:15', '2020-04-27 11:11:15', '', 'Log In', '', 'publish', 'closed', 'closed', '', 'log-in', '', '', '2020-04-27 11:11:15', '2020-04-27 11:11:15', '', 0, 'http://localhost/practice/wordpress/?page_id=292', 0, 'page', '', 0),
(293, 1, '2020-04-27 11:11:15', '2020-04-27 11:11:15', '', 'Log In', '', 'inherit', 'closed', 'closed', '', '292-revision-v1', '', '', '2020-04-27 11:11:15', '2020-04-27 11:11:15', '', 292, 'http://localhost/practice/wordpress/292-revision-v1/', 0, 'revision', '', 0),
(294, 1, '2020-04-27 11:11:25', '2020-04-27 11:11:25', '', 'Sign Up', '', 'publish', 'closed', 'closed', '', 'sign-up', '', '', '2020-04-27 11:11:25', '2020-04-27 11:11:25', '', 0, 'http://localhost/practice/wordpress/?page_id=294', 0, 'page', '', 0),
(295, 1, '2020-04-27 11:11:25', '2020-04-27 11:11:25', '', 'Sign Up', '', 'inherit', 'closed', 'closed', '', '294-revision-v1', '', '', '2020-04-27 11:11:25', '2020-04-27 11:11:25', '', 294, 'http://localhost/practice/wordpress/294-revision-v1/', 0, 'revision', '', 0),
(296, 1, '2020-04-28 01:02:43', '2020-04-28 01:02:43', ' ', '', '', 'publish', 'closed', 'closed', '', '296', '', '', '2020-04-28 01:02:43', '2020-04-28 01:02:43', '', 0, 'http://localhost/practice/wordpress/?p=296', 1, 'nav_menu_item', '', 0),
(297, 1, '2020-04-28 01:02:44', '2020-04-28 01:02:44', ' ', '', '', 'publish', 'closed', 'closed', '', '297', '', '', '2020-04-28 01:02:44', '2020-04-28 01:02:44', '', 0, 'http://localhost/practice/wordpress/?p=297', 2, 'nav_menu_item', '', 0),
(299, 21, '2020-04-30 11:56:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-30 11:56:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/practice/wordpress/?p=299', 0, 'post', '', 0),
(300, 22, '2020-04-30 11:58:46', '0000-00-00 00:00:00', 'hurray......... I just created my custom registration form', 'Dev note#1', '', 'private', 'closed', 'closed', '', 'dev-note1', '', '', '2020-04-30 11:58:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/practice/wordpress/note/dev-note1/', 0, 'note', '', 0),
(301, 22, '2020-04-30 12:04:17', '2020-04-30 12:04:17', '', '', '', 'publish', 'closed', 'closed', '', '301', '', '', '2020-04-30 12:04:17', '2020-04-30 12:04:17', '', 0, 'http://localhost/practice/wordpress/like/301/', 0, 'like', '', 0),
(302, 22, '2020-04-30 12:04:28', '2020-04-30 12:04:28', '', '', '', 'publish', 'closed', 'closed', '', '302', '', '', '2020-04-30 12:04:28', '2020-04-30 12:04:28', '', 0, 'http://localhost/practice/wordpress/like/302/', 0, 'like', '', 0),
(303, 22, '2020-04-30 12:04:34', '2020-04-30 12:04:34', '', '', '', 'publish', 'closed', 'closed', '', '303', '', '', '2020-04-30 12:04:34', '2020-04-30 12:04:34', '', 0, 'http://localhost/practice/wordpress/like/303/', 0, 'like', '', 0),
(305, 2, '2020-04-30 12:05:06', '2020-04-30 12:05:06', '', '', '', 'publish', 'closed', 'closed', '', '305', '', '', '2020-04-30 12:05:06', '2020-04-30 12:05:06', '', 0, 'http://localhost/practice/wordpress/like/305/', 0, 'like', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header Menu', 'header-menu', 0),
(5, 'login and signup', 'login-and-signup', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 1, 0),
(8, 1, 0),
(10, 1, 0),
(12, 1, 0),
(14, 1, 0),
(28, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(86, 2, 0),
(106, 2, 0),
(296, 5, 0),
(297, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'nav_menu', '', 0, 6),
(5, 5, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'members_30'),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '276'),
(19, 1, 'session_tokens', 'a:59:{s:64:\"e69c2dbfd266a098a3649aeed19d8dd33fc87cc28f0330a1b0c36e28656ea412\";a:4:{s:10:\"expiration\";i:1589241372;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588031772;}s:64:\"109447283c131d0aeccf5dca8fc4caee147e835bc613b88c3f7d4db74d19b2a1\";a:4:{s:10:\"expiration\";i:1589241544;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588031944;}s:64:\"08d847ac877b6efef931363126bad7a905b3564d41e03dfe8033aac8d8ee1c05\";a:4:{s:10:\"expiration\";i:1589241937;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588032337;}s:64:\"d60ba73896d42cfe5667c74c70d9273e38362c11a37855dcf3a988e7869e2c1e\";a:4:{s:10:\"expiration\";i:1589242134;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588032534;}s:64:\"d5b2610a81278a51fb5825c5615f3e1b4593e40f99ec1771ae22740c3f63b669\";a:4:{s:10:\"expiration\";i:1589242296;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588032696;}s:64:\"f9bdd639dc8d8ff5fc0faa0b0cb47d4d1aad0003b2a5203e4c7a642cb7df94fe\";a:4:{s:10:\"expiration\";i:1589242318;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588032718;}s:64:\"53efceaeba7fcc020eb8016a79dcd4cb036442813a32fe7ca3b54e828d58ced2\";a:4:{s:10:\"expiration\";i:1589242359;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588032759;}s:64:\"e39ddde69612fc547eae88e0cc4dce895dfc64e47add9be324f7b4ec61b63d0a\";a:4:{s:10:\"expiration\";i:1589242663;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588033063;}s:64:\"aa6f7f5f90f1d99510e39a51a8983cb10ba1b564b1e969c3d9bbac9061bd3a56\";a:4:{s:10:\"expiration\";i:1589243106;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588033506;}s:64:\"0e136145d19d107a8bf757cd50a4197e75569731e693e6ebbd0857d99424f469\";a:4:{s:10:\"expiration\";i:1589243910;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588034310;}s:64:\"bb96f01c960859edda51360ba6083a777333cbc99b63dca394263d0406cd70e6\";a:4:{s:10:\"expiration\";i:1589244040;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588034440;}s:64:\"cf7363f1989b4c516120b4ff4f7253c5cbc9f37c9c60a177c11e2383b7038d46\";a:4:{s:10:\"expiration\";i:1589244540;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588034940;}s:64:\"728167c19e3752dc7fa6fcf8e02c828f244ea554c0d68153b096b7b52a5f8eaa\";a:4:{s:10:\"expiration\";i:1589244548;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588034948;}s:64:\"8fd980c12e2b4c54dd3ed5fbad7b8b294e52df0879fc623824fdf92f7d3fe775\";a:4:{s:10:\"expiration\";i:1589244694;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588035094;}s:64:\"c9da89bd2a32403745539bc186bf9e84d7b8d58012b8c269c76273767aa025fb\";a:4:{s:10:\"expiration\";i:1589245015;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588035415;}s:64:\"6053bf2b56ed7fb98e9b053bfe563e8ec8ad97050ecde045c5ca4b22dd8f52c7\";a:4:{s:10:\"expiration\";i:1589245029;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588035429;}s:64:\"caeb6c22afa21a5d0aa73dd5d46a0dcca5bf1ba1f0a35776d7e8736c6039ecc8\";a:4:{s:10:\"expiration\";i:1589246314;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588036714;}s:64:\"25edf41f19f1e6ff596f46c78476f246cc74cfcebbc85ebf418f6731b359410c\";a:4:{s:10:\"expiration\";i:1589246491;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588036891;}s:64:\"7be14043f8e5dc1cc0ed69860d08d131c2751fbfa62b3e472dd734ce3968d491\";a:4:{s:10:\"expiration\";i:1589246491;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588036891;}s:64:\"74d43ab27308065a9f7d0fb5e6a5ae2777e8adf4a4596a57d2b272addadf3cee\";a:4:{s:10:\"expiration\";i:1589246552;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588036952;}s:64:\"66a4f2a850ea118e280cbc3174f7a52bb249c22a5966ec0128febfb9a50bd53a\";a:4:{s:10:\"expiration\";i:1589246552;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588036952;}s:64:\"cc6b8afb1e6db0a7b4419710353a075c230d1d4cf30096c5d26d1f539dd0cf8f\";a:4:{s:10:\"expiration\";i:1589246593;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588036993;}s:64:\"5cea2d6e6712b7a64db0bf7a152f652c5866551e63abd1e162e8f1cfe495bda6\";a:4:{s:10:\"expiration\";i:1589246593;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588036993;}s:64:\"5e02350ca6d3082dab521f9713a1817a27c8ab2b700eaa4d3f411f89abb8655a\";a:4:{s:10:\"expiration\";i:1589246841;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588037241;}s:64:\"e6d019af536ff4237ea903b9387063f190df93630b24f81f8136668c5b8bbc44\";a:4:{s:10:\"expiration\";i:1589247170;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588037570;}s:64:\"a716283146a268ef05ca23333ca91894b5185b116a690478452717f6a76955d1\";a:4:{s:10:\"expiration\";i:1589247170;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588037570;}s:64:\"ad568bf5ee5538e5c09f6498f784678f391d3738e7777c9a40238b8d3bcd2f5e\";a:4:{s:10:\"expiration\";i:1589247553;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588037953;}s:64:\"ae4ac0d56c95ac19ccb60eae6a35024b416a8e8cac5abfba8521aa6da4328692\";a:4:{s:10:\"expiration\";i:1589247584;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588037984;}s:64:\"f49e48d91209c266878d7dc87cf717d51261bce4bc878596f029cffa7b585d78\";a:4:{s:10:\"expiration\";i:1589247652;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588038052;}s:64:\"d0cb8cbdbaa5e598249dad6e765129a3b4c5992875374de3a8785757dd2b9d7e\";a:4:{s:10:\"expiration\";i:1589247671;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588038071;}s:64:\"86dcc9a083b0fa5444f0b055c01deb24840c31e22d04d48556ebde958896a9af\";a:4:{s:10:\"expiration\";i:1589247696;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588038096;}s:64:\"e68e645c1272143a359f23a98456789c227ca9d70578670ef8feae43a0ac5f5d\";a:4:{s:10:\"expiration\";i:1589248084;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588038484;}s:64:\"0c604f9fd6cce5dd67e998814d36096b39b8ac82e1822c6c078d3ed8ec7eea21\";a:4:{s:10:\"expiration\";i:1589248118;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588038518;}s:64:\"b86aa7b8edae36f90a877f5520088b5661de63fa75c01a3c0b2c23619a058a57\";a:4:{s:10:\"expiration\";i:1589248118;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588038518;}s:64:\"38c8be3a1b93fd1f5380d2e4585e4e6eabbf395224649b4fece0f078ecf5e0f4\";a:4:{s:10:\"expiration\";i:1589248146;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588038546;}s:64:\"8d0979cdf0c4abc300f90be71bc300822e24cf72f37b250c0a7ebc4a9d0407b2\";a:4:{s:10:\"expiration\";i:1589248147;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588038547;}s:64:\"1444e9f9bbaacc672eda4af7461fd0b0421208e3e4858787c9026e833e276081\";a:4:{s:10:\"expiration\";i:1589248153;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588038553;}s:64:\"7091fcd4576b22cf50b02736bbfda6815a11dfdcfea7f517eb203710d25ab996\";a:4:{s:10:\"expiration\";i:1589248153;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588038553;}s:64:\"2c3449bb8c2773724af0c95a2d43b51c0327a4dea2064ecc96ffd4481481b009\";a:4:{s:10:\"expiration\";i:1589248160;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588038560;}s:64:\"d8583e6a738f61ea97173a0cd113d3143b11fc0e06236eb703d12311cb8ca981\";a:4:{s:10:\"expiration\";i:1589248160;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588038560;}s:64:\"1fe07fb2c3a65781c65cd624b5391a812497a11e1ad430c49a4e60b0b7657979\";a:4:{s:10:\"expiration\";i:1589248226;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588038626;}s:64:\"d964668dbe5131a7f39cd84ad55dda4a5da9f2a054f1cfb1e2948872b3b37860\";a:4:{s:10:\"expiration\";i:1589248296;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588038696;}s:64:\"f2806a4771d1b3b887ed0142cbd3e28878c7215103bf78ac0b932e0469b4ae5a\";a:4:{s:10:\"expiration\";i:1589248299;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588038699;}s:64:\"ff2801e65ab01bbee8cfb1845731c108cdcc50654a4e79b3632a84cbe3030b87\";a:4:{s:10:\"expiration\";i:1589248446;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588038846;}s:64:\"a642816297fee9724e677be7efdb65d6d40e1421c779ea1ef5823658cd39f3af\";a:4:{s:10:\"expiration\";i:1589248641;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588039041;}s:64:\"e37db11c3e196e5160ad6e9f5a812082a49a7da2e63f26ce96ce74406fe050fd\";a:4:{s:10:\"expiration\";i:1589248845;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588039245;}s:64:\"1d64fba7acdee95465ac0b712eba7294bacb56659c4fd19daaf454c2396af952\";a:4:{s:10:\"expiration\";i:1589248850;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588039250;}s:64:\"a46cfc73d3c2b134e87cb659afee4ce09c17566293abbfcddf223cc39aee2f2e\";a:4:{s:10:\"expiration\";i:1589248888;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588039288;}s:64:\"86410f427a80a60bdcddda1067e2ccfad25ab78935dfb2edf826881399e67270\";a:4:{s:10:\"expiration\";i:1589294298;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588084698;}s:64:\"7d3fb858670a9e7437281a2487b099ec3d7d72d9ddf57bbac9dc9c7ccc41a4ad\";a:4:{s:10:\"expiration\";i:1589298494;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588088894;}s:64:\"b3fafc6a962173a3fdea47e9e282b4d2bd4e136b91a088b3ed7e8850b9d288bc\";a:4:{s:10:\"expiration\";i:1589299100;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588089500;}s:64:\"6cb14fdb93bec7bac58628a144e99f48efec1371d07b79f95e25961953892b0e\";a:4:{s:10:\"expiration\";i:1589299566;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588089966;}s:64:\"588d8096a29eefa0779f29ebfb68dd62f6461060634c14c4771cf27d6d05863a\";a:4:{s:10:\"expiration\";i:1589300631;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588091031;}s:64:\"dbf40b02014011ce372f7d1f493c78dd682b341ba7d9939131723dec4ddfc0be\";a:4:{s:10:\"expiration\";i:1589366772;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36\";s:5:\"login\";i:1588157172;}s:64:\"9b6c75cd13e5aca35e4925c94db72be9da3881536fcb32af689fb8b3e2fd8499\";a:4:{s:10:\"expiration\";i:1589367540;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36\";s:5:\"login\";i:1588157940;}s:64:\"22b95c8b0a8a20e31565e592c1bd8134eec01600969f016e8b87a9de6e64b371\";a:4:{s:10:\"expiration\";i:1589444083;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36\";s:5:\"login\";i:1588234483;}s:64:\"7f0e0ba76bbbce9ba6a0ee551a51742f2422902f0d36efb06155f8d295e43f95\";a:4:{s:10:\"expiration\";i:1589444097;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36\";s:5:\"login\";i:1588234497;}s:64:\"ccaa7da8d38d751d5695e4dfeb14014ab0ddc3457f3edb228d0a3136a34921d6\";a:4:{s:10:\"expiration\";i:1589456262;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36\";s:5:\"login\";i:1588246662;}s:64:\"b2c9e0dae4c2a44fcb16f25014404415ab2fa39d5e9f0a1cac0b9a6a3b5959e7\";a:4:{s:10:\"expiration\";i:1589534402;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36\";s:5:\"login\";i:1588324802;}}'),
(21, 1, 'closedpostboxes_post', 'a:0:{}'),
(22, 1, 'metaboxhidden_post', 'a:4:{i:0;s:13:\"trackbacksdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(23, 1, 'closedpostboxes_page', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(24, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(25, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:19:\"add-post-type-event\";i:1;s:21:\"add-post-type-program\";i:2;s:20:\"add-post-type-campus\";i:3;s:12:\"add-post_tag\";}'),
(27, 1, 'nav_menu_recently_edited', '2'),
(28, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(29, 1, 'wp_user-settings-time', '1587768787'),
(30, 1, 'closedpostboxes_campus', 'a:1:{i:0;s:11:\"postexcerpt\";}'),
(31, 1, 'metaboxhidden_campus', 'a:2:{i:0;s:11:\"postexcerpt\";i:1;s:7:\"slugdiv\";}'),
(32, 1, 'closedpostboxes_program', 'a:0:{}'),
(33, 1, 'metaboxhidden_program', 'a:2:{i:0;s:11:\"postexcerpt\";i:1;s:7:\"slugdiv\";}'),
(34, 2, 'nickname', 'Sub'),
(35, 2, 'first_name', 'Arifur'),
(36, 2, 'last_name', 'Rahman'),
(37, 2, 'description', ''),
(38, 2, 'rich_editing', 'true'),
(39, 2, 'syntax_highlighting', 'true'),
(40, 2, 'comment_shortcuts', 'false'),
(41, 2, 'admin_color', 'fresh'),
(42, 2, 'use_ssl', '0'),
(43, 2, 'show_admin_bar_front', 'true'),
(44, 2, 'locale', ''),
(45, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(46, 2, 'wp_user_level', '0'),
(47, 2, 'dismissed_wp_pointers', ''),
(52, 1, 'closedpostboxes_note', 'a:1:{i:0;s:11:\"postexcerpt\";}'),
(53, 1, 'metaboxhidden_note', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(54, 2, 'session_tokens', 'a:2:{s:64:\"23a8ff697604c63da4a2f5c6e3e93b4026098b620a37c7016a540eb28bf00286\";a:4:{s:10:\"expiration\";i:1589299802;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588090202;}s:64:\"215c004c56f7b155acda048cbaea3bb65f77d40b7ce146b0faf3fe30b0e09afa\";a:4:{s:10:\"expiration\";i:1589300650;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1588091050;}}'),
(55, 1, 'closedpostboxes_like', 'a:0:{}'),
(56, 1, 'metaboxhidden_like', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(57, 3, 'nickname', 'dev_arif'),
(58, 3, 'first_name', 'dx'),
(59, 3, 'last_name', 'ridder'),
(60, 3, 'description', ''),
(61, 3, 'rich_editing', 'true'),
(62, 3, 'syntax_highlighting', 'true'),
(63, 3, 'comment_shortcuts', 'false'),
(64, 3, 'admin_color', 'fresh'),
(65, 3, 'use_ssl', '0'),
(66, 3, 'show_admin_bar_front', '1'),
(67, 3, 'locale', ''),
(68, 3, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(69, 3, 'wp_user_level', '7'),
(70, 4, 'nickname', 'asdlfj'),
(71, 4, 'first_name', 'asdf'),
(72, 4, 'last_name', 'sadf'),
(73, 4, 'description', ''),
(74, 4, 'rich_editing', 'true'),
(75, 4, 'syntax_highlighting', 'true'),
(76, 4, 'comment_shortcuts', 'false'),
(77, 4, 'admin_color', 'fresh'),
(78, 4, 'use_ssl', '0'),
(79, 4, 'show_admin_bar_front', '1'),
(80, 4, 'locale', ''),
(81, 4, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(82, 4, 'wp_user_level', '7'),
(83, 5, 'nickname', 'arif547136@yahoo.com'),
(84, 5, 'first_name', 'asdf'),
(85, 5, 'last_name', 'asdf'),
(86, 5, 'description', ''),
(87, 5, 'rich_editing', 'true'),
(88, 5, 'syntax_highlighting', 'true'),
(89, 5, 'comment_shortcuts', 'false'),
(90, 5, 'admin_color', 'fresh'),
(91, 5, 'use_ssl', '0'),
(92, 5, 'show_admin_bar_front', 'true'),
(93, 5, 'locale', ''),
(94, 5, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(95, 5, 'wp_user_level', '0'),
(96, 5, 'dismissed_wp_pointers', ''),
(97, 6, 'nickname', 'as3asdf'),
(98, 6, 'first_name', 'asdf'),
(99, 6, 'last_name', 'asdf'),
(100, 6, 'description', ''),
(101, 6, 'rich_editing', 'true'),
(102, 6, 'syntax_highlighting', 'true'),
(103, 6, 'comment_shortcuts', 'false'),
(104, 6, 'admin_color', 'fresh'),
(105, 6, 'use_ssl', '0'),
(106, 6, 'show_admin_bar_front', 'true'),
(107, 6, 'locale', ''),
(108, 6, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(109, 6, 'wp_user_level', '0'),
(110, 6, 'dismissed_wp_pointers', ''),
(111, 7, 'nickname', 'safasfd'),
(112, 7, 'first_name', 'asf'),
(113, 7, 'last_name', 'asdf'),
(114, 7, 'description', ''),
(115, 7, 'rich_editing', 'true'),
(116, 7, 'syntax_highlighting', 'true'),
(117, 7, 'comment_shortcuts', 'false'),
(118, 7, 'admin_color', 'fresh'),
(119, 7, 'use_ssl', '0'),
(120, 7, 'show_admin_bar_front', 'true'),
(121, 7, 'locale', ''),
(122, 7, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(123, 7, 'wp_user_level', '0'),
(124, 7, 'dismissed_wp_pointers', ''),
(125, 8, 'nickname', 'asdf'),
(126, 8, 'first_name', 'asdf'),
(127, 8, 'last_name', 'asdf'),
(128, 8, 'description', ''),
(129, 8, 'rich_editing', 'true'),
(130, 8, 'syntax_highlighting', 'true'),
(131, 8, 'comment_shortcuts', 'false'),
(132, 8, 'admin_color', 'fresh'),
(133, 8, 'use_ssl', '0'),
(134, 8, 'show_admin_bar_front', 'true'),
(135, 8, 'locale', ''),
(136, 8, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(137, 8, 'wp_user_level', '0'),
(138, 8, 'dismissed_wp_pointers', ''),
(139, 9, 'nickname', 'Dev'),
(140, 9, 'first_name', 'Dev'),
(141, 9, 'last_name', 'Arif'),
(142, 9, 'description', ''),
(143, 9, 'rich_editing', 'true'),
(144, 9, 'syntax_highlighting', 'true'),
(145, 9, 'comment_shortcuts', 'false'),
(146, 9, 'admin_color', 'fresh'),
(147, 9, 'use_ssl', '0'),
(148, 9, 'show_admin_bar_front', 'true'),
(149, 9, 'locale', ''),
(150, 9, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(151, 9, 'wp_user_level', '0'),
(152, 9, 'dismissed_wp_pointers', ''),
(153, 10, 'nickname', 'dev'),
(154, 10, 'first_name', 'Dev'),
(155, 10, 'last_name', 'Arif'),
(156, 10, 'description', ''),
(157, 10, 'rich_editing', 'true'),
(158, 10, 'syntax_highlighting', 'true'),
(159, 10, 'comment_shortcuts', 'false'),
(160, 10, 'admin_color', 'fresh'),
(161, 10, 'use_ssl', '0'),
(162, 10, 'show_admin_bar_front', 'true'),
(163, 10, 'locale', ''),
(164, 10, 'wp_capabilities', 'a:1:{s:10:\"Subscriber\";b:1;}'),
(165, 10, 'wp_user_level', '0'),
(166, 10, 'dismissed_wp_pointers', ''),
(167, 10, 'session_tokens', 'a:1:{s:64:\"2388eb68c5d6fb678361bf6794f9c01e707304efa2a0534ac8e073771c858474\";a:4:{s:10:\"expiration\";i:1589454357;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36\";s:5:\"login\";i:1588244757;}}'),
(168, 11, 'nickname', 'dev'),
(169, 11, 'first_name', 'asdf'),
(170, 11, 'last_name', 'asdf'),
(171, 11, 'description', ''),
(172, 11, 'rich_editing', 'true'),
(173, 11, 'syntax_highlighting', 'true'),
(174, 11, 'comment_shortcuts', 'false'),
(175, 11, 'admin_color', 'fresh'),
(176, 11, 'use_ssl', '0'),
(177, 11, 'show_admin_bar_front', 'true'),
(178, 11, 'locale', ''),
(179, 11, 'wp_capabilities', 'a:1:{s:10:\"Subscriber\";b:1;}'),
(180, 11, 'wp_user_level', '0'),
(181, 11, 'dismissed_wp_pointers', ''),
(182, 12, 'nickname', 'dev'),
(183, 12, 'first_name', 'asdf'),
(184, 12, 'last_name', 'asdf'),
(185, 12, 'description', ''),
(186, 12, 'rich_editing', 'true'),
(187, 12, 'syntax_highlighting', 'true'),
(188, 12, 'comment_shortcuts', 'false'),
(189, 12, 'admin_color', 'fresh'),
(190, 12, 'use_ssl', '0'),
(191, 12, 'show_admin_bar_front', 'true'),
(192, 12, 'locale', ''),
(193, 12, 'wp_capabilities', 'a:1:{s:10:\"Subscriber\";b:1;}'),
(194, 12, 'wp_user_level', '0'),
(195, 12, 'dismissed_wp_pointers', ''),
(196, 13, 'nickname', 'dev'),
(197, 13, 'first_name', 'asdf'),
(198, 13, 'last_name', 'asfd'),
(199, 13, 'description', ''),
(200, 13, 'rich_editing', 'true'),
(201, 13, 'syntax_highlighting', 'true'),
(202, 13, 'comment_shortcuts', 'false'),
(203, 13, 'admin_color', 'fresh'),
(204, 13, 'use_ssl', '0'),
(205, 13, 'show_admin_bar_front', 'true'),
(206, 13, 'locale', ''),
(207, 13, 'wp_capabilities', 'a:1:{s:10:\"Subscriber\";b:1;}'),
(208, 13, 'wp_user_level', '0'),
(209, 13, 'dismissed_wp_pointers', ''),
(210, 14, 'nickname', 'dev'),
(211, 14, 'first_name', 'asdf'),
(212, 14, 'last_name', 'asdf'),
(213, 14, 'description', ''),
(214, 14, 'rich_editing', 'true'),
(215, 14, 'syntax_highlighting', 'true'),
(216, 14, 'comment_shortcuts', 'false'),
(217, 14, 'admin_color', 'fresh'),
(218, 14, 'use_ssl', '0'),
(219, 14, 'show_admin_bar_front', 'true'),
(220, 14, 'locale', ''),
(221, 14, 'wp_capabilities', 'a:1:{s:10:\"Subscriber\";b:1;}'),
(222, 14, 'wp_user_level', '0'),
(223, 14, 'dismissed_wp_pointers', ''),
(224, 15, 'nickname', 'dev'),
(225, 15, 'first_name', 'asdf'),
(226, 15, 'last_name', 'asfd'),
(227, 15, 'description', ''),
(228, 15, 'rich_editing', 'true'),
(229, 15, 'syntax_highlighting', 'true'),
(230, 15, 'comment_shortcuts', 'false'),
(231, 15, 'admin_color', 'fresh'),
(232, 15, 'use_ssl', '0'),
(233, 15, 'show_admin_bar_front', 'true'),
(234, 15, 'locale', ''),
(235, 15, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(236, 15, 'wp_user_level', '0'),
(237, 15, 'dismissed_wp_pointers', ''),
(238, 16, 'nickname', 'dev'),
(239, 16, 'first_name', 'asfd'),
(240, 16, 'last_name', 'asfd'),
(241, 16, 'description', ''),
(242, 16, 'rich_editing', 'true'),
(243, 16, 'syntax_highlighting', 'true'),
(244, 16, 'comment_shortcuts', 'false'),
(245, 16, 'admin_color', 'fresh'),
(246, 16, 'use_ssl', '0'),
(247, 16, 'show_admin_bar_front', 'true'),
(248, 16, 'locale', ''),
(249, 16, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(250, 16, 'wp_user_level', '0'),
(251, 16, 'dismissed_wp_pointers', ''),
(266, 18, 'nickname', 'dev'),
(267, 18, 'first_name', 'asd'),
(268, 18, 'last_name', 'asfd'),
(269, 18, 'description', ''),
(270, 18, 'rich_editing', 'true'),
(271, 18, 'syntax_highlighting', 'true'),
(272, 18, 'comment_shortcuts', 'false'),
(273, 18, 'admin_color', 'fresh'),
(274, 18, 'use_ssl', '0'),
(275, 18, 'show_admin_bar_front', 'true'),
(276, 18, 'locale', ''),
(277, 18, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(278, 18, 'wp_user_level', '10'),
(279, 18, 'dismissed_wp_pointers', ''),
(280, 19, 'nickname', 'dev'),
(281, 19, 'first_name', ''),
(282, 19, 'last_name', ''),
(283, 19, 'description', ''),
(284, 19, 'rich_editing', 'true'),
(285, 19, 'syntax_highlighting', 'true'),
(286, 19, 'comment_shortcuts', 'false'),
(287, 19, 'admin_color', 'fresh'),
(288, 19, 'use_ssl', '0'),
(289, 19, 'show_admin_bar_front', 'true'),
(290, 19, 'locale', ''),
(291, 19, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(292, 19, 'wp_user_level', '0'),
(293, 19, 'dismissed_wp_pointers', ''),
(296, 20, 'nickname', 'dev1'),
(297, 20, 'first_name', 'asf'),
(298, 20, 'last_name', 'asf'),
(299, 20, 'description', ''),
(300, 20, 'rich_editing', 'true'),
(301, 20, 'syntax_highlighting', 'true'),
(302, 20, 'comment_shortcuts', 'false'),
(303, 20, 'admin_color', 'fresh'),
(304, 20, 'use_ssl', '0'),
(305, 20, 'show_admin_bar_front', 'true'),
(306, 20, 'locale', ''),
(307, 20, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(308, 20, 'wp_user_level', '10'),
(309, 20, 'dismissed_wp_pointers', ''),
(310, 21, 'nickname', 'dev'),
(311, 21, 'first_name', 'Devoloper'),
(312, 21, 'last_name', 'Arif'),
(313, 21, 'description', ''),
(314, 21, 'rich_editing', 'true'),
(315, 21, 'syntax_highlighting', 'true'),
(316, 21, 'comment_shortcuts', 'false'),
(317, 21, 'admin_color', 'fresh'),
(318, 21, 'use_ssl', '0'),
(319, 21, 'show_admin_bar_front', 'true'),
(320, 21, 'locale', ''),
(321, 21, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(322, 21, 'wp_user_level', '10'),
(323, 21, 'dismissed_wp_pointers', 'members_30'),
(324, 21, 'session_tokens', 'a:1:{s:64:\"c45398e9e0f5067bd4132e33dbc8414e6286f385df77c515a6b94bc9bbbf4211\";a:4:{s:10:\"expiration\";i:1589457387;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36\";s:5:\"login\";i:1588247787;}}'),
(325, 21, 'wp_dashboard_quick_press_last_post_id', '299'),
(326, 22, 'nickname', 'dev'),
(327, 22, 'first_name', 'Devoloper'),
(328, 22, 'last_name', 'Arif'),
(329, 22, 'description', ''),
(330, 22, 'rich_editing', 'true'),
(331, 22, 'syntax_highlighting', 'true'),
(332, 22, 'comment_shortcuts', 'false'),
(333, 22, 'admin_color', 'fresh'),
(334, 22, 'use_ssl', '0'),
(335, 22, 'show_admin_bar_front', 'true'),
(336, 22, 'locale', ''),
(337, 22, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(338, 22, 'wp_user_level', '0'),
(339, 22, 'dismissed_wp_pointers', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B/zg1hWdacUtTbnTA620GXDP2CW6O41', 'admin', 'dxridder0024@gmail.com', 'http://localhost/practice/wordpress', '2020-04-13 07:22:19', '', 0, 'admin'),
(2, 'Sub', '$P$B8ypDwimDoftBR.kTNroNhfBzDHx9L/', 'sub', 'arifdouble1@gmail.com', '', '2020-04-20 13:25:37', '', 0, 'Arifur Rahman'),
(22, 'dev', '$P$BFYyIz8/fTLQNUr6tVqlMhILIbBpnf.', 'dev', 'dev.dr.arif@gmail.com', '', '2020-04-30 11:57:45', '', 0, 'Devoloper Arif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_gmp_icons`
--
ALTER TABLE `wp_gmp_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_gmp_maps`
--
ALTER TABLE `wp_gmp_maps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_gmp_markers`
--
ALTER TABLE `wp_gmp_markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_gmp_marker_groups`
--
ALTER TABLE `wp_gmp_marker_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_gmp_marker_groups_relation`
--
ALTER TABLE `wp_gmp_marker_groups_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_gmp_membership_presets`
--
ALTER TABLE `wp_gmp_membership_presets`
  ADD PRIMARY KEY (`maps_id`);

--
-- Indexes for table `wp_gmp_modules`
--
ALTER TABLE `wp_gmp_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `wp_gmp_modules_type`
--
ALTER TABLE `wp_gmp_modules_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_gmp_options`
--
ALTER TABLE `wp_gmp_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `wp_gmp_options_categories`
--
ALTER TABLE `wp_gmp_options_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `wp_gmp_usage_stat`
--
ALTER TABLE `wp_gmp_usage_stat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_gmp_icons`
--
ALTER TABLE `wp_gmp_icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `wp_gmp_maps`
--
ALTER TABLE `wp_gmp_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_gmp_markers`
--
ALTER TABLE `wp_gmp_markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_gmp_marker_groups`
--
ALTER TABLE `wp_gmp_marker_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_gmp_marker_groups_relation`
--
ALTER TABLE `wp_gmp_marker_groups_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_gmp_modules`
--
ALTER TABLE `wp_gmp_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_gmp_modules_type`
--
ALTER TABLE `wp_gmp_modules_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_gmp_options`
--
ALTER TABLE `wp_gmp_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_gmp_options_categories`
--
ALTER TABLE `wp_gmp_options_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_gmp_usage_stat`
--
ALTER TABLE `wp_gmp_usage_stat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=585;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1316;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
