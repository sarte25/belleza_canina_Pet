-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-10-2023 a las 00:41:49
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `estrellita`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `Codigo_cita` varchar(40) NOT NULL,
  `Fecha_hora_cita` varchar(40) NOT NULL,
  `Cliente_cita` varchar(40) NOT NULL,
  `Servicio_cita` varchar(40) NOT NULL,
  `Estado_cita` varchar(40) NOT NULL,
  `Contacto_cita` varchar(40) NOT NULL,
  `Observacion_cita` varchar(40) NOT NULL,
  `idmascota_cita` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `codigo_cliente` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `cedula` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `departamento` varchar(45) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `Codigo_emplead` varchar(40) NOT NULL,
  `Nomb_emplead` varchar(40) NOT NULL,
  `Apellid_emplead` varchar(40) NOT NULL,
  `Télefono_emplead` varchar(40) NOT NULL,
  `Cargo_emplead` varchar(40) NOT NULL,
  `Horaritraba_emplead` varchar(40) NOT NULL,
  `Fechainicio_emplead` varchar(40) NOT NULL,
  `Fechatermin_emplead` varchar(40) NOT NULL,
  `Salario_emplead` varchar(40) NOT NULL,
  `Inforemerge_emplead` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `Cod_Factura` varchar(45) NOT NULL,
  `Fecha_fact` varchar(45) NOT NULL,
  `Cod_cliente` varchar(45) NOT NULL,
  `Cod_producto` varchar(45) NOT NULL,
  `Fecha_factura` date NOT NULL,
  `Total_compra` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE `mascota` (
  `Codigo_Mascota` varchar(40) NOT NULL,
  `Nomb_mascota` varchar(45) NOT NULL,
  `Nombre_dueño` varchar(50) NOT NULL,
  `Cumple` date NOT NULL,
  `Raza_mascota` varchar(45) NOT NULL,
  `cod_ped` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mascota`
--

INSERT INTO `mascota` (`Codigo_Mascota`, `Nomb_mascota`, `Nombre_dueño`, `Cumple`, `Raza_mascota`, `cod_ped`) VALUES
('26', 'parchi', 'merly falla', '2023-10-18', 'Cruzado', '27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `Codigo_pedid` varchar(40) NOT NULL,
  `Fecha_pedid` varchar(40) NOT NULL,
  `clienteasoci_pedid` varchar(40) NOT NULL,
  `Producsolici_pedid` varchar(40) NOT NULL,
  `Cantida_pedid` varchar(40) NOT NULL,
  `Preciototal_pedid` varchar(40) NOT NULL,
  `Estado_pedid` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `Cod_product` varchar(45) NOT NULL,
  `Nomb_product` varchar(45) NOT NULL,
  `Descrip_product` varchar(45) NOT NULL,
  `Canti_product` varchar(45) NOT NULL,
  `Precio_product` varchar(45) NOT NULL,
  `select_product` varchar(45) NOT NULL,
  `Codigo_cliente` varchar(45) NOT NULL,
  `servicio_Codig_servi` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `Codigo_registro` varchar(45) NOT NULL,
  `Nombres` varchar(40) NOT NULL,
  `Apellidos` varchar(40) NOT NULL,
  `Codigo_cliente` varchar(45) NOT NULL,
  `Correo` varchar(40) NOT NULL,
  `Barrio` varchar(40) NOT NULL,
  `Recidencia` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`Codigo_registro`, `Nombres`, `Apellidos`, `Codigo_cliente`, `Correo`, `Barrio`, `Recidencia`) VALUES
('2', 'merly', 'martinez falla', '96', 'merlymartinez23@hotmail.com', 'las palmas ', 'Neiva'),
('30', 'sergio andres ', 'morales martinez', '86', 'sebasmena.119@gmail.com', 'Las palmas', 'Neiva-huila'),
('37', 'julian david', 'osorio gomez', '77', 'sebasmena.117@gmail.com', 'Las palmas', 'Neiva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `Codig_servi` varchar(40) NOT NULL,
  `Nomb_servi` varchar(40) NOT NULL,
  `Descrip_servi` varchar(40) NOT NULL,
  `Duraci_servi` varchar(40) NOT NULL,
  `Precio_servi` varchar(40) NOT NULL,
  `Disponi_servi` varchar(40) NOT NULL,
  `Catego_servi` varchar(40) NOT NULL,
  `Codigo_cliente` varchar(45) NOT NULL,
  `cod_empleado_serv` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`Codigo_cita`),
  ADD UNIQUE KEY `Cliente_cita` (`Cliente_cita`),
  ADD UNIQUE KEY `idmascota_cita` (`idmascota_cita`),
  ADD UNIQUE KEY `Servisio_cita` (`Servicio_cita`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codigo_cliente`),
  ADD UNIQUE KEY `cedula` (`cedula`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`Codigo_emplead`),
  ADD UNIQUE KEY `Télefono_emplead` (`Télefono_emplead`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`Cod_Factura`),
  ADD UNIQUE KEY `Cod_cliente` (`Cod_cliente`),
  ADD UNIQUE KEY `Cod_producto` (`Cod_producto`);

--
-- Indices de la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD PRIMARY KEY (`Codigo_Mascota`),
  ADD UNIQUE KEY `cod_ped` (`cod_ped`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`Codigo_pedid`),
  ADD UNIQUE KEY `clienteasoci_pedid` (`clienteasoci_pedid`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`Cod_product`),
  ADD UNIQUE KEY `Codigo_cliente` (`Codigo_cliente`),
  ADD UNIQUE KEY `Canti_product` (`Canti_product`),
  ADD KEY `select_product` (`select_product`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`Codigo_registro`) USING BTREE,
  ADD UNIQUE KEY `Codigo_cliente` (`Codigo_cliente`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`Codig_servi`),
  ADD UNIQUE KEY `Codigo_cliente` (`Codigo_cliente`),
  ADD UNIQUE KEY `cod_empleado` (`cod_empleado_serv`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cita`
--
ALTER TABLE `cita`
  ADD CONSTRAINT `cita_ibfk_1` FOREIGN KEY (`Cliente_cita`) REFERENCES `cliente` (`codigo_cliente`),
  ADD CONSTRAINT `cita_ibfk_2` FOREIGN KEY (`Servicio_cita`) REFERENCES `servicio` (`Codig_servi`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`correo`) REFERENCES `registro` (`Codigo_registro`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`Cod_cliente`) REFERENCES `cliente` (`codigo_cliente`),
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`Cod_producto`) REFERENCES `producto` (`Cod_product`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`Codigo_pedid`) REFERENCES `mascota` (`cod_ped`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`Codigo_cliente`) REFERENCES `cliente` (`codigo_cliente`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`Canti_product`) REFERENCES `pedido` (`clienteasoci_pedid`);

--
-- Filtros para la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD CONSTRAINT `servicio_ibfk_1` FOREIGN KEY (`cod_empleado_serv`) REFERENCES `empleado` (`Codigo_emplead`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
