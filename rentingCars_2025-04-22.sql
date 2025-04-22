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

