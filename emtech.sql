-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2021 a las 03:20:10
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `emtech`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudads`
--

CREATE TABLE `ciudads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identificador` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ciudads`
--

INSERT INTO `ciudads` (`id`, `estado`, `identificador`, `created_at`, `updated_at`) VALUES
(1, 'Aguascalientes', 'AG', '2021-10-20 19:44:04', '2021-10-20 19:44:04'),
(2, 'Baja California', 'BC', '2021-10-20 19:45:24', '2021-10-20 19:45:24'),
(3, 'Baja California Sur', 'BS', '2021-10-20 19:45:41', '2021-10-20 19:45:41'),
(4, 'Campeche', 'CM', '2021-10-20 19:45:54', '2021-10-20 19:45:54'),
(5, 'Chiapas', 'CS', '2021-10-21 01:46:22', '2021-10-21 01:46:22'),
(6, 'Chihuahua', 'CH', '2021-10-21 01:46:22', '2021-10-21 01:46:22'),
(7, 'Ciudad de México', 'CXB', '2021-10-21 01:47:25', '2021-10-21 01:47:25'),
(8, 'Coahuila', 'CO', '2021-10-21 01:47:25', '2021-10-21 01:47:25'),
(9, 'Colima', 'CL', '2021-10-21 01:47:25', '2021-10-21 01:47:25'),
(10, 'Durango', 'DG', '2021-10-21 01:47:25', '2021-10-21 01:47:25'),
(11, 'Guanajuato', 'GT', '2021-10-21 01:47:25', '2021-10-21 01:47:25'),
(12, 'Guerrero', 'GR', '2021-10-21 01:47:25', '2021-10-21 01:47:25'),
(13, 'Hidalgo', 'HG', '2021-10-21 01:49:04', '2021-10-21 01:49:04'),
(14, 'Jalisco', 'JC', '2021-10-21 01:49:17', '2021-10-21 01:49:17'),
(15, 'Estado de México', 'EME', '2021-10-21 01:49:57', '2021-10-21 01:49:57'),
(16, 'Michoacán', 'MI', '2021-10-21 01:49:57', '2021-10-21 01:49:57'),
(17, 'Morelos', 'MO', '2021-10-21 01:49:57', '2021-10-21 01:49:57'),
(18, 'Nayarit', 'NA', '2021-10-21 01:49:57', '2021-10-21 01:49:57'),
(19, 'Nuevo León', 'NL', '2021-10-21 01:49:57', '2021-10-21 01:49:57'),
(20, 'Oaxaca', 'OA', '2021-10-21 01:49:57', '2021-10-21 01:49:57'),
(21, 'Puebla', 'PU', '2021-10-21 01:49:57', '2021-10-21 01:49:57'),
(22, 'Querétaro', 'QT', '2021-10-21 01:49:57', '2021-10-21 01:49:57'),
(23, 'Quintana Roo', 'QR', '2021-10-21 01:49:57', '2021-10-21 01:49:57'),
(24, 'San Luis Potosí', 'SL', '2021-10-21 01:49:57', '2021-10-21 01:49:57'),
(25, 'Sinaloa', 'SI', '2021-10-21 01:49:57', '2021-10-21 01:49:57'),
(26, 'Sonora', 'SO', '2021-10-21 01:49:57', '2021-10-21 01:49:57'),
(27, 'Tabasco', 'TB', '2021-10-21 01:52:46', '2021-10-21 01:52:46'),
(28, 'Tamaulipas', 'TM', '2021-10-21 01:53:01', '2021-10-21 01:53:01'),
(29, 'Tlaxcala', 'TL', '2021-10-21 01:53:21', '2021-10-21 01:53:21'),
(30, 'Veracruz', 'VE', '2021-10-21 01:53:42', '2021-10-21 01:53:42'),
(31, 'Yucatán', 'YU', '2021-10-21 01:54:03', '2021-10-21 01:54:03'),
(32, 'Zacatecas', 'ZA', '2021-10-21 01:54:20', '2021-10-21 01:54:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_20_160557_create_ciudads_table', 1),
(6, '2021_10_20_160724_create_paquetes_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquetes`
--

CREATE TABLE `paquetes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origen_id` bigint(20) UNSIGNED NOT NULL,
  `destino_id` bigint(20) UNSIGNED NOT NULL,
  `email_remitente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `paquetes`
--

INSERT INTO `paquetes` (`id`, `codigo`, `origen_id`, `destino_id`, `email_remitente`, `estado`, `created_at`, `updated_at`) VALUES
(25, 'NA601372MI', 18, 16, 'dieego.meedina@outlook.es', 'En espera', '2021-10-22 05:41:22', '2021-10-22 05:41:22'),
(26, 'BS068157BS', 3, 3, 'dieego.meedina@outlook.es', 'En espera', '2021-10-22 05:51:15', '2021-10-22 05:51:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudads`
--
ALTER TABLE `ciudads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paquetes`
--
ALTER TABLE `paquetes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paquetes_origen_id_index` (`origen_id`),
  ADD KEY `paquetes_destino_id_index` (`destino_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT de la tabla `ciudads`
--
ALTER TABLE `ciudads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `paquetes`
--
ALTER TABLE `paquetes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `paquetes`
--
ALTER TABLE `paquetes`
  ADD CONSTRAINT `paquetes_destino_id_foreign` FOREIGN KEY (`destino_id`) REFERENCES `ciudads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `paquetes_origen_id_foreign` FOREIGN KEY (`origen_id`) REFERENCES `ciudads` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
