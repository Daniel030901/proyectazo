DROP DATABASE IF EXISTS medicina;
CREATE DATABASE medicina;
USE medicina;

CREATE TABLE medicina( 
id_medicina INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nombre_medicina VARCHAR(30) NOT NULL,
size VARCHAR(100),
caducidad VARCHAR(50),
cantidad_produtos INT NOT NULL);

CREATE TABLE paciente(
id_paciente INT PRIMARY KEY NOT NULL,
nombre_paciente VARCHAR(150));

CREATE TABLE doctor(
id_doctor INT PRIMARY KEY NOT NULL,
nombre_doctor VARCHAR (150),
cedula INT NOT NULL);


CREATE TABLE receta (
id_receta INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
fecha VARCHAR(50),
sintomas_dosis VARCHAR(2000) NULL,
id_medicina INT NOT NULL,
id_paciente INT NOT NULL,
id_doctor INT NOT NULL,

CONSTRAINT id_medicina FOREIGN KEY (id_medicina) REFERENCES medicina(id_medicina),
CONSTRAINT id_paciente FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
CONSTRAINT id_doctor FOREIGN KEY (id_doctor) REFERENCES doctor(id_doctor));








