-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-10-2015 a las 04:36:10
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cuchillos`
--

INSERT INTO `cuchillos` (`Id`, `Nombre`, `Hoja`, `Anio`, `picMin`, `picMax`, `Info`) VALUES
(3, 'Hueso', 'Seigen', NULL, 'huesoSeigen1A.jpg', 'huesoSeigen1A.jpg', 'Hoja de acero inox., cabo de hueso con terminales de alpaca, vaina de cuero'),
(7, 'Ébano', 'Seigen', NULL, 'juegoEbanoSeigen1A.jpg', 'juegoEbanoSeigen1A.jpg', 'Hoja y tenedor inox., cabo de ébano galloneado a mano y virola de plata'),
(8, 'Ébano', 'Seigen', NULL, 'juegoEbanoSeigen1B.jpg', 'juegoEbanoSeigen1B.jpg', 'Hoja y tenedor inox., cabo de ébano galloneado a mano y virola de plata'),
(9, 'Ébano', 'Seigen', NULL, 'juegoEbanoSeigen1C.jpg', 'juegoEbanoSeigen1C.jpg', 'Hoja y tenedor inox., cabo de ébano galloneado a mano y virola de plata'),
(10, 'Hueso', 'Ñandú', NULL, 'juegoHuesoÑandu1A.jpg', 'juegoHuesoÑandu1A.jpg', 'Hoja y tenedor inox., canilla de ñandú y alpaca.'),
(11, 'Hueso', 'Ñandú', NULL, 'juegoHuesoÑandu1B.jpg', 'juegoHuesoÑandu1B.jpg', 'Hoja y tenedor inox., canilla de ñandú y alpaca.'),
(12, 'Hueso', 'Ñandú', NULL, 'juegoHuesoÑandu1C.jpg', 'juegoHuesoÑandu1C.jpg', 'Hoja y tenedor inox., canilla de ñandú y alpaca.'),
(13, 'Juego de Ñandú', 'Ñandú', NULL, 'juegoHuesoÑandu2A.jpg', 'juegoHuesoÑandu2A.jpg', 'Hoja y tenedor inox., canilla de ñandú y alpaca.'),
(14, 'Juego de Ñandú', 'Ñandú', NULL, 'juegoHuesoÑandu2B.jpg', 'juegoHuesoÑandu2B.jpg', 'Hoja y tenedor inox., canilla de ñandú y alpaca.'),
(15, 'Juego de Ñandú', 'Ñandú', NULL, 'juegoHuesoÑandu2C.jpg', 'juegoHuesoÑandu2C.jpg', 'Hoja y tenedor inox., canilla de ñandú y alpaca.'),
(16, 'Juego de Ñandú', 'Ñandú', NULL, 'juegoHuesoÑandu2D.jpg', 'juegoHuesoÑandu2D.jpg', 'Hoja y tenedor inox., canilla de ñandú y alpaca.'),
(17, 'Juego de Ñandú', 'Ñandú', NULL, 'juegoHuesoÑandu2E.jpg', 'juegoHuesoÑandu2E.jpg', 'Hoja y tenedor inox., canilla de ñandú y alpaca.'),
(18, 'Juego en Hueso de Vaca', 'Vögel', NULL, 'juegoHuesoVogel1A.jpg', 'juegoHuesoVogel1A.jpg', 'Hoja y tenedor inox., cabo de hueso de vaca y terminales de alpaca.'),
(19, 'Juego en Hueso de Vaca', 'Vögel', NULL, 'juegoHuesoVogel1B.jpg', 'juegoHuesoVogel1B.jpg', 'Hoja y tenedor inox., cabo de hueso de vaca y terminales de alpaca.'),
(20, 'Juego en Guayubira', 'Seigen', NULL, 'juegoGuayubiraSeigen1A.jpg', 'juegoGuayubiraSeigen1A.jpg', 'Hoja y tenedor inox., cabo de guayubira y terminales de alpaca.'),
(21, 'Juego en Guayubira', 'Seigen', NULL, 'juegoGuayubiraSeigen1B.jpg', 'juegoGuayubiraSeigen1B.jpg', 'Hoja y tenedor inox., cabo de guayubira y terminales de alpaca.'),
(22, 'Juego en Guayubira', 'Seigen', NULL, 'juegoGuayubiraSeigen1C.jpg', 'juegoGuayubiraSeigen1C.jpg', 'Hoja y tenedor inox., cabo de guayubira y terminales de alpaca.'),
(23, 'Juego en Guayubira', 'Seigen', NULL, 'juegoGuayubiraSeigen1D.jpg', 'juegoGuayubiraSeigen1D.jpg', 'Hoja y tenedor inox., cabo de guayubira y terminales de alpaca.'),
(24, 'Juego en Guayubira', 'Seigen', NULL, 'juegoGuayubiraSeigen1E.jpg', 'juegoGuayubiraSeigen1E.jpg', 'Hoja y tenedor inox., cabo de guayubira y terminales de alpaca.'),
(25, 'Juego en Guayubira', 'Seigen', NULL, 'juegoGuayubiraSeigen1F.jpg', 'juegoGuayubiraSeigen1F.jpg', 'Hoja y tenedor inox., cabo de guayubira y terminales de alpaca.'),
(26, 'Juego de Trinchar', 'Seigen', NULL, 'juegoTrincharSeigen1A.jpg', 'juegoTrincharSeigen1A.jpg', 'Hoja y tenedor inox., chaira de acero plata, cabo de itín y terminales de alpaca.'),
(27, 'Juego de Trinchar', 'Seigen', NULL, 'juegoTrincharSeigen1B.jpg', 'juegoTrincharSeigen1B.jpg', 'Hoja y tenedor inox., chaira de acero plata, cabo de itín y terminales de alpaca.'),
(28, 'Juego de Trinchar', 'Seigen', NULL, 'juegoTrincharSeigen1C.jpg', 'juegoTrincharSeigen1C.jpg', 'Hoja y tenedor inox., chaira de acero plata, cabo de itín y terminales de alpaca.'),
(29, 'Juego de Trinchar', 'Seigen', NULL, 'juegoTrincharSeigen1D.jpg', 'juegoTrincharSeigen1D.jpg', 'Hoja y tenedor inox., chaira de acero plata, cabo de itín y terminales de alpaca.'),
(30, 'Plata', 'H. Boker & Co. (Arbolito)', 1900, 'plataBoker1A.jpg', 'plataBoker1A.jpg', 'Cuchillo de plata cincelado con hoja antigua.'),
(31, 'Plata', 'H. Boker & Co. (Arbolito)', 1900, 'plataBoker1B.jpg', 'plataBoker1B.jpg', 'Cuchillo de plata cincelado con hoja antigua.'),
(32, 'Plata', 'H. Boker & Co. (Arbolito)', 1900, 'plataBoker1C.jpg', 'plataBoker1C.jpg', 'Cuchillo de plata cincelado con hoja antigua.'),
(33, 'Plata', 'H. Boker & Co. (Arbolito)', 1900, 'plataBoker2A.jpg', 'plataBoker2A.jpg', 'Cuchillo de plata cincelado con hoja antigua.'),
(34, 'Plata', 'H. Boker & Co. (Arbolito)', 1900, 'plataBoker2B.jpg', 'plataBoker2B.jpg', 'Cuchillo de plata cincelado con hoja antigua.'),
(35, 'Plata', 'H. Boker & Co. (Arbolito)', 1900, 'plataBoker2C.jpg', 'plataBoker2C.jpg', 'Cuchillo de plata cincelado con hoja antigua.'),
(36, 'Plata', 'H. Boker & Co. (Arbolito)', 1900, 'plataBoker3A.jpg', 'plataBoker3A.jpg', 'Cuchillo de plata cincelado con hoja antigua.'),
(37, 'Plata', 'H. Boker & Co. (Arbolito)', 1900, 'plataBoker3B.jpg', 'plataBoker3B.jpg', 'Cuchillo de plata cincelado con hoja antigua.'),
(38, 'Plata', 'H. Boker & Co. (Arbolito)', 1900, 'plataBoker3C.jpg', 'plataBoker3C.jpg', 'Cuchillo de plata cincelado con hoja antigua.'),
(39, 'Plata', 'H. Boker & Co. (Arbolito)', 1900, 'plataBoker4A.jpg', 'plataBoker4A.jpg', 'Cuchillo de plata cincelado con hoja antigua.'),
(40, 'Plata', 'H. Boker & Co. (Arbolito)', 1900, 'plataBoker4B.jpg', 'plataBoker4B.jpg', 'Cuchillo de plata cincelado con hoja antigua.'),
(41, 'Picasso', 'Argentina', NULL, 'plataCueroRodger1A.jpg', 'plataCueroRodger1A.jpg', 'Cuchillo de plata y cuero con hoja oxidable.'),
(42, 'Picasso', 'Argentina', NULL, 'plataCueroRodger1B.jpg', 'plataCueroRodger1B.jpg', 'Cuchillo de plata y cuero con hoja oxidable.'),
(43, 'Picasso', 'Argentina', NULL, 'plataCueroRodger1C.jpg', 'plataCueroRodger1C.jpg', 'Cuchillo de plata y cuero con hoja oxidable.'),
(44, 'Plata', 'J. Rodgers', 1837, 'plataMarfilRodger1A.jpg', 'plataMarfilRodger1A.jpg', 'Cuchillo de plata de hoja oxidable con marfil reciclado y plata.'),
(45, 'Plata', 'J. Rodgers', 1837, 'plataMarfilRodger1B.jpg', 'plataMarfilRodger1B.jpg', 'Cuchillo de plata de hoja oxidable con marfil reciclado y plata.'),
(46, 'Plata', 'J. Rodgers', 1837, 'plataMarfilRodger1C.jpg', 'plataMarfilRodger1C.jpg', 'Cuchillo de plata de hoja oxidable con marfil reciclado y plata.'),
(47, 'Plata', 'J. Rodgers', 1837, 'plataMarfilRodger1D.jpg', 'plataMarfilRodger1D.jpg', 'Cuchillo de plata de hoja oxidable con marfil reciclado y plata.'),
(48, 'Plata', 'J. Rodgers', 1837, 'plataMarfilRodger1E.jpg', 'plataMarfilRodger1E.jpg', 'Cuchillo de plata de hoja oxidable con marfil reciclado y plata.'),
(49, 'Plata', 'J. Rodgers', 1837, 'plataMarfilRodger2A.jpg', 'plataMarfilRodger2A.jpg', 'Cuchillo de plata de hoja oxidable con marfil reciclado y plata.'),
(50, 'Plata', 'J. Rodgers', 1837, 'plataMarfilRodger2B.jpg', 'plataMarfilRodger2B.jpg', 'Cuchillo de plata de hoja oxidable con marfil reciclado y plata.'),
(51, 'Plata', 'J. Rodgers', 1837, 'plataMarfilRodger2C.jpg', 'plataMarfilRodger2C.jpg', 'Cuchillo de plata de hoja oxidable con marfil reciclado y plata.'),
(52, 'Plata', 'J. Rodgers', 1837, 'plataMarfilRodger3A.jpg', 'plataMarfilRodger3A.jpg', 'Cuchillo de plata de hoja oxidable con marfil reciclado y plata.'),
(53, 'Plata', 'J. Rodgers', 1837, 'plataMarfilRodger3B.jpg', 'plataMarfilRodger3B.jpg', 'Cuchillo de plata de hoja oxidable con marfil reciclado y plata.'),
(54, 'Plata', 'J. Rodgers', 1837, 'plataMarfilRodger3C.jpg', 'plataMarfilRodger3C.jpg', 'Cuchillo de plata de hoja oxidable con marfil reciclado y plata.'),
(55, 'Plata', 'J. Rodgers', 1837, 'plataMarfilRodger3D.jpg', 'plataMarfilRodger3D.jpg', 'Cuchillo de plata de hoja oxidable con marfil reciclado y plata.'),
(56, 'Plata', 'J. Rodgers', 1837, 'plataMarfilRodger3E.jpg', 'plataMarfilRodger3E.jpg', 'Cuchillo de plata de hoja oxidable con marfil reciclado y plata.'),
(57, 'Plata', 'J. Rodgers', 1837, 'plataMarfilRodger3F.jpg', 'plataMarfilRodger3F.jpg', 'Cuchillo de plata de hoja oxidable con marfil reciclado y plata.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuchillos`
--
ALTER TABLE `cuchillos`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuchillos`
--
ALTER TABLE `cuchillos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
