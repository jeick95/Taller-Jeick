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
-- Table structure for table `historial_estado`
--

DROP TABLE IF EXISTS `historial_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_estado` (
  `idHistorial` int NOT NULL AUTO_INCREMENT,
  `fechaCambio` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estadoNuevo` varchar(50) NOT NULL,
  `notas` varchar(255) DEFAULT NULL,
  `idTesis` int NOT NULL,
  `idUsuarioModificador` int NOT NULL,
  PRIMARY KEY (`idHistorial`),
  KEY `fk_historial_tesis_idx` (`idTesis`),
  KEY `fk_historial_usuarios_idx` (`idUsuarioModificador`),
  CONSTRAINT `fk_historial_tesis` FOREIGN KEY (`idTesis`) REFERENCES `tesis` (`idTesis`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_historial_usuarios` FOREIGN KEY (`idUsuarioModificador`) REFERENCES `usuarios` (`idUsuario`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_estado`
--

LOCK TABLES `historial_estado` WRITE;
/*!40000 ALTER TABLE `historial_estado` DISABLE KEYS */;
INSERT INTO `historial_estado` VALUES (1,'2025-12-15 06:02:48','Pendiente','Tesis subida por administrador.',1,1),(2,'2025-12-15 06:02:48','En Revisión','Asignada a Dr. Ramos.',1,1),(3,'2025-12-15 06:02:48','Pendiente','Tesis subida por admin.',2,1),(4,'2025-12-15 06:02:48','En Revisión','Asignada a Maria Estares.',2,1),(5,'2025-12-15 06:02:48','Pendiente','Tesis subida por admin.',3,1),(6,'2025-12-15 06:02:48','En Revisión','Asignada a Carlos Ramos.',3,1),(7,'2025-12-15 06:02:48','Requiere Correcciones','Docente envió comentarios.',3,2),(8,'2025-12-15 06:02:48','Pendiente','Tesis subida por admin. Esperando asignación.',4,1);
/*!40000 ALTER TABLE `historial_estado` ENABLE KEYS */;
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
