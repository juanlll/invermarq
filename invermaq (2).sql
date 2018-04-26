-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-04-2018 a las 00:11:50
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `invermaq`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Maquinaria', 'maquinaria', '2018-04-26 20:06:00', '2018-04-26 20:06:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(14, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'Password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(53, 3, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(57, 8, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(58, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(59, 8, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, NULL, 3),
(60, 8, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, NULL, 4),
(61, 8, 'body', 'rich_text_box', 'Body', 1, 1, 1, 1, 1, 1, NULL, 4),
(62, 8, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 1, NULL, 6),
(63, 8, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 7),
(64, 9, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(65, 9, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(66, 9, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, NULL, 3),
(67, 9, 'body', 'rich_text_box', 'Body', 0, 1, 1, 1, 1, 1, NULL, 4),
(68, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, NULL, 5),
(70, 9, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 7),
(71, 9, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 1, NULL, 8),
(72, 8, 'product_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"idCategory\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 8),
(73, 8, 'idCategory', 'checkbox', 'IdCategory', 1, 1, 1, 1, 1, 1, NULL, 6),
(74, 10, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(75, 10, 'name', 'text', 'Name', 1, 1, 1, 0, 0, 1, NULL, 2),
(76, 10, 'email', 'text', 'Email', 1, 1, 1, 0, 0, 1, NULL, 3),
(77, 10, 'phone', 'text', 'Phone', 1, 1, 1, 0, 0, 1, NULL, 4),
(78, 10, 'text', 'text_area', 'Text', 1, 1, 1, 0, 0, 1, NULL, 5),
(79, 10, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 6),
(80, 10, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 1, NULL, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2018-04-25 21:15:22', '2018-04-25 21:15:22'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2018-04-25 21:15:23', '2018-04-25 21:15:23'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2018-04-25 21:15:23', '2018-04-25 21:15:23'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-04-25 21:15:23', '2018-04-25 21:15:23'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-04-25 21:15:23', '2018-04-25 21:15:23'),
(8, 'products', 'products', 'Product', 'Products', 'voyager-cup', 'App\\Product', NULL, NULL, NULL, 1, 1, '2018-04-25 21:30:08', '2018-04-25 22:12:45'),
(9, 'services', 'services', 'Service', 'Services', 'voyager-bag', 'App\\Service', NULL, NULL, NULL, 1, 1, '2018-04-25 22:04:04', '2018-04-25 22:04:04'),
(10, 'messages', 'messages', 'Message', 'Messages', NULL, 'App\\Message', NULL, NULL, NULL, 1, 0, '2018-04-26 20:16:30', '2018-04-26 20:16:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-04-25 21:15:25', '2018-04-25 21:15:25'),
(2, 'site', '2018-04-27 01:29:32', '2018-04-27 01:29:32'),
(3, 'products', '2018-04-27 02:23:04', '2018-04-27 02:23:04'),
(4, 'services', '2018-04-27 02:23:18', '2018-04-27 02:23:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-04-25 21:15:25', '2018-04-25 21:15:25', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2018-04-25 21:15:25', '2018-04-25 22:19:42', 'voyager.media.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-04-25 21:15:25', '2018-04-25 21:15:25', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 17, 1, '2018-04-25 21:15:25', '2018-04-26 23:51:41', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 5, '2018-04-25 21:15:25', '2018-04-26 23:50:35', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-04-25 21:15:25', '2018-04-25 21:15:25', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-04-25 21:15:25', '2018-04-26 23:52:42', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2018-04-25 21:15:25', '2018-04-25 22:19:42', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 2, '2018-04-25 21:15:26', '2018-04-25 22:19:42', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 3, '2018-04-25 21:15:26', '2018-04-25 22:19:42', 'voyager.compass.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2018-04-25 21:15:26', '2018-04-26 23:52:42', 'voyager.settings.index', NULL),
(13, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 8, 4, '2018-04-25 21:15:30', '2018-04-25 22:19:42', 'voyager.hooks', NULL),
(14, 1, 'Products', '/admin/products', '_self', 'voyager-cup', '#000000', 17, 2, '2018-04-25 21:19:12', '2018-04-26 23:51:42', NULL, ''),
(15, 1, 'Services', '/admin/services', '_self', 'voyager-bag', NULL, 17, 3, '2018-04-25 22:04:04', '2018-04-26 23:51:42', NULL, NULL),
(16, 1, 'Messages', '/admin/messages', '_self', 'voyager-mail', '#000000', NULL, 7, '2018-04-26 20:16:30', '2018-04-26 23:52:42', NULL, ''),
(17, 1, 'Portafolio', '', '_self', 'voyager-treasure', '#000000', NULL, 8, '2018-04-26 23:51:18', '2018-04-26 23:52:42', NULL, ''),
(18, 2, 'Inicio', '/', '_self', 'voyager-home', '#000000', NULL, 1, '2018-04-27 01:31:38', '2018-04-27 01:41:29', NULL, ''),
(19, 2, 'Nosotros', '#about', '_self', 'voyager-people', '#000000', NULL, 2, '2018-04-27 01:34:17', '2018-04-27 01:41:29', NULL, ''),
(20, 2, 'Servicios', '#services', '_self', 'voyager-bulb', '#000000', NULL, 3, '2018-04-27 01:35:52', '2018-04-27 01:41:47', NULL, ''),
(21, 2, 'Productos', '#portfolio', '_self', 'voyager-cup', '#000000', NULL, 4, '2018-04-27 01:36:48', '2018-04-27 01:41:47', NULL, ''),
(22, 2, 'Contáctenos', '#contact_form', '_self', 'voyager-megaphone', '#000000', NULL, 5, '2018-04-27 01:38:04', '2018-04-27 01:41:47', NULL, ''),
(23, 4, 'Inicio', '/', '_self', NULL, '#000000', NULL, 1, '2018-04-27 02:26:09', '2018-04-27 02:30:56', NULL, ''),
(24, 4, 'Servicios', '/services', '_self', NULL, '#000000', NULL, 3, '2018-04-27 02:26:39', '2018-04-27 02:30:56', NULL, ''),
(25, 3, 'Inicio', '/', '_self', NULL, '#000000', NULL, 1, '2018-04-27 02:29:08', '2018-04-27 02:30:33', NULL, ''),
(26, 3, 'Servicios', '/services', '_self', NULL, '#000000', NULL, 3, '2018-04-27 02:29:30', '2018-04-27 02:30:33', NULL, ''),
(27, 3, 'Productos', '/products', '_self', NULL, '#000000', NULL, 2, '2018-04-27 02:29:47', '2018-04-27 02:30:33', NULL, ''),
(28, 4, 'Productos', '/products', '_self', NULL, '#000000', NULL, 2, '2018-04-27 02:30:52', '2018-04-27 02:30:56', NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `phone`, `text`, `updated_at`, `created_at`) VALUES
(1, 'Jua vargas', 'juan@vargasv.com', 2341241, 'sadsadasdasdsadsasadsaddsfs', '2018-04-26 15:19:42', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-04-25 21:15:26', '2018-04-25 21:15:26', NULL),
(2, 'browse_database', NULL, '2018-04-25 21:15:26', '2018-04-25 21:15:26', NULL),
(3, 'browse_media', NULL, '2018-04-25 21:15:26', '2018-04-25 21:15:26', NULL),
(4, 'browse_compass', NULL, '2018-04-25 21:15:26', '2018-04-25 21:15:26', NULL),
(5, 'browse_menus', 'menus', '2018-04-25 21:15:26', '2018-04-25 21:15:26', NULL),
(6, 'read_menus', 'menus', '2018-04-25 21:15:26', '2018-04-25 21:15:26', NULL),
(7, 'edit_menus', 'menus', '2018-04-25 21:15:26', '2018-04-25 21:15:26', NULL),
(8, 'add_menus', 'menus', '2018-04-25 21:15:26', '2018-04-25 21:15:26', NULL),
(9, 'delete_menus', 'menus', '2018-04-25 21:15:26', '2018-04-25 21:15:26', NULL),
(10, 'browse_pages', 'pages', '2018-04-25 21:15:26', '2018-04-25 21:15:26', NULL),
(11, 'read_pages', 'pages', '2018-04-25 21:15:26', '2018-04-25 21:15:26', NULL),
(12, 'edit_pages', 'pages', '2018-04-25 21:15:26', '2018-04-25 21:15:26', NULL),
(13, 'add_pages', 'pages', '2018-04-25 21:15:26', '2018-04-25 21:15:26', NULL),
(14, 'delete_pages', 'pages', '2018-04-25 21:15:26', '2018-04-25 21:15:26', NULL),
(15, 'browse_roles', 'roles', '2018-04-25 21:15:26', '2018-04-25 21:15:26', NULL),
(16, 'read_roles', 'roles', '2018-04-25 21:15:26', '2018-04-25 21:15:26', NULL),
(17, 'edit_roles', 'roles', '2018-04-25 21:15:27', '2018-04-25 21:15:27', NULL),
(18, 'add_roles', 'roles', '2018-04-25 21:15:27', '2018-04-25 21:15:27', NULL),
(19, 'delete_roles', 'roles', '2018-04-25 21:15:27', '2018-04-25 21:15:27', NULL),
(20, 'browse_users', 'users', '2018-04-25 21:15:27', '2018-04-25 21:15:27', NULL),
(21, 'read_users', 'users', '2018-04-25 21:15:27', '2018-04-25 21:15:27', NULL),
(22, 'edit_users', 'users', '2018-04-25 21:15:27', '2018-04-25 21:15:27', NULL),
(23, 'add_users', 'users', '2018-04-25 21:15:27', '2018-04-25 21:15:27', NULL),
(24, 'delete_users', 'users', '2018-04-25 21:15:27', '2018-04-25 21:15:27', NULL),
(30, 'browse_categories', 'categories', '2018-04-25 21:15:27', '2018-04-25 21:15:27', NULL),
(31, 'read_categories', 'categories', '2018-04-25 21:15:27', '2018-04-25 21:15:27', NULL),
(32, 'edit_categories', 'categories', '2018-04-25 21:15:27', '2018-04-25 21:15:27', NULL),
(33, 'add_categories', 'categories', '2018-04-25 21:15:27', '2018-04-25 21:15:27', NULL),
(34, 'delete_categories', 'categories', '2018-04-25 21:15:27', '2018-04-25 21:15:27', NULL),
(35, 'browse_settings', 'settings', '2018-04-25 21:15:27', '2018-04-25 21:15:27', NULL),
(36, 'read_settings', 'settings', '2018-04-25 21:15:27', '2018-04-25 21:15:27', NULL),
(37, 'edit_settings', 'settings', '2018-04-25 21:15:27', '2018-04-25 21:15:27', NULL),
(38, 'add_settings', 'settings', '2018-04-25 21:15:27', '2018-04-25 21:15:27', NULL),
(39, 'delete_settings', 'settings', '2018-04-25 21:15:27', '2018-04-25 21:15:27', NULL),
(40, 'browse_hooks', NULL, '2018-04-25 21:15:30', '2018-04-25 21:15:30', NULL),
(46, 'browse_products', 'products', '2018-04-25 21:30:08', '2018-04-25 21:30:08', NULL),
(47, 'read_products', 'products', '2018-04-25 21:30:08', '2018-04-25 21:30:08', NULL),
(48, 'edit_products', 'products', '2018-04-25 21:30:08', '2018-04-25 21:30:08', NULL),
(49, 'add_products', 'products', '2018-04-25 21:30:08', '2018-04-25 21:30:08', NULL),
(50, 'delete_products', 'products', '2018-04-25 21:30:08', '2018-04-25 21:30:08', NULL),
(51, 'browse_services', 'services', '2018-04-25 22:04:04', '2018-04-25 22:04:04', NULL),
(52, 'read_services', 'services', '2018-04-25 22:04:04', '2018-04-25 22:04:04', NULL),
(53, 'edit_services', 'services', '2018-04-25 22:04:04', '2018-04-25 22:04:04', NULL),
(54, 'add_services', 'services', '2018-04-25 22:04:04', '2018-04-25 22:04:04', NULL),
(55, 'delete_services', 'services', '2018-04-25 22:04:04', '2018-04-25 22:04:04', NULL),
(56, 'browse_messages', 'messages', '2018-04-26 20:16:30', '2018-04-26 20:16:30', NULL),
(57, 'read_messages', 'messages', '2018-04-26 20:16:30', '2018-04-26 20:16:30', NULL),
(58, 'edit_messages', 'messages', '2018-04-26 20:16:30', '2018-04-26 20:16:30', NULL),
(59, 'add_messages', 'messages', '2018-04-26 20:16:30', '2018-04-26 20:16:30', NULL),
(60, 'delete_messages', 'messages', '2018-04-26 20:16:30', '2018-04-26 20:16:30', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
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
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idCategory` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `body`, `image`, `idCategory`, `created_at`, `updated_at`) VALUES
(1, 'asd', 'sadasd', '', 'products/April2018/reYO4ApbYngNNw3wQoQp.jpg', 0, '2018-04-25 21:51:07', '2018-04-25 21:51:07'),
(2, 'sadsadsd', 'sadsad', '<p>asdasd</p>', 'products/April2018/kKNEp94WpmF7WF0PvRLc.jpg', 0, '2018-04-25 21:57:40', '2018-04-25 21:57:40'),
(3, 'Retro escabadora', 'La retroexcavadora, retrocargadora, excavadora mixta, cargadora mixta o pala mixta es una máquina que se utiliza para realizar excavaciones en terrenos. Consiste en un balde de excavación en el extremo de un brazo articulado de dos partes', '<table style=\"height: 67px; width: 140px;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 132px;\"><strong>RETRO ESCABADORA</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 132px;\"><img src=\"http://localhost:8000/storage/products/April2018/oruga1.jpg\" width=\"122\" height=\"90\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'products/April2018/pieY4DbCWbmKqDksb58c.jpg', 1, '2018-04-26 18:48:48', '2018-04-26 23:48:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-04-25 21:15:26', '2018-04-25 21:15:26'),
(2, 'user', 'Normal User', '2018-04-25 21:15:26', '2018-04-25 21:15:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `body`, `image`, `updated_at`, `created_at`) VALUES
(1, 'servicio1', 'ng like that back in some version of the', '<div class=\"js-timeline-item js-timeline-progressive-focus-container\" style=\"box-sizing: border-box; color: #24292e; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\';\" data-gid=\"MDEyOklzc3VlQ29tbWVudDM1NDgzNjM4\">\r\n<div class=\"timeline-comment-wrapper js-comment-container\" style=\"box-sizing: border-box; position: relative; padding-left: 60px; margin-top: 15px; margin-bottom: 15px; border-top: 2px solid #ffffff; border-bottom: 2px solid #ffffff;\">\r\n<div class=\"js-minimizable-comment-group\" style=\"box-sizing: border-box;\">\r\n<div id=\"issuecomment-35483638\" class=\"unminimized-comment comment previewable-edit js-comment js-task-list-container timeline-comment js-reorderable-task-lists reorderable-task-lists \" style=\"box-sizing: border-box; position: relative; border: 1px solid #d1d5da; border-radius: 3px;\" data-body-version=\"9b19ba2ccdf5ac09a5c53c9ad0cbb2aa\">\r\n<div class=\"edit-comment-hide\" style=\"box-sizing: border-box;\">\r\n<table class=\"d-block\" style=\"box-sizing: border-box; border-spacing: 0px; border-collapse: collapse; display: block !important;\">\r\n<tbody class=\"d-block\" style=\"box-sizing: border-box; display: block !important;\">\r\n<tr class=\"d-block\" style=\"box-sizing: border-box; display: block !important;\">\r\n<td class=\"d-block comment-body markdown-body  js-comment-body\" style=\"box-sizing: border-box; padding: 15px; display: block !important; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14px; line-height: 1.5; word-wrap: break-word; width: 698.011px; overflow: visible;\">\r\n<p style=\"box-sizing: border-box; margin-top: 0px !important; margin-bottom: 0px !important;\">I believe it was set to something like that back in some version of the beta or pre-beta but I think it created more problems than it solved, and that\'s why we ended up with the current version</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class=\"comment-reactions  js-reactions-container js-socket-channel js-updatable-content\" style=\"box-sizing: border-box;\" data-channel=\"reaction:issue-comment:35483638\" data-url=\"/_render_node/MDEyOklzc3VlQ29tbWVudDM1NDgzNjM4/comments/reactions\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"js-timeline-item js-timeline-progressive-focus-container\" style=\"box-sizing: border-box; color: #24292e; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\';\" data-gid=\"MDEyOklzc3VlQ29tbWVudDM1NDk4MDA1\">\r\n<div class=\"timeline-comment-wrapper js-comment-container\" style=\"box-sizing: border-box; position: relative; padding-left: 60px; margin-top: 15px; margin-bottom: 15px; border-top: 2px solid #ffffff; border-bottom: 2px solid #ffffff;\">\r\n<div class=\"avatar-parent-child timeline-comment-avatar\" style=\"box-sizing: border-box; position: relative; float: left; margin-left: -60px; border-radius: 3px;\"><a class=\"d-inline-block\" style=\"box-sizing: border-box; background-color: transparent; color: #0366d6; text-decoration-line: none; display: inline-block !important;\" href=\"https://github.com/arvidbjorkstrom\" data-hovercard-user-id=\"255458\" data-octo-click=\"hovercard-link-click\" data-octo-dimensions=\"link_type:self\" aria-describedby=\"hovercard-aria-description\"><img class=\"avatar rounded-1\" style=\"box-sizing: border-box; border-style: none; border-radius: 3px; display: inline-block; overflow: hidden; line-height: 1; vertical-align: middle;\" src=\"https://avatars3.githubusercontent.com/u/255458?s=88&amp;v=4\" alt=\"@arvidbjorkstrom\" width=\"44\" height=\"44\" /></a></div>\r\n<div class=\"js-minimizable-comment-group\" style=\"box-sizing: border-box;\">\r\n<div id=\"issuecomment-35498005\" class=\"unminimized-comment comment previewable-edit js-comment js-task-list-container timeline-comment js-reorderable-task-lists reorderable-task-lists \" style=\"box-sizing: border-box; position: relative; border: 1px solid #d1d5da; border-radius: 3px;\" data-body-version=\"ac4fc282b45e615e15ac676a7089a3f6\">\r\n<div class=\"timeline-comment-header clearfix\" style=\"box-sizing: border-box; padding-right: 15px; padding-left: 15px; color: #586069; background-color: #f6f8fa; border-bottom: 1px solid #d1d5da; border-top-left-radius: 3px; border-top-right-radius: 3px;\">\r\n<div class=\"timeline-comment-actions\" style=\"box-sizing: border-box; float: right; margin-right: -5px; margin-left: 10px;\"><details class=\"dropdown-details details-reset position-relative d-inline-block js-socket-channel js-updatable-content js-dropdown-details js-reaction-popover-container js-comment-header-reaction-button\" style=\"box-sizing: border-box; display: inline-block !important; position: relative !important;\" data-channel=\"reaction:issue-comment:35498005\" data-url=\"/_render_node/MDEyOklzc3VlQ29tbWVudDM1NDk4MDA1/comments/comment_header_reaction_button\"><summary class=\"btn-link timeline-comment-action\" style=\"box-sizing: border-box; display: inline-block; cursor: pointer; padding: 10px 5px; font-size: inherit; color: inherit; white-space: nowrap; user-select: none; background-color: transparent; border: 0px; -webkit-appearance: none; opacity: 0.5; list-style: none;\" aria-label=\"Add your reaction\" aria-haspopup=\"true\">&nbsp;</summary></details></div>\r\n<span class=\"timeline-comment-label tooltipped tooltipped-multiline tooltipped-s\" style=\"box-sizing: border-box; position: relative; float: right; padding: 2px 5px; margin: 8px 0px 0px 10px; font-size: 12px; cursor: default; border: 1px solid rgba(27, 31, 35, 0.1); border-radius: 3px;\" aria-label=\"This user has previously committed to the framework repository.\">Contributor</span>\r\n<h3 class=\"timeline-comment-header-text f5 text-normal\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; font-size: 14px !important; font-weight: 400 !important; max-width: 78%; padding-top: 10px; padding-bottom: 10px;\"><span style=\"box-sizing: border-box; font-weight: 600;\"><a class=\"author text-inherit\" style=\"box-sizing: border-box; background-color: transparent; color: #586069; text-decoration-line: none;\" href=\"https://github.com/arvidbjorkstrom\" data-hovercard-user-id=\"255458\" data-octo-click=\"hovercard-link-click\" data-octo-dimensions=\"link_type:self\" aria-describedby=\"hovercard-aria-description\">arvidbjorkstrom</a>&nbsp;</span>commented&nbsp;<a class=\"timestamp\" style=\"box-sizing: border-box; background-color: transparent; text-decoration-line: none; white-space: nowrap;\" href=\"https://github.com/laravel/framework/issues/3602#issuecomment-35498005\">on 19 Feb 2014</a></h3>\r\n</div>\r\n<div class=\"edit-comment-hide\" style=\"box-sizing: border-box;\">\r\n<table class=\"d-block\" style=\"box-sizing: border-box; border-spacing: 0px; border-collapse: collapse; display: block !important;\">\r\n<tbody class=\"d-block\" style=\"box-sizing: border-box; display: block !important;\">\r\n<tr class=\"d-block\" style=\"box-sizing: border-box; display: block !important;\">\r\n<td class=\"d-block comment-body markdown-body  js-comment-body\" style=\"box-sizing: border-box; padding: 15px; display: block !important; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14px; line-height: 1.5; word-wrap: break-word; width: 698.011px; overflow: visible;\">\r\n<p style=\"box-sizing: border-box; margin-top: 0px !important; margin-bottom: 0px !important;\">As of now all the handling and logic controlling how and when the&nbsp;<code style=\"box-sizing: border-box; font-family: SFMono-Regular, Consolas, \'Liberation Mono\', Menlo, Courier, monospace; font-size: 11.9px; padding: 0.2em 0.4em; margin: 0px; background-color: rgba(27, 31, 35, 0.05); border-radius: 3px;\">updated_at</code>&nbsp;column is updated is now controlled in php code. So I think there are a lot of places in need of rewrite if this is changed.<br style=\"box-sizing: border-box;\" />For example to get the ability to update a row without updating the&nbsp;<code style=\"box-sizing: border-box; font-family: SFMono-Regular, Consolas, \'Liberation Mono\', Menlo, Courier, monospace; font-size: 11.9px; padding: 0.2em 0.4em; margin: 0px; background-color: rgba(27, 31, 35, 0.05); border-radius: 3px;\">updated_at</code>&nbsp;you either need to change the table, temporarily removing the&nbsp;<em style=\"box-sizing: border-box;\">on update</em>&nbsp;clause or maybe setting the&nbsp;<code style=\"box-sizing: border-box; font-family: SFMono-Regular, Consolas, \'Liberation Mono\', Menlo, Courier, monospace; font-size: 11.9px; padding: 0.2em 0.4em; margin: 0px; background-color: rgba(27, 31, 35, 0.05); border-radius: 3px;\">updated_at=updated_at</code>&nbsp;will override the&nbsp;<em style=\"box-sizing: border-box;\">on update</em>. Not sure if the latter will wor</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'services/April2018/F5pT4ZnHfuGeb4wexa1O.png', '2018-04-25 22:22:28', '2018-04-25 22:10:00'),
(2, 'ALQUILER DE EQUIPOS Y MAQUIARIA PARA:', 'lksdlksadaslkdsadlksd', '<h1 style=\"text-align: left;\">MOVIMIENTO DE TIERRA</h1>\r\n<figure class=\"image align-left\" style=\"text-align: center;\"><img title=\"Retrocargador\" src=\"http://localhost:8000/storage/services/April2018/retrocargador.jpg\" alt=\"Retrocargador\" width=\"200\" height=\"200\" />\r\n<figcaption><span style=\"text-align: left; background-color: #ffffff;\">Retrocargador</span></figcaption>\r\n</figure>\r\n<figure class=\"image align-right\" style=\"text-align: center;\"><img title=\"Oruga\" src=\"http://localhost:8000/storage/services/April2018/oruga.jpg\" alt=\"Oruga\" />\r\n<figcaption>Oruga</figcaption>\r\n</figure>\r\n<figure class=\"image\" style=\"text-align: center;\"><img title=\"Motoniveladora\" src=\"http://localhost:8000/storage/services/April2018/motoniveladora.jpg\" alt=\"Motoniveladora\" />\r\n<figcaption>Motoniveladora</figcaption>\r\n</figure>\r\n<p style=\"text-align: left;\">&nbsp;</p>', 'services/April2018/tnAUGni9kjFlnQU43lAn.jpg', '2018-04-26 00:14:05', '2018-04-25 22:35:00'),
(3, 'SERVICIO 3', 'As you can see, we will chain the format method onto whatever expression is passed into the directive. So, in this example, the final PHP generated by this directive will be:', NULL, 'services/April2018/MCxTYyZNzF2UCymywmS9.jpeg', '2018-04-27 01:20:16', '2018-04-27 01:20:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
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
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin'),
(11, 'bienvenido.description', 'Descripcion de de bienvenida', '<p>En Invermaq JM compartimos una cultura de trabajo enfocada a satisfacer a nuestros clientes y consumidores. Avanzamos continuamente para brindarles mejores opciones de productos y marcas, a precios justos y con una alta calidad de servicio, buscando siempre exceder las expectativas de nuestros clientes y consumidores que atendemos cotidianamente y sin interrupción en Colombia.</p>\r\n<p>Como parte de nuestro esfuerzo cotidiano de transparencia y comunicación constante con nuestros clientes les damos la bienvenida a nuestro portal de Internet, el cual permite conocer aspectos importantes de nuestra empresa y su desempeño, pero principalmente, significa un canal abierto para recibir comentarios y sugerencias que enriquezcan nuestra diaria labor.</p>\r\n<p>Los invitamos a conocer las iniciativas emprendidas en nuestra organización para consolidar nuestra posición de liderazgo como una empresa más dinámica y flexible, con mayor cercanía con nuestros consumidores y en un marco de integridad, eficiencia y responsabilidad social.</p>', NULL, 'text_area', 6, 'Bienvenido'),
(12, 'nosotros.mision', 'Descripción de la mision', '<p style=\"text-align: left;\">Ofrecer un conjunto de servicios y soluciones que permitan a nuestros clientes resolver sus necesidades con total confianza y tranquilidad gracias a nuestro conocimiento t&eacute;cnico, nuestra r&aacute;pida respuesta, nuestro compromiso y nuestra disposici&oacute;n.</p>\r\n<p style=\"text-align: left;\">Crear una cadena simp&aacute;tica entre proveedores, clientes, empresa, sociedad y empleados que se mantenga equilibrada y sustentada por las relaciones personales, las emociones, el flujo econ&oacute;mico y los compromisos mutuos de responsabilidad.</p>', NULL, 'rich_text_box', 7, 'Nosotros'),
(13, 'nosotros.vision', 'Descripción de la visión', '<p style=\"text-align: left;\">Crear una estructura empresarial solida y flexible, abierta a nuevas ideas y nuevos proyectos para poder traducirlos a nuevas soluciones para nuestros clientes y as&iacute; hacernos pioneros y lideres en variedad de servicios, prestaciones, innovaciones y b&uacute;squeda de soluciones a medida que cambia lo sociedad a nivel estatal.</p>', NULL, 'rich_text_box', 8, 'Nosotros'),
(14, 'nosotros.valores', 'Descripción de valores', '<p style=\"text-align: left;\"><strong>Excelencia:</strong> La b&uacute;squeda de la perfecci&oacute;n en todas las acciones de la empresa nos hace estar continuamente en movimiento, despiertos, atentos, y eso nos hace sentir el &eacute;xito d&iacute;a a d&iacute;a.</p>\r\n<p style=\"text-align: left;\"><strong>Innovaci&oacute;n:</strong> Encontrar nuevas soluciones, imaginar nuevos mecanismos, conocer nueva tecnolog&iacute;a y aplicarla a nuestro trabajo diario con creatividad ofreciendo un continuo aporte de soluciones a las necesidades de los clientes, a nuestros compa&ntilde;eros de trabajo y a nuestro entorno.</p>\r\n<p style=\"text-align: left;\"><strong>Fortaleza econ&oacute;mica:</strong> Obtener beneficios econ&oacute;micos es el apoyo b&aacute;sico de todas las personas y familias que rodean a Invermaq JM: empleados, directivos, proveedores, clientes y acreedores, todos unidos en ramificaci&oacute;n sustentados por el resultado econ&oacute;mico que da el trabajo bien hecho. Ilusi&oacute;n: La ilusi&oacute;n del trabajo de hoy, de conseguir peque&ntilde;as metas, de sonre&iacute;r con ganas hace imaginar un futuro mejor, siempre mejor.</p>\r\n<p style=\"text-align: left;\"><strong>Inter&eacute;s por las personas:</strong> Se puede escuchar el t&uacute; a t&uacute; en todos los rincones de Invermaq JM, &iquest;C&oacute;mo te va?, &iquest;C&oacute;mo te encuentras?, &iquest;en qu&eacute; puedo ayudarte?. Solo hace falta poner el o&iacute;do.</p>\r\n<p style=\"text-align: left;\"><strong>Trabajo en equipo:</strong> Personas unidas en una actividad por un mismo objetivo u objetivos diferentes, pero unidas, con el fin &uacute;ltimo del reconocimiento de la labor bien hecha, el afecto de nuestro entorno y el propio bienestar.</p>', NULL, 'rich_text_box', 9, 'Nosotros'),
(15, 'nosotros.compromisos', 'Descripción de compromisos', '<p style=\"text-align: left;\"><strong>Compromiso social:</strong> Preocupaci&oacute;n por el estado de nuestro entorno, de las personas, de las familias, de las monta&ntilde;as, de los oc&eacute;anos, del medio ambiente, de la Naturaleza y responder activamente ante las acciones que perjudiquen el equilibrio natural de las cosas.</p>\r\n<p style=\"text-align: left;\"><strong>Compromiso con los resultados:</strong> Es responsabilidad de Invermaq JM obtener los mejores resultados econ&oacute;micos, organizativos, estrat&eacute;gicos y formativos para asegurar el bienestar directo de las personas que forman el grupo y sus familias; e indirectamente asegurar el bienestar de sus clientes, proveedores y acreedores. Compromiso con el cliente: Velar por la responsabilidad que los clientes nos han depositado ante sus necesidades y responder con el mayor &eacute;xito posible.</p>\r\n<p style=\"text-align: left;\"><strong>Compromiso de futuro:</strong> Invermaq JM se compromete d&iacute;a a d&iacute;a a asegurar un futuro mejor de las personas que forman el grupo, sus familias, sus proveedores, sus clientes y sus acreedores.</p>', NULL, 'rich_text_box', 10, 'Nosotros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'users/default.png', '$2y$10$q7Eqeub2G5xYH15QzR557euUM/Fzw/NGyl7qmN3cq7tNLT2yfckBK', NULL, '2018-04-25 21:15:49', '2018-04-25 21:15:50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
