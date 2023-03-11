-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 11-03-2023 a las 01:08:24
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `amalancetilla`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categoria`
--

DROP TABLE IF EXISTS `tbl_categoria`;
CREATE TABLE IF NOT EXISTS `tbl_categoria` (
  `Id_Categoria` int NOT NULL,
  `Nombre_Categoria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_categoria`
--

INSERT INTO `tbl_categoria` (`Id_Categoria`, `Nombre_Categoria`) VALUES
(1, 'Insumos'),
(2, 'Productos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente`
--

DROP TABLE IF EXISTS `tbl_cliente`;
CREATE TABLE IF NOT EXISTS `tbl_cliente` (
  `Id_Cliente` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `RTN_Cliente` varchar(45) DEFAULT NULL,
  `DNI` varchar(45) DEFAULT NULL,
  `Telefono_Cliente` varchar(45) DEFAULT NULL,
  `Correo_Cliente` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_cliente`
--

INSERT INTO `tbl_cliente` (`Id_Cliente`, `Nombre`, `RTN_Cliente`, `DNI`, `Telefono_Cliente`, `Correo_Cliente`) VALUES
(1, 'Juan Matamoros', '0801-1994-102242', '0801-1994-10224', '9720-5060', 'matamoros.juan@yahoo.com'),
(2, 'Sara Amador', '0611-1972-031324', '0611-1972-03132', '3245-8748', 'saraamador4@gmail.com'),
(3, 'Julio Hernandez', '0801-1981-00010', '0801-1981-00010', '9660-4525', 'juliohernandez122@yahoo.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_compra`
--

DROP TABLE IF EXISTS `tbl_compra`;
CREATE TABLE IF NOT EXISTS `tbl_compra` (
  `Id_Compra` int NOT NULL,
  `Id_Proveedor` int DEFAULT NULL,
  `Id_Usuario` int DEFAULT NULL,
  `Fecha_Compra` datetime DEFAULT NULL,
  `Estado_Compra` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id_Compra`),
  KEY `Id_Proveedor_idx` (`Id_Proveedor`),
  KEY `Id_Usuario_idx` (`Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_compra`
--

INSERT INTO `tbl_compra` (`Id_Compra`, `Id_Proveedor`, `Id_Usuario`, `Fecha_Compra`, `Estado_Compra`) VALUES
(1, 1, 1, '2022-08-24 00:00:00', 'En proceso'),
(2, 2, 1, '2022-08-24 00:00:00', 'Entregado'),
(3, 3, 1, '2022-08-24 00:00:00', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_descuentos`
--

DROP TABLE IF EXISTS `tbl_descuentos`;
CREATE TABLE IF NOT EXISTS `tbl_descuentos` (
  `Id_Descuento` int NOT NULL,
  `Nombre_Descuento` varchar(45) DEFAULT NULL,
  `Porcentaje_Descuentos` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`Id_Descuento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_descuentos`
--

INSERT INTO `tbl_descuentos` (`Id_Descuento`, `Nombre_Descuento`, `Porcentaje_Descuentos`) VALUES
(1, 'al por mayor', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalle pedido`
--

DROP TABLE IF EXISTS `tbl_detalle pedido`;
CREATE TABLE IF NOT EXISTS `tbl_detalle pedido` (
  `Id_Detalle_Pedido` int NOT NULL,
  `Id_Pedido` int DEFAULT NULL,
  `Codigo_Producto` int DEFAULT NULL,
  `Cantidad_Producto` int DEFAULT NULL,
  `Precio_Venta` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`Id_Detalle_Pedido`),
  KEY `Id_Pedido_idx` (`Id_Pedido`),
  KEY `Codigo_Producto_idx` (`Codigo_Producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_detalle pedido`
--

INSERT INTO `tbl_detalle pedido` (`Id_Detalle_Pedido`, `Id_Pedido`, `Codigo_Producto`, `Cantidad_Producto`, `Precio_Venta`) VALUES
(1, 1000, 1234, 2, '300'),
(2, 1001, 1235, 3, '250');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalle_compra`
--

DROP TABLE IF EXISTS `tbl_detalle_compra`;
CREATE TABLE IF NOT EXISTS `tbl_detalle_compra` (
  `Id_Detalle_Compra` int NOT NULL,
  `Id_Compra` int DEFAULT NULL,
  `Cantidad_Comprada` int DEFAULT NULL,
  `Precio_Costo` decimal(10,0) DEFAULT NULL,
  `Nombre_Producto_comprado` varchar(45) DEFAULT NULL,
  `Codigo_Producto` int DEFAULT NULL,
  PRIMARY KEY (`Id_Detalle_Compra`),
  KEY `Id_Compra_idx` (`Id_Compra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_detalle_compra`
--

INSERT INTO `tbl_detalle_compra` (`Id_Detalle_Compra`, `Id_Compra`, `Cantidad_Comprada`, `Precio_Costo`, `Nombre_Producto_comprado`, `Codigo_Producto`) VALUES
(1, 1, 5, '250', 'Azucar', 1230),
(2, 2, 10, '300', 'Levadura', 1231);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estado_pedido`
--

DROP TABLE IF EXISTS `tbl_estado_pedido`;
CREATE TABLE IF NOT EXISTS `tbl_estado_pedido` (
  `Id_Estado_Pedido` int NOT NULL,
  `Nombre_Estado_Pedido` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Estado_Pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_estado_pedido`
--

INSERT INTO `tbl_estado_pedido` (`Id_Estado_Pedido`, `Nombre_Estado_Pedido`) VALUES
(1, 'En proceso'),
(2, 'Entregado'),
(3, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_forma de pago`
--

DROP TABLE IF EXISTS `tbl_forma de pago`;
CREATE TABLE IF NOT EXISTS `tbl_forma de pago` (
  `id_forma_de_pago` int NOT NULL,
  `nombre_pago` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_forma_de_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_forma de pago`
--

INSERT INTO `tbl_forma de pago` (`id_forma_de_pago`, `nombre_pago`) VALUES
(1, 'Efectivo'),
(2, 'Transferencia'),
(3, 'Cheque');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_inventario`
--

DROP TABLE IF EXISTS `tbl_inventario`;
CREATE TABLE IF NOT EXISTS `tbl_inventario` (
  `Id_Inventario` int NOT NULL,
  `Codigo_Producto` int DEFAULT NULL,
  `Cantidad_Existencia` int DEFAULT NULL,
  PRIMARY KEY (`Id_Inventario`),
  KEY `Id_Producto_idx` (`Codigo_Producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_inventario`
--

INSERT INTO `tbl_inventario` (`Id_Inventario`, `Codigo_Producto`, `Cantidad_Existencia`) VALUES
(1, 1234, 4),
(2, 1230, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_movimiento _inventario`
--

DROP TABLE IF EXISTS `tbl_movimiento _inventario`;
CREATE TABLE IF NOT EXISTS `tbl_movimiento _inventario` (
  `Id_Movimiento` int NOT NULL,
  `Codigo_Producto` int DEFAULT NULL,
  `Fecha_Movimiento` datetime DEFAULT NULL,
  `Hora_Movimiento` datetime DEFAULT NULL,
  `Cantidad_Movimiento` int DEFAULT NULL,
  `Id_Tipo_Movimiento` int DEFAULT NULL,
  `Id_Usuario` int DEFAULT NULL,
  PRIMARY KEY (`Id_Movimiento`),
  KEY `Id_Tipo_idx` (`Id_Tipo_Movimiento`),
  KEY `Codigo_Producto_idx` (`Codigo_Producto`),
  KEY `Id_Usuario_idx` (`Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_movimiento _inventario`
--

INSERT INTO `tbl_movimiento _inventario` (`Id_Movimiento`, `Codigo_Producto`, `Fecha_Movimiento`, `Hora_Movimiento`, `Cantidad_Movimiento`, `Id_Tipo_Movimiento`, `Id_Usuario`) VALUES
(1, 1234, '2023-01-24 00:00:00', '2023-01-24 00:00:00', 10, 1, 1),
(2, 1235, '2023-01-24 00:00:00', '2023-01-24 00:00:00', 5, 2, 1),
(3, 1234, '2023-01-24 00:00:00', '2023-01-24 00:00:00', 2, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ms_bitacora`
--

DROP TABLE IF EXISTS `tbl_ms_bitacora`;
CREATE TABLE IF NOT EXISTS `tbl_ms_bitacora` (
  `Id_Bitacora` int NOT NULL,
  `Fecha` datetime NOT NULL,
  `Id_Usuario` int NOT NULL,
  `Id_Objeto` int NOT NULL,
  `Accion` varchar(20) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`Id_Bitacora`),
  KEY `Id_Usuario_idx` (`Id_Usuario`),
  KEY `Id_Objeto_Bitacora_idx` (`Id_Objeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ms_hist_constraseña`
--

DROP TABLE IF EXISTS `tbl_ms_hist_constraseña`;
CREATE TABLE IF NOT EXISTS `tbl_ms_hist_constraseña` (
  `Id_Hist` int NOT NULL,
  `Id_Usuario` int NOT NULL,
  `Contrasena` varchar(100) DEFAULT NULL,
  `Creado_Por` varchar(15) DEFAULT NULL,
  `Fecha_Creacion` datetime DEFAULT NULL,
  `Modificado_Por` varchar(15) DEFAULT NULL,
  `Fecha_Modificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`Id_Hist`),
  KEY `Id_Usuario_idx` (`Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ms_parametros`
--

DROP TABLE IF EXISTS `tbl_ms_parametros`;
CREATE TABLE IF NOT EXISTS `tbl_ms_parametros` (
  `Id_Parametro` int NOT NULL,
  `Parametro` varchar(50) NOT NULL,
  `Valor` varchar(100) NOT NULL,
  `Id_Usuario` int NOT NULL,
  `Fecha_Creacion` datetime NOT NULL,
  `Fecha_Modificacion` datetime NOT NULL,
  PRIMARY KEY (`Id_Parametro`),
  KEY `Id_Usuario_idx` (`Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_ms_parametros`
--

INSERT INTO `tbl_ms_parametros` (`Id_Parametro`, `Parametro`, `Valor`, `Id_Usuario`, `Fecha_Creacion`, `Fecha_Modificacion`) VALUES
(1, 'Intentos permitidos', '3', 1, '2022-05-24 00:00:00', '2022-05-27 00:00:00'),
(2, 'Tamaño de contrasela', '5', 1, '2022-05-24 00:00:00', '2022-05-27 00:00:00'),
(3, 'Numeros de preguntas', '3', 1, '2022-05-24 00:00:00', '2022-05-28 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ms_preguntas`
--

DROP TABLE IF EXISTS `tbl_ms_preguntas`;
CREATE TABLE IF NOT EXISTS `tbl_ms_preguntas` (
  `Id_Pregunta` int NOT NULL AUTO_INCREMENT,
  `Pregunta` varchar(100) NOT NULL,
  PRIMARY KEY (`Id_Pregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_ms_preguntas`
--

INSERT INTO `tbl_ms_preguntas` (`Id_Pregunta`, `Pregunta`) VALUES
(1, '¿Qué color es tu favorito?'),
(2, '¿Cómo se llama tu mascota?'),
(3, '¿En que año naciste?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ms_preguntas_usuario`
--

DROP TABLE IF EXISTS `tbl_ms_preguntas_usuario`;
CREATE TABLE IF NOT EXISTS `tbl_ms_preguntas_usuario` (
  `Id_Pregunta` int NOT NULL,
  `Respuesta` varchar(100) NOT NULL,
  `Id_Usuario` int NOT NULL,
  PRIMARY KEY (`Id_Pregunta`),
  KEY `Id_Usuario_PreguntasUsuario_idx` (`Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_ms_preguntas_usuario`
--

INSERT INTO `tbl_ms_preguntas_usuario` (`Id_Pregunta`, `Respuesta`, `Id_Usuario`) VALUES
(1, 'Rosado', 1),
(2, 'Stalin', 1),
(3, '1990', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_objetos`
--

DROP TABLE IF EXISTS `tbl_objetos`;
CREATE TABLE IF NOT EXISTS `tbl_objetos` (
  `Id_Objeto` int NOT NULL AUTO_INCREMENT,
  `Objeto` varchar(100) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Tipo_Objeto` varchar(15) NOT NULL,
  `Creado_Por` varchar(15) DEFAULT NULL,
  `Fecha_Creacion` datetime DEFAULT NULL,
  `Modificado_Por` varchar(15) DEFAULT NULL,
  `Fecha_Modificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`Id_Objeto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_objetos`
--

INSERT INTO `tbl_objetos` (`Id_Objeto`, `Objeto`, `Descripcion`, `Tipo_Objeto`, `Creado_Por`, `Fecha_Creacion`, `Modificado_Por`, `Fecha_Modificacion`) VALUES
(1, 'Dashboard', 'Dashboard', 'E Y S', 'JUAN PEREZ', '2022-02-02 00:00:00', 'JUAN PEREZ', '2022-02-04 00:00:00'),
(2, 'Usuarios', 'pantalla donde se muestran los usuarios del sistema', 'E Y S', 'JUAN PEREZ', '2022-02-02 00:00:00', 'JUAN PEREZ', '2022-02-04 00:00:00'),
(3, 'Inventario', 'pantalla donde se muestran los productos en stock', 'E Y S', 'JUAN PEREZ', '2022-02-02 00:00:00', 'JUAN PEREZ', '2022-02-04 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pedido`
--

DROP TABLE IF EXISTS `tbl_pedido`;
CREATE TABLE IF NOT EXISTS `tbl_pedido` (
  `Id_Pedido` int NOT NULL,
  `Id_Cliente` int DEFAULT NULL,
  `Numero_Factura` int DEFAULT NULL,
  `Fecha_Pedido` datetime DEFAULT NULL,
  `Lugar_Entrega` varchar(45) DEFAULT NULL,
  `Subtotal` decimal(18,0) DEFAULT NULL,
  `ISV` decimal(18,0) DEFAULT NULL,
  `Total` decimal(18,0) DEFAULT NULL,
  `Id_Forma_de_Pago` int DEFAULT NULL,
  `Fecha_Facturacion` datetime DEFAULT NULL,
  `Id_Tipo_pedido` int DEFAULT NULL,
  `Id_Estado_Pedido` int DEFAULT NULL,
  PRIMARY KEY (`Id_Pedido`),
  KEY `Id_Forma_de_Pago_idx` (`Id_Forma_de_Pago`),
  KEY `Id_Cliente_idx` (`Id_Cliente`),
  KEY `Id_Tipo_Pedido_idx` (`Id_Tipo_pedido`),
  KEY `Id_Estado_idx` (`Id_Estado_Pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_pedido`
--

INSERT INTO `tbl_pedido` (`Id_Pedido`, `Id_Cliente`, `Numero_Factura`, `Fecha_Pedido`, `Lugar_Entrega`, `Subtotal`, `ISV`, `Total`, `Id_Forma_de_Pago`, `Fecha_Facturacion`, `Id_Tipo_pedido`, `Id_Estado_Pedido`) VALUES
(1000, 1, 1, '2023-02-15 00:00:00', 'colonia miraflores', '300', '50', '350', 1, '2023-02-15 00:00:00', 2, 1),
(1001, 2, 2131, '2023-02-15 00:00:00', 'colonia 13 de mayo', '250', '25', '275', 2, '2023-02-15 00:00:00', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pedido_descuento`
--

DROP TABLE IF EXISTS `tbl_pedido_descuento`;
CREATE TABLE IF NOT EXISTS `tbl_pedido_descuento` (
  `Id_PedidoDescuento` int NOT NULL,
  `Id_Descuento` int NOT NULL,
  `Id_Pedido` int NOT NULL,
  `Porcentaje_Descuento` decimal(10,0) DEFAULT NULL,
  `Total_Descontado` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`Id_PedidoDescuento`),
  KEY `Id_Descuento_idx` (`Id_Descuento`),
  KEY `Id_PedidoDescuento_idx` (`Id_Pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_pedido_descuento`
--

INSERT INTO `tbl_pedido_descuento` (`Id_PedidoDescuento`, `Id_Descuento`, `Id_Pedido`, `Porcentaje_Descuento`, `Total_Descontado`) VALUES
(1, 1, 1000, '0', '105'),
(2, 1, 1001, '1', '200'),
(3, 1, 1000, '0', '30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pedido_promocion`
--

DROP TABLE IF EXISTS `tbl_pedido_promocion`;
CREATE TABLE IF NOT EXISTS `tbl_pedido_promocion` (
  `Id_Promocion` int NOT NULL,
  `Id_Pedido` int NOT NULL,
  `Cantidad_Producto` int DEFAULT NULL,
  PRIMARY KEY (`Id_Promocion`),
  KEY `Id_Pedido_idx` (`Id_Pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_pedido_promocion`
--

INSERT INTO `tbl_pedido_promocion` (`Id_Promocion`, `Id_Pedido`, `Cantidad_Producto`) VALUES
(1, 1000, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_permisos`
--

DROP TABLE IF EXISTS `tbl_permisos`;
CREATE TABLE IF NOT EXISTS `tbl_permisos` (
  `Id_Rol` int NOT NULL,
  `IdObjeto` int DEFAULT NULL,
  `Permiso_Insercion` int NOT NULL,
  `Permiso_Eliminacion` int NOT NULL,
  `Permiso_Actualizacion` int NOT NULL,
  `Permiso_Consultar` int NOT NULL,
  `Creado_Por` varchar(15) DEFAULT NULL,
  `Fecha_Creacion` datetime DEFAULT NULL,
  `Modificado_Por` varchar(15) DEFAULT NULL,
  `Fecha_Modificacion` datetime DEFAULT NULL,
  KEY `Id_Objeto_Permiso_idx` (`IdObjeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_permisos`
--

INSERT INTO `tbl_permisos` (`Id_Rol`, `IdObjeto`, `Permiso_Insercion`, `Permiso_Eliminacion`, `Permiso_Actualizacion`, `Permiso_Consultar`, `Creado_Por`, `Fecha_Creacion`, `Modificado_Por`, `Fecha_Modificacion`) VALUES
(1, 1, 1, 1, 1, 1, 'JUAN PEREZ', '2022-10-25 00:00:00', 'JUAN PEREZ', '2022-10-27 00:00:00'),
(2, 2, 1, 1, 1, 1, 'JUAN PEREZ', '2022-10-25 00:00:00', 'JUAN PEREZ', '2022-10-27 00:00:00'),
(3, 3, 0, 0, 0, 1, 'JUAN PEREZ', '2022-10-25 00:00:00', 'JUAN PEREZ', '2022-10-27 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_producto`
--

DROP TABLE IF EXISTS `tbl_producto`;
CREATE TABLE IF NOT EXISTS `tbl_producto` (
  `Codigo_Producto` int NOT NULL,
  `Nombre_Producto` varchar(45) DEFAULT NULL,
  `Precio_Producto` varchar(45) DEFAULT NULL,
  `Unidad_Medida` varchar(45) DEFAULT NULL,
  `Cantidad_Minima` int DEFAULT NULL,
  `Cantidad_Maxima` int DEFAULT NULL,
  `Id_Categoria` int DEFAULT NULL,
  PRIMARY KEY (`Codigo_Producto`),
  KEY `Id_Categoria_idx` (`Id_Categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_producto`
--

INSERT INTO `tbl_producto` (`Codigo_Producto`, `Nombre_Producto`, `Precio_Producto`, `Unidad_Medida`, `Cantidad_Minima`, `Cantidad_Maxima`, `Id_Categoria`) VALUES
(1230, 'Azucar', '50', '5 libras', 5, 100, 1),
(1231, 'Levadura', '50', '5 libras', 5, 50, 1),
(1234, 'Vino', '250', '2 Litros', 5, 500, 2),
(1235, 'Jalea', '100', '200 ml', 5, 200, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_promocion_producto`
--

DROP TABLE IF EXISTS `tbl_promocion_producto`;
CREATE TABLE IF NOT EXISTS `tbl_promocion_producto` (
  `Id_Promocion_Producto` int NOT NULL,
  `Id_Promocion` int DEFAULT NULL,
  `Codigo_Producto` int DEFAULT NULL,
  `Cantidad` int DEFAULT NULL,
  PRIMARY KEY (`Id_Promocion_Producto`),
  KEY `Codigo_Producto_idx` (`Codigo_Producto`),
  KEY `Id_Promocion_idx` (`Id_Promocion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_promocion_producto`
--

INSERT INTO `tbl_promocion_producto` (`Id_Promocion_Producto`, `Id_Promocion`, `Codigo_Producto`, `Cantidad`) VALUES
(1, 1, 1234, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_promoción`
--

DROP TABLE IF EXISTS `tbl_promoción`;
CREATE TABLE IF NOT EXISTS `tbl_promoción` (
  `Id_Promocion` int NOT NULL,
  `nombre_Promocion` varchar(45) DEFAULT NULL,
  `Precio` decimal(10,0) DEFAULT NULL,
  `FechaInicio_Promoción` datetime DEFAULT NULL,
  `FechaIFinal_Promoción` datetime DEFAULT NULL,
  PRIMARY KEY (`Id_Promocion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_promoción`
--

INSERT INTO `tbl_promoción` (`Id_Promocion`, `nombre_Promocion`, `Precio`, `FechaInicio_Promoción`, `FechaIFinal_Promoción`) VALUES
(1, '2*1', '500', '2022-12-31 00:00:00', '2023-03-31 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_proveedores`
--

DROP TABLE IF EXISTS `tbl_proveedores`;
CREATE TABLE IF NOT EXISTS `tbl_proveedores` (
  `Id_Proveedor` int NOT NULL,
  `Nombre_Proveedor` varchar(45) DEFAULT NULL,
  `RTN_Proveedor` varchar(45) DEFAULT NULL,
  `Telefono_Proveedor` varchar(45) DEFAULT NULL,
  `Correo_Proveedor` varchar(45) DEFAULT NULL,
  `Direccion_Proveedor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_proveedores`
--

INSERT INTO `tbl_proveedores` (`Id_Proveedor`, `Nombre_Proveedor`, `RTN_Proveedor`, `Telefono_Proveedor`, `Correo_Proveedor`, `Direccion_Proveedor`) VALUES
(1, 'Proveedor 1', '0801-1994-102242', '7291-1234', '@Proveedor1', 'Colonia miraflores'),
(2, 'Proveedor 2', '0801-1994-102212', '2345-1234', '@Proveedor2', 'Colonia loarque'),
(3, 'Proveedor 3', '0801-1994-102223', '1234-1232', '@Proveedor3', 'Colonia Tocontin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_receta`
--

DROP TABLE IF EXISTS `tbl_receta`;
CREATE TABLE IF NOT EXISTS `tbl_receta` (
  `Id_Receta` int NOT NULL,
  `Codigo_Producto` int DEFAULT NULL,
  `Cantidad_Producto` int DEFAULT NULL,
  `Codigo_Producto_Usado` int DEFAULT NULL,
  PRIMARY KEY (`Id_Receta`),
  KEY `Codigo_Producto_idx` (`Codigo_Producto`),
  KEY `Producto_Usado_idx` (`Codigo_Producto_Usado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_receta`
--

INSERT INTO `tbl_receta` (`Id_Receta`, `Codigo_Producto`, `Cantidad_Producto`, `Codigo_Producto_Usado`) VALUES
(1, 1230, 4, 1230),
(2, 1231, 3, 1231);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
CREATE TABLE IF NOT EXISTS `tbl_roles` (
  `Id_Rol` int NOT NULL AUTO_INCREMENT,
  `Rol` varchar(30) NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Creado_Por` varchar(15) DEFAULT NULL,
  `Fecha_Creacion_Rol` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Modificado_Por` varchar(15) DEFAULT NULL,
  `Fecha_Modificacion_Rol` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id_Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_roles`
--

INSERT INTO `tbl_roles` (`Id_Rol`, `Rol`, `Descripcion`, `Creado_Por`, `Fecha_Creacion_Rol`, `Modificado_Por`, `Fecha_Modificacion_Rol`) VALUES
(1, 'Administrador', 'Rol con todos los permisos para la administrar el sistema', 'Admi', '2022-12-21 00:00:00', 'Admi', '2022-12-22 00:00:00'),
(2, 'Vendedor', 'Rol con permiso para facturacion y ventas', 'Admi', '2022-12-21 00:00:00', 'Admi', '2022-12-22 00:00:00'),
(3, 'Inventario', 'Rol con permiso para administrar compras e inventario', 'Admi', '2022-12-21 00:00:00', 'Admi', '2022-12-22 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_talonario_cai`
--

DROP TABLE IF EXISTS `tbl_talonario_cai`;
CREATE TABLE IF NOT EXISTS `tbl_talonario_cai` (
  `Id_Talonario_CAI` int NOT NULL,
  `Rango_Inicial` varchar(45) DEFAULT NULL,
  `Rango_Final` varchar(45) DEFAULT NULL,
  `Numero_CAI` int DEFAULT NULL,
  `Fecha_Vencimiento` datetime DEFAULT NULL,
  `Rango_Actual` varchar(45) DEFAULT NULL,
  `Id_Usuario` int DEFAULT NULL,
  PRIMARY KEY (`Id_Talonario_CAI`),
  KEY `Id_Codigo_Id_TalonarioCAI_idx` (`Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_talonario_cai`
--

INSERT INTO `tbl_talonario_cai` (`Id_Talonario_CAI`, `Rango_Inicial`, `Rango_Final`, `Numero_CAI`, `Fecha_Vencimiento`, `Rango_Actual`, `Id_Usuario`) VALUES
(1, '50', '100', 1, '2023-12-21 00:00:00', '1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_movimiento`
--

DROP TABLE IF EXISTS `tbl_tipo_movimiento`;
CREATE TABLE IF NOT EXISTS `tbl_tipo_movimiento` (
  `Id_Tipo_Movimiento` int NOT NULL,
  `Nombre_Movimiento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Tipo_Movimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_tipo_movimiento`
--

INSERT INTO `tbl_tipo_movimiento` (`Id_Tipo_Movimiento`, `Nombre_Movimiento`) VALUES
(1, 'Entrada'),
(2, 'Salida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_pedido`
--

DROP TABLE IF EXISTS `tbl_tipo_pedido`;
CREATE TABLE IF NOT EXISTS `tbl_tipo_pedido` (
  `Id_Tipo_pedido` int NOT NULL,
  `Nombre_TipoPedido` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Tipo_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_tipo_pedido`
--

INSERT INTO `tbl_tipo_pedido` (`Id_Tipo_pedido`, `Nombre_TipoPedido`) VALUES
(1, 'Por mayor'),
(2, 'Al detalle');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

DROP TABLE IF EXISTS `tbl_usuario`;
CREATE TABLE IF NOT EXISTS `tbl_usuario` (
  `Id_Usuario` int NOT NULL,
  `Usuario` varchar(15) NOT NULL,
  `Nombre_Usuario` varchar(100) NOT NULL,
  `Telefono` int NOT NULL,
  `Estado_Usuario` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Contrasena` varchar(100) NOT NULL,
  `Id_Rol` int NOT NULL,
  `Fecha_Ultima_Conexion` datetime DEFAULT NULL,
  `Preguntas_Contestadas` int NOT NULL,
  `Primer_Ingreso` int NOT NULL,
  `Fecha_Vencimiento` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Correo` varchar(50) NOT NULL,
  `Creado_Por` varchar(15) DEFAULT NULL,
  `Fecha_Creacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Modificado_Por` varchar(15) DEFAULT NULL,
  `Fecha_Modificacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `token` varchar(100) NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`Id_Usuario`),
  KEY `Id_Rol_idx` (`Id_Rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`Id_Usuario`, `Usuario`, `Nombre_Usuario`, `Telefono`, `Estado_Usuario`, `Contrasena`, `Id_Rol`, `Fecha_Ultima_Conexion`, `Preguntas_Contestadas`, `Primer_Ingreso`, `Fecha_Vencimiento`, `Correo`, `Creado_Por`, `Fecha_Creacion`, `Modificado_Por`, `Fecha_Modificacion`, `token`, `status`) VALUES
(1, 'admin', 'Mauricio Vargas', 0, '1', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 1, '2023-02-06 00:00:00', 1, 1, '2024-02-06 00:00:00', 'mauriciovargastm@gmail.com', 'Administrador', '2023-02-06 00:00:00', 'Administrador', '2023-03-10 18:33:05', '', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_compra`
--
ALTER TABLE `tbl_compra`
  ADD CONSTRAINT `Id_Proveedor_Compra` FOREIGN KEY (`Id_Proveedor`) REFERENCES `tbl_proveedores` (`Id_Proveedor`),
  ADD CONSTRAINT `Id_Usuario_Compra` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_usuario` (`Id_Usuario`);

--
-- Filtros para la tabla `tbl_detalle pedido`
--
ALTER TABLE `tbl_detalle pedido`
  ADD CONSTRAINT `Codigo_Producto_DetallePedido` FOREIGN KEY (`Codigo_Producto`) REFERENCES `tbl_producto` (`Codigo_Producto`),
  ADD CONSTRAINT `Id_Pedido_DetallePedido` FOREIGN KEY (`Id_Pedido`) REFERENCES `tbl_pedido` (`Id_Pedido`);

--
-- Filtros para la tabla `tbl_detalle_compra`
--
ALTER TABLE `tbl_detalle_compra`
  ADD CONSTRAINT `Id_Compra_DetalleCompra` FOREIGN KEY (`Id_Compra`) REFERENCES `tbl_compra` (`Id_Compra`);

--
-- Filtros para la tabla `tbl_inventario`
--
ALTER TABLE `tbl_inventario`
  ADD CONSTRAINT `Id_Producto_Inventario` FOREIGN KEY (`Codigo_Producto`) REFERENCES `tbl_producto` (`Codigo_Producto`);

--
-- Filtros para la tabla `tbl_movimiento _inventario`
--
ALTER TABLE `tbl_movimiento _inventario`
  ADD CONSTRAINT `Codigo_Producto_MovimientoInventario` FOREIGN KEY (`Codigo_Producto`) REFERENCES `tbl_producto` (`Codigo_Producto`),
  ADD CONSTRAINT `Id_Tipo_InventarioM` FOREIGN KEY (`Id_Tipo_Movimiento`) REFERENCES `tbl_tipo_movimiento` (`Id_Tipo_Movimiento`),
  ADD CONSTRAINT `Id_Usuario_MovimientoInventario` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_usuario` (`Id_Usuario`);

--
-- Filtros para la tabla `tbl_ms_bitacora`
--
ALTER TABLE `tbl_ms_bitacora`
  ADD CONSTRAINT `Id_Objeto_Bitacora` FOREIGN KEY (`Id_Objeto`) REFERENCES `tbl_objetos` (`Id_Objeto`),
  ADD CONSTRAINT `Id_Usuario_Bitacora` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_usuario` (`Id_Usuario`);

--
-- Filtros para la tabla `tbl_ms_hist_constraseña`
--
ALTER TABLE `tbl_ms_hist_constraseña`
  ADD CONSTRAINT `Id_Usuario_Hist` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_usuario` (`Id_Usuario`);

--
-- Filtros para la tabla `tbl_ms_parametros`
--
ALTER TABLE `tbl_ms_parametros`
  ADD CONSTRAINT `Id_Usuario_Parametros` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_usuario` (`Id_Usuario`);

--
-- Filtros para la tabla `tbl_ms_preguntas`
--
ALTER TABLE `tbl_ms_preguntas`
  ADD CONSTRAINT `Id_Pregunta_Preguntas` FOREIGN KEY (`Id_Pregunta`) REFERENCES `tbl_ms_preguntas_usuario` (`Id_Pregunta`);

--
-- Filtros para la tabla `tbl_ms_preguntas_usuario`
--
ALTER TABLE `tbl_ms_preguntas_usuario`
  ADD CONSTRAINT `Id_Usuario_PreguntasUsuario` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_usuario` (`Id_Usuario`);

--
-- Filtros para la tabla `tbl_pedido`
--
ALTER TABLE `tbl_pedido`
  ADD CONSTRAINT `Id_Cliente_Pedido` FOREIGN KEY (`Id_Cliente`) REFERENCES `tbl_cliente` (`Id_Cliente`),
  ADD CONSTRAINT `Id_Estado_Pedido` FOREIGN KEY (`Id_Estado_Pedido`) REFERENCES `tbl_estado_pedido` (`Id_Estado_Pedido`),
  ADD CONSTRAINT `Id_Forma_de_Pago_Pedido` FOREIGN KEY (`Id_Forma_de_Pago`) REFERENCES `tbl_forma de pago` (`id_forma_de_pago`),
  ADD CONSTRAINT `Id_Tipo_Pedido_Pedido` FOREIGN KEY (`Id_Tipo_pedido`) REFERENCES `tbl_tipo_pedido` (`Id_Tipo_pedido`);

--
-- Filtros para la tabla `tbl_pedido_descuento`
--
ALTER TABLE `tbl_pedido_descuento`
  ADD CONSTRAINT `Id_Descuento_PedidoDescuento` FOREIGN KEY (`Id_Descuento`) REFERENCES `tbl_descuentos` (`Id_Descuento`),
  ADD CONSTRAINT `Id_PedidoDescuento_PedidoDescuento` FOREIGN KEY (`Id_Pedido`) REFERENCES `tbl_pedido` (`Id_Pedido`);

--
-- Filtros para la tabla `tbl_pedido_promocion`
--
ALTER TABLE `tbl_pedido_promocion`
  ADD CONSTRAINT `Id_Pedido_PedidoPromocion` FOREIGN KEY (`Id_Pedido`) REFERENCES `tbl_pedido` (`Id_Pedido`),
  ADD CONSTRAINT `Id_Promocion_PedidoPromocion` FOREIGN KEY (`Id_Promocion`) REFERENCES `tbl_promoción` (`Id_Promocion`);

--
-- Filtros para la tabla `tbl_producto`
--
ALTER TABLE `tbl_producto`
  ADD CONSTRAINT `Id_Categoria_Producto` FOREIGN KEY (`Id_Categoria`) REFERENCES `tbl_categoria` (`Id_Categoria`);

--
-- Filtros para la tabla `tbl_promocion_producto`
--
ALTER TABLE `tbl_promocion_producto`
  ADD CONSTRAINT `Codigo_Producto_PromocionProducto` FOREIGN KEY (`Codigo_Producto`) REFERENCES `tbl_producto` (`Codigo_Producto`),
  ADD CONSTRAINT `Id_Promocion_PromocionProducto` FOREIGN KEY (`Id_Promocion`) REFERENCES `tbl_pedido_promocion` (`Id_Promocion`);

--
-- Filtros para la tabla `tbl_receta`
--
ALTER TABLE `tbl_receta`
  ADD CONSTRAINT `Codigo_Producto_Receta` FOREIGN KEY (`Codigo_Producto`) REFERENCES `tbl_producto` (`Codigo_Producto`),
  ADD CONSTRAINT `Producto_Usado_Receta` FOREIGN KEY (`Codigo_Producto_Usado`) REFERENCES `tbl_producto` (`Codigo_Producto`);

--
-- Filtros para la tabla `tbl_talonario_cai`
--
ALTER TABLE `tbl_talonario_cai`
  ADD CONSTRAINT `Id_Codigo_Id_TalonarioCAI` FOREIGN KEY (`Id_Usuario`) REFERENCES `tbl_usuario` (`Id_Usuario`);

--
-- Filtros para la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD CONSTRAINT `Id_Rol_Usuario` FOREIGN KEY (`Id_Rol`) REFERENCES `tbl_roles` (`Id_Rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
