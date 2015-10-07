-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-08-2015 a las 05:46:58
-- Versión del servidor: 5.6.25
-- Versión de PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `plumadeasisdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuchillos`
--

CREATE TABLE IF NOT EXISTS `cuchillos` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Hoja` varchar(50) NOT NULL,
  `Anio` int(4) DEFAULT NULL,
  `picMin` varchar(300) NOT NULL,
  `picMax` varchar(200) DEFAULT NULL,
  `Info` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cuchillos`
--

INSERT INTO `cuchillos` (`Id`, `Nombre`, `Hoja`, `Anio`, `picMin`, `picMax`, `Info`) VALUES
(1, 'Pampeano', 'Arbolito', 1945, 'arbolitoMin.jpg', 'arbolitoMax.jpg', 'Cuchillo de hoja arbolito, muy lindo'),
(2, 'Great Bowie', 'Schneider', 2001, 'greatBowieMin.jpg', 'greatBowieMax.jpg', 'Cuchillo tipo Bowie Norteamericano, muy lindo'),
(3, 'Cuchi', 'Arbolito', 1810, 'arbolitoMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(4, 'Cuchi', 'Arbolito', 1810, 'greatBowieMin.jpg', 'greatBowieMin.jpg', 'Un arbolito'),
(5, 'Cuchi', 'Arbolito', 1810, 'arbolitoMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(6, 'Cuchi', 'Arbolito', 1810, 'greatBowieMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(7, 'Cuchi', 'Arbolito', 1810, 'arbolitoMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(8, 'Cuchi', 'Arbolito', 1810, 'greatBowieMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(9, 'Cuchi', 'Arbolito', 1810, 'arbolitoMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(10, 'Cuchi', 'Arbolito', 1810, 'greatBowieMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(11, 'Cuchi', 'Arbolito', 1810, 'arbolitoMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(12, 'Cuchi', 'Arbolito', 1810, 'greatBowieMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(13, 'Cuchi', 'Arbolito', 1810, 'greatBowieMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(14, 'Cuchi', 'Arbolito', 1810, 'arbolitoMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(15, 'Cuchi', 'Arbolito', 1810, 'arbolitoMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(16, 'Cuchi', 'Arbolito', 1810, 'arbolitoMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(17, 'Cuchi', 'Arbolito', 1810, 'greatBowieMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(18, 'Cuchi', 'Arbolito', 1810, 'greatBowieMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(19, 'Cuchi', 'Arbolito', 1810, 'greatBowieMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(20, 'Cuchi', 'Arbolito', 1810, 'arbolitoMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(21, 'Cuchi', 'Arbolito', 1810, 'arbolitoMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(22, 'Cuchi', 'Arbolito', 1810, 'arbolitoMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(23, 'Cuchi', 'Arbolito', 1810, 'greatBowieMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(24, 'Cuchi', 'Arbolito', 1810, 'arbolitoMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(25, 'Cuchi', 'Arbolito', 1810, 'arbolitoMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(26, 'Cuchi', 'Arbolito', 1810, 'arbolitoMin.jpg', 'arbolitoMax.jpg', 'Un arbolito'),
(27, 'Cuchi', 'Arbolito', 1810, 'arbolitoMin.jpg', 'arbolitoMax.jpg', 'Un arbolito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lamparas`
--

CREATE TABLE IF NOT EXISTS `lamparas` (
  `la_Id` int(11) NOT NULL,
  `la_Nombre` varchar(50) NOT NULL,
  `la_Antigua` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lamparas`
--

INSERT INTO `lamparas` (`la_Id`, `la_Nombre`, `la_Antigua`) VALUES
(0, 'SuperLamp', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testtable`
--

CREATE TABLE IF NOT EXISTS `testtable` (
  `test_Id` int(11) NOT NULL,
  `test_Nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `testtable`
--

INSERT INTO `testtable` (`test_Id`, `test_Nombre`) VALUES
(1, 'Franco'),
(2, 'Antonio');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuchillos`
--
ALTER TABLE `cuchillos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `lamparas`
--
ALTER TABLE `lamparas`
  ADD PRIMARY KEY (`la_Id`);

--
-- Indices de la tabla `testtable`
--
ALTER TABLE `testtable`
  ADD PRIMARY KEY (`test_Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuchillos`
--
ALTER TABLE `cuchillos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `testtable`
--
ALTER TABLE `testtable`
  MODIFY `test_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
