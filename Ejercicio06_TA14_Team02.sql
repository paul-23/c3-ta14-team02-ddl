DROP DATABASE IF EXISTS Ejercicio06_14;
CREATE DATABASE Ejercicio06_14;
USE Ejercicio06_14;

CREATE TABLE peliculas (
	codigo INT,
    nombre NVARCHAR(100),
    calificaciones_edad INT,
    PRIMARY KEY (codigo)
);

CREATE TABLE salas (
	codigo INT,
    nombre NVARCHAR(100),
    pelicula INT,
    PRIMARY KEY (codigo),
    FOREIGN KEY (pelicula) REFERENCES peliculas (codigo)
    ON DELETE CASCADE ON UPDATE CASCADE
);