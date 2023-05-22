-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2023 a las 20:25:28
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0
DROP DATABASE IF EXISTS tpvdatabase;
CREATE DATABASE tpvdatabase;
USE tpvdatabase;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tpvdatabase`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `cod_empleado` int(11) NOT NULL,
  `nombre` char(20) NOT NULL,
  `apellidos` char(20) NOT NULL,
  `root` tinyint(1) NOT NULL,
  `correo` char(255) NOT NULL,
  `direccion` char(40) DEFAULT NULL,
  `contrasenya` char(20) NOT NULL,
  `foto` varchar(9999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`cod_empleado`, `nombre`, `apellidos`, `root`, `correo`, `direccion`, `contrasenya`, `foto`) VALUES
(1, 'David', 'Chirivella', 1, 'Dechiri224@hotmail.com', 'Avd Rambleta,11', '123456', 'chirivella.jpg'),
(2, 'Andres', 'Alguacil', 0, 'LilBokeron88@gmail.com', 'Plaza Espana,15', '654321', 'andres.jpg'),
(3, 'Pepe', 'Gutierrez', 0, 'pepepalomo@gmail.com', 'Carrer Colom 20', '774321', 'pepe.jpg'),
(4, 'Emilio', 'Herrera', 0, 'Emiliogherra@gmail.com', 'San vicente 24', '664321', 'emilio.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `cod_producto` int(11) NOT NULL,
  `nombre` char(20) NOT NULL,
  `precio` float(10,2) NOT NULL,
  `categoria` char(50) NOT NULL,
  `imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`, `categoria`, `imagen`) VALUES
(1, 'Tostada + cafe/zumo', 2.50, 'Combos', 'tostadacafe.jpg'),
(2, 'Curasan + cafe/zumo', 2.50, 'Combos', 'curasancafe.jpg'),
(3, 'Tostada Especial + c', 2.50, 'Combos', 'tostadaespecial.jpg'),
(4, 'Tostada + cafe + zum', 3.50, 'Combos', 'tostadacafezumo.jpg'),
(5, 'Gofre/Creppe + Cafe', 3.50, 'Combos', 'gofre.jpg'),
(6, 'Cafe solo', 1.20, 'Cafes', 'cafe.jpg'),
(7, 'Cortado', 1.30, 'Cafes', 'cortado.jpg'),
(8, 'Americano', 1.40, 'Cafes', 'americano.jpg'),
(9, 'Bombon', 1.50, 'Cafes', 'bombon.jpg'),
(10, 'Cafe con leche', 1.60, 'Cafes', 'cafeleche.jpg'),
(11, 'Carajillo Marie briz', 1.60, 'Cafes', 'carajillomarie.jpg'),
(12, 'MANZANILLA PIRAMIDE', 1.60, 'Cafes', 'manzanillapiramide.jpg'),
(13, 'MENTA-POLEO PIRAMIDE', 1.60, 'Cafes', 'mentapiramide.jpg'),
(14, 'TE VERDE GUNPOWDER', 1.60, 'Cafes', 'teverdegunpowder.jpg'),
(15, 'Cruzcampo (Cana)', 1.40, 'Cervezas', 'cana.jpg'),
(16, 'Cruzcampo (Doble)', 1.90, 'Cervezas', 'doble.jpg'),
(17, 'Alhambra Verde', 2.90, 'Cervezas', 'alhambraverde.jpg'),
(18, 'San Miguel', 1.80, 'Cervezas', 'sanmiguel.jpg'),
(19, 'San Miguel 0,0', 2.00, 'Cervezas', 'sanmiguel00.jpg'),
(20, 'Radler Cruzcampo', 2.00, 'Cervezas', 'radler.jpg'),
(21, 'Estrella Galicia', 2.00, 'Cervezas', 'galicia.jpg'),
(22, 'Heineken 0,0', 2.00, 'Cervezas', 'heineken00.jpg'),
(23, 'Turia', 2.00, 'Cervezas', 'turia.jpg'),
(24, 'Cocacola', 2.00, 'Refrescos', 'cola.jpg'),
(25, 'Cocacola Zero', 2.00, 'Refrescos', 'colazero.jpg'),
(26, 'Cocacola Zero Zero', 2.00, 'Refrescos', 'colazerozero.jpg'),
(27, 'Acuarius Naranja', 2.00, 'Refrescos', 'acuariusnaranja.jpg'),
(28, 'Acuarius Limon', 2.00, 'Refrescos', 'acuariuslimon.jpg'),
(29, 'Fanta Limon', 2.00, 'Refrescos', 'fantanaranja.jpg'),
(30, 'Fanta Naranja', 2.00, 'Refrescos', 'fantalimon.jpg'),
(31, 'Nestea', 2.00, 'Refrescos', 'nestea.jpg'),
(32, 'Tinto de Verano', 2.00, 'Refrescos', 'tintoverano.jpg'),
(33, 'Cazalla Tenis', 1.10, 'Licores', 'cazalla.jpg'),
(34, 'Barrejat (cazalla y', 1.20, 'Licores', 'barrejat.jpg'),
(35, 'Chupito Licor de hie', 1.30, 'Licores', 'licorhierbas.jpg'),
(36, 'Chupito de Cutty Sha', 1.70, 'Licores', 'cuttyshark.jpg'),
(37, 'Chupito de Jack D. o', 2.50, 'Licores', 'chupitojack.jpg'),
(38, 'Copa de Terry o Ron', 1.70, 'Licores', 'copaterry.jpg'),
(39, 'Copa Pacharán Zoco o', 1.70, 'Licores', 'copapacharan.jpg'),
(40, 'Copa Licor de Hierba', 1.70, 'Licores', 'copalicorhierbas.jpg'),
(41, 'Copa Cutty, J&B o Bo', 2.80, 'Licores', 'copajyb.jpg'),
(42, 'Curasan Mini', 0.60, 'Bolleria', 'curasanmini.jpg'),
(43, 'Curasan Mini Choco', 0.60, 'Bolleria', 'minichoco.jpg'),
(44, 'Curasan Grande', 1.50, 'Bolleria', 'curasangrande.jpg'),
(45, 'Napolitana York Ques', 1.60, 'Bolleria', 'napolitanayork.jpg'),
(46, 'Napolitana Chocolate', 1.60, 'Bolleria', 'napolitanachocolate.jpg'),
(47, 'Pisto', 1.60, 'Bolleria', 'pisto.jpg'),
(48, 'Magdalena', 1.00, 'Bolleria', 'magdalena.jpg'),
(49, 'Enseimada', 1.00, 'Bolleria', 'enseimada.jpg'),
(50, 'Rosquilletas', 1.20, 'Bolleria', 'rosquilletas.jpg'),
(51, 'Tostada Aceite', 2.50, 'Tostadas', 'tostadaaceite.jpg'),
(52, 'Tostada Mantequilla', 2.50, 'Tostadas', 'tostadamantequilla.jpg'),
(53, 'Tostada Tomate', 2.50, 'Tostadas', 'tostadatomate.jpg'),
(54, 'Tostada Tomate y Que', 3.50, 'Tostadas', 'tostadatomatequeso.jpg'),
(55, 'Tostada Tomate y Jam', 3.50, 'Tostadas', 'tostadajamon.jpg'),
(56, 'Tostada Sobrasada y', 3.50, 'Tostadas', 'tostadasobrasada.jpg'),
(57, 'Tostada de Pavo', 3.50, 'Tostadas', 'tostadapavo.jpg'),
(58, 'Tostada Atun Olivas', 3.50, 'Tostadas', 'tostadaatun.jpg'),
(59, 'Tortilla de Patata', 4.00, 'Bocadillos', 'tortillapatata.jpeg'),
(60, 'Bocadillo Bacon con', 4.00, 'Bocadillos', 'baconqueso.jpg'),
(61, 'Sobrasada con Queso', 4.00, 'Bocadillos', 'sobrasada con queso y cebolla.jpg'),
(62, 'Bocadillo de Albondi', 4.00, 'Bocadillos', 'bocadilloalbondigas.jpg'),
(63, 'Francesa con Jamon', 4.00, 'Bocadillos', 'NULL'),
(64, 'Francesa con Sobrasa', 4.00, 'Bocadillos', 'francesa con sobrasada.jpg'),
(65, 'Atun con Olivas', 4.00, 'Bocadillos', 'atunconolivas.jpg'),
(66, 'Pechuga y Queso', 4.00, 'Bocadillos', 'pechuga y queso.jpg'),
(67, 'Chistorra con patata', 4.50, 'Bocadillos', 'chistorra.jpg'),
(68, 'Pincho de Tortilla', 3.50, 'Tapas', 'pinchotortilla.jpg'),
(69, 'Habas Picantonas', 3.50, 'Tapas', 'habas.jpg'),
(70, 'Mollejitas Morunas', 3.50, 'Tapas', 'mollejas.jpg'),
(71, 'Croquetas', 3.50, 'Tapas', 'croquetas.jpg'),
(72, 'Bravas', 3.50, 'Tapas', 'bravas.jpg'),
(73, 'Morro', 3.50, 'Tapas', 'morro.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_servido`
--

CREATE TABLE `producto_servido` (
  `cantidad` int(11) NOT NULL,
  `cod_producto` int(11) NOT NULL,
  `cod_ticket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `cod_ticket` int(11) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `fecha` date NOT NULL,
  `num_mesa` varchar(20) NOT NULL,
  `cod_empleado` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`cod_empleado`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`cod_producto`);

--
-- Indices de la tabla `producto_servido`
--
ALTER TABLE `producto_servido`
  ADD PRIMARY KEY (`cod_producto`,`cod_ticket`),
  ADD KEY `cod_ticket` (`cod_ticket`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`cod_ticket`),
  ADD KEY `cod_empleado` (`cod_empleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `cod_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `cod_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `cod_ticket` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto_servido`
--
ALTER TABLE `producto_servido`
  ADD CONSTRAINT `producto_servido_ibfk_1` FOREIGN KEY (`cod_producto`) REFERENCES `producto` (`cod_producto`),
  ADD CONSTRAINT `producto_servido_ibfk_2` FOREIGN KEY (`cod_ticket`) REFERENCES `ticket` (`cod_ticket`);

--
-- Filtros para la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`cod_empleado`) REFERENCES `empleado` (`cod_empleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
