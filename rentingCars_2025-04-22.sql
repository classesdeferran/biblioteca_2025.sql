-- Crear una base de datos que llamaremos rentingCars

CREATE DATABASE IF NOT EXISTS rentingCars;

-- Borrar la BD rentingCars

DROP DATABASE IF EXISTS rentingCars;

-- Crear una base de datos que llamaremos rentingCars
CREATE DATABASE IF NOT EXISTS rentingCars 
DEFAULT CHARACTER SET utf8 
COLLATE utf8_general_ci
; 
USE rentingCars;

-- Crear tabla 'alquileres' que tenga:
-- id_alquiler
-- id_cliente
-- id_vehiculo
-- fecha_recogida TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- fecha_entrega TIMESTAMP 
-- facturacion decimal(10, 2) NOT NULL DEFAULT 0
 
CREATE TABLE IF NOT EXISTS alquileres (
id_alquiler int AUTO_INCREMENT NOT NULL PRIMARY KEY,
id_cliente int NOT NULL,
id_vehiculo int NOT NULL,
fecha_recogida TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
fecha_entrega TIMESTAMP,
facturacion decimal(10, 2) NOT NULL DEFAULT 0
);

-- Crear tabla 'clientes':
-- nombre_cliente varchar(50) NOT NULL
-- apellido_cliente varchar(100) NOT NULL
-- carnet_conducir varchar(12) UNIQUE NOT NULL
-- telefono varchar(12) NOT NULL
-- email varchar(100) NOT NULL

CREATE TABLE IF NOT EXISTS clientes (
id_cliente int AUTO_INCREMENT NOT NULL PRIMARY KEY,
nombre_cliente varchar(50) NOT NULL,
apellido_cliente varchar(100) NOT NULL,
carnet_conducir varchar(12) UNIQUE NOT NULL,
telefono varchar(12) NOT NULL,
email varchar(100) NOT NULL
);

-- Crear tabla 'vehiculos':
-- nombre_modelo
-- unidades_totales
-- unidades_alquiladas
-- personas
-- puertas
-- cambio
-- matricula
-- precioDia

CREATE TABLE IF NOT EXISTS vehiculos (
id_vehiculo int AUTO_INCREMENT NOT NULL PRIMARY KEY,
nombre_modelo varchar(50) NOT NULL,
unidades_totales int NOT NULL, 
unidades_disponibles int NOT NULL, 
personas smallint NOT NULL,
puertas smallint NOT NULL,
cambio enum("manual", "automático", "-"),
matricula varchar(7) UNIQUE NOT NULL, 
precioDia decimal(5,2)
);

-- ON DELETE NO ACTION ON UPDATE NO ACTION
-- Crear un 'constraint' (=restricción) entre la tabla clientes y alquileres

ALTER TABLE alquileres
ADD CONSTRAINT fk_alquileres_clientes
FOREIGN KEY (id_cliente) 
REFERENCES clientes(id_cliente)
ON DELETE NO ACTION ON UPDATE NO ACTION,
-- ADD CONSTRAINT fk_alquileres_clientes
-- FOREIGN KEY (id_cliente) 
-- REFERENCES clientes(id_cliente)
-- ON DELETE NO ACTION ON UPDATE NO ACTION;
;

-- Crear un 'constraint' (=restricción) entre la tabla vehiculos y alquileres
ALTER TABLE alquileres
ADD CONSTRAINT fk_alquileres_vehiculos
FOREIGN KEY (id_vehiculo) 
REFERENCES vehiculos(id_vehiculo)
ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Añadir la columna 'tipo' en la tabla 'vehiculos'
-- "moto", "coche", "bicicleta", "patinete"
ALTER TABLE vehiculos
ADD COLUMN tipo enum("moto", "coche", "bicicleta", "patinete") NOT NULL;

-- Añadir vehículos a la tabla
-- 'Fiat Panda', 5, 5, 4, 3, "manual", "1111AAA", 49.5, "coche"

-- Añadir el tipo 'furgoneta' en la columna 'tipo'
ALTER TABLE vehiculos
MODIFY COLUMN tipo enum("moto", "coche", "bicicleta", "patinete", "furgoneta") NOT NULL;


INSERT INTO vehiculos(
nombre_modelo, 
unidades_totales,
unidades_disponibles,
personas,
puertas,
cambio,
matricula,
precioDia,
tipo) VALUES ('Fiat Panda', 5, 5, 4, 3, "manual", "1111AAA", 49.5, "coche");

INSERT INTO vehiculos(
nombre_modelo, 
unidades_totales,
unidades_disponibles,
personas,
puertas,
cambio,
matricula,
precioDia,
tipo) VALUES ('Nissan Primastar', 2, 2, 9, 3, "automático", "1111BBB", 150.65, "furgoneta");


INSERT INTO vehiculos(
nombre_modelo, 
unidades_totales,
unidades_disponibles,
personas,
puertas,
cambio,
matricula,
precioDia,
tipo) VALUES 
('Nissan Micra', 3, 3, 4, 3, "manual", "1111CCC", 49.5, "coche"),
('Piaggio Vespa', 5, 5, 2, 0, "manual", "1111DDD", 55.4, "moto"),
('Piaggio Beverly', 1, 1, 2, 0, "manual", "1111EEE", 60, "moto")
;


-- Necesitamos saber cuántos vehículos tenemos en total
-- lo mostraremos como 'total vehículos'

SELECT SUM(unidades_totales) as 'total vehículos' FROM vehiculos;

-- Necesitamos saber cuál o cuáles son los vehículos más económicos
-- lo mostraremos como "vehículos económicos", con el precio

SELECT nombre_modelo as "vehículos económicos", precioDia
FROM vehiculos
WHERE precioDia = (
	SELECT MIN(precioDia) FROM vehiculos
);

-- En un día podríamos tener todos los vehículos alquilados.
-- ¿Cuánto ingresaríamos?

SELECT SUM(unidades_totales * precioDia) as facturacion
FROM vehiculos;

-- Introducir clientes
-- 'Steve', 'Ballmer', "1111", "111111111", "steve@ballmer.com"
-- 'Clint', 'Eastwood', '2222', "222222222", "clint@eastwood.com"
-- 'Luciano', 'Pavarotti', '3333', '333333333', ''
-- 'Lionel', 'Messi', "4444", '444444444', ''
-- 'Lionel', 'Ritchie', '5555', '555555555', 'lionel@ritchie.cat'

select * from clientes;

INSERT INTO clientes(nombre_cliente, apellido_cliente, carnet_conducir, telefono, email) 
VALUES ('Steve', 'Ballmer', "1111", "111111111", "steve@ballmer.com"),
('Clint', 'Eastwood', '2222', "222222222", "clint@eastwood.com"),
('Luciano', 'Pavarotti', '3333', '333333333', ''),
('Lionel', 'Messi', "4444", '444444444', ''),
('Lionel', 'Ritchie', '5555', '555555555', 'lionel@ritchie.cat');

-- Añadir este email --> lionel@antonella.ar
UPDATE clientes 
SET email = 'lionel@antonella.ar' 
WHERE nombre_cliente = "Lionel" 
AND apellido_cliente = "Messi";

-- Queremos saber de qué cliente/s no tenemos el email
SELECT nombre_cliente, apellido_cliente
FROM clientes
WHERE email = '';

-- ¿Cuántos clientes se llaman Lionel?
SELECT COUNT(id_cliente)
FROM clientes
WHERE nombre_cliente = "Lionel";

-- ¿Cuántos clientes tenemos de cada nombre que esté en la tabla 'clientes'?
-- con el nombre del cliente
SELECT nombre_cliente, COUNT(nombre_cliente) as repeticiones
FROM clientes
GROUP by nombre_cliente
ORDER BY repeticiones DESC;

-- Para realizar un alquiler:
-- nombre_cliente, apellido_cliente, carnet_conducir, telefono, email
-- modelo, fecha_alquiler
-- Si el cliente no figura en la base de datos hay que añadirlo
-- Con un Procedimiento Almacenado --> alquiler_vehiculo

-- ("Clark", "Kent", "6666", "666666666", "super@man.com", "Nissan Micra", "2024-12-25")
-- ("Clint", "Eastwood", "2222", "222222222", "clint@eastwood.com", "Fiat Panda", "2025-04-20")

DROP PROCEDURE alquiler_vehiculo;

DELIMITER //
CREATE PROCEDURE alquiler_vehiculo(
sp_nombre_cliente varchar(50),
sp_apellido_cliente varchar(100),
sp_carnet varchar(12),
sp_telefono varchar(12),
sp_email varchar(100),
sp_modelo varchar(50),
sp_fecha_recogida timestamp  
)
BEGIN
	-- 1 : obtener el id_cliente si existe
	DECLARE idCliente int;
    DECLARE disponibilidad int;
    DECLARE idVehiculo int;
    
    SELECT id_cliente INTO idCliente
    FROM clientes
    WHERE carnet_conducir = sp_carnet;
    
    -- Si no existe, es que hay que añadir el cliente
    IF idCliente IS NULL THEN
		INSERT INTO clientes(nombre_cliente, apellido_cliente, carnet_conducir, telefono, email)
        VALUES(sp_nombre_cliente,sp_apellido_cliente,sp_carnet,sp_telefono,sp_email);
        -- Ahora que está en la tabla obtenemos su id_cliente
        SELECT id_cliente INTO idCliente
		FROM clientes
		WHERE carnet_conducir = sp_carnet;
    END IF;
		-- Obtener la disponibilidad del vehiculo
        SELECT unidades_disponibles INTO disponibilidad
        FROM vehiculos WHERE nombre_modelo = sp_modelo;
        
	IF disponibilidad = 0 THEN
		SELECT "Vehiculo no disponible";
    ELSE
		-- Obtener el id_vehiculo
        SELECT id_vehiculo INTO idVehiculo FROM vehiculos WHERE nombre_modelo = sp_modelo;
        -- Insert para el alquiler
        INSERT INTO alquileres(id_cliente, id_vehiculo, fecha_recogida)
        VALUES(idCliente, idVehiculo, sp_fecha_recogida);
        UPDATE vehiculos SET unidades_disponibles = unidades_disponibles -1 WHERE id_vehiculo = idVehiculo;
        -- Mensaje de confirmación
        SELECT "Alquiler realizado correctamente";
    END IF;
END //
DELIMITER ;

CALL alquiler_vehiculo ("Clark", "Kent", "6666", "666666666", "super@man.com", "Nissan Micra", "2024-12-25");
CALL alquiler_vehiculo ("Clint", "Eastwood", "2222", "222222222", "clint@eastwood.com", "Nissan Micra", "2025-04-20");




















