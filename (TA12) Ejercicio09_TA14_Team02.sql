DROP DATABASE IF EXISTS Ejercicio09;
CREATE database Ejercicio09;
USE Ejercicio09;

CREATE TABLE Ingredientes (
IngredientesID CHAR(5) PRIMARY KEY,
Nombre VARCHAR(50),
Tipo VARCHAR(20)
);
CREATE TABLE Unidades (
UnidadID CHAR(5) PRIMARY KEY,
Tipo VARCHAR(50),
IngredientesID CHAR(5),
FOREIGN KEY (IngredientesID) REFERENCES Ingredientes (IngredientesID) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE Plato (
PlatoID CHAR(5) PRIMARY KEY,
Nombre VARCHAR(50)
);
CREATE TABLE Receta (
RecetasID CHAR(5) PRIMARY KEY,
Nombre VARCHAR(50),
Cantidad INT,
PlatoID CHAR(5),
FOREIGN KEY (PlatoID) REFERENCES Plato (PlatoID)
ON UPDATE CASCADE
ON DELETE CASCADE
);
CREATE TABLE Componer (
IngredientesID CHAR(5) NOT NULL,
RecetasID CHAR(5) NOT NULL,
Cantidad INT,
FOREIGN KEY (IngredientesID) REFERENCES Ingredientes (IngredientesID),
FOREIGN KEY (RecetasID) REFERENCES Receta (RecetasID)
ON UPDATE CASCADE
ON DELETE CASCADE
);