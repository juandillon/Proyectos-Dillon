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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `codigo` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `cajero_idEmpleado` int(11) NOT NULL,
  `prov` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_Cliente_cajero_idx` (`cajero_idEmpleado`),
  KEY `fk_Cliente_prov1` (`prov`),
  CONSTRAINT `fk_Cliente_cajero` FOREIGN KEY (`cajero_idEmpleado`) REFERENCES `cajero` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cliente_prov1` FOREIGN KEY (`prov`) REFERENCES `provincia` (`id_prov`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Jose',45470197,'chajo 4344',1,1),(2,'Maria',45470548,'rio de janeiro 4344',3,2),(3,'Ana',45470987,'Parana 4343',4,3),(4,'Pedro',45471548,'Paroissien 5533',7,4),(5,'Pablo',45470199,'Av.Libertador 233',1,5),(6,'Sergio',45847528,'Av.Corrientes 3432',2,6),(7,'Laura',45479874,'Elcano 232',5,2),(8,'Juan',45475455,'Donado 2321',4,1),(9,'Ariel',45476315,'Donado 2322',1,2),(10,'Facundo',45474872,'Valentin Gomez 2321',2,3), (11,"Graves","1538055414","311-8554 Nam Carretera",11,6),(12,"Bowers","1518097298","Apdo.:440-9160 Amet Avda.",10,5),(13,"Roth","1557014382","597-825 Sagittis Av.",4,10),(14,"Sullivan","1518645402","Apdo.:724-737 Quisque C/",7,5),(15,"Ware","1519058334","6673 Nibh. C/",1,5),(16,"Kramer","1504175959","Apdo.:653-9345 Integer Avda.",8,6),(17,"Santiago","1553580570","552-5369 Turpis. Calle",7,7),(18,"Hunter","1534473057","323-5681 Enim Av.",5,6),(19,"Carlson","1597295586","5007 Ligula. Avda.",10,9),(20,"Alexander","1505525252","Apartado núm.: 133, 6059 Nulla ",3,4),
 (21,"Moses","1584119781","Apdo.:816-2229 Dolor. C.",6,8),(22,"Duffy","1518542902","Apdo.:999-2001 Vitae Avda.",9,3),(23,"Dillard","1547889192","Apartado núm.: 323, 6798 Tempus, Calle",8,7),(24,"Freeman","1577836609","Apdo.:855-1864 Purus ",5,3),(25,"King","1543685796","Apdo.:977-4664 Magna. Calle",3,7),(26,"Reed","1505584550","662-8035 Egestas. Calle",3,7),(27,"Blevins","1584883354","670-124 Praesent Avenida",6,3),(28,"Browning","1552342591","367-918 Tortor. Ctra.",1,3),(29,"Wilson","1594405603","5756 Orci C/",5,3),(30,"Berger","1501049663","5392 Molestie Av.",11,2),
 (31,"Cote","1541115361","Apdo.:954-8039 Nulla Avda.",1,9),(32,"Gaines","1553109463","Apartado núm.: 335, 6730 Urna. C/",4,7),(33,"Harris","1597229413","Apdo.:342-4696 Ipsum Av.",5,2),(34,"Bennett","1555578901","670-991 Cras Ctra.",11,5),(35,"Guzman","1515349597","Apdo.:555-153 Sagittis Avda.",5,6),(36,"Jacobson","1583027376","874-215 Eu C/",11,6),(37,"Vance","1589534097","Apartado núm.: 215, 5756 Et ",11,3),(38,"Little","1590654091","Apdo.:712-3497 Nunc Carretera",6,6),(39,"Mendez","1540731831","490-900 Interdum. C.",9,2),(40,"Riddle","1592840915","Apartado núm.: 690, 4309 Malesuada Avenida",1,10),
 (41,"Poole","1502370418","Apdo.:334-7220 Suspendisse Avenida",10,10),(42,"Stevens","1577224277","Apdo.:644-2923 Felis. C.",9,8),(43,"Herrera","1550169882","5911 Urna, C/",5,5),(44,"Dillard","1538695079","1593 Metus. ",3,9),(45,"Lloyd","1560101092","3996 Amet, C.",4,3),(46,"Mathis","1551175168","623 Erat. Avda.",8,2),(47,"Moody","1524261790","9681 Aliquet C.",9,4),(48,"Neal","1565467915","215 Nullam Ctra.",3,9),(49,"Guzman","1548720989","Apartado núm.: 201, 7461 Non Calle",6,10),(50,"Justice","1512219355","5700 Nullam Avenida",4,8);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
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
