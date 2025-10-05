-- MySQL dump 10.13  Distrib 9.4.0, for Win64 (x86_64)
--
-- Host: localhost    Database: jardineria
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
-- Table structure for table `categoria_producto`
--

DROP TABLE IF EXISTS `categoria_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_producto` (
  `Id_Categoria` int NOT NULL AUTO_INCREMENT,
  `Desc_Categoria` varchar(50) NOT NULL,
  `descripcion_texto` text,
  `descripcion_html` text,
  `imagen` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id_Categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_producto`
--

LOCK TABLES `categoria_producto` WRITE;
/*!40000 ALTER TABLE `categoria_producto` DISABLE KEYS */;
INSERT INTO `categoria_producto` VALUES (1,'Herbaceas','Plantas para jardin decorativas',NULL,NULL),(2,'Herramientas','2 para todo tipo de acción',NULL,NULL),(3,'Aromaticas','Plantas aromáticas',NULL,NULL),(4,'Frutales','Árboles pequeños de producción frutal',NULL,NULL),(5,'Ornamentales','Plantas vistosas para la decoración del jardín',NULL,NULL);
/*!40000 ALTER TABLE `categoria_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `ID_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(50) NOT NULL,
  `nombre_contacto` varchar(30) DEFAULT NULL,
  `apellido_contacto` varchar(30) DEFAULT NULL,
  `telefono` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `linea_direccion1` varchar(50) NOT NULL,
  `linea_direccion2` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) NOT NULL,
  `region` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `ID_empleado_rep_ventas` int DEFAULT NULL,
  `limite_credito` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`ID_cliente`),
  KEY `ID_empleado_rep_ventas` (`ID_empleado_rep_ventas`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`ID_empleado_rep_ventas`) REFERENCES `empleado` (`ID_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Viveros El Oasis','Juan','Pérez','911223344','911223345','Calle Jardín 123',NULL,'Madrid',NULL,'España','28001',NULL,50000.00),(2,'Frutales Talavera S.A.','María','López','925111222','925111223','Av. Naranjos 45',NULL,'Toledo',NULL,'España','45001',NULL,60000.00),(3,'Murcia Seasons','Pedro','Martínez','968333444','968333445','Ctra. Campo 78',NULL,'Murcia',NULL,'España','30002',NULL,45000.00),(4,'Naranjas Valencianas','Laura','García','963555666','963555667','Calle Huerta 12',NULL,'Valencia',NULL,'España','46010',NULL,70000.00),(5,'Melocotones de Cieza','Carlos','Ruiz','968777888','968777889','Polígono Sur 56',NULL,'Cieza',NULL,'España','30530',NULL,55000.00),(6,'Flores y Plantas Norte','Ana','Torres','944111222','944111223','Av. Libertad 34',NULL,'Bilbao',NULL,'España','48001',NULL,48000.00),(7,'Orquídeas Canarias','Sofía','Hernández','928444555','928444556','Calle Mar 89',NULL,'Las Palmas',NULL,'España','35010',NULL,53000.00),(8,'Invernaderos Almería','Diego','Moreno','950666777','950666778','Ctra. Campo 200',NULL,'Almería',NULL,'España','04002',NULL,65000.00),(9,'Semillas Granada','Pablo','Jiménez','958222333','958222334','Camino Real 15',NULL,'Granada',NULL,'España','18009',NULL,42000.00),(10,'AgroSevilla','Marta','Fernández','954333444','954333445','Av. Andalucía 120',NULL,'Sevilla',NULL,'España','41005',NULL,72000.00),(11,'Jardines del Norte','Javier','Gómez','985111222','985111223','Calle Flor 17',NULL,'Oviedo',NULL,'España','33010',NULL,39000.00),(12,'Plantas Mediterráneo','Clara','Santos','977555666','977555667','Av. Costa 8',NULL,'Tarragona',NULL,'España','43001',NULL,57000.00),(13,'Viveros Zaragoza','Luis','Iglesias','976888999','976888990','Calle Pilar 32',NULL,'Zaragoza',NULL,'España','50001',NULL,61000.00),(14,'Galicia Verde','Raquel','Díaz','981333444','981333445','Rúa Verde 99',NULL,'Santiago',NULL,'España','15701',NULL,46000.00),(15,'Flores Mallorca','Andrés','Suárez','971222333','971222334','Calle Palma 25',NULL,'Palma de Mallorca',NULL,'España','07001',NULL,55000.00),(16,'Agro Córdoba','Elena','Castro','957111222','957111223','Av. Mezquita 4',NULL,'Córdoba',NULL,'España','14001',NULL,60000.00),(17,'Plantas Salamanca','Rubén','Ortega','923444555','923444556','Plaza Mayor 6',NULL,'Salamanca',NULL,'España','37001',NULL,43000.00),(18,'Hortalizas Burgos','Beatriz','Romero','947777888','947777889','Calle Castilla 77',NULL,'Burgos',NULL,'España','09001',NULL,47000.00),(19,'Frutas León','Alberto','Crespo','987555666','987555667','Av. Independencia 18',NULL,'León',NULL,'España','24001',NULL,52000.00),(20,'Viveros Valladolid','Carmen','Molina','983888999','983888990','Calle Zorrilla 14',NULL,'Valladolid',NULL,'España','47001',NULL,58000.00),(21,'Plantlife México','Santiago','Vega','555444333','555444334','Av. Reforma 123',NULL,'Ciudad de México',NULL,'México','01000',NULL,68000.00),(22,'Jardines del Sol','Camila','Flores','562333444','562333445','Calle Central 9',NULL,'Guadalajara',NULL,'México','44100',NULL,62000.00),(23,'Verde Monterrey','Ricardo','Navarro','818555666','818555667','Av. Libertad 45',NULL,'Monterrey',NULL,'México','64000',NULL,50000.00),(24,'Flora Bogotá','Daniela','Martínez','601333444','601333445','Calle Norte 17',NULL,'Bogotá',NULL,'Colombia','11001',NULL,47000.00),(25,'Café y Flores Medellín','Esteban','Gutiérrez','604444555','604444556','Av. Paisa 30',NULL,'Medellín',NULL,'Colombia','05001',NULL,51000.00),(26,'Amazonía Verde','Lucía','Rojas','973555666','973555667','Calle Río 12',NULL,'Iquitos',NULL,'Perú','16001',NULL,45000.00),(27,'Andes Garden','Diego','Castillo','511888999','511888990','Av. Andes 78',NULL,'Lima',NULL,'Perú','15001',NULL,56000.00),(28,'Flora Quito','Paola','Hidalgo','022333444','022333445','Calle Amazonas 56',NULL,'Quito',NULL,'Ecuador','17001',NULL,49000.00),(29,'Guayaquil Plantas','Gabriel','Mendoza','042444555','042444556','Av. Libertad 33',NULL,'Guayaquil',NULL,'Ecuador','09001',NULL,53000.00),(30,'Jardines Chile','Valentina','Paredes','226555666','226555667','Av. Providencia 99',NULL,'Santiago',NULL,'Chile','8320000',NULL,61000.00),(31,'Viña Verde','Sebastián','Contreras','322888999','322888990','Calle Viña 45',NULL,'Valparaíso',NULL,'Chile','2340000',NULL,52000.00),(32,'Buenos Aires Flora','Martina','Silva','114444555','114444556','Av. 9 de Julio 101',NULL,'Buenos Aires',NULL,'Argentina','1001',NULL,64000.00),(33,'Rosario Verde','Francisco','Alonso','341555666','341555667','Calle Paraná 87',NULL,'Rosario',NULL,'Argentina','2000',NULL,50000.00),(34,'Cordillera Plants','Julieta','Morales','261333444','261333445','Av. Libertad 55',NULL,'Mendoza',NULL,'Argentina','5500',NULL,58000.00),(35,'Jardines Uruguay','Agustín','Pereira','248777888','248777889','Av. Artigas 23',NULL,'Montevideo',NULL,'Uruguay','11000',NULL,54000.00);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

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
  KEY `ID_producto` (`ID_producto`),
  CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`ID_pedido`) REFERENCES `pedido` (`ID_pedido`),
  CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`ID_producto`) REFERENCES `producto` (`ID_producto`)
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
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `ID_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) DEFAULT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ID_oficina` int NOT NULL,
  `ID_jefe` int DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_empleado`),
  KEY `ID_oficina` (`ID_oficina`),
  KEY `ID_jefe` (`ID_jefe`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`ID_oficina`) REFERENCES `oficina` (`ID_oficina`),
  CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`ID_jefe`) REFERENCES `empleado` (`ID_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Marcos','Magaña','Perez','3897','marcos@jardineria.es',8,NULL,'Director General'),(2,'Ruben','López','Martinez','2899','rlopez@jardineria.es',8,NULL,'Subdirector Marketing'),(3,'Alberto','Soria','Carrasco','2837','asoria@jardineria.es',8,NULL,'Subdirector Ventas'),(4,'Maria','Solís','Jerez','2847','msolis@jardineria.es',8,NULL,'Secretaria'),(5,'Felipe','Rosas','Marquez','2844','frosas@jardineria.es',8,NULL,'Representante Ventas'),(6,'Juan Carlos','Ortiz','Serrano','2845','cortiz@jardineria.es',8,NULL,'Representante Ventas'),(7,'Carlos','Soria','Jimenez','2444','csoria@jardineria.es',4,NULL,'Director Oficina'),(8,'Mariano','López','Murcia','2442','mlopez@jardineria.es',4,NULL,'Representante Ventas'),(9,'Lucio','Campoamor','Martín','2442','lcampoamor@jardineria.es',4,NULL,'Representante Ventas'),(10,'Hilario','Rodriguez','Huertas','2444','hrodriguez@jardineria.es',4,NULL,'Representante Ventas'),(11,'Emmanuel','Magaña','Perez','2518','manu@jardineria.es',1,NULL,'Director Oficina'),(12,'José Manuel','Martinez','De la Osa','2519','jmmart@hotmail.es',1,NULL,'Representante Ventas'),(13,'David','Palma','Aceituno','2519','dpalma@jardineria.es',1,NULL,'Representante Ventas'),(14,'Oscar','Palma','Aceituno','2519','opalma@jardineria.es',1,NULL,'Representante Ventas'),(15,'Francois','Fignon','','9981','ffignon@gardening.com',5,NULL,'Director Oficina'),(16,'Lionel','Narvaez','','9982','lnarvaez@gardening.com',5,NULL,'Representante Ventas'),(17,'Laurent','Serra','','9982','lserra@gardening.com',5,NULL,'Representante Ventas'),(18,'Michael','Bolton','','7454','mbolton@gardening.com',6,NULL,'Director Oficina'),(19,'Walter Santiago','Sanchez','Lopez','7454','wssanchez@gardening.com',6,NULL,'Representante Ventas'),(20,'Hilary','Washington','','7565','hwashington@gardening.com',2,NULL,'Director Oficina'),(21,'Marcus','Paxton','','7565','mpaxton@gardening.com',2,NULL,'Representante Ventas'),(22,'Lorena','Paxton','','7665','lpaxton@gardening.com',2,NULL,'Representante Ventas'),(23,'Nei','Nishikori','','8734','nnishikori@gardening.com',9,NULL,'Director Oficina'),(24,'Narumi','Riko','','8734','nriko@gardening.com',9,NULL,'Representante Ventas'),(25,'Takuma','Nomura','','8735','tnomura@gardening.com',9,NULL,'Representante Ventas'),(26,'Amy','Johnson','','3321','ajohnson@gardening.com',3,NULL,'Director Oficina'),(27,'Larry','Westfalls','','3322','lwestfalls@gardening.com',3,NULL,'Representante Ventas'),(28,'John','Walton','','3322','jwalton@gardening.com',3,NULL,'Representante Ventas'),(29,'Kevin','Fallmer','','3210','kfalmer@gardening.com',7,NULL,'Director Oficina'),(30,'Julian','Bellinelli','','3211','jbellinelli@gardening.com',7,NULL,'Representante Ventas'),(31,'Mariko','Kishi','','3211','mkishi@gardening.com',7,NULL,'Representante Ventas');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oficina`
--

DROP TABLE IF EXISTS `oficina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oficina` (
  `ID_oficina` int NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(10) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `region` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(10) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `linea_direccion1` varchar(50) NOT NULL,
  `linea_direccion2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_oficina`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oficina`
--

LOCK TABLES `oficina` WRITE;
/*!40000 ALTER TABLE `oficina` DISABLE KEYS */;
INSERT INTO `oficina` VALUES (1,'BCN-ES','Barcelona','España','Barcelona','08019','+34 93 3561182','Avenida Diagonal, 38','3A escalera Derecha'),(2,'BOS-USA','Boston','EEUU','MA','02108','+1 215 837 0825','1550 Court Place','Suite 102'),(3,'LON-UK','Londres','Inglaterra','EMEA','EC2N 1HN','+44 20 78772041','52 Old Broad Street','Ground Floor'),(4,'MAD-ES','Madrid','España','Madrid','28032','+34 91 7514487','Bulevar Indalecio Prieto, 32',''),(5,'PAR-FR','Paris','Francia','EMEA','75017','+33 14 723 4404','29 Rue Jouffroy d\'abbans',''),(6,'SFC-USA','San Francisco','EEUU','CA','94080','+1 650 219 4782','100 Market Street','Suite 300'),(7,'SYD-AU','Sydney','Australia','APAC','NSW 2010','+61 2 9264 2451','5-11 Wentworth Avenue','Floor #2'),(8,'TAL-ES','Talavera de la Reina','España','Castilla-LaMancha','45632','+34 925 867231','Francisco Aguirre, 32','5º piso (exterior)'),(9,'TOK-JP','Tokyo','Japón','Chiyoda-Ku','102-8578','+81 33 224 5000','4-1 Kioicho','');
/*!40000 ALTER TABLE `oficina` ENABLE KEYS */;
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
  KEY `ID_cliente` (`ID_cliente`),
  CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`ID_cliente`) REFERENCES `cliente` (`ID_cliente`)
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
  KEY `ID_cliente` (`ID_cliente`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`ID_cliente`) REFERENCES `cliente` (`ID_cliente`)
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

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `ID_producto` int NOT NULL AUTO_INCREMENT,
  `CodigoProducto` varchar(15) NOT NULL,
  `nombre` varchar(70) NOT NULL,
  `Categoria` int NOT NULL,
  `dimensiones` varchar(25) DEFAULT NULL,
  `proveedor` varchar(50) DEFAULT NULL,
  `descripcion` text,
  `cantidad_en_stock` smallint NOT NULL,
  `precio_venta` decimal(15,2) NOT NULL,
  `precio_proveedor` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`ID_producto`),
  KEY `Categoria` (`Categoria`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`Categoria`) REFERENCES `categoria_producto` (`Id_Categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'FR-57','Kaki Rojo Brillante',4,'','NaranjasValencianas.com','De crecimiento algo lento los primeros años, llega a alcanzar hasta doce metros de altura o más, aunque en cultivo se prefiere algo más bajo (5-6). Tronco corto y copa extendida. Ramifica muy poco debido a la dominancia apical. Porte más o menos piramidal, aunque con la edad se hace más globoso.',400,9.00,7.00),(2,'FR-58','Albaricoquero',4,'8/10','Melocotones de Cieza S.A.','árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',200,11.00,8.00),(3,'FR-59','Albaricoquero',4,'10/12','Melocotones de Cieza S.A.','árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',200,22.00,17.00),(4,'FR-6','Mandarino 2 años injerto',4,'','Frutales Talavera S.A','',15,7.00,5.00),(5,'FR-60','Albaricoquero',4,'12/14','Melocotones de Cieza S.A.','árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',200,32.00,25.00),(6,'FR-61','Albaricoquero',4,'14/16','Melocotones de Cieza S.A.','árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',200,49.00,39.00),(7,'FR-62','Albaricoquero',4,'16/18','Melocotones de Cieza S.A.','árbol que puede pasar de los 6 m de altura, en la región mediterránea con ramas formando una copa redondeada. La corteza del tronco es pardo-violácea, agrietada; las ramas son rojizas y extendidas cuando jóvenes y las ramas secundarias son cortas, divergentes y escasas. Las yemas latentes son frecuentes especialmente sobre las ramas viejas.',200,70.00,56.00),(8,'FR-63','Cerezo',4,'8/10','Jerte Distribuciones S.L.','Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce (Prunus avium), el guindo (P. cerasus) y el cerezo \"Duke\", híbrido de los anteriores...',300,11.00,8.00),(9,'FR-64','Cerezo',4,'10/12','Jerte Distribuciones S.L.','Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce...',15,22.00,17.00),(10,'FR-65','Cerezo',4,'12/14','Jerte Distribuciones S.L.','Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce...',200,32.00,25.00),(11,'FR-66','Cerezo',4,'14/16','Jerte Distribuciones S.L.','Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce...',50,49.00,39.00),(12,'FR-67','Cerezo',4,'16/18','Jerte Distribuciones S.L.','Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce...',50,70.00,56.00),(13,'FR-68','Cerezo',4,'18/20','Jerte Distribuciones S.L.','Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce...',50,80.00,64.00),(14,'FR-69','Cerezo',4,'20/25','Jerte Distribuciones S.L.','Las principales especies de cerezo cultivadas en el mundo son el cerezo dulce...',50,91.00,72.00),(15,'FR-7','Mandarino calibre 8/10',4,'','Frutales Talavera S.A','',15,29.00,23.00),(16,'FR-70','Ciruelo',4,'8/10','Frutales Talavera S.A','árbol de tamaño mediano que alcanza una altura máxima de 5-6 m...',50,11.00,8.00),(17,'FR-71','Ciruelo',4,'10/12','Frutales Talavera S.A','árbol de tamaño mediano que alcanza una altura máxima de 5-6 m...',50,22.00,17.00),(18,'FR-72','Ciruelo',4,'12/14','Frutales Talavera S.A','árbol de tamaño mediano que alcanza una altura máxima de 5-6 m...',50,32.00,25.00),(19,'FR-73','Granado',4,'8/10','Frutales Talavera S.A','pequeño árbol caducifolio...',50,13.00,10.00),(20,'FR-74','Granado',4,'10/12','Frutales Talavera S.A','pequeño árbol caducifolio...',50,22.00,17.00),(21,'FR-75','Granado',4,'12/14','Frutales Talavera S.A','pequeño árbol caducifolio...',50,32.00,25.00),(22,'FR-76','Granado',4,'14/16','Frutales Talavera S.A','pequeño árbol caducifolio...',50,49.00,39.00),(23,'FR-77','Granado',4,'16/18','Frutales Talavera S.A','pequeño árbol caducifolio...',50,70.00,56.00),(24,'FR-78','Higuera',4,'8/10','Frutales Talavera S.A','La higuera (Ficus carica L.) es un árbol típico de secano...',50,15.00,12.00),(25,'FR-79','Higuera',4,'10/12','Frutales Talavera S.A','La higuera (Ficus carica L.) es un árbol típico de secano...',50,22.00,17.00),(26,'FR-8','Limonero -Plantón joven',4,'','NaranjasValencianas.com','El limonero, pertenece al grupo de los cítricos...',15,6.00,4.00),(27,'FR-80','Higuera',4,'12/14','Frutales Talavera S.A','La higuera (Ficus carica L.) es un árbol típico de secano...',50,32.00,25.00),(28,'FR-81','Higuera',4,'14/16','Frutales Talavera S.A','La higuera (Ficus carica L.) es un árbol típico de secano...',50,49.00,39.00),(29,'FR-82','Higuera',4,'16/18','Frutales Talavera S.A','La higuera (Ficus carica L.) es un árbol típico de secano...',50,70.00,56.00),(30,'FR-83','Higuera',4,'18/20','Frutales Talavera S.A','La higuera (Ficus carica L.) es un árbol típico de secano...',50,80.00,64.00),(31,'FR-84','Kaki',4,'8/10','NaranjasValencianas.com','De crecimiento algo lento los primeros años...',50,13.00,10.00),(32,'FR-85','Kaki',4,'16/18','NaranjasValencianas.com','De crecimiento algo lento los primeros años...',50,70.00,56.00),(33,'FR-86','Manzano',4,'8/10','Frutales Talavera S.A','alcanza como máximo 10 m. de altura...',50,11.00,8.00),(34,'FR-87','Manzano',4,'10/12','Frutales Talavera S.A','alcanza como máximo 10 m. de altura...',50,22.00,17.00),(35,'FR-88','Manzano',4,'12/14','Frutales Talavera S.A','alcanza como máximo 10 m. de altura...',50,32.00,25.00),(36,'FR-89','Manzano',4,'14/16','Frutales Talavera S.A','alcanza como máximo 10 m. de altura...',50,49.00,39.00),(37,'FR-9','Limonero calibre 8/10',4,'','NaranjasValencianas.com','El limonero, pertenece al grupo de los cítricos...',15,29.00,23.00),(38,'FR-90','Níspero',4,'16/18','Frutales Talavera S.A','Aunque originario del Sudeste de China...',50,70.00,56.00),(39,'FR-91','Níspero',4,'18/20','Frutales Talavera S.A','Aunque originario del Sudeste de China...',50,80.00,64.00),(40,'FR-92','Melocotonero',4,'8/10','Melocotones de Cieza S.A.','Árbol caducifolio de porte bajo...',50,11.00,8.00),(41,'FR-93','Melocotonero',4,'10/12','Melocotones de Cieza S.A.','Árbol caducifolio de porte bajo...',50,22.00,17.00),(42,'FR-94','Melocotonero',4,'12/14','Melocotones de Cieza S.A.','Árbol caducifolio de porte bajo...',50,32.00,25.00),(43,'FR-95','Melocotonero',4,'14/16','Melocotones de Cieza S.A.','Árbol caducifolio de porte bajo...',50,49.00,39.00),(44,'FR-96','Membrillero',4,'8/10','Frutales Talavera S.A','arbolito caducifolio de 4-6 m...',50,11.00,8.00),(45,'FR-97','Membrillero',4,'10/12','Frutales Talavera S.A','arbolito caducifolio de 4-6 m...',50,22.00,17.00),(46,'FR-98','Membrillero',4,'12/14','Frutales Talavera S.A','arbolito caducifolio de 4-6 m...',50,32.00,25.00),(47,'FR-99','Membrillero',4,'14/16','Frutales Talavera S.A','arbolito caducifolio de 4-6 m...',50,49.00,39.00),(48,'OR-001','Arbustos Mix Maceta',5,'40-60','Valencia Garden Service','',25,5.00,4.00),(49,'OR-100','Mimosa Injerto CLASICA Dealbata',5,'100-110','Viveros EL OASIS','Acacia dealbata. Nombre común o vulgar: Mimosa fina...',100,12.00,9.00),(50,'OR-101','Expositor Mimosa Semilla Mix',5,'170-200','Viveros EL OASIS','Acacia dealbata. Nombre común o vulgar: Mimosa fina...',100,6.00,4.00),(51,'OR-102','Mimosa Semilla Bayleyana',5,'170-200','Viveros EL OASIS','Acacia dealbata. Nombre común o vulgar: Mimosa fina...',100,6.00,4.00),(52,'OR-103','Mimosa Semilla Bayleyana',5,'200-225','Viveros EL OASIS','Acacia dealbata. Nombre común o vulgar: Mimosa fina...',100,10.00,8.00),(53,'OR-104','Mimosa Semilla Cyanophylla',5,'200-225','Viveros EL OASIS','Acacia dealbata. Nombre común o vulgar: Mimosa fina...',100,10.00,8.00),(54,'OR-105','Mimosa Semilla Espectabilis',5,'160-170','Viveros EL OASIS','Acacia dealbata. Nombre común o vulgar: Mimosa fina...',100,6.00,4.00),(55,'OR-106','Mimosa Semilla Longifolia',5,'200-225','Viveros EL OASIS','Acacia dealbata. Nombre común o vulgar: Mimosa fina...',100,10.00,8.00),(56,'OR-107','Mimosa Semilla Floribunda 4 estaciones',5,'120-140','Viveros EL OASIS','Acacia dealbata. Nombre común o vulgar: Mimosa fina...',100,6.00,4.00),(57,'OR-108','Abelia Floribunda',5,'35-45','Viveros EL OASIS','',100,5.00,4.00),(58,'OR-109','Callistemom (Mix)',5,'35-45','Viveros EL OASIS','Limpitatubos. arbolito de 6-7 m...',100,5.00,4.00),(59,'OR-110','Callistemom (Mix)',5,'40-60','Viveros EL OASIS','Limpitatubos. arbolito de 6-7 m...',100,2.00,1.00),(60,'OR-111','Corylus Avellana \"Contorta\"',5,'35-45','Viveros EL OASIS','',100,5.00,4.00),(61,'OR-112','Escallonia (Mix)',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(62,'OR-113','Evonimus Emerald Gayeti',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(63,'OR-114','Evonimus Pulchellus',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(64,'OR-115','Forsytia Intermedia \"Lynwood\"',5,'35-45','Viveros EL OASIS','',120,7.00,5.00),(65,'OR-116','Hibiscus Syriacus \"Diana\" -Blanco Puro',5,'35-45','Viveros EL OASIS','Por su capacidad de soportar podas...',120,7.00,5.00),(66,'OR-117','Hibiscus Syriacus \"Helene\" -Blanco-C.rojo',5,'35-45','Viveros EL OASIS','Por su capacidad de soportar podas...',120,7.00,5.00),(67,'OR-118','Hibiscus Syriacus \"Pink Giant\" Rosa',5,'35-45','Viveros EL OASIS','Por su capacidad de soportar podas...',120,7.00,5.00),(68,'OR-119','Laurus Nobilis Arbusto - Ramificado Bajo',5,'40-50','Viveros EL OASIS','',120,5.00,4.00),(69,'OR-120','Lonicera Nitida',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(70,'OR-121','Lonicera Nitida \"Maigrum\"',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(71,'OR-122','Lonicera Pileata',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(72,'OR-123','Philadelphus \"Virginal\"',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(73,'OR-124','Prunus pisardii',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(74,'OR-125','Viburnum Tinus \"Eve Price\"',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(75,'OR-126','Weigelia \"Bristol Ruby\"',5,'35-45','Viveros EL OASIS','',120,5.00,4.00),(76,'OR-127','Camelia japonica',5,'40-60','Viveros EL OASIS','Arbusto excepcional por su floración otoñal...',50,7.00,5.00),(77,'OR-128','Camelia japonica ejemplar',5,'200-250','Viveros EL OASIS','Arbusto excepcional por su floración otoñal...',50,98.00,78.00),(78,'OR-129','Camelia japonica ejemplar',5,'250-300','Viveros EL OASIS','Arbusto excepcional por su floración otoñal...',50,110.00,88.00),(79,'OR-130','Callistemom COPA',5,'110/120','Viveros EL OASIS','Limpitatubos. arbolito de 6-7 m...',50,18.00,14.00),(80,'OR-131','Leptospermum formado PIRAMIDE',5,'80-100','Viveros EL OASIS','',50,18.00,14.00),(81,'OR-132','Leptospermum COPA',5,'110/120','Viveros EL OASIS','',50,18.00,14.00),(82,'OR-133','Nerium oleander-CALIDAD \"GARDEN\"',5,'40-45','Viveros EL OASIS','',50,2.00,1.00),(83,'OR-134','Nerium Oleander Arbusto GRANDE',5,'160-200','Viveros EL OASIS','',100,38.00,30.00),(84,'OR-135','Nerium oleander COPA  Calibre 6/8',5,'50-60','Viveros EL OASIS','',100,5.00,4.00),(85,'OR-136','Nerium oleander ARBOL Calibre 8/10',5,'225-250','Viveros EL OASIS','',100,18.00,14.00),(86,'OR-137','ROSAL TREPADOR',5,'','Viveros EL OASIS','',100,4.00,3.00),(87,'OR-138','Camelia Blanco, Chrysler Rojo, Soraya Naranja',5,'','Viveros EL OASIS','',100,4.00,3.00),(88,'OR-139','Landora Amarillo, Rose Gaujard bicolor blanco-rojo',5,'','Viveros EL OASIS','',100,4.00,3.00),(89,'OR-140','Kordes Perfect bicolor rojo-amarillo, Roundelay rojo fuerte',5,'','Viveros EL OASIS','',100,4.00,3.00),(90,'OR-141','Pitimini rojo',5,'','Viveros EL OASIS','',100,4.00,3.00),(91,'OR-142','Solanum Jazminoide',5,'150-160','Viveros EL OASIS','',100,2.00,1.00),(92,'OR-143','Wisteria Sinensis azul, rosa, blanca',5,'','Viveros EL OASIS','',100,9.00,7.00),(93,'OR-144','Wisteria Sinensis INJERTADAS DECÓ',5,'140-150','Viveros EL OASIS','',100,12.00,9.00),(94,'OR-145','Bougamvillea Sanderiana Tutor',5,'80-100','Viveros EL OASIS','',100,2.00,1.00),(95,'OR-146','Bougamvillea Sanderiana Tutor',5,'125-150','Viveros EL OASIS','',100,4.00,3.00),(96,'OR-147','Bougamvillea Sanderiana Tutor',5,'180-200','Viveros EL OASIS','',100,7.00,5.00),(97,'OR-148','Bougamvillea Sanderiana Espaldera',5,'45-50','Viveros EL OASIS','',100,7.00,5.00),(98,'OR-149','Bougamvillea Sanderiana Espaldera',5,'140-150','Viveros EL OASIS','',100,17.00,13.00),(99,'OR-150','Bougamvillea roja, naranja',5,'110-130','Viveros EL OASIS','',100,2.00,1.00),(100,'OR-151','Bougamvillea Sanderiana, 3 tut. piramide',5,'','Viveros EL OASIS','',100,6.00,4.00),(101,'OR-152','Expositor Árboles clima continental',5,'170-200','Viveros EL OASIS','',100,6.00,4.00),(102,'OR-153','Expositor Árboles clima mediterráneo',5,'170-200','Viveros EL OASIS','',100,6.00,4.00),(103,'OR-154','Expositor Árboles borde del mar',5,'170-200','Viveros EL OASIS','',100,6.00,4.00),(104,'OR-155','Acer Negundo',5,'200-225','Viveros EL OASIS','',100,6.00,4.00),(105,'OR-156','Acer platanoides',5,'200-225','Viveros EL OASIS','',100,10.00,8.00),(106,'OR-157','Acer Pseudoplatanus',5,'200-225','Viveros EL OASIS','',100,10.00,8.00),(107,'OR-158','Brachychiton Acerifolius',5,'200-225','Viveros EL OASIS','',100,6.00,4.00),(108,'OR-159','Brachychiton Discolor',5,'200-225','Viveros EL OASIS','',100,6.00,4.00),(109,'OR-160','Brachychiton Rupestris',5,'170-200','Viveros EL OASIS','',100,10.00,8.00),(110,'OR-161','Cassia Corimbosa',5,'200-225','Viveros EL OASIS','',100,6.00,4.00),(111,'OR-162','Cassia Corimbosa',5,'200-225','Viveros EL OASIS','',100,10.00,8.00),(112,'OR-163','Chitalpa Summer Bells',5,'200-225','Viveros EL OASIS','',80,10.00,8.00),(113,'OR-164','Erytrina Kafra',5,'170-180','Viveros EL OASIS','',80,6.00,4.00),(114,'OR-165','Erytrina Kafra',5,'200-225','Viveros EL OASIS','',80,10.00,8.00),(115,'OR-166','Eucalyptus Citriodora',5,'170-200','Viveros EL OASIS','',80,6.00,4.00),(116,'OR-167','Eucalyptus Ficifolia',5,'170-200','Viveros EL OASIS','',80,6.00,4.00),(117,'OR-168','Eucalyptus Ficifolia',5,'200-225','Viveros EL OASIS','',80,10.00,8.00),(118,'OR-169','Hibiscus Syriacus Var. Injertadas 1 Tallo',5,'170-200','Viveros EL OASIS','',80,12.00,9.00),(119,'OR-170','Lagunaria Patersonii',5,'140-150','Viveros EL OASIS','',80,6.00,4.00),(120,'OR-171','Lagunaria Patersonii',5,'200-225','Viveros EL OASIS','',80,10.00,8.00),(121,'OR-172','Lagunaria patersonii calibre 8/10',5,'200-225','Viveros EL OASIS','',80,18.00,14.00),(122,'OR-173','Morus Alba',5,'200-225','Viveros EL OASIS','',80,6.00,4.00),(123,'OR-174','Morus Alba calibre 8/10',5,'200-225','Viveros EL OASIS','',80,18.00,14.00),(124,'OR-175','Platanus Acerifolia',5,'200-225','Viveros EL OASIS','',80,10.00,8.00),(125,'OR-176','Prunus pisardii',5,'200-225','Viveros EL OASIS','',80,10.00,8.00),(126,'OR-177','Robinia Pseudoacacia Casque Rouge',5,'200-225','Viveros EL OASIS','',80,15.00,12.00),(127,'OR-178','Salix Babylonica Pendula',5,'170-200','Viveros EL OASIS','',80,6.00,4.00),(128,'OR-179','Sesbania Punicea',5,'170-200','Viveros EL OASIS','',80,6.00,4.00),(129,'OR-180','Tamarix Ramosissima Pink Cascade',5,'170-200','Viveros EL OASIS','',80,6.00,4.00),(130,'OR-181','Tamarix Ramosissima Pink Cascade',5,'200-225','Viveros EL OASIS','',80,10.00,8.00),(131,'OR-182','Tecoma Stands',5,'200-225','Viveros EL OASIS','',80,6.00,4.00),(132,'OR-183','Tecoma Stands',5,'200-225','Viveros EL OASIS','',80,10.00,8.00),(133,'OR-184','Tipuana Tipu',5,'170-200','Viveros EL OASIS','',80,6.00,4.00),(134,'OR-185','Pleioblastus distichus-Bambú enano',5,'15-20','Viveros EL OASIS','',80,6.00,4.00),(135,'OR-186','Sasa palmata',5,'20-30','Viveros EL OASIS','',80,6.00,4.00),(136,'OR-187','Sasa palmata',5,'40-45','Viveros EL OASIS','',80,10.00,8.00),(137,'OR-188','Sasa palmata',5,'50-60','Viveros EL OASIS','',80,25.00,20.00),(138,'OR-189','Phylostachys aurea',5,'180-200','Viveros EL OASIS','',80,22.00,17.00),(139,'OR-190','Phylostachys aurea',5,'250-300','Viveros EL OASIS','',80,32.00,25.00),(140,'OR-191','Phylostachys Bambusa Spectabilis',5,'180-200','Viveros EL OASIS','',80,24.00,19.00),(141,'OR-192','Phylostachys biseti',5,'160-170','Viveros EL OASIS','',80,22.00,17.00),(142,'OR-193','Phylostachys biseti',5,'160-180','Viveros EL OASIS','',80,20.00,16.00),(143,'OR-194','Pseudosasa japonica (Metake)',5,'225-250','Viveros EL OASIS','',80,20.00,16.00),(144,'OR-195','Pseudosasa japonica (Metake)',5,'30-40','Viveros EL OASIS','',80,6.00,4.00),(145,'OR-196','Cedrus Deodara',5,'80-100','Viveros EL OASIS','',80,10.00,8.00),(146,'OR-197','Cedrus Deodara \"Feeling Blue\" Novedad',5,'rastrero','Viveros EL OASIS','',80,12.00,9.00),(147,'OR-198','Juniperus chinensis \"Blue Alps\"',5,'20-30','Viveros EL OASIS','',80,4.00,3.00),(148,'OR-199','Juniperus Chinensis Stricta',5,'20-30','Viveros EL OASIS','',80,4.00,3.00),(149,'OR-200','Juniperus horizontalis Wiltonii',5,'20-30','Viveros EL OASIS','',80,4.00,3.00),(150,'OR-201','Juniperus squamata \"Blue Star\"',5,'20-30','Viveros EL OASIS','',80,4.00,3.00),(151,'OR-202','Juniperus x media Phitzeriana verde',5,'20-30','Viveros EL OASIS','',80,4.00,3.00),(152,'OR-203','Pinus Canariensis',5,'80-100','Viveros EL OASIS','',80,10.00,8.00),(153,'OR-204','Pinus Halepensis',5,'160-180','Viveros EL OASIS','',80,10.00,8.00),(154,'OR-205','Pinus Pinea -Pino Piñonero',5,'70-80','Viveros EL OASIS','',80,10.00,8.00),(155,'OR-206','Thuja Esmeralda',5,'80-100','Viveros EL OASIS','',80,5.00,4.00),(156,'OR-207','Tuja Occidentalis Woodwardii',5,'20-30','Viveros EL OASIS','',80,4.00,3.00),(157,'OR-208','Tuja orientalis \"Aurea nana\"',5,'20-30','Viveros EL OASIS','',80,4.00,3.00),(158,'OR-209','Archontophoenix Cunninghamiana',5,'80-100','Viveros EL OASIS','',80,10.00,8.00),(159,'OR-210','Beucarnea Recurvata',5,'130-150','Viveros EL OASIS','',2,39.00,31.00),(160,'OR-211','Beucarnea Recurvata',5,'180-200','Viveros EL OASIS','',5,59.00,47.00),(161,'OR-212','Bismarckia Nobilis',5,'200-220','Viveros EL OASIS','',4,217.00,173.00),(162,'OR-213','Bismarckia Nobilis',5,'240-260','Viveros EL OASIS','',4,266.00,212.00),(163,'OR-214','Brahea Armata',5,'45-60','Viveros EL OASIS','',0,10.00,8.00),(164,'OR-215','Brahea Armata',5,'120-140','Viveros EL OASIS','',100,112.00,89.00),(165,'OR-216','Brahea Edulis',5,'80-100','Viveros EL OASIS','',100,19.00,15.00),(166,'OR-217','Brahea Edulis',5,'140-160','Viveros EL OASIS','',100,64.00,51.00),(167,'OR-218','Butia Capitata',5,'70-90','Viveros EL OASIS','',100,25.00,20.00),(168,'OR-219','Butia Capitata',5,'90-110','Viveros EL OASIS','',100,29.00,23.00),(169,'OR-220','Butia Capitata',5,'90-120','Viveros EL OASIS','',100,36.00,28.00),(170,'OR-221','Butia Capitata',5,'85-105','Viveros EL OASIS','',100,59.00,47.00),(171,'OR-222','Butia Capitata',5,'130-150','Viveros EL OASIS','',100,87.00,69.00),(172,'OR-223','Chamaerops Humilis',5,'40-45','Viveros EL OASIS','',100,4.00,3.00),(173,'OR-224','Chamaerops Humilis',5,'50-60','Viveros EL OASIS','',100,7.00,5.00),(174,'OR-225','Chamaerops Humilis',5,'70-90','Viveros EL OASIS','',100,10.00,8.00),(175,'OR-226','Chamaerops Humilis',5,'115-130','Viveros EL OASIS','',100,38.00,30.00),(176,'OR-227','Chamaerops Humilis',5,'130-150','Viveros EL OASIS','',100,64.00,51.00),(177,'OR-228','Chamaerops Humilis \"Cerifera\"',5,'70-80','Viveros EL OASIS','',100,32.00,25.00),(178,'OR-229','Chrysalidocarpus Lutescens -ARECA',5,'130-150','Viveros EL OASIS','',100,22.00,17.00),(179,'OR-230','Cordyline Australis -DRACAENA',5,'190-210','Viveros EL OASIS','',100,38.00,30.00),(180,'OR-231','Cycas Revoluta',5,'55-65','Viveros EL OASIS','',100,15.00,12.00),(181,'OR-232','Cycas Revoluta',5,'80-90','Viveros EL OASIS','',100,34.00,27.00),(182,'OR-233','Dracaena Drago',5,'60-70','Viveros EL OASIS','',1,13.00,10.00),(183,'OR-234','Dracaena Drago',5,'130-150','Viveros EL OASIS','',2,64.00,51.00),(184,'OR-235','Dracaena Drago',5,'150-175','Viveros EL OASIS','',2,92.00,73.00),(185,'OR-236','Jubaea Chilensis',5,'','Viveros EL OASIS','',100,49.00,39.00),(186,'OR-237','Livistonia Australis',5,'100-125','Viveros EL OASIS','',50,19.00,15.00),(187,'OR-238','Livistonia Decipiens',5,'90-110','Viveros EL OASIS','',50,19.00,15.00),(188,'OR-239','Livistonia Decipiens',5,'180-200','Viveros EL OASIS','',50,49.00,39.00),(189,'OR-240','Phoenix Canariensis',5,'110-130','Viveros EL OASIS','',50,6.00,4.00),(190,'OR-241','Phoenix Canariensis',5,'180-200','Viveros EL OASIS','',50,19.00,15.00),(191,'OR-242','Rhaphis Excelsa',5,'80-100','Viveros EL OASIS','',50,21.00,16.00),(192,'OR-243','Rhaphis Humilis',5,'150-170','Viveros EL OASIS','',50,64.00,51.00),(193,'OR-244','Sabal Minor',5,'60-75','Viveros EL OASIS','',50,11.00,8.00),(194,'OR-245','Sabal Minor',5,'120-140','Viveros EL OASIS','',50,34.00,27.00),(195,'OR-246','Trachycarpus Fortunei',5,'90-105','Viveros EL OASIS','',50,18.00,14.00),(196,'OR-247','Trachycarpus Fortunei',5,'250-300','Viveros EL OASIS','',2,462.00,369.00),(197,'OR-248','Washingtonia Robusta',5,'60-70','Viveros EL OASIS','',15,3.00,2.00),(198,'OR-249','Washingtonia Robusta',5,'130-150','Viveros EL OASIS','',15,5.00,4.00),(199,'OR-250','Yucca Jewel',5,'80-105','Viveros EL OASIS','',15,10.00,8.00),(200,'OR-251','Zamia Furfuracaea',5,'90-110','Viveros EL OASIS','',15,168.00,134.00),(201,'OR-99','Mimosa DEALBATA Gaulois Astier',5,'200-225','Viveros EL OASIS','Acacia dealbata. Nombre común o vulgar: Mimosa fina...',100,14.00,11.00);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-13 13:13:51
