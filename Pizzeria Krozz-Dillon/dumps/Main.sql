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
-- Table structure for table `cajero`
--

DROP TABLE IF EXISTS `cajero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cajero` (
  `idEmpleado` int(11) NOT NULL,
  `NyA` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cajero`
--

LOCK TABLES `cajero` WRITE;
/*!40000 ALTER TABLE `cajero` DISABLE KEYS */;
INSERT INTO `cajero` VALUES (1,'Francisco Hernandez'),(2,'Fernando Gonzalez'),(3,'Jose Capitalist'),(4,'Ana Frank'),(5,'Alejandra Chespirito'),(6,'Pablo Pindonga'),(7,'Medzezir Cangu'),(8,'Maria Saudita'),(9,'Pedro Hernandez'),(10,'Francisco Frudchman'),(11,'Federico Amador');
/*!40000 ALTER TABLE `cajero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cajero_has_envío`
--

DROP TABLE IF EXISTS `cajero_has_envío`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cajero_has_envío` (
  `cajero_idEmpleado` int(11) NOT NULL,
  `Envío_Nro envio` int(11) NOT NULL,
  PRIMARY KEY (`cajero_idEmpleado`,`Envío_Nro envio`),
  KEY `fk_cajero_has_Envío_Envío1_idx` (`Envío_Nro envio`),
  KEY `fk_cajero_has_Envío_cajero1_idx` (`cajero_idEmpleado`),
  CONSTRAINT `fk_cajero_has_Envío_cajero1` FOREIGN KEY (`cajero_idEmpleado`) REFERENCES `cajero` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cajero_has_Envío_Envío1` FOREIGN KEY (`Envío_Nro envio`) REFERENCES `envío` (`Nro_envio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cajero_has_envío`
--

LOCK TABLES `cajero_has_envío` WRITE;
/*!40000 ALTER TABLE `cajero_has_envío` DISABLE KEYS */;
INSERT INTO `cajero_has_envío` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(11,1);
/*!40000 ALTER TABLE `cajero_has_envío` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `cliente` VALUES (1,'Jose',45470197,'chajo 4344',1,1),(2,'Maria',45470548,'rio de janeiro 4344',3,2),(3,'Ana',45470987,'Parana 4343',4,3),(4,'Pedro',45471548,'Paroissien 5533',7,4),(5,'Pablo',45470199,'Av.Libertador 233',1,5),(6,'Sergio',45847528,'Av.Corrientes 3432',2,6),(7,'Laura',45479874,'Elcano 232',5,2),(8,'Juan',45475455,'Donado 2321',4,1),(9,'Ariel',45476315,'Donado 2322',1,2),(10,'Facundo',45474872,'Valentin Gomez 2321',2,3),(11,'Graves',1538055414,'311-8554 Nam Carretera',11,6),(12,'Bowers',1518097298,'Apdo.:440-9160 Amet Avda.',10,5),(13,'Roth',1557014382,'597-825 Sagittis Av.',4,10),(14,'Sullivan',1518645402,'Apdo.:724-737 Quisque C/',7,5),(15,'Ware',1519058334,'6673 Nibh. C/',1,5),(16,'Kramer',1504175959,'Apdo.:653-9345 Integer Avda.',8,6),(17,'Santiago',1553580570,'552-5369 Turpis. Calle',7,7),(18,'Hunter',1534473057,'323-5681 Enim Av.',5,6),(19,'Carlson',1597295586,'5007 Ligula. Avda.',10,9),(20,'Alexander',1505525252,'Apartado n',3,4),(21,'Moses',1584119781,'Apdo.:816-2229 Dolor. C.',6,8),(22,'Duffy',1518542902,'Apdo.:999-2001 Vitae Avda.',9,3),(23,'Dillard',1547889192,'Apartado n',8,7),(24,'Freeman',1577836609,'Apdo.:855-1864 Purus ',5,3),(25,'King',1543685796,'Apdo.:977-4664 Magna. Calle',3,7),(26,'Reed',1505584550,'662-8035 Egestas. Calle',3,7),(27,'Blevins',1584883354,'670-124 Praesent Avenida',6,3),(28,'Browning',1552342591,'367-918 Tortor. Ctra.',1,3),(29,'Wilson',1594405603,'5756 Orci C/',5,3),(30,'Berger',1501049663,'5392 Molestie Av.',11,2),(31,'Cote',1541115361,'Apdo.:954-8039 Nulla Avda.',1,9),(32,'Gaines',1553109463,'Apartado n',4,7),(33,'Harris',1597229413,'Apdo.:342-4696 Ipsum Av.',5,2),(34,'Bennett',1555578901,'670-991 Cras Ctra.',11,5),(35,'Guzman',1515349597,'Apdo.:555-153 Sagittis Avda.',5,6),(36,'Jacobson',1583027376,'874-215 Eu C/',11,6),(37,'Vance',1589534097,'Apartado n',11,3),(38,'Little',1590654091,'Apdo.:712-3497 Nunc Carretera',6,6),(39,'Mendez',1540731831,'490-900 Interdum. C.',9,2),(40,'Riddle',1592840915,'Apartado n',1,10),(41,'Poole',1502370418,'Apdo.:334-7220 Suspendisse Avenida',10,10),(42,'Stevens',1577224277,'Apdo.:644-2923 Felis. C.',9,8),(43,'Herrera',1550169882,'5911 Urna, C/',5,5),(44,'Dillard',1538695079,'1593 Metus. ',3,9),(45,'Lloyd',1560101092,'3996 Amet, C.',4,3),(46,'Mathis',1551175168,'623 Erat. Avda.',8,2),(47,'Moody',1524261790,'9681 Aliquet C.',9,4),(48,'Neal',1565467915,'215 Nullam Ctra.',3,9),(49,'Guzman',1548720989,'Apartado n',6,10),(50,'Justice',1512219355,'5700 Nullam Avenida',4,8);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_has_pedido`
--

DROP TABLE IF EXISTS `cliente_has_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente_has_pedido` (
  `Cliente_codigo` int(11) NOT NULL,
  `Pedido_idPedido` int(11) NOT NULL,
  PRIMARY KEY (`Cliente_codigo`,`Pedido_idPedido`),
  KEY `fk_Cliente_has_Pedido_Pedido1_idx` (`Pedido_idPedido`),
  KEY `fk_Cliente_has_Pedido_Cliente1_idx` (`Cliente_codigo`),
  CONSTRAINT `fk_Cliente_has_Pedido_Cliente1` FOREIGN KEY (`Cliente_codigo`) REFERENCES `cliente` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cliente_has_Pedido_Pedido1` FOREIGN KEY (`Pedido_idPedido`) REFERENCES `pedido` (`idPedido`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_has_pedido`
--

LOCK TABLES `cliente_has_pedido` WRITE;
/*!40000 ALTER TABLE `cliente_has_pedido` DISABLE KEYS */;
INSERT INTO `cliente_has_pedido` VALUES (3,1),(4,2),(5,3),(1,4),(15,11),(10,14),(50,16),(45,18),(6,20);
/*!40000 ALTER TABLE `cliente_has_pedido` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `envío` VALUES (1,1),(2,3),(3,4),(4,5),(17,7),(21,7),(22,7),(5,8),(10,9),(11,12),(12,12),(15,12),(13,14),(18,17),(24,17),(14,18),(20,24),(16,29),(19,32),(8,41),(9,43),(7,44),(23,44),(6,46),(25,48);
/*!40000 ALTER TABLE `envío` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envío_has_productos`
--

DROP TABLE IF EXISTS `envío_has_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `envío_has_productos` (
  `Envío_Nroenvio` int(11) NOT NULL,
  `Productos_idProductos` int(11) NOT NULL,
  PRIMARY KEY (`Envío_Nroenvio`,`Productos_idProductos`),
  KEY `fk_Envío_has_Productos_Productos1_idx` (`Productos_idProductos`),
  KEY `fk_Envío_has_Productos_Envío1_idx` (`Envío_Nroenvio`),
  CONSTRAINT `fk_Envío_has_Productos_Envío1` FOREIGN KEY (`Envío_Nroenvio`) REFERENCES `envío` (`Nro_envio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Envío_has_Productos_Productos1` FOREIGN KEY (`Productos_idProductos`) REFERENCES `productos` (`idProductos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envío_has_productos`
--

LOCK TABLES `envío_has_productos` WRITE;
/*!40000 ALTER TABLE `envío_has_productos` DISABLE KEYS */;
INSERT INTO `envío_has_productos` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(12,4),(11,13),(14,13),(15,15);
/*!40000 ALTER TABLE `envío_has_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `importe` int(11) NOT NULL,
  PRIMARY KEY (`idPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'2017-09-15',200),(2,'2017-08-15',300),(3,'2017-07-16',250),(4,'2017-09-15',800),(5,'2017-08-18',115),(7,'2017-01-30',180),(10,'2015-04-17',700),(11,'2017-07-21',905),(12,'2017-09-01',950),(13,'2017-06-26',1500),(14,'2017-02-05',160),(15,'2017-03-29',420),(16,'2017-06-01',960),(17,'2017-08-02',754),(18,'2017-05-15',625),(19,'2017-02-26',107),(20,'2017-10-19',1600);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `idProductos` int(11) NOT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Pedido_idPedido` int(11) NOT NULL,
  PRIMARY KEY (`idProductos`),
  KEY `fk_Productos_Pedido1_idx` (`Pedido_idPedido`),
  CONSTRAINT `fk_Productos_Pedido1` FOREIGN KEY (`Pedido_idPedido`) REFERENCES `pedido` (`idPedido`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,1,'Mozzarella Pizza',1),(2,1,'Jamon y Morrones Pizza',2),(3,5,'Coca-Cola',2),(4,4,'Seven-UP',3),(5,2,'Fugazzeta Pizza',3),(6,6,'Fernet Branca',2),(7,1,'Jamon y Palmitos Pizza',3),(8,12,'Jamon y queso Empanada',4),(9,12,'Roquefort y jamon Empanada',4),(10,5,'Verdura Empanada',3),(11,3,'Empanada capresse',15),(12,6,'Empanada pollo picante',19),(13,1,'Coca-Light',15),(14,2,'Pizza los especiales',19),(15,10,'pizzas de calabresse',20);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provincia` (
  `id_prov` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `cod_postal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_prov`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (1,'Buenos Aires',1430),(2,'Cordoba',1435),(3,'Santa Fe',1438),(4,'Salta',1542),(5,'Formosa',2541),(6,'Chaco',1752),(7,'Chubut',1572),(8,'Neuquen',24152),(9,'Rio negro',9548),(10,'La Pampa',7524);
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `repartidor` VALUES (1,'Pedro'),(2,'Fernando'),(3,'Andrea'),(4,'Francisco'),(5,'Rodrigo'),(6,'Tomas'),(7,'Gonzalo'),(8,'Alejandro'),(9,'Matias'),(10,'Cristian'),(11,'Colette'),(12,'Barbara'),(13,'Cara'),(14,'Desirae'),(15,'Britanney'),(16,'Joseph'),(17,'Kelsie'),(18,'Gisela'),(19,'Hop'),(20,'Lavinia'),(21,'Cassidy'),(22,'Kiayada'),(23,'Amethyst'),(24,'Honorato'),(25,'Simon'),(26,'Barbara'),(27,'Amethyst'),(28,'Mia'),(29,'Francesca'),(30,'Roth'),(31,'Kirsten'),(32,'Flynn'),(33,'Yardley'),(34,'Kylynn'),(35,'Jamalia'),(36,'Amber'),(37,'Aurelia'),(38,'Colorado'),(39,'Mari'),(40,'Myles'),(41,'Wade'),(42,'Aretha'),(43,'Naida'),(44,'Hope'),(45,'Louis'),(46,'Jakeem'),(47,'Dale'),(48,'Zenaida'),(49,'Paula'),(50,'Ciaran');
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

-- Dump completed on 2017-11-08 11:22:22
