# Hay que crear una BD llamada 'biblioteca'

CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

# Hay que crear una tabla llamada 'libros'
# Debe contener :
# 	-- id int NOT NULL AUTO_INCREMENT PRIMARY KEY
# 	-- titulo varchar(100) NOT NULL 
# 	-- autor_nombre varchar(50) NOT NULL
# 	-- autor_apellido varchar(100) NULL 
# 	-- year_edition YEAR
#	-- editorial varchar(50) NOT NULL
# 	-- ejemplares smallint UNSIGNED
# 	-- fecha_incorporacion DEFAULT CURRENT_TIMESTAMP

CREATE TABLE libros (
id int NOT NULL auto_increment PRIMARY KEY,
titulo varchar(100) NOT NULL,
autor_nombre varchar(50) NOT NULL,
autor_apellido varchar(100) NULL,
editorial varchar(50) NOT NULL,
year_edition YEAR,
ejemplares smallint UNSIGNED,
fecha_incorporacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DESCRIBE libros;

# Inserta este libro:
# Cien años de soledad
# Gabriel
# García Marquez
# 1990
# Tusquets
# 3

INSERT INTO libros(titulo, autor_nombre, autor_apellido, editorial, year_edition, ejemplares) 
VALUES ("Cien años de soledad", "Gabriel", "García Marquez", "Tusquets", 1990, 3);

INSERT INTO libros(titulo, autor_nombre, autor_apellido, editorial, year_edition, ejemplares) 
VALUES ("El coronel no tiene quien le escriba", "Gabriel", "García Marquez", "Tusquets", 1995, 2);

INSERT INTO libros(titulo, autor_nombre, autor_apellido, editorial, year_edition, ejemplares) 
VALUES ("Python", "Guido", "Van Rossum", "Anaya  Multimedia", 2024, 4);

INSERT INTO libros(titulo, autor_nombre, editorial, year_edition, ejemplares) 
VALUES ("La Odisea", "Homero", "Catedra", 2024, 2);

SELECT * FROM libros;

# Seleccionar los libros cuyo nombre de autor empieza por "G"
SELECT titulo
FROM libros
WHERE autor_nombre like "G%";

# Cuántos libros diferentes tenemos en la biblioteca
# Hay que crear una BD llamada 'biblioteca'

CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

# Hay que crear una tabla llamada 'libros'
# Debe contener :
# 	-- id int NOT NULL AUTO_INCREMENT PRIMARY KEY
# 	-- titulo varchar(100) NOT NULL 
# 	-- autor_nombre varchar(50) NOT NULL
# 	-- autor_apellido varchar(100) NULL 
# 	-- year_edition YEAR
#	-- editorial varchar(50) NOT NULL
# 	-- ejemplares smallint UNSIGNED
# 	-- fecha_incorporacion DEFAULT CURRENT_TIMESTAMP

CREATE TABLE libros (
id int NOT NULL auto_increment PRIMARY KEY,
titulo varchar(100) NOT NULL,
autor_nombre varchar(50) NOT NULL,
autor_apellido varchar(100) NULL,
editorial varchar(50) NOT NULL,
year_edition YEAR,
ejemplares smallint UNSIGNED,
fecha_incorporacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DESCRIBE libros;

# Inserta este libro:
# Cien años de soledad
# Gabriel
# García Marquez
# 1990
# Tusquets
# 3

INSERT INTO libros(titulo, autor_nombre, autor_apellido, editorial, year_edition, ejemplares) 
VALUES ("Cien años de soledad", "Gabriel", "García Marquez", "Tusquets", 1990, 3);

INSERT INTO libros(titulo, autor_nombre, autor_apellido, editorial, year_edition, ejemplares) 
VALUES ("El coronel no tiene quien le escriba", "Gabriel", "García Marquez", "Tusquets", 1995, 2);

INSERT INTO libros(titulo, autor_nombre, autor_apellido, editorial, year_edition, ejemplares) 
VALUES ("Python", "Guido", "Van Rossum", "Anaya  Multimedia", 2024, 4);

INSERT INTO libros(titulo, autor_nombre, editorial, year_edition, ejemplares) 
VALUES ("La Odisea", "Homero", "Catedra", 2024, 2);

SELECT * FROM libros;

# Seleccionar los libros cuyo nombre de autor empieza por "G"
SELECT titulo
FROM libros
WHERE autor_nombre like "G%";

# Cuántos libros diferentes tenemos en la biblioteca
# Hay que crear una BD llamada 'biblioteca'

CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

# Hay que crear una tabla llamada 'libros'
# Debe contener :
# 	-- id int NOT NULL AUTO_INCREMENT PRIMARY KEY
# 	-- titulo varchar(100) NOT NULL 
# 	-- autor_nombre varchar(50) NOT NULL
# 	-- autor_apellido varchar(100) NULL 
# 	-- year_edition YEAR
#	-- editorial varchar(50) NOT NULL
# 	-- ejemplares smallint UNSIGNED
# 	-- fecha_incorporacion DEFAULT CURRENT_TIMESTAMP

CREATE TABLE libros (
id int NOT NULL auto_increment PRIMARY KEY,
titulo varchar(100) NOT NULL,
autor_nombre varchar(50) NOT NULL,
autor_apellido varchar(100) NULL,
editorial varchar(50) NOT NULL,
year_edition YEAR,
ejemplares smallint UNSIGNED,
fecha_incorporacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DESCRIBE libros;

# Inserta este libro:
# Cien años de soledad
# Gabriel
# García Marquez
# 1990
# Tusquets
# 3

INSERT INTO libros(titulo, autor_nombre, autor_apellido, editorial, year_edition, ejemplares) 
VALUES ("Cien años de soledad", "Gabriel", "García Marquez", "Tusquets", 1990, 3);

INSERT INTO libros(titulo, autor_nombre, autor_apellido, editorial, year_edition, ejemplares) 
VALUES ("El coronel no tiene quien le escriba", "Gabriel", "García Marquez", "Tusquets", 1995, 2);

INSERT INTO libros(titulo, autor_nombre, autor_apellido, editorial, year_edition, ejemplares) 
VALUES ("Python", "Guido", "Van Rossum", "Anaya  Multimedia", 2024, 4);

INSERT INTO libros(titulo, autor_nombre, editorial, year_edition, ejemplares) 
VALUES ("La Odisea", "Homero", "Catedra", 2024, 2);

SELECT * FROM libros;

# Seleccionar los libros cuyo nombre de autor empieza por "G"
SELECT titulo
FROM libros
WHERE autor_nombre like "G%";

# Cuántos libros diferentes tenemos en la biblioteca
SELECT COUNT(id) as "número de libros"
FROM libros;

# Cuántos ejemplares tenemos ahora en la biblioteca
SELECT SUM(ejemplares) as "número de ejemplares"
FROM libros;

# Obtener los autores de la biblioteca con repeticiones
SELECT autor_nombre, autor_apellido
FROM libros;

# Obtener los autores de la biblioteca sin repeticiones
SELECT distinct autor_apellido, autor_nombre
FROM libros;

# Obtener los autores de la biblioteca sin repeticiones
SELECT concat(autor_nombre, " ", autor_apellido) as autores
FROM libros;

SELECT concat_ws(" ", autor_nombre, autor_apellido) as autores
FROM libros;

# Promedio de ejemplares que tenemos ahora en la biblioteca
SELECT AVG(ejemplares) as "promedio de ejemplares"
FROM libros;

# ¿De qué título tenemos más ejemplares? <-- Solución mala
SELECT titulo, ejemplares
FROM libros
order by ejemplares DESC
limit 1;

# ¿De qué título tenemos menos ejemplares? <-- Solución mala
SELECT titulo, ejemplares
FROM libros
order by ejemplares ASC
limit 1;

SELECT MIN(ejemplares)
FROM libros;

SELECT max(ejemplares)
FROM libros;

SELECT titulo, ejemplares
FROM libros
WHERE ejemplares = (SELECT MIN(ejemplares)
FROM libros);

SELECT titulo, ejemplares
FROM libros
WHERE ejemplares = 2;

# Añadir columna para el género del libro varchar(20) NOT NULL
ALTER TABLE libros
add COLUMN genero varchar(20) NOT NULL;

describe libros;

# Todos los libros son de género 'ficción' menos Python que es 'programación'
select * from libros;

UPDATE libros SET genero = "ficción";
UPDATE libros SET genero = "programación" WHERE titulo = "Python";


# Añadir 10 títulos más :
# 	-- 2 de programación
# 	-- 2 de poesía
# 	-- 3 de historia
# 	-- 3 de arte
INSERT INTO libros(titulo, autor_nombre, autor_apellido, editorial, year_edition, ejemplares, genero) VALUES
("El arte clásico", "Mary", "Beard", "Cátedra", 2020, 5, "arte"),
("El arte moderno", "Giulio Claudio", "Argan", "Tusquets", 1980, 2, "arte"),
("Historia de Roma", "Enrico", "Montanelli", "Alianza", 1985, 8, "historia");
# Libros de los géneros "arte", "historia" y "programación"
SELECT *
FROM libros
WHERE genero = "arte" or genero = "historia" or genero = "programación";

SELECT *
FROM libros
WHERE genero IN ("arte", "historia", "programación");

# Libros de los géneros que no son "arte", "historia" ni "programación"
SELECT *
FROM libros
WHERE genero NOT IN ("arte", "historia", "programación");

# Libros cuya cantidad de ejemplares está entre 2 y 4
SELECT *
FROM libros
WHERE ejemplares between 2 and 4;

# Necesitamos una tabla nueva para las editoriales
CREATE TABLE editoriales (
id_editorial int NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre_editorial varchar(100) NOT NULL,
ciudad_editorial varchar(100) NULL
);

describe editoriales;
select * FROM libros;


insert into editoriales (nombre_editorial)
SELECT distinct editorial FROM libros;

select * FROM editoriales;

# nombre_editorial ciudad_editorial

# Cuando esté, llenar la tabla con las editoriales 
# que aparecen en la tabla de libros

# Añadir una columna en la tabla libros (id_editorial) con los ids
ALTER TABLE libros
ADD id_editorial int NOT NULL;

# correspondientes a cada editorial de la tabla editoriales
# Eliminar la columna editorial de la tabla libros

select * from libros;

# Formas de obtener información cruzada entre dos tablas
SELECT libros.titulo, editoriales.nombre_editorial
FROM libros, editoriales;

SELECT l.titulo, e.nombre_editorial
FROM libros as l, editoriales as e;

SELECT l.titulo, e.nombre_editorial
FROM libros l, editoriales e
WHERE l.editorial = e.nombre_editorial
;

# Esta es la forma recomendada
SELECT l.titulo, e.nombre_editorial, e.ciudad_editorial
FROM libros l
INNER JOIN editoriales e 
ON l.id_editorial = e.id_editorial;

UPDATE libros l, editoriales e
SET l.id_editorial = e.id_editorial
WHERE l.editorial = e.nombre_editorial;

select * from libros;
select * from editoriales;

ALTER table libros
DROP editorial;

# Necesitamos una tabla para las poblaciones
# poblacion varchar(50)
# id_poblacion

CREATE TABLE poblaciones (
id_poblacion int NOT NULL auto_increment PRIMARY KEY,
poblacion varchar(50) NOT NULL
);

# Que se vinculará a la tabla editoriales
INSERT INTO poblaciones(poblacion)
SELECT distinct ciudad_editorial
FROM editoriales;

select * FROM poblaciones;

select * from editoriales;

ALTER TABLE editoriales
ADD column id_poblacion int NOT NULL;

UPDATE editoriales e, poblaciones p
SET e.id_poblacion = p.id_poblacion
WHERE e.ciudad_editorial = p.poblacion;

ALTER TABLE editoriales
drop ciudad_editorial;

SELECT l.titulo, e.nombre_editorial, p.poblacion
FROM libros l
JOIN editoriales e
ON l.id_editorial = e.id_editorial
JOIN poblaciones p
ON e.id_poblacion = p.id_poblacion;

# Vamos a incorporar los usuarios
# id_usuario NOT NULL
# nombre NOT NULL
# apellido NOT NULL
# fecha de nacimiento
# numero de carnet int UNIQUE NOT NULL
SELECT FLOOR(RAND()*(99999999-10000000 +1))+10000000 as carnet;
# fecha_inscripcion

CREATE TABLE usuarios (
id_usuario int NOT NULL AUTO_INCREMENT,
nombre_usuario varchar(50) NOT NULL,
apellido varchar(100) NOT NULL,
fecha_nacimiento date NULL,
numero_carnet int NOT NULL UNIQUE,
fecha_inscripcion timestamp DEFAULT current_timestamp,
PRIMARY KEY (id_usuario)
);

INSERT INTO `usuarios` (`nombre_usuario`, `apellido`, `fecha_nacimiento`, `numero_carnet`) VALUES
('Carlos', 'Pérez', '1990-03-15', FLOOR(RAND()*(99999999-10000000 +1))+10000000),
('Ana', 'Gómez', '1985-07-22', FLOOR(RAND()*(99999999-10000000 +1))+10000000),
('Luis', 'Martínez', '2000-12-01', FLOOR(RAND()*(99999999-10000000 +1))+10000000),
('María', 'Sánchez', '1995-05-09', FLOOR(RAND()*(99999999-10000000 +1))+10000000),
('José', 'Rodríguez', '1988-10-30', FLOOR(RAND()*(99999999-10000000 +1))+10000000),
('Laura', 'Fernández', '1992-01-18', FLOOR(RAND()*(99999999-10000000 +1))+10000000),
('Pedro', 'Álvarez', '1996-08-25', FLOOR(RAND()*(99999999-10000000 +1))+10000000),
('Lucía', 'González', '1991-02-14', FLOOR(RAND()*(99999999-10000000 +1))+10000000),
('Javier', 'Ramírez', '1989-11-03', FLOOR(RAND()*(99999999-10000000 +1))+10000000),
('Paula', 'Díaz', '1993-06-17', FLOOR(RAND()*(99999999-10000000 +1))+10000000),
('David', 'Lopez', '1987-09-21', FLOOR(RAND()*(99999999-10000000 +1))+10000000),
('Sandra', 'Martínez', '1998-04-04', FLOOR(RAND()*(99999999-10000000 +1))+10000000),
('Juan', 'Hernández', '1994-12-28', FLOOR(RAND()*(99999999-10000000 +1))+10000000),
('Raquel', 'Gómez', '1999-03-12', FLOOR(RAND()*(99999999-10000000 +1))+10000000),
('Antonio', 'Torres', '1997-07-30', FLOOR(RAND()*(99999999-10000000 +1))+10000000);

# Cambiar id de la tabla libros a id_libro
ALTER TABLE libros
RENAME COLUMN id to id_libro;

# Vamos a crear otra tabla: prestamos
# id_prestamo PRIMARY KEY
# id_usuario
# id_libro
# fecha_prestamo 

CREATE TABLE prestamos (
id_prestamo int NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_usuario int NOT NULL,
id_libro int NOT NULL,
fecha_prestamo timestamp DEFAULT current_timestamp
);

# Cambiar el nombre a una tabla
ALTER TABLE prestamo RENAME prestamos;

select * from editoriales;
select * from libros;
select * from prestamos;
describe libros;


insert into prestamos(id_usuario, id_libro) VALUES (1, 1), (1, 2), (1, 3), (2, 1), (2, 2), (3, 1);

# NATURAL JOIN sirve para hacer un INNER JOIN (o JOIN a secas)
# cuando los ids de relación se llaman igual
SELECT u.nombre_usuario, u.apellido_usuario, l.titulo, p.fecha_prestamo
FROM usuarios u
NATURAL JOIN prestamos p
NATURAL JOIN libros l;

# Selección de usuarios que no han tomado un libro prestado
SELECT u.nombre_usuario, u.apellido_usuario, p.fecha_prestamo
FROM usuarios u
LEFT JOIN prestamos p
ON u.id_usuario = p.id_usuario
WHERE fecha_prestamo is null;

alter table usuarios
RENAME COLUMN apellido to apellido_usuario;

SELECT u.nombre_usuario, u.apellido_usuario, COUNT(id_libro) as librosPrestados
FROM usuarios u
natural join prestamos p
natural join libros l
GROUP by u.id_usuario;

# NECESITAMOS SABER...
# Qué usuarios han tomado prestados libros de editoriales de Barcelona
# Cuántos libros hay de editoriales que no son Barcelona
# Cuántos libros tenemos que empiecen por "p"
# Cuál es el libro más prestado
# Qué usuarios han leído el libro más prestado









