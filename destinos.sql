-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-03-2022 a las 02:35:12
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
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `codReserva` int(11) NOT NULL,
  `codUsuario` int(100) NOT NULL,
  `codVuelo` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`codReserva`, `codUsuario`, `codVuelo`) VALUES
(31, 25, 11),
(32, 26, 12),
(33, 27, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `codUsuario` int(11) NOT NULL,
  `nomUsuario` varchar(50) NOT NULL,
  `apeUsuario` varchar(100) NOT NULL,
  `tlfUsuario` varchar(9) NOT NULL,
  `dniUsuario` varchar(9) NOT NULL,
  `emailUsuario` varchar(100) NOT NULL,
  `ciuUsuario` varchar(100) NOT NULL,
  `paiUsuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`codUsuario`, `nomUsuario`, `apeUsuario`, `tlfUsuario`, `dniUsuario`, `emailUsuario`, `ciuUsuario`, `paiUsuario`) VALUES
(25, 'Fernando', 'Pérez Solera', '660399358', '79120936q', 'ferperezs@gmail.com', 'Málaga', 'España'),
(26, 'Carmen', 'Leticia Quintana', '662544789', '75148936W', 'carmen12@gmail.com', 'Barcelona', 'España'),
(27, 'Estefania', 'Diaz Domingez', '775899641', '78945212R', 'estefidd@gmail.com', 'Madrid', 'España'),
(28, 'Ruben', 'García Vázquez', '745892126', '84229684I', 'ruben00@gmail.com', 'Amsterdam', 'Paises bajos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelo`
--

CREATE TABLE `vuelo` (
  `codVuelo` int(11) NOT NULL,
  `nomCompania` varchar(50) NOT NULL,
  `ciudaVuelo` varchar(100) NOT NULL,
  `paisVuelo` varchar(100) NOT NULL,
  `numAsiento` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vuelo`
--

INSERT INTO `vuelo` (`codVuelo`, `nomCompania`, `ciudaVuelo`, `paisVuelo`, `numAsiento`) VALUES
(11, 'rayaner', 'cantabroa', 'julo', '45a'),
(12, 'rayaner', 'San Francisco', 'California', '32f'),
(14, 'Iberdrolia', 'Bruselas', 'Belgica', '1A'),
(15, 'Iberdrolia', 'Kyto', 'Japón', '25E');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`codReserva`),
  ADD KEY `reserva_ibfk_1` (`codUsuario`),
  ADD KEY `reserva_ibfk_2` (`codVuelo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`codUsuario`);

--
-- Indices de la tabla `vuelo`
--
ALTER TABLE `vuelo`
  ADD PRIMARY KEY (`codVuelo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `codReserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `codUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `vuelo`
--
ALTER TABLE `vuelo`
  MODIFY `codVuelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
