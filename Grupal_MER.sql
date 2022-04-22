CREATE TABLE `cliente` (
  `idcliente` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `direcciones_envio` varchar(255),
  `saldo` float
);

CREATE TABLE `articulo` (
  `idarticulo` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `fabrica` varchar(255),
  `existencias` int,
  `fabrica_alt` varchar(255)
);

CREATE TABLE `pedido` (
  `idcliente` int,
  `direcciones_envio` varchar(255),
  `fecha_pedido` int,
  `idarticulo` int,
  `cantidad` int,
  `numero_fabrica` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Telefono_contacto` varchar(255)
);

ALTER TABLE `pedido` ADD FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`);

ALTER TABLE `pedido` ADD FOREIGN KEY (`idarticulo`) REFERENCES `articulo` (`idarticulo`);
