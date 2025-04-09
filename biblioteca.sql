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
id int NOT NULL AUTO_INCREMENT PRIMARY KEY.
titulo varchar(100) NOT NULL,
autor_nombre varchar(50) NOT NULL,
autor_apellido varchar(100) NULL,
editorial varchar(50) NOT NULL,
year_edition YEAR,
ejemplares smallint UNSIGNED,
fecha_incorporacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

# Inserta este libro:
# Cien años de soledad
# Gabriel
# García Marquez
# 1990
# Tusquets
# 3
