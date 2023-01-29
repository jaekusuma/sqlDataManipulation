-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: alta_online_shop
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `operator`
--

DROP TABLE IF EXISTS `operator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operator` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operator`
--

LOCK TABLES `operator` WRITE;
/*!40000 ALTER TABLE `operator` DISABLE KEYS */;
INSERT INTO `operator` VALUES (1,'Telkomsel','2023-01-29 21:54:54','2023-01-29 21:54:54'),(2,'Indosat','2023-01-29 21:54:54','2023-01-29 21:54:54'),(3,'Tri','2023-01-29 21:54:54','2023-01-29 21:54:54'),(4,'XL','2023-01-29 21:54:54','2023-01-29 21:54:54'),(5,'Axis','2023-01-29 21:54:54','2023-01-29 21:54:54');
/*!40000 ALTER TABLE `operator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES (1,'VA','2023-01-29 22:06:35','2023-01-29 22:06:35'),(2,'Transfer bank','2023-01-29 22:06:35','2023-01-29 22:06:35'),(3,'Paylatter','2023-01-29 22:06:35','2023-01-29 22:06:35');
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `product_type_id` int NOT NULL,
  `operator_id` int NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_type_id` (`product_type_id`),
  KEY `operator_id` (`operator_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`operator_id`) REFERENCES `operator` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (3,'Paket data 6gb',60000,2,1,'2023-01-29 21:59:12','2023-01-29 21:59:12'),(4,'Paket data 8gb',80000,2,1,'2023-01-29 21:59:12','2023-01-29 21:59:12'),(5,'Paket data 10gb',100000,2,1,'2023-01-29 21:59:12','2023-01-29 21:59:12'),(6,'Ngoceh 10 menit',10000,3,4,'2023-01-29 22:01:29','2023-01-29 22:01:29'),(7,'Ngoceh 20 menit',20000,3,4,'2023-01-29 22:01:29','2023-01-29 22:01:29'),(8,'Ngoceh 30 menit',30000,3,4,'2023-01-29 22:01:29','2023-01-29 22:01:29');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_description`
--

DROP TABLE IF EXISTS `product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_description` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL,
  `product_id` int NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_description_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_description`
--

LOCK TABLES `product_description` WRITE;
/*!40000 ALTER TABLE `product_description` DISABLE KEYS */;
INSERT INTO `product_description` VALUES (21,'Pulsa dengan harga 5500',1,'2023-01-29 22:05:39','2023-01-29 22:05:39'),(22,'Pulsa dengan harga 10500',2,'2023-01-29 22:05:39','2023-01-29 22:05:39'),(23,'Paket data all internet sebesar 6 gb dengan harga 60000',3,'2023-01-29 22:05:39','2023-01-29 22:05:39'),(24,'Paket data all internet sebesar 8 gb dengan harga 80000',4,'2023-01-29 22:05:39','2023-01-29 22:05:39'),(25,'Paket data all internet sebesar 10 gb dengan harga 100000',5,'2023-01-29 22:05:39','2023-01-29 22:05:39'),(26,'Paket telefon selama 10 menit ke semua operator dengan harga 10000',6,'2023-01-29 22:05:39','2023-01-29 22:05:39'),(27,'Paket telefon selama 20 menit ke semua operator dengan harga 20000',7,'2023-01-29 22:05:39','2023-01-29 22:05:39'),(28,'Paket telefon dengan 30 menit ke semua operator harga 30000',8,'2023-01-29 22:05:39','2023-01-29 22:05:39');
/*!40000 ALTER TABLE `product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,'Pulsa','2023-01-29 21:56:59','2023-01-29 21:56:59'),(2,'Paket Data','2023-01-29 21:56:59','2023-01-29 21:56:59'),(3,'Paekt Kombo','2023-01-29 21:56:59','2023-01-29 21:56:59');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `payment_method_id` int NOT NULL,
  `status` enum('PENDING','SUCCESS','FAILED') DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `payment_method_id` (`payment_method_id`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,1,1,'PENDING','2023-01-29 22:08:11','2023-01-29 22:08:11'),(2,1,2,'SUCCESS','2023-01-29 22:08:11','2023-01-29 22:08:11'),(3,1,3,'FAILED','2023-01-29 22:08:11','2023-01-29 22:08:11'),(4,2,2,'SUCCESS','2023-01-29 22:08:11','2023-01-29 22:08:11'),(5,2,1,'SUCCESS','2023-01-29 22:08:11','2023-01-29 22:08:11'),(6,2,3,'SUCCESS','2023-01-29 22:08:11','2023-01-29 22:08:11'),(7,3,3,'FAILED','2023-01-29 22:08:11','2023-01-29 22:08:11'),(8,3,1,'SUCCESS','2023-01-29 22:08:11','2023-01-29 22:08:11'),(9,3,2,'SUCCESS','2023-01-29 22:08:11','2023-01-29 22:08:11'),(10,4,2,'SUCCESS','2023-01-29 22:08:11','2023-01-29 22:08:11'),(11,5,3,'PENDING','2023-01-29 22:08:11','2023-01-29 22:08:11');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_detail`
--

DROP TABLE IF EXISTS `transaction_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `qty` int NOT NULL,
  `price` int NOT NULL,
  `transaction_id` int NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transaction_id` (`transaction_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `transaction_detail_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`),
  CONSTRAINT `transaction_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_detail`
--

LOCK TABLES `transaction_detail` WRITE;
/*!40000 ALTER TABLE `transaction_detail` DISABLE KEYS */;
INSERT INTO `transaction_detail` VALUES (1,1,3,20000,1,'2023-01-29 22:08:45','2023-01-29 22:08:45'),(2,2,2,80000,3,'2023-01-29 22:08:45','2023-01-29 22:08:45'),(3,3,2,11000,3,'2023-01-29 22:08:45','2023-01-29 22:08:45'),(4,1,3,60000,2,'2023-01-29 22:08:45','2023-01-29 22:08:45'),(5,2,2,80000,2,'2023-01-29 22:08:45','2023-01-29 22:08:45'),(6,3,1,5500,2,'2023-01-29 22:08:45','2023-01-29 22:08:45'),(7,3,4,22000,1,'2023-01-29 22:08:45','2023-01-29 22:08:45'),(8,2,2,80000,1,'2023-01-29 22:08:45','2023-01-29 22:08:45'),(9,1,3,20000,3,'2023-01-29 22:08:45','2023-01-29 22:08:45');
/*!40000 ALTER TABLE `transaction_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `gender` enum('LAKI_LAKI','PEREMPUAN') DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Indah','PEREMPUAN','2023-01-29 22:07:43','2023-01-29 22:07:43'),(2,'Jaelani','LAKI_LAKI','2023-01-29 22:07:43','2023-01-29 22:07:43'),(3,'Dinda','PEREMPUAN','2023-01-29 22:07:43','2023-01-29 22:07:43'),(4,'Sanusi','LAKI_LAKI','2023-01-29 22:07:43','2023-01-29 22:07:43'),(5,'Mayang','PEREMPUAN','2023-01-29 22:07:43','2023-01-29 22:07:43');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-29 22:43:09
