CREATE DATABASE ejercicio8;
USE ejercicio8;

CREATE TABLE Piezas (
Codigo INT AUTO_INCREMENT PRIMARY KEY,
Nombre NVARCHAR(100));

CREATE TABLE Proveedores (
  Id CHAR(4) PRIMARY KEY,
  Nombre NVARCHAR(100));

CREATE TABLE Suministra (
CodigoPieza INT,
IdProveedor CHAR(4),
Precio INT,
PRIMARY KEY(CodigoPieza,IdProveedor),
KEY(CodigoPieza),
FOREIGN KEY (CodigoPieza) REFERENCES Piezas(Codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (IdProveedor) REFERENCES Proveedores(Id)
ON DELETE CASCADE ON UPDATE CASCADE);