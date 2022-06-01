CREATE DATABASE IF NOT EXISTS RECETARIO_app;

-- Creating tables

DROP TABLE IF EXISTS Usuario;
CREATE TABLE Usuario(
ID int NOT NULL AUTO_INCREMENT,
nombre varchar(50) NOT NULL,
email varchar(50) NOT NULL,
contraseña varchar(50) NOT NULL,
PRIMARY KEY (`ID`)
);

DROP TABLE IF EXISTS ListaUsuarioEnsalada;
CREATE TABLE ListaUsuarioEnsalada(
ID int NOT NULL AUTO_INCREMENT,
usuarioID int NOT NULL,
ensaladaID int NOT NULL,
PRIMARY KEY (`ID`)
);

DROP TABLE IF EXISTS Ensalada;
CREATE TABLE Ensalada(
ID int NOT NULL AUTO_INCREMENT,
nombre varchar(50) NOT NULL,
descripcion varchar(200),
PRIMARY KEY (`ID`)
);

DROP TABLE IF EXISTS ListaEnsaladaIngrediente;
CREATE TABLE ListaEnsaladaIngrediente(
ID int NOT NULL AUTO_INCREMENT,
ensaladaID int NOT NULL,
ingredienteID int NOT NULL,
PRIMARY KEY (`ID`)
);

DROP TABLE IF EXISTS Ingrediente;
CREATE TABLE Ingrediente(
ID int NOT NULL AUTO_INCREMENT,
nombre varchar(50) NOT NULL,
descripcion varchar(200),
PRIMARY KEY (`ID`)
);

DROP TABLE IF EXISTS ListaIngredienteVitamina;
CREATE TABLE ListaIngredienteVitamina(
ID int NOT NULL AUTO_INCREMENT,
ingredienteID int NOT NULL,
vitaminaID int NOT NULL,
PRIMARY KEY (`ID`)
);

DROP TABLE IF EXISTS Vitamina;
CREATE TABLE Vitamina(
ID int NOT NULL AUTO_INCREMENT,
nombre varchar(50) NOT NULL,
descripcion varchar(200),
PRIMARY KEY (`ID`)
);

DROP TABLE IF EXISTS Proteina;
CREATE TABLE Proteina(
ID int NOT NULL AUTO_INCREMENT,
nombre varchar(50) NOT NULL, 
PRIMARY KEY (`ID`)
);

DROP TABLE IF EXISTS ListaEnsaladaProteina;
CREATE TABLE ListaEnsaladaProteina(
ID int NOT NULL AUTO_INCREMENT,
ensaladaID int NOT NULL,
proteinaID int NOT NULL,
PRIMARY KEY (`ID`)
);

-- Adding FOREIGN KEYS

ALTER TABLE ListaUsuarioEnsalada
ADD foreign key (UsuarioID)
REFERENCES Usuario(ID),
ADD foreign key (EnsaladaID)
REFERENCES Ensalada(ID);

ALTER TABLE ListaEnsaladaIngrediente
ADD foreign key (EnsaladaID)
REFERENCES Ensalada(ID),
ADD foreign key (IngredienteID)
REFERENCES Ingrediente(ID);

ALTER TABLE ListaIngredienteVitamina
ADD foreign key (IngredienteID)
REFERENCES Ingrediente(ID),
ADD foreign key (VitaminaID)
REFERENCES Vitamina(ID);
