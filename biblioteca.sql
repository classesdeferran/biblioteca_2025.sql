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
INSERT INTO libros( titulo, autor_nombre, autor_apellido, editorial, year_edition, ejemplares, genero) VALUES
( "El arte clásico", "Mary", "Beard", "Cátedra", 2020, 5, "arte"),
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

# ===========================================================================================
# JOINS 
# Sirven para relacionar tablas entre ellas

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

# Préstamo de libros
SELECT COUNT(p.id_libro) as prestamos
FROM libros l
NATURAL JOIN prestamos p
GROUP BY p.id_libro
ORDER BY prestamos DESC # de mayor a menor
LIMIT 1;

SELECT l.titulo, COUNT(p.id_libro) as prestamos
FROM libros l
NATURAL JOIN prestamos p
GROUP BY p.id_libro
HAVING prestamos = (SELECT COUNT(p.id_libro) as prestamos
FROM libros l
NATURAL JOIN prestamos p
GROUP BY p.id_libro
ORDER BY prestamos DESC
LIMIT 1);


# ===========================================================================================
# HAVING
# Es un condicional para funciones de agragación (COUNT, MAX, AVG, etc)

SELECT l.titulo, max(l.id_libro)
FROM libros l
natural join prestamos p
GROUP BY l.id_libro
HAVING count(l.id_libro) = 2;


insert into prestamos(id_libro, id_usuario) VALUES (1, 2);

# EJERCICIOS: NECESITAMOS SABER...
# Qué usuarios han tomado prestados libros de editoriales de Barcelona
USE biblioteca;
SELECT distinct u.numero_carnet, u.nombre_usuario, u.apellido_usuario
FROM prestamos pr
NATURAL JOIN usuarios u
NATURAL JOIN editoriales e
NATURAL JOIN poblaciones p
where p.poblacion = "Barcelona";


# Cuántos libros hay de editoriales que no son Barcelona
SELECT COUNT(l.id_libro)
FROM libros l
natural join editoriales e
natural join poblaciones p
WHERE p.poblacion not in ("Barcelona");

# Cuántos libros tenemos que empiecen por "p"
SELECT COUNT(id_libro)
FROM libros
WHERE titulo LIKE "e%";


# Cuál es el libro o libros más prestado o prestados
# Empezaremos por averiguar cuál es la cantidad de libros prestados máxima 
SELECT COUNT(p.id_libro) as prestamos
FROM prestamos p
NATURAL JOIN libros l
GROUP BY p.id_libro
ORDER BY prestamos DESC # de mayor a menor
LIMIT 1;

SELECT l.titulo
from prestamos p
NATURAL join libros l
GROUP BY p.id_libro
HAVING COUNT(p.id_libro) = ( # filtramos por el valor máximo de libros prestados
SELECT COUNT(p.id_libro) as prestamos
FROM prestamos p
NATURAL JOIN libros l
GROUP BY p.id_libro
ORDER BY prestamos DESC # de mayor a menor
LIMIT 1
);



# Qué usuarios han leído el libro más prestado
# Primero deberíamos saber cuáles son los libros más prestados
SELECT distinct u.numero_carnet, u.nombre_usuario, u.apellido_usuario
FROM usuarios u
NATURAL join prestamos p
NATURAL join libros l
where p.id_libro in ( # cuales son los ids de libros prestados
	SELECT l.id_libro
	from prestamos p
	NATURAL join libros l
	GROUP BY p.id_libro
	HAVING COUNT(p.id_libro) = ( # filtramos por el valor máximo de libros prestados
		SELECT COUNT(p.id_libro) as prestamos
		FROM prestamos p
		NATURAL JOIN libros l
		GROUP BY p.id_libro
		ORDER BY prestamos DESC # de mayor a menor
		LIMIT 1
        )
	);

# Borra el libro con id_libro = 6


# Añade la editorial Mondadori, de Milán
INSERT INTO poblaciones(poblacion) VALUES("Milán");
SET @idPoblacion = (SELECT id_poblacion FROM poblaciones where poblacion = "Milán");
select @idPoblacion;
INSERT INTO editoriales(nombre_editorial, id_poblacion) VALUES("Mondadori", @idPoblacion); 
select * FROM editoriales;

# Creación de un PROCEDIMIENTO ALMACENADO
DELIMITER $$
CREATE PROCEDURE insertEditorial(poblacion varchar(50), nombreEditorial varchar(100))
BEGIN
	# Miramos si existe la editorial
	SET @idEditorial = (SELECT id_editorial FROM editoriales e WHERE e.nombre_editorial = nombreEditorial);

	IF @idEditorial is null THEN
		# Miramos si existe la población
		set @idPoblacion = (SELECT id_poblacion FROM poblaciones p WHERE p.poblacion = poblacion);
        IF @idPoblacion is null THEN
			INSERT INTO poblaciones(poblacion) VALUES (poblacion);
            set @idPoblacion = (SELECT id_poblacion FROM poblaciones p WHERE p.poblacion = poblacion);
        ELSE
			select "La población ya existe";
        END IF;
        INSERT INTO editoriales(nombre_editorial, id_poblacion) VALUES (nombreEditorial, @idPoblacion);     
    ELSE
		select "La editorial ya existe";
	END IF;
END $$
DELIMITER ;

DROP PROCEDURE insertEditorial;

CALL insertEditorial("París", "Oh la la");



# Añade el libro "Ciudadanos", del autor Simon Schama, género "política", editado en 2022



# Obtén el libro o libros de más reciente publicación
# Primer cal saber quin és l'any més recent




# ¿Cuál es la fecha más reciente de publicación?



# Obtén la editorial cuyos libros son los más prestados
# Primer saber quina és la quantitat més alta de prèstecs per editorial



















ALTER TABLE libros
ADD CONSTRAINT fk_editorial
FOREIGN KEY (id_editorial)
REFERENCES editoriales(id_editorial)
ON DELETE RESTRICT
ON UPDATE RESTRICT;


use biblioteca;

# ===========================================================================================
# VISTAS

# De los libros en préstamo cuál es el título, la editorial y la población
# Crea la vista
CREATE OR REPLACE VIEW vista AS 
SELECT distinct l.titulo, e.nombre_editorial, p.poblacion
FROM prestamos pr
NATURAL JOIN libros l
NATURAL JOIN editoriales e
NATURAL JOIN poblaciones p;

select * FROM vista;

# El usuario con id = 4 toma prestado el libro con id = 4
insert into prestamos(id_usuario, id_libro) VALUES (4,4);

select l.titulo, p.fecha_prestamo, datediff(now(), p.fecha_prestamo) as dias_prestamo
from libros l
natural join prestamos p;

# Elimina la vista
DROP VIEW vista;


ALTER TABLE libros
ADD COLUMN disponibilidad int unsigned default 0;

UPDATE libros set disponibilidad = ejemplares;


# Un trigger automatiza una acción, antes de un insert, update o delete sobre una tabla
# Este trigger controlará si tenemos suficiente disponibilidad de libros para realizar un préstamo

-- Establecemos el delimitador
DELIMITER //
-- Creamos el trigger
CREATE TRIGGER trg_disponibilidad
-- BEFORE = antes de, AFTER = después de
-- INSERT ON, UPDATE ON, DELETE ON tabla_a_controlar
BEFORE INSERT ON prestamos
-- Para cada fila de la tabla
FOR EACH ROW
BEGIN
	-- Declaramos una variable local para almacenar la disponibilidad del libro 
	DECLARE disponibilidad_libro int unsigned;
    
    -- Obtenemos la disponibilidad
    SELECT disponibilidad INTO disponibilidad_libro
    FROM libros
    WHERE id_libro = new.id_libro;
    
    -- Si es menor o igual a cero debemos impedir que se realice el préstamo (insert)
    IF disponibilidad_libro <= 0 THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "No hay ejemplares disponibles para este libro";
	ELSE 
		-- Si hay disponibilidad se realiza el préstamo, pero hay que restar uno de 
        -- los libros disponibles
		UPDATE libros SET disponibilidad = disponibilidad - 1 WHERE id_libro = new.id_libro;        
    END IF;

END //
DELIMITER ;

-- Préstamo de un libro
insert into prestamos(id_usuario, id_libro) VALUES(4, 3);

DELIMITER //
CREATE TRIGGER trg_control_prestamos
BEFORE INSERT ON prestamos
FOR EACH ROW
FOLLOWS trg_disponibilidad
BEGIN

	-- Variable local para contar los préstamos
    DECLARE prestamos_usuario int unsigned;
    
	-- Préstamos de un usuario
	SELECT COUNT(id_usuario) INTO prestamos_usuario
    FROM prestamos WHERE id_usuario = new.id_usuario;
    
    IF prestamos_usuario >= 2 THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = "Ya tienes dos libros en préstamo";	
    END IF;
    
END //

DELIMITER ;



insert into prestamos(id_usuario, id_libro) VALUES(5, 4);

DELIMITER //
CREATE FUNCTION fnc_prestamos_usuario( f_id_usuario INT)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE num_prestamos INT UNSIGNED;
    
    -- Préstamos de un usuario
	SELECT COUNT(id_usuario) INTO num_prestamos
    FROM prestamos WHERE id_usuario = f_id_usuario;
    -- Devuelve el número de préstamos
    RETURN num_prestamos;
END //
DELIMITER ;

SELECT nombre_usuario, apellido_usuario, fnc_prestamos_usuario(id_usuario) as "libros en préstamo"
FROM usuarios;

# Crea una función que devuelva cuantos usuarios tienen prestado un libro.


use biblioteca;

DELIMITER //
CREATE PROCEDURE insertLibro(
titulo varchar(100),
autor_nombre varchar(50),
autor_apellido varchar(100),
year_edition year,
genero varchar(20),
ejemplares int,
editorial varchar(100),
poblacion varchar(50)
)
BEGIN
	-- Primero hay que saber si el libro ya está en la tabla
    -- Si ya existe el título con una editorial determinada
    DECLARE idEditorial int unsigned;
	DECLARE idLibro int unsigned;
    -- SET @idLibro = (SELECT l.id_libro FROM libros l NATURAL JOIN editoriales e WHERE l.titulo = titulo AND e.nombre_editorial = editorial);
    SELECT l.id_libro INTO idLibro
    FROM libros l 
    NATURAL JOIN editoriales e 
    WHERE l.titulo = titulo AND e.nombre_editorial = editorial;
    
    IF idLibro IS NOT NULL THEN
		SELECT CONCAT("El libro '", titulo, "' ya está en la base de datos") as mensaje;
	ELSE
		-- Verificar la población y la editorial
        CALL insertEditorial(poblacion, editorial);
        
        SELECT id_editorial INTO idEditorial
        FROM editoriales WHERE nombre_editorial = editorial;
        
        INSERT INTO libros(titulo, autor_nombre, autor_apellido, year_edition, ejemplares, disponibilidad, genero, id_editorial)
        VALUES (titulo, autor_nombre, autor_apellido, year_edition, ejemplares, ejemplares, genero, idEditorial) ;
        
        SELECT CONCAT("El libro '", titulo, "' ha sido añadido correctamente") as mensaje;
	END IF;    
END //
DELIMITER ;

CALL insertLibro("MySQL", "Steve", "Gates", 2022, "programación", 3, "ENI", "Cornellà");

DROP PROCEDURE insertLibro;
