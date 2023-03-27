DROP DATABASE IF EXISTS Grandes_Almacenes;

CREATE DATABASE Grandes_Almacenes;
USE Grandes_Almacenes;

CREATE TABLE Productos(
Codigo INT,
Nombre NVARCHAR(100),
Precio INT,
PRIMARY KEY (Codigo)
);

CREATE TABLE Cajeros(
Codigo INT,
NomApels NVARCHAR(255),
PRIMARY KEY (Codigo)
);

CREATE TABLE Maquinas_Registradoras(
Codigo INT,
Piso INT,
PRIMARY KEY (Codigo)
);

CREATE TABLE Venta(
Cajero INT,
Maquina INT,
Producto INT,
PRIMARY KEY (Cajero),
KEY (Maquina),
KEY (Producto),
FOREIGN KEY (Cajero) REFERENCES Cajeros (Codigo) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (Maquina) REFERENCES Maquinas_Registradoras (Codigo) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (Producto) REFERENCES Productos (Codigo) ON UPDATE CASCADE ON DELETE CASCADE
);
