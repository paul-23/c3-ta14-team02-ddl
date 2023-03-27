DROP DATABASE IF EXISTS Ejercicio03_14;
CREATE DATABASE Ejercicio03_14;
USE Ejercicio03_14;

CREATE TABLE fabricantes (
	codigo INT NOT NULL,
    nombre NVARCHAR(100),
    PRIMARY KEY (codigo)
);

CREATE TABLE articulos (
	codigo INT NOT NULL,
    nombre NVARCHAR(100),
    precio INT,
    fabricante INT,
    codigo_fabricantes INT NOT NULL,
    PRIMARY KEY (codigo),
    FOREIGN KEY (codigo_fabricantes)
    REFERENCES fabricantes (codigo)
    ON DELETE CASCADE
	ON UPDATE CASCADE
);