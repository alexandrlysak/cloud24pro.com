-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Сен 29 2019 г., 10:48
-- Версия сервера: 5.6.44-cll-lve
-- Версия PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cloud24pro_com`
--

-- --------------------------------------------------------

--
-- Структура таблицы `backend_access_log`
--

CREATE TABLE `backend_access_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '176.108.8.230', '2019-07-27 03:39:41', '2019-07-27 03:39:41'),
(2, 1, '176.108.9.111', '2019-08-03 11:44:11', '2019-08-03 11:44:11'),
(3, 1, '176.108.8.230', '2019-08-08 01:52:29', '2019-08-08 01:52:29'),
(4, 1, '188.93.20.86', '2019-08-13 11:44:02', '2019-08-13 11:44:02'),
(5, 1, '176.108.8.230', '2019-08-16 16:30:56', '2019-08-16 16:30:56'),
(6, 1, '176.108.8.230', '2019-08-16 20:36:04', '2019-08-16 20:36:04'),
(7, 1, '176.108.8.230', '2019-08-17 17:17:48', '2019-08-17 17:17:48'),
(8, 1, '176.108.8.230', '2019-08-19 20:29:30', '2019-08-19 20:29:30'),
(9, 1, '176.108.9.61', '2019-08-29 18:29:31', '2019-08-29 18:29:31'),
(10, 1, '176.108.8.230', '2019-08-30 01:29:47', '2019-08-30 01:29:47'),
(11, 1, '176.108.8.230', '2019-09-19 17:06:59', '2019-09-19 17:06:59'),
(12, 1, '176.108.8.230', '2019-09-23 13:34:55', '2019-09-23 13:34:55'),
(13, 1, '176.108.8.230', '2019-09-24 20:38:15', '2019-09-24 20:38:15');

-- --------------------------------------------------------

--
-- Структура таблицы `backend_users`
--

CREATE TABLE `backend_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `role_id`, `activated_at`, `last_login`, `created_at`, `updated_at`, `deleted_at`, `is_superuser`) VALUES
(1, 'Admin', 'Person', 'admin', 'admin@domain.tld', '$2y$10$upEiUa9MzUaWb0aoMGQuVu.JE8WAugKuW4ySASzm8wdq8yEVp1O1C', NULL, '$2y$10$xFPdI6mmL7cuyZslFJ1rweiGcBOpIvoejTdh9EN2bnDM8BJaJsOjG', NULL, '', 1, 2, NULL, '2019-09-24 20:38:14', '2019-07-27 03:39:22', '2019-09-24 20:38:14', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `backend_users_groups`
--

CREATE TABLE `backend_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `backend_user_groups`
--

CREATE TABLE `backend_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Owners', '2019-07-27 03:39:22', '2019-07-27 03:39:22', 'owners', 'Default group for website owners.', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `backend_user_preferences`
--

CREATE TABLE `backend_user_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `backend_user_preferences`
--

INSERT INTO `backend_user_preferences` (`id`, `user_id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 1, 'backend', 'reportwidgets', 'dashboard', '{\"welcome\":{\"class\":\"Backend\\\\ReportWidgets\\\\Welcome\",\"sortOrder\":50,\"configuration\":{\"ocWidgetWidth\":7}},\"systemStatus\":{\"class\":\"System\\\\ReportWidgets\\\\Status\",\"sortOrder\":60,\"configuration\":{\"ocWidgetWidth\":7}},\"activeTheme\":{\"class\":\"Cms\\\\ReportWidgets\\\\ActiveTheme\",\"sortOrder\":70,\"configuration\":{\"title\":\"Website\",\"ocWidgetWidth\":5,\"ocWidgetNewRow\":null}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `backend_user_roles`
--

CREATE TABLE `backend_user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `backend_user_roles`
--

INSERT INTO `backend_user_roles` (`id`, `name`, `code`, `description`, `permissions`, `is_system`, `created_at`, `updated_at`) VALUES
(1, 'Publisher', 'publisher', 'Site editor with access to publishing tools.', '', 1, '2019-07-27 03:39:22', '2019-07-27 03:39:22'),
(2, 'Developer', 'developer', 'Site administrator with access to developer tools.', '', 1, '2019-07-27 03:39:22', '2019-07-27 03:39:22');

-- --------------------------------------------------------

--
-- Структура таблицы `backend_user_throttle`
--

CREATE TABLE `backend_user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '176.108.8.230', 0, '2019-07-27 19:26:18', 0, NULL, 0, NULL),
(2, 1, '176.108.9.111', 0, NULL, 0, NULL, 0, NULL),
(3, 1, '51.38.73.98', 0, NULL, 0, NULL, 0, NULL),
(4, 1, '188.93.20.86', 0, NULL, 0, NULL, 0, NULL),
(5, 1, '95.213.221.75', 0, NULL, 0, NULL, 0, NULL),
(6, 1, '95.213.221.77', 0, NULL, 0, NULL, 0, NULL),
(7, 1, '95.213.221.77', 0, NULL, 0, NULL, 0, NULL),
(8, 1, '176.108.9.61', 0, NULL, 0, NULL, 0, NULL),
(9, 1, '176.108.9.109', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_theme_data`
--

CREATE TABLE `cms_theme_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cms_theme_logs`
--

CREATE TABLE `cms_theme_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `old_content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `deferred_bindings`
--

CREATE TABLE `deferred_bindings` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `master_field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slave_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci,
  `failed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_01_000001_Db_Deferred_Bindings', 1),
(2, '2013_10_01_000002_Db_System_Files', 1),
(3, '2013_10_01_000003_Db_System_Plugin_Versions', 1),
(4, '2013_10_01_000004_Db_System_Plugin_History', 1),
(5, '2013_10_01_000005_Db_System_Settings', 1),
(6, '2013_10_01_000006_Db_System_Parameters', 1),
(7, '2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
(8, '2013_10_01_000008_Db_System_Mail_Templates', 1),
(9, '2013_10_01_000009_Db_System_Mail_Layouts', 1),
(10, '2014_10_01_000010_Db_Jobs', 1),
(11, '2014_10_01_000011_Db_System_Event_Logs', 1),
(12, '2014_10_01_000012_Db_System_Request_Logs', 1),
(13, '2014_10_01_000013_Db_System_Sessions', 1),
(14, '2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
(15, '2015_10_01_000015_Db_System_Add_Frozen_Flag', 1),
(16, '2015_10_01_000016_Db_Cache', 1),
(17, '2015_10_01_000017_Db_System_Revisions', 1),
(18, '2015_10_01_000018_Db_FailedJobs', 1),
(19, '2016_10_01_000019_Db_System_Plugin_History_Detail_Text', 1),
(20, '2016_10_01_000020_Db_System_Timestamp_Fix', 1),
(21, '2017_08_04_121309_Db_Deferred_Bindings_Add_Index_Session', 1),
(22, '2017_10_01_000021_Db_System_Sessions_Update', 1),
(23, '2017_10_01_000022_Db_Jobs_FailedJobs_Update', 1),
(24, '2017_10_01_000023_Db_System_Mail_Partials', 1),
(25, '2017_10_23_000024_Db_System_Mail_Layouts_Add_Options_Field', 1),
(26, '2013_10_01_000001_Db_Backend_Users', 2),
(27, '2013_10_01_000002_Db_Backend_User_Groups', 2),
(28, '2013_10_01_000003_Db_Backend_Users_Groups', 2),
(29, '2013_10_01_000004_Db_Backend_User_Throttle', 2),
(30, '2014_01_04_000005_Db_Backend_User_Preferences', 2),
(31, '2014_10_01_000006_Db_Backend_Access_Log', 2),
(32, '2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
(33, '2015_10_01_000008_Db_Backend_Add_Superuser_Flag', 2),
(34, '2016_10_01_000009_Db_Backend_Timestamp_Fix', 2),
(35, '2017_10_01_000010_Db_Backend_User_Roles', 2),
(36, '2018_12_16_000011_Db_Backend_Add_Deleted_At', 2),
(37, '2014_10_01_000001_Db_Cms_Theme_Data', 3),
(38, '2016_10_01_000002_Db_Cms_Timestamp_Fix', 3),
(39, '2017_10_01_000003_Db_Cms_Theme_Logs', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `rainlab_translate_attributes`
--

CREATE TABLE `rainlab_translate_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_data` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `rainlab_translate_indexes`
--

CREATE TABLE `rainlab_translate_indexes` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `rainlab_translate_locales`
--

CREATE TABLE `rainlab_translate_locales` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `rainlab_translate_locales`
--

INSERT INTO `rainlab_translate_locales` (`id`, `code`, `name`, `is_default`, `is_enabled`, `sort_order`) VALUES
(1, 'en', 'English', 1, 1, 1),
(7, 'ru', 'Russian', 0, 1, 7),
(8, 'ch', 'Chinese', 0, 1, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `rainlab_translate_messages`
--

CREATE TABLE `rainlab_translate_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_data` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `rainlab_translate_messages`
--

INSERT INTO `rainlab_translate_messages` (`id`, `code`, `message_data`) VALUES
(1, 'home', '{\"x\":\"Home\",\"ru\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\"ch\":\"\\u5bb6\"}'),
(2, 'наша.компания', '{\"x\":\"\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f\"}'),
(3, 'main.page', '{\"x\":\"Main Page\",\"ru\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"}'),
(4, 'cloud.company.s.r.l', '{\"x\":\"CLOUD COMPANY S.R.L.\",\"ru\":\"CLOUD COMPANY S.R.L.\"}'),
(5, 'cloud.company.s.r.l.main.page', '{\"x\":\"CLOUD COMPANY S.R.L. main page\",\"ru\":\"CLOUD COMPANY S.R.L. \\u0433\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\"ch\":\"CLOUD COMPANY S.R.L. \\u4e3b\\u9801\\u9762\"}'),
(6, 'главная.страница', '{\"x\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"}'),
(7, 'cloud.company.s.r.l.главная.страница', '{\"x\":\"CLOUD COMPANY S.R.L. \\u0433\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"}'),
(8, 'our.company', '{\"x\":\"Our company\",\"ru\":\"\\u041d\\u0430\\u0448\\u0430 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f\",\"ch\":\"\\u6211\\u5011\\u516c\\u53f8\"}'),
(9, 'our.businesses', '{\"x\":\"Our businesses\",\"ru\":\"\\u041d\\u0430\\u0448 \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441\",\"ch\":\"\\u6211\\u5011\\u7684\\u696d\\u52d9\"}'),
(10, 'наши.предприятия', '{\"x\":\"\\u041d\\u0430\\u0448\\u0438 \\u043f\\u0440\\u0435\\u0434\\u043f\\u0440\\u0438\\u044f\\u0442\\u0438\\u044f\"}'),
(11, '', '{\"x\":null}'),
(12, 'contact.us', '{\"x\":\"Contact us\",\"ru\":\"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\"ch\":\"\\u806f\\u7e6b\\u6211\\u5011\"}'),
(13, 'we.will.make.your.business.stronger', '{\"x\":\"We will make your business stronger\",\"ru\":\" \\u041c\\u044b \\u0441\\u0434\\u0435\\u043b\\u0430\\u0435\\u043c \\u0432\\u0430\\u0448 \\u0431\\u0438\\u0437\\u043d\\u0435\\u0441 \\u0441\\u0438\\u043b\\u044c\\u043d\\u0435\\u0435\"}'),
(14, 'about.us', '{\"x\":\"About Us\"}'),
(15, 'контакты', '{\"x\":\"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\"}'),
(16, 'more.about.us', '{\"x\":\"More About Us\",\"ru\":\"\\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435\",\"ch\":\"\\u66f4\\u591a\\u95dc\\u65bc\\u6211\\u5011\"}'),
(17, 'our.profile', '{\"x\":\"Our Profile\",\"ru\":\"\\u041f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u0438\",\"ch\":\"\\u6211\\u5011\\u7684\\u7c21\\u4ecb\"}'),
(18, 'our.vision.mission', '{\"x\":\"Our Vision & Mission\",\"ru\":\"\\u041c\\u0438\\u0441\\u0441\\u0438\\u044f\",\"ch\":\"\\u6211\\u5011\\u7684\\u9858\\u666f\\u8207\\u4f7f\\u547d\"}'),
(19, 'our.values', '{\"x\":\"Our Values\",\"ru\":\"\\u041d\\u0430\\u0448\\u0438 \\u0446\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438\",\"ch\":\"\\u6211\\u5011\\u7684\\u9858\\u666f\\u8207\\u4f7f\\u547d\"}'),
(20, 'our.culture', '{\"x\":\"Our Culture\",\"ru\":\"\\u041d\\u0430\\u0448\\u0430 \\u043a\\u0443\\u043b\\u044c\\u0442\\u0443\\u0440\\u0430\",\"ch\":\"\\u6211\\u5011\\u7684\\u6587\\u5316\"}'),
(21, 'generics', '{\"x\":\"Generics\"}'),
(22, 'proprietary.medicines', '{\"x\":\"Proprietary Medicines\",\"ru\":\"\\u0421\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u044b\\u0435 \\u043b\\u0435\\u043a\\u0430\\u0440\\u0441\\u0442\\u0432\\u0430\"}'),
(23, 'biosimilars.genomics.and.clinical.diagnostics', '{\"x\":\"Biosimilars, Genomics and Clinical Diagnostics\",\"ru\":\"\\u0411\\u0438\\u043e\\u043b\\u043e\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0430\\u043d\\u0430\\u043b\\u043e\\u0433\\u0438, \\u0433\\u0435\\u043d\\u043e\\u043c\\u0438\\u043a\\u0430 \\u0438 \\u043a\\u043b\\u0438\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0430\\u044f \\u0434\\u0438\\u0430\\u0433\\u043d\\u043e\\u0441\\u0442\\u0438\\u043a\\u0430\"}'),
(24, 'regional.presence', '{\"x\":\"Regional Presence\",\"ru\":\"\\u0420\\u0435\\u0433\\u0438\\u043e\\u043d\\u0430\\u043b\\u044c\\u043d\\u043e\\u0435 \\u043f\\u0440\\u0438\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435\",\"ch\":\"\\u5340\\u57df\\u5b58\\u5728\"}'),
(25, 'interntational.cooperation', '{\"x\":\"Interntational cooperation\",\"ru\":\"\\u041c\\u0435\\u0436\\u0434\\u0443\\u043d\\u0430\\u0440\\u043e\\u0434\\u043d\\u043e\\u0435 \\u0441\\u043e\\u0442\\u0440\\u0443\\u0434\\u043d\\u0438\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e\",\"ch\":\"\\u570b\\u969b\\u5408\\u4f5c\"}'),
(26, 'our.services', '{\"x\":\"Our services\",\"ru\":\"\\u041d\\u0430\\u0448\\u0438 \\u0443\\u0441\\u043b\\u0443\\u0433\\u0438\",\"ch\":\"\\u6211\\u5011\\u7684\\u670d\\u52d9\"}'),
(27, 'laboratory.research', '{\"x\":\"Laboratory research\",\"ru\":\"\\u041b\\u0430\\u0431\\u043e\\u0440\\u0430\\u0442\\u043e\\u0440\\u043d\\u043e\\u0435 \\u0438\\u0441\\u0441\\u043b\\u0435\\u0434\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435\",\"ch\":\"\\u5be6\\u9a57\\u5ba4\\u7814\\u7a76\"}'),
(28, 'certification.of.products', '{\"x\":\"Certification of products\",\"ru\":\"\\u0421\\u0435\\u0440\\u0442\\u0438\\u0444\\u0438\\u043a\\u0430\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438\",\"ch\":\"\\u7522\\u54c1\\u8a8d\\u8b49\"}'),
(29, 'technical.conditions', '{\"x\":\"Technical conditions\",\"ru\":\"\\u0422\\u0435\\u0445\\u043d\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0435 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f\",\"ch\":\"\\u6280\\u8853\\u689d\\u4ef6\"}'),
(30, 'наши.услуги', '{\"x\":\"\\u041d\\u0430\\u0448\\u0438 \\u0443\\u0441\\u043b\\u0443\\u0433\\u0438\"}'),
(31, 'our.responsibilities', '{\"x\":\"Our Responsibilities\",\"ru\":\"\\u041d\\u0430\\u0448\\u0438 \\u043e\\u0431\\u044f\\u0437\\u0430\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438\"}'),
(32, 'our.belief', '{\"x\":\"Our Belief\",\"ru\":\"\\u041d\\u0430\\u0448\\u0435 \\u0443\\u0431\\u0435\\u0436\\u0434\\u0435\\u043d\\u0438\\u0435\"}'),
(33, 'our.commitment', '{\"x\":\"Our Commitment\",\"ru\":\"\\u041d\\u0430\\u0448\\u0438 \\u043e\\u0431\\u044f\\u0437\\u0430\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0430\"}'),
(34, 'наши.обязанности', '{\"x\":\"\\u041d\\u0430\\u0448\\u0438 \\u043e\\u0431\\u044f\\u0437\\u0430\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438\"}'),
(35, 'careers', '{\"x\":\"Careers\",\"ru\":\"\\u0412\\u0430\\u043a\\u0430\\u043d\\u0441\\u0438\\u0438\",\"ch\":\"\\u62db\\u8ce2\\u7d0d\\u58eb\"}'),
(36, 'вакансии', '{\"x\":\"\\u0412\\u0430\\u043a\\u0430\\u043d\\u0441\\u0438\\u0438\"}'),
(37, 'management.system.certification', '{\"x\":\"Management System Certification\",\"ru\":\"\\u0421\\u0435\\u0440\\u0442\\u0438\\u0444\\u0438\\u043a\\u0430\\u0446\\u0438\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u043c\\u0435\\u043d\\u0442\\u0430\",\"ch\":\"\\u7ba1\\u7406\\u9ad4\\u7cfb\\u8a8d\\u8b49\"}'),
(38, 'сертификация.систем.менеджмента', '{\"x\":\"\\u0421\\u0435\\u0440\\u0442\\u0438\\u0444\\u0438\\u043a\\u0430\\u0446\\u0438\\u044f \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u043c\\u0435\\u043d\\u0442\\u0430\"}'),
(39, 'haccp.system', '{\"x\":\"HACCP SYSTEM\",\"ch\":\"HACCP \\u7cfb\\u7d71\"}'),
(40, 'iso.15189', '{\"x\":\"ISO 15189\"}'),
(41, 'iso.9001', '{\"x\":\"ISO 9001\"}'),
(42, 'iso.14001', '{\"x\":\"ISO 14001\"}'),
(43, 'voluntary.certification', '{\"x\":\"Voluntary certification\",\"ru\":\"\\u0414\\u043e\\u0431\\u0440\\u043e\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0435\\u0440\\u0442\\u0438\\u0444\\u0438\\u043a\\u0430\\u0446\\u0438\\u044f\",\"ch\":\"\\u81ea\\u9858\\u8a8d\\u8b49\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `rainlab_user_mail_blockers`
--

CREATE TABLE `rainlab_user_mail_blockers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `last_activity` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `system_event_logs`
--

CREATE TABLE `system_event_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `details` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `system_event_logs`
--

INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(1, 'error', 'Cms\\Classes\\CmsException: The layout \'default\' is not found in /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php:303\nStack trace:\n#0 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#1 /home/g8g5jo07hdpe/public_html/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#2 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#3 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#4 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#5 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#6 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#7 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#8 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#9 /home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#10 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#11 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#31 /home/g8g5jo07hdpe/public_html/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#32 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#33 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#40 /home/g8g5jo07hdpe/public_html/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#41 {main}', NULL, '2019-07-27 04:02:32', '2019-07-27 04:02:32'),
(2, 'error', 'Twig\\Error\\SyntaxError: Unknown \"var_dump\" function in \"/home/g8g5jo07hdpe/public_html/themes/pharma/partials/header.htm\" at line 2. in /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/ExpressionParser.php:735\nStack trace:\n#0 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/ExpressionParser.php(451): Twig\\ExpressionParser->getFunctionNodeClass(\'var_dump\', 2)\n#1 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/ExpressionParser.php(235): Twig\\ExpressionParser->getFunctionNode(\'var_dump\', 2)\n#2 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/ExpressionParser.php(175): Twig\\ExpressionParser->parsePrimaryExpression()\n#3 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/ExpressionParser.php(70): Twig\\ExpressionParser->getPrimary()\n#4 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Parser.php(142): Twig\\ExpressionParser->parseExpression()\n#5 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#6 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#7 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#8 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#9 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'/home/g8g5jo07h...\', NULL)\n#10 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(1089): Twig\\Environment->loadTemplate(\'/home/g8g5jo07h...\')\n#11 /home/g8g5jo07hdpe/public_html/modules/cms/twig/Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'header\', Array, true)\n#12 /home/g8g5jo07hdpe/public_html/storage/cms/twig/88/88f686f8a0457a56870c2350ba444f883e438ecdbf812af19e81b7ef1cf44540.php(110): Cms\\Twig\\Extension->partialFunction(\'header\', Array, true)\n#13 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(395): __TwigTemplate_e45942891e5cf7e4c455f77adeea55038dd5d01b59304f518016ef858ce4a7bc->doDisplay(Array, Array)\n#14 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(372): Twig\\Template->displayWithErrorHandling(Array, Array)\n#15 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(380): Twig\\Template->display(Array)\n#16 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(434): Twig\\Template->render(Array)\n#17 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#18 /home/g8g5jo07hdpe/public_html/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'our-company\')\n#19 [internal function]: Cms\\Classes\\CmsController->run(\'our-company\')\n#20 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#21 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#22 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#23 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#24 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#25 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#46 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#47 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#48 /home/g8g5jo07hdpe/public_html/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#49 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#50 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#51 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#52 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#53 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#55 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#56 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#57 /home/g8g5jo07hdpe/public_html/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#58 {main}', NULL, '2019-08-08 11:21:10', '2019-08-08 11:21:10'),
(3, 'error', 'Twig\\Error\\SyntaxError: Unexpected token \"name\" of value \"class\" (\"end of statement block\" expected) in \"/home/g8g5jo07hdpe/public_html/themes/pharma/partials/header.htm\" at line 20. in /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/TokenStream.php:76\nStack trace:\n#0 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/TokenParser/IfTokenParser.php(38): Twig\\TokenStream->expect(3)\n#1 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Parser.php(185): Twig\\TokenParser\\IfTokenParser->parse(Object(Twig\\Token))\n#2 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#3 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#4 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#5 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#6 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'/home/g8g5jo07h...\', NULL)\n#7 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(1089): Twig\\Environment->loadTemplate(\'/home/g8g5jo07h...\')\n#8 /home/g8g5jo07hdpe/public_html/modules/cms/twig/Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'header\', Array, true)\n#9 /home/g8g5jo07hdpe/public_html/storage/cms/twig/88/88f686f8a0457a56870c2350ba444f883e438ecdbf812af19e81b7ef1cf44540.php(110): Cms\\Twig\\Extension->partialFunction(\'header\', Array, true)\n#10 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(395): __TwigTemplate_e45942891e5cf7e4c455f77adeea55038dd5d01b59304f518016ef858ce4a7bc->doDisplay(Array, Array)\n#11 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(372): Twig\\Template->displayWithErrorHandling(Array, Array)\n#12 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(380): Twig\\Template->display(Array)\n#13 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(434): Twig\\Template->render(Array)\n#14 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#15 /home/g8g5jo07hdpe/public_html/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'our-company\')\n#16 [internal function]: Cms\\Classes\\CmsController->run(\'our-company\')\n#17 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#18 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#19 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#20 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#21 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#22 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#44 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#45 /home/g8g5jo07hdpe/public_html/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#46 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#47 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#52 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#53 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#54 /home/g8g5jo07hdpe/public_html/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#55 {main}', NULL, '2019-08-08 11:45:26', '2019-08-08 11:45:26'),
(4, 'error', 'Twig\\Error\\SyntaxError: Unexpected token \"operator\" of value \"/\" in \"/home/g8g5jo07hdpe/public_html/themes/pharma/partials/footer.htm\" at line 5. in /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/ExpressionParser.php:285\nStack trace:\n#0 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/ExpressionParser.php(175): Twig\\ExpressionParser->parsePrimaryExpression()\n#1 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/ExpressionParser.php(70): Twig\\ExpressionParser->getPrimary()\n#2 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/ExpressionParser.php(593): Twig\\ExpressionParser->parseExpression(0, false)\n#3 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/ExpressionParser.php(450): Twig\\ExpressionParser->parseArguments(true)\n#4 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/ExpressionParser.php(235): Twig\\ExpressionParser->getFunctionNode(\'url\', 5)\n#5 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/ExpressionParser.php(175): Twig\\ExpressionParser->parsePrimaryExpression()\n#6 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/ExpressionParser.php(70): Twig\\ExpressionParser->getPrimary()\n#7 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Parser.php(142): Twig\\ExpressionParser->parseExpression()\n#8 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#9 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#10 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#11 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#12 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'/home/g8g5jo07h...\', NULL)\n#13 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(1089): Twig\\Environment->loadTemplate(\'/home/g8g5jo07h...\')\n#14 /home/g8g5jo07hdpe/public_html/modules/cms/twig/Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'footer\', Array, true)\n#15 /home/g8g5jo07hdpe/public_html/storage/cms/twig/88/88f686f8a0457a56870c2350ba444f883e438ecdbf812af19e81b7ef1cf44540.php(123): Cms\\Twig\\Extension->partialFunction(\'footer\', Array, true)\n#16 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(395): __TwigTemplate_e45942891e5cf7e4c455f77adeea55038dd5d01b59304f518016ef858ce4a7bc->doDisplay(Array, Array)\n#17 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(372): Twig\\Template->displayWithErrorHandling(Array, Array)\n#18 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(380): Twig\\Template->display(Array)\n#19 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(434): Twig\\Template->render(Array)\n#20 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#21 /home/g8g5jo07hdpe/public_html/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'our-company\')\n#22 [internal function]: Cms\\Classes\\CmsController->run(\'our-company\')\n#23 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#24 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#25 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#26 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#27 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#28 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#42 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#49 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#50 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#51 /home/g8g5jo07hdpe/public_html/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#52 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#53 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#54 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#55 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#56 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#57 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#58 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#59 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#60 /home/g8g5jo07hdpe/public_html/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#61 {main}', NULL, '2019-08-10 08:27:10', '2019-08-10 08:27:10');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(5, 'error', 'Cms\\Classes\\CmsException: The content file \'nav.htm\' is not found. in /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php:1156\nStack trace:\n#0 /home/g8g5jo07hdpe/public_html/modules/cms/twig/Extension.php(113): Cms\\Classes\\Controller->renderContent(\'nav.htm\', Array)\n#1 /home/g8g5jo07hdpe/public_html/storage/cms/twig/a9/a958887c33d43d14095a1d1027cb1909909cd6ba6fba8c92f91a7b09651254d2.php(60): Cms\\Twig\\Extension->contentFunction(\'nav.htm\', Array)\n#2 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(395): __TwigTemplate_6eed7dba4ea7b35651c36775f8e5d54e056cf29d1469d2e2a2171fcf6dfb4eaa->doDisplay(Array, Array)\n#3 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(372): Twig\\Template->displayWithErrorHandling(Array, Array)\n#4 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(380): Twig\\Template->display(Array)\n#5 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(1090): Twig\\Template->render(Array)\n#6 /home/g8g5jo07hdpe/public_html/modules/cms/twig/Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'header\', Array, true)\n#7 /home/g8g5jo07hdpe/public_html/storage/cms/twig/88/88f686f8a0457a56870c2350ba444f883e438ecdbf812af19e81b7ef1cf44540.php(98): Cms\\Twig\\Extension->partialFunction(\'header\', Array, true)\n#8 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(395): __TwigTemplate_e45942891e5cf7e4c455f77adeea55038dd5d01b59304f518016ef858ce4a7bc->doDisplay(Array, Array)\n#9 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(372): Twig\\Template->displayWithErrorHandling(Array, Array)\n#10 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(380): Twig\\Template->display(Array)\n#11 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(434): Twig\\Template->render(Array)\n#12 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#13 /home/g8g5jo07hdpe/public_html/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'our-company\')\n#14 [internal function]: Cms\\Classes\\CmsController->run(\'our-company\')\n#15 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#16 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#17 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#18 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#19 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#20 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#42 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#43 /home/g8g5jo07hdpe/public_html/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#44 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#45 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#51 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#52 /home/g8g5jo07hdpe/public_html/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#53 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"The content file \'nav.htm\' is not found.\") in \"/home/g8g5jo07hdpe/public_html/themes/pharma/partials/header.htm\" at line 18. in /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php:409\nStack trace:\n#0 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(372): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(380): Twig\\Template->display(Array)\n#2 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(1090): Twig\\Template->render(Array)\n#3 /home/g8g5jo07hdpe/public_html/modules/cms/twig/Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'header\', Array, true)\n#4 /home/g8g5jo07hdpe/public_html/storage/cms/twig/88/88f686f8a0457a56870c2350ba444f883e438ecdbf812af19e81b7ef1cf44540.php(98): Cms\\Twig\\Extension->partialFunction(\'header\', Array, true)\n#5 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(395): __TwigTemplate_e45942891e5cf7e4c455f77adeea55038dd5d01b59304f518016ef858ce4a7bc->doDisplay(Array, Array)\n#6 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(372): Twig\\Template->displayWithErrorHandling(Array, Array)\n#7 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(380): Twig\\Template->display(Array)\n#8 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(434): Twig\\Template->render(Array)\n#9 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#10 /home/g8g5jo07hdpe/public_html/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'our-company\')\n#11 [internal function]: Cms\\Classes\\CmsController->run(\'our-company\')\n#12 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#13 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#14 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#15 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#16 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#17 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#35 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#38 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#39 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#40 /home/g8g5jo07hdpe/public_html/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#41 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#42 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#48 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#49 /home/g8g5jo07hdpe/public_html/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#50 {main}', NULL, '2019-08-11 01:23:31', '2019-08-11 01:23:31'),
(6, 'error', 'Twig\\Error\\SyntaxError: Unexpected token \"name\" of value \"company\" (\"end of print statement\" expected) in \"/home/g8g5jo07hdpe/public_html/themes/pharma/partials/header.htm\" at line 30. in /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/TokenStream.php:76\nStack trace:\n#0 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Parser.php(143): Twig\\TokenStream->expect(4)\n#1 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#2 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#3 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#4 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#5 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'/home/g8g5jo07h...\', NULL)\n#6 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(1089): Twig\\Environment->loadTemplate(\'/home/g8g5jo07h...\')\n#7 /home/g8g5jo07hdpe/public_html/modules/cms/twig/Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'localePicker\', Array, true)\n#8 /home/g8g5jo07hdpe/public_html/storage/cms/twig/88/88f686f8a0457a56870c2350ba444f883e438ecdbf812af19e81b7ef1cf44540.php(103): Cms\\Twig\\Extension->partialFunction(\'header\', Array, true)\n#9 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(395): __TwigTemplate_e45942891e5cf7e4c455f77adeea55038dd5d01b59304f518016ef858ce4a7bc->doDisplay(Array, Array)\n#10 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(372): Twig\\Template->displayWithErrorHandling(Array, Array)\n#11 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(380): Twig\\Template->display(Array)\n#12 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(434): Twig\\Template->render(Array)\n#13 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#14 /home/g8g5jo07hdpe/public_html/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'our-company\')\n#15 [internal function]: Cms\\Classes\\CmsController->run(\'our-company\')\n#16 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#17 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#18 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#19 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#20 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#21 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#43 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#44 /home/g8g5jo07hdpe/public_html/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#45 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#46 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#51 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#52 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#53 /home/g8g5jo07hdpe/public_html/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#54 {main}', NULL, '2019-08-11 04:06:27', '2019-08-11 04:06:27'),
(7, 'error', 'Twig\\Error\\SyntaxError: Unexpected token \"name\" of value \"company\" (\"end of print statement\" expected) in \"/home/g8g5jo07hdpe/public_html/themes/pharma/partials/header.htm\" at line 30. in /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/TokenStream.php:76\nStack trace:\n#0 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Parser.php(143): Twig\\TokenStream->expect(4)\n#1 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#2 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#3 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#4 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#5 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'/home/g8g5jo07h...\', NULL)\n#6 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(1089): Twig\\Environment->loadTemplate(\'/home/g8g5jo07h...\')\n#7 /home/g8g5jo07hdpe/public_html/modules/cms/twig/Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'localePicker\', Array, true)\n#8 /home/g8g5jo07hdpe/public_html/storage/cms/twig/5d/5da178f7f14058045e31b2e7c6714784c45615b81f90ba723b85ba9970aa4246.php(104): Cms\\Twig\\Extension->partialFunction(\'header\', Array, true)\n#9 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(395): __TwigTemplate_7a1e88f3c8cdd22d1e5350944119218df7233f7ddd788d9ffdf492e41f7f1da6->doDisplay(Array, Array)\n#10 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(372): Twig\\Template->displayWithErrorHandling(Array, Array)\n#11 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(380): Twig\\Template->display(Array)\n#12 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(434): Twig\\Template->render(Array)\n#13 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#14 /home/g8g5jo07hdpe/public_html/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'/\')\n#15 [internal function]: Cms\\Classes\\CmsController->run(\'/\')\n#16 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#17 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#18 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#19 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#20 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#21 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#43 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#44 /home/g8g5jo07hdpe/public_html/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#45 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#46 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#51 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#52 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#53 /home/g8g5jo07hdpe/public_html/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#54 {main}', NULL, '2019-08-11 04:06:53', '2019-08-11 04:06:53'),
(8, 'error', 'Twig\\Error\\SyntaxError: Unexpected token \"string\" of value \"banner.htm\" (\"end of print statement\" expected) in \"/home/g8g5jo07hdpe/public_html/themes/pharma/partials/banner.htm\" at line 12. in /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/TokenStream.php:76\nStack trace:\n#0 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Parser.php(143): Twig\\TokenStream->expect(4)\n#1 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#2 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#3 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#4 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#5 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'/home/g8g5jo07h...\', NULL)\n#6 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(1089): Twig\\Environment->loadTemplate(\'/home/g8g5jo07h...\')\n#7 /home/g8g5jo07hdpe/public_html/modules/cms/twig/Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'banner\', Array, true)\n#8 /home/g8g5jo07hdpe/public_html/storage/cms/twig/5d/5da178f7f14058045e31b2e7c6714784c45615b81f90ba723b85ba9970aa4246.php(111): Cms\\Twig\\Extension->partialFunction(\'banner\', Array, true)\n#9 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(395): __TwigTemplate_7a1e88f3c8cdd22d1e5350944119218df7233f7ddd788d9ffdf492e41f7f1da6->doDisplay(Array, Array)\n#10 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(372): Twig\\Template->displayWithErrorHandling(Array, Array)\n#11 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(380): Twig\\Template->display(Array)\n#12 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(434): Twig\\Template->render(Array)\n#13 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#14 /home/g8g5jo07hdpe/public_html/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'home\')\n#15 [internal function]: Cms\\Classes\\CmsController->run(\'home\')\n#16 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#17 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#18 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#19 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#20 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#21 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#43 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#44 /home/g8g5jo07hdpe/public_html/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#45 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#46 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#51 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#52 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#53 /home/g8g5jo07hdpe/public_html/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#54 {main}', NULL, '2019-08-11 06:31:31', '2019-08-11 06:31:31');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(9, 'error', 'Twig\\Error\\SyntaxError: Unexpected token \"string\" of value \"banner\" (\"end of print statement\" expected) in \"/home/g8g5jo07hdpe/public_html/themes/pharma/partials/banner.htm\" at line 12. in /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/TokenStream.php:76\nStack trace:\n#0 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Parser.php(143): Twig\\TokenStream->expect(4)\n#1 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#2 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#3 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#4 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#5 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'/home/g8g5jo07h...\', NULL)\n#6 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(1089): Twig\\Environment->loadTemplate(\'/home/g8g5jo07h...\')\n#7 /home/g8g5jo07hdpe/public_html/modules/cms/twig/Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'banner\', Array, true)\n#8 /home/g8g5jo07hdpe/public_html/storage/cms/twig/5d/5da178f7f14058045e31b2e7c6714784c45615b81f90ba723b85ba9970aa4246.php(111): Cms\\Twig\\Extension->partialFunction(\'banner\', Array, true)\n#9 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(395): __TwigTemplate_7a1e88f3c8cdd22d1e5350944119218df7233f7ddd788d9ffdf492e41f7f1da6->doDisplay(Array, Array)\n#10 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(372): Twig\\Template->displayWithErrorHandling(Array, Array)\n#11 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(380): Twig\\Template->display(Array)\n#12 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(434): Twig\\Template->render(Array)\n#13 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#14 /home/g8g5jo07hdpe/public_html/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'home\')\n#15 [internal function]: Cms\\Classes\\CmsController->run(\'home\')\n#16 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#17 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#18 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#19 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#20 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#21 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#43 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#44 /home/g8g5jo07hdpe/public_html/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#45 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#46 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#51 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#52 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#53 /home/g8g5jo07hdpe/public_html/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#54 {main}', NULL, '2019-08-11 06:31:47', '2019-08-11 06:31:47'),
(10, 'error', 'Cms\\Classes\\CmsException: Не удалось найти файл содержимого (content file): \'home-intro.htm\'. in /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php:1156\nStack trace:\n#0 /home/g8g5jo07hdpe/public_html/modules/cms/twig/Extension.php(113): Cms\\Classes\\Controller->renderContent(\'home-intro.htm\', Array)\n#1 /home/g8g5jo07hdpe/public_html/storage/cms/twig/67/677c0c5a5e5c15ee4fb3632bea7e3f301caaa7b9a04a3f4b39a26a6ec352593d.php(153): Cms\\Twig\\Extension->contentFunction(\'home-intro.htm\', Array)\n#2 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(395): __TwigTemplate_9db985c08864f073d56824d45bcf024513b617e940608ad0e31e1fd620dfee7f->doDisplay(Array, Array)\n#3 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(372): Twig\\Template->displayWithErrorHandling(Array, Array)\n#4 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(380): Twig\\Template->display(Array)\n#5 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(424): Twig\\Template->render(Array)\n#6 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#7 /home/g8g5jo07hdpe/public_html/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'home\')\n#8 [internal function]: Cms\\Classes\\CmsController->run(\'home\')\n#9 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#10 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#11 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#12 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#13 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#14 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#35 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#36 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#37 /home/g8g5jo07hdpe/public_html/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#38 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#39 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#45 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#46 /home/g8g5jo07hdpe/public_html/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#47 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"Не удалось найти файл содержимого (content file): \'home-intro.htm\'.\") in \"/home/g8g5jo07hdpe/public_html/themes/pharma/pages/home.htm\" at line 100. in /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php:409\nStack trace:\n#0 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(372): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(380): Twig\\Template->display(Array)\n#2 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(424): Twig\\Template->render(Array)\n#3 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 /home/g8g5jo07hdpe/public_html/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'home\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'home\')\n#6 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#7 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#11 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#33 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#34 /home/g8g5jo07hdpe/public_html/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#35 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#36 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#43 /home/g8g5jo07hdpe/public_html/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#44 {main}', NULL, '2019-08-11 06:39:45', '2019-08-11 06:39:45'),
(11, 'error', 'Twig\\Error\\SyntaxError: Unexpected token \"string\" of value \"banner\" (\"end of print statement\" expected) in \"/home/g8g5jo07hdpe/public_html/themes/pharma/partials/banner.htm\" at line 12. in /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/TokenStream.php:76\nStack trace:\n#0 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Parser.php(143): Twig\\TokenStream->expect(4)\n#1 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#2 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#3 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#4 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#5 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'/home/g8g5jo07h...\', NULL)\n#6 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(1089): Twig\\Environment->loadTemplate(\'/home/g8g5jo07h...\')\n#7 /home/g8g5jo07hdpe/public_html/modules/cms/twig/Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'banner\', Array, true)\n#8 /home/g8g5jo07hdpe/public_html/storage/cms/twig/5d/5da178f7f14058045e31b2e7c6714784c45615b81f90ba723b85ba9970aa4246.php(111): Cms\\Twig\\Extension->partialFunction(\'banner\', Array, true)\n#9 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(395): __TwigTemplate_7a1e88f3c8cdd22d1e5350944119218df7233f7ddd788d9ffdf492e41f7f1da6->doDisplay(Array, Array)\n#10 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(372): Twig\\Template->displayWithErrorHandling(Array, Array)\n#11 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(380): Twig\\Template->display(Array)\n#12 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(434): Twig\\Template->render(Array)\n#13 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#14 /home/g8g5jo07hdpe/public_html/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'home\')\n#15 [internal function]: Cms\\Classes\\CmsController->run(\'home\')\n#16 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#17 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#18 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#19 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#20 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#21 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#43 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#44 /home/g8g5jo07hdpe/public_html/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#45 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#46 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#51 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#52 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#53 /home/g8g5jo07hdpe/public_html/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#54 {main}', NULL, '2019-08-11 06:40:55', '2019-08-11 06:40:55'),
(12, 'error', 'Twig\\Error\\SyntaxError: Unexpected token \"string\" of value \"footer.htm\" (\"end of print statement\" expected) in \"/home/g8g5jo07hdpe/public_html/themes/pharma/partials/footer.htm\" at line 20. in /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/TokenStream.php:76\nStack trace:\n#0 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Parser.php(143): Twig\\TokenStream->expect(4)\n#1 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Parser.php(98): Twig\\Parser->subparse(NULL, false)\n#2 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(563): Twig\\Parser->parse(Object(Twig\\TokenStream))\n#3 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(595): Twig\\Environment->parse(Object(Twig\\TokenStream))\n#4 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(408): Twig\\Environment->compileSource(Object(Twig\\Source))\n#5 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Environment.php(381): Twig\\Environment->loadClass(\'__TwigTemplate_...\', \'/home/g8g5jo07h...\', NULL)\n#6 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(1089): Twig\\Environment->loadTemplate(\'/home/g8g5jo07h...\')\n#7 /home/g8g5jo07hdpe/public_html/modules/cms/twig/Extension.php(102): Cms\\Classes\\Controller->renderPartial(\'footer\', Array, true)\n#8 /home/g8g5jo07hdpe/public_html/storage/cms/twig/5d/5da178f7f14058045e31b2e7c6714784c45615b81f90ba723b85ba9970aa4246.php(130): Cms\\Twig\\Extension->partialFunction(\'footer\', Array, true)\n#9 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(395): __TwigTemplate_7a1e88f3c8cdd22d1e5350944119218df7233f7ddd788d9ffdf492e41f7f1da6->doDisplay(Array, Array)\n#10 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(372): Twig\\Template->displayWithErrorHandling(Array, Array)\n#11 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(380): Twig\\Template->display(Array)\n#12 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(434): Twig\\Template->render(Array)\n#13 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#14 /home/g8g5jo07hdpe/public_html/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'home\')\n#15 [internal function]: Cms\\Classes\\CmsController->run(\'home\')\n#16 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#17 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#18 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#19 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#20 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#21 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#33 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#43 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#44 /home/g8g5jo07hdpe/public_html/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#45 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#46 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#47 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#51 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#52 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#53 /home/g8g5jo07hdpe/public_html/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#54 {main}', NULL, '2019-08-11 06:43:16', '2019-08-11 06:43:16');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(13, 'error', 'Cms\\Classes\\CmsException: Не удалось найти файл содержимого (content file): \'careers.htm\'. in /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php:1156\nStack trace:\n#0 /home/g8g5jo07hdpe/public_html/modules/cms/twig/Extension.php(113): Cms\\Classes\\Controller->renderContent(\'careers.htm\', Array)\n#1 /home/g8g5jo07hdpe/public_html/storage/cms/twig/77/77bd06f3ad5c08fdf149a9ea2342f92001f7e5d09dd29693c63498ef3f305060.php(47): Cms\\Twig\\Extension->contentFunction(\'careers.htm\', Array)\n#2 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(395): __TwigTemplate_b84d05b60a135a712c0719e68985b241ded17950eef575b5d406a7ce9dd4a15a->doDisplay(Array, Array)\n#3 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(372): Twig\\Template->displayWithErrorHandling(Array, Array)\n#4 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(380): Twig\\Template->display(Array)\n#5 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(424): Twig\\Template->render(Array)\n#6 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#7 /home/g8g5jo07hdpe/public_html/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'careers\')\n#8 [internal function]: Cms\\Classes\\CmsController->run(\'careers\')\n#9 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#10 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#11 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#12 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#13 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#14 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#35 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#36 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#37 /home/g8g5jo07hdpe/public_html/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#38 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#39 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#45 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#46 /home/g8g5jo07hdpe/public_html/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#47 {main}\n\nNext Twig\\Error\\RuntimeError: An exception has been thrown during the rendering of a template (\"Не удалось найти файл содержимого (content file): \'careers.htm\'.\") in \"/home/g8g5jo07hdpe/public_html/themes/pharma/pages/vakansii.htm\" at line 4. in /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php:409\nStack trace:\n#0 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(372): Twig\\Template->displayWithErrorHandling(Array, Array)\n#1 /home/g8g5jo07hdpe/public_html/vendor/twig/twig/src/Template.php(380): Twig\\Template->display(Array)\n#2 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(424): Twig\\Template->render(Array)\n#3 /home/g8g5jo07hdpe/public_html/modules/cms/classes/Controller.php(224): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#4 /home/g8g5jo07hdpe/public_html/modules/cms/classes/CmsController.php(50): Cms\\Classes\\Controller->run(\'careers\')\n#5 [internal function]: Cms\\Classes\\CmsController->run(\'careers\')\n#6 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#7 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#8 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Cms\\Classes\\CmsController), \'run\')\n#9 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#10 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#11 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/classes/LocaleMiddleware.php(29): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): RainLab\\Translate\\Classes\\LocaleMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#14 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#16 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#20 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#23 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#33 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#34 /home/g8g5jo07hdpe/public_html/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#35 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#36 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#43 /home/g8g5jo07hdpe/public_html/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#44 {main}', NULL, '2019-08-16 21:35:07', '2019-08-16 21:35:07'),
(14, 'error', 'UnexpectedValueException: FilesystemIterator::__construct(/home/g8g5jo07hdpe/public_html/storage/framework/cache/28): failed to open dir: No such file or directory in /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Filesystem/Filesystem.php:531\nStack trace:\n#0 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Filesystem/Filesystem.php(531): FilesystemIterator->__construct(\'/home/g8g5jo07h...\')\n#1 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cache/FileStore.php(149): Illuminate\\Filesystem\\Filesystem->deleteDirectory(\'/home/g8g5jo07h...\')\n#2 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cache/Repository.php(574): Illuminate\\Cache\\FileStore->flush()\n#3 /home/g8g5jo07hdpe/public_html/vendor/october/rain/src/Halcyon/MemoryRepository.php(127): Illuminate\\Cache\\Repository->__call(\'flush\', Array)\n#4 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cache/CacheManager.php(304): October\\Rain\\Halcyon\\MemoryRepository->flush()\n#5 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(221): Illuminate\\Cache\\CacheManager->__call(\'flush\', Array)\n#6 /home/g8g5jo07hdpe/public_html/modules/system/helpers/Cache.php(17): Illuminate\\Support\\Facades\\Facade::__callStatic(\'flush\', Array)\n#7 /home/g8g5jo07hdpe/public_html/plugins/rainlab/translate/controllers/Messages.php(60): System\\Helpers\\Cache::clear()\n#8 [internal function]: RainLab\\Translate\\Controllers\\Messages->onClearCache()\n#9 /home/g8g5jo07hdpe/public_html/modules/backend/classes/Controller.php(621): call_user_func_array(Array, Array)\n#10 /home/g8g5jo07hdpe/public_html/modules/backend/classes/Controller.php(471): Backend\\Classes\\Controller->runAjaxHandler(\'onClearCache\')\n#11 /home/g8g5jo07hdpe/public_html/modules/backend/classes/Controller.php(268): Backend\\Classes\\Controller->execAjaxHandlers()\n#12 /home/g8g5jo07hdpe/public_html/modules/backend/classes/BackendController.php(161): Backend\\Classes\\Controller->run(\'index\', Array)\n#13 [internal function]: Backend\\Classes\\BackendController->run(\'rainlab/transla...\')\n#14 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(54): call_user_func_array(Array, Array)\n#15 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(45): Illuminate\\Routing\\Controller->callAction(\'run\', Array)\n#16 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(212): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Backend\\Classes\\BackendController), \'run\')\n#17 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Route.php(169): Illuminate\\Routing\\Route->runController()\n#18 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(658): Illuminate\\Routing\\Route->run()\n#19 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /home/g8g5jo07hdpe/public_html/modules/backend/classes/BackendController.php(68): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(131): Backend\\Classes\\BackendController->Backend\\Classes\\{closure}(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(63): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#33 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#34 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(66): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(660): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(635): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#41 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Router.php(601): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#42 /home/g8g5jo07hdpe/public_html/vendor/october/rain/src/Router/CoreRouter.php(20): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#43 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(176): October\\Rain\\Router\\CoreRouter->dispatch(Object(Illuminate\\Http\\Request))\n#44 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(30): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#45 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#46 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(149): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(102): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#49 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(151): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#50 /home/g8g5jo07hdpe/public_html/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(116): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#51 /home/g8g5jo07hdpe/public_html/index.php(43): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#52 {main}', NULL, '2019-09-23 14:02:21', '2019-09-23 14:02:21');

-- --------------------------------------------------------

--
-- Структура таблицы `system_files`
--

CREATE TABLE `system_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `system_mail_layouts`
--

CREATE TABLE `system_mail_layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `content_css` text COLLATE utf8mb4_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `options`, `created_at`, `updated_at`) VALUES
(1, 'Default layout', 'default', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-default\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\n        <!-- Header -->\n        {% partial \'header\' body %}\n            {{ subject|raw }}\n        {% endpartial %}\n\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n\n        <!-- Footer -->\n        {% partial \'footer\' body %}\n            &copy; {{ \"now\"|date(\"Y\") }} {{ appName }}. All rights reserved.\n        {% endpartial %}\n\n    </table>\n\n</body>\n</html>', '{{ content|raw }}', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-07-27 03:39:22', '2019-07-27 03:39:22'),
(2, 'System layout', 'system', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n</head>\n<body>\n    <style type=\"text/css\" media=\"screen\">\n        {{ brandCss|raw }}\n        {{ css|raw }}\n    </style>\n\n    <table class=\"wrapper layout-system\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n        <tr>\n            <td align=\"center\">\n                <table class=\"content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                    <!-- Email Body -->\n                    <tr>\n                        <td class=\"body\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n                            <table class=\"inner-body\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\">\n                                <!-- Body content -->\n                                <tr>\n                                    <td class=\"content-cell\">\n                                        {{ content|raw }}\n\n                                        <!-- Subcopy -->\n                                        {% partial \'subcopy\' body %}\n                                            **This is an automatic message. Please do not reply to it.**\n                                        {% endpartial %}\n                                    </td>\n                                </tr>\n                            </table>\n                        </td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n\n</body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', '@media only screen and (max-width: 600px) {\n    .inner-body {\n        width: 100% !important;\n    }\n\n    .footer {\n        width: 100% !important;\n    }\n}\n\n@media only screen and (max-width: 500px) {\n    .button {\n        width: 100% !important;\n    }\n}', 1, NULL, '2019-07-27 03:39:22', '2019-07-27 03:39:22');

-- --------------------------------------------------------

--
-- Структура таблицы `system_mail_partials`
--

CREATE TABLE `system_mail_partials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `system_mail_templates`
--

CREATE TABLE `system_mail_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content_html` text COLLATE utf8mb4_unicode_ci,
  `content_text` text COLLATE utf8mb4_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `system_parameters`
--

CREATE TABLE `system_parameters` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '4'),
(2, 'system', 'core', 'hash', '\"530fb2559d6b264485c60ac3797fe8ac\"'),
(3, 'system', 'core', 'build', '\"455\"'),
(4, 'system', 'update', 'retry', '1569418698'),
(5, 'cms', 'theme', 'active', '\"pharma\"');

-- --------------------------------------------------------

--
-- Структура таблицы `system_plugin_history`
--

CREATE TABLE `system_plugin_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(1, 'October.Demo', 'comment', '1.0.1', 'First version of Demo', '2019-07-27 03:39:22'),
(2, 'RainLab.Builder', 'comment', '1.0.1', 'Initialize plugin.', '2019-07-27 03:40:21'),
(3, 'RainLab.Builder', 'comment', '1.0.2', 'Fixes the problem with selecting a plugin. Minor localization corrections. Configuration files in the list and form behaviors are now autocomplete.', '2019-07-27 03:40:21'),
(4, 'RainLab.Builder', 'comment', '1.0.3', 'Improved handling of the enum data type.', '2019-07-27 03:40:21'),
(5, 'RainLab.Builder', 'comment', '1.0.4', 'Added user permissions to work with the Builder.', '2019-07-27 03:40:21'),
(6, 'RainLab.Builder', 'comment', '1.0.5', 'Fixed permissions registration.', '2019-07-27 03:40:21'),
(7, 'RainLab.Builder', 'comment', '1.0.6', 'Fixed front-end record ordering in the Record List component.', '2019-07-27 03:40:21'),
(8, 'RainLab.Builder', 'comment', '1.0.7', 'Builder settings are now protected with user permissions. The database table column list is scrollable now. Minor code cleanup.', '2019-07-27 03:40:21'),
(9, 'RainLab.Builder', 'comment', '1.0.8', 'Added the Reorder Controller behavior.', '2019-07-27 03:40:21'),
(10, 'RainLab.Builder', 'comment', '1.0.9', 'Minor API and UI updates.', '2019-07-27 03:40:21'),
(11, 'RainLab.Builder', 'comment', '1.0.10', 'Minor styling update.', '2019-07-27 03:40:21'),
(12, 'RainLab.Builder', 'comment', '1.0.11', 'Fixed a bug where clicking placeholder in a repeater would open Inspector. Fixed a problem with saving forms with repeaters in tabs. Minor style fix.', '2019-07-27 03:40:21'),
(13, 'RainLab.Builder', 'comment', '1.0.12', 'Added support for the Trigger property to the Media Finder widget configuration. Names of form fields and list columns definition files can now contain underscores.', '2019-07-27 03:40:21'),
(14, 'RainLab.Builder', 'comment', '1.0.13', 'Minor styling fix on the database editor.', '2019-07-27 03:40:21'),
(15, 'RainLab.Builder', 'comment', '1.0.14', 'Added support for published_at timestamp field', '2019-07-27 03:40:21'),
(16, 'RainLab.Builder', 'comment', '1.0.15', 'Fixed a bug where saving a localization string in Inspector could cause a JavaScript error. Added support for Timestamps and Soft Deleting for new models.', '2019-07-27 03:40:21'),
(17, 'RainLab.Builder', 'comment', '1.0.16', 'Fixed a bug when saving a form with the Repeater widget in a tab could create invalid fields in the form\'s outside area. Added a check that prevents creating localization strings inside other existing strings.', '2019-07-27 03:40:21'),
(18, 'RainLab.Builder', 'comment', '1.0.17', 'Added support Trigger attribute support for RecordFinder and Repeater form widgets.', '2019-07-27 03:40:21'),
(19, 'RainLab.Builder', 'comment', '1.0.18', 'Fixes a bug where \'::class\' notations in a model class definition could prevent the model from appearing in the Builder model list. Added emptyOption property support to the dropdown form control.', '2019-07-27 03:40:21'),
(20, 'RainLab.Builder', 'comment', '1.0.19', 'Added a feature allowing to add all database columns to a list definition. Added max length validation for database table and column names.', '2019-07-27 03:40:21'),
(21, 'RainLab.Builder', 'comment', '1.0.20', 'Fixes a bug where form the builder could trigger the \"current.hasAttribute is not a function\" error.', '2019-07-27 03:40:21'),
(22, 'RainLab.Builder', 'comment', '1.0.21', 'Back-end navigation sort order updated.', '2019-07-27 03:40:21'),
(23, 'RainLab.Builder', 'comment', '1.0.22', 'Added scopeValue property to the RecordList component.', '2019-07-27 03:40:21'),
(24, 'RainLab.Builder', 'comment', '1.0.23', 'Added support for balloon-selector field type, added Brazilian Portuguese translation, fixed some bugs', '2019-07-27 03:40:21'),
(25, 'RainLab.Builder', 'comment', '1.0.24', 'Added support for tag list field type, added read only toggle for fields. Prevent plugins from using reserved PHP keywords for class names and namespaces', '2019-07-27 03:40:21'),
(26, 'RainLab.Builder', 'comment', '1.0.25', 'Allow editing of migration code in the \"Migration\" popup when saving changes in the database editor.', '2019-07-27 03:40:21'),
(27, 'RainLab.User', 'script', '1.0.1', 'create_users_table.php', '2019-07-27 03:40:42'),
(28, 'RainLab.User', 'script', '1.0.1', 'create_throttle_table.php', '2019-07-27 03:40:42'),
(29, 'RainLab.User', 'comment', '1.0.1', 'Initialize plugin.', '2019-07-27 03:40:42'),
(30, 'RainLab.User', 'comment', '1.0.2', 'Seed tables.', '2019-07-27 03:40:42'),
(31, 'RainLab.User', 'comment', '1.0.3', 'Translated hard-coded text to language strings.', '2019-07-27 03:40:42'),
(32, 'RainLab.User', 'comment', '1.0.4', 'Improvements to user-interface for Location manager.', '2019-07-27 03:40:42'),
(33, 'RainLab.User', 'comment', '1.0.5', 'Added contact details for users.', '2019-07-27 03:40:42'),
(34, 'RainLab.User', 'script', '1.0.6', 'create_mail_blockers_table.php', '2019-07-27 03:40:43'),
(35, 'RainLab.User', 'comment', '1.0.6', 'Added Mail Blocker utility so users can block specific mail templates.', '2019-07-27 03:40:43'),
(36, 'RainLab.User', 'comment', '1.0.7', 'Add back-end Settings page.', '2019-07-27 03:40:43'),
(37, 'RainLab.User', 'comment', '1.0.8', 'Updated the Settings page.', '2019-07-27 03:40:43'),
(38, 'RainLab.User', 'comment', '1.0.9', 'Adds new welcome mail message for users and administrators.', '2019-07-27 03:40:43'),
(39, 'RainLab.User', 'comment', '1.0.10', 'Adds administrator-only activation mode.', '2019-07-27 03:40:43'),
(40, 'RainLab.User', 'script', '1.0.11', 'users_add_login_column.php', '2019-07-27 03:40:43'),
(41, 'RainLab.User', 'comment', '1.0.11', 'Users now have an optional login field that defaults to the email field.', '2019-07-27 03:40:43'),
(42, 'RainLab.User', 'script', '1.0.12', 'users_rename_login_to_username.php', '2019-07-27 03:40:43'),
(43, 'RainLab.User', 'comment', '1.0.12', 'Create a dedicated setting for choosing the login mode.', '2019-07-27 03:40:43'),
(44, 'RainLab.User', 'comment', '1.0.13', 'Minor fix to the Account sign in logic.', '2019-07-27 03:40:43'),
(45, 'RainLab.User', 'comment', '1.0.14', 'Minor improvements to the code.', '2019-07-27 03:40:43'),
(46, 'RainLab.User', 'script', '1.0.15', 'users_add_surname.php', '2019-07-27 03:40:43'),
(47, 'RainLab.User', 'comment', '1.0.15', 'Adds last name column to users table (surname).', '2019-07-27 03:40:43'),
(48, 'RainLab.User', 'comment', '1.0.16', 'Require permissions for settings page too.', '2019-07-27 03:40:43'),
(49, 'RainLab.User', 'comment', '1.1.0', '!!! Profile fields and Locations have been removed.', '2019-07-27 03:40:43'),
(50, 'RainLab.User', 'script', '1.1.1', 'create_user_groups_table.php', '2019-07-27 03:40:43'),
(51, 'RainLab.User', 'script', '1.1.1', 'seed_user_groups_table.php', '2019-07-27 03:40:43'),
(52, 'RainLab.User', 'comment', '1.1.1', 'Users can now be added to groups.', '2019-07-27 03:40:43'),
(53, 'RainLab.User', 'comment', '1.1.2', 'A raw URL can now be passed as the redirect property in the Account component.', '2019-07-27 03:40:43'),
(54, 'RainLab.User', 'comment', '1.1.3', 'Adds a super user flag to the users table, reserved for future use.', '2019-07-27 03:40:43'),
(55, 'RainLab.User', 'comment', '1.1.4', 'User list can be filtered by the group they belong to.', '2019-07-27 03:40:43'),
(56, 'RainLab.User', 'comment', '1.1.5', 'Adds a new permission to hide the User settings menu item.', '2019-07-27 03:40:43'),
(57, 'RainLab.User', 'script', '1.2.0', 'users_add_deleted_at.php', '2019-07-27 03:40:43'),
(58, 'RainLab.User', 'comment', '1.2.0', 'Users can now deactivate their own accounts.', '2019-07-27 03:40:43'),
(59, 'RainLab.User', 'comment', '1.2.1', 'New feature for checking if a user is recently active/online.', '2019-07-27 03:40:43'),
(60, 'RainLab.User', 'comment', '1.2.2', 'Add bulk action button to user list.', '2019-07-27 03:40:43'),
(61, 'RainLab.User', 'comment', '1.2.3', 'Included some descriptive paragraphs in the Reset Password component markup.', '2019-07-27 03:40:43'),
(62, 'RainLab.User', 'comment', '1.2.4', 'Added a checkbox for blocking all mail sent to the user.', '2019-07-27 03:40:43'),
(63, 'RainLab.User', 'script', '1.2.5', 'update_timestamp_nullable.php', '2019-07-27 03:40:43'),
(64, 'RainLab.User', 'comment', '1.2.5', 'Database maintenance. Updated all timestamp columns to be nullable.', '2019-07-27 03:40:43'),
(65, 'RainLab.User', 'script', '1.2.6', 'users_add_last_seen.php', '2019-07-27 03:40:43'),
(66, 'RainLab.User', 'comment', '1.2.6', 'Add a dedicated last seen column for users.', '2019-07-27 03:40:43'),
(67, 'RainLab.User', 'comment', '1.2.7', 'Minor fix to user timestamp attributes.', '2019-07-27 03:40:43'),
(68, 'RainLab.User', 'comment', '1.2.8', 'Add date range filter to users list. Introduced a logout event.', '2019-07-27 03:40:43'),
(69, 'RainLab.User', 'comment', '1.2.9', 'Add invitation mail for new accounts created in the back-end.', '2019-07-27 03:40:43'),
(70, 'RainLab.User', 'script', '1.3.0', 'users_add_guest_flag.php', '2019-07-27 03:40:43'),
(71, 'RainLab.User', 'script', '1.3.0', 'users_add_superuser_flag.php', '2019-07-27 03:40:43'),
(72, 'RainLab.User', 'comment', '1.3.0', 'Introduced guest user accounts.', '2019-07-27 03:40:43'),
(73, 'RainLab.User', 'comment', '1.3.1', 'User notification variables can now be extended.', '2019-07-27 03:40:43'),
(74, 'RainLab.User', 'comment', '1.3.2', 'Minor fix to the Auth::register method.', '2019-07-27 03:40:43'),
(75, 'RainLab.User', 'comment', '1.3.3', 'Allow prevention of concurrent user sessions via the user settings.', '2019-07-27 03:40:43'),
(76, 'RainLab.User', 'comment', '1.3.4', 'Added force secure protocol property to the account component.', '2019-07-27 03:40:43'),
(77, 'RainLab.User', 'comment', '1.4.0', '!!! The Notifications tab in User settings has been removed.', '2019-07-27 03:40:43'),
(78, 'RainLab.User', 'comment', '1.4.1', 'Added support for user impersonation.', '2019-07-27 03:40:43'),
(79, 'RainLab.User', 'comment', '1.4.2', 'Fixes security bug in Password Reset component.', '2019-07-27 03:40:43'),
(80, 'RainLab.User', 'comment', '1.4.3', 'Fixes session handling for AJAX requests.', '2019-07-27 03:40:43'),
(81, 'RainLab.User', 'comment', '1.4.4', 'Fixes bug where impersonation touches the last seen timestamp.', '2019-07-27 03:40:43'),
(82, 'RainLab.User', 'comment', '1.4.5', 'Added token fallback process to Account / Reset Password components when parameter is missing.', '2019-07-27 03:40:43'),
(83, 'RainLab.User', 'comment', '1.4.6', 'Fixes Auth::register method signature mismatch with core OctoberCMS Auth library', '2019-07-27 03:40:43'),
(84, 'RainLab.User', 'comment', '1.4.7', 'Fixes redirect bug in Account component / Update translations and separate user and group management.', '2019-07-27 03:40:43'),
(85, 'RainLab.User', 'comment', '1.4.8', 'Fixes a bug where calling MailBlocker::removeBlock could remove all mail blocks for the user.', '2019-07-27 03:40:43'),
(86, 'RainLab.User', 'comment', '1.5.0', '!!! Required password length is now a minimum of 8 characters. Previous passwords will not be affected until the next password change.', '2019-07-27 03:40:43'),
(87, 'RainLab.Translate', 'script', '1.0.1', 'create_messages_table.php', '2019-07-27 03:40:59'),
(88, 'RainLab.Translate', 'script', '1.0.1', 'create_attributes_table.php', '2019-07-27 03:40:59'),
(89, 'RainLab.Translate', 'script', '1.0.1', 'create_locales_table.php', '2019-07-27 03:40:59'),
(90, 'RainLab.Translate', 'comment', '1.0.1', 'First version of Translate', '2019-07-27 03:40:59'),
(91, 'RainLab.Translate', 'comment', '1.0.2', 'Languages and Messages can now be deleted.', '2019-07-27 03:40:59'),
(92, 'RainLab.Translate', 'comment', '1.0.3', 'Minor updates for latest October release.', '2019-07-27 03:40:59'),
(93, 'RainLab.Translate', 'comment', '1.0.4', 'Locale cache will clear when updating a language.', '2019-07-27 03:40:59'),
(94, 'RainLab.Translate', 'comment', '1.0.5', 'Add Spanish language and fix plugin config.', '2019-07-27 03:40:59'),
(95, 'RainLab.Translate', 'comment', '1.0.6', 'Minor improvements to the code.', '2019-07-27 03:40:59'),
(96, 'RainLab.Translate', 'comment', '1.0.7', 'Fixes major bug where translations are skipped entirely!', '2019-07-27 03:40:59'),
(97, 'RainLab.Translate', 'comment', '1.0.8', 'Minor bug fixes.', '2019-07-27 03:40:59'),
(98, 'RainLab.Translate', 'comment', '1.0.9', 'Fixes an issue where newly created models lose their translated values.', '2019-07-27 03:40:59'),
(99, 'RainLab.Translate', 'comment', '1.0.10', 'Minor fix for latest build.', '2019-07-27 03:40:59'),
(100, 'RainLab.Translate', 'comment', '1.0.11', 'Fix multilingual rich editor when used in stretch mode.', '2019-07-27 03:40:59'),
(101, 'RainLab.Translate', 'comment', '1.1.0', 'Introduce compatibility with RainLab.Pages plugin.', '2019-07-27 03:40:59'),
(102, 'RainLab.Translate', 'comment', '1.1.1', 'Minor UI fix to the language picker.', '2019-07-27 03:40:59'),
(103, 'RainLab.Translate', 'comment', '1.1.2', 'Add support for translating Static Content files.', '2019-07-27 03:40:59'),
(104, 'RainLab.Translate', 'comment', '1.1.3', 'Improved support for the multilingual rich editor.', '2019-07-27 03:40:59'),
(105, 'RainLab.Translate', 'comment', '1.1.4', 'Adds new multilingual markdown editor.', '2019-07-27 03:40:59'),
(106, 'RainLab.Translate', 'comment', '1.1.5', 'Minor update to the multilingual control API.', '2019-07-27 03:40:59'),
(107, 'RainLab.Translate', 'comment', '1.1.6', 'Minor improvements in the message editor.', '2019-07-27 03:40:59'),
(108, 'RainLab.Translate', 'comment', '1.1.7', 'Fixes bug not showing content when first loading multilingual textarea controls.', '2019-07-27 03:40:59'),
(109, 'RainLab.Translate', 'comment', '1.2.0', 'CMS pages now support translating the URL.', '2019-07-27 03:40:59'),
(110, 'RainLab.Translate', 'comment', '1.2.1', 'Minor update in the rich editor and code editor language control position.', '2019-07-27 03:40:59'),
(111, 'RainLab.Translate', 'comment', '1.2.2', 'Static Pages now support translating the URL.', '2019-07-27 03:40:59'),
(112, 'RainLab.Translate', 'comment', '1.2.3', 'Fixes Rich Editor when inserting a page link.', '2019-07-27 03:40:59'),
(113, 'RainLab.Translate', 'script', '1.2.4', 'create_indexes_table.php', '2019-07-27 03:40:59'),
(114, 'RainLab.Translate', 'comment', '1.2.4', 'Translatable attributes can now be declared as indexes.', '2019-07-27 03:40:59'),
(115, 'RainLab.Translate', 'comment', '1.2.5', 'Adds new multilingual repeater form widget.', '2019-07-27 03:40:59'),
(116, 'RainLab.Translate', 'comment', '1.2.6', 'Fixes repeater usage with static pages plugin.', '2019-07-27 03:40:59'),
(117, 'RainLab.Translate', 'comment', '1.2.7', 'Fixes placeholder usage with static pages plugin.', '2019-07-27 03:40:59'),
(118, 'RainLab.Translate', 'comment', '1.2.8', 'Improvements to code for latest October build compatibility.', '2019-07-27 03:40:59'),
(119, 'RainLab.Translate', 'comment', '1.2.9', 'Fixes context for translated strings when used with Static Pages.', '2019-07-27 03:40:59'),
(120, 'RainLab.Translate', 'comment', '1.2.10', 'Minor UI fix to the multilingual repeater.', '2019-07-27 03:40:59'),
(121, 'RainLab.Translate', 'comment', '1.2.11', 'Fixes translation not working with partials loaded via AJAX.', '2019-07-27 03:40:59'),
(122, 'RainLab.Translate', 'comment', '1.2.12', 'Add support for translating the new grouped repeater feature.', '2019-07-27 03:40:59'),
(123, 'RainLab.Translate', 'comment', '1.3.0', 'Added search to the translate messages page.', '2019-07-27 03:40:59'),
(124, 'RainLab.Translate', 'script', '1.3.1', 'builder_table_update_rainlab_translate_locales.php', '2019-07-27 03:40:59'),
(125, 'RainLab.Translate', 'script', '1.3.1', 'seed_all_tables.php', '2019-07-27 03:40:59'),
(126, 'RainLab.Translate', 'comment', '1.3.1', 'Added reordering to languages', '2019-07-27 03:40:59'),
(127, 'RainLab.Translate', 'comment', '1.3.2', 'Improved compatibility with RainLab.Pages, added ability to scan Mail Messages for translatable variables.', '2019-07-27 03:40:59'),
(128, 'RainLab.Translate', 'comment', '1.3.3', 'Fix to the locale picker session handling in Build 420 onwards.', '2019-07-27 03:40:59'),
(129, 'RainLab.Translate', 'comment', '1.3.4', 'Add alternate hreflang elements and adds prefixDefaultLocale setting.', '2019-07-27 03:40:59'),
(130, 'RainLab.Translate', 'comment', '1.3.5', 'Fix MLRepeater bug when switching locales.', '2019-07-27 03:40:59'),
(131, 'RainLab.Translate', 'comment', '1.3.6', 'Fix Middleware to use the prefixDefaultLocale setting introduced in 1.3.4', '2019-07-27 03:40:59'),
(132, 'RainLab.Translate', 'comment', '1.3.7', 'Fix config reference in LocaleMiddleware', '2019-07-27 03:40:59'),
(133, 'RainLab.Translate', 'comment', '1.3.8', 'Keep query string when switching locales', '2019-07-27 03:40:59'),
(134, 'RainLab.Translate', 'comment', '1.4.0', 'Add importer and exporter for messages', '2019-07-27 03:40:59'),
(135, 'RainLab.Translate', 'comment', '1.4.1', 'Updated Hungarian translation. Added Arabic translation. Fixed issue where default texts are overwritten by import. Fixed issue where the language switcher for repeater fields would overlap with the first repeater row.', '2019-07-27 03:40:59'),
(136, 'RainLab.Translate', 'comment', '1.4.2', 'Add multilingual MediaFinder', '2019-07-27 03:40:59'),
(137, 'RainLab.Translate', 'comment', '1.4.3', '!!! Please update OctoberCMS to Build 444 before updating this plugin. Added ability to translate CMS Pages fields (e.g. title, description, meta-title, meta-description)', '2019-07-27 03:40:59'),
(138, 'RainLab.Translate', 'comment', '1.4.4', 'Minor improvements to compatibility with Laravel framework.', '2019-07-27 03:40:59'),
(139, 'RainLab.Translate', 'comment', '1.4.5', 'Fixed issue when using the language switcher', '2019-07-27 03:40:59'),
(140, 'RainLab.Translate', 'comment', '1.5.0', 'Compatibility fix with Build 451', '2019-07-27 03:40:59'),
(141, 'RainLab.Translate', 'comment', '1.6.0', 'Make File Upload widget properties translatable. Merge Repeater core changes into MLRepeater widget. Add getter method to retrieve original translate data.', '2019-07-27 03:40:59'),
(163, 'RainLab.Pages', 'comment', '1.0.1', 'Implemented the static pages management and the Static Page component.', '2019-08-11 06:33:17'),
(164, 'RainLab.Pages', 'comment', '1.0.2', 'Fixed the page preview URL.', '2019-08-11 06:33:17'),
(165, 'RainLab.Pages', 'comment', '1.0.3', 'Implemented menus.', '2019-08-11 06:33:17'),
(166, 'RainLab.Pages', 'comment', '1.0.4', 'Implemented the content block management and placeholder support.', '2019-08-11 06:33:17'),
(167, 'RainLab.Pages', 'comment', '1.0.5', 'Added support for the Sitemap plugin.', '2019-08-11 06:33:17'),
(168, 'RainLab.Pages', 'comment', '1.0.6', 'Minor updates to the internal API.', '2019-08-11 06:33:17'),
(169, 'RainLab.Pages', 'comment', '1.0.7', 'Added the Snippets feature.', '2019-08-11 06:33:17'),
(170, 'RainLab.Pages', 'comment', '1.0.8', 'Minor improvements to the code.', '2019-08-11 06:33:17'),
(171, 'RainLab.Pages', 'comment', '1.0.9', 'Fixes issue where Snippet tab is missing from the Partials form.', '2019-08-11 06:33:17'),
(172, 'RainLab.Pages', 'comment', '1.0.10', 'Add translations for various locales.', '2019-08-11 06:33:17'),
(173, 'RainLab.Pages', 'comment', '1.0.11', 'Fixes issue where placeholders tabs were missing from Page form.', '2019-08-11 06:33:17'),
(174, 'RainLab.Pages', 'comment', '1.0.12', 'Implement Media Manager support.', '2019-08-11 06:33:17'),
(175, 'RainLab.Pages', 'script', '1.1.0', 'snippets_rename_viewbag_properties.php', '2019-08-11 06:33:17'),
(176, 'RainLab.Pages', 'comment', '1.1.0', 'Adds meta title and description to pages. Adds |staticPage filter.', '2019-08-11 06:33:17'),
(177, 'RainLab.Pages', 'comment', '1.1.1', 'Add support for Syntax Fields.', '2019-08-11 06:33:17'),
(178, 'RainLab.Pages', 'comment', '1.1.2', 'Static Breadcrumbs component now respects the hide from navigation setting.', '2019-08-11 06:33:17'),
(179, 'RainLab.Pages', 'comment', '1.1.3', 'Minor back-end styling fix.', '2019-08-11 06:33:17'),
(180, 'RainLab.Pages', 'comment', '1.1.4', 'Minor fix to the StaticPage component API.', '2019-08-11 06:33:17'),
(181, 'RainLab.Pages', 'comment', '1.1.5', 'Fixes bug when using syntax fields.', '2019-08-11 06:33:17'),
(182, 'RainLab.Pages', 'comment', '1.1.6', 'Minor styling fix to the back-end UI.', '2019-08-11 06:33:17'),
(183, 'RainLab.Pages', 'comment', '1.1.7', 'Improved menu item form to include CSS class, open in a new window and hidden flag.', '2019-08-11 06:33:17'),
(184, 'RainLab.Pages', 'comment', '1.1.8', 'Improved the output of snippet partials when saved.', '2019-08-11 06:33:17'),
(185, 'RainLab.Pages', 'comment', '1.1.9', 'Minor update to snippet inspector internal API.', '2019-08-11 06:33:17'),
(186, 'RainLab.Pages', 'comment', '1.1.10', 'Fixes a bug where selecting a layout causes permanent unsaved changes.', '2019-08-11 06:33:17'),
(187, 'RainLab.Pages', 'comment', '1.1.11', 'Add support for repeater syntax field.', '2019-08-11 06:33:17'),
(188, 'RainLab.Pages', 'comment', '1.2.0', 'Added support for translations, UI updates.', '2019-08-11 06:33:17'),
(189, 'RainLab.Pages', 'comment', '1.2.1', 'Use nice titles when listing the content files.', '2019-08-11 06:33:17'),
(190, 'RainLab.Pages', 'comment', '1.2.2', 'Minor styling update.', '2019-08-11 06:33:17'),
(191, 'RainLab.Pages', 'comment', '1.2.3', 'Snippets can now be moved by dragging them.', '2019-08-11 06:33:17'),
(192, 'RainLab.Pages', 'comment', '1.2.4', 'Fixes a bug where the cursor is misplaced when editing text files.', '2019-08-11 06:33:17'),
(193, 'RainLab.Pages', 'comment', '1.2.5', 'Fixes a bug where the parent page is lost upon changing a page layout.', '2019-08-11 06:33:17'),
(194, 'RainLab.Pages', 'comment', '1.2.6', 'Shared view variables are now passed to static pages.', '2019-08-11 06:33:17'),
(195, 'RainLab.Pages', 'comment', '1.2.7', 'Fixes issue with duplicating properties when adding multiple snippets on the same page.', '2019-08-11 06:33:17'),
(196, 'RainLab.Pages', 'comment', '1.2.8', 'Fixes a bug where creating a content block without extension doesn\'t save the contents to file.', '2019-08-11 06:33:17'),
(197, 'RainLab.Pages', 'comment', '1.2.9', 'Add conditional support for translating page URLs.', '2019-08-11 06:33:17'),
(198, 'RainLab.Pages', 'comment', '1.2.10', 'Streamline generation of URLs to use the new Cms::url helper.', '2019-08-11 06:33:17'),
(199, 'RainLab.Pages', 'comment', '1.2.11', 'Implements repeater usage with translate plugin.', '2019-08-11 06:33:17'),
(200, 'RainLab.Pages', 'comment', '1.2.12', 'Fixes minor issue when using snippets and switching the application locale.', '2019-08-11 06:33:17'),
(201, 'RainLab.Pages', 'comment', '1.2.13', 'Fixes bug when AJAX is used on a page that does not yet exist.', '2019-08-11 06:33:17'),
(202, 'RainLab.Pages', 'comment', '1.2.14', 'Add theme logging support for changes made to menus.', '2019-08-11 06:33:17'),
(203, 'RainLab.Pages', 'comment', '1.2.15', 'Back-end navigation sort order updated.', '2019-08-11 06:33:17'),
(204, 'RainLab.Pages', 'comment', '1.2.16', 'Fixes a bug when saving a template that has been modified outside of the CMS (mtime mismatch).', '2019-08-11 06:33:17'),
(205, 'RainLab.Pages', 'comment', '1.2.17', 'Changes locations of custom fields to secondary tabs instead of the primary Settings area. New menu search ability on adding menu items', '2019-08-11 06:33:17'),
(206, 'RainLab.Pages', 'comment', '1.2.18', 'Fixes cache-invalidation issues when RainLab.Translate is not installed. Added Greek & Simplified Chinese translations. Removed deprecated calls. Allowed saving HTML in snippet properties. Added support for the MediaFinder in menu items.', '2019-08-11 06:33:17'),
(207, 'RainLab.Pages', 'comment', '1.2.19', 'Catch exception with corrupted menu file.', '2019-08-11 06:33:17'),
(208, 'RainLab.Pages', 'comment', '1.2.20', 'StaticMenu component now exposes menuName property; added pages.menu.referencesGenerated event.', '2019-08-11 06:33:17'),
(209, 'RainLab.Pages', 'comment', '1.2.21', 'Fixes a bug where last Static Menu item cannot be deleted. Improved Persian, Slovak and Turkish translations.', '2019-08-11 06:33:17');

-- --------------------------------------------------------

--
-- Структура таблицы `system_plugin_versions`
--

CREATE TABLE `system_plugin_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_frozen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`, `is_frozen`) VALUES
(1, 'October.Demo', '1.0.1', '2019-07-27 03:39:22', 0, 0),
(2, 'RainLab.Builder', '1.0.25', '2019-07-27 03:40:21', 0, 0),
(3, 'RainLab.User', '1.5.0', '2019-07-27 03:40:43', 0, 0),
(4, 'RainLab.Translate', '1.6.0', '2019-07-27 03:40:59', 0, 0),
(7, 'RainLab.Pages', '1.2.21', '2019-08-11 06:33:17', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `system_request_logs`
--

CREATE TABLE `system_request_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8mb4_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `system_revisions`
--

CREATE TABLE `system_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cast` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `system_settings`
--

INSERT INTO `system_settings` (`id`, `item`, `value`) VALUES
(1, 'rainlab_builder_settings', '{\"author_name\":\"cloud\",\"author_namespace\":\"Cloud\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persist_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users_groups`
--

CREATE TABLE `users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Guest', 'guest', 'Default group for guest users.', '2019-07-27 03:40:43', '2019-07-27 03:40:43'),
(2, 'Registered', 'registered', 'Default group for registered users.', '2019-07-27 03:40:43', '2019-07-27 03:40:43');

-- --------------------------------------------------------

--
-- Структура таблицы `user_throttle`
--

CREATE TABLE `user_throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_unique` (`login`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `act_code_index` (`activation_code`),
  ADD KEY `reset_code_index` (`reset_password_code`),
  ADD KEY `admin_role_index` (`role_id`);

--
-- Индексы таблицы `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Индексы таблицы `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_unique` (`name`),
  ADD KEY `code_index` (`code`);

--
-- Индексы таблицы `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Индексы таблицы `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_unique` (`name`),
  ADD KEY `role_code_index` (`code`);

--
-- Индексы таблицы `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_user_throttle_user_id_index` (`user_id`),
  ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Индексы таблицы `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Индексы таблицы `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Индексы таблицы `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_theme_logs_type_index` (`type`),
  ADD KEY `cms_theme_logs_theme_index` (`theme`),
  ADD KEY `cms_theme_logs_user_id_index` (`user_id`);

--
-- Индексы таблицы `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deferred_bindings_master_type_index` (`master_type`),
  ADD KEY `deferred_bindings_master_field_index` (`master_field`),
  ADD KEY `deferred_bindings_slave_type_index` (`slave_type`),
  ADD KEY `deferred_bindings_slave_id_index` (`slave_id`),
  ADD KEY `deferred_bindings_session_key_index` (`session_key`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rainlab_translate_attributes`
--
ALTER TABLE `rainlab_translate_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_attributes_locale_index` (`locale`),
  ADD KEY `rainlab_translate_attributes_model_id_index` (`model_id`),
  ADD KEY `rainlab_translate_attributes_model_type_index` (`model_type`);

--
-- Индексы таблицы `rainlab_translate_indexes`
--
ALTER TABLE `rainlab_translate_indexes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_indexes_locale_index` (`locale`),
  ADD KEY `rainlab_translate_indexes_model_id_index` (`model_id`),
  ADD KEY `rainlab_translate_indexes_model_type_index` (`model_type`),
  ADD KEY `rainlab_translate_indexes_item_index` (`item`);

--
-- Индексы таблицы `rainlab_translate_locales`
--
ALTER TABLE `rainlab_translate_locales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_locales_code_index` (`code`),
  ADD KEY `rainlab_translate_locales_name_index` (`name`);

--
-- Индексы таблицы `rainlab_translate_messages`
--
ALTER TABLE `rainlab_translate_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_translate_messages_code_index` (`code`);

--
-- Индексы таблицы `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rainlab_user_mail_blockers_email_index` (`email`),
  ADD KEY `rainlab_user_mail_blockers_template_index` (`template`),
  ADD KEY `rainlab_user_mail_blockers_user_id_index` (`user_id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Индексы таблицы `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_event_logs_level_index` (`level`);

--
-- Индексы таблицы `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_files_field_index` (`field`),
  ADD KEY `system_files_attachment_id_index` (`attachment_id`),
  ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Индексы таблицы `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Индексы таблицы `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Индексы таблицы `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_history_code_index` (`code`),
  ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Индексы таблицы `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Индексы таблицы `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `system_revisions`
--
ALTER TABLE `system_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`),
  ADD KEY `system_revisions_user_id_index` (`user_id`),
  ADD KEY `system_revisions_field_index` (`field`);

--
-- Индексы таблицы `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_settings_item_index` (`item`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_login_unique` (`username`),
  ADD KEY `users_activation_code_index` (`activation_code`),
  ADD KEY `users_reset_password_code_index` (`reset_password_code`),
  ADD KEY `users_login_index` (`username`);

--
-- Индексы таблицы `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Индексы таблицы `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_groups_code_index` (`code`);

--
-- Индексы таблицы `user_throttle`
--
ALTER TABLE `user_throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_throttle_user_id_index` (`user_id`),
  ADD KEY `user_throttle_ip_address_index` (`ip_address`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `backend_user_roles`
--
ALTER TABLE `backend_user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cms_theme_logs`
--
ALTER TABLE `cms_theme_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `rainlab_translate_attributes`
--
ALTER TABLE `rainlab_translate_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `rainlab_translate_indexes`
--
ALTER TABLE `rainlab_translate_indexes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `rainlab_translate_locales`
--
ALTER TABLE `rainlab_translate_locales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `rainlab_translate_messages`
--
ALTER TABLE `rainlab_translate_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT для таблицы `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `system_mail_partials`
--
ALTER TABLE `system_mail_partials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT для таблицы `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `system_revisions`
--
ALTER TABLE `system_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user_throttle`
--
ALTER TABLE `user_throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
