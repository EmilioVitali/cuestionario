-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-03-2019 a las 16:42:21
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cuestionario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(2) NOT NULL,
  `pregunta` varchar(250) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `activo` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `activo`) VALUES
(1, 'Pregunta1', 1),
(2, 'Pregunta2', 0),
(3, 'Pregunta3', 0),
(4, 'Pregunta4', 0),
(5, 'Pregunta5', 0),
(6, 'Pregunta6', 0),
(7, 'Pregunta7', 0),
(8, 'Pregunta8', 0),
(9, 'Pregunta9', 0),
(10, 'Pregunta10', 0),
(11, 'Pregunta11', 0),
(12, 'Pregunta12', 0),
(13, 'Pregunta13', 0),
(14, 'Pregunta14', 0),
(15, 'Pregunta15', 0),
(16, 'Pregunta16', 0),
(17, 'Pregunta17', 0),
(18, 'Pregunta18', 0),
(19, 'Pregunta19', 0),
(20, 'Pregunta20', 0),
(21, 'Pregunta21', 0),
(22, 'Pregunta22', 0),
(23, 'Pregunta23', 0),
(24, 'Pregunta24', 0),
(25, 'Pregunta25', 0),
(26, 'Pregunta26', 0),
(27, 'Pregunta27', 0),
(28, 'Pregunta28', 0),
(29, 'Pregunta29', 0),
(30, 'Pregunta30', 0),
(31, 'Pregunta31', 0),
(32, 'Pregunta32', 0),
(33, 'Pregunta33', 0),
(34, 'Pregunta34', 0),
(35, 'Pregunta35', 0),
(36, 'Pregunta36', 0),
(37, 'Pregunta37', 0),
(38, 'Pregunta38', 0),
(39, 'Pregunta39', 0),
(40, 'Pregunta40', 0),
(41, 'Pregunta41', 0),
(42, 'Pregunta42', 0),
(43, 'Pregunta43', 0),
(44, 'pregunta 44', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `respuesta1` varchar(250) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `respuesta2` varchar(250) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `id_pregunta`, `respuesta1`, `respuesta2`) VALUES
(1, 1, 'Respuesta 1 - 1', 'Respuesta 1 - 2'),
(2, 2, 'Respuesta 2 - 1', 'Respuesta 2 - 2'),
(3, 3, 'Respuesta 3 - 1', 'Respuesta 3 - 2'),
(4, 4, 'Respuesta 4 - 1', 'Respuesta 4 - 2'),
(5, 5, 'Respuesta 5 - 1', 'Respuesta 5 - 2'),
(6, 6, 'Respuesta 6 - 1', 'Respuesta 6 - 2'),
(7, 7, 'Respuesta 7 - 1', 'Respuesta 7 - 2'),
(8, 8, 'Respuesta 8 - 1', 'Respuesta 8 - 2'),
(9, 9, 'Respuesta 9 - 1', 'Respuesta 9 - 2'),
(10, 10, 'Respuesta 10 - 1', 'Respuesta 10 - 2'),
(11, 11, 'Respuesta 11 - 1', 'Respuesta 11 - 2'),
(12, 12, 'Respuesta 12 - 1', 'Respuesta 12 - 2'),
(13, 13, 'Respuesta 13 - 1', 'Respuesta 13 - 2'),
(14, 14, 'Respuesta 14 - 1', 'Respuesta 14 - 2'),
(15, 15, 'Respuesta 15 - 1', 'Respuesta 15 - 2'),
(16, 16, 'Respuesta 16 - 1', 'Respuesta 16 - 2'),
(17, 17, 'Respuesta 17 - 1', 'Respuesta 17 - 2'),
(18, 18, 'Respuesta 18 - 1', 'Respuesta 18 - 2'),
(19, 19, 'Respuesta 19 - 1', 'Respuesta 19 - 2'),
(20, 20, 'Respuesta 20 - 1', 'Respuesta 20 - 2'),
(21, 21, 'Respuesta 21 - 1', 'Respuesta 21 - 2'),
(22, 22, 'Respuesta 22 - 1', 'Respuesta 22 - 2'),
(23, 23, 'Respuesta 23 - 1', 'Respuesta 23 - 2'),
(24, 24, 'Respuesta 24 - 1', 'Respuesta 24 - 2'),
(25, 25, 'Respuesta 25 - 1', 'Respuesta 25 - 2'),
(26, 26, 'Respuesta 26 - 1', 'Respuesta 26 - 2'),
(27, 27, 'Respuesta 27- 1', 'Respuesta 27 - 2'),
(28, 28, 'Respuesta 28 - 1', 'Respuesta 28 - 2'),
(29, 29, 'Respuesta 29 - 1', 'Respuesta 29 - 2'),
(30, 30, 'Respuesta 30 - 1', 'Respuesta 30 - 2'),
(31, 31, 'Respuesta 31 - 1', 'Respuesta 31 - 2'),
(32, 32, 'Respuesta 32 - 1', 'Respuesta 32 - 2'),
(33, 33, 'Respuesta 33 - 1', 'Respuesta 33 - 2'),
(34, 34, 'Respuesta 34 - 1', 'Respuesta 34 - 2'),
(35, 35, 'Respuesta 35 - 1', 'Respuesta 35 - 2'),
(36, 36, 'Respuesta 36 - 1', 'Respuesta 36 - 2'),
(37, 37, 'Respuesta 37 - 1', 'Respuesta 37 - 2'),
(38, 38, 'Respuesta 38 - 1', 'Respuesta 38 - 2'),
(39, 39, 'Respuesta 39 - 1', 'Respuesta 39 - 2'),
(40, 40, 'Respuesta 40 - 1', 'Respuesta 40 - 2'),
(41, 41, 'Respuesta 41 - 1', 'Respuesta 41 - 2'),
(42, 42, 'Respuesta 42 - 1', 'Respuesta 42 - 2'),
(43, 43, 'Respuesta 43 - 1', 'Respuesta 43 - 2'),
(44, 44, 'Respuesta 44-1', 'Respuesta 44-2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `pass` varchar(60) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
