CREATE DATABASE  IF NOT EXISTS `krozz` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `krozz`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: krozz
-- ------------------------------------------------------
-- Server version	5.5.24-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `envío`
--

DROP TABLE IF EXISTS `envío`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `envío` (
  `Nro_envio` int(11) NOT NULL,
  `Repartidor_Nro_Repartidor` int(11) NOT NULL,
  PRIMARY KEY (`Nro_envio`),
  KEY `fk_Envío_Repartidor1_idx` (`Repartidor_Nro_Repartidor`),
  CONSTRAINT `fk_Envío_Repartidor1` FOREIGN KEY (`Repartidor_Nro_Repartidor`) REFERENCES `repartidor` (`Nro_Repartidor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envío`
--

LOCK TABLES `envío` WRITE;
/*!40000 ALTER TABLE `envío` DISABLE KEYS */;
INSERT INTO `envío` VALUES (1,1),(2,3),(3,4),(4,5),(5,8),(6,46),(7,44),(8,41),(9,43),(10,9),(11,12),(12,12),(13,14),(14,18),(15,12) ,
 (16,29),(17,7),(18,17),(19,32),(20,24),(21,7),(22,7),(23,44),(24,17),(25,48);
/*!40000 ALTER TABLE `envío` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-18  9:25:05
