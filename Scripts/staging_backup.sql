-- MySQL dump 10.13  Distrib 9.4.0, for Win64 (x86_64)
--
-- Host: localhost    Database: staging
-- ------------------------------------------------------
-- Server version	9.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_pedido` (
  `ID_detalle_pedido` int NOT NULL AUTO_INCREMENT,
  `ID_pedido` int NOT NULL,
  `ID_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unidad` decimal(15,2) NOT NULL,
  `numero_linea` smallint NOT NULL,
  PRIMARY KEY (`ID_detalle_pedido`),
  KEY `ID_pedido` (`ID_pedido`),
  KEY `ID_producto` (`ID_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pedido`
--

LOCK TABLES `detalle_pedido` WRITE;
/*!40000 ALTER TABLE `detalle_pedido` DISABLE KEYS */;
INSERT INTO `detalle_pedido` VALUES (1,1,1,10,9.00,1),(2,1,2,5,11.00,2),(3,2,3,3,22.00,1),(4,3,4,2,7.00,1),(5,4,5,7,32.00,1),(6,5,6,4,49.00,1),(7,6,7,6,70.00,1),(8,7,8,8,11.00,1),(9,8,9,10,22.00,1),(10,9,10,12,32.00,1),(11,10,11,15,49.00,1);
/*!40000 ALTER TABLE `detalle_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago` (
  `ID_pago` int NOT NULL AUTO_INCREMENT,
  `ID_cliente` int NOT NULL,
  `forma_pago` varchar(40) NOT NULL,
  `id_transaccion` varchar(50) NOT NULL,
  `fecha_pago` date NOT NULL,
  `total` decimal(15,2) NOT NULL,
  PRIMARY KEY (`ID_pago`),
  KEY `ID_cliente` (`ID_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (1,1,'PayPal','ak-std-000001','2008-11-10',2000.00),(2,2,'PayPal','ak-std-000002','2008-12-10',2000.00),(3,3,'PayPal','ak-std-000003','2009-01-16',5000.00),(4,4,'PayPal','ak-std-000004','2009-02-16',5000.00),(5,5,'PayPal','ak-std-000005','2009-02-19',926.00),(6,6,'PayPal','ak-std-000006','2007-01-08',20000.00),(7,7,'PayPal','ak-std-000007','2007-01-08',20000.00),(8,8,'PayPal','ak-std-000008','2007-01-08',20000.00),(9,9,'PayPal','ak-std-000009','2007-01-08',20000.00),(10,10,'PayPal','ak-std-000010','2007-01-08',1849.00),(11,11,'Transferencia','ak-std-000011','2006-01-18',23794.00),(12,12,'Cheque','ak-std-000012','2009-01-13',2390.00),(13,13,'PayPal','ak-std-000013','2009-01-06',929.00),(14,14,'PayPal','ak-std-000014','2008-08-04',2246.00),(15,15,'PayPal','ak-std-000015','2008-07-15',4160.00),(16,16,'PayPal','ak-std-000016','2009-01-15',2081.00),(17,17,'PayPal','ak-std-000035','2009-02-15',10000.00),(18,18,'PayPal','ak-std-000017','2009-02-16',4399.00),(19,19,'PayPal','ak-std-000018','2009-03-06',232.00),(20,20,'PayPal','ak-std-000019','2009-03-26',272.00),(21,21,'PayPal','ak-std-000020','2008-03-18',18846.00),(22,22,'PayPal','ak-std-000021','2009-02-08',10972.00),(23,23,'PayPal','ak-std-000022','2009-01-13',8489.00),(24,24,'PayPal','ak-std-000024','2009-01-16',7863.00),(25,25,'PayPal','ak-std-000025','2007-10-06',3321.00),(26,26,'PayPal','ak-std-000026','2006-05-26',1171.00),(27,1,'PayPal','ak-std-000001','2008-11-10',2000.00),(28,1,'PayPal','ak-std-000002','2008-12-10',2000.00),(29,3,'PayPal','ak-std-000003','2009-01-16',5000.00),(30,3,'PayPal','ak-std-000004','2009-02-16',5000.00),(31,3,'PayPal','ak-std-000005','2009-02-19',926.00),(32,4,'PayPal','ak-std-000006','2007-01-08',20000.00),(33,4,'PayPal','ak-std-000007','2007-01-08',20000.00),(34,4,'PayPal','ak-std-000008','2007-01-08',20000.00),(35,4,'PayPal','ak-std-000009','2007-01-08',20000.00),(36,4,'PayPal','ak-std-000010','2007-01-08',1849.00),(37,5,'Transferencia','ak-std-000011','2006-01-18',23794.00),(38,7,'Cheque','ak-std-000012','2009-01-13',2390.00),(39,9,'PayPal','ak-std-000013','2009-01-06',929.00),(40,13,'PayPal','ak-std-000014','2008-08-04',2246.00),(41,14,'PayPal','ak-std-000015','2008-07-15',4160.00),(42,15,'PayPal','ak-std-000016','2009-01-15',2081.00),(43,15,'PayPal','ak-std-000035','2009-02-15',10000.00),(44,16,'PayPal','ak-std-000017','2009-02-16',4399.00),(45,19,'PayPal','ak-std-000018','2009-03-06',232.00),(46,23,'PayPal','ak-std-000019','2009-03-26',272.00),(47,26,'PayPal','ak-std-000020','2008-03-18',18846.00),(48,27,'PayPal','ak-std-000021','2009-02-08',10972.00),(49,28,'PayPal','ak-std-000022','2009-01-13',8489.00),(50,30,'PayPal','ak-std-000024','2009-01-16',7863.00),(51,35,'PayPal','ak-std-000025','2007-10-06',3321.00),(52,35,'PayPal','ak-std-000026','2006-05-26',1171.00);
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `ID_pedido` int NOT NULL AUTO_INCREMENT,
  `fecha_pedido` date NOT NULL,
  `fecha_esperada` date NOT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `estado` varchar(15) NOT NULL,
  `comentarios` text,
  `ID_cliente` int NOT NULL,
  PRIMARY KEY (`ID_pedido`),
  KEY `ID_cliente` (`ID_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'2009-01-10','2009-01-15','2009-01-14','Entregado','Pedido entregado en buenas condiciones',1),(2,'2009-02-05','2009-02-12','2009-02-11','Entregado','Cliente satisfecho con la entrega',2),(3,'2009-02-20','2009-02-28',NULL,'Pendiente','Esperando confirmación del pago',3),(4,'2009-03-03','2009-03-10','2009-03-09','Entregado','Entrega en horario pactado',4),(5,'2009-03-18','2009-03-25',NULL,'Pendiente','Retraso por falta de stock',5),(6,'2009-04-02','2009-04-08','2009-04-07','Entregado','Cliente comenta excelente servicio',7),(7,'2009-04-15','2009-04-22','2009-04-21','Entregado','Entregado completo y a tiempo',9),(8,'2009-04-28','2009-05-05',NULL,'Pendiente','Cliente requiere confirmación',13),(9,'2009-05-10','2009-05-17','2009-05-16','Entregado','Pago recibido correctamente',15),(10,'2009-05-22','2009-05-29','2009-05-29','Entregado','Entrega conforme, cliente repite compra',16);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-13 13:14:33
