-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: gestion_tesis_db
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `tesis`
--

DROP TABLE IF EXISTS `tesis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tesis` (
  `idTesis` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text,
  `fechaSubida` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` enum('Pendiente','En Revisión','Requiere Correcciones','Aprobado','Rechazado') NOT NULL DEFAULT 'Pendiente',
  `urlArchivo` varchar(255) DEFAULT NULL,
  `fechaProximaRevision` date DEFAULT NULL,
  `idEstudianteAutor` int NOT NULL,
  `idDocenteRevisor` int DEFAULT NULL,
  PRIMARY KEY (`idTesis`),
  KEY `fk_tesis_estudiantes_idx` (`idEstudianteAutor`),
  KEY `fk_tesis_docentes_idx` (`idDocenteRevisor`),
  CONSTRAINT `fk_tesis_docentes` FOREIGN KEY (`idDocenteRevisor`) REFERENCES `docentes` (`idDocente`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_tesis_estudiantes` FOREIGN KEY (`idEstudianteAutor`) REFERENCES `estudiantes` (`idEstudiante`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tesis`
--

LOCK TABLES `tesis` WRITE;
/*!40000 ALTER TABLE `tesis` DISABLE KEYS */;
INSERT INTO `tesis` VALUES (1,'Análisis de Algoritmos de IA para Mercados Emergentes','Un estudio profundo sobre...','2025-12-15 06:02:48','En Revisión',NULL,NULL,3,2),(2,'Impacto del 5G en Zonas Rurales','Un análisis de conectividad y desarrollo social.','2025-12-15 06:02:48','En Revisión',NULL,'2025-11-30',4,5),(3,'Optimización de Redes Neuronales para IoT','Desarrollo de un modelo ligero para dispositivos de borde.','2025-12-15 06:02:48','Requiere Correcciones',NULL,'2025-11-25',6,2),(4,'Plataforma Web de Gestión Académica','Diseño e implementación de un sistema MVC con Java Servlets y JSP.','2025-12-15 06:02:48','Pendiente',NULL,NULL,3,NULL);
/*!40000 ALTER TABLE `tesis` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-15  6:09:29
