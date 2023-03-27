DROP DATABASE IF EXISTS Empleados;

CREATE DATABASE Empleados;
USE Empleados;

CREATE TABLE Departamentos(
Codigo INT,
Nombre NVARCHAR(100),
Presupuesto INT,
PRIMARY KEY (Codigo)
);

CREATE TABLE Empleados (
dni VARCHAR(8),
Nombre NVARCHAR(100),
Apellidos NVARCHAR(255),
Departamento INT,
FOREIGN KEY (Departamento) REFERENCES Departamentos (Codigo) ON DELETE CASCADE ON UPDATE CASCADE);
