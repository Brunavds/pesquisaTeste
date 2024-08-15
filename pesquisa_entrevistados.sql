-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: pesquisa
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `entrevistados`
--

DROP TABLE IF EXISTS `entrevistados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrevistados` (
  `id_entrevistados` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `operadora` varchar(20) NOT NULL,
  `resposta` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_entrevistados`),
  UNIQUE KEY `id_entrevistados` (`id_entrevistados`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrevistados`
--

LOCK TABLES `entrevistados` WRITE;
/*!40000 ALTER TABLE `entrevistados` DISABLE KEYS */;
INSERT INTO `entrevistados` VALUES (1,'Bruna Vieira','br.vieiradasilva@gmail.com','','Tim','Sim'),(2,'Yasmin Silva','yas.silva@gmail.com','','Claro','Não'),(3,'Karina Almeida','karalmeida@gmail.com','21978123546','Tim','Não'),(4,'Maiara Figueiredo','mayfigue@gmail.com','21999527842','Tim','Não'),(5,'Heitor Honorel','heitorhh@yahoo.com.br','21999527882','Vivo','Sim'),(6,'Camila Andradeo','camiandrade@gmail.com','21999337842','Claro','Sim'),(7,'Rodolfo Santos','rodolfosantos@gmail.com','21999257842','Claro','Sim'),(8,'Raquel Asis','kekequela@hotmail.com','21999527745','Claro','Não'),(9,'Emersom Gomes','emersongom@yahoo.com','21999527698','Vivo','Não'),(10,'Alessandra Vieira','alevieira@gmail.com','21997627842','Tim','Sim');
/*!40000 ALTER TABLE `entrevistados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-15 14:36:02
