CREATE DATABASE ejercicio11;
USE ejercicio11;

CREATE TABLE Facultad(
Codigo INT AUTO_INCREMENT PRIMARY KEY,
Nombre NVARCHAR(100));

CREATE TABLE Investigadores(
DNI VARCHAR(8) PRIMARY KEY,
NomApels NVARCHAR(255),
Facultad INT,
FOREIGN KEY(facultad) REFERENCES Facultad(Codigo));

CREATE TABLE Equipos(
NumSerie CHAR(4) PRIMARY KEY,
Nombre NVARCHAR(100),
Facultad INT,
FOREIGN KEY (Facultad) REFERENCES Facultad(Codigo));

CREATE TABLE Reserva(
DNI varchar(8),
NumSerie char(4),
Comienzo DATETIME,
Fin DATETIME,
primary key (DNI, NumSerie),
FOREIGN KEY (DNI) REFERENCES Investigadores(DNI),
FOREIGN KEY (NumSerie) REFERENCES Equipos(NumSerie));