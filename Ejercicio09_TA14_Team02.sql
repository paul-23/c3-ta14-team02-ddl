DROP DATABASE IF EXISTS Ejercicio09_14;
CREATE DATABASE Ejercicio09_14;
USE Ejercicio09_14;

CREATE TABLE proyecto (
	id CHAR(4),
    nombre NVARCHAR(255),
    horas INT,
    PRIMARY KEY (id)
);

CREATE TABLE cientificos (
	DNI VARCHAR(8),
    nombre_apels NVARCHAR(255),
    PRIMARY KEY (DNI)
);

CREATE TABLE asignado_a (
	cientifico VARCHAR(8),
    proyecto CHAR(4),
    FOREIGN KEY (cientifico) REFERENCES cientificos (DNI) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (proyecto) REFERENCES proyecto (id) ON DELETE CASCADE ON UPDATE CASCADE
);