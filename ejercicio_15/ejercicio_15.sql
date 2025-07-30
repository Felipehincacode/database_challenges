-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: ejercicio_15
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.24.04.2

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
-- Table structure for table `Artista`
--

DROP TABLE IF EXISTS `Artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Artista` (
  `id_artista` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_artista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artista`
--

LOCK TABLES `Artista` WRITE;
/*!40000 ALTER TABLE `Artista` DISABLE KEYS */;
/*!40000 ALTER TABLE `Artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cancion`
--

DROP TABLE IF EXISTS `Cancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cancion` (
  `id_cancion` int NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `duracion` int DEFAULT NULL,
  `id_artista` int DEFAULT NULL,
  PRIMARY KEY (`id_cancion`),
  KEY `id_artista` (`id_artista`),
  CONSTRAINT `Cancion_ibfk_1` FOREIGN KEY (`id_artista`) REFERENCES `Artista` (`id_artista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cancion`
--

LOCK TABLES `Cancion` WRITE;
/*!40000 ALTER TABLE `Cancion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lista_Cancion`
--

DROP TABLE IF EXISTS `Lista_Cancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Lista_Cancion` (
  `id_lista` int NOT NULL,
  `id_cancion` int NOT NULL,
  PRIMARY KEY (`id_lista`,`id_cancion`),
  KEY `id_cancion` (`id_cancion`),
  CONSTRAINT `Lista_Cancion_ibfk_1` FOREIGN KEY (`id_lista`) REFERENCES `Lista_Reproduccion` (`id_lista`),
  CONSTRAINT `Lista_Cancion_ibfk_2` FOREIGN KEY (`id_cancion`) REFERENCES `Cancion` (`id_cancion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lista_Cancion`
--

LOCK TABLES `Lista_Cancion` WRITE;
/*!40000 ALTER TABLE `Lista_Cancion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lista_Cancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lista_Reproduccion`
--

DROP TABLE IF EXISTS `Lista_Reproduccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Lista_Reproduccion` (
  `id_lista` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id_lista`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `Lista_Reproduccion_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lista_Reproduccion`
--

LOCK TABLES `Lista_Reproduccion` WRITE;
/*!40000 ALTER TABLE `Lista_Reproduccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lista_Reproduccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuario` (
  `id_usuario` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-30  5:20:29
