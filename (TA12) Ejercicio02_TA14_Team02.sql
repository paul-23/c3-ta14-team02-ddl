DROP DATABASE IF EXISTS ejercicio2;
CREATE DATABASE ejercicio2;
USE ejercicio2;

CREATE TABLE alumno(
dni VARCHAR(9),
direccion VARCHAR(100),
nombre VARCHAR(50),
telefono INT,
edad INT,
PRIMARY KEY (dni));

CREATE TABLE empresa(
cif VARCHAR(15),
nombre VARCHAR(50),
telefono INT,
direccion VARCHAR(100),
dni VARCHAR(9),
FOREIGN KEY (dni) REFERENCES alumno (dni) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE profesor(
dni VARCHAR(9),
nombre VARCHAR(50),
apellidos VARCHAR(70),
direccion VARCHAR(100),
telefono INT);

CREATE TABLE tipoCurso(
IdCurso INT AUTO_INCREMENT PRIMARY KEY,
programa VARCHAR(100),
HorasDuracion INT,
titulo VARCHAR(100)
);

CREATE TABLE curso(
NumeroCurso INT,
FechaInicio DATE,
FechaFin DATE,
dni VARCHAR(9),
IdCurso INT,
primary key (NumeroCurso),
FOREIGN KEY (IdCurso) REFERENCES tipoCurso (IdCurso) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE asistir(
dni VARCHAR(9),
NumeroCurso INT,
Nota INT,
FOREIGN KEY (dni) REFERENCES alumno (dni) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (NumeroCurso) REFERENCES curso (NumeroCurso) ON DELETE CASCADE ON UPDATE CASCADE
);