DROP DATABASE IF EXISTS Ejercicio12_14;
CREATE DATABASE Ejercicio12_14;
USE Ejercicio12_14;

CREATE TABLE profesores (
	nombre VARCHAR(15) UNIQUE,
	apellido1 VARCHAR(15) UNIQUE,
	apellido2 VARCHAR(15) UNIQUE,
	dni VARCHAR(9) PRIMARY KEY,
	direccion VARCHAR(100),
	titulo VARCHAR(50),
	gana INT NOT NULL
);

CREATE TABLE curso (
	nombre_curso VARCHAR(15) UNIQUE,
	cod_curso CHAR(4) PRIMARY KEY,
	dni_profesor VARCHAR(9),
	maximo_alumnos INT,
	fecha_inicio DATE,
	fecha_fin DATE,
	num_horas INT NOT NULL,
	FOREIGN KEY (dni_profesor) REFERENCES profesores (dni),
	CONSTRAINT comprobar_fechas CHECK (fecha_inicio < fecha_fin)
);

CREATE TABLE alumnos (
	nombre VARCHAR(15),
	apellido1 VARCHAR(15),
	apellido2 VARCHAR(15),
	dni VARCHAR(9) PRIMARY KEY,
	direccion VARCHAR(100),
	fecha_nacimiento DATE,
	sexo char(1),
	curso CHAR(4) NOT NULL,
	FOREIGN KEY (curso) REFERENCES curso (cod_curso)  ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT comprobar_sexo CHECK (sexo IN ('H', 'M'))
);
