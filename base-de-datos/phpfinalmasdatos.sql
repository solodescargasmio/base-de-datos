﻿-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2016 a las 18:38:14
-- Versión del servidor: 5.5.36
-- Versión de PHP: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `phpfinal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE IF NOT EXISTS `administrador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `tipo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nick` (`nick`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `nick`, `nombre`, `apellido`, `email`, `pass`, `tipo`) VALUES
(1, 'admin', 'Ad', 'Min', 'cualquier_mail@outlook.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atributo`
--

CREATE TABLE IF NOT EXISTS `atributo` (
  `id_attributo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `calculado` tinyint(1) NOT NULL,
  `tabla` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_attributo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Volcado de datos para la tabla `atributo`
--

INSERT INTO `atributo` (`id_attributo`, `nombre`, `tipo`, `calculado`, `tabla`) VALUES
(1, 'id_paciente', 'int', 0, 0),
(2, 'nombre', 'text', 0, 0),
(3, 'apellido', 'text', 0, 0),
(4, 'fecha_nac', 'date', 0, 0),
(5, 'edad', 'int', 1, 0),
(6, 'sexo', 'text', 0, 1),
(7, 'peso', 'double', 0, 0),
(8, 'altura', 'double', 0, 0),
(9, 'fecha_estudio', 'date', 0, 0),
(10, 'imc', 'double', 1, 0),
(11, 'titulo', 'text', 0, 0),
(12, 'texto', 'text', 0, 0),
(13, 'car_fem', 'int', 0, 0),
(14, 'car_hueco', 'int', 0, 0),
(15, 'hueco_hombro', 'int', 0, 0),
(16, 'hombro_braq', 'int', 0, 0),
(17, 'hombro_rad', 'int', 0, 0),
(18, 'hueco_cuffxell', 'int', 0, 0),
(19, 'cuffxell_fem', 'int', 0, 0),
(20, 'cd', 'double', 0, 0),
(21, 'ci', 'double', 0, 0),
(22, 'psis', 'int', 0, 0),
(23, 'pdias', 'int', 0, 0),
(24, 'psis', 'int', 0, 0),
(25, 'pdias', 'int', 0, 0),
(26, 'fuma', 'checkbox', 0, 0),
(27, 'presion', 'checkbox', 0, 0),
(28, 'colesterol', 'checkbox', 0, 0),
(29, 'hiperglisemia', 'checkbox', 0, 0),
(30, 'ant_familiares', 'checkbox', 0, 0),
(31, 'sedentarismo', 'checkbox', 0, 0),
(32, 'ejercicio', 'checkbox', 0, 0),
(33, 'medicacion', 'checkbox', 0, 0),
(34, 'diabetes', 'checkbox', 0, 0),
(35, 'hemo', 'float', 0, 0),
(36, 'xcell', 'float', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependencia`
--

CREATE TABLE IF NOT EXISTS `dependencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `depende` varchar(100) NOT NULL,
  `de` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudio_atributo`
--

CREATE TABLE IF NOT EXISTS `estudio_atributo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_estudio` int(11) NOT NULL,
  `id_form` int(11) NOT NULL,
  `id_attributo` int(11) NOT NULL,
  `valor` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_estudio` (`id_estudio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudio_paciente`
--

CREATE TABLE IF NOT EXISTS `estudio_paciente` (
  `id_estudio` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) NOT NULL,
  `fecha_estudio` date NOT NULL,
  `numero` int(11) NOT NULL,
  PRIMARY KEY (`id_estudio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `form`
--

CREATE TABLE IF NOT EXISTS `form` (
  `id_form` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `version` int(11) NOT NULL,
  `fecha_crea` date NOT NULL,
  PRIMARY KEY (`id_form`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `form`
--

INSERT INTO `form` (`id_form`, `nombre`, `version`, `fecha_crea`) VALUES
(1, 'paciente', 1, '2016-04-07'),
(2, 'ficha_patronimica', 1, '2016-04-07'),
(3, 'comentario', 1, '2016-04-07'),
(4, 'distancia', 1, '2016-04-07'),
(5, 'imt', 1, '2016-04-07'),
(6, 'presion_braqueal', 1, '2016-04-07'),
(7, 'presion_central', 1, '2016-04-07'),
(8, 'riesgo', 1, '2016-04-07'),
(9, 'vop', 1, '2016-04-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `form_attr`
--

CREATE TABLE IF NOT EXISTS `form_attr` (
  `id_form` int(11) NOT NULL,
  `id_attributo` int(11) NOT NULL,
  `obligatorio` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_form`,`id_attributo`),
  KEY `id_form` (`id_form`,`id_attributo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `form_attr`
--

INSERT INTO `form_attr` (`id_form`, `id_attributo`, `obligatorio`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 4, 1),
(1, 5, 1),
(1, 6, 1),
(2, 1, 1),
(2, 7, 1),
(2, 8, 1),
(2, 9, 1),
(3, 1, 1),
(3, 11, 1),
(3, 12, 1),
(4, 1, 1),
(4, 13, 1),
(4, 14, 1),
(4, 15, 1),
(4, 16, 1),
(4, 17, 1),
(4, 18, 1),
(4, 19, 1),
(5, 1, 1),
(5, 20, 1),
(5, 21, 1),
(6, 1, 1),
(6, 22, 1),
(6, 23, 1),
(7, 1, 1),
(7, 24, 1),
(7, 25, 1),
(8, 1, 1),
(8, 26, 1),
(8, 27, 1),
(8, 28, 1),
(8, 29, 1),
(8, 30, 1),
(8, 31, 1),
(8, 32, 1),
(8, 33, 1),
(8, 34, 1),
(9, 1, 1),
(9, 35, 1),
(9, 36, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla`
--

CREATE TABLE IF NOT EXISTS `tabla` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_attributo` int(11) NOT NULL,
  `opcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_attributo` (`id_attributo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tabla`
--

INSERT INTO `tabla` (`id`, `id_attributo`, `opcion`) VALUES
(1, 6, 'femenino'),
(2, 6, 'masculino');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudio_atributo`
--
ALTER TABLE `estudio_atributo`
  ADD CONSTRAINT `estudio_atributo_ibfk_1` FOREIGN KEY (`id_estudio`) REFERENCES `estudio_paciente` (`id_estudio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `form_attr`
--
ALTER TABLE `form_attr`
  ADD CONSTRAINT `form_attr_ibfk_1` FOREIGN KEY (`id_form`) REFERENCES `form` (`id_form`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla`
--
ALTER TABLE `tabla`
  ADD CONSTRAINT `tabla_ibfk_1` FOREIGN KEY (`id_attributo`) REFERENCES `atributo` (`id_attributo`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
