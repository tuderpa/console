-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 08-09-2019 a las 19:17:31
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `console`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `action_events`
--

CREATE TABLE `action_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_id` int(10) UNSIGNED NOT NULL,
  `target_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int(10) UNSIGNED DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'running',
  `exception` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `original` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `action_events`
--

INSERT INTO `action_events` (`id`, `batch_id`, `user_id`, `name`, `actionable_type`, `actionable_id`, `target_type`, `target_id`, `model_type`, `model_id`, `fields`, `status`, `exception`, `created_at`, `updated_at`, `original`, `changes`) VALUES
(1, '8e2dfedb-f8e0-4105-9875-565170819b5b', 1, 'Create', 'App\\User', 2, 'App\\User', 2, 'App\\User', 2, '', 'finished', '', '2019-07-16 16:00:05', '2019-07-16 16:00:05', NULL, '{\"name\":\"Paula Moreno Frers\",\"email\":\"paula@tuderpa.com\",\"updated_at\":\"2019-07-16 13:00:04\",\"created_at\":\"2019-07-16 13:00:04\",\"id\":2}'),
(2, '8e2e0ab2-05bc-4588-b3af-2c2f21aa5c6b', 1, 'Update', 'App\\User', 1, 'App\\User', 1, 'App\\User', 1, '', 'finished', '', '2019-07-16 16:33:10', '2019-07-16 16:33:10', '{\"name\":\"joaquin\"}', '{\"name\":\"Joaqu\\u00edn Di Toma\"}'),
(3, '8e34fca4-fc20-44bb-ba25-1c53fae2537e', 1, 'Delete', 'App\\User', 2, 'App\\User', 2, 'App\\User', 2, '', 'finished', '', '2019-07-20 03:24:41', '2019-07-20 03:24:41', NULL, NULL),
(4, '8e352d0a-e9fe-47b7-bd97-134f37a375de', 1, 'Create', 'App\\Property', 1, 'App\\Property', 1, 'App\\Property', 1, '', 'finished', '', '2019-07-20 05:40:01', '2019-07-20 05:40:01', NULL, '{\"title\":\"asdd\",\"updated_at\":\"2019-07-20 02:40:00\",\"created_at\":\"2019-07-20 02:40:00\",\"id\":1}'),
(5, '8e3530ac-040c-46da-b4a8-5c06d739dff2', 1, 'Update', 'App\\Property', 1, 'App\\Property', 1, 'App\\Property', 1, '', 'finished', '', '2019-07-20 05:50:09', '2019-07-20 05:50:09', '{\"meters_total\":null,\"meters_cover\":null}', '{\"meters_total\":\"12\",\"meters_cover\":\"12\"}'),
(6, '8e382ebd-f017-4857-bb85-28ea39ce2ee7', 1, 'Create', 'App\\Property', 2, 'App\\Property', 2, 'App\\Property', 2, '', 'finished', '', '2019-07-21 17:32:15', '2019-07-21 17:32:15', NULL, '{\"title\":\"PH divino Devoto\",\"meters_total\":\"75\",\"meters_cover\":\"50\",\"address_line_1\":\"Lascano 4035\",\"updated_at\":\"2019-07-21 14:32:15\",\"created_at\":\"2019-07-21 14:32:15\",\"id\":2}'),
(7, '8e382ed2-2e4a-4df6-9b31-c72ef56e0e54', 1, 'Update', 'App\\Property', 2, 'App\\Property', 2, 'App\\Property', 2, '', 'finished', '', '2019-07-21 17:32:28', '2019-07-21 17:32:28', '{\"neighborhood\":null}', '{\"neighborhood\":\"Devoto\"}'),
(8, '8e383355-df06-460f-82c1-219cf98fd2a1', 1, 'Create', 'App\\Property', 3, 'App\\Property', 3, 'App\\Property', 3, '', 'finished', '', '2019-07-21 17:45:05', '2019-07-21 17:45:05', NULL, '{\"title\":\"Depto en Belgrano R\",\"meters_total\":\"100\",\"meters_cover\":\"120\",\"address_line_1\":\"Avenida Franklin D. Roosevelt 1825\",\"neighborhood\":\"Belgrano R\",\"city\":\"Buenos Aires\",\"state\":\"Ciudad Aut\\u00f3noma de Buenos Aires\",\"longitude\":\"-58.4905\",\"latitude\":\"-34.5755\",\"updated_at\":\"2019-07-21 14:45:05\",\"created_at\":\"2019-07-21 14:45:05\",\"id\":3}'),
(9, '8e383b8f-a695-468f-b9bd-285f7e4e4008', 1, 'Delete', 'App\\Property', 1, 'App\\Property', 1, 'App\\Property', 1, '', 'finished', '', '2019-07-21 18:08:05', '2019-07-21 18:08:05', NULL, NULL),
(10, '8e383d96-7456-4b67-a03a-30614d31dc65', 1, 'Update', 'App\\Property', 3, 'App\\Property', 3, 'App\\Property', 3, '', 'finished', '', '2019-07-21 18:13:45', '2019-07-21 18:13:45', '{\"type\":\"sell\"}', '{\"type\":\"rent\"}'),
(11, '8e388b78-53ce-4700-a97f-2fb55e448787', 1, 'Create', 'App\\Property', 4, 'App\\Property', 4, 'App\\Property', 4, '', 'finished', '', '2019-07-21 21:51:32', '2019-07-21 21:51:32', NULL, '{\"title\":\"Sit quae commodi nis\",\"type\":\"sell\",\"property_type\":\"Comercial\",\"meters_total\":\"724\",\"meters_cover\":\"69\",\"rooms\":\"40\",\"bedrooms\":\"36\",\"bathrooms\":\"24\",\"floors\":\"12\",\"orientation\":\"west\",\"disposition\":\"side\",\"items\":\"security\",\"address_line_1\":\"870 Nobel Street\",\"neighborhood\":\"Ex mollit sed ea qua\",\"city\":\"Ipsa nisi quo hic l\",\"state\":\"Et et tempor facilis\",\"longitude\":null,\"latitude\":null,\"published\":\"1\",\"updated_at\":\"2019-07-21 18:51:32\",\"created_at\":\"2019-07-21 18:51:32\",\"id\":4}'),
(12, '8e388ba8-2815-45b3-b3fb-db499cb48560', 1, 'Create', 'App\\Property', 5, 'App\\Property', 5, 'App\\Property', 5, '', 'finished', '', '2019-07-21 21:52:03', '2019-07-21 21:52:03', NULL, '{\"title\":\"Voluptate sed esse\",\"type\":\"rent\",\"property_type\":\"Apartament\",\"meters_total\":\"23\",\"meters_cover\":\"48\",\"rooms\":\"27\",\"bedrooms\":\"40\",\"bathrooms\":\"48\",\"floors\":\"23\",\"orientation\":\"north\",\"disposition\":\"back\",\"items\":\"garage,laundry,sauna,tvcable,gas\",\"address_line_1\":\"11 Old Court\",\"neighborhood\":\"Rerum inventore quas\",\"city\":\"Ea voluptates vero q\",\"state\":\"Aut excepturi quia c\",\"longitude\":null,\"latitude\":null,\"published\":\"0\",\"updated_at\":\"2019-07-21 18:52:03\",\"created_at\":\"2019-07-21 18:52:03\",\"id\":5}'),
(13, '8e388d5c-6e17-4a87-9b56-8aba575199c7', 1, 'Update', 'App\\Property', 5, 'App\\Property', 5, 'App\\Property', 5, '', 'finished', '', '2019-07-21 21:56:49', '2019-07-21 21:56:49', '{\"bathrooms\":48,\"rooms\":27,\"bedrooms\":40,\"floors\":23,\"age\":0}', '{\"bathrooms\":\"1\",\"rooms\":\"1\",\"bedrooms\":\"1\",\"floors\":\"1\",\"age\":\"10\"}'),
(14, '8e3894c9-b077-483b-b976-4c0d9c78a3a9', 1, 'Update', 'App\\Property', 5, 'App\\Property', 5, 'App\\Property', 5, '', 'finished', '', '2019-07-21 22:17:35', '2019-07-21 22:17:35', '{\"items\":\"\\\"garage,laundry,sauna,tvcable,gas\\\"\"}', '{\"items\":\"[\\\"garage\\\",\\\"laundry\\\",\\\"sauna\\\",\\\"tvcable\\\",\\\"gas\\\"]\"}'),
(15, '8e3895c6-eefd-46d8-bfcf-cc2932d31552', 1, 'Update', 'App\\Property', 5, 'App\\Property', 5, 'App\\Property', 5, '', 'finished', '', '2019-07-21 22:20:21', '2019-07-21 22:20:21', '{\"items\":\"[\\\"garage\\\",\\\"laundry\\\",\\\"sauna\\\",\\\"tvcable\\\",\\\"gas\\\"]\"}', '{\"items\":\"[\\\"garage\\\",\\\"laundry\\\",\\\"sauna\\\",\\\"tvcable\\\",\\\"gas\\\",\\\"wifi\\\"]\"}'),
(40, '8e389a06-08bc-40a0-8c79-ef85a6f64d9c', 1, 'Update', 'App\\Property', 2, 'App\\Property', 2, 'App\\Property', 2, '', 'finished', '', '2019-07-21 22:32:13', '2019-07-21 22:32:13', '{\"bathrooms\":0,\"rooms\":0,\"bedrooms\":0,\"floors\":0,\"items\":\"\",\"published\":null}', '{\"bathrooms\":\"1\",\"rooms\":\"1\",\"bedrooms\":\"1\",\"floors\":\"1\",\"items\":\"[\\\"air\\\",\\\"wifi\\\"]\",\"published\":\"0\"}'),
(51, '8e38a02b-1582-47e4-9175-ed359a0b6636', 1, 'Update', 'App\\Property', 2, 'App\\Property', 2, 'App\\Property', 2, '', 'finished', '', '2019-07-21 22:49:24', '2019-07-21 22:49:24', '{\"title\":\"PH divino Devoto\",\"address_line_1\":\"Lascano 4035\",\"meters_total\":75,\"meters_cover\":50,\"neighborhood\":\"Devoto\",\"city\":null,\"state\":null,\"property_type\":\"PH\",\"disposition\":\"front\",\"bathrooms\":1,\"rooms\":1,\"bedrooms\":1,\"floors\":1,\"age\":0}', '{\"title\":\"Facere est aut sit c\",\"address_line_1\":\"823 Rocky First Road\",\"meters_total\":\"919\",\"meters_cover\":\"998\",\"neighborhood\":\"Velit pariatur Mag\",\"city\":\"Dicta ipsum dolorib\",\"state\":\"Ipsa atque proident\",\"property_type\":\"Comercial\",\"disposition\":\"side\",\"bathrooms\":\"25\",\"rooms\":\"50\",\"bedrooms\":\"27\",\"floors\":\"45\",\"age\":\"236\"}'),
(55, '8e38a14c-8f55-4cf0-af9f-630ec1632f3e', 1, 'Update', 'App\\Property', 2, 'App\\Property', 2, 'App\\Property', 2, '', 'finished', '', '2019-07-21 22:52:34', '2019-07-21 22:52:34', '{\"bathrooms\":25,\"rooms\":50,\"bedrooms\":27,\"floors\":45}', '{\"bathrooms\":\"1\",\"rooms\":\"1\",\"bedrooms\":\"1\",\"floors\":\"1\"}'),
(56, '8e38a16d-e5ee-4a9f-939b-cf37bf1738e4', 1, 'Update', 'App\\Property', 2, 'App\\Property', 2, 'App\\Property', 2, '', 'finished', '', '2019-07-21 22:52:56', '2019-07-21 22:52:56', '{\"items\":\"[\\\"air\\\",\\\"wifi\\\"]\"}', '{\"items\":\"[\\\"air\\\",\\\"wifi\\\",\\\"service_dependency\\\",\\\"playroom\\\"]\"}'),
(65, '8e38a680-268f-45fc-8e69-221050e9d82c', 1, 'Update', 'App\\Property', 2, 'App\\Property', 2, 'App\\Property', 2, '', 'finished', '', '2019-07-21 23:07:07', '2019-07-21 23:07:07', '{\"items\":\"[\\\"air\\\",\\\"wifi\\\",\\\"service_dependency\\\",\\\"playroom\\\"]\"}', '{\"items\":\"[\\\"air\\\",\\\"wifi\\\",\\\"service_dependency\\\",\\\"playroom\\\",\\\"sum\\\"]\"}'),
(69, '8e38a948-65a3-4944-b65a-5dd31b80d4eb', 1, 'Create', 'App\\Property', 6, 'App\\Property', 6, 'App\\Property', 6, '', 'finished', '', '2019-07-21 23:14:54', '2019-07-21 23:14:54', NULL, '{\"title\":\"In eveniet est quod\",\"type\":\"rent\",\"property_type\":\"PH\",\"age\":\"70\",\"meters_total\":\"994\",\"meters_cover\":\"635\",\"rooms\":\"21\",\"bedrooms\":\"30\",\"bathrooms\":\"21\",\"floors\":\"2\",\"orientation\":\"south\",\"disposition\":\"back\",\"items\":[\"air\",\"wifi\"],\"address_line_1\":\"52 West White Old Drive\",\"neighborhood\":\"Et quia ex vitae qui\",\"city\":\"Odio autem non nemo\",\"state\":\"Cumque adipisicing s\",\"longitude\":null,\"latitude\":null,\"published\":\"0\",\"updated_at\":\"2019-07-21 20:14:54\",\"created_at\":\"2019-07-21 20:14:54\",\"id\":6}'),
(70, '8e38a9a0-9749-4de5-a066-ef03618aca75', 1, 'Create', 'App\\Property', 7, 'App\\Property', 7, 'App\\Property', 7, '', 'finished', '', '2019-07-21 23:15:51', '2019-07-21 23:15:51', NULL, '{\"title\":\"Sint rerum soluta si\",\"type\":\"rent\",\"property_type\":\"PH\",\"age\":\"70\",\"meters_total\":\"93\",\"meters_cover\":\"981\",\"rooms\":\"12\",\"bedrooms\":\"26\",\"bathrooms\":\"10\",\"floors\":\"9\",\"orientation\":\"east\",\"disposition\":\"back\",\"items\":[\"terrace\",\"toilette\"],\"address_line_1\":\"125 South New Road\",\"neighborhood\":\"Facilis nostrum veli\",\"city\":\"Soluta quas sint vol\",\"state\":\"Labore cupiditate of\",\"longitude\":null,\"latitude\":null,\"published\":\"0\",\"updated_at\":\"2019-07-21 20:15:51\",\"created_at\":\"2019-07-21 20:15:51\",\"id\":7}'),
(72, '8e38a9fc-d8a5-430e-8573-307c3a402850', 1, 'Update', 'App\\Property', 7, 'App\\Property', 7, 'App\\Property', 7, '', 'finished', '', '2019-07-21 23:16:52', '2019-07-21 23:16:52', '{\"bathrooms\":10,\"rooms\":12,\"bedrooms\":26,\"floors\":9}', '{\"bathrooms\":\"1\",\"rooms\":\"1\",\"bedrooms\":\"1\",\"floors\":\"1\"}'),
(74, '8e38aa69-c9ef-44fd-8e8c-f012902625ff', 1, 'Update', 'App\\Property', 7, 'App\\Property', 7, 'App\\Property', 7, '', 'finished', '', '2019-07-21 23:18:03', '2019-07-21 23:18:03', '{\"title\":\"Sint rerum soluta si\",\"address_line_1\":\"125 South New Road\",\"meters_total\":93,\"meters_cover\":981,\"neighborhood\":\"Facilis nostrum veli\",\"city\":\"Soluta quas sint vol\",\"state\":\"Labore cupiditate of\",\"property_type\":\"PH\",\"disposition\":\"back\",\"bathrooms\":1,\"rooms\":1,\"bedrooms\":1,\"floors\":1,\"age\":70}', '{\"title\":\"Aut fugiat commodi a\",\"address_line_1\":\"55 Rocky Fabien Parkway\",\"meters_total\":\"589\",\"meters_cover\":\"749\",\"neighborhood\":\"Doloribus eos ipsam\",\"city\":\"Qui consequatur num\",\"state\":\"Iure non reprehender\",\"property_type\":\"Apartament\",\"disposition\":\"internal\",\"bathrooms\":\"7\",\"rooms\":\"43\",\"bedrooms\":\"31\",\"floors\":\"18\",\"age\":\"195\"}'),
(79, '8e3a05aa-2044-432b-991f-0af0012a4e4a', 1, 'Create', 'App\\Property', 8, 'App\\Property', 8, 'App\\Property', 8, '', 'finished', '', '2019-07-22 15:29:02', '2019-07-22 15:29:02', NULL, '{\"title\":\"Officia tempor asper\",\"type\":\"sell\",\"property_type\":\"Cohouse\",\"age\":\"76\",\"meters_total\":\"696\",\"meters_cover\":\"589\",\"places\":[\"studio\",\"terrace\"],\"rooms\":\"17\",\"bedrooms\":\"19\",\"bathrooms\":\"46\",\"floors\":\"36\",\"orientation\":\"south\",\"disposition\":\"back\",\"items\":[\"gas\",\"gym\"],\"address_line_1\":\"40 Milton Drive\",\"neighborhood\":\"Accusamus cumque id\",\"city\":\"Ad voluptatibus ut t\",\"state\":\"Et non saepe repelle\",\"longitude\":null,\"latitude\":null,\"published\":\"0\",\"updated_at\":\"2019-07-22 12:29:02\",\"created_at\":\"2019-07-22 12:29:02\",\"id\":8}'),
(80, '8e3a070d-dc14-45e9-b4a8-4ac8abf70001', 1, 'Create', 'App\\Property', 9, 'App\\Property', 9, 'App\\Property', 9, '', 'finished', '', '2019-07-22 15:32:55', '2019-07-22 15:32:55', NULL, '{\"title\":\"In vel sit ut maxime\",\"type\":\"sell\",\"property_type\":\"Office\",\"age\":\"96\",\"meters_total\":\"244\",\"meters_cover\":\"170\",\"places\":[],\"rooms\":\"34\",\"bedrooms\":\"50\",\"bathrooms\":\"10\",\"floors\":\"33\",\"orientation\":\"east\",\"disposition\":\"side\",\"items\":[],\"address_line_1\":\"59 North Hague Parkway\",\"neighborhood\":\"Ut elit qui volupta\",\"city\":\"Ratione nihil deseru\",\"state\":\"Vitae vitae eos dese\",\"longitude\":null,\"latitude\":null,\"published\":\"0\",\"updated_at\":\"2019-07-22 12:32:55\",\"created_at\":\"2019-07-22 12:32:55\",\"id\":9}'),
(81, '8e3a0a1a-a466-4364-a863-84f0077163b8', 1, 'Create', 'App\\Property', 10, 'App\\Property', 10, 'App\\Property', 10, '', 'finished', '', '2019-07-22 15:41:27', '2019-07-22 15:41:27', NULL, '{\"title\":\"Velit ipsum itaque\",\"type\":\"sell\",\"property_type\":\"Comercial\",\"age\":\"230\",\"meters_total\":\"310\",\"meters_cover\":\"529\",\"places\":[\"terrace\",\"service_dependency\"],\"rooms\":\"49\",\"bedrooms\":\"26\",\"bathrooms\":\"1\",\"floors\":\"7\",\"orientation\":\"north\",\"disposition\":\"internal\",\"items\":[\"sauna\",\"gym\"],\"address_line_1\":\"404 Cowley Boulevard\",\"neighborhood\":\"Cupidatat sit conseq\",\"city\":\"Voluptatem duis labo\",\"state\":\"Sunt sequi expedita\",\"longitude\":null,\"latitude\":null,\"published\":\"0\",\"updated_at\":\"2019-07-22 12:41:27\",\"created_at\":\"2019-07-22 12:41:27\",\"id\":10}'),
(82, '8e3b1196-47c1-49b8-9fee-5473b7d71dd6', 1, 'Create', 'App\\Property', 11, 'App\\Property', 11, 'App\\Property', 11, '', 'finished', '', '2019-07-23 03:58:12', '2019-07-23 03:58:12', NULL, '{\"title\":\"Nemo suscipit sed au\",\"type\":\"rent\",\"property_type\":\"Cohouse\",\"age\":\"163\",\"meters_total\":\"20\",\"meters_cover\":\"426\",\"places\":[],\"rooms\":\"29\",\"bedrooms\":\"41\",\"bathrooms\":\"45\",\"floors\":\"27\",\"orientation\":\"east\",\"disposition\":\"internal\",\"items\":[],\"address_line_1\":\"47 Fabien Extension\",\"neighborhood\":\"Est magni quo conseq\",\"city\":\"Omnis numquam conseq\",\"state\":\"Voluptas duis aliqui\",\"longitude\":null,\"latitude\":null,\"published\":\"0\",\"updated_at\":\"2019-07-23 00:58:12\",\"created_at\":\"2019-07-23 00:58:12\",\"id\":11}'),
(83, '8e3c0d66-ec7f-488b-912f-d8d81f39e1f2', 1, 'Update', 'App\\Property', 11, 'App\\Property', 11, 'App\\Property', 11, '', 'finished', '', '2019-07-23 15:42:20', '2019-07-23 15:42:20', '{\"bathrooms\":45,\"rooms\":29,\"bedrooms\":41,\"floors\":27}', '{\"bathrooms\":\"1\",\"rooms\":\"1\",\"bedrooms\":\"1\",\"floors\":\"1\"}'),
(84, '8e3c10e1-b2bb-4bd9-bcfb-eff10897e376', 1, 'Update', 'App\\Property', 10, 'App\\Property', 10, 'App\\Property', 10, '', 'finished', '', '2019-07-23 15:52:04', '2019-07-23 15:52:04', '{\"price\":null,\"rooms\":49,\"bedrooms\":26,\"floors\":7,\"currency\":null}', '{\"price\":\"1500\",\"rooms\":\"1\",\"bedrooms\":\"1\",\"floors\":\"1\",\"currency\":\"$\"}'),
(85, '8e3c110a-3c25-49d6-afc1-4c5d922e735d', 1, 'Update', 'App\\Property', 10, 'App\\Property', 10, 'App\\Property', 10, '', 'finished', '', '2019-07-23 15:52:30', '2019-07-23 15:52:30', '[]', '[]'),
(86, '8e3ee8a5-2d86-4850-8a1b-654fbdeaad3d', 1, 'Update', 'App\\Property', 11, 'App\\Property', 11, 'App\\Property', 11, '', 'finished', '', '2019-07-25 01:47:02', '2019-07-25 01:47:02', '[]', '[]'),
(87, '8e3ee914-ec89-4682-86c0-852b53689609', 1, 'Update', 'App\\Property', 11, 'App\\Property', 11, 'App\\Property', 11, '', 'finished', '', '2019-07-25 01:48:15', '2019-07-25 01:48:15', '{\"price\":null}', '{\"price\":\"2000\"}'),
(88, '8e3ee922-9f31-40aa-9dc1-f4ab4929f805', 1, 'Update', 'App\\Property', 11, 'App\\Property', 11, 'App\\Property', 11, '', 'finished', '', '2019-07-25 01:48:24', '2019-07-25 01:48:24', '{\"currency\":null}', '{\"currency\":\"$\"}'),
(89, '8e3eec47-6552-4f54-8b90-13a102d44cb2', 1, 'Delete', 'App\\Property', 11, 'App\\Property', 11, 'App\\Property', 11, '', 'finished', '', '2019-07-25 01:57:12', '2019-07-25 01:57:12', NULL, NULL),
(90, '8e3eec55-eaf2-4744-838c-b447979ae61b', 1, 'Delete', 'App\\Property', 2, 'App\\Property', 2, 'App\\Property', 2, '', 'finished', '', '2019-07-25 01:57:21', '2019-07-25 01:57:21', NULL, NULL),
(91, '8e3eec55-ed6b-420a-a963-2681edfc2fbb', 1, 'Delete', 'App\\Property', 3, 'App\\Property', 3, 'App\\Property', 3, '', 'finished', '', '2019-07-25 01:57:21', '2019-07-25 01:57:21', NULL, NULL),
(92, '8e3eec55-ef31-44e8-84c1-5c457c1588e2', 1, 'Delete', 'App\\Property', 4, 'App\\Property', 4, 'App\\Property', 4, '', 'finished', '', '2019-07-25 01:57:21', '2019-07-25 01:57:21', NULL, NULL),
(93, '8e3eec55-f18a-447d-8aac-06a03d591d14', 1, 'Delete', 'App\\Property', 5, 'App\\Property', 5, 'App\\Property', 5, '', 'finished', '', '2019-07-25 01:57:21', '2019-07-25 01:57:21', NULL, NULL),
(94, '8e3eec55-f4c5-430c-b282-e76e23dbbb96', 1, 'Delete', 'App\\Property', 6, 'App\\Property', 6, 'App\\Property', 6, '', 'finished', '', '2019-07-25 01:57:21', '2019-07-25 01:57:21', NULL, NULL),
(95, '8e3eec55-fa16-45b9-a55e-bb7316ad3059', 1, 'Delete', 'App\\Property', 7, 'App\\Property', 7, 'App\\Property', 7, '', 'finished', '', '2019-07-25 01:57:21', '2019-07-25 01:57:21', NULL, NULL),
(96, '8e3eec56-035a-4dd6-94f3-28adf72c2265', 1, 'Delete', 'App\\Property', 8, 'App\\Property', 8, 'App\\Property', 8, '', 'finished', '', '2019-07-25 01:57:21', '2019-07-25 01:57:21', NULL, NULL),
(97, '8e3eec56-0b07-4d12-bf1d-8aa2b2f19a61', 1, 'Delete', 'App\\Property', 9, 'App\\Property', 9, 'App\\Property', 9, '', 'finished', '', '2019-07-25 01:57:21', '2019-07-25 01:57:21', NULL, NULL),
(98, '8e3eec56-129a-4d3c-b5de-c521461f8f2b', 1, 'Delete', 'App\\Property', 10, 'App\\Property', 10, 'App\\Property', 10, '', 'finished', '', '2019-07-25 01:57:21', '2019-07-25 01:57:21', NULL, NULL),
(99, '8e3ef457-324e-45f7-8c10-374f38644ae2', 1, 'Create', 'OptimistDigital\\MenuBuilder\\Models\\Menu', 1, 'OptimistDigital\\MenuBuilder\\Models\\Menu', 1, 'OptimistDigital\\MenuBuilder\\Models\\Menu', 1, '', 'finished', '', '2019-07-25 02:19:44', '2019-07-25 02:19:44', NULL, '{\"name\":\"Mi Propiedades\",\"slug\":\"mis-propiedades\",\"locale\":\"en_US\",\"updated_at\":\"2019-07-24 23:19:44\",\"created_at\":\"2019-07-24 23:19:44\",\"id\":1}'),
(100, '8e3ef4b3-5e4b-40b2-ba46-5d7fe8906214', 1, 'Delete', 'OptimistDigital\\MenuBuilder\\Models\\Menu', 1, 'OptimistDigital\\MenuBuilder\\Models\\Menu', 1, 'OptimistDigital\\MenuBuilder\\Models\\Menu', 1, '', 'finished', '', '2019-07-25 02:20:45', '2019-07-25 02:20:45', NULL, NULL),
(101, '8e44cc71-ecfc-487d-a3c9-e5f60e0e210e', 1, 'Create', 'App\\Property', 12, 'App\\Property', 12, 'App\\Property', 12, '', 'finished', '', '2019-07-28 00:03:09', '2019-07-28 00:03:09', NULL, '{\"title\":\"Labore ipsam laboris\",\"type\":\"sell\",\"currency\":\"USD\",\"price\":\"613\",\"property_type\":\"Apartament\",\"age\":\"95\",\"meters_total\":\"11\",\"meters_cover\":\"36\",\"places\":[],\"rooms\":\"31\",\"bedrooms\":\"34\",\"bathrooms\":\"3\",\"floors\":\"16\",\"orientation\":\"east\",\"disposition\":\"back\",\"items\":[],\"address_line_1\":\"51 South New Freeway\",\"neighborhood\":\"Duis nemo nostrud la\",\"city\":\"Dolor voluptates eli\",\"state\":\"Omnis quam reiciendi\",\"longitude\":null,\"latitude\":null,\"published\":\"0\",\"updated_at\":\"2019-07-27 21:03:09\",\"created_at\":\"2019-07-27 21:03:09\",\"id\":12}'),
(102, '8e4699c6-e7f4-4ea6-90ce-4ff4c19d7cb1', 1, 'Create', 'App\\Country', 1, 'App\\Country', 1, 'App\\Country', 1, '', 'finished', '', '2019-07-28 21:33:08', '2019-07-28 21:33:08', NULL, '{\"name\":\"Argentina\",\"updated_at\":\"2019-07-28 18:33:08\",\"created_at\":\"2019-07-28 18:33:08\",\"id\":1}'),
(103, '8e469a71-d1a5-4aab-ad06-5959979fe38e', 1, 'Update', 'App\\Country', 1, 'App\\Country', 1, 'App\\Country', 1, '', 'finished', '', '2019-07-28 21:35:00', '2019-07-28 21:35:00', '{\"mapa\":\"\"}', '{\"mapa\":\"-35.991110, -64.928364\"}'),
(104, '8e469bcb-6097-41f0-a09a-e0e193663dd9', 1, 'Update', 'App\\Country', 1, 'App\\Country', 1, 'App\\Country', 1, '', 'finished', '', '2019-07-28 21:38:46', '2019-07-28 21:38:46', '{\"name\":\"Argentina\"}', '{\"name\":\"AR\"}'),
(105, '8e469efd-f090-493e-9bd4-1b0eee876add', 1, 'Create', 'App\\City', 1, 'App\\City', 1, 'App\\City', 1, '', 'finished', '', '2019-07-28 21:47:42', '2019-07-28 21:47:42', NULL, '{\"name\":\"Ciudad de Buenos Aires\",\"country_id\":1,\"updated_at\":\"2019-07-28 18:47:42\",\"created_at\":\"2019-07-28 18:47:42\",\"id\":1}'),
(121, '8e46a435-ed44-4147-85ab-1863922a4adf', 1, 'Update', 'App\\Country', 1, 'App\\Country', 1, 'App\\Country', 1, '', 'finished', '', '2019-07-28 22:02:18', '2019-07-28 22:02:18', '{\"name\":\"AR\"}', '{\"name\":\"Argentina\"}'),
(122, '8e46a6f2-a368-4363-aa8f-c1704887102f', 1, 'Create', 'App\\Neighborhood', 1, 'App\\Neighborhood', 1, 'App\\Neighborhood', 1, '', 'finished', '', '2019-07-28 22:09:57', '2019-07-28 22:09:57', NULL, '{\"name\":\"Saavedra\",\"city_id\":1,\"map\":\"-34.551376, -58.482036\",\"updated_at\":\"2019-07-28 19:09:57\",\"created_at\":\"2019-07-28 19:09:57\",\"id\":1}'),
(123, '8e46ae64-bba5-4923-b58f-d8e40cdc5174', 1, 'Create', 'App\\Place', 1, 'App\\Place', 1, 'App\\Place', 1, '', 'finished', '', '2019-07-28 22:30:46', '2019-07-28 22:30:46', NULL, '{\"name\":\"Cornelio Saavedra\",\"neighborhood_id\":1,\"map\":\"-34.549785, -58.482489\",\"address\":\"Besares 3599\",\"type\":\"Comidas y bebidas\",\"schedules\":null,\"description\":\"<div>Empanadas de carne souffle; \\u00d1oquis de R\\u00facula y albahaca al graten; Mousse de chocolate con frutos rojos.<\\/div><div><br><\\/div>\",\"updated_at\":\"2019-07-28 19:30:46\",\"created_at\":\"2019-07-28 19:30:46\",\"id\":1}'),
(124, '8e47129f-8eb8-4414-a0fa-b37a1639b7ed', 1, 'Create', 'App\\Place', 2, 'App\\Place', 2, 'App\\Place', 2, '', 'finished', '', '2019-07-29 03:11:02', '2019-07-29 03:11:02', NULL, '{\"name\":\"Halee Watts\",\"neighborhood_id\":1,\"map\":\"Velit nihil quidem i\",\"address\":\"Adipisci do sit nesc\",\"type\":\"Sequi voluptates mol\",\"schedules\":\"Officia suscipit dol\",\"description\":\"<div>Eum architecto in co.<\\/div>\",\"updated_at\":\"2019-07-29 00:11:02\",\"created_at\":\"2019-07-29 00:11:02\",\"id\":2}'),
(125, '8e47170d-7584-47bf-80e8-38e75858ff43', 1, 'Create', 'App\\Place', 3, 'App\\Place', 3, 'App\\Place', 3, '', 'finished', '', '2019-07-29 03:23:25', '2019-07-29 03:23:25', NULL, '{\"name\":\"Hoyt Parker\",\"neighborhood_id\":1,\"map\":\"Nisi incididunt veli\",\"address\":\"Quisquam enim unde a\",\"type\":\"Autem maxime harum q\",\"schedules\":\"Non deleniti enim eu\",\"description\":\"<div>Vel sint, dignissimo.<\\/div>\",\"updated_at\":\"2019-07-29 00:23:25\",\"created_at\":\"2019-07-29 00:23:25\",\"id\":3}'),
(126, '8e47177d-2d98-42b9-b3ae-1c321016f8d1', 1, 'Update', 'App\\Property', 12, 'App\\Property', 12, 'App\\Property', 12, '', 'finished', '', '2019-07-29 03:24:39', '2019-07-29 03:24:39', '{\"bathrooms\":3,\"rooms\":31,\"bedrooms\":34,\"floors\":16}', '{\"bathrooms\":\"1\",\"rooms\":\"1\",\"bedrooms\":\"1\",\"floors\":\"1\"}'),
(127, '8e4719fa-cfd5-48d6-81b3-5aabdcb22cdc', 1, 'Create', 'App\\Property', 13, 'App\\Property', 13, 'App\\Property', 13, '', 'finished', '', '2019-07-29 03:31:36', '2019-07-29 03:31:36', NULL, '{\"title\":\"Repellendus Et aut\",\"type\":\"sell\",\"currency\":\"$\",\"price\":\"889\",\"property_type\":\"Cohouse\",\"age\":\"234\",\"meters_total\":\"765\",\"meters_cover\":\"357\",\"places\":[],\"rooms\":\"8\",\"bedrooms\":\"22\",\"bathrooms\":\"8\",\"floors\":\"36\",\"orientation\":\"east\",\"disposition\":\"internal\",\"items\":[],\"address_line_1\":\"64 West First Drive\",\"neighborhood\":\"Qui dolores reiciend\",\"city\":\"Deserunt exercitatio\",\"state\":\"Modi quia blanditiis\",\"longitude\":null,\"latitude\":null,\"published\":\"0\",\"updated_at\":\"2019-07-29 00:31:36\",\"created_at\":\"2019-07-29 00:31:36\",\"id\":13}'),
(128, '8e471b1e-e44d-4db3-9bb6-c5f31e10c62a', 1, 'Create', 'App\\Property', 14, 'App\\Property', 14, 'App\\Property', 14, '', 'finished', '', '2019-07-29 03:34:48', '2019-07-29 03:34:48', NULL, '{\"title\":\"Fuga Dolore sunt in\",\"type\":\"sell\",\"currency\":\"USD\",\"price\":\"768\",\"property_type\":\"Comercial\",\"age\":\"280\",\"meters_total\":\"546\",\"meters_cover\":\"436\",\"places\":[],\"rooms\":\"31\",\"bedrooms\":\"2\",\"bathrooms\":\"38\",\"floors\":\"31\",\"orientation\":\"north\",\"disposition\":\"back\",\"items\":[],\"address_line_1\":\"831 Green Milton Extension\",\"neighborhood\":\"Laboris itaque quibu\",\"city\":\"Optio obcaecati off\",\"state\":\"Ab rerum voluptas od\",\"longitude\":null,\"latitude\":null,\"published\":\"0\",\"updated_at\":\"2019-07-29 00:34:48\",\"created_at\":\"2019-07-29 00:34:48\",\"id\":14}'),
(129, '8e471b43-b1ff-4758-8576-c9aaefbb11df', 1, 'Update', 'App\\Property', 14, 'App\\Property', 14, 'App\\Property', 14, '', 'finished', '', '2019-07-29 03:35:12', '2019-07-29 03:35:12', '{\"bathrooms\":38,\"rooms\":31,\"bedrooms\":2,\"floors\":31}', '{\"bathrooms\":\"1\",\"rooms\":\"1\",\"bedrooms\":\"1\",\"floors\":\"1\"}'),
(130, '8e471bf3-135e-45ce-812c-05d2e827b22d', 1, 'Create', 'App\\Property', 15, 'App\\Property', 15, 'App\\Property', 15, '', 'finished', '', '2019-07-29 03:37:07', '2019-07-29 03:37:07', NULL, '{\"title\":\"Placeat sit labore\",\"type\":\"rent\",\"currency\":\"USD\",\"price\":\"297\",\"property_type\":\"PH\",\"age\":\"178\",\"meters_total\":\"785\",\"meters_cover\":\"813\",\"places\":[],\"rooms\":\"18\",\"bedrooms\":\"25\",\"bathrooms\":\"9\",\"floors\":\"39\",\"orientation\":\"east\",\"disposition\":\"back\",\"items\":[],\"address_line_1\":\"22 West Oak Drive\",\"neighborhood\":\"Voluptatem aut est v\",\"city\":\"Facere pariatur Qui\",\"state\":\"Voluptatem earum mi\",\"longitude\":null,\"latitude\":null,\"published\":\"0\",\"updated_at\":\"2019-07-29 00:37:07\",\"created_at\":\"2019-07-29 00:37:07\",\"id\":15}'),
(131, '8e6723d8-00e0-4cf2-99b3-ac9d7af52970', 1, 'Create', 'App\\City', 2, 'App\\City', 2, 'App\\City', 2, '', 'finished', '', '2019-08-14 01:45:41', '2019-08-14 01:45:41', NULL, '{\"name\":\"Bah\\u00eda Blanca\",\"country_id\":1,\"map\":null,\"updated_at\":\"2019-08-13 22:45:41\",\"created_at\":\"2019-08-13 22:45:41\",\"id\":2}'),
(132, '8e676705-d2a6-4d47-9003-49a5acd7009e', 1, 'Create', 'App\\Property', 16, 'App\\Property', 16, 'App\\Property', 16, '', 'finished', '', '2019-08-14 04:53:32', '2019-08-14 04:53:32', NULL, '{\"title\":\"Voluptatem iure ut\",\"type\":\"sell\",\"property_type\":\"Cohouse\",\"currency\":\"USD\",\"price\":\"612\",\"pay_expenses\":\"true\",\"expenses\":\"123\",\"age\":\"60\",\"meters_total\":\"475\",\"meters_cover\":\"650\",\"places\":[],\"rooms\":\"3\",\"bedrooms\":\"45\",\"bathrooms\":\"24\",\"floors\":\"20\",\"orientation\":\"east\",\"disposition\":\"back\",\"items\":[],\"address_line_1\":\"959 South Cowley Boulevard\",\"neighborhood\":\"Ut ea iste iusto ame\",\"city\":\"Id qui perspiciatis\",\"state\":\"Quas magnam omnis mo\",\"longitude\":null,\"latitude\":null,\"published\":\"0\",\"updated_at\":\"2019-08-14 01:53:32\",\"created_at\":\"2019-08-14 01:53:32\",\"id\":16}'),
(133, '8e676723-c596-4dea-bc44-8a48061a9bde', 1, 'Update', 'App\\Property', 16, 'App\\Property', 16, 'App\\Property', 16, '', 'finished', '', '2019-08-14 04:53:51', '2019-08-14 04:53:51', '{\"bathrooms\":24,\"rooms\":3,\"bedrooms\":45,\"floors\":20,\"items\":\"[]\",\"places\":\"[]\"}', '{\"bathrooms\":\"1\",\"rooms\":\"1\",\"bedrooms\":\"1\",\"floors\":\"1\",\"items\":\"[\\\"gym\\\",\\\"sauna\\\"]\",\"places\":\"[\\\"service_dependency\\\",\\\"parrilla\\\",\\\"terrace\\\"]\"}'),
(134, '8e6ecb64-3a7b-40e2-9933-692a7fceb527', 1, 'Update', 'App\\Organization', 1, 'App\\Organization', 1, 'App\\Organization', 1, '', 'finished', '', '2019-08-17 21:04:58', '2019-08-17 21:04:58', '[]', '[]'),
(135, '8e6ecb6d-c387-41b0-a857-98c953717ec9', 1, 'Update', 'App\\Organization', 1, 'App\\Organization', 1, 'App\\Organization', 1, '', 'finished', '', '2019-08-17 21:05:05', '2019-08-17 21:05:05', '[]', '[]'),
(136, '8e6ecb75-160a-47f3-b139-0a760c77a149', 1, 'Delete', 'App\\Organization', 1, 'App\\Organization', 1, 'App\\Organization', 1, '', 'finished', '', '2019-08-17 21:05:09', '2019-08-17 21:05:09', NULL, NULL),
(137, '8e6ed161-5c95-4123-bb0a-3bf8787bc1af', 1, 'Update', 'App\\Organization', 1, 'App\\Organization', 1, 'App\\Organization', 1, '', 'finished', '', '2019-08-17 21:21:43', '2019-08-17 21:21:43', '[]', '[]'),
(138, '8e6ed169-340a-40ef-b086-bc749958e1e9', 1, 'Update', 'App\\Organization', 1, 'App\\Organization', 1, 'App\\Organization', 1, '', 'finished', '', '2019-08-17 21:21:48', '2019-08-17 21:21:48', '[]', '[]'),
(139, '8e6ed3ec-07e7-4ce2-a58f-8162f1e78ae9', 1, 'Update', 'App\\Organization', 1, 'App\\Organization', 1, 'App\\Organization', 1, '', 'finished', '', '2019-08-17 21:28:50', '2019-08-17 21:28:50', '[]', '[]'),
(140, '8e6ed3f3-afc7-4df0-b1c9-89ddacdbdd18', 1, 'Update', 'App\\Organization', 1, 'App\\Organization', 1, 'App\\Organization', 1, '', 'finished', '', '2019-08-17 21:28:55', '2019-08-17 21:28:55', '[]', '[]'),
(141, '8e6ed3f5-4905-491d-b9e2-d6e40f69ba7b', 1, 'Update', 'App\\Organization', 1, 'App\\Organization', 1, 'App\\Organization', 1, '', 'finished', '', '2019-08-17 21:28:56', '2019-08-17 21:28:56', '[]', '[]'),
(142, '8e6ed401-361e-4132-a4ac-7e26da81dd72', 1, 'Update', 'App\\Organization', 1, 'App\\Organization', 1, 'App\\Organization', 1, '', 'finished', '', '2019-08-17 21:29:03', '2019-08-17 21:29:03', '[]', '[]'),
(143, '8e6ed403-58e5-44a8-9374-1f5c88e6ae1a', 1, 'Update', 'App\\Organization', 1, 'App\\Organization', 1, 'App\\Organization', 1, '', 'finished', '', '2019-08-17 21:29:05', '2019-08-17 21:29:05', '[]', '[]'),
(144, '8e6edcf0-addc-4c1c-8c35-cf59aadb9645', 1, 'Update', 'App\\Organization', 1, 'App\\Organization', 1, 'App\\Organization', 1, '', 'finished', '', '2019-08-17 21:54:03', '2019-08-17 21:54:03', '[]', '[]'),
(145, '8e6ee110-f1ef-4ae5-a1a2-19cbe353f905', 1, 'Delete', 'App\\Organization', 1, 'App\\Organization', 1, 'App\\Organization', 1, '', 'finished', '', '2019-08-17 22:05:35', '2019-08-17 22:05:35', NULL, NULL),
(146, '8e6ee2e1-6536-482e-809f-7f5803f1ed1b', 1, 'Update', 'App\\Organization', 2, 'App\\Organization', 2, 'App\\Organization', 2, '', 'finished', '', '2019-08-17 22:10:39', '2019-08-17 22:10:39', '[]', '[]'),
(147, '8e6f1c0b-7771-428b-bc52-384957df5b03', 1, 'Delete', 'App\\Organization', 2, 'App\\Organization', 2, 'App\\Organization', 2, '', 'finished', '', '2019-08-18 00:50:30', '2019-08-18 00:50:30', NULL, NULL),
(148, '8e6f1d7d-032f-427b-bc51-8e258175f6cd', 1, 'Update', 'App\\Organization', 2, 'App\\Organization', 2, 'App\\Organization', 2, '', 'finished', '', '2019-08-18 00:54:32', '2019-08-18 00:54:32', '[]', '[]'),
(149, '8e6f1ff5-a15a-4e2d-9794-22f1b680ee2b', 1, 'Update', 'App\\Organization', 2, 'App\\Organization', 2, 'App\\Organization', 2, '', 'finished', '', '2019-08-18 01:01:27', '2019-08-18 01:01:27', '[]', '[]'),
(153, '8e6f3661-cc5c-4383-9c6b-1467fd777c45', 1, 'Update', 'App\\Organization', 2, 'App\\Organization', 2, 'App\\Organization', 2, '', 'finished', '', '2019-08-18 02:04:08', '2019-08-18 02:04:08', '{\"bio\":\"\"}', '{\"bio\":\"<div>Por m\\u00e1s de 30 a\\u00f1os Consultatio Real Estate se ha dedicado exitosamente al desarrollo de emprendimientos inmobiliarios innovadores, de gran categor\\u00eda en ubicaciones privilegiadas. Y siempre bajo la direcci\\u00f3n de su fundador, Presidente y socio mayoritario, Eduardo F. Costantini.<br><br><\\/div><div><br>Consultatio Real Estate lidera y participa activamente en cuatro mercados de la Argentina y el exterior:<br><br><\\/div><ul><li>Desarrollo de Ciudades Pueblo (Nordelta y Puertos)<\\/li><li>Torres residenciales high end (Oceana Key Biscayne, Oceana Bal Harbour, Grand Bourg, Torre Oro y Quartier Ocampo)<\\/li><li>Venta y alquiler de edificios de oficinas AAA (Alem Plaza y Catalinas Plaza y Catalinas Norte)<\\/li><li>Complejos tur\\u00edsticos (Las Garzas)<\\/li><\\/ul><div><br>Con el fin de consolidar su crecimiento en escala y profundizar el proceso de diversificaci\\u00f3n regional e internacional, en mayo de 2008 Consultatio Real Estate llev\\u00f3 adelante una exitosa oferta p\\u00fablica de sus acciones, cotizando desde entonces en la Bolsa de Comercio de Buenos Aires bajo el s\\u00edmbolo CTIO.<br><br><\\/div><div><strong><br>Equipo<br><\\/strong><br><\\/div><div><br>Consultatio Real Estate est\\u00e1 liderado por Eduardo F. Costantini, quien junto a un s\\u00f3lido y pujante equipo de profesionales llevan a cabo la realizaci\\u00f3n de los proyectos inmobiliarios de la Compa\\u00f1\\u00eda.<br><br><\\/div>\"}'),
(155, '8e6f3761-2485-4573-a982-d389f6f42899', 1, 'Update', 'App\\Organization', 2, 'App\\Organization', 2, 'App\\Organization', 2, '', 'finished', '', '2019-08-18 02:06:56', '2019-08-18 02:06:56', '{\"avatar\":\"\"}', '{\"avatar\":\"7SibZH1FGxeFoeAk7HC3d7yqTDWzYXANof4wk6GG.jpeg\"}'),
(156, '8e6f37a3-70c8-497c-84ac-a32a7e6f0c16', 1, 'Update', 'App\\Organization', 2, 'App\\Organization', 2, 'App\\Organization', 2, '', 'finished', '', '2019-08-18 02:07:39', '2019-08-18 02:07:39', '[]', '[]'),
(157, '8e6f37ae-4657-407a-84f9-bdc893871379', 1, 'Update', 'App\\Organization', 2, 'App\\Organization', 2, 'App\\Organization', 2, '', 'finished', '', '2019-08-18 02:07:46', '2019-08-18 02:07:46', '[]', '[]'),
(158, '8e6f405f-e926-480c-a85e-390356643319', 1, 'Update', 'App\\Organization', 2, 'App\\Organization', 2, 'App\\Organization', 2, '', 'finished', '', '2019-08-18 02:32:05', '2019-08-18 02:32:05', '{\"bio\":\"<div>Por m\\u00e1s de 30 a\\u00f1os Consultatio Real Estate se ha dedicado exitosamente al desarrollo de emprendimientos inmobiliarios innovadores, de gran categor\\u00eda en ubicaciones privilegiadas. Y siempre bajo la direcci\\u00f3n de su fundador, Presidente y socio mayoritario, Eduardo F. Costantini.<br><br><\\/div><div><br>Consultatio Real Estate lidera y participa activamente en cuatro mercados de la Argentina y el exterior:<br><br><\\/div><ul><li>Desarrollo de Ciudades Pueblo (Nordelta y Puertos)<\\/li><li>Torres residenciales high end (Oceana Key Biscayne, Oceana Bal Harbour, Grand Bourg, Torre Oro y Quartier Ocampo)<\\/li><li>Venta y alquiler de edificios de oficinas AAA (Alem Plaza y Catalinas Plaza y Catalinas Norte)<\\/li><li>Complejos tur\\u00edsticos (Las Garzas)<\\/li><\\/ul><div><br>Con el fin de consolidar su crecimiento en escala y profundizar el proceso de diversificaci\\u00f3n regional e internacional, en mayo de 2008 Consultatio Real Estate llev\\u00f3 adelante una exitosa oferta p\\u00fablica de sus acciones, cotizando desde entonces en la Bolsa de Comercio de Buenos Aires bajo el s\\u00edmbolo CTIO.<br><br><\\/div><div><strong><br>Equipo<br><\\/strong><br><\\/div><div><br>Consultatio Real Estate est\\u00e1 liderado por Eduardo F. Costantini, quien junto a un s\\u00f3lido y pujante equipo de profesionales llevan a cabo la realizaci\\u00f3n de los proyectos inmobiliarios de la Compa\\u00f1\\u00eda.<br><br><\\/div>\"}', '{\"bio\":\"<div>Por m\\u00e1s de 30 a\\u00f1os Consultatio Real Estate se ha dedicado exitosamente al desarrollo de emprendimientos inmobiliarios innovadores, de gran categor\\u00eda en ubicaciones privilegiadas. Y siempre bajo la direcci\\u00f3n de su fundador, Presidente y socio mayoritario, Eduardo F. Costantini.<br><br><\\/div><div>Consultatio Real Estate lidera y participa activamente en cuatro mercados de la Argentina y el exterior:<br><br><\\/div><ul><li>Desarrollo de Ciudades Pueblo (Nordelta y Puertos)<\\/li><li>Torres residenciales high end (Oceana Key Biscayne, Oceana Bal Harbour, Grand Bourg, Torre Oro y Quartier Ocampo)<\\/li><li>Venta y alquiler de edificios de oficinas AAA (Alem Plaza y Catalinas Plaza y Catalinas Norte)<\\/li><li>Complejos tur\\u00edsticos (Las Garzas)<\\/li><\\/ul><div><br>Con el fin de consolidar su crecimiento en escala y profundizar el proceso de diversificaci\\u00f3n regional e internacional, en mayo de 2008 Consultatio Real Estate llev\\u00f3 adelante una exitosa oferta p\\u00fablica de sus acciones, cotizando desde entonces en la Bolsa de Comercio de Buenos Aires bajo el s\\u00edmbolo CTIO.<\\/div><div><strong><br>Equipo<\\/strong><\\/div><div><br>Consultatio Real Estate est\\u00e1 liderado por Eduardo F. Costantini, quien junto a un s\\u00f3lido y pujante equipo de profesionales llevan a cabo la realizaci\\u00f3n de los proyectos inmobiliarios de la Compa\\u00f1\\u00eda.<br><br><\\/div>\"}'),
(159, '8e9ae73f-8d02-460c-ad19-db714da57d51', 1, 'Delete', 'App\\City', 2, 'App\\City', 2, 'App\\City', 2, '', 'finished', '', '2019-09-08 19:19:18', '2019-09-08 19:19:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `map` varchar(200) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`id`, `country_id`, `name`, `map`, `updated_at`, `created_at`) VALUES
(1, 1, 'Ciudad de Buenos Aires', NULL, '2019-07-28 21:47:42', '2019-07-28 21:47:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mapa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `name`, `updated_at`, `created_at`, `mapa`) VALUES
(1, 'Argentina', '2019-07-28 22:02:18', '2019-07-28 21:33:08', '-35.991110, -64.928364');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `el_albums`
--

CREATE TABLE `el_albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `el_photos`
--

CREATE TABLE `el_photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(31, 'App\\Property', 15, 'properties', 'Captura de Pantalla 2019-07-27 a la(s) 17.56.05', 'f29338db91acea5118983534bbca7edd.png', 'image/png', 'public', 1884332, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 1, '2019-07-29 03:37:07', '2019-07-29 03:37:07'),
(32, 'App\\Property', 16, 'properties', 'Captura de Pantalla 2019-07-19 a la(s) 00', '2b11849755bce82f0e67baf78f658094.png', 'image/png', 'public', 73628, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 1, '2019-08-14 04:53:32', '2019-08-14 04:53:32'),
(33, 'App\\Property', 16, 'properties', 'Captura de Pantalla 2019-07-19 a la(s) 00', '2b11849755bce82f0e67baf78f658094.png', 'image/png', 'public', 73628, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 2, '2019-08-14 04:53:32', '2019-08-14 04:53:32'),
(34, 'App\\Property', 16, 'properties', 'Captura de Pantalla 2019-07-19 a la(s) 00', '2b11849755bce82f0e67baf78f658094.png', 'image/png', 'public', 73628, '[]', '{\"generated_conversions\":{\"thumb\":true}}', '[]', 3, '2019-08-14 04:53:32', '2019-08-14 04:53:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_01_000000_create_action_events_table', 1),
(4, '2019_05_10_000000_add_fields_to_action_events_table', 1),
(5, '2019_07_16_023029_properties', 1),
(6, '2019_07_21_212430_create_albums_table', 2),
(7, '2019_07_22_000304_create_media_table', 2),
(8, '2019_07_24_231823_create_menus_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `neighborhoods`
--

CREATE TABLE `neighborhoods` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `map` varchar(200) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `neighborhoods`
--

INSERT INTO `neighborhoods` (`id`, `city_id`, `name`, `map`, `updated_at`, `created_at`) VALUES
(1, 1, 'Saavedra', '-34.551376, -58.482036', '2019-07-28 22:09:57', '2019-07-28 22:09:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organizations`
--

CREATE TABLE `organizations` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `bio` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `avatar` text NOT NULL,
  `user_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `bio`, `updated_at`, `created_at`, `avatar`, `user_id`) VALUES
(2, 'Catalina SA', '<div>Por más de 30 años Consultatio Real Estate se ha dedicado exitosamente al desarrollo de emprendimientos inmobiliarios innovadores, de gran categoría en ubicaciones privilegiadas. Y siempre bajo la dirección de su fundador, Presidente y socio mayoritario, Eduardo F. Costantini.<br><br></div><div>Consultatio Real Estate lidera y participa activamente en cuatro mercados de la Argentina y el exterior:<br><br></div><ul><li>Desarrollo de Ciudades Pueblo (Nordelta y Puertos)</li><li>Torres residenciales high end (Oceana Key Biscayne, Oceana Bal Harbour, Grand Bourg, Torre Oro y Quartier Ocampo)</li><li>Venta y alquiler de edificios de oficinas AAA (Alem Plaza y Catalinas Plaza y Catalinas Norte)</li><li>Complejos turísticos (Las Garzas)</li></ul><div><br>Con el fin de consolidar su crecimiento en escala y profundizar el proceso de diversificación regional e internacional, en mayo de 2008 Consultatio Real Estate llevó adelante una exitosa oferta pública de sus acciones, cotizando desde entonces en la Bolsa de Comercio de Buenos Aires bajo el símbolo CTIO.</div><div><strong><br>Equipo</strong></div><div><br>Consultatio Real Estate está liderado por Eduardo F. Costantini, quien junto a un sólido y pujante equipo de profesionales llevan a cabo la realización de los proyectos inmobiliarios de la Compañía.<br><br></div>', '2019-08-17 23:57:55', '0000-00-00 00:00:00', '7SibZH1FGxeFoeAk7HC3d7yqTDWzYXANof4wk6GG.jpeg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('joaquin@tuderpa.com', '$2y$10$YkuVjyOWAoeXai8.aGc6xuPd0h64AVKCHXDt8SEBATShdB1A9IR/m', '2019-09-08 20:09:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `neighborhood_id` int(11) NOT NULL,
  `name` varchar(220) NOT NULL,
  `description` text DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `map` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `schedules` varchar(240) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `places`
--

INSERT INTO `places` (`id`, `neighborhood_id`, `name`, `description`, `address`, `map`, `type`, `schedules`, `updated_at`, `created_at`) VALUES
(1, 1, 'Cornelio Saavedra', '<div>Empanadas de carne souffle; Ñoquis de Rúcula y albahaca al graten; Mousse de chocolate con frutos rojos.</div><div><br></div>', 'Besares 3599', '-34.549785, -58.482489', 'Comidas y bebidas', NULL, '2019-07-28 22:30:46', '2019-07-28 22:30:46'),
(2, 1, 'Halee Watts', '<div>Eum architecto in co.</div>', 'Adipisci do sit nesc', 'Velit nihil quidem i', 'Sequi voluptates mol', 'Officia suscipit dol', '2019-07-29 03:11:02', '2019-07-29 03:11:02'),
(3, 1, 'Hoyt Parker', '<div>Vel sint, dignissimo.</div>', 'Quisquam enim unde a', 'Nisi incididunt veli', 'Autem maxime harum q', 'Non deleniti enim eu', '2019-07-29 03:23:25', '2019-07-29 03:23:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `title` varchar(240) NOT NULL,
  `address_line_1` varchar(240) DEFAULT NULL,
  `meters_total` int(4) DEFAULT NULL,
  `meters_cover` int(4) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `hash` varchar(240) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `neighborhood` varchar(240) DEFAULT NULL,
  `city` varchar(240) DEFAULT NULL,
  `state` varchar(240) DEFAULT NULL,
  `latitude` varchar(240) DEFAULT NULL,
  `longitude` varchar(240) DEFAULT NULL,
  `type` enum('sell','rent') NOT NULL,
  `property_type` enum('PH','House','Cohouse','Coapartament','Garage','Comercial','Office','Apartament','Loft','') NOT NULL,
  `disposition` enum('front','back','side','internal') NOT NULL,
  `orientation` enum('north','south','west','east') NOT NULL,
  `bathrooms` int(2) NOT NULL,
  `rooms` int(2) NOT NULL,
  `bedrooms` int(2) NOT NULL,
  `floors` int(2) NOT NULL,
  `items` text DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `age` int(10) NOT NULL,
  `places` text DEFAULT NULL,
  `currency` varchar(15) DEFAULT NULL,
  `pay_expenses` varchar(10) DEFAULT NULL,
  `expenses` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `properties`
--

INSERT INTO `properties` (`id`, `title`, `address_line_1`, `meters_total`, `meters_cover`, `price`, `user_id`, `details`, `hash`, `updated_at`, `created_at`, `neighborhood`, `city`, `state`, `latitude`, `longitude`, `type`, `property_type`, `disposition`, `orientation`, `bathrooms`, `rooms`, `bedrooms`, `floors`, `items`, `published`, `age`, `places`, `currency`, `pay_expenses`, `expenses`) VALUES
(12, 'Labore ipsam laboris', '51 South New Freeway', 11, 36, 613, NULL, NULL, NULL, '2019-07-29 03:24:39', '2019-07-28 00:03:09', 'Duis nemo nostrud la', 'Dolor voluptates eli', 'Omnis quam reiciendi', NULL, NULL, 'sell', 'Apartament', 'back', 'east', 1, 1, 1, 1, '[]', 0, 95, '[]', 'USD', '0', 0),
(13, 'Repellendus Et aut', '64 West First Drive', 765, 357, 889, NULL, NULL, NULL, '2019-07-29 03:31:36', '2019-07-29 03:31:36', 'Qui dolores reiciend', 'Deserunt exercitatio', 'Modi quia blanditiis', NULL, NULL, 'sell', 'Cohouse', 'internal', 'east', 8, 8, 22, 36, '[]', 0, 234, '[]', '$', '0', 0),
(14, 'Fuga Dolore sunt in', '831 Green Milton Extension', 546, 436, 768, NULL, NULL, NULL, '2019-07-29 03:35:12', '2019-07-29 03:34:48', 'Laboris itaque quibu', 'Optio obcaecati off', 'Ab rerum voluptas od', NULL, NULL, 'sell', 'Comercial', 'back', 'north', 1, 1, 1, 1, '[]', 0, 280, '[]', 'USD', '0', 0),
(15, 'Placeat sit labore', '22 West Oak Drive', 785, 813, 297, NULL, NULL, NULL, '2019-07-29 03:37:07', '2019-07-29 03:37:07', 'Voluptatem aut est v', 'Facere pariatur Qui', 'Voluptatem earum mi', NULL, NULL, 'rent', 'PH', 'back', 'east', 9, 18, 25, 39, '[]', 0, 178, '[]', 'USD', '0', 0),
(16, 'Voluptatem iure ut', '959 South Cowley Boulevard', 475, 650, 612, NULL, NULL, NULL, '2019-08-14 04:53:51', '2019-08-14 04:53:32', 'Ut ea iste iusto ame', 'Id qui perspiciatis', 'Quas magnam omnis mo', NULL, NULL, 'sell', 'Cohouse', 'back', 'east', 1, 1, 1, 1, '[\"gym\",\"sauna\"]', 0, 60, '[\"service_dependency\",\"parrilla\",\"terrace\"]', 'USD', 'true', 123);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Joaquín Di Toma', 'joaquin@tuderpa.com', NULL, '$2y$10$79gYHUC2HO39meiYo22Sg.RX5q.1Y../f4mkTeV2tYJRaRbdjfoby', 'Ts2SUXqrLRbA3agIEocs82N1Wa7b10g6KWf3fK5VMga8Ez3O2P3DjposvRho', '2019-07-16 05:33:01', '2019-07-16 16:33:10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `action_events`
--
ALTER TABLE `action_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_events_actionable_type_actionable_id_index` (`actionable_type`,`actionable_id`),
  ADD KEY `action_events_batch_id_model_type_model_id_index` (`batch_id`,`model_type`,`model_id`),
  ADD KEY `action_events_user_id_index` (`user_id`);

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD KEY `id` (`id`),
  ADD KEY `contry_citi` (`country_id`);

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `el_albums`
--
ALTER TABLE `el_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `el_photos`
--
ALTER TABLE `el_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `el_photos_album_id_index` (`album_id`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_locale_unique` (`slug`,`locale`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `neighborhoods`
--
ALTER TABLE `neighborhoods`
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `places`
--
ALTER TABLE `places`
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `properties`
--
ALTER TABLE `properties`
  ADD KEY `id` (`id`);

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
-- AUTO_INCREMENT de la tabla `action_events`
--
ALTER TABLE `action_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `el_albums`
--
ALTER TABLE `el_albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `el_photos`
--
ALTER TABLE `el_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `neighborhoods`
--
ALTER TABLE `neighborhoods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `contry_citi` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `el_photos`
--
ALTER TABLE `el_photos`
  ADD CONSTRAINT `el_photos_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `el_albums` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
