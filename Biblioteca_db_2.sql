CREATE DATABASE  IF NOT EXISTS `biblioteca` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `biblioteca`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `editoriales`
--

DROP TABLE IF EXISTS `editoriales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editoriales` (
  `id_editorial` int NOT NULL AUTO_INCREMENT,
  `nombre_editorial` varchar(100) NOT NULL,
  `id_poblacion` int NOT NULL,
  PRIMARY KEY (`id_editorial`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editoriales`
--

LOCK TABLES `editoriales` WRITE;
/*!40000 ALTER TABLE `editoriales` DISABLE KEYS */;
INSERT INTO `editoriales` VALUES (1,'Tusquets',1),(2,'Anaya  Multimedia',2),(3,'Catedra',2),(4,'Alianza',2);
/*!40000 ALTER TABLE `editoriales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `id_libro` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `autor_nombre` varchar(50) NOT NULL,
  `autor_apellido` varchar(100) DEFAULT NULL,
  `year_edition` year DEFAULT NULL,
  `ejemplares` smallint unsigned DEFAULT NULL,
  `fecha_incorporacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `genero` varchar(20) NOT NULL,
  `id_editorial` int NOT NULL,
  PRIMARY KEY (`id_libro`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'Cien años de soledad','Gabriel','García Marquez',1990,3,'2025-04-09 06:58:55','ficción',1),(2,'El coronel no tiene quien le escriba','Gabriel','García Marquez',1995,2,'2025-04-09 07:04:39','ficción',1),(3,'Python','Guido','Van Rossum',2024,4,'2025-04-09 07:09:07','programación',2),(4,'La Odisea','Homero',NULL,2024,2,'2025-04-09 07:11:01','ficción',3),(5,'El arte clásico','Mary','Beard',2020,5,'2025-04-09 09:28:26','arte',3),(6,'El arte moderno','Giulio Claudio','Argan',1980,2,'2025-04-09 09:28:26','arte',1),(7,'Historia de Roma','Enrico','Montanelli',1985,8,'2025-04-09 09:28:26','historia',4),(23,'El señor de los anillos','J.R.R.','Tolkien',1954,30,'2025-04-11 06:47:57','Fantasía',1),(24,'El señor de los anillos','J.R.R.','Tolkien',1954,30,'2025-04-11 06:48:14','Fantasía',1),(25,'Cien años de soledad','Gabriel','García Márquez',1967,25,'2025-04-11 06:48:14','Realismo mágico',4),(29,'Matar a un ruiseñor','Harper','Lee',1960,40,'2025-04-11 06:49:50','Ficción',3),(53,'1984','George','Orwell',1949,50,'2025-04-11 06:52:26','Distopía',1),(54,'La sombra del viento','Carlos','Ruiz Zafón',2001,20,'2025-04-11 06:52:26','Suspenso',1),(55,'El código Da Vinci','Dan','Brown',2003,35,'2025-04-11 06:52:26','Misterio',2),(56,'Los pilares de la tierra','Ken','Follett',1989,45,'2025-04-11 06:52:39','Histórico',1),(57,'Harry Potter y la piedra filosofal','J.K.','Rowling',1997,60,'2025-04-11 06:52:39','Fantasía',3),(58,'El alquimista','Paulo','Coelho',1988,25,'2025-04-11 06:52:39','Aventura',4),(59,'La casa de los espíritus','Isabel','Allende',1982,30,'2025-04-11 06:52:39','Realismo mágico',4),(60,'El nombre de la rosa','Umberto','Eco',1980,20,'2025-04-11 06:52:39','Histórico',4),(61,'Rayuela','Julio','Cortázar',1963,18,'2025-04-11 06:52:49','Experimental',3),(62,'Crónica de una muerte anunciada','Gabriel','García Márquez',1981,22,'2025-04-11 06:52:57','Misterio',1);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poblaciones`
--

DROP TABLE IF EXISTS `poblaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poblaciones` (
  `id_poblacion` int NOT NULL AUTO_INCREMENT,
  `poblacion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_poblacion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poblaciones`
--

LOCK TABLES `poblaciones` WRITE;
/*!40000 ALTER TABLE `poblaciones` DISABLE KEYS */;
INSERT INTO `poblaciones` VALUES (1,'Barcelona'),(2,'Madrid');
/*!40000 ALTER TABLE `poblaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamos`
--

DROP TABLE IF EXISTS `prestamos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamos` (
  `id_prestamo` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_libro` int NOT NULL,
  `fecha_prestamo` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_prestamo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamos`
--

LOCK TABLES `prestamos` WRITE;
/*!40000 ALTER TABLE `prestamos` DISABLE KEYS */;
INSERT INTO `prestamos` VALUES (1,1,1,'2025-04-11 07:08:01'),(2,1,2,'2025-04-11 07:08:01'),(3,1,3,'2025-04-11 07:08:01'),(4,2,1,'2025-04-11 07:08:01'),(5,2,2,'2025-04-11 07:08:01'),(6,3,1,'2025-04-11 07:08:01');
/*!40000 ALTER TABLE `prestamos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(50) NOT NULL,
  `apellido_usuario` varchar(100) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `numero_carnet` int NOT NULL,
  `fecha_inscripcion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `numero_carnet` (`numero_carnet`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Carlos','Pérez','1990-03-15',37767042,'2025-04-11 07:02:56'),(2,'Ana','Gómez','1985-07-22',51288188,'2025-04-11 07:02:56'),(3,'Luis','Martínez','2000-12-01',43139814,'2025-04-11 07:02:56'),(4,'María','Sánchez','1995-05-09',51834509,'2025-04-11 07:02:56'),(5,'José','Rodríguez','1988-10-30',29753105,'2025-04-11 07:02:56'),(6,'Laura','Fernández','1992-01-18',73262003,'2025-04-11 07:02:56'),(7,'Pedro','Álvarez','1996-08-25',87050704,'2025-04-11 07:02:56'),(8,'Lucía','González','1991-02-14',25467514,'2025-04-11 07:02:56'),(9,'Javier','Ramírez','1989-11-03',36185459,'2025-04-11 07:02:56'),(10,'Paula','Díaz','1993-06-17',94524759,'2025-04-11 07:02:56'),(11,'David','Lopez','1987-09-21',84067421,'2025-04-11 07:02:56'),(12,'Sandra','Martínez','1998-04-04',36762829,'2025-04-11 07:02:56'),(13,'Juan','Hernández','1994-12-28',11611886,'2025-04-11 07:02:56'),(14,'Raquel','Gómez','1999-03-12',27770945,'2025-04-11 07:02:56'),(15,'Antonio','Torres','1997-07-30',94019071,'2025-04-11 07:02:56');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-14  8:28:03
