DROP DATABASE IF EXISTS Ejercicio01_14;
CREATE DATABASE Ejercicio01_14;
USE Ejercicio01_14;

CREATE TABLE estacion (
	identificador MEDIUMINT UNSIGNED NOT NULL,
    latitud VARCHAR(14) NOT NULL,
    longitud VARCHAR(15) NOT NULL,
    altitud MEDIUMINT NOT NULL,
    PRIMARY KEY (identificador)
);

CREATE TABLE muestra (
	identificadorestacion MEDIUMINT UNSIGNED NOT NULL,
    fecha DATE NOT NULL,
    temperaturaminima TINYINT,
    temperaturamaxima TINYINT,
    precipitaciones SMALLINT UNSIGNED,
    humedadminima TINYINT UNSIGNED,
    humedadmaxima TINYINT UNSIGNED,
    velocidadminima SMALLINT UNSIGNED,
    velocidadmaxima SMALLINT UNSIGNED,
    KEY (identificadorestacion),
    FOREIGN KEY (identificadorestacion)
    REFERENCES estacion(identificador)
    ON DELETE NO ACTION
    ON UPDATE CASCADE
);