-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-01-2023 a las 17:55:12
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operaciones`
--

CREATE TABLE `operaciones` (
  `uuid` varchar(50) NOT NULL,
  `uuiduser` int(11) NOT NULL,
  `simbolo` varchar(10) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `volumen` double(5,2) NOT NULL,
  `horaApertura` datetime NOT NULL,
  `precioApertura` double(5,5) NOT NULL,
  `horaCierre` datetime NOT NULL,
  `precioCierre` double(5,5) NOT NULL,
  `plataformaApertura` varchar(20) NOT NULL,
  `plataformaCierre` varchar(20) NOT NULL,
  `sl` double(5,5) NOT NULL,
  `tp` double(5,5) NOT NULL,
  `comision` double(5,2) NOT NULL,
  `swap` double(5,2) NOT NULL,
  `rollower` double(5,2) NOT NULL,
  `profit` double(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `operaciones`
--
ALTER TABLE `operaciones`
  ADD UNIQUE KEY `uuid` (`uuid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
