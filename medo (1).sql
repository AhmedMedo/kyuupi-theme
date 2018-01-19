-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2018 at 01:52 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medo`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-12-21 13:23:12', '2017-12-21 13:23:12', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/themedev', 'yes'),
(2, 'home', 'http://localhost/themedev', 'yes'),
(3, 'blogname', 'themedev', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ahmed.alaa.eldin.hamdy@gmail.com', 'yes'),
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
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:176:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:9:"events/?$";s:25:"index.php?post_type=event";s:39:"events/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=event&feed=$matches[1]";s:34:"events/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=event&feed=$matches[1]";s:26:"events/page/([0-9]{1,})/?$";s:43:"index.php?post_type=event&paged=$matches[1]";s:11:"programs/?$";s:27:"index.php?post_type=program";s:41:"programs/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=program&feed=$matches[1]";s:36:"programs/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=program&feed=$matches[1]";s:28:"programs/page/([0-9]{1,})/?$";s:45:"index.php?post_type=program&paged=$matches[1]";s:11:"campuses/?$";s:26:"index.php?post_type=campus";s:41:"campuses/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=campus&feed=$matches[1]";s:36:"campuses/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=campus&feed=$matches[1]";s:28:"campuses/page/([0-9]{1,})/?$";s:44:"index.php?post_type=campus&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"events/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"events/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"events/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"events/([^/]+)/embed/?$";s:38:"index.php?event=$matches[1]&embed=true";s:27:"events/([^/]+)/trackback/?$";s:32:"index.php?event=$matches[1]&tb=1";s:47:"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?event=$matches[1]&feed=$matches[2]";s:42:"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?event=$matches[1]&feed=$matches[2]";s:35:"events/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&paged=$matches[2]";s:42:"events/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&cpage=$matches[2]";s:31:"events/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?event=$matches[1]&page=$matches[2]";s:23:"events/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"events/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"events/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"programs/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"programs/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"programs/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"programs/([^/]+)/embed/?$";s:40:"index.php?program=$matches[1]&embed=true";s:29:"programs/([^/]+)/trackback/?$";s:34:"index.php?program=$matches[1]&tb=1";s:49:"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?program=$matches[1]&feed=$matches[2]";s:44:"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?program=$matches[1]&feed=$matches[2]";s:37:"programs/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?program=$matches[1]&paged=$matches[2]";s:44:"programs/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?program=$matches[1]&cpage=$matches[2]";s:33:"programs/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?program=$matches[1]&page=$matches[2]";s:25:"programs/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"programs/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"programs/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"professor/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"professor/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"professor/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"professor/([^/]+)/embed/?$";s:42:"index.php?professor=$matches[1]&embed=true";s:30:"professor/([^/]+)/trackback/?$";s:36:"index.php?professor=$matches[1]&tb=1";s:38:"professor/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?professor=$matches[1]&paged=$matches[2]";s:45:"professor/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?professor=$matches[1]&cpage=$matches[2]";s:34:"professor/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?professor=$matches[1]&page=$matches[2]";s:26:"professor/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"professor/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"professor/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"campuses/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"campuses/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"campuses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"campuses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"campuses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"campuses/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"campuses/([^/]+)/embed/?$";s:39:"index.php?campus=$matches[1]&embed=true";s:29:"campuses/([^/]+)/trackback/?$";s:33:"index.php?campus=$matches[1]&tb=1";s:49:"campuses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?campus=$matches[1]&feed=$matches[2]";s:44:"campuses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?campus=$matches[1]&feed=$matches[2]";s:37:"campuses/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?campus=$matches[1]&paged=$matches[2]";s:44:"campuses/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?campus=$matches[1]&cpage=$matches[2]";s:33:"campuses/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?campus=$matches[1]&page=$matches[2]";s:25:"campuses/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"campuses/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"campuses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"campuses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"campuses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"campuses/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=37&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:39:"manual-image-crop/manual-image-crop.php";i:2;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'medo theme', 'yes'),
(41, 'stylesheet', 'medo theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '40', 'yes'),
(84, 'page_on_front', '37', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(376, '_site_transient_timeout_browser_c89882595a0b6fb065599d15013dcdb5', '1516473647', 'no'),
(377, '_site_transient_browser_c89882595a0b6fb065599d15013dcdb5', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"63.0.3239.132";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:5:{i:1516140523;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1516152193;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1516195420;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1516199016;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1513864023;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(123, 'can_compress_scripts', '1', 'no'),
(114, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.1";s:7:"version";s:5:"4.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1516136923;s:15:"version_checked";s:5:"4.9.1";s:12:"translations";a:0:{}}', 'no'),
(404, '_site_transient_theme_roots', 'a:4:{s:10:"medo theme";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(403, '_site_transient_timeout_theme_roots', '1516138728', 'no'),
(119, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1516136933;s:7:"checked";a:4:{s:10:"medo theme";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(237, 'recently_activated', 'a:0:{}', 'yes'),
(238, 'acf_version', '4.4.12', 'yes'),
(168, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(405, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1516136933;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":11:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:3:{s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:7:"default";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";}s:7:"banners";a:3:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";s:7:"default";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:39:"manual-image-crop/manual-image-crop.php";O:8:"stdClass":9:{s:2:"id";s:31:"w.org/plugins/manual-image-crop";s:4:"slug";s:17:"manual-image-crop";s:6:"plugin";s:39:"manual-image-crop/manual-image-crop.php";s:11:"new_version";s:4:"1.12";s:3:"url";s:48:"https://wordpress.org/plugins/manual-image-crop/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip";s:5:"icons";a:3:{s:2:"1x";s:70:"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913";s:2:"2x";s:70:"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913";s:7:"default";s:70:"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913";}s:7:"banners";a:3:{s:2:"2x";s:72:"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224";s:2:"1x";s:71:"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224";s:7:"default";s:72:"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224";}s:11:"banners_rtl";a:0:{}}s:47:"regenerate-thumbnails/regenerate-thumbnails.php";O:8:"stdClass":9:{s:2:"id";s:35:"w.org/plugins/regenerate-thumbnails";s:4:"slug";s:21:"regenerate-thumbnails";s:6:"plugin";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:11:"new_version";s:5:"3.0.1";s:3:"url";s:52:"https://wordpress.org/plugins/regenerate-thumbnails/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip";s:5:"icons";a:2:{s:2:"1x";s:74:"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390";s:7:"default";s:74:"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390";}s:7:"banners";a:3:{s:2:"2x";s:77:"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390";s:2:"1x";s:76:"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390";s:7:"default";s:77:"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(138, 'current_theme', '', 'yes'),
(139, 'theme_mods_medo theme', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:18:"HeaderMenuLocation";i:2;s:17:"FooterLocationOne";i:3;s:17:"FooterLocationTwo";i:4;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(175, 'category_children', 'a:0:{}', 'yes'),
(302, 'mic_make2x', 'true', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1515868753:1'),
(7, 6, '_edit_lock', '1514743784:1'),
(6, 6, '_edit_last', '1'),
(11, 8, '_edit_lock', '1513944101:1'),
(10, 8, '_edit_last', '1'),
(12, 10, '_edit_last', '1'),
(13, 10, '_edit_lock', '1514581265:1'),
(14, 12, '_edit_last', '1'),
(15, 12, '_edit_lock', '1513960963:1'),
(16, 14, '_edit_last', '1'),
(17, 14, '_edit_lock', '1513963594:1'),
(18, 19, '_edit_last', '1'),
(19, 19, '_edit_lock', '1513960543:1'),
(20, 21, '_edit_last', '1'),
(21, 21, '_edit_lock', '1513962750:1'),
(22, 23, '_menu_item_type', 'custom'),
(23, 23, '_menu_item_menu_item_parent', '0'),
(24, 23, '_menu_item_object_id', '23'),
(25, 23, '_menu_item_object', 'custom'),
(26, 23, '_menu_item_target', ''),
(27, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(28, 23, '_menu_item_xfn', ''),
(29, 23, '_menu_item_url', 'http://localhost/themedev/'),
(30, 23, '_menu_item_orphaned', '1513965403'),
(31, 24, '_menu_item_type', 'post_type'),
(32, 24, '_menu_item_menu_item_parent', '0'),
(33, 24, '_menu_item_object_id', '10'),
(34, 24, '_menu_item_object', 'page'),
(35, 24, '_menu_item_target', ''),
(36, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(37, 24, '_menu_item_xfn', ''),
(38, 24, '_menu_item_url', ''),
(39, 24, '_menu_item_orphaned', '1513965403'),
(40, 25, '_menu_item_type', 'post_type'),
(41, 25, '_menu_item_menu_item_parent', '0'),
(42, 25, '_menu_item_object_id', '21'),
(43, 25, '_menu_item_object', 'page'),
(44, 25, '_menu_item_target', ''),
(45, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(46, 25, '_menu_item_xfn', ''),
(47, 25, '_menu_item_url', ''),
(48, 25, '_menu_item_orphaned', '1513965404'),
(49, 26, '_menu_item_type', 'post_type'),
(50, 26, '_menu_item_menu_item_parent', '0'),
(51, 26, '_menu_item_object_id', '14'),
(52, 26, '_menu_item_object', 'page'),
(53, 26, '_menu_item_target', ''),
(54, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(55, 26, '_menu_item_xfn', ''),
(56, 26, '_menu_item_url', ''),
(57, 26, '_menu_item_orphaned', '1513965404'),
(58, 27, '_menu_item_type', 'post_type'),
(59, 27, '_menu_item_menu_item_parent', '0'),
(60, 27, '_menu_item_object_id', '8'),
(61, 27, '_menu_item_object', 'page'),
(62, 27, '_menu_item_target', ''),
(63, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(64, 27, '_menu_item_xfn', ''),
(65, 27, '_menu_item_url', ''),
(66, 27, '_menu_item_orphaned', '1513965404'),
(67, 28, '_menu_item_type', 'post_type'),
(68, 28, '_menu_item_menu_item_parent', '0'),
(69, 28, '_menu_item_object_id', '12'),
(70, 28, '_menu_item_object', 'page'),
(71, 28, '_menu_item_target', ''),
(72, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(73, 28, '_menu_item_xfn', ''),
(74, 28, '_menu_item_url', ''),
(75, 28, '_menu_item_orphaned', '1513965404'),
(76, 29, '_menu_item_type', 'post_type'),
(77, 29, '_menu_item_menu_item_parent', '0'),
(78, 29, '_menu_item_object_id', '19'),
(79, 29, '_menu_item_object', 'page'),
(80, 29, '_menu_item_target', ''),
(81, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(82, 29, '_menu_item_xfn', ''),
(83, 29, '_menu_item_url', ''),
(84, 29, '_menu_item_orphaned', '1513965404'),
(85, 30, '_menu_item_type', 'post_type'),
(86, 30, '_menu_item_menu_item_parent', '0'),
(87, 30, '_menu_item_object_id', '2'),
(88, 30, '_menu_item_object', 'page'),
(89, 30, '_menu_item_target', ''),
(90, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(91, 30, '_menu_item_xfn', ''),
(92, 30, '_menu_item_url', ''),
(93, 30, '_menu_item_orphaned', '1513965404'),
(162, 44, '_menu_item_object_id', '40'),
(161, 44, '_menu_item_menu_item_parent', '0'),
(160, 44, '_menu_item_type', 'post_type'),
(159, 43, '_menu_item_url', ''),
(158, 43, '_menu_item_xfn', ''),
(113, 33, '_menu_item_menu_item_parent', '0'),
(157, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(156, 43, '_menu_item_target', ''),
(155, 43, '_menu_item_object', 'page'),
(154, 43, '_menu_item_object_id', '37'),
(153, 43, '_menu_item_menu_item_parent', '0'),
(152, 43, '_menu_item_type', 'post_type'),
(112, 33, '_menu_item_type', 'post_type'),
(114, 33, '_menu_item_object_id', '14'),
(115, 33, '_menu_item_object', 'page'),
(116, 33, '_menu_item_target', ''),
(117, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(118, 33, '_menu_item_xfn', ''),
(119, 33, '_menu_item_url', ''),
(131, 35, '_menu_item_menu_item_parent', '0'),
(121, 34, '_menu_item_type', 'post_type'),
(122, 34, '_menu_item_menu_item_parent', '0'),
(123, 34, '_menu_item_object_id', '2'),
(124, 34, '_menu_item_object', 'page'),
(125, 34, '_menu_item_target', ''),
(126, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(127, 34, '_menu_item_xfn', ''),
(128, 34, '_menu_item_url', ''),
(130, 35, '_menu_item_type', 'post_type'),
(132, 35, '_menu_item_object_id', '19'),
(133, 35, '_menu_item_object', 'page'),
(134, 35, '_menu_item_target', ''),
(135, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(136, 35, '_menu_item_xfn', ''),
(137, 35, '_menu_item_url', ''),
(149, 37, '_edit_lock', '1513967442:1'),
(139, 36, '_menu_item_type', 'post_type'),
(140, 36, '_menu_item_menu_item_parent', '0'),
(141, 36, '_menu_item_object_id', '21'),
(142, 36, '_menu_item_object', 'page'),
(143, 36, '_menu_item_target', ''),
(144, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(145, 36, '_menu_item_xfn', ''),
(146, 36, '_menu_item_url', ''),
(148, 37, '_edit_last', '1'),
(150, 40, '_edit_last', '1'),
(151, 40, '_edit_lock', '1514579337:1'),
(163, 44, '_menu_item_object', 'page'),
(164, 44, '_menu_item_target', ''),
(165, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(166, 44, '_menu_item_xfn', ''),
(167, 44, '_menu_item_url', ''),
(168, 42, '_wp_trash_meta_status', 'publish'),
(169, 42, '_wp_trash_meta_time', '1513967940'),
(200, 53, 'field_5a43c2a8e0ba0', 'a:11:{s:3:"key";s:19:"field_5a43c2a8e0ba0";s:5:"label";s:10:"Event Date";s:4:"name";s:10:"event_date";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"date_format";s:6:"yymmdd";s:14:"display_format";s:8:"dd/mm/yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(174, 1, '_edit_last', '1'),
(199, 53, '_edit_last', '1'),
(177, 1, '_edit_lock', '1513970879:1'),
(196, 49, '_edit_lock', '1514392805:1'),
(195, 49, '_edit_last', '1'),
(194, 48, '_edit_lock', '1514394499:1'),
(193, 48, '_edit_last', '1'),
(191, 47, '_edit_last', '1'),
(192, 47, '_edit_lock', '1514393340:1'),
(201, 53, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:5:"event";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(202, 53, 'position', 'normal'),
(203, 53, 'layout', 'no_box'),
(204, 53, 'hide_on_screen', ''),
(205, 53, '_edit_lock', '1514466498:1'),
(206, 49, 'event_date', '20170520'),
(207, 49, '_event_date', 'field_5a43c2a8e0ba0'),
(208, 48, 'event_date', '20171228'),
(209, 48, '_event_date', 'field_5a43c2a8e0ba0'),
(210, 47, 'event_date', '20171230'),
(211, 47, '_event_date', 'field_5a43c2a8e0ba0'),
(212, 54, '_edit_last', '1'),
(213, 54, '_edit_lock', '1514494294:1'),
(214, 57, '_edit_last', '1'),
(215, 57, '_edit_lock', '1514827428:1'),
(216, 57, 'event_date', '20180407'),
(217, 57, '_event_date', 'field_5a43c2a8e0ba0'),
(218, 58, '_edit_last', '1'),
(219, 58, '_edit_lock', '1514494967:1'),
(220, 58, 'event_date', '20170511'),
(221, 58, '_event_date', 'field_5a43c2a8e0ba0'),
(222, 59, '_edit_last', '1'),
(223, 59, '_edit_lock', '1514564020:1'),
(224, 59, 'event_date', '20171231'),
(225, 59, '_event_date', 'field_5a43c2a8e0ba0'),
(226, 60, '_menu_item_type', 'custom'),
(227, 60, '_menu_item_menu_item_parent', '0'),
(228, 60, '_menu_item_object_id', '60'),
(229, 60, '_menu_item_object', 'custom'),
(230, 60, '_menu_item_target', ''),
(231, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(232, 60, '_menu_item_xfn', ''),
(233, 60, '_menu_item_url', 'http://localhost/themedev/events/'),
(235, 62, '_edit_last', '1'),
(236, 62, '_edit_lock', '1514744911:1'),
(237, 63, '_edit_last', '1'),
(238, 63, '_edit_lock', '1514550595:1'),
(239, 64, '_edit_last', '1'),
(240, 64, '_edit_lock', '1514550608:1'),
(241, 65, '_edit_last', '1'),
(242, 65, 'field_5a463ebaa7b19', 'a:14:{s:3:"key";s:19:"field_5a463ebaa7b19";s:5:"label";s:18:"Related_Program(s)";s:4:"name";s:16:"related_programs";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:6:"object";s:9:"post_type";a:1:{i:0;s:7:"program";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(263, 65, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:5:"event";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(244, 65, 'position', 'normal'),
(245, 65, 'layout', 'no_box'),
(246, 65, 'hide_on_screen', ''),
(247, 65, '_edit_lock', '1514561763:1'),
(248, 59, 'related_programs', 'a:2:{i:0;s:2:"62";i:1;s:2:"64";}'),
(249, 59, '_related_programs', 'field_5a463ebaa7b19'),
(259, 67, '_edit_last', '1'),
(250, 66, '_menu_item_type', 'custom'),
(251, 66, '_menu_item_menu_item_parent', '0'),
(252, 66, '_menu_item_object_id', '66'),
(253, 66, '_menu_item_object', 'custom'),
(254, 66, '_menu_item_target', ''),
(255, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(256, 66, '_menu_item_xfn', ''),
(257, 66, '_menu_item_url', 'http://localhost/themedev/programs/'),
(260, 67, '_edit_lock', '1514581261:1'),
(261, 68, '_edit_last', '1'),
(262, 68, '_edit_lock', '1514560955:1'),
(264, 65, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:9:"professor";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(265, 68, 'related_programs', 'a:2:{i:0;s:2:"63";i:1;s:2:"62";}'),
(266, 68, '_related_programs', 'field_5a463ebaa7b19'),
(267, 69, '_wp_attached_file', '2017/12/canvas.jpg'),
(268, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:703;s:6:"height";i:433;s:4:"file";s:18:"2017/12/canvas.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"canvas-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"canvas-300x185.jpg";s:5:"width";i:300;s:6:"height";i:185;s:9:"mime-type";s:10:"image/jpeg";}s:14:"professorImage";a:4:{s:4:"file";s:18:"canvas-400x260.jpg";s:5:"width";i:400;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:17:"professorPortrait";a:4:{s:4:"file";s:18:"canvas-480x433.jpg";s:5:"width";i:480;s:6:"height";i:433;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(269, 68, '_thumbnail_id', '69'),
(270, 67, 'related_programs', 'a:3:{i:0;s:2:"62";i:1;s:2:"64";i:2;s:2:"63";}'),
(271, 67, '_related_programs', 'field_5a463ebaa7b19'),
(285, 77, '_wp_attached_file', '2017/12/13062200_10209347017418225_7208554142871032685_n.jpg'),
(286, 77, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:521;s:6:"height";i:523;s:4:"file";s:60:"2017/12/13062200_10209347017418225_7208554142871032685_n.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:60:"13062200_10209347017418225_7208554142871032685_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:60:"13062200_10209347017418225_7208554142871032685_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"professorImage";a:4:{s:4:"file";s:60:"13062200_10209347017418225_7208554142871032685_n-400x260.jpg";s:5:"width";i:400;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:17:"professorPortrait";a:4:{s:4:"file";s:60:"13062200_10209347017418225_7208554142871032685_n-480x523.jpg";s:5:"width";i:480;s:6:"height";i:523;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:15:"micSelectedArea";a:1:{s:14:"professorImage";a:5:{s:1:"x";s:1:"0";s:1:"y";s:1:"4";s:1:"w";s:15:"348.66156787763";s:1:"h";s:18:"226.63001912046516";s:5:"scale";s:15:"1.4942857142857";}}}'),
(276, 73, '_edit_last', '1'),
(277, 73, '_edit_lock', '1514564115:1'),
(278, 74, '_wp_attached_file', '2017/12/305417_385756684848164_138974694_n.jpg'),
(279, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:403;s:6:"height";i:403;s:4:"file";s:46:"2017/12/305417_385756684848164_138974694_n.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"305417_385756684848164_138974694_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:46:"305417_385756684848164_138974694_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"professorImage";a:4:{s:4:"file";s:46:"305417_385756684848164_138974694_n-400x260.jpg";s:5:"width";i:400;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(280, 73, '_thumbnail_id', '74'),
(281, 73, 'related_programs', ''),
(282, 73, '_related_programs', 'field_5a463ebaa7b19'),
(287, 67, '_thumbnail_id', '77'),
(290, 79, '_edit_last', '1'),
(291, 79, 'field_5a4676e0a0fce', 'a:14:{s:3:"key";s:19:"field_5a4676e0a0fce";s:5:"label";s:20:"Page Banner Subtitle";s:4:"name";s:20:"page_banner_subtitle";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(292, 79, 'field_5a4676efa0fcf', 'a:11:{s:3:"key";s:19:"field_5a4676efa0fcf";s:5:"label";s:28:"Page Banner Background Image";s:4:"name";s:28:"page_banner_background_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(293, 79, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(294, 79, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"!=";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(295, 79, 'position', 'normal'),
(296, 79, 'layout', 'no_box'),
(297, 79, 'hide_on_screen', ''),
(298, 79, '_edit_lock', '1514579262:1'),
(299, 80, '_wp_attached_file', '2017/12/www.MyEgY_.com_.Merna-14.jpg'),
(300, 80, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:36:"2017/12/www.MyEgY_.com_.Merna-14.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"www.MyEgY_.com_.Merna-14-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"www.MyEgY_.com_.Merna-14-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:36:"www.MyEgY_.com_.Merna-14-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:37:"www.MyEgY_.com_.Merna-14-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"professorImage";a:4:{s:4:"file";s:36:"www.MyEgY_.com_.Merna-14-400x260.jpg";s:5:"width";i:400;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:17:"professorPortrait";a:4:{s:4:"file";s:36:"www.MyEgY_.com_.Merna-14-480x650.jpg";s:5:"width";i:480;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";}s:10:"PageBanner";a:4:{s:4:"file";s:36:"www.MyEgY_.com_.Merna-14-1500x30.jpg";s:5:"width";i:1500;s:6:"height";i:30;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:15:"micSelectedArea";a:1:{s:10:"PageBanner";a:5:{s:1:"x";s:1:"0";s:1:"y";s:2:"59";s:1:"w";s:3:"500";s:1:"h";s:18:"116.66666666666629";s:5:"scale";s:4:"3.84";}}}'),
(301, 67, 'page_banner_subtitle', 'I am the First one , ooooh Yaaaa'),
(302, 67, '_page_banner_subtitle', 'field_5a4676e0a0fce'),
(303, 67, 'page_banner_background_image', '80'),
(304, 67, '_page_banner_background_image', 'field_5a4676efa0fcf'),
(305, 81, '_wp_attached_file', '2017/12/043-building.jpg'),
(306, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:5707;s:6:"height";i:3810;s:4:"file";s:24:"2017/12/043-building.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"043-building-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"043-building-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"043-building-768x513.jpg";s:5:"width";i:768;s:6:"height";i:513;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"043-building-1024x684.jpg";s:5:"width";i:1024;s:6:"height";i:684;s:9:"mime-type";s:10:"image/jpeg";}s:14:"professorImage";a:4:{s:4:"file";s:24:"043-building-400x260.jpg";s:5:"width";i:400;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:17:"professorPortrait";a:4:{s:4:"file";s:24:"043-building-480x650.jpg";s:5:"width";i:480;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";}s:10:"PageBanner";a:4:{s:4:"file";s:25:"043-building-1500x350.jpg";s:5:"width";i:1500;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(307, 82, 'page_banner_subtitle', 'This is info about us'),
(308, 82, '_page_banner_subtitle', 'field_5a4676e0a0fce'),
(309, 82, 'page_banner_background_image', '81'),
(310, 82, '_page_banner_background_image', 'field_5a4676efa0fcf'),
(311, 10, 'page_banner_subtitle', 'This is info about us'),
(312, 10, '_page_banner_subtitle', 'field_5a4676e0a0fce'),
(313, 10, 'page_banner_background_image', ''),
(314, 10, '_page_banner_background_image', 'field_5a4676efa0fcf'),
(315, 83, '_menu_item_type', 'post_type'),
(316, 83, '_menu_item_menu_item_parent', '0'),
(317, 83, '_menu_item_object_id', '10'),
(318, 83, '_menu_item_object', 'page'),
(319, 83, '_menu_item_target', ''),
(320, 83, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(321, 83, '_menu_item_xfn', ''),
(322, 83, '_menu_item_url', ''),
(324, 84, 'page_banner_subtitle', 'This is info about us'),
(325, 84, '_page_banner_subtitle', 'field_5a4676e0a0fce'),
(326, 84, 'page_banner_background_image', ''),
(327, 84, '_page_banner_background_image', 'field_5a4676efa0fcf'),
(328, 87, '_wp_attached_file', '2017/12/044-notebook.jpg'),
(329, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4592;s:6:"height";i:3448;s:4:"file";s:24:"2017/12/044-notebook.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"044-notebook-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"044-notebook-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"044-notebook-768x577.jpg";s:5:"width";i:768;s:6:"height";i:577;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"044-notebook-1024x769.jpg";s:5:"width";i:1024;s:6:"height";i:769;s:9:"mime-type";s:10:"image/jpeg";}s:14:"professorImage";a:4:{s:4:"file";s:24:"044-notebook-400x260.jpg";s:5:"width";i:400;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:17:"professorPortrait";a:4:{s:4:"file";s:24:"044-notebook-480x650.jpg";s:5:"width";i:480;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";}s:10:"PageBanner";a:4:{s:4:"file";s:25:"044-notebook-1500x350.jpg";s:5:"width";i:1500;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(330, 57, 'page_banner_subtitle', 'Wait for this event'),
(331, 57, '_page_banner_subtitle', 'field_5a4676e0a0fce'),
(332, 57, 'page_banner_background_image', '87'),
(333, 57, '_page_banner_background_image', 'field_5a4676efa0fcf'),
(334, 57, 'related_programs', ''),
(335, 57, '_related_programs', 'field_5a463ebaa7b19'),
(336, 88, '_edit_last', '1'),
(337, 88, '_edit_lock', '1514743795:1'),
(338, 88, 'page_banner_subtitle', ''),
(339, 88, '_page_banner_subtitle', 'field_5a4676e0a0fce'),
(340, 88, 'page_banner_background_image', ''),
(341, 88, '_page_banner_background_image', 'field_5a4676efa0fcf'),
(342, 89, '_edit_last', '1'),
(343, 89, '_edit_lock', '1514655843:1'),
(344, 89, 'page_banner_subtitle', ''),
(345, 89, '_page_banner_subtitle', 'field_5a4676e0a0fce'),
(346, 89, 'page_banner_background_image', ''),
(347, 89, '_page_banner_background_image', 'field_5a4676efa0fcf'),
(348, 89, '_wp_old_slug', 'down-town-east'),
(349, 88, '_wp_old_slug', 'down-town-west'),
(350, 90, '_edit_last', '1'),
(351, 90, 'field_5a4788efe2e95', 'a:12:{s:3:"key";s:19:"field_5a4788efe2e95";s:5:"label";s:12:"Map Location";s:4:"name";s:12:"map_location";s:4:"type";s:10:"google_map";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:10:"center_lat";s:0:"";s:10:"center_lng";s:0:"";s:4:"zoom";s:0:"";s:6:"height";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(352, 90, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:6:"campus";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(353, 90, 'position', 'normal'),
(354, 90, 'layout', 'no_box'),
(355, 90, 'hide_on_screen', ''),
(356, 90, '_edit_lock', '1514638812:1'),
(357, 89, 'map_location', 'a:3:{s:7:"address";s:31:"Cairo, Cairo Governorate, Egypt";s:3:"lat";s:18:"30.045140489735278";s:3:"lng";s:18:"31.236190795898438";}'),
(358, 89, '_map_location', 'field_5a4788efe2e95'),
(359, 88, 'map_location', 'a:3:{s:7:"address";s:56:"Nasr City, Al Manteqah Al Oula, Cairo Governorate, Egypt";s:3:"lat";s:10:"30.0566104";s:3:"lng";s:17:"31.33010760000002";}'),
(360, 88, '_map_location', 'field_5a4788efe2e95'),
(361, 91, '_edit_last', '1'),
(362, 91, 'field_5a49252fbf17a', 'a:14:{s:3:"key";s:19:"field_5a49252fbf17a";s:5:"label";s:18:"Related campus(es)";s:4:"name";s:14:"related_campus";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:6:"object";s:9:"post_type";a:1:{i:0;s:6:"campus";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(363, 91, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"program";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(364, 91, 'position', 'normal'),
(365, 91, 'layout', 'no_box'),
(366, 91, 'hide_on_screen', ''),
(367, 91, '_edit_lock', '1514759271:1'),
(368, 62, 'page_banner_subtitle', ''),
(369, 62, '_page_banner_subtitle', 'field_5a4676e0a0fce'),
(370, 62, 'page_banner_background_image', ''),
(371, 62, '_page_banner_background_image', 'field_5a4676efa0fcf'),
(372, 62, 'related_campus', 'a:1:{i:0;s:2:"88";}'),
(373, 62, '_related_campus', 'field_5a49252fbf17a'),
(374, 92, '_menu_item_type', 'custom'),
(375, 92, '_menu_item_menu_item_parent', '0'),
(376, 92, '_menu_item_object_id', '92'),
(377, 92, '_menu_item_object', 'custom'),
(378, 92, '_menu_item_target', ''),
(379, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(380, 92, '_menu_item_xfn', ''),
(381, 92, '_menu_item_url', 'http://localhost/themedev/campuses/'),
(383, 94, '_edit_last', '1'),
(384, 94, '_edit_lock', '1515872104:1'),
(387, 95, 'page_banner_subtitle', ''),
(388, 95, '_page_banner_subtitle', 'field_5a4676e0a0fce'),
(389, 95, 'page_banner_background_image', ''),
(390, 95, '_page_banner_background_image', 'field_5a4676efa0fcf'),
(391, 94, 'page_banner_subtitle', ''),
(392, 94, '_page_banner_subtitle', 'field_5a4676e0a0fce'),
(393, 94, 'page_banner_background_image', ''),
(394, 94, '_page_banner_background_image', 'field_5a4676efa0fcf');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-12-21 13:23:12', '2017-12-21 13:23:12', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-12-22 19:27:59', '2017-12-22 19:27:59', '', 0, 'http://localhost/themedev/?p=1', 0, 'post', '', 1),
(2, 1, '2017-12-21 13:23:12', '2017-12-21 13:23:12', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/themedev/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-12-21 13:23:12', '2017-12-21 13:23:12', '', 0, 'http://localhost/themedev/?page_id=2', 0, 'page', '', 0),
(54, 1, '2017-12-28 20:47:57', '2017-12-28 20:47:57', '', 'Past events', '', 'publish', 'closed', 'closed', '', 'past-events', '', '', '2017-12-28 20:47:57', '2017-12-28 20:47:57', '', 0, 'http://localhost/themedev/?page_id=54', 0, 'page', '', 0),
(4, 1, '2017-12-21 14:24:33', '2017-12-21 14:24:33', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Test one', '', 'publish', 'open', 'open', '', 'test-one', '', '', '2017-12-22 19:30:24', '2017-12-22 19:30:24', '', 0, 'http://localhost/themedev/?p=4', 0, 'post', '', 0),
(5, 1, '2017-12-21 14:24:33', '2017-12-21 14:24:33', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Test one', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-12-21 14:24:33', '2017-12-21 14:24:33', '', 4, 'http://localhost/themedev/2017/12/21/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2017-12-21 14:25:35', '2017-12-21 14:25:35', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Test Two', 'Oh I am Excerpt', 'publish', 'open', 'open', '', 'test-two', '', '', '2017-12-26 23:26:04', '2017-12-26 23:26:04', '', 0, 'http://localhost/themedev/?p=6', 0, 'post', '', 0),
(7, 1, '2017-12-21 14:25:35', '2017-12-21 14:25:35', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Test Two', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-12-21 14:25:35', '2017-12-21 14:25:35', '', 6, 'http://localhost/themedev/2017/12/21/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-12-21 15:07:07', '2017-12-21 15:07:07', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Page one', '', 'publish', 'closed', 'closed', '', 'page-one', '', '', '2017-12-21 15:07:07', '2017-12-21 15:07:07', '', 0, 'http://localhost/themedev/?page_id=8', 0, 'page', '', 0),
(9, 1, '2017-12-21 15:07:07', '2017-12-21 15:07:07', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Page one', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2017-12-21 15:07:07', '2017-12-21 15:07:07', '', 8, 'http://localhost/themedev/2017/12/21/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2017-12-22 11:46:11', '2017-12-22 11:46:11', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2017-12-29 20:16:43', '2017-12-29 20:16:43', '', 0, 'http://localhost/themedev/?page_id=10', 0, 'page', '', 0),
(11, 1, '2017-12-22 11:46:11', '2017-12-22 11:46:11', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'About us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-12-22 11:46:11', '2017-12-22 11:46:11', '', 10, 'http://localhost/themedev/2017/12/22/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2017-12-22 11:46:32', '2017-12-22 11:46:32', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2017-12-22 11:46:32', '2017-12-22 11:46:32', '', 0, 'http://localhost/themedev/?page_id=12', 0, 'page', '', 0),
(13, 1, '2017-12-22 11:46:32', '2017-12-22 11:46:32', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-12-22 11:46:32', '2017-12-22 11:46:32', '', 12, 'http://localhost/themedev/2017/12/22/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2017-12-22 12:09:44', '2017-12-22 12:09:44', '<div class="container container--narrow page-section">\r\n<div class="generic-content">\r\n<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>\r\n</div>\r\n</div>\r\n<footer class="site-footer">\r\n<div class="site-footer__inner container container--narrow">\r\n<div class="group">\r\n<div class="site-footer__col-one"></div>\r\n</div>\r\n</div>\r\n</footer>', 'Our Goals', '', 'publish', 'closed', 'closed', '', 'our-goals', '', '', '2017-12-22 17:26:34', '2017-12-22 17:26:34', '', 10, 'http://localhost/themedev/?page_id=14', 1, 'page', '', 0),
(15, 1, '2017-12-22 12:09:44', '2017-12-22 12:09:44', '<div class="container container--narrow page-section">\r\n<div class="generic-content">\r\n<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>\r\n</div>\r\n</div>\r\n<footer class="site-footer">\r\n<div class="site-footer__inner container container--narrow">\r\n<div class="group">\r\n<div class="site-footer__col-one"></div>\r\n</div>\r\n</div>\r\n</footer>', 'Our history', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-12-22 12:09:44', '2017-12-22 12:09:44', '', 14, 'http://localhost/themedev/2017/12/22/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2017-12-22 16:03:40', '2017-12-22 16:03:40', '<div class="container container--narrow page-section">\r\n<div class="generic-content">\r\n<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>\r\n</div>\r\n</div>\r\n<footer class="site-footer">\r\n<div class="site-footer__inner container container--narrow">\r\n<div class="group">\r\n<div class="site-footer__col-one"></div>\r\n</div>\r\n</div>\r\n</footer>', 'Our goal', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-12-22 16:03:40', '2017-12-22 16:03:40', '', 14, 'http://localhost/themedev/2017/12/22/14-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2017-12-22 16:03:54', '2017-12-22 16:03:54', '<div class="container container--narrow page-section">\r\n<div class="generic-content">\r\n<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>\r\n</div>\r\n</div>\r\n<footer class="site-footer">\r\n<div class="site-footer__inner container container--narrow">\r\n<div class="group">\r\n<div class="site-footer__col-one"></div>\r\n</div>\r\n</div>\r\n</footer>', 'Our goals', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-12-22 16:03:54', '2017-12-22 16:03:54', '', 14, 'http://localhost/themedev/2017/12/22/14-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2017-12-22 16:04:17', '2017-12-22 16:04:17', '<div class="container container--narrow page-section">\r\n<div class="generic-content">\r\n<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>\r\n</div>\r\n</div>\r\n<footer class="site-footer">\r\n<div class="site-footer__inner container container--narrow">\r\n<div class="group">\r\n<div class="site-footer__col-one"></div>\r\n</div>\r\n</div>\r\n</footer>', 'Our Goals', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-12-22 16:04:17', '2017-12-22 16:04:17', '', 14, 'http://localhost/themedev/2017/12/22/14-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-12-22 16:18:39', '2017-12-22 16:18:39', '<div class="container container--narrow page-section">\r\n<div class="generic-content">\r\n<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>\r\n</div>\r\n</div>', 'Cookie Policy', '', 'publish', 'closed', 'closed', '', 'cookie-policy', '', '', '2017-12-22 16:18:39', '2017-12-22 16:18:39', '', 12, 'http://localhost/themedev/?page_id=19', 0, 'page', '', 0),
(20, 1, '2017-12-22 16:18:39', '2017-12-22 16:18:39', '<div class="container container--narrow page-section">\r\n<div class="generic-content">\r\n<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>\r\n</div>\r\n</div>', 'Cookie Policy', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2017-12-22 16:18:39', '2017-12-22 16:18:39', '', 19, 'http://localhost/themedev/2017/12/22/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2017-12-22 16:45:29', '2017-12-22 16:45:29', '<div class="container container--narrow page-section">\r\n<div class="generic-content">\r\n<div class="container container--narrow page-section">\r\n<div class="generic-content">\r\n<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<footer class="site-footer">\r\n<div class="site-footer__inner container container--narrow">\r\n<div class="group">\r\n<div class="site-footer__col-one"></div>\r\n</div>\r\n</div>\r\n</footer>', 'Our History', '', 'publish', 'closed', 'closed', '', 'our-history', '', '', '2017-12-22 16:45:29', '2017-12-22 16:45:29', '', 10, 'http://localhost/themedev/?page_id=21', 0, 'page', '', 0),
(22, 1, '2017-12-22 16:45:29', '2017-12-22 16:45:29', '<div class="container container--narrow page-section">\r\n<div class="generic-content">\r\n<div class="container container--narrow page-section">\r\n<div class="generic-content">\r\n<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<footer class="site-footer">\r\n<div class="site-footer__inner container container--narrow">\r\n<div class="group">\r\n<div class="site-footer__col-one"></div>\r\n</div>\r\n</div>\r\n</footer>', 'Our History', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-12-22 16:45:29', '2017-12-22 16:45:29', '', 21, 'http://localhost/themedev/2017/12/22/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2017-12-22 17:56:43', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-22 17:56:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/themedev/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2017-12-22 17:56:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-22 17:56:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/themedev/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2017-12-22 17:56:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-22 17:56:43', '0000-00-00 00:00:00', '', 10, 'http://localhost/themedev/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2017-12-22 17:56:44', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-22 17:56:44', '0000-00-00 00:00:00', '', 10, 'http://localhost/themedev/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2017-12-22 17:56:44', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-22 17:56:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/themedev/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2017-12-22 17:56:44', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-22 17:56:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/themedev/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2017-12-22 17:56:44', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-22 17:56:44', '0000-00-00 00:00:00', '', 12, 'http://localhost/themedev/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2017-12-22 17:56:44', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-12-22 17:56:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/themedev/?p=30', 1, 'nav_menu_item', '', 0),
(44, 1, '2017-12-22 18:39:00', '2017-12-22 18:39:00', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2018-01-01 17:08:21', '2018-01-01 17:08:21', '', 0, 'http://localhost/themedev/2017/12/22/44/', 2, 'nav_menu_item', '', 0),
(43, 1, '2017-12-22 18:39:00', '2017-12-22 18:39:00', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2018-01-01 17:08:21', '2018-01-01 17:08:21', '', 0, 'http://localhost/themedev/2017/12/22/43/', 1, 'nav_menu_item', '', 0),
(33, 1, '2017-12-22 18:14:04', '2017-12-22 18:14:04', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2017-12-22 18:14:04', '2017-12-22 18:14:04', '', 10, 'http://localhost/themedev/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2017-12-22 18:14:04', '2017-12-22 18:14:04', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2017-12-22 18:14:04', '2017-12-22 18:14:04', '', 0, 'http://localhost/themedev/?p=34', 2, 'nav_menu_item', '', 0),
(35, 1, '2017-12-22 18:14:31', '2017-12-22 18:14:31', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2017-12-22 18:14:31', '2017-12-22 18:14:31', '', 12, 'http://localhost/themedev/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2017-12-22 18:14:31', '2017-12-22 18:14:31', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2017-12-22 18:14:31', '2017-12-22 18:14:31', '', 10, 'http://localhost/themedev/?p=36', 2, 'nav_menu_item', '', 0),
(37, 1, '2017-12-22 18:33:03', '2017-12-22 18:33:03', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-12-22 18:33:03', '2017-12-22 18:33:03', '', 0, 'http://localhost/themedev/?page_id=37', 0, 'page', '', 0),
(91, 1, '2017-12-31 17:59:21', '2017-12-31 17:59:21', '', 'Related campus(es)', '', 'publish', 'closed', 'closed', '', 'acf_related-campuses', '', '', '2017-12-31 17:59:21', '2017-12-31 17:59:21', '', 0, 'http://localhost/themedev/?post_type=acf&#038;p=91', 0, 'acf', '', 0),
(39, 1, '2017-12-22 18:33:03', '2017-12-22 18:33:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-12-22 18:33:03', '2017-12-22 18:33:03', '', 37, 'http://localhost/themedev/2017/12/22/37-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2017-12-22 18:33:14', '2017-12-22 18:33:14', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-12-22 18:33:14', '2017-12-22 18:33:14', '', 0, 'http://localhost/themedev/?page_id=40', 0, 'page', '', 0),
(41, 1, '2017-12-22 18:33:14', '2017-12-22 18:33:14', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-12-22 18:33:14', '2017-12-22 18:33:14', '', 40, 'http://localhost/themedev/2017/12/22/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2017-12-22 18:39:00', '2017-12-22 18:39:00', '{\n    "nav_menu_item[31]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-22 18:39:00"\n    },\n    "nav_menu_item[32]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-22 18:39:00"\n    },\n    "nav_menu_item[-3314892925253302300]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-22 18:39:00"\n    },\n    "nav_menu_item[-4745512917366389000]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-22 18:39:00"\n    },\n    "nav_menu_item[-5756060450712930000]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-22 18:39:00"\n    },\n    "nav_menu_item[-8234149380600924000]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-22 18:39:00"\n    },\n    "nav_menu_item[-4460785792264767500]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-22 18:39:00"\n    },\n    "nav_menu_item[-6567020275007023000]": {\n        "value": {\n            "object_id": 37,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "post_type",\n            "title": "Home",\n            "url": "http://localhost/themedev/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Home",\n            "nav_menu_term_id": 2,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-22 18:39:00"\n    },\n    "nav_menu_item[-2972263715901739000]": {\n        "value": {\n            "object_id": 40,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "post_type",\n            "title": "Blog",\n            "url": "http://localhost/themedev/blog/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Blog",\n            "nav_menu_term_id": 2,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2017-12-22 18:39:00"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bab9fb61-b0b5-4cd1-a152-ad83b336303c', '', '', '2017-12-22 18:39:00', '2017-12-22 18:39:00', '', 0, 'http://localhost/themedev/2017/12/22/bab9fb61-b0b5-4cd1-a152-ad83b336303c/', 0, 'customize_changeset', '', 0),
(45, 1, '2017-12-22 19:27:59', '2017-12-22 19:27:59', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-12-22 19:27:59', '2017-12-22 19:27:59', '', 1, 'http://localhost/themedev/2017/12/22/1-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2017-12-26 21:44:40', '2017-12-26 21:44:40', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic […]', 'Happy Offers', '', 'publish', 'closed', 'closed', '', 'happy-offers', '', '', '2017-12-27 16:51:35', '2017-12-27 16:51:35', '', 0, 'http://localhost/themedev/?post_type=event&#038;p=48', 0, 'event', '', 0),
(47, 1, '2017-12-26 21:44:26', '2017-12-26 21:44:26', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic', 'Merry Chrismats', '', 'publish', 'closed', 'closed', '', 'merry-chrismats', '', '', '2017-12-27 16:42:58', '2017-12-27 16:42:58', '', 0, 'http://localhost/themedev/?post_type=event&#038;p=47', 0, 'event', '', 0),
(49, 1, '2017-12-26 21:44:51', '2017-12-26 21:44:51', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic […]\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic […]', 'Good Trip', '', 'publish', 'closed', 'closed', '', 'good-trip', '', '', '2017-12-27 16:42:13', '2017-12-27 16:42:13', '', 0, 'http://localhost/themedev/?post_type=event&#038;p=49', 0, 'event', '', 0),
(95, 1, '2018-01-13 18:41:41', '2018-01-13 18:41:41', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Test Three', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2018-01-13 18:41:41', '2018-01-13 18:41:41', '', 94, 'http://localhost/themedev/2018/01/13/94-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2017-12-26 23:26:04', '2017-12-26 23:26:04', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Test Two', 'Oh I am Excerpt', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-12-26 23:26:04', '2017-12-26 23:26:04', '', 6, 'http://localhost/themedev/2017/12/26/6-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2017-12-27 15:59:41', '2017-12-27 15:59:41', '', 'Event Date', '', 'publish', 'closed', 'closed', '', 'acf_event-date', '', '', '2017-12-27 15:59:41', '2017-12-27 15:59:41', '', 0, 'http://localhost/themedev/?post_type=acf&#038;p=53', 0, 'acf', '', 0),
(55, 1, '2017-12-28 20:47:57', '2017-12-28 20:47:57', '', 'Past events', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2017-12-28 20:47:57', '2017-12-28 20:47:57', '', 54, 'http://localhost/themedev/2017/12/28/54-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2017-12-28 20:56:38', '2017-12-28 20:56:38', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic […]\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic […]', 'My Event', '', 'publish', 'open', 'closed', '', 'my-event', '', '', '2018-01-01 17:26:01', '2018-01-01 17:26:01', '', 0, 'http://localhost/themedev/?post_type=event&#038;p=57', 0, 'event', '', 0),
(58, 1, '2017-12-28 21:05:03', '2017-12-28 21:05:03', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic […]\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic […]', 'Event Three', '', 'publish', 'open', 'closed', '', 'event-three', '', '', '2017-12-28 21:05:03', '2017-12-28 21:05:03', '', 0, 'http://localhost/themedev/?post_type=event&#038;p=58', 0, 'event', '', 0),
(59, 1, '2017-12-28 21:05:22', '2017-12-28 21:05:22', '<p style="margin: 0px 0px 1.65em; line-height: 1.65; font-size: 1.15rem; color: #333333; font-family: Roboto, sans-serif;">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic […]</p>\r\n<p style="margin: 0px; line-height: 1.65; font-size: 1.15rem; color: #333333; font-family: Roboto, sans-serif;">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic […]</p>', 'Event Four', '', 'publish', 'open', 'closed', '', 'event-four', '', '', '2017-12-29 14:39:54', '2017-12-29 14:39:54', '', 0, 'http://localhost/themedev/?post_type=event&#038;p=59', 0, 'event', '', 0),
(60, 1, '2017-12-28 21:11:30', '2017-12-28 21:11:30', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2018-01-01 17:08:21', '2018-01-01 17:08:21', '', 0, 'http://localhost/themedev/?p=60', 3, 'nav_menu_item', '', 0),
(62, 1, '2017-12-29 12:32:02', '2017-12-29 12:32:02', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic', 'Math', '', 'publish', 'open', 'closed', '', 'math', '', '', '2017-12-31 17:59:41', '2017-12-31 17:59:41', '', 0, 'http://localhost/themedev/?post_type=program&#038;p=62', 0, 'program', '', 0),
(63, 1, '2017-12-29 12:32:15', '2017-12-29 12:32:15', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic', 'English', '', 'publish', 'open', 'closed', '', 'english', '', '', '2017-12-29 12:32:15', '2017-12-29 12:32:15', '', 0, 'http://localhost/themedev/?post_type=program&#038;p=63', 0, 'program', '', 0),
(64, 1, '2017-12-29 12:32:27', '2017-12-29 12:32:27', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic', 'Physics', '', 'publish', 'open', 'closed', '', 'physics', '', '', '2017-12-29 12:32:27', '2017-12-29 12:32:27', '', 0, 'http://localhost/themedev/?post_type=program&#038;p=64', 0, 'program', '', 0),
(65, 1, '2017-12-29 13:12:00', '2017-12-29 13:12:00', '', 'Related Program', '', 'publish', 'closed', 'closed', '', 'acf_related-program', '', '', '2017-12-29 15:03:02', '2017-12-29 15:03:02', '', 0, 'http://localhost/themedev/?post_type=acf&#038;p=65', 0, 'acf', '', 0),
(66, 1, '2017-12-29 14:02:40', '2017-12-29 14:02:40', '', 'Programs', '', 'publish', 'closed', 'closed', '', 'programs', '', '', '2018-01-01 17:08:21', '2018-01-01 17:08:21', '', 0, 'http://localhost/themedev/?p=66', 4, 'nav_menu_item', '', 0),
(67, 1, '2017-12-29 14:48:44', '2017-12-29 14:48:44', '<div class="generic-content">\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\r\n\r\n</div>', 'Eng Ahmed Alaa', '', 'publish', 'open', 'closed', '', 'eng-ahmed-alaa', '', '', '2017-12-29 17:31:51', '2017-12-29 17:31:51', '', 0, 'http://localhost/themedev/?post_type=professor&#038;p=67', 0, 'professor', '', 0),
(68, 1, '2017-12-29 14:48:59', '2017-12-29 14:48:59', '<div class="generic-content">\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\r\n\r\n</div>', 'Eng Mai Ahmed', '', 'publish', 'open', 'closed', '', 'eng-mai-ahmed', '', '', '2017-12-29 15:24:28', '2017-12-29 15:24:28', '', 0, 'http://localhost/themedev/?post_type=professor&#038;p=68', 0, 'professor', '', 0),
(69, 1, '2017-12-29 15:24:07', '2017-12-29 15:24:07', '', 'Mai Ahmed', '', 'inherit', 'open', 'closed', '', 'canvas', '', '', '2017-12-29 15:24:20', '2017-12-29 15:24:20', '', 68, 'http://localhost/themedev/wp-content/uploads/2017/12/canvas.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2017-12-29 16:27:38', '2017-12-29 16:27:38', '', 'Medo', '', 'inherit', 'open', 'closed', '', '13062200_10209347017418225_7208554142871032685_n', '', '', '2017-12-29 16:27:45', '2017-12-29 16:27:45', '', 67, 'http://localhost/themedev/wp-content/uploads/2017/12/13062200_10209347017418225_7208554142871032685_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2018-01-13 18:41:41', '2018-01-13 18:41:41', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Test Three', '', 'publish', 'open', 'open', '', 'test-three', '', '', '2018-01-13 18:41:41', '2018-01-13 18:41:41', '', 0, 'http://localhost/themedev/?p=94', 0, 'post', '', 0),
(73, 1, '2017-12-29 16:17:24', '2017-12-29 16:17:24', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Eng Saied Ahmed', '', 'publish', 'open', 'closed', '', 'eng-saied-ahmed', '', '', '2017-12-29 16:17:24', '2017-12-29 16:17:24', '', 0, 'http://localhost/themedev/?post_type=professor&#038;p=73', 0, 'professor', '', 0),
(74, 1, '2017-12-29 16:16:49', '2017-12-29 16:16:49', '', '305417_385756684848164_138974694_n', '', 'inherit', 'open', 'closed', '', '305417_385756684848164_138974694_n', '', '', '2017-12-29 16:16:49', '2017-12-29 16:16:49', '', 73, 'http://localhost/themedev/wp-content/uploads/2017/12/305417_385756684848164_138974694_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2018-01-13 18:40:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-01-13 18:40:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/themedev/?p=93', 0, 'post', '', 0),
(79, 1, '2017-12-29 17:11:05', '2017-12-29 17:11:05', '', 'Page Banner', '', 'publish', 'closed', 'closed', '', 'acf_page-banner', '', '', '2017-12-29 17:11:05', '2017-12-29 17:11:05', '', 0, 'http://localhost/themedev/?post_type=acf&#038;p=79', 0, 'acf', '', 0),
(80, 1, '2017-12-29 17:13:54', '2017-12-29 17:13:54', '', 'page_banner_one', '', 'inherit', 'open', 'closed', '', 'www-myegy-com-merna-14', '', '', '2017-12-29 17:14:16', '2017-12-29 17:14:16', '', 67, 'http://localhost/themedev/wp-content/uploads/2017/12/www.MyEgY_.com_.Merna-14.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2017-12-29 19:53:27', '2017-12-29 19:53:27', '', '043 building', '', 'inherit', 'open', 'closed', '', '043-building', '', '', '2017-12-29 19:53:27', '2017-12-29 19:53:27', '', 10, 'http://localhost/themedev/wp-content/uploads/2017/12/043-building.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2017-12-29 19:53:50', '2017-12-29 19:53:50', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'About us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-12-29 19:53:50', '2017-12-29 19:53:50', '', 10, 'http://localhost/themedev/2017/12/29/10-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2017-12-29 19:55:50', '2017-12-29 19:55:50', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2018-01-01 17:08:21', '2018-01-01 17:08:21', '', 0, 'http://localhost/themedev/?p=83', 6, 'nav_menu_item', '', 0),
(84, 1, '2017-12-29 20:16:43', '2017-12-29 20:16:43', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'About us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-12-29 20:16:43', '2017-12-29 20:16:43', '', 10, 'http://localhost/themedev/2017/12/29/10-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2017-12-29 20:39:07', '2017-12-29 20:39:07', '', '044 notebook', '', 'inherit', 'open', 'closed', '', '044-notebook', '', '', '2017-12-29 20:39:07', '2017-12-29 20:39:07', '', 57, 'http://localhost/themedev/wp-content/uploads/2017/12/044-notebook.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2017-12-30 12:34:58', '2017-12-30 12:34:58', '<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>', 'Downtown west', '', 'publish', 'closed', 'closed', '', 'downtown-west', '', '', '2017-12-31 18:12:13', '2017-12-31 18:12:13', '', 0, 'http://localhost/themedev/?post_type=campus&#038;p=88', 0, 'campus', '', 0),
(92, 1, '2018-01-01 17:08:21', '2018-01-01 17:08:21', '', 'Campuses', '', 'publish', 'closed', 'closed', '', 'campuses', '', '', '2018-01-01 17:08:21', '2018-01-01 17:08:21', '', 0, 'http://localhost/themedev/?p=92', 5, 'nav_menu_item', '', 0),
(89, 1, '2017-12-30 12:35:31', '2017-12-30 12:35:31', '<div class="container container--narrow page-section">\r\n<div class="generic-content">\r\n<div>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>\r\n<div></div>\r\n</div>\r\n</div>\r\n<footer class="site-footer">\r\n<div class="site-footer__inner container container--narrow">\r\n<div class="group">\r\n<div class="site-footer__col-one"></div>\r\n</div>\r\n</div>\r\n</footer>', 'Downtown east', '', 'publish', 'open', 'closed', '', 'downtown-east', '', '', '2017-12-30 13:02:21', '2017-12-30 13:02:21', '', 0, 'http://localhost/themedev/?post_type=campus&#038;p=89', 0, 'campus', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(90, 1, '2017-12-30 12:40:17', '2017-12-30 12:40:17', '', 'Map Location', '', 'publish', 'closed', 'closed', '', 'acf_map-location', '', '', '2017-12-30 12:40:17', '2017-12-30 12:40:17', '', 0, 'http://localhost/themedev/?post_type=acf&#038;p=90', 0, 'acf', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'My Menu', 'my-menu', 0),
(3, 'first footer menu', 'first-footer-menu', 0),
(4, 'second footer menu', 'second-footer-menu', 0),
(5, 'Action', 'action', 0),
(6, 'adventure', 'adventure', 0),
(7, 'action', 'action', 0),
(8, 'new', 'new', 0),
(9, 'fun', 'fun', 0),
(10, 'upcoming', 'upcoming', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(6, 7, 0),
(1, 5, 0),
(4, 5, 0),
(44, 2, 0),
(43, 2, 0),
(33, 3, 0),
(34, 3, 0),
(35, 4, 0),
(36, 4, 0),
(6, 6, 0),
(1, 6, 0),
(6, 8, 0),
(6, 9, 0),
(4, 8, 0),
(4, 9, 0),
(4, 10, 0),
(60, 2, 0),
(66, 2, 0),
(83, 2, 0),
(92, 2, 0),
(94, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'nav_menu', '', 0, 2),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 2),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 2),
(9, 9, 'post_tag', '', 0, 2),
(10, 10, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Medo'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', 'A multi-skilled computer engineer, studied computer engineering , started my career in computer engineering as web developer, and expanded my area of expertise into embedded software engineering and Linux system administration . \r\nAfter Graduation , i worked as a web developer using PHP and laravel in many large projects and now working in IOT field.\r\nMy goal is to find solutions for all problems that humanity face using modern technology to make life better with my experience in the my field.'),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"00b63ae91d7bf88bc69fea7d9dfd4fdfec33af4c6eb5f2db80be69afe8073db1";a:4:{s:10:"expiration";i:1517078443;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36";s:5:"login";i:1515868843;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '93'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'closedpostboxes_post', 'a:0:{}'),
(23, 1, 'metaboxhidden_post', 'a:5:{i:0;s:13:"trackbacksdiv";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(24, 1, 'closedpostboxes_acf', 'a:0:{}'),
(25, 1, 'metaboxhidden_acf', 'a:1:{i:0;s:7:"slugdiv";}'),
(26, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(27, 1, 'wp_user-settings-time', '1514561676');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BMlUSSbTNSe6T6xsbzmCmX0nnKqMrM0', 'admin', 'ahmed.alaa.eldin.hamdy@gmail.com', '', '2017-12-21 13:23:12', '', 0, 'Medo');

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=395;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
