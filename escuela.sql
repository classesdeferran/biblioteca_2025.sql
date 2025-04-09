CREATE DATABASE IF NOT EXISTS escuela;

-- DROP DATABASE IF EXISTS escuela;
# -- /* */

USE escuela;

CREATE TABLE IF NOT EXISTS alumnos (
id_alumno int NOT NULL auto_increment PRIMARY KEY,
nombre varchar(20) NOT NULL
);

# DROP TABLE IF EXISTS alumnos;

INSERT INTO escuela.alumnos VALUES (1, "Maria");
INSERT INTO alumnos (nombre) VALUES ("Marta");
INSERT INTO alumnos (nombre) VALUES ("Pep"), ("Pol");

UPDATE alumnos 
SET nombre = "Isabel" 
WHERE id_alumno = 3;

DELETE FROM alumnos WHERE nombre = "Isabel";

SELECT * FROM alumnos;

ALTER TABLE alumnos
ADD apellido varchar(50) NOT NULL;

UPDATE alumnos SET apellido = "Pérez" WHERE id_alumno = 1;

ALTER TABLE alumnos
ADD poblacion varchar(50) NOT NULL;

ALTER TABLE alumnos
DROP poblacion ;

ALTER TABLE alumnos
RENAME COLUMN poblacion to codigoPoblacion;

ALTER TABLE alumnos
MODIFY COLUMN codigoPoblacion varchar(5);

DESCRIBE alumnos; 