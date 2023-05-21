CREATE DATABASE  IF NOT EXISTS `ecommer_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecommer_db`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: ecommer_db
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `app_role`
--

DROP TABLE IF EXISTS `app_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_role` (
  `role_id` bigint NOT NULL,
  `role_name` varchar(30) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `APP_ROLE_UK` (`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_role`
--

LOCK TABLES `app_role` WRITE;
/*!40000 ALTER TABLE `app_role` DISABLE KEYS */;
INSERT INTO `app_role` VALUES (1,'ROLE_ADMIN','2022-10-29 21:21:32','2022-10-29 21:21:32',_binary '\0'),(2,'ROLE_USER','2022-10-29 21:21:32','2022-10-29 21:21:32',_binary '\0');
/*!40000 ALTER TABLE `app_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `user_name` varchar(36) NOT NULL,
  `encryted_password` varchar(128) NOT NULL,
  `is_deleted` bit(1) NOT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `avatar` varchar(2000) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `country` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `city` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `reset_password_token` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `APP_USER_UK` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (1,'thangpm','$2a$10$RTVkvua7Zl0IdWED0TXt8uIEuYGQZBQAB8G99AWD.35co696TUbM6',_binary '\0','Thắng','Phan Minh',_binary '','thangpm@gmail.com','2001-02-01 07:00:00','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F1275-tai-9915.jpg?alt=media&token=faa38895-3e2b-4d9e-9bd9-a657fcbd34a6','Số 1, đường Hai Bà Trưng, Phường Tân An, Quận Ninh Kiều','Cần Thơ',NULL,'2023-05-15 20:56:48','2023-05-15 21:24:24',NULL),(2,'hoatt','$2a$10$nvdsd1UcTWyP6FwnfjWih.Zl/BuPqx9Y3781gQBK6JghgrdTIOozi',_binary '\0','Hoa','Trần Thị',_binary '\0','hoatt@gmail.com','2001-08-09 07:00:00','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F8-1-533x800.jpg?alt=media&token=ffb22289-ef45-4ea4-8a5e-a508c324c4db','Số 13 đường 30/4, Khu phố 6, Phường Xuân Khánh, Quận Ninh Kiều','Cần Thơ',NULL,'2023-05-15 21:01:40','2023-05-15 21:24:33',NULL),(3,'tungnv','$2a$10$MP297mYmhj/7KMChjPcFW.zyUEKXyBgVDSCMWML3XI1lmF9WCTgZe',_binary '\0','Tùng','Nguyễn Văn',_binary '\0','tungnv@gmail.com','2001-02-04 07:00:00','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2Fhana-studio-858540.jpg?alt=media&token=e4e2ee3c-b3bd-4ffa-ba0d-837b91c969c8','Số 60, đường Nguyễn Văn Linh, Phường An Khánh, Quận Ninh Kiều','Cần Thơ',NULL,'2023-05-15 21:03:06','2023-05-15 21:24:46',NULL),(4,'hoanglh','$2a$10$MgNF12.sZumGT9Hoo.58wu7DLE6huTpRNf3doq10GK5fh/0ofGmO6',_binary '\0','Hoàng','Lê Huy',_binary '','hoanglh@gmail.com','2001-02-02 07:00:00','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2FA-Lan-4.6-vest-683x1024.jpg?alt=media&token=7549bbfc-2e45-466a-b25f-49249ebec033','Số 18 đường 3/2, Khu phố 6, Phường Xuân Khánh, Quận Ninh Kiều','Cần Thơ',NULL,'2023-05-15 21:04:37','2023-05-15 21:26:38',NULL),(5,'linhdtm','$2a$10$lHDzNLzpOIzb.nrxA.M2.edyxIB8BPm54ZaO77nWQfkJy5gH/eJEW',_binary '\0','Linh','Đỗ Thị Mỹ',_binary '\0','linhdtm@gmail.com','2001-04-02 07:00:00','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2Fcach-tao-dang-chup-anh-profile-9366.jpg?alt=media&token=c5bb9092-652a-4c8d-b7fa-fdc8c69e7cb8','Số 153 đường 30/4, Khu phố 4, Phường Hưng Lợi, Quận Ninh Kiều','Cần Thơ',NULL,'2023-05-15 21:07:15','2023-05-15 21:25:00',NULL),(6,'quyenld','$2a$10$uF6NwqFdE5ff/fP6c6C4Q.aNIPn/xmbyj9Zts8hP2ropv3kLCiP6y',_binary '\0','Quyền','Lương Đình',_binary '','quyenld@gmail.com','2001-04-03 07:00:00','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F1824-quan-3112.jpg?alt=media&token=53132088-6988-436b-ba6d-b7a7efdd194e','Số 67A đường Lê Hồng Phong, Phường Hưng Lợi, Quận Ninh Kiều','Cần Thơ',NULL,'2023-05-15 21:09:07','2023-05-15 21:26:51',NULL),(7,'tranvn','$2a$10$eYeTHN8JQdWP6.9ORbV6LOtd22I2TvLyNtBQxrVcxdD9GeTEOAzYS',_binary '\0','Trân','Võ Ngọc',_binary '\0','tranvn@gmail.com','2001-04-03 07:00:00','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2Fchup-chan-dung-2.jpg?alt=media&token=c4de75dc-74f9-48ad-bd89-057b24dd0689','Số 10 đường Hòa Bình, Phường An Hòa, Quận Ninh Kiều','Cần Thơ',NULL,'2023-05-15 21:10:14','2023-05-15 21:25:19',NULL),(8,'huynd','$2a$10$KN8avqEHftS4FLEM/HDIFewkRap/fXrsQAVnbu8IghpJ.9n5UUjc6',_binary '\0','Huy','Nguyễn Đình',_binary '','huynd@gmail.com','2023-01-20 07:00:00','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2Fimager_1067.jpg?alt=media&token=a62afb28-dc2f-40fd-ac96-1702f8ab9278','Số 50 đường Nguyễn Hữu Thọ, Phường Hưng Phú, Quận Cái Răng','Cần Thơ',NULL,'2023-05-15 21:11:10','2023-05-15 21:27:10',NULL),(9,'maintn','$2a$10$0/Uh1jvX7FgL7ln4YUKZae5sTKGmgPW1W.aglKFPVxoaGmoSFzP4e',_binary '\0','Mai','Nguyễn Thị Ngọc',_binary '\0','maintn@gmail.com','2023-01-09 07:00:00','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2Fchup-chan-dung-6.jpg?alt=media&token=378d511a-9f87-48b5-b9da-378479216919','Số 98A đường Nguyễn Việt Hồng, Phường An Bình, Quận Ninh Kiều','Cần Thơ',NULL,'2023-05-15 21:12:16','2023-05-15 21:25:33',NULL),(10,'khanhhv','$2a$10$MRovYrULf3OmGaFsgtZiPeR5/3S/hLyc9twHOwpVBnW1AHKaw7isC',_binary '\0','Khánh','Hoàng Văn',_binary '','khanhhv@gmail.com','2023-01-09 07:00:00','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F20210705205842-2591.jpg?alt=media&token=0a100c95-7a5d-4a11-8fc4-4192b0dc5eba','Số 4, đường Hưng Phú 1, Khu phố 4, Phường Hưng Phú, Quận Cái Răng','Cần Thơ',NULL,'2023-05-15 21:12:46','2023-05-15 21:28:02',NULL);
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_blog`
--

DROP TABLE IF EXISTS `category_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_blog`
--

LOCK TABLES `category_blog` WRITE;
/*!40000 ALTER TABLE `category_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Persistent_Logins`
--

DROP TABLE IF EXISTS `Persistent_Logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Persistent_Logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Persistent_Logins`
--

LOCK TABLES `Persistent_Logins` WRITE;
/*!40000 ALTER TABLE `Persistent_Logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `Persistent_Logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_blogs`
--

DROP TABLE IF EXISTS `shop_blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_blogs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `blog_title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `first_paragraph` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `body_ paragraph` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ending_paragraph` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(500) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `fk_blog_user_idx` (`user_id`),
  KEY `fk_blog_category_idx` (`category_id`),
  CONSTRAINT `fk_blog_category` FOREIGN KEY (`category_id`) REFERENCES `category_blog` (`id`),
  CONSTRAINT `fk_blog_user` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_blogs`
--

LOCK TABLES `shop_blogs` WRITE;
/*!40000 ALTER TABLE `shop_blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_categories`
--

DROP TABLE IF EXISTS `shop_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_code` varchar(50) NOT NULL,
  `category_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_categories`
--

LOCK TABLES `shop_categories` WRITE;
/*!40000 ALTER TABLE `shop_categories` DISABLE KEYS */;
INSERT INTO `shop_categories` VALUES (1,'Asus','Laptop Asus','Laptop Asus','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F637732077455069770_Asus_2x.png?alt=media&token=98c79bac-8701-4b1d-adf3-e0c08112ede9','2023-02-19 12:25:07','2023-02-19 12:25:07',_binary '\0'),(2,'Lenovo','Laptop Lenovo','Laptop Lenovo','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F637340494668267616_Lenovo_2x.png?alt=media&token=47078db1-c9ef-40ad-ad8f-9b207775ed04','2023-02-19 12:27:16','2023-02-19 12:27:16',_binary '\0'),(3,'MSI','Laptop MSI','Laptop MSI','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F637340493755614653_MSI_2x.png?alt=media&token=eb24b732-6cf3-4370-8197-5840f9425720','2023-02-19 12:28:28','2023-02-19 12:28:28',_binary '\0'),(4,'GIGABYTE','Laptop GIGABYTE','Laptop GIGABYTE','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F637674058450623615_Gigabyte_2x.png?alt=media&token=b4da55da-c460-4142-80a3-4f93039a77fd','2023-02-19 12:29:40','2023-02-19 12:29:40',_binary '\0'),(5,'Acer','Laptop Acer','Laptop Acer','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F637340494666704995_Acer_2x.png?alt=media&token=a360b4f1-3bf5-4b77-9426-18c327989ca7','2023-02-19 12:30:43','2023-02-19 12:30:43',_binary '\0'),(6,'Macbook','Apple (Macbook)','Apple (Macbook)','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F637769104385571970_Macbook-Apple_2x.png?alt=media&token=6bcdad0f-98ab-4f5b-bff4-5d9c671346f9','2023-02-19 12:32:21','2023-02-19 12:32:21',_binary '\0'),(7,'phukienlaptop','Linh, phụ kiện Laptop','Linh, phụ kiện Laptop','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2Flinh-kien-laptop-cu.jpg?alt=media&token=15f4b1ac-0dee-417a-9f7c-faf4a4a9389a','2023-02-19 22:16:53','2023-02-19 22:16:53',_binary '\0');
/*!40000 ALTER TABLE `shop_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_comments_blog`
--

DROP TABLE IF EXISTS `shop_comments_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_comments_blog` (
  `id` int NOT NULL,
  `blog_id` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `comment` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_commentblog_blog_idx` (`blog_id`),
  KEY `fk_commntblog_user_idx` (`user_id`),
  CONSTRAINT `fk_commentblog_blog` FOREIGN KEY (`blog_id`) REFERENCES `shop_blogs` (`id`),
  CONSTRAINT `fk_commntblog_user` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_comments_blog`
--

LOCK TABLES `shop_comments_blog` WRITE;
/*!40000 ALTER TABLE `shop_comments_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_comments_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_favoutite`
--

DROP TABLE IF EXISTS `shop_favoutite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_favoutite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_idx` (`user_id`),
  KEY `fk_prod_idx` (`product_id`),
  CONSTRAINT `fk_prod` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_favoutite`
--

LOCK TABLES `shop_favoutite` WRITE;
/*!40000 ALTER TABLE `shop_favoutite` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_favoutite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order_detail`
--

DROP TABLE IF EXISTS `shop_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_order_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `quantity` int NOT NULL,
  `discount_percentage` float DEFAULT '0',
  `discount_amount` double DEFAULT '0',
  `order_detail_status` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `date_allocated` datetime DEFAULT NULL,
  `price` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `product_name` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'Sản Phẩm Chưa Đặt Tên',
  `ship_date` datetime DEFAULT NULL,
  `image` varchar(500) NOT NULL,
  `category` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkorderdetai_order_idx` (`order_id`),
  KEY `fkorderdetail_product_idx` (`product_id`),
  KEY `fk_productDetail_cate_idx` (`category`),
  CONSTRAINT `fk_orderDetail_orderid` FOREIGN KEY (`order_id`) REFERENCES `shop_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_productDetail_cate` FOREIGN KEY (`category`) REFERENCES `shop_categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_detail`
--

LOCK TABLES `shop_order_detail` WRITE;
/*!40000 ALTER TABLE `shop_order_detail` DISABLE KEYS */;
INSERT INTO `shop_order_detail` VALUES (1,1,1,1,NULL,NULL,NULL,NULL,23040000.0000,'Laptop Asus ZenBook Flip 13 OLED UX363EA-HP726W',NULL,'https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F20849_laptop_asus_zenbook_flip_13_ux363ea_hp726w_9.jpg?alt=media&token=f01057a8-54d3-47c5-b3c9-5c636da2e5a6',NULL),(2,2,28,1,NULL,NULL,NULL,NULL,930020.0000,'Tai nghe Razer Hammerhead True Wireless X',NULL,'https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F38695_razer_hammerhead_true_wireless_x.jpg?alt=media&token=5c3b8b59-961b-459a-9b11-2408a255ffa7',NULL),(3,3,23,1,NULL,NULL,NULL,NULL,113680000.0000,'MacBook Pro 16 M1 Max- Z14Y0012P',NULL,'https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F21071_apple_macbook_pro_16_m1_max_z14y0012p.jpg?alt=media&token=592d5a8f-c4a4-427a-8c1e-4eb89d679cac',NULL),(4,11,21,1,NULL,NULL,NULL,NULL,22080000.0000,'Laptop Gigabyte G5 GE-51VN263SH',NULL,'https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F22291_laptop_gigabyte_g5_ge_51vn263sh_1.jpg?alt=media&token=614c8fcc-802d-4057-87d1-e72804e9a22e',NULL),(5,12,5,1,NULL,NULL,NULL,NULL,22000000.0000,'Laptop Asus Zenbook 14 Flip OLED UP5401ZA-KU140W',NULL,'https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F22588_laptop_asus_zenbook_14_flip_oled_up5401za_ku140w_5.jpg?alt=media&token=ccb0c215-c270-43a7-b4cd-529470e53864',NULL),(6,12,8,1,NULL,NULL,NULL,NULL,1144000.0000,'Laptop Lenovo IdeaPad 3 14IAU7 i3-1215U/8GB/512GB/Win11 82RJ001AVN',NULL,'https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F10054254-laptop-lenovo-ideapad-3-14iau7-i3-1215u-82rj001avn-1.jpg?alt=media&token=72357b28-7a6d-4ad6-b62c-b69d74a99701',NULL),(7,13,10,1,NULL,NULL,NULL,NULL,13552000.0000,'Laptop Lenovo V15 G2 i7-1165G7/8GB/512GB/Win11 82KB00QSVN',NULL,'https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F39522_lenovo_v15_g2_itl_ct1_03.png?alt=media&token=f4495577-7169-40c0-bdec-93ba225251eb',NULL),(8,14,23,1,NULL,NULL,NULL,NULL,113680000.0000,'MacBook Pro 16 M1 Max- Z14Y0012P',NULL,'https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F21071_apple_macbook_pro_16_m1_max_z14y0012p.jpg?alt=media&token=592d5a8f-c4a4-427a-8c1e-4eb89d679cac',NULL),(9,15,11,1,NULL,NULL,NULL,NULL,28420000.0000,'Laptop Lenovo Ideapad 3 14ITL6 i3-1115G4/8GB/512GB/Win11 (82H700XEVN)',NULL,'https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F48524_14itl6_82h700vlvn_h5.jpg?alt=media&token=aa4fb35a-c925-4a3f-9b47-e494fb1af22b',NULL),(10,16,4,1,NULL,NULL,NULL,NULL,19750000.0000,'Laptop Asus Gaming ROG Zephyrus G14 GA401QC-K2199W (R7 5800HS | 8GD4 | 512 SSD | 14.0WQHD | W11SL | RTX3050 4GB)',NULL,'https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F21630_laptop_asus_rog_zephyrus_g14_ga401qc_k2199w_1.jpg?alt=media&token=7a70bca7-b49b-4b99-adfb-41d55bdcce7e',NULL),(11,17,2,1,NULL,NULL,NULL,NULL,11475000.0000,'Laptop Asus ExpertBook P2451FA-BV3168T (Core i3-10110U, RAM 8GB, SSD 256GB, 14.0inch HD, Windows 10)',NULL,'https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F21840_p2451fa_bv3168t.jpg?alt=media&token=1aa9c165-707a-4148-8955-c2a58afbefe4',NULL),(12,17,4,1,NULL,NULL,NULL,NULL,19750000.0000,'Laptop Asus Gaming ROG Zephyrus G14 GA401QC-K2199W (R7 5800HS | 8GD4 | 512 SSD | 14.0WQHD | W11SL | RTX3050 4GB)',NULL,'https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F21630_laptop_asus_rog_zephyrus_g14_ga401qc_k2199w_1.jpg?alt=media&token=7a70bca7-b49b-4b99-adfb-41d55bdcce7e',NULL);
/*!40000 ALTER TABLE `shop_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_orders`
--

DROP TABLE IF EXISTS `shop_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `ship_name` varchar(50) DEFAULT NULL,
  `ship_address` varchar(500) DEFAULT NULL,
  `ship_city` varchar(255) DEFAULT NULL,
  `ship_state` varchar(255) DEFAULT NULL,
  `shipping_fee` decimal(19,4) DEFAULT NULL,
  `payment_type_id` bigint DEFAULT '1',
  `paid_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `order_status` int DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `total_price` bigint DEFAULT '0',
  `shipped_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_order_payment_idx` (`payment_type_id`),
  KEY `fk_user_orders_idx` (`user_id`),
  CONSTRAINT `fk_shoporder_paymentId` FOREIGN KEY (`payment_type_id`) REFERENCES `shop_payment_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_shoporder_userId` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_orders`
--

LOCK TABLES `shop_orders` WRITE;
/*!40000 ALTER TABLE `shop_orders` DISABLE KEYS */;
INSERT INTO `shop_orders` VALUES (1,1,NULL,'Phan Minh Thắng','Số nhà 10, ngõ 92, đường Phố Vọng, Phường Đồng Tâm, Quận Hai Bà Trưng','Thành phố Hà Nội','Quận Ba Đình',23000.0000,1,NULL,0,'2022-01-15 21:40:29','2023-01-15 21:40:29',23063000,NULL),(2,2,NULL,'Trần Thị Hoa','Tổ 6, Phường Vũ Ninh, TP. Bắc Ninh','Tỉnh Bắc Ninh','Thành phố Bắc Ninh',23000.0000,2,NULL,0,'2022-02-15 21:45:26','2023-02-15 21:45:26',953020,NULL),(3,3,NULL,'Nguyễn Văn Tùng','Số 1, đường Hai Bà Trưng, Phường Tân An, Quận Ninh Kiều','Thành phố Hà Nội','Quận Ba Đình',23000.0000,1,NULL,0,'2022-03-15 21:52:47','2023-03-15 21:52:47',113703000,NULL),(11,4,NULL,'Lê Huy Hoàng','Số 98A đường Nguyễn Việt Hồng, Phường An Bình, Quận Ninh Kiều','Thành phố Hà Nội','Quận Ba Đình',23000.0000,2,NULL,0,'2022-04-15 21:57:10','2023-04-15 21:57:10',22103000,NULL),(12,5,NULL,'Đỗ Thị Mỹ Linh','Số 67A đường Lê Hồng Phong, Phường Hưng Lợi, Quận Ninh Kiều','Thành phố Hà Nội','Quận Ba Đình',23000.0000,1,NULL,0,'2022-05-15 21:58:17','2023-05-15 21:58:17',23167000,NULL),(13,6,NULL,'Lương Đình Quyền','Số 1 Nguyễn Tất Thành, Phường Phương Sài, Thành phố Nha Trang, Khánh Hòa','Tỉnh Bà Rịa - Vũng Tàu','Thành phố Vũng Tàu',23000.0000,1,NULL,0,'2022-06-15 21:59:14','2023-06-15 21:59:14',13575000,NULL),(14,7,NULL,'Võ Ngọc Trân','Số 4, đường Hưng Phú 1, Khu phố 4, Phường Hưng Phú, Quận Cái Răng','Thành phố Hà Nội','Quận Ba Đình',23000.0000,1,NULL,0,'2022-07-15 21:59:56','2023-07-15 21:59:56',113703000,NULL),(15,8,NULL,'Nguyễn Đình Huy','23 Ngô Văn Sở, Phường Phương Sài, Thành phố Nha Trang, Khánh Hòa','Thành phố Hà Nội','Quận Ba Đình',23000.0000,1,NULL,0,'2022-08-15 22:03:05','2023-08-15 22:03:05',28443000,NULL),(16,9,NULL,'Nguyễn Thị Ngọc Mai','46 Nguyễn Chánh, Thành phố Nha Trang, Khánh Hòa','Thành phố Hà Nội','Quận Ba Đình',23000.0000,1,NULL,0,'2022-09-15 22:07:42','2023-05-15 22:07:42',19773000,NULL),(17,1,NULL,'Phan Minh Thắng','Tổ 6, Phường Vũ Ninh, TP. Bắc Ninh, Tỉnh Bắc Ninh, Việt Nam','Thành phố Hà Nội','Quận Ba Đình',23000.0000,2,NULL,0,'2023-05-15 22:10:04','2023-05-15 22:10:04',31248000,NULL);
/*!40000 ALTER TABLE `shop_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_payment_types`
--

DROP TABLE IF EXISTS `shop_payment_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_payment_types` (
  `id` bigint NOT NULL,
  `payment_code` varchar(50) DEFAULT NULL,
  `payment_name` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_payment_types`
--

LOCK TABLES `shop_payment_types` WRITE;
/*!40000 ALTER TABLE `shop_payment_types` DISABLE KEYS */;
INSERT INTO `shop_payment_types` VALUES (1,'TIENMAT','Thanh Toán Tiền Mặt','Thanh toán sau khi nhận hàng',NULL,'2022-10-27 17:29:42','2022-10-27 17:29:42',NULL),(2,'MOMO','Thanh Toán Momo','Thanh toán bằng phương thức momo',NULL,'2022-10-05 01:08:57','2022-10-05 01:08:57',NULL),(3,'PAYPAL','Thanh Toán PayPal','Thanh toán bằng Ví PayPal',NULL,'2022-10-27 20:55:21','2022-10-27 20:55:21',NULL);
/*!40000 ALTER TABLE `shop_payment_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_discount`
--

DROP TABLE IF EXISTS `shop_product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_product_discount` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `discount_name` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `is_fixed` bit(1) DEFAULT b'0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkdiscount_product_idx` (`product_id`),
  CONSTRAINT `fkdiscount_product` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_discount`
--

LOCK TABLES `shop_product_discount` WRITE;
/*!40000 ALTER TABLE `shop_product_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_image`
--

DROP TABLE IF EXISTS `shop_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_product_image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `image` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkimage_product_idx` (`product_id`),
  CONSTRAINT `fkimage_product` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_image`
--

LOCK TABLES `shop_product_image` WRITE;
/*!40000 ALTER TABLE `shop_product_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_reviews`
--

DROP TABLE IF EXISTS `shop_product_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_product_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `comment` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` bit(1) DEFAULT b'0',
  `rating` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fkreview_product_idx` (`product_id`),
  KEY `fkReview_user_idx` (`customer_id`),
  CONSTRAINT `fkreview_product` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fkreview_user` FOREIGN KEY (`customer_id`) REFERENCES `app_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_reviews`
--

LOCK TABLES `shop_product_reviews` WRITE;
/*!40000 ALTER TABLE `shop_product_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_product_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product_vouchers`
--

DROP TABLE IF EXISTS `shop_product_vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_product_vouchers` (
  `id` bigint NOT NULL,
  `product_id` bigint DEFAULT NULL,
  `voucher_id` bigint DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `isdeleted_at` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `fkvoucher_product_idx` (`product_id`),
  CONSTRAINT `fkvoucher_product` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product_vouchers`
--

LOCK TABLES `shop_product_vouchers` WRITE;
/*!40000 ALTER TABLE `shop_product_vouchers` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_product_vouchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_products`
--

DROP TABLE IF EXISTS `shop_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_code` varchar(25) NOT NULL,
  `product_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `image` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `short_decription` varchar(250) NOT NULL DEFAULT 'Chúng tôi đảm bảo:\r\n- Mang lại cho quý khách những sản phẩm tốt nhất, đẹp nhất.\r\n- Nếu hàng bị lỗi do sản xuất. Shin Case cam kết sẽ hoàn tiền hoặc gửi lại sản mới thay thế cho quý khách.\r\n- Thương hiệu tạo niềm tin!',
  `decription` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `stand_cost` decimal(19,4) DEFAULT NULL,
  `list_price` decimal(19,4) NOT NULL DEFAULT '0.0000',
  `quantity_per_unit` int NOT NULL DEFAULT '0',
  `discountinued` tinyint DEFAULT '0',
  `is_featured` bit(1) NOT NULL DEFAULT b'0',
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  `category_id` bigint NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `quantity_sold` bigint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fkproduct_category_idx` (`category_id`),
  CONSTRAINT `fkproduct_category` FOREIGN KEY (`category_id`) REFERENCES `shop_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_products`
--

LOCK TABLES `shop_products` WRITE;
/*!40000 ALTER TABLE `shop_products` DISABLE KEYS */;
INSERT INTO `shop_products` VALUES (1,'Laptop Asus ','Laptop Asus ZenBook Flip 13 OLED UX363EA-HP726W','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F20849_laptop_asus_zenbook_flip_13_ux363ea_hp726w_9.jpg?alt=media&token=f01057a8-54d3-47c5-b3c9-5c636da2e5a6','Thiết kế màn hình cảm ứng, xoay gập 360 độ vô cùng tiện lợi. Kèm theo đó là sự sang trọng bởi màu sắc xám thông tinh tế, Asus ZenBook Flip 13 UX363EA là lựa chọn hàng đầu của các doanh nhân hay phải di chuyển trong công việc.','Bảo hành: Đổi mới trong 30 ngày đầu khi có lỗi của nhà sản xuất. Bảo hành 24 tháng thân máy, Pin bảo hành 12 tháng tại Asus Việt Nam hoặc tại Công ty An Khang.',20000.0000,24000000.0000,887,4,_binary '\0',_binary '\0',1,'2023-02-19 12:37:27','2023-02-19 12:37:27',NULL),(2,'AsusExpertBook ','Laptop Asus ExpertBook P2451FA-BV3168T (Core i3-10110U, RAM 8GB, SSD 256GB, 14.0inch HD, Windows 10)','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F21840_p2451fa_bv3168t.jpg?alt=media&token=1aa9c165-707a-4148-8955-c2a58afbefe4','Bảo hành: Đổi mới trong 30 ngày đầu khi có lỗi của nhà sản xuất. Bảo hành 24 tháng thân máy, Pin bảo hành 12 tháng tại Asus Việt Nam hoặc tại Công ty An Khang.','Một chiếc laptop doanh nghiệp giá rẻ, sở hữu hiệu suất mạnh mẽ trong phân khúc giá, sẽ giúp bạn giải quyết mọi công việc văn phòng một cách nhanh mượt. Laptop Asus ExpertBook P2451FA-BV3168T có khả năng mở màn hình với góc 180 độ sẽ giúp bạn làm việc đa nhiệm hơn, dễ dàng chia sẻ nội dung và có được những trải nghiệm tối ưu hơn với công việc và giải trí. Mời bạn cùng An Khang đi tìm hiểu kỹ hơn về sản phẩm ở bài viết',20000.0000,13500000.0000,31231,15,_binary '\0',_binary '\0',1,'2023-02-19 13:08:45','2023-02-19 13:08:45',NULL),(3,'AsusVivobook ','Laptop Asus Vivobook 14 X415EA-EB640W','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F20944_laptop_asus_vivobook_14_x415ea_eb640w_1.jpg?alt=media&token=86478696-a6d4-4bc7-b614-8574fb62e9e3','Bảo hành: Đổi mới trong 30 ngày đầu khi có lỗi của nhà sản xuất. Bảo hành 24 tháng thân máy, Pin bảo hành 12 tháng tại Asus Việt Nam hoặc tại Công ty An Khang.','Sở hữu thiết kế mỏng nhẹ, thanh thoát, Asus Vivobook 14 X415EA không chỉ có cân nặng nhẹ nhàng, tính di động cao, mà hiệu năng phần cứng của nó còn đáp ứng được toàn bộ nhu cầu công việc văn phòng và một số phần mềm nặng một cách mượt mà.',10000.0000,14990000.0000,9278,21,_binary '\0',_binary '\0',1,'2023-02-19 13:10:18','2023-02-19 13:10:18',NULL),(4,'AsusGaming','Laptop Asus Gaming ROG Zephyrus G14 GA401QC-K2199W (R7 5800HS | 8GD4 | 512 SSD | 14.0WQHD | W11SL | RTX3050 4GB)','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F21630_laptop_asus_rog_zephyrus_g14_ga401qc_k2199w_1.jpg?alt=media&token=7a70bca7-b49b-4b99-adfb-41d55bdcce7e','Bảo hành: Đổi mới trong 30 ngày đầu khi có lỗi của nhà sản xuất. Bảo hành 24 tháng thân máy, Pin bảo hành 12 tháng tại Asus Việt Nam hoặc tại Công ty An Khang.','Một trong những sức mạnh giúp bạn dành chiến thắng trong các trận chiến đó chính là cỗ máy có cấu hình khủng và sẵn sàng cùng bạn đương đầu với mọi thử thách cam go cho dù chướng ngại vật đó có đòi hỏi khắt khe về hiệu suất như thế nào đi chăng nữa. Laptop Asus ROG Zephyrus G14 GA401QC-K2199W sẽ giúp bạn hoàn thành được ý nguyện chỉ cần bạn quyết tâm đồng hành cùng với em nó mà thôi',120000.0000,25000000.0000,29206,21,_binary '\0',_binary '\0',1,'2023-02-19 13:11:51','2023-02-19 13:11:51',NULL),(5,'AsusZenbook','Laptop Asus Zenbook 14 Flip OLED UP5401ZA-KU140W','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F22588_laptop_asus_zenbook_14_flip_oled_up5401za_ku140w_5.jpg?alt=media&token=ccb0c215-c270-43a7-b4cd-529470e53864','Bảo hành: Đổi mới trong 30 ngày đầu khi có lỗi của nhà sản xuất. Bảo hành 24 tháng thân máy, Pin bảo hành 12 tháng tại Asus Việt Nam hoặc tại Công ty An Khang.','KHUYẾN MÃI:\n*** Nhận ngay Voucher quà tặng trị giá 200.000đ khi review sản phẩm. Chi tiết chương trình xem tại đây.\n-----------------------------------------------------------------------\n- Tặng Chuột không dây Rapoo M20 bảo hành 24 tháng đổi mới, trị giá 200.000đ\n- Túi MTXT Asus\n- Tặng gói dịch vụ bảo trì, vệ sinh laptop trong 2 năm trị giá 999.000đ. ',23444.0000,25000000.0000,2413,12,_binary '\0',_binary '\0',1,'2023-02-19 13:13:15','2023-02-19 13:13:15',NULL),(6,'AsusVivobook ','Laptop Asus Vivobook Pro 14 OLED M3401QA-KM040W','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F21031_laptop_asus_vivobook_pro_14_ole_m3401qa_km040w_1.jpg?alt=media&token=cb84a5f0-5ce1-4d1c-b746-845192313f4a','Bảo hành: Đổi mới trong 30 ngày đầu khi có lỗi của nhà sản xuất. Bảo hành 24 tháng thân máy, Pin bảo hành 12 tháng tại Asus Việt Nam hoặc tại Công ty An Khang.','ĐẶC ĐIỂM NỔI BẬT CỦA SẢN PHẨM ASUS VIVOBOOK PRO 14 OLED M3401QA-KM040W\n\n- Thiết kế mỏng nhẹ, năng động với hai phiên bản màu sắc để bạn lựa chọn là màu bạc và xanh.\n\n- Mặt A được hoàn thiện bằng chất liệu kim loại, có chứa đựng logo Vivook phong cách.\n\n- Hiệu năng mạnh mẽ với tùy chọn chip AMD Ryzen hậu tố H chuyên dành cho những chiếc laptop chơi game.\n\n- Màn hình hiển thị chất lượng tuyệt vời nhờ vào công nghệ OLED, tỉ lệ màn hình 16:10, độ phân giải cao.\n\n- Được tích hợp tính năng NumberPad với phiên bản 14inch.\n\n- Bàn phím hành trình 1.35mm, cảm giác gõ thoải mái.\n\n- Tản nhiệt kép hiệu quả.\n\n- Tính năng bảo mật cao gồm: Bảo mật vân tay, nắp che Webcam vật lý.\n\n- Cổng kết nối đa dạng.',12000.0000,25600000.0000,42123,NULL,_binary '\0',_binary '\0',1,'2023-02-19 13:15:53','2023-02-19 13:15:53',NULL),(7,'ASUSZenbook','Laptop ASUS Zenbook 14 OLED UM3402YA-KM074W','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F21560_asus_zenbook_14_oled_um3402ya_1.jpg?alt=media&token=766b8642-b97a-4d1e-9281-9a13a7669b93','Bảo hành: Đổi mới trong 30 ngày đầu khi có lỗi của nhà sản xuất. Bảo hành 24 tháng thân máy, Pin bảo hành 12 tháng tại Asus Việt Nam hoặc tại Công ty An Khang','Nếu bạn là người yêu công nghệ, luôn muốn tìm kiếm những điều mới mẻ để tạo nên sự khác biệt. Thì chắc chắn rằng bạn sẽ không bỏ qua siêu phẩm laptop cao cấp ASUS Zenbook 14 OLED UM3402YA-KM074W. Một sản phẩm mới nhất của hãng Asus mới được ra mắt trong thời gian gần đây. Với kích thước mỏng chỉ 16.9mm và nhẹ 1.39kg,',12000.0000,25300000.0000,23110,23,_binary '\0',_binary '\0',1,'2023-02-19 13:17:52','2023-02-19 13:17:52',NULL),(8,'LenovoIdeaPad','Laptop Lenovo IdeaPad 3 14IAU7 i3-1215U/8GB/512GB/Win11 82RJ001AVN','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F10054254-laptop-lenovo-ideapad-3-14iau7-i3-1215u-82rj001avn-1.jpg?alt=media&token=72357b28-7a6d-4ad6-b62c-b69d74a99701','Mua Online nhập mã MID2 giảm thêm đến 1.000.000đ từ 17/02 - 20/02. Xem chi tiết  2 Tặng Voucher giảm giá 300.000đ (dành cho Học Sinh - Sinh Viên)  3 Bảo hành 02 năm (dành cho Học Sinh - Sinh Viên)','Đặc điểm nổi bật\nNgoại hình sang trọng với màu Xanh trẻ trung\nCPU Intel i3-1125G4 mang đến hiệu năng ấn tượng\nRAM 8GB đa nhiệm chạy được nhiều Tab một lúc\nỔ cứng 512GB mang đến không gian lưu trữ rộng lớn\nHệ điều hành Windows 11 thân thiện với người dùng',23000.0000,1300000.0000,231230,12,_binary '\0',_binary '\0',2,'2023-02-19 13:20:34','2023-02-19 13:22:22',NULL),(9,'LenovoThinkbook ','Laptop Lenovo Thinkbook 14s G2 ITL i7-1165G7/8GB/512GB/Win11 20VA003RVN','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F3-500x500.jpg?alt=media&token=b4ecacfd-a9da-4b8e-b6be-39d40e967a16','Bảo hành: Đổi mới trong 30 ngày đầu khi có lỗi của nhà sản xuất. Bảo hành 24 tháng thân máy, Pin bảo hành 12 tháng tại Asus Việt Nam hoặc tại Công ty An Khang','1\nMua Online nhập mã MID2 giảm thêm đến 1.000.000đ từ 17/02 - 20/02. Xem chi tiết\n\n2\nTặng Voucher giảm giá 300.000đ (dành cho Học Sinh - Sinh Viên)\n\n3\nBảo hành 02 năm (dành cho Học Sinh - Sinh Viên)',23000.0000,15600000.0000,2130,12,_binary '\0',_binary '\0',2,'2023-02-19 13:22:06','2023-02-27 22:51:05',NULL),(10,'Laptop enovo ','Laptop Lenovo V15 G2 i7-1165G7/8GB/512GB/Win11 82KB00QSVN','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F39522_lenovo_v15_g2_itl_ct1_03.png?alt=media&token=f4495577-7169-40c0-bdec-93ba225251eb','Ngoại hình đẹp, sang','Mua Online nhập mã MID2 giảm thêm đến 1.000.000đ từ 17/02 - 20/02. Xem chi tiết\n\n2\nTặng Voucher giảm giá 300.000đ (dành cho Học Sinh - Sinh Viên)\n\n3\nBảo hành 02 năm (dành cho Học Sinh - Sinh Viên)\n\n4\nTặng túi hoặc ba lô đựng Laptop\n5\n\nGiảm thêm 500.000đ khi thanh toán bằng thẻ tín dụng Citibank\n\n6\n\nNhận e-voucher đến 2 triệu đồng và vali kéo trị giá 2.5 triệu đồng khi mở thẻ Citibank\n\n7\nGiảm thêm 500.000đ khi thanh toán bằng thẻ tín dụng BIDV',23000.0000,17600000.0000,213122,23,_binary '\0',_binary '\0',2,'2023-02-19 13:25:31','2023-02-27 22:52:15',NULL),(11,'LenovoIdeapad','Laptop Lenovo Ideapad 3 14ITL6 i3-1115G4/8GB/512GB/Win11 (82H700XEVN)','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F48524_14itl6_82h700vlvn_h5.jpg?alt=media&token=aa4fb35a-c925-4a3f-9b47-e494fb1af22b','Mua Online nhập mã MID2 giảm thêm đến 1.000.000đ từ 17/02 - 20/02.','Bộ vi xử lý Intel Core i3-1115G4 xử lý tốt các tác vụ học tập, văn phòng\nRAM 8GB giúp laptop chạy đa nhiệm mượt mà, ổn định, hạn chế giật lag\nỔ cứng SSD 512GB giúp khởi động máy nhanh, không gian lưu trữ tốt\nTrải nghiệm hình ảnh rõ nét trên màn hình 14\'\' độ phân giải FHD\nCông nghệ Dolby Audio cho trải nghiệm âm thanh giả trí sống động\nLaptop có trọng lượng khoảng 1.41 kg, dễ dàng mang theo sử dụng',23000.0000,29000000.0000,2321,2,_binary '\0',_binary '\0',2,'2023-02-19 13:28:07','2023-02-27 22:54:48',NULL),(12,'LenovoIdeaPad 3 ','Laptop Lenovo IdeaPad 3 15ITL6 i5-1135G7/8GB/256GB/Win10 82H800M3VN','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2Foob9mqiu8sg33.jpg?alt=media&token=7d23a29a-20a9-4b74-98eb-b507fa2eebb8','Mua Online nhập mã MID2 giảm thêm đến 1.000.000đ từ 17/02 - 20/02.','Bộ vi xử lý Intel Core i5-1135G7 xử lý công việc văn phòng nhanh chóng\nRAM 8GB DDR4 giúp laptop đa nhiệm mượt mà, hạn chế tình trạng giật lag\nỔ cứng SSD 256GB giúp khởi động máy nhanh chóng, lưu trữ nhiều dữ liệu\nTrải nghiệm hình ảnh sắc nét, màu sắc chân thực trên màn hình 15.6 inch FHD\nCard đồ hoạ tích hợp Intel Iris Xe Graphics giúp chỉnh sửa hình ảnh cơ bản',23000.0000,28000000.0000,2323,3,_binary '\0',_binary '\0',2,'2023-02-19 13:29:36','2023-02-27 22:56:47',NULL),(13,'B11SBU-668VN','Laptop MSI Modern 14 B11SBU-668VN (i5-1155G7, MX450 2GB, Ram 8GB, SSD 512GB, 14 Inch IPS FHD)','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2Fimages.jpeg?alt=media&token=193299ce-d916-46c2-a8a1-2d2ac19c33e5','Laptop Gaming MSI Katana GF66 12UCK-699VN (i5-12450H/8GB/512GB/RTX3050/15.6\" FHD/WIN 11/Đen) - Chính hãng','Không có đối thủ cùng cấu hình trong tầm giá - chính là Laptop Gaming MSI Katana GF66 12UCK-699VN được bán chính hãng tại Hoàng Hà Mobile. Trang bị cấu hình Intel đời mới nhất i5-12450H cùng 8GB RAM và bộ nhớ lên đến 512GB, chưa dừng lại ở đó, người dùng sẽ có trải nghiệm chơi game không thể tuyệt vời hơn với RTX3050 trên chiếc màn hình 15,6 inch và Windows 11 bản quyền.',23000.0000,23000.0000,29000,4,_binary '\0',_binary '\0',1,'2023-02-19 14:42:54','2023-02-27 22:58:45',NULL),(14,'GamingGF63','Laptop MSi Gaming GF63 11UC 443VN - Chính hãng - I5-11400H/8GB/512GB PCIE/VGA 4GB RTX3050 /15.6 FHD/WIN10/ĐEN','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2Flaptopmsigaminggf63-nc1.jpg?alt=media&token=d1142d87-9db0-4330-b74c-628382260d50','Mua Laptop MSi Gaming GF63 11UC 443VN chính hãng giá rẻ tại Hoàng Hà Mobile','Laptop MSi Gaming GF63 11UC 443VN là một chiếc Laptop Gaming tầm trung trang bị CPU I5-11400H với 6 nhân, 12 luồng đủ nhanh cho các tác vụ làm việc, học tập và sáng tạo. Đi kèm với RTX 3050 sẽ cung cấp cho bạn tốc độ khung hình với mức Setting Ultra. Là một chiếc Laptop Gaming, nhưng MSI mỏng hơn, nhẹ hơn và yên tĩnh hơn so với các chiếc Laptop khác của bạn.',23000.0000,25000000.0000,22999,4,_binary '\0',_binary '\0',1,'2023-02-19 14:43:45','2023-02-27 23:01:48',NULL),(15,'C5M-030VN','Laptop MSI Modern 14 C5M-030VN, R5-5625U/8GB/512GB SSD/14\" FHD IPS/W11H/Đen- Chính hãng','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F0688a0f2127ccb570a0f9e978f9d558e.png?alt=media&token=6bea38b2-dd08-4c03-940b-365617a9c907','Mua Laptop MSI Modern 14 C5M-030VN giá rẻ chính hãng tại Hoàng Hà Mobile','MSI là thương hiệu thường được biết đến với dòng sản phẩm chơi game đình đám. Nhưng hiện nay, hãng cũng đã cho ra đời những dòng laptop dành cho người đi làm hay doanh nhân. Với Laptop MSI Modern 14 C5M-030VN, thiết bị đã được nhiều người dùng đánh giá cao với nhiều cải tiến trong thiết kế và đi kèm với hiệu năng vô cùng mạnh mẽ trong tầm giá.',23.0000,19000000.0000,23411,2,_binary '\0',_binary '\0',3,'2023-02-19 14:44:36','2023-02-27 23:04:57',NULL),(16,'11UD-473VN','Laptop MSI GF63 Thin 11UD-473VN (i5-11400H/8GB/512GB/RTX3050 Ti Max-Q 4GB/15.6\"FHD/60Hz/WIN 11/Đen) - Chính hãng','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F80a8603b7c4d2afdd9a0eb13359601de.jpeg?alt=media&token=906dedef-6ef7-4c29-a2f9-e946b511ce84','Mua Laptop MSI GF63 Thin 11UD-473VN chính hãng giá rẻ tại Hoàng Hà Mobile','Với các dòng MSI thì không xa lạ gì về hiệu năng, chất lượng của sản phẩm và đặc biệt là giúp các game thủ chiến mọi tựa game. MSI GF63 Thin 11UD-473VN sở hữu CPU Intel Core i5-11400H Gen 11th đi kèm card rời NVIDIA GeForce RTX 3050 TiMax-Q 4GB, giúp bạn có thể sử dụng dễ dàng các ứng dụng văn phòng hoặc thiết kế đồ họa chuyên sâu. Phần setting trong các tựa game từ Medium đến High không thua kém gì với những chiếc PC gaming. Máy được trang bị Ram 8GB DDR4 3200MHz hỗ trợ nâng cấp song song còn đi kèm với 512GB NVMe PCIe Gen3x4 SSD cho không gian lưu trữ tốt, đồng thời rút ngắn thời gian khởi động máy và ứng dụng chỉ trong vài giây.\n\n',23000.0000,23000000.0000,2134,4,_binary '\0',_binary '\0',3,'2023-02-19 14:45:25','2023-02-27 23:05:35',NULL),(17,'maboookm2','MacBook Pro M2 13\" 2022 - 256GB - Chính hãng Apple Việt Nam','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2Fvi-vn-apple-macbook-pro-13-inch-m2-2022-thumbvideo.jpg?alt=media&token=7eed4b19-c92c-4d13-837a-5a36fcae6806','Giảm thêm tới 300.000đ khi thanh toán qua VNPAY - (Xem chi tiết)','Tất cả Macbook chính hãng Apple Việt Nam, được phân phối tại Hoàng Hà Mobile đều được nhập trực tiếp từ Công ty TNHH Apple Việt Nam. HoangHa Mobile là nhà bán lẻ ủy quyền chính thức của Apple tại Việt Nam.\n\n',23000.0000,30900000.0000,12423,3,_binary '\0',_binary '\0',6,'2023-02-19 14:48:50','2023-02-27 23:17:26',NULL),(18,'m1macbook','Laptop Apple M1 - MacBook Pro 13\" 256GB 2020 - Chính hãng Apple Việt Nam','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2Fimages%20(1).jpeg?alt=media&token=e1ffa432-03c0-4f4a-b745-04fe787f9f49',' Ưu đãi giảm thêm 100.000đ khi mua Microsoft Office kèm Laptop, Macbook, Máy tính bảng, Điện thoại - (Xem chi tiết)','Tất cả Macbook chính hãng Apple Việt Nam, được phân phối tại Hoàng Hà Mobile đều được nhập trực tiếp từ Công ty TNHH Apple Việt Nam. HoangHa Mobile là nhà bán lẻ ủy quyền chính thức của Apple tại Việt Nam.',23000.0000,2300000.0000,23241,4,_binary '\0',_binary '\0',6,'2023-02-19 14:49:46','2023-02-27 23:18:21',NULL),(19,'Aspire3','Laptop Acer Aspire 3 A315-57G-32QP NX.HZRSV.00A','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F21112_laptop_acer_aspire_3_a315_57g_32qp_1.jpg?alt=media&token=a51e2e07-1352-45d5-9a21-7704d8eb6c2c','CPU Intel Core i3-1005G1 (4MB, up to 3.40GHz)','Bạn đang tìm kiếm một mã laptop để học tập, làm việc văn phòng nhưng có \"đá\" qua một chút chỉnh sửa ảnh, hoặc có nhu cầu gaming online ngoài giờ. Chỉ với 10 hơn triệu một xíu, đến với An Khang bạn sẽ có ngay một chiếc laptop mới cứng, đáp ứng tốt nhu cầu trên của bạn mang tên: Acer Aspire 3 A315-57G-32QP NX.HZRSV.00A. Xem thông tin chi tiết mã laptop văn phòng này ngay thôi nào.',23000.0000,24000000.0000,22999,23,_binary '\0',_binary '\0',5,'2023-02-19 14:52:21','2023-02-19 14:56:47',NULL),(20,'Nitro5','Laptop Acer Gaming Nitro 5 Tiger AN515-58-79UJ NH.QHYSV.001','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F22078_laptop_acer_gaming_nitro_5_tiger_an515_58_79uj_nh_qhysv_001_1.jpg?alt=media&token=3274006c-152d-4df2-88b5-91390e696955','Bảo hành: Đổi mới trong 30 ngày đầu khi có lỗi của nhà sản xuất. Bảo hành 24 tháng thân máy, Pin bảo hành 12 tháng tại Asus Việt Nam hoặc tại Công ty An Khang','KHUYẾN MÃI: *** Nhận ngay Voucher quà tặng trị giá 200.000đ khi review sản phẩm. Chi tiết chương trình xem tại đây. ----------------------------------------------------------------------- - Tặng Chuột không dây Rapoo M20 bảo hành 24 tháng đổi mới, trị giá 200.000đ - Túi MTXT Asus - Tặng gói dịch vụ bảo trì, vệ sinh laptop trong 2 năm trị giá 999.000đ. ',23000.0000,1200000.0000,0,3,_binary '\0',_binary '\0',5,'2023-02-19 14:53:01','2023-02-19 14:53:01',NULL),(21,'gigabyte3','Laptop Gigabyte G5 GE-51VN263SH','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F22291_laptop_gigabyte_g5_ge_51vn263sh_1.jpg?alt=media&token=614c8fcc-802d-4057-87d1-e72804e9a22e','Bảo hành: Đổi mới trong 30 ngày đầu khi có lỗi của nhà sản xuất. Bảo hành 24 tháng thân máy, Pin bảo hành 12 tháng tại Asus Việt Nam hoặc tại Công ty An Khang','KHUYẾN MÃI: *** Nhận ngay Voucher quà tặng trị giá 200.000đ khi review sản phẩm. Chi tiết chương trình xem tại đây. ----------------------------------------------------------------------- - Tặng Chuột không dây Rapoo M20 bảo hành 24 tháng đổi mới, trị giá 200.000đ - Túi MTXT Asus - Tặng gói dịch vụ bảo trì, vệ sinh laptop trong 2 năm trị giá 999.000đ. ',23000.0000,23000000.0000,21421,4,_binary '\0',_binary '\0',4,'2023-02-19 14:54:03','2023-02-19 14:54:03',NULL),(22,'AORUS15p','Laptop Gigabyte AORUS 15P KD-72S1223GO','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F21029_laptop_gigabyte_aorus_15p_kd_72s1223go_1.jpg?alt=media&token=288b1ed5-32ee-4c8b-97a0-175a0647e597','Bảo hành: Đổi mới trong 30 ngày đầu khi có lỗi của nhà sản xuất. Bảo hành 24 tháng thân máy, Pin bảo hành 12 tháng tại Asus Việt Nam hoặc tại Công ty An Khang','KHUYẾN MÃI: *** Nhận ngay Voucher quà tặng trị giá 200.000đ khi review sản phẩm. Chi tiết chương trình xem tại đây. ----------------------------------------------------------------------- - Tặng Chuột không dây Rapoo M20 bảo hành 24 tháng đổi mới, trị giá 200.000đ - Túi MTXT Asus - Tặng gói dịch vụ bảo trì, vệ sinh laptop trong 2 năm trị giá 999.000đ. ',23000.0000,19000000.0000,1241,21,_binary '\0',_binary '\0',4,'2023-02-19 14:54:57','2023-02-19 14:54:57',NULL),(23,'m1maxpro','MacBook Pro 16 M1 Max- Z14Y0012P','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F21071_apple_macbook_pro_16_m1_max_z14y0012p.jpg?alt=media&token=592d5a8f-c4a4-427a-8c1e-4eb89d679cac','Bảo hành: Đổi mới trong 30 ngày đầu khi có lỗi của nhà sản xuất. Bảo hành 24 tháng thân máy, Pin bảo hành 12 tháng tại Asus Việt Nam hoặc tại Công ty An Khang','KHUYẾN MÃI: *** Nhận ngay Voucher quà tặng trị giá 200.000đ khi review sản phẩm. Chi tiết chương trình xem tại đây. ----------------------------------------------------------------------- - Tặng Chuột không dây Rapoo M20 bảo hành 24 tháng đổi mới, trị giá 200.000đ - Túi MTXT Asus - Tặng gói dịch vụ bảo trì, vệ sinh laptop trong 2 năm trị giá 999.000đ. ',23000.0000,116000000.0000,12285,2,_binary '\0',_binary '\0',6,'2023-02-19 14:56:14','2023-02-27 20:47:10',NULL),(24,'MK193','MK193 – MacBook Pro 16 inch 2021 – (M1 Pro/16GB/1TB) - New, AppleCare+ 2026','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2FMacBook-Pro-16-inch-2021-Gray-M1-Pro-AC-1024x1024.png?alt=media&token=3c221213-094a-41a2-bec8-cf06690fb7ef','Apple đã nâng cấp hiệu năng chiếc MacBook Pro 2021 16 inch MK193 lên một tầm cao mới với chip Apple M1 Pro, Ram 16GB và SSD 1TB. MK193 – là chiếc MacBook Pro có màu Space Gray và cấu hình vừa đủ của dòng MacBook Pro 16 inch 2021.','Tình trạng: New, Nguyên Seal, AppleCare+ 2026\nMàu: Xám (Space Gray)\nCPU: Apple M1 Pro with 10-core CPU\nGPU: 16-core GPU, 16-core Neural Engine\nRAM: 16GB\nStorage: 1TB SSD Storage\nMàn hình: 16.2 inch Liquid Retina XDR display (3456x2234), 254ppi\nInterface: MagSafe 3, 3x Thunderbolt 4, HDMI, SDXC Card, Jack 3.5mm\nMagic Keyboard & Touch ID\n140W USB-C Power Adapter\nTrọng lượng: 2.1Kg',23000.0000,58000000.0000,12342,NULL,_binary '\0',_binary '\0',6,'2023-02-27 23:15:49','2023-02-27 23:15:49',NULL),(25,'PKLT1','Túi đeo dây rút Kingston','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F17560_hxs_hsbg_1.jpg?alt=media&token=d2309a84-0d6b-416c-95ac-b9b5d2de8bbb','Túi đeo dây rút dành cho tai nghe Cloud, CloudX, Cloud II và Cloud Alpha','Túi đeo dây rút dành cho tai nghe Cloud, CloudX, Cloud II và Cloud Alpha\n- Màu : Đỏ\n- Tương thích : Đựng tai nghe cho Cloud, CloudX, Cloud II và Cloud Alpha',23000.0000,290000.0000,2134,3,_binary '\0',_binary '\0',7,'2023-02-27 23:20:07','2023-02-27 23:20:07',NULL),(26,'MSI001','Balo MTXT MSI Gaming 17.0inch','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F18763_balo_msi_gaming_17.jpg?alt=media&token=b6e88b49-95b1-4220-afee-6bbd41109883','Balo MSI gaming dành cho máy tính xách tay 15.6, 17 inch.','Balo MSI gaming dành cho máy tính xách tay 15.6, 17 inch.\nBalo có nhiều ngăn chứa, khá rộng rãi, có thể sử dụng đựng máy tính và nhiều đồ đạc cá nhân khác.\nThiết kế theo phong cách gaming, vô cùng mạnh mẽ.\nBalo màu đen kết hợp đường viền màu đỏ cùng logo rồng MSI nổi bật.\nHệ thống khóa kéo trơn mượt được gia công tỉ mỉ đảm bảo chắc chắn và an toàn cho các thiết bị bên trong.',23000.0000,199000.0000,23120,3,_binary '\0',_binary '\0',7,'2023-02-27 23:21:30','2023-02-27 23:21:30',NULL),(27,'HyperX001','Tai nghe HyperX Cloud 2 Red','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F16858_anphatpc_kingston_hyperx_cloud_ii_headphone_gaming_gear_pc_ps4_red_3.jpg?alt=media&token=58991446-b6a1-4d1a-9d40-88d19886cd01','Tai nghe HyperX Cloud 2 Red','Tai nghe HyperX Cloud 2 Red\nBộ chuyển đổi: động đường kính 53mm\nTần số phản hồi: 15Hz–25,000 Hz\nSPL định mức: 98±3dB',23000.0000,230000.0000,23123,2,_binary '\0',_binary '\0',7,'2023-02-27 23:22:57','2023-02-27 23:22:57',NULL),(28,'Razer001','Tai nghe Razer Hammerhead True Wireless X','https://firebasestorage.googleapis.com/v0/b/project-agricultural.appspot.com/o/Files%2FHungphi%2F38695_razer_hammerhead_true_wireless_x.jpg?alt=media&token=5c3b8b59-961b-459a-9b11-2408a255ffa7','Tai nghe Razer Hammerhead True Wireless X','Tai nghe Razer Hammerhead True Wireless X\nKết nối bluetooth 5.2 với tính năng tự động kết nối\nĐộ trễ cực thấp, chỉ 60ms tuyệt vời cho gaming\nTai nghe True Wireless thế hệ mới nhất',23000.0000,949000.0000,2129,2,_binary '\0',_binary '\0',7,'2023-02-27 23:23:56','2023-02-27 23:23:56',NULL);
/*!40000 ALTER TABLE `shop_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_warehouse`
--

DROP TABLE IF EXISTS `shop_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_warehouse` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `quantity` int NOT NULL,
  `note` varchar(200) NOT NULL DEFAULT 'Nhập kho',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` bit(1) DEFAULT b'0',
  `status` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_warehouse_product_idx` (`product_id`),
  CONSTRAINT `fk_warehouse_product` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_warehouse`
--

LOCK TABLES `shop_warehouse` WRITE;
/*!40000 ALTER TABLE `shop_warehouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ROLE`
--

DROP TABLE IF EXISTS `USER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_ROLE` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `USER_ROLE_UK` (`user_id`,`role_id`),
  KEY `USER_ROLE_FK2` (`role_id`),
  CONSTRAINT `USER_ROLE_FK1` FOREIGN KEY (`user_id`) REFERENCES `APP_USER` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `USER_ROLE_FK2` FOREIGN KEY (`role_id`) REFERENCES `APP_ROLE` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ROLE`
--

LOCK TABLES `USER_ROLE` WRITE;
/*!40000 ALTER TABLE `USER_ROLE` DISABLE KEYS */;
INSERT INTO `USER_ROLE` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1);
/*!40000 ALTER TABLE `USER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-17 23:18:02
