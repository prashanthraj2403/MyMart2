-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: mymart
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aboutus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `aboutus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'About Mymart'),(2,'Careers'),(3,'Press Releases');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address_line1` varchar(255) NOT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1fa36y2oqhao3wgg2rw1pi459` (`user_id`),
  CONSTRAINT `FK1fa36y2oqhao3wgg2rw1pi459` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'Dasara Nagar Shegaon','Shegaon','Shegaon','India','Maharashtra','444203',1);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytics_fields`
--

DROP TABLE IF EXISTS `analytics_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analytics_fields` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytics_fields`
--

LOCK TABLES `analytics_fields` WRITE;
/*!40000 ALTER TABLE `analytics_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytics_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `total_price` double NOT NULL,
  `product_id` int NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1re40cjegsfvw58xrkdp6bac6` (`product_id`),
  KEY `FK709eickf3kc0dujx3ub9i7btf` (`user_id`),
  CONSTRAINT `FK1re40cjegsfvw58xrkdp6bac6` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FK709eickf3kc0dujx3ub9i7btf` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `cart_items_chk_1` CHECK ((`quantity` >= 1))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
INSERT INTO `cart_items` VALUES (2,1,36000,2,3),(3,2,112000,3,3),(4,3,135000,1,3),(20,1,45000,1,4),(24,2,600,16,1),(25,4,180000,1,1);
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Fashion'),(2,'Mobiles'),(3,'Electronics'),(4,'Furniture'),(5,'Personal Care'),(6,'Stationary'),(7,'Footwear'),(8,'Grocery'),(9,'Men'),(10,'Women'),(11,'Western'),(12,'Ethnic'),(13,'T Shirt'),(14,'Jeanse'),(15,'Laptop'),(16,'TV'),(17,'Sofa'),(18,'Skin Care'),(19,'Makeup'),(20,'Women Footwear'),(21,'Men Footwear'),(22,'Oil & Ghee'),(23,'Facewash'),(24,'Kurti');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumerpolicy`
--

DROP TABLE IF EXISTS `consumerpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumerpolicy` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `consumerpolicy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumerpolicy`
--

LOCK TABLES `consumerpolicy` WRITE;
/*!40000 ALTER TABLE `consumerpolicy` DISABLE KEYS */;
INSERT INTO `consumerpolicy` VALUES (1,'Security'),(2,'Privacy'),(3,'Grievence Redressal');
/*!40000 ALTER TABLE `consumerpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus`
--

LOCK TABLES `contactus` WRITE;
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customersupport`
--

DROP TABLE IF EXISTS `customersupport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customersupport` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customersupport` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customersupport`
--

LOCK TABLES `customersupport` WRITE;
/*!40000 ALTER TABLE `customersupport` DISABLE KEYS */;
INSERT INTO `customersupport` VALUES (1,'Feedback'),(2,'Contact Us'),(3,'Become a Seller'),(4,'Seller FAQs');
/*!40000 ALTER TABLE `customersupport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deal`
--

DROP TABLE IF EXISTS `deal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `discount` double NOT NULL,
  `end_date` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_asan79y5wqxhw68jg33grlp9q` (`product_id`),
  CONSTRAINT `FK7kjde84q4x9cpew4tu8r9x9gq` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deal`
--

LOCK TABLES `deal` WRITE;
/*!40000 ALTER TABLE `deal` DISABLE KEYS */;
INSERT INTO `deal` VALUES (1,30,'2024-05-01','zakas','2024-04-20',10),(2,50,'2024-05-01','zakas','2024-04-23',16),(3,45,'2024-04-30','zakas','2024-04-18',14),(4,38,'2024-04-30','zakas','2024-04-20',11);
/*!40000 ALTER TABLE `deal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `downloadapps`
--

DROP TABLE IF EXISTS `downloadapps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `downloadapps` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `downloadapps`
--

LOCK TABLES `downloadapps` WRITE;
/*!40000 ALTER TABLE `downloadapps` DISABLE KEYS */;
INSERT INTO `downloadapps` VALUES (1,'appless.webp'),(2,'playstore.png');
/*!40000 ALTER TABLE `downloadapps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drop_child`
--

DROP TABLE IF EXISTS `drop_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drop_child` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) DEFAULT NULL,
  `dropdown_item_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK45lmqrkneaakgdcxosc7m80vm` (`dropdown_item_id`),
  CONSTRAINT `FK45lmqrkneaakgdcxosc7m80vm` FOREIGN KEY (`dropdown_item_id`) REFERENCES `dropdown_item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drop_child`
--

LOCK TABLES `drop_child` WRITE;
/*!40000 ALTER TABLE `drop_child` DISABLE KEYS */;
INSERT INTO `drop_child` VALUES (1,'Men',2),(2,'Women',2),(5,'Sofa',5),(6,'Laptop',4),(7,'TV',4),(8,'Skin Care',6),(9,'Makeup',6),(10,'Women Footwear',11),(11,'Men Footwear',11),(12,'Oil & Ghee',12);
/*!40000 ALTER TABLE `drop_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drop_child_of_child`
--

DROP TABLE IF EXISTS `drop_child_of_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drop_child_of_child` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `drop_child_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5i3ylk0gglpxq2f1taf7u949g` (`drop_child_id`),
  CONSTRAINT `FK5i3ylk0gglpxq2f1taf7u949g` FOREIGN KEY (`drop_child_id`) REFERENCES `drop_child` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drop_child_of_child`
--

LOCK TABLES `drop_child_of_child` WRITE;
/*!40000 ALTER TABLE `drop_child_of_child` DISABLE KEYS */;
INSERT INTO `drop_child_of_child` VALUES (1,'Western',2),(2,'Ethnic',2),(5,'Facewash',8);
/*!40000 ALTER TABLE `drop_child_of_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dropdown_item`
--

DROP TABLE IF EXISTS `dropdown_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dropdown_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) DEFAULT NULL,
  `nav_link_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKejtjxd64cymu0panui05y4240` (`nav_link_id`),
  CONSTRAINT `FKejtjxd64cymu0panui05y4240` FOREIGN KEY (`nav_link_id`) REFERENCES `nav_link` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dropdown_item`
--

LOCK TABLES `dropdown_item` WRITE;
/*!40000 ALTER TABLE `dropdown_item` DISABLE KEYS */;
INSERT INTO `dropdown_item` VALUES (1,'All Products',2),(2,'Fashion',2),(3,'Mobiles',2),(4,'Electronics',2),(5,'Furniture',2),(6,'Personal Care',2),(7,'Stationary',NULL),(8,'Stationary',NULL),(10,'Stationary',2),(11,'Footwear',2),(12,'Grocery',2);
/*!40000 ALTER TABLE `dropdown_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (2,'my mart is a good showping mall and it is used to buy the products.','what is my mart ?'),(3,'My Mart','What is my store name?');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filters`
--

DROP TABLE IF EXISTS `filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) DEFAULT NULL,
  `categroy` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filters`
--

LOCK TABLES `filters` WRITE;
/*!40000 ALTER TABLE `filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grand_child`
--

DROP TABLE IF EXISTS `grand_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grand_child` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) DEFAULT NULL,
  `drop_child_of_child_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKspqt188208vk1iibe5naj1ydc` (`drop_child_of_child_id`),
  CONSTRAINT `FKspqt188208vk1iibe5naj1ydc` FOREIGN KEY (`drop_child_of_child_id`) REFERENCES `drop_child_of_child` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grand_child`
--

LOCK TABLES `grand_child` WRITE;
/*!40000 ALTER TABLE `grand_child` DISABLE KEYS */;
INSERT INTO `grand_child` VALUES (1,'Jumpsuits',1),(4,'Jeanse',1),(5,'Kurti',2),(6,'T Shirt',1);
/*!40000 ALTER TABLE `grand_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keepintouch`
--

DROP TABLE IF EXISTS `keepintouch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keepintouch` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keepintouch`
--

LOCK TABLES `keepintouch` WRITE;
/*!40000 ALTER TABLE `keepintouch` DISABLE KEYS */;
INSERT INTO `keepintouch` VALUES (1,'google.webp'),(2,'linkdin.webp'),(3,'facebook.webp'),(4,'Twitter.jpg'),(5,'instagram.jpeg');
/*!40000 ALTER TABLE `keepintouch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailus`
--

DROP TABLE IF EXISTS `mailus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mailus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mailus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailus`
--

LOCK TABLES `mailus` WRITE;
/*!40000 ALTER TABLE `mailus` DISABLE KEYS */;
INSERT INTO `mailus` VALUES (1,'Mymart Internet Private Limited,\n							 Buildings southzone,\n                             Outer Ring Road,Gachibowli,\n                             Hyderabad,500020,\n                             Telangana,India');
/*!40000 ALTER TABLE `mailus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nav_link`
--

DROP TABLE IF EXISTS `nav_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nav_link` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nav_link`
--

LOCK TABLES `nav_link` WRITE;
/*!40000 ALTER TABLE `nav_link` DISABLE KEYS */;
INSERT INTO `nav_link` VALUES (1,'Home'),(2,'All Categories'),(3,'About'),(11,'Contact'),(12,'Deals'),(13,'Faqs');
/*!40000 ALTER TABLE `nav_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `total_price` double NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt4dc2r9nbvbujrljv3e23iibt` (`order_id`),
  KEY `FKc5uhmwioq5kscilyuchp4w49o` (`product_id`),
  CONSTRAINT `FKc5uhmwioq5kscilyuchp4w49o` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKt4dc2r9nbvbujrljv3e23iibt` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,1,45000,1,1),(2,2,1200,1,16),(3,2,1200,2,16),(4,1,350,2,10),(5,1,350,3,10),(6,1,45000,4,1);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `amount` varchar(255) DEFAULT NULL,
  `delivery_time` varchar(255) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_transaction_id` varchar(255) NOT NULL,
  `shipping_charges` double NOT NULL,
  `shipping_method` enum('STANDARD','EXPRESS','NEXT_DAY','SAME_DAY') NOT NULL,
  `status` enum('PLACED','SHIPPED','DELIVERED','CANCELLED','ACCEPTED','PENDING') NOT NULL,
  `subtotal` double NOT NULL,
  `total_amount` double NOT NULL,
  `address_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_nthkiu7pgmnqnu86i2jyoe2v7` (`order_number`),
  KEY `FKhlglkvf5i60dv6dn397ethgpt` (`address_id`),
  KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`),
  CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKhlglkvf5i60dv6dn397ethgpt` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'45615.0','2-3 business days','2024-04-30 15:51:09.839034','ORD1714472469873','TXN123456789',15,'STANDARD','ACCEPTED',45600,45615,1,1),(2,'860.0','2-3 business days','2024-04-30 16:20:53.131948','ORD1714474253163','TXN123456789',15,'STANDARD','PLACED',845,860,1,1),(3,'260.0','2-3 business days','2024-04-30 18:24:13.716416','ORD1714481653737','TXN123456789',15,'STANDARD','PLACED',244.99999999999997,260,1,1),(4,'45015.0','2-3 business days','2024-05-01 10:14:43.400435','ORD1714538683421','TXN123456789',15,'STANDARD','PLACED',45000,45015,1,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `payment_date` datetime(6) NOT NULL,
  `status` enum('PENDING','COMPLETED','FAILED','CANCELLED') NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_mf7n8wo2rwrxsd6f3t9ub2mep` (`order_id`),
  CONSTRAINT `FKlouu98csyullos9k25tbpk4va` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `popup`
--

DROP TABLE IF EXISTS `popup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `popup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `popupdata` varchar(255) DEFAULT NULL,
  `popupimage` varchar(255) DEFAULT NULL,
  `popupmarqueedata` varchar(255) DEFAULT NULL,
  `popupofferdata` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `popup`
--

LOCK TABLES `popup` WRITE;
/*!40000 ALTER TABLE `popup` DISABLE KEYS */;
INSERT INTO `popup` VALUES (2,'40% off','logo.jpeg','Mymart technology drives path-breaking, customer-focused innovation that makes high quality products accessible to Indian shoppers, besides making the online shopping experience convenient, intuitive and seamless.','Mymart technology drives path-breaking, customer-focused innovation that makes high quality products accessible to Indian shoppers, besides making the online shopping experience convenient, intuitive and seamless.');
/*!40000 ALTER TABLE `popup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` text,
  `discounted_price` double NOT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1cf90etcu98x1e6n9aks3tel3` (`category_id`),
  CONSTRAINT `FK1cf90etcu98x1e6n9aks3tel3` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Dell','2024-04-28 20:25:02.772000','very very good',45000,'1714316102772_dell laptop.webp','Dell Laptop',45000,15),(2,'Hp','2024-04-28 20:28:41.508000','Very very good',36000,'1714316321508_hp.webp','HP Laptop',36000,15),(3,'Acer','2024-04-28 20:29:24.514000','very very good',56000,'1714316364514_acer laptop.webp','Acer Laptop',56000,15),(4,'LG','2024-04-28 20:35:21.032000','very very good tv',20,'1714316721032_lg.webp','LG TV',20,16),(5,'Sony','2024-04-28 20:36:24.576000','very very good',26,'1714316784576_sony.jpeg','Sony Tv',26,16),(6,'Mamaearth','2024-04-28 20:38:54.793000','very very good',360,'1714316934793_mamaearth facewash.webp','Mamaearth Uptan Facewash',360,23),(7,'Lotus','2024-04-28 20:39:58.179000','VERY VERY GOOD',200,'1714316998179_lotus.webp','Lotus Facewash',200,23),(8,'Lackme','2024-04-28 20:40:41.480000','very very good',300,'1714317041480_lackme fashwash.webp','Lackme Facewash',300,23),(9,'Plam','2024-04-28 20:41:19.594000','very very good',260,'1714317079594_plam fashwash.jpeg','Plam Facewash',260,23),(10,'Addidas','2024-04-28 20:42:26.135000','very very good',244.99999999999997,'1714317146135_T shirt.webp','Black T shirt',350,13),(11,'Puma','2024-04-28 20:42:57.475000','very very good',248,'1714317177475_t shirt2.webp','T Shirt',400,13),(12,'Aldo','2024-04-28 20:43:47.538000','very very good',500,'1714317227538_black heals2.webp','black heels',500,20),(13,'Aldo','2024-04-28 20:44:17.264000','very very good',400,'1714317257264_black heels.webp','black heels',400,20),(14,'Puma','2024-04-28 20:44:54.149000','very very good',247.50000000000003,'1714317294149_puma shoes.webp','Shoes',450,20),(15,'Samsung','2024-04-28 20:45:30.705000','very very good',45000,'1714317330705_samsung.webp','SamsungS21',45000,2),(16,'Aldo','2024-04-28 20:46:22.265000','very very good',300,'1714317382265_pink pump.webp','pink pumps',600,20),(17,'Sofa','2024-04-28 20:47:03.781000','very very good',30000,'1714317423781_sofa.webp','Sofa',30000,17),(18,'Safolla','2024-04-28 20:47:47.790000','very very good',200,'1714317467790_saffola oil.webp','Safolla Oil',200,22);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,'sdaberao161@gmail.com','Hello','Shital Daberao');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roaddress`
--

DROP TABLE IF EXISTS `roaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roaddress` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `roaddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roaddress`
--

LOCK TABLES `roaddress` WRITE;
/*!40000 ALTER TABLE `roaddress` DISABLE KEYS */;
INSERT INTO `roaddress` VALUES (1,'Mymart internet private limited,\n                                Outer Ring Road, Gachibowli\n                                Hyderabad, 50020\n                                Telengana,India\n                                Telephone:044-456789012');
/*!40000 ALTER TABLE `roaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contact_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'9284360923','sdaberao161@gmail.com','Shital','$2a$10$xXTzOpgtalrWSAIlani9yOIOofq6rT14TLgVbBKp0PKBf5mhDH/36','USER'),(2,'9309231664','karan161@gmail.com','Karan','$2a$10$u6MK2dSDzo1dDeEn.u70f.0lJcxRU1xeH8rzVqgn7LQUWZxpAYyeW','USER'),(3,'2345678','admin161@gmail.com','Admin','$2a$10$Ub8tiJGk0uuESNtWQjI8k.U0SAWeJSNMXm6s9yWLy8PJh5Gwrme6O','ADMIN'),(4,'9284360923','gauri@gmail.com','Gauri ','$2a$10$JNIkuhX4ZuRMbeAud0OXDONsSsEXBDu6UhlHC06kdMGnSKUzS9h72','USER'),(5,'9665179868','shrutitapre1@gmail.com','Shruti Tapre','$2a$10$frAvjZg.6o8a18R49TFf7OGkkiFeKTTcOdv1B7/uNinUKSpybo5Jm','USER');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6p7qhvy1bfkri13u29x6pu8au` (`product_id`),
  KEY `FKtrd6335blsefl2gxpb8lr0gr7` (`user_id`),
  CONSTRAINT `FK6p7qhvy1bfkri13u29x6pu8au` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKtrd6335blsefl2gxpb8lr0gr7` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,16,1);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-01 12:17:01
