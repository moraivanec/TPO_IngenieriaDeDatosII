CREATE DATABASE TPO_Facturacion;
USE TPO_Facturacion;

CREATE TABLE E01_CLIENTE (
nro_cliente INT PRIMARY KEY,
nombre VARCHAR(45) NOT NULL,
apellido VARCHAR(45) NOT NULL,
direccion VARCHAR(45),
activo TINYINT NOT NULL
);

CREATE TABLE E01_PRODUCTO (
codigo_producto INT PRIMARY KEY,
marca VARCHAR(45) NOT NULL,
nombre VARCHAR(45) NOT NULL,
descripcion VARCHAR(45),
precio FLOAT NOT NULL,
stock INT NOT NULL
);

CREATE TABLE E01_TELEFONO (
codigo_area INT,
nro_telefono INT,
tipo CHAR(1) NOT NULL,
nro_cliente INT NOT NULL,
PRIMARY KEY (codigo_area, nro_telefono),
FOREIGN KEY (nro_cliente) REFERENCES E01_CLIENTE(nro_cliente)
);

CREATE TABLE E01_FACTURA (
nro_factura INT PRIMARY KEY,
fecha DATE NOT NULL,
total_sin_iva DOUBLE NOT NULL,
iva DOUBLE NOT NULL,
total_con_iva DOUBLE NOT NULL,
nro_cliente INT NOT NULL, 
FOREIGN KEY (nro_cliente) REFERENCES E01_CLIENTE(nro_cliente)
);

CREATE TABLE E01_DETALLE_FACTURA (
nro_factura INT,
nro_item INT,
cantidad FLOAT NOT NULL,
codigo_producto INT NOT NULL,
PRIMARY KEY (nro_factura, nro_item),
FOREIGN KEY (nro_factura) REFERENCES E01_FACTURA(nro_factura),
FOREIGN KEY (codigo_producto) REFERENCES E01_PRODUCTO(codigo_producto)
);