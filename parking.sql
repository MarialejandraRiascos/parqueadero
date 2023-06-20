-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2023 a las 06:31:20
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parking`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id_registro` int(11) NOT NULL,
  `datetime_registro` datetime NOT NULL,
  `lugar_registro` int(11) DEFAULT NULL,
  `id_vehiculos` int(11) DEFAULT NULL,
  `disponibilidad` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id_registro`, `datetime_registro`, `lugar_registro`, `id_vehiculos`, `disponibilidad`) VALUES
(1, '2022-11-09 00:00:00', 1, NULL, 'disponible'),
(2, '2022-11-09 00:00:00', 2, NULL, 'disponible'),
(3, '2022-11-09 00:00:00', 3, NULL, 'disponible'),
(4, '2022-11-09 00:00:00', 4, NULL, 'disponible'),
(5, '2022-11-09 00:00:00', 5, NULL, 'disponible'),
(6, '2022-11-09 00:00:00', 6, NULL, 'disponible'),
(7, '2022-11-09 00:00:00', 7, NULL, 'disponible'),
(8, '2022-11-09 00:00:00', 8, NULL, 'disponible'),
(9, '2022-11-09 00:00:00', 9, NULL, 'disponible'),
(10, '2022-11-09 00:00:00', 10, NULL, 'disponible'),
(11, '2022-11-09 00:00:00', 11, NULL, 'disponible'),
(12, '2022-11-09 00:00:00', 12, NULL, 'disponible'),
(13, '2022-11-09 00:00:00', 13, NULL, 'disponible'),
(14, '2022-11-09 00:00:00', 14, NULL, 'disponible'),
(15, '2022-11-09 00:00:00', 15, NULL, 'disponible'),
(16, '2022-11-09 00:00:00', 16, NULL, 'disponible'),
(17, '2022-11-09 00:00:00', 17, NULL, 'disponible'),
(18, '2022-11-09 00:00:00', 18, NULL, 'disponible'),
(19, '2022-11-09 00:00:00', 19, NULL, 'disponible'),
(20, '2022-11-09 00:00:00', 20, NULL, 'disponible'),
(21, '2022-11-09 00:00:00', 21, NULL, 'disponible'),
(22, '2022-11-09 00:00:00', 22, NULL, 'disponible'),
(23, '2022-11-09 00:00:00', 23, NULL, 'disponible'),
(24, '2022-11-09 00:00:00', 24, NULL, 'disponible'),
(25, '2022-11-09 00:00:00', 25, NULL, 'disponible'),
(26, '2022-11-09 00:00:00', 26, NULL, 'disponible'),
(27, '2022-11-09 00:00:00', 27, NULL, 'disponible'),
(28, '2022-11-09 00:00:00', 28, NULL, 'disponible'),
(29, '2022-11-09 00:00:00', 29, NULL, 'disponible'),
(30, '2022-11-09 00:00:00', 30, NULL, 'disponible'),
(31, '2022-11-09 00:00:00', 31, NULL, 'disponible'),
(32, '2022-11-09 00:00:00', 32, NULL, 'disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida`
--

CREATE TABLE `salida` (
  `id_salida` int(11) NOT NULL,
  `datetime_salida` datetime NOT NULL,
  `id_vehiculos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `validar`
--

CREATE TABLE `validar` (
  `id` int(11) NOT NULL,
  `nombre_validar` varchar(45) NOT NULL,
  `contra_validar` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id_vehiculos` int(11) NOT NULL,
  `tipo_vehiculos` varchar(45) NOT NULL,
  `placa_vehiculos` varchar(45) NOT NULL,
  `nombre_vehiculos` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id_registro`),
  ADD KEY `id_vehiculos` (`id_vehiculos`);

--
-- Indices de la tabla `salida`
--
ALTER TABLE `salida`
  ADD PRIMARY KEY (`id_salida`),
  ADD KEY `id_vehiculos` (`id_vehiculos`);

--
-- Indices de la tabla `validar`
--
ALTER TABLE `validar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id_vehiculos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `salida`
--
ALTER TABLE `salida`
  MODIFY `id_salida` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `validar`
--
ALTER TABLE `validar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id_vehiculos` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `registro_ibfk_1` FOREIGN KEY (`id_vehiculos`) REFERENCES `vehiculos` (`id_vehiculos`);

--
-- Filtros para la tabla `salida`
--
ALTER TABLE `salida`
  ADD CONSTRAINT `salida_ibfk_1` FOREIGN KEY (`id_vehiculos`) REFERENCES `vehiculos` (`id_vehiculos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
