DROP DATABASE IF EXISTS pruebas;
CREATE DATABASE pruebas;

CREATE TABLE pruebas.usuario (
  id_usuario 	INT(11) NOT NULL AUTO_INCREMENT,
  nombre 		VARCHAR(100) NOT NULL,
  password		VARCHAR(20) NOT NULL,
  activo 		INT(11) NOT NULL,
  PRIMARY KEY (id_usuario)
);

CREATE TABLE pruebas.perfil_usuario (
  id_perfil_usuario	INT(11) NOT NULL AUTO_INCREMENT,
  id_usuario 		INT(11) NOT NULL,
  nombre 			VARCHAR(100) NOT NULL,
  apellido_p		VARCHAR(50) DEFAULT NULL,
  apellido_m		VARCHAR(50) DEFAULT NULL,
  sexo				VARCHAR(1) DEFAULT NULL,
  mayor_de_edad		INT(11) NOT NULL,
  PRIMARY KEY (id_perfil_usuario)
);

ALTER TABLE pruebas.perfil_usuario
ADD FOREIGN KEY (id_usuario)
REFERENCES pruebas.usuario(id_usuario);

INSERT INTO pruebas.usuario
	(nombre, password, activo) 
VALUES 
	('usuario', 'secreto', '1');
	
INSERT INTO pruebas.usuario
	(nombre, password, activo) 
VALUES 
	('anonimo', 'anonimo', '1');
	
INSERT INTO pruebas.perfil_usuario
	(id_usuario, nombre, apellido_p, apellido_m, sexo,  mayor_de_edad) 
VALUES 
	(1, 'Sinesio Ivan', 'Carrillo', 'Heredia', 'H', 1);
	
INSERT INTO pruebas.perfil_usuario
	(id_usuario, nombre, apellido_p, apellido_m, sexo,  mayor_de_edad) 
VALUES 
	(1, 'Otro Nombre', 'De Prueba', 'Menor de Edad', 'H', 0);