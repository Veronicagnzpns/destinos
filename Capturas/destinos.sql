-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-02-2022 a las 07:30:28
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `destinos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `codUsuario` int(11) NOT NULL,
  `nomUsuario` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apeUsuario` varchar(100) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `tlfUsuario` varchar(9) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `dniUsuario` varchar(9) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `emailUsuario` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ciuUsuario` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `paiUsuario` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`codUsuario`, `nomUsuario`, `apeUsuario`, `tlfUsuario`, `dniUsuario`, `emailUsuario`, `ciuUsuario`, `paiUsuario`) VALUES
(0, 'maria', 'gonzalez domingaz', '78945612', '79120936o', 'jaskdlak@gmail.com', 'zxdgbszfhba', 'ggchxfhgsdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelo`
--

CREATE TABLE `vuelo` (
  `codVuelo` int(11) NOT NULL,
  `nomCompania` varchar(100) NOT NULL,
  `ciudaVuelo` varchar(100) NOT NULL,
  `paisVuelo` varchar(100) NOT NULL,
  `numAsiento` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vuelo`
--

INSERT INTO `vuelo` (`codVuelo`, `nomCompania`, `ciudaVuelo`, `paisVuelo`, `numAsiento`) VALUES
(3, 'rayaner', 'cantabroa', 'julo', '45bhj');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
