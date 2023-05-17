-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2023 a las 09:18:13
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`cod_empleado`, `nombre`, `apellidos`, `root`, `correo`, `direccion`, `contrasenya`, `foto`) VALUES
(1, 'David', 'Chirivella', 1, 'Dechiri224@hotmail.com', 'Avd Rambleta,11', '123456', 'foto.jpg'),
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`cod_producto`, `nombre`, `precio`, `categoria`, `imagen`) VALUES
(1, 'Tostada + cafe/zumo', 2.50, 'Combos', 'combo.jpg'),
(2, 'Curasan + cafe/zumo', 2.50, 'Combos', 'combo.jpg'),
(3, 'Tostada Especial + c', 2.50, 'Combos', 'combo.jpg'),
(4, 'Tostada + cafe + zum', 3.50, 'Combos', 'combo.jpg'),
(5, 'Gofre/Creppe + Cafe', 3.50, 'Combos', 'combo.jpg'),
(6, 'Tarta + Cafe', 3.50, 'Combos', 'combo.jpg'),
(7, 'Cafe solo', 1.20, 'Cafes', 'cafe.jpg'),
(8, 'Cortado', 1.30, 'Cafes', 'cortado.jpeg'),
(9, 'Americano', 1.40, 'Cafes', 'americano.jpg'),
(10, 'Bombon', 1.50, 'Cafes', 'bombon.jpg'),
(11, 'Cafe con leche', 1.60, 'Cafes', 'cafeleche.jpg'),
(12, 'Carajillo Marie briz', 1.60, 'Cafes', 'carajillomarie.jpeg'),
(13, 'MANZANILLA PIRAMIDE', 1.60, 'Cafes', 'manzanillapiramide.jpg'),
(14, 'MENTA-POLEO PIRAMIDE', 1.60, 'Cafes', 'mentapiramicd'),
(15, 'TE VERDE GUNPOWDER', 1.60, 'Cafes', 'teverdegunpowder.jpg'),
(16, 'Cruzcampo (Cana)', 1.40, 'Cervezas', 'cana.jpg'),
(17, 'Cruzcampo (Doble)', 1.90, 'Cervezas', 'doble.jpg'),
(18, 'Cruzcampo (Tanque)', 2.90, 'Cervezas', 'tanque.png'),
(19, 'San Miguel', 1.80, 'Cervezas', 'sanmiguel.jpg'),
(20, 'San Miguel 0,0', 2.00, 'Cervezas', 'sanmiguel00.jpg'),
(21, 'Radler Cruzcampo', 2.00, 'Cervezas', 'radler.jpg'),
(22, 'Estrella Galicia', 2.00, 'Cervezas', 'galicia.png'),
(23, 'Heineken 0,0', 2.00, 'Cervezas', 'heineken00.png'),
(24, 'Turia', 2.00, 'Cervezas', 'turia.jpg'),
(25, 'Cocacola', 2.00, 'Refrescos', 'cola.jpg'),
(26, 'Cocacola Zero', 2.00, 'Refrescos', 'cocazero.png'),
(27, 'Cocacola Zero Zero', 2.00, 'Refrescos', 'cocazerozero.jpg'),
(28, 'Acuarius Naranja', 2.00, 'Refrescos', 'acuariusnaranja.jpg'),
(29, 'Acuarius Limon', 2.00, 'Refrescos', 'acuariuslimon.jpg'),
(30, 'Fanta Naranja', 2.00, 'Refrescos', 'fantalimon.jpg'),
(31, 'Fanta Limon', 2.00, 'Refrescos', 'fantanaranja.jpg'),
(32, 'Trina de Naranja', 2.00, 'Refrescos', 'trinanaranja.jpg'),
(33, 'Tonica Schweppes', 2.00, 'Refrescos', 'tonica.png'),
(34, 'Cazalla Tenis', 1.10, 'Licores', 'cazalla.jpg'),
(35, 'Barrejat (cazalla y', 1.20, 'Licores', 'barrejat.jpg'),
(36, 'Chupito Licor de hie', 1.30, 'Licores', 'licorhierbas.jpg'),
(37, 'Chupito de Cutty Sha', 1.70, 'Licores', 'cuttyshark.jpg'),
(38, 'Chupito de Jack D. o', 2.50, 'Licores', 'redlabel.jpg'),
(39, 'Copa de Terry o Ron', 1.70, 'Licores', 'copaterry.jpg'),
(40, 'Copa Pacharán Zoco o', 1.70, 'Licores', 'copapacharan.jpg'),
(41, 'Copa Licor de Hierba', 1.70, 'Licores', 'copalicorhierbas.jpg'),
(42, 'Copa Cutty, J&B o Bo', 2.80, 'Licores', 'copacutty.jpg'),
(43, 'Curasan Mini', 0.60, 'Bolleria', 'croissant.jpg'),
(44, 'Curasan Mini Choco', 0.60, 'Bolleria', 'croissant.jpg'),
(45, 'Curasan Grande', 1.50, 'Bolleria', 'croissant.jpg'),
(46, 'Napolitana York Ques', 1.60, 'Bolleria', 'croissant.jpg'),
(47, 'Napolitana Chocolate', 1.60, 'Bolleria', 'croissant.jpg'),
(48, 'Pisto', 1.60, 'Bolleria', 'croissant.jpg'),
(49, 'Magdalena', 1.00, 'Bolleria', 'croissant.jpg'),
(50, 'Donut', 1.10, 'Bolleria', 'croissant.jpg'),
(51, 'Rosquilletas', 1.20, 'Bolleria', 'croissant.jpg'),
(52, 'Tostada Aceite', 2.50, 'Tostadas', 'tostadaaceite.jpg'),
(53, 'Tostada Mantequilla', 2.50, 'Tostadas', 'tostadasmantequilla.jpg'),
(54, 'Tostada Tomate', 2.50, 'Tostadas', 'tostadatomate.png'),
(55, 'Tostada Tomate y Que', 3.50, 'Tostadas', 'photo.jpg'),
(56, 'Tostada Tomate y Jam', 3.50, 'Tostadas', 'photo2.jpg'),
(57, 'Tostada Sobrasada y', 3.50, 'Tostadas', 'photo3.jpg'),
(58, 'Tostada Tomate Aguac', 3.50, 'Tostadas', 'photo4.jpg'),
(59, 'Tostada Popular', 3.50, 'Tostadas', 'photo5.jpg'),
(60, 'Tortilla de Patata', 4.00, 'Bocadillos', 'tortillapatata.jpeg'),
(61, 'Revuelto del Huerto', 4.00, 'Bocadillos', 'NULL'),
(62, 'Sobrasada con Queso', 4.00, 'Bocadillos', 'sobrasada con queso y cebolla.jpg'),
(63, 'Jamon con Tomate', 4.00, 'Bocadillos', 'NULL'),
(64, 'Francesa con Jamon', 4.00, 'Bocadillos', 'NULL'),
(65, 'Francesa con Sobrasa', 4.00, 'Bocadillos', 'francesa con sobrasada.jpg'),
(66, 'Atun con Olivas', 4.00, 'Bocadillos', 'NULL'),
(67, 'Pechuga y Queso', 4.00, 'Bocadillos', 'pechuga y queso.jpg'),
(68, 'Chistorra con patata', 4.50, 'Bocadillos', 'chistorrapatata.jpg'),
(69, 'Pincho de Tortilla', 3.50, 'Tapas', 'tapa.jpg'),
(70, 'Habas Picantonas', 3.50, 'Tapas', 'tapa.jpg'),
(71, 'Mollejitas Morunas', 3.50, 'Tapas', 'tapa.jpg'),
(72, 'Esgarraet o Ajoarrie', 3.50, 'Tapas', 'tapa.jpg'),
(73, 'Bravas', 3.50, 'Tapas', 'tapa.jpg'),
(74, 'Morro', 3.50, 'Tapas', 'tapa.jpg'),
(75, 'Oreja Adobada', 3.50, 'Tapas', 'tapa.jpg'),
(76, 'Ensaladilla Rusa', 3.50, 'Tapas', 'tapa.jpg'),
(77, 'Albondigas de \"La ab', 3.50, 'Tapas', 'tapa.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_servido`
--

CREATE TABLE `producto_servido` (
  `cantidad` int(11) NOT NULL,
  `cod_producto` int(11) NOT NULL,
  `cod_ticket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `cod_ticket` int(11) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `fecha` date NOT NULL,
  `num_mesa` varchar(20) NOT NULL,
  `cod_empleado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  MODIFY `cod_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

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
