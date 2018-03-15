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
-- Table structure for table `repartidor`
--

DROP TABLE IF EXISTS `repartidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repartidor` (
  `Nro_Repartidor` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Nro_Repartidor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repartidor`
--

LOCK TABLES `repartidor` WRITE;
/*!40000 ALTER TABLE `repartidor` DISABLE KEYS */;
INSERT INTO `repartidor` VALUES (1,'Pedro'),(2,'Fernando'),(3,'Andrea'),(4,'Francisco'),(5,'Rodrigo'),(6,'Tomas'),(7,'Gonzalo'),(8,'Alejandro'),(9,'Matias'),(10,'Cristian'), (11,"Colette"),(12,"Barbara"),(13,"Cara"),(14,"Desirae"),(15,"Britanney"),(16,"Joseph"),(17,"Kelsie"),(18,"Gisela"),(19,"Hop"),(20,"Lavinia") ,
  (21,"Cassidy"),(22,"Kiayada"),(23,"Amethyst"),(24,"Honorato"),(25,"Simon"),(27,"Amethyst"),(28,"Mia"),(29,"Francesca"),(30,"Roth") ,
  (31,"Kirsten"),(32,"Flynn"),(33,"Yardley"),(34,"Kylynn"),(35,"Jamalia"),(36,"Amber"),(37,"Aurelia"),(38,"Colorado"),(39,"Mari"),(40,"Myles") ,
  (41,"Wade"),(42,"Aretha"),(43,"Naida"),(44,"Hope"),(45,"Louis"),(46,"Jakeem"),(47,"Dale"),(48,"Zenaida"),(49,"Paula"),(50,"Ciaran");
/*!40000 ALTER TABLE `repartidor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-18  9:25:04
