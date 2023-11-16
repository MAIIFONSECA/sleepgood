-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2023 a las 17:34:01
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sleepgood`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int(15) NOT NULL,
  `nombres_cliente` text NOT NULL,
  `telefono_cliente` varchar(30) NOT NULL,
  `direccion_cliente` varchar(60) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombres_cliente`, `telefono_cliente`, `direccion_cliente`) VALUES
(50456987, 'Marta Isabel Callejas Velez', '321543445', 'cl 65 sur 34 65'),
(79343241, 'Carlos Joban Espinosa Serna', '3212307331', 'calle 14a 5 20 este'),
(80456876, 'Giovanny Sanchez Vargas', '3205675432', 'Dg 50 34 54 este'),
(1022546789, 'Nasly Dayana Espinosa Lopez', '3002346786', 'kr 60 este 56 98'),
(1022765890, 'Edgar Arley Franco Valencia', '3167654523', 'kr 34 este 54 05 sur');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `cod_usuario` int(20) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`cod_usuario`, `usuario`, `password`) VALUES
(1, 'MARIO BECERRA', '1001'),
(3, 'CARLOS ESPINOSA', '1003'),
(4, 'GIOVANY SANCHEZ', '1004'),
(5, 'NASLY ESPINOSA', '1005'),
(6, 'ARLEY FRANCO', '1006'),
(7, 'MARTA LOPEZ', '1007'),
(2, 'CAROLINA JIMENEZ', '1002');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `referencia` int(5) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `precio_producto` int(12) NOT NULL,
  `preferencia` varchar(15) NOT NULL,
  `Medida` varchar(30) NOT NULL,
  PRIMARY KEY (`referencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`referencia`, `categoria`, `precio_producto`, `preferencia`, `Medida`) VALUES
(1020, 'Juego de sabanas', 80000, 'modernas', 'Cama doble'),
(1021, 'Acolchado ancho', 145000, 'tradicional', 'Cama doble'),
(1023, 'Juego de sabanas', 75000, 'modernas', 'Cama sencilla'),
(1024, 'Juego de sabanas', 120000, 'tradicional', 'Cama Queen'),
(1025, 'Juego de sabanas', 130000, 'modernas', 'Cama King'),
(1026, 'Acolchado ancho', 135000, 'tradicional', 'Cama Sencilla'),
(1027, 'Acolchado ancho', 155000, 'moderno', 'Cama Queen'),
(1028, 'Acolchado ancho', 165000, 'tradicional', 'Cama King'),
(1029, 'Colcha liviana', 110000, 'modernas', 'Cama sencilla'),
(1030, 'Colcha liviana', 120000, 'tradicional', 'Cama doble'),
(1031, 'Colcha liviana', 130000, 'modernas', 'Cama Queen'),
(1032, 'Colcha liviana', 140000, 'tradicional', 'Cama King');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE IF NOT EXISTS `proveedores` (
  `nit` int(20) NOT NULL,
  `nombre_fabrica` varchar(50) NOT NULL,
  `telefono_fabrica` varchar(15) NOT NULL,
  `direccion_fabrica` varchar(60) NOT NULL,
  PRIMARY KEY (`nit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`nit`, `nombre_fabrica`, `telefono_fabrica`, `direccion_fabrica`) VALUES
(101099783, 'Suavidad LTDA', '3206756643', 'tv 34 sur 29 88'),
(876418300, 'Nuevas Telas S.A.', '6282965', 'kr 99 25 23 sur'),
(978968655, 'Comoda y asociados S.A.', '3005647877', 'cl 14 sur 18 10'),
(2067768998, 'Facol S.A.', '3147658990', 'cl 89 sur 49 10 este'),
(2147483647, 'Tela Fina S.A.S.', '7456798', 'kr 14 sur 38 20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE IF NOT EXISTS `vendedores` (
  `id_vendedor` int(15) NOT NULL,
  `nombres_vendedor` text NOT NULL,
  `telefono_vendedor` varchar(15) NOT NULL,
  `direccion_vendedor` varchar(60) NOT NULL,
  PRIMARY KEY (`id_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`id_vendedor`, `nombres_vendedor`, `telefono_vendedor`, `direccion_vendedor`) VALUES
(45678342, 'Maritza Ivon Leguizamo Fuerte', '3154356678', 'kr 34 sur 54 32'),
(79456776, 'Laura Catalina Restrepo Cañas', '3012234312', 'cl 23 sur 54 09 este'),
(1020665990, 'Stiven Guerrero Ortiz', '3142354326', 'dg 30a 67b 29'),
(1021555342, 'Alejandro Ortiz Vargas', '3122411617', 'cl 12r 1d 34 este'),
(1024567889, 'Kevin Santiago Lopez Vanto', '3162174389', 'Dg 67k 09 88 este');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE IF NOT EXISTS `ventas` (
  `codigo` int(5) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `precio_venta` int(12) NOT NULL,
  `fecha` date NOT NULL,
  `referencia` int(15) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `referencia` (`referencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`codigo`, `cantidad`, `precio_venta`, `fecha`, `referencia`) VALUES
(50456987, 3, 115000, '2023-10-17', 1020),
(79343241, 2, 160000, '2023-10-02', 1023),
(80456876, 2, 160000, '2023-10-14', 1031),
(1022546789, 2, 240000, '2023-10-11', 1024),
(1022765890, 1, 120000, '2023-10-05', 1021);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`referencia`) REFERENCES `producto` (`referencia`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`codigo`) REFERENCES `clientes` (`id_cliente`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
