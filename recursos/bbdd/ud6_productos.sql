-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-03-2020 a las 21:28:35
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.1.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ud6_productos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descuentos`
--

CREATE TABLE `descuentos` (
  `id` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `descripcion` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `descuentos`
--

INSERT INTO `descuentos` (`id`, `valor`, `descripcion`) VALUES
(1, 0, '0%'),
(2, 10, '10%'),
(3, 30, '30%'),
(4, 50, '50%'),
(5, 70, '70%'),
(6, 33, '3x2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `Name` char(52) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `Continent` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`Name`, `id`, `Continent`) VALUES
('Afghanistan', 1, 'Asia'),
('Yemen', 2, 'Asia'),
('Saudi Arabia', 3, 'Asia'),
('Iraq', 4, 'Asia'),
('Argentina', 5, 'South America'),
('Australia', 6, 'Oceania'),
('Bangladesh', 7, 'Asia'),
('Belarus', 8, 'Europe'),
('Belgium', 9, 'Europe'),
('India', 10, 'Asia'),
('Brazil', 11, 'South America'),
('Canada', 12, 'North America'),
('Chile', 13, 'South America'),
('North Korea', 14, 'Asia'),
('Colombia', 15, 'South America'),
('Cuba', 16, 'North America'),
('Germany', 17, 'Europe'),
('Ecuador', 18, 'South America'),
('Greece', 19, 'Europe'),
('Spain', 20, 'Europe'),
('France', 21, 'Europe'),
('Guatemala', 22, 'North America'),
('Indonesia', 23, 'Asia'),
('Iran', 24, 'Asia'),
('Italy', 25, 'Europe'),
('Yugoslavia', 26, 'Europe'),
('Cambodia', 27, 'Asia'),
('Hungary', 28, 'Europe'),
('Malaysia', 29, 'Asia'),
('Mexico', 30, 'North America'),
('Myanmar', 31, 'Asia'),
('Netherlands', 32, 'Europe'),
('Nepal', 33, 'Asia'),
('Japan', 34, 'Asia'),
('Pakistan', 35, 'Asia'),
('Peru', 36, 'South America'),
('Philippines', 37, 'Asia'),
('Poland', 38, 'Europe'),
('Thailand', 39, 'Asia'),
('Kazakstan', 40, 'Asia'),
('Romania', 41, 'Europe'),
('Russian Federation', 42, 'Europe'),
('Sri Lanka', 43, 'Asia'),
('Syria', 44, 'Asia'),
('South Korea', 45, 'Asia'),
('Turkey', 46, 'Asia'),
('Taiwan', 47, 'Asia'),
('Ukraine', 48, 'Europe'),
('United Kingdom', 49, 'Europe'),
('United States', 50, 'North America'),
('Uzbekistan', 51, 'Asia'),
('Venezuela', 52, 'South America'),
('Vietnam', 53, 'Asia'),
('China', 54, 'Asia'),
('Czech Republic', 55, 'Europe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(64) NOT NULL,
  `stock` int(11) NOT NULL,
  `fecha_compra` date NOT NULL,
  `color` varchar(32) NOT NULL,
  `made_in` varchar(64) NOT NULL,
  `precio` float NOT NULL,
  `descuento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tallas`
--

CREATE TABLE `tallas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tallas`
--

INSERT INTO `tallas` (`id`, `nombre`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'XL');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_unico` (`nombre`);

--
-- Indices de la tabla `tallas`
--
ALTER TABLE `tallas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tallas`
--
ALTER TABLE `tallas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
