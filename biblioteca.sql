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

