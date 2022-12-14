-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2022 a las 18:07:14
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appchat`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `api_key` varchar(100) NOT NULL,
  `level` enum('1','2') NOT NULL DEFAULT '2' COMMENT '1 = ADMIN\r\n2 = CS',
  `limit_device` int(11) NOT NULL,
  `status` enum('active','inactive','expired') NOT NULL,
  `expired` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `api_key`, `level`, `limit_device`, `status`, `expired`) VALUES
(1, 'admin', '$2y$10$Qsx.wDl9L8kgpOtn82q3R.O0ytml2EGHZdcsgtnwqyVqLg4ABDmRq', 'b2d95af932eedb4de92b3496f338aa5f97b36ae0', '1', 1, 'active', NULL),
(2, 'prueba', '$2y$10$rNhoFnESW4LCTADyl61n.OQZ7nvhg5NIK6WbbhhAepxQ6xD4jWY0S', '341a8fbf28fa7a98ca2acce4d2b4d63d', '2', 5, 'active', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `all_contacts`
--

CREATE TABLE `all_contacts` (
  `id` int(11) NOT NULL,
  `sender` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `name` varchar(111) NOT NULL,
  `type` enum('Personal','Group') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `all_contacts`
--

INSERT INTO `all_contacts` (`id`, `sender`, `number`, `name`, `type`) VALUES
(86, '51947262276', '51926072011', 'Marley', 'Personal'),
(87, '51947262276', '51929267892', 'Elmer', 'Personal'),
(88, '51947262276', '51999537908', 'Test', 'Personal'),
(89, '51947262276', '51923127864', 'Rodrigo', 'Personal'),
(90, '51947262276', '51933942570', 'Belina Quispe', 'Personal'),
(91, '51947262276', '51945604087', 'Gian', 'Personal'),
(92, '51947262276', '51973556468', 'Iris Plans', 'Personal'),
(93, '51947262276', '51924212725', 'Plants', 'Personal'),
(94, '51947262276', '56984026478', 'Chile', 'Personal'),
(95, '51947262276', '51930844627', 'Mary', 'Personal'),
(96, '51947262276', '51948800246', 'Fharid', 'Personal'),
(97, '51947262276', '50662256342', 'Jose', 'Personal'),
(98, '51947262276', '51981834212', 'Gabri', 'Personal'),
(99, '51947262276', '51967737931', 'Plan', 'Personal'),
(100, '51947262276', '51963806259', 'Megan Socos', 'Personal'),
(101, '51947262276', '51999210342', 'Lina Planta Sanramon', 'Personal'),
(102, '51947262276', '51977789095', 'Hans', 'Personal'),
(103, '51947262276', '51970834697', 'Luz', 'Personal'),
(104, '51947262276', '51933135079', 'Detector De Meta', 'Personal'),
(105, '51947262276', '51936085828', 'César', 'Personal'),
(106, '51947262276', '51991798245', 'Gloria Maria', 'Personal'),
(107, '51947262276', '51992778328', 'Elizabeth Plqts', 'Personal'),
(108, '51947262276', '8801537414408', 'China', 'Personal'),
(109, '51947262276', '51965792363', 'Marcareando', 'Personal'),
(110, '51947262276', '51939374859', 'Liliana', 'Personal'),
(111, '51947262276', '917889740332', 'PipQuantum', 'Personal'),
(112, '51947262276', '51984372078', 'System WebPro', 'Personal'),
(113, '51947262276', '51972244628', 'Maite', 'Personal'),
(114, '51947262276', '51924745100', 'Angel Rojas', 'Personal'),
(115, '51947262276', '51955092591', 'Example', 'Personal'),
(116, '51947262276', '573007182548', 'Xp', 'Personal'),
(117, '51947262276', '51982765436', 'SISPROTEC GROUP', 'Personal'),
(118, '51947262276', '34647948394', 'Lourdes', 'Personal'),
(119, '51947262276', '393884552968', 'Alex', 'Personal'),
(120, '51947262276', '51973030074', 'Rosy', 'Personal'),
(121, '51947262276', '51970037666', 'Bio Planta', 'Personal'),
(122, '51947262276', '51944071574', 'Carlos IDAT', 'Personal'),
(123, '51947262276', '51964981217', 'Deyvid', 'Personal'),
(124, '51947262276', '923044809599', 'Faisal', 'Personal'),
(125, '51947262276', '51948739768', 'Llamar', 'Personal'),
(126, '51947262276', '51960692372', 'Jose', 'Personal'),
(127, '51947262276', '50687021496', 'Moufid', 'Personal'),
(128, '51947262276', '51941134844', 'Muises', 'Personal'),
(129, '51947262276', '51954716336', 'Papá 3', 'Personal'),
(130, '51947262276', '51957409165', 'Clínica', 'Personal'),
(131, '51947262276', '919723600218', 'SaasMonks', 'Personal'),
(132, '51947262276', '51900607349', 'Captus', 'Personal'),
(133, '51947262276', '5215554332211', 'Miguel', 'Personal'),
(134, '51947262276', '51956326732', 'Lala', 'Personal'),
(135, '51947262276', '51922861385', 'Betzabet', 'Personal'),
(136, '51947262276', '51925584192', 'Denniz Carolina', 'Personal'),
(137, '51947262276', '51974706965', 'Bussines Club', 'Personal'),
(138, '51947262276', '51955372976', 'Desconocido', 'Personal'),
(139, '51947262276', '51961228487', 'Planta Chorrillos', 'Personal'),
(140, '51947262276', '919033465616', 'Doctor Isha', 'Personal'),
(141, '51947262276', '51995099522', 'Shantall', 'Personal'),
(142, '51947262276', '51993690063', 'Duramax', 'Personal'),
(143, '51947262276', '51985820957', 'Sábado planta', 'Personal'),
(144, '51947262276', '51964542716', 'Planta', 'Personal'),
(145, '51947262276', '51948545559', 'Suculenta Vitarte', 'Personal'),
(146, '51947262276', '51941481995', 'Melisa', 'Personal'),
(147, '51947262276', '51997106802', 'May Fresas', 'Personal'),
(148, '51947262276', '51965706882', 'Arlin', 'Personal'),
(149, '51947262276', '14314105426', 'Marlon', 'Personal'),
(150, '51947262276', '51935787574', 'Neyita', 'Personal'),
(151, '51947262276', '923105243683', 'Xp', 'Personal'),
(152, '51947262276', '51942472053', 'Raul', 'Personal'),
(153, '51947262276', '51970111419', 'Elizabeth', 'Personal'),
(154, '51947262276', '5215512148936', 'Jorge Enrique Zepahua Morales', 'Personal'),
(155, '51947262276', '51996924080', 'Adriel Paraiso De Eva', 'Personal'),
(156, '51947262276', '51992742639', 'Matico', 'Personal'),
(157, '51947262276', '51992486260', 'Melania Plant', 'Personal'),
(158, '51947262276', '51913847343', 'Samuel', 'Personal'),
(159, '51947262276', '51958798475', 'Julio', 'Personal'),
(160, '51947262276', '51981467062', 'César', 'Personal'),
(161, '51947262276', '51975827104', '975 827 104', 'Personal'),
(162, '51947262276', '84932174460', 'Wazaper', 'Personal'),
(163, '51947262276', '51967955621', 'Wilver', 'Personal'),
(164, '51947262276', '51934432868', 'Isaias1', 'Personal'),
(165, '51947262276', '51974730166', 'Jahaira', 'Personal'),
(166, '51947262276', '51981295927', 'Omar', 'Personal'),
(167, '51947262276', '5491158664047', 'Adriel', 'Personal'),
(168, '51947262276', '51991775019', 'María Faver', 'Personal'),
(169, '51947262276', '50498050776', 'Pana', 'Personal'),
(170, '51947262276', '51982802583', 'Tex', 'Personal'),
(171, '51947262276', '51924827537', 'Karina', 'Personal'),
(172, '51947262276', '50761658687', 'Pasarela Global', 'Personal'),
(173, '51947262276', '51926809055', 'Sofonias', 'Personal'),
(174, '51947262276', '51935398702', 'Tierra José', 'Personal'),
(175, '51947262276', '51987060680', 'Dante', 'Personal'),
(176, '51947262276', '51940689995', 'Pimpart Sac', 'Personal'),
(177, '51947262276', '51937197814', 'Yasmani Job Guillén Loza', 'Personal'),
(178, '51947262276', '51947356921', 'VitalMax', 'Personal'),
(179, '51947262276', '51950630106', 'Post', 'Personal'),
(180, '51947262276', '51945750926', 'Keyla', 'Personal'),
(181, '51947262276', '51997651226', 'Carlos Cuentas Pr', 'Personal'),
(182, '51947262276', '51961702384', 'Antonia', 'Personal'),
(183, '51947262276', '51969305776', 'Angel Quispe', 'Personal'),
(184, '51947262276', '51982798281', 'Escaneo', 'Personal'),
(185, '51947262276', '593997418430', 'Aaa', 'Personal'),
(186, '51947262276', '51983275472', 'Estefany', 'Personal'),
(187, '51947262276', '2347033945447', 'Bitcoins', 'Personal'),
(188, '51947262276', '51955020349', 'Gym', 'Personal'),
(189, '51947262276', '51953424454', 'Joselin', 'Personal'),
(190, '51947262276', '51997616017', 'Dormilona', 'Personal'),
(191, '51947262276', '917698077233', 'Mitesh Ramani', 'Personal'),
(192, '51947262276', '51936750961', 'Idat', 'Personal'),
(193, '51947262276', '51947579787', 'Profesora', 'Personal'),
(194, '51947262276', '51993464652', 'Mi Banco Rosa Cueva', 'Personal'),
(195, '51947262276', '5524988198259', 'Mercado Pago', 'Personal'),
(196, '51947262276', '923123345961', 'Zain', 'Personal'),
(197, '51947262276', '573232254785', 'José Daniel', 'Personal'),
(198, '51947262276', '51953669992', 'Erwin', 'Personal'),
(199, '51947262276', '51978393750', 'Inter', 'Personal'),
(200, '51947262276', '51996900748', 'Sr Miguel Planta', 'Personal'),
(201, '51947262276', '51975662737', 'Zelo', 'Personal'),
(202, '51947262276', '51947262276', 'Lot Quispe', 'Personal'),
(203, '51947262276', '59167463582', 'Grover', 'Personal'),
(204, '51947262276', '59172868358', 'Abraham', 'Personal'),
(205, '51947262276', '51944112984', 'Cristian', 'Personal'),
(206, '51947262276', '51980625115', 'Kenya', 'Personal'),
(207, '51947262276', '51934563874', 'Test', 'Personal'),
(208, '51947262276', '51989591901', 'Sandra', 'Personal'),
(209, '51947262276', '34633640513', 'Luis Español', 'Personal'),
(210, '51947262276', '51957031951', 'Bugambilia', 'Personal'),
(211, '51947262276', '51991121064', 'Daty', 'Personal'),
(212, '51947262276', '51965234718', 'Dental Guerreros', 'Personal'),
(213, '51947262276', '5492657698294', 'Argentina', 'Personal'),
(214, '51947262276', '51992812676', 'Dormido', 'Personal'),
(215, '51947262276', '51988011213', 'Mireya', 'Personal'),
(216, '51947262276', '213659616591', 'TakiART', 'Personal'),
(217, '51947262276', '51981214025', 'Logo Chang', 'Personal'),
(218, '51947262276', '51996386661', 'Vecina', 'Personal'),
(219, '51947262276', '51910664850', 'Antony Internet', 'Personal'),
(220, '51947262276', '923493614440', 'junaid iqbal', 'Personal'),
(221, '51947262276', '51921819406', 'PitMart logotipo', 'Personal'),
(222, '51947262276', '51998690783', 'Edwin Wix', 'Personal'),
(223, '51947262276', '51923224749', 'Alfonso', 'Personal'),
(224, '51947262276', '51901458692', 'Orminda Quispe Llacsa', 'Personal'),
(225, '51947262276', '94773673917', 'Texty', 'Personal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autoreply`
--

CREATE TABLE `autoreply` (
  `id` int(11) NOT NULL,
  `type` enum('Text','Text & Media','Quick Reply Button','Url & Call Button','List Button') NOT NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `media` text DEFAULT NULL,
  `btn1` varchar(255) NOT NULL,
  `btn2` varchar(255) NOT NULL,
  `btn3` varchar(255) NOT NULL,
  `btnid1` varchar(255) NOT NULL,
  `btnid2` varchar(255) NOT NULL,
  `btnid3` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `nomor` varchar(15) NOT NULL DEFAULT '0',
  `make_by` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `autoreply`
--

INSERT INTO `autoreply` (`id`, `type`, `keyword`, `response`, `media`, `btn1`, `btn2`, `btn3`, `btnid1`, `btnid2`, `btnid3`, `footer`, `nomor`, `make_by`) VALUES
(10, 'Text & Media', '/catalogo', 'Revise nuestro catalogo de nuestras plantas ', 'http://localhost/appchat/app/storage/c7803904c2ee998609d1587e0f4ffc8c.pdf', '', '', '', '', '', '', '', '51947262276', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blast`
--

CREATE TABLE `blast` (
  `id` int(11) NOT NULL,
  `sender` varchar(15) NOT NULL,
  `type` enum('Text','Text & Media','Quick Reply Button','Url & Call Button','List Button') NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `pesan` longtext NOT NULL,
  `media` varchar(255) NOT NULL,
  `btn1` varchar(255) NOT NULL,
  `btn2` varchar(255) NOT NULL,
  `btn3` varchar(255) NOT NULL,
  `btnid1` varchar(255) NOT NULL,
  `btnid2` varchar(255) NOT NULL,
  `btnid3` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `make_by` int(11) NOT NULL,
  `status` enum('pending','terkirim','gagal') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `blast`
--

INSERT INTO `blast` (`id`, `sender`, `type`, `tujuan`, `pesan`, `media`, `btn1`, `btn2`, `btn3`, `btnid1`, `btnid2`, `btnid3`, `footer`, `make_by`, `status`) VALUES
(12, '51947262276', 'Text & Media', '51984372078', 'Hola prueba', 'http://localhost/appchat/app/storage/c7803904c2ee998609d1587e0f4ffc8c.pdf', '', '', '', '', '', '', '', 1, 'terkirim');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `broadcast`
--

CREATE TABLE `broadcast` (
  `id` int(11) NOT NULL,
  `pesan` longtext NOT NULL,
  `media` varchar(255) NOT NULL,
  `make_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `sender` varchar(111) NOT NULL,
  `number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('Personal','Group','','') NOT NULL,
  `make_by` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `device`
--

CREATE TABLE `device` (
  `id` int(11) NOT NULL,
  `pemilik` varchar(111) NOT NULL,
  `nomor` varchar(14) NOT NULL,
  `link_webhook` varchar(100) NOT NULL,
  `chunk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `device`
--

INSERT INTO `device` (`id`, `pemilik`, `nomor`, `link_webhook`, `chunk`) VALUES
(6, '1', '51947262276', '', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomor`
--

CREATE TABLE `nomor` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `label` varchar(225) NOT NULL,
  `make_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `nomor`
--

INSERT INTO `nomor` (`id`, `nama`, `nomor`, `label`, `make_by`) VALUES
(2, 'Juan', '51984372078', 'Cliente Vip', '1'),
(3, 'Luis Miguel', '51933942570', 'Trabajo', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `sender` varchar(15) NOT NULL,
  `type` enum('Text','Text & Media','Quick Reply Button','Url & Call Button','List Button') NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `pesan` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `footer` varchar(225) NOT NULL,
  `btn1` varchar(255) NOT NULL,
  `btn2` varchar(255) NOT NULL,
  `btn3` varchar(255) NOT NULL,
  `btnid1` varchar(255) NOT NULL,
  `btnid2` varchar(255) NOT NULL,
  `btnid3` varchar(255) NOT NULL,
  `media` varchar(255) DEFAULT NULL,
  `status` enum('MENUNGGU JADWAL','GAGAL','TERKIRIM') NOT NULL DEFAULT 'MENUNGGU JADWAL',
  `jadwal` datetime NOT NULL,
  `make_by` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receive_chat`
--

CREATE TABLE `receive_chat` (
  `id` int(11) NOT NULL,
  `id_pesan` varchar(200) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `from_me` enum('0','1') NOT NULL DEFAULT '0',
  `nomor_saya` varchar(255) DEFAULT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `device` varchar(50) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `message` longtext CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `media` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `btn1` varchar(255) NOT NULL,
  `btn2` varchar(255) NOT NULL,
  `btn3` varchar(255) NOT NULL,
  `btnid1` varchar(255) NOT NULL,
  `btnid2` varchar(255) NOT NULL,
  `btnid3` varchar(255) NOT NULL,
  `status` enum('Failed','Sent') NOT NULL,
  `type` enum('single','received','api') NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `reports`
--

INSERT INTO `reports` (`id`, `device`, `receiver`, `message`, `media`, `footer`, `btn1`, `btn2`, `btn3`, `btnid1`, `btnid2`, `btnid3`, `status`, `type`, `created_at`) VALUES
(26, '51947262276', '51 984 372 078', 'Prueba', '', '', '', '', '', '', '', '', 'Sent', 'single', '2022-12-12 23:48:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `base_node` varchar(255) NOT NULL,
  `install_in` int(11) NOT NULL COMMENT '1 = HOSTING 2 = LOCAL'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `base_node`, `install_in`) VALUES
(1, 'http://localhost:3000', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `storage`
--

CREATE TABLE `storage` (
  `id` int(11) NOT NULL,
  `namafile` varchar(255) NOT NULL,
  `nama_original` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `storage`
--

INSERT INTO `storage` (`id`, `namafile`, `nama_original`) VALUES
(1, '3aacb19fbd468d02d65fd05df4ddfac7.jpg', 'Apa-itu-HTML.jpg'),
(2, 'd4b61db2b6284bd4b6157c688a4b3799.pdf', '(TAP)-credijunta.pdf'),
(3, '25cf899f9ae3114c806e07031bb82177.png', '12.png'),
(4, 'c7803904c2ee998609d1587e0f4ffc8c.pdf', 'pantas.pdf');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `all_contacts`
--
ALTER TABLE `all_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `autoreply`
--
ALTER TABLE `autoreply`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blast`
--
ALTER TABLE `blast`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `broadcast`
--
ALTER TABLE `broadcast`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nomor`
--
ALTER TABLE `nomor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `receive_chat`
--
ALTER TABLE `receive_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `all_contacts`
--
ALTER TABLE `all_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT de la tabla `autoreply`
--
ALTER TABLE `autoreply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `blast`
--
ALTER TABLE `blast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `broadcast`
--
ALTER TABLE `broadcast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `device`
--
ALTER TABLE `device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `nomor`
--
ALTER TABLE `nomor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `receive_chat`
--
ALTER TABLE `receive_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `storage`
--
ALTER TABLE `storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
