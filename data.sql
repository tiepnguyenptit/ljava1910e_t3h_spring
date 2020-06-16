-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_project_t3h
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dbo_cart`
--

DROP TABLE IF EXISTS `dbo_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_cart`
--

LOCK TABLES `dbo_cart` WRITE;
/*!40000 ALTER TABLE `dbo_cart` DISABLE KEYS */;
INSERT INTO `dbo_cart` VALUES (1,'2aca7c9b-2864-4f07-90f6-d059db85b193',NULL),(2,'25722c16-2c11-44a4-beb8-d4dc9b4b9788',NULL),(5,'f96b342f-5120-4824-af50-98840b7c90e3',NULL),(6,'b74ca30c-53e1-4cb1-9ad7-1dc759a5486b',NULL),(7,'f8067e99-08ce-4676-96c3-9b6c63c0ce58',NULL),(8,'1f046739-b7fb-472d-83fc-82ff5206004e',NULL),(9,'22bf96dd-3f5a-4b7d-9d9d-417deb024736',NULL),(10,'78378ddb-dfa5-4216-ab3a-0deafd487ad8',NULL),(11,'01e8a2c9-01ad-4307-bd8c-7368bcff8443',NULL),(12,'4350114f-cb10-4ac7-be16-f70ecad5aa39',NULL),(13,'3f24192c-347e-435a-ace3-e27e823f27bf',NULL),(14,'8170ef20-2616-4049-840b-22f6279ea2e0',NULL),(15,'76ae31f7-2371-4cb3-bfa4-979650e745eb',NULL),(16,'d146b712-aa22-4b67-ba31-ef6abf712c41',NULL),(17,'9ef533cc-d20e-4680-8554-26827103ca4b',NULL),(18,'2256be29-5a8d-412a-9161-22624b6d8bbc',NULL),(19,'5f00c605-4b93-4184-b6a1-4ab884971540',NULL),(20,'63d635e3-997e-4bcc-ba2d-372fcedda0ca',NULL),(21,'835cb7a1-6df2-40c7-8937-d9a2189c2652',NULL),(22,'efd2f52c-d5a5-4314-98fb-54268d2c76d7',NULL),(23,'d2f250dd-4c6d-4e9c-bd70-11351c2695c1',NULL),(24,'ab8b2684-f11d-4197-8862-e6be9b916829',NULL),(25,'a506624c-2ac6-42cc-adc5-fa60ea41333e',NULL),(27,'eb741cc8-42ce-4846-8002-71707838f766',NULL),(28,'615ef8ea-0f20-40d3-8d32-304e61aa3770',NULL),(29,'3b161158-4a9f-4df5-81d2-8532a1cb0949',NULL),(31,'0f7e00a6-86f3-44d4-818d-386606ae542c',NULL),(33,'953fa8e2-4ca0-41f8-8eb1-dad761221b44',NULL),(34,'356c753f-e546-4da6-9149-3dce35ab32f5',NULL),(35,'7b639730-2e82-4f86-ab6a-215d73910dd6',NULL),(36,'b68f50f5-b6d9-4c4f-8cc7-b07a9bacddc8',NULL),(37,'e3a5aadd-b22d-406c-b697-1fa425ab73cc',NULL),(38,'0fb72666-2986-496c-9b51-d9e449222d8e',NULL),(39,'7eccc354-de1f-46f3-9bbd-beac7e138e4c',NULL),(40,'f22fb30f-1160-4f5d-8cb7-3289199a2220',NULL),(41,'861e71d1-21e1-42cd-a727-52493466037f',NULL),(42,'6e5229e3-2fb2-4b97-a3e0-cdd6b0abde10',NULL),(43,'0b200151-e3d0-4aac-9faa-39efd64d9bd9',NULL),(44,'bb8cf847-a0c0-474e-9c58-87e7a43849c8',NULL),(45,'68ca0854-407d-44db-899b-bb23161065d6',NULL),(46,'926e3626-efb1-48dd-a962-cb72c1d00a6e',NULL),(47,'30a7933f-6c63-4f47-9a2f-c310da60a82b',NULL),(48,'ac62ac1c-98da-47d3-90da-c9c432f8f23a',NULL),(49,'23a70022-3e34-4fdf-aad0-e1ae07f7ab6a',NULL),(50,'9a54d569-f4ae-45c0-9708-3fc5181ff372',NULL),(51,'be96f239-8ff1-4ca1-ae7d-82dbf9deb54d',NULL),(52,'151407b5-6423-4de2-a4d1-39821dfad6f5',NULL),(53,'38e8086a-db1d-4d3c-88f3-475b939ef44a',NULL),(54,'b7638f31-3b5c-485b-b866-e4e72ed65202',NULL),(55,'0ef3c1de-e42f-42f2-bb44-9ee6ee9e2549',NULL),(56,'e39a71fa-7c24-464a-ac52-79600f5b7fde',NULL),(57,'2c14de47-b0cb-4676-bd0c-7ae155517ae1',NULL),(58,'a2d634ab-2190-40be-9833-551acb2b02b2',NULL),(59,'35016108-684b-47cc-97b7-d2a7f002e406',NULL),(60,'e0dad85f-4345-4460-912f-6f7bc7db869c',NULL),(61,'7da4ce36-1807-4384-bb80-e13e04073fd2',NULL),(62,'6a9f33f5-bee1-4343-b247-5fbc10a7826a',NULL),(63,'1b81270f-be8b-451b-9117-9cbb980d5e14',NULL),(64,'416b5159-1db2-4928-9bb7-8f67b64d38ca',NULL),(65,'411a99ce-4e41-4443-babd-adac54ca699c','a'),(68,'49a87601-8c03-4cd8-b9b3-1dafd8ffc453',NULL),(69,'2a26f0f5-29f9-4c87-be13-4c1b006cdb70',NULL),(70,'9f12b15d-b2f5-44b3-8604-5328d34e0940',NULL),(72,'9924adad-51cd-4a9e-a576-da1b60011d11',NULL),(73,'40946dcb-caea-4a98-b564-fa428499754f',NULL),(75,'2ac87998-0efe-4900-b2a0-d46ed7660f93',NULL),(77,'f5888e7f-27f1-4b07-abf8-4744158def07',NULL),(78,'fd53fdbb-dade-4aca-b781-1098e2a03c66',NULL),(81,'7fb92c5e-7c4a-42b5-ac51-2155902f4b11','buiduclong'),(83,'b6211d07-da74-4e7e-8fcf-8ac9d9d87bbb',NULL),(85,'4f81529e-d2df-4985-9e91-c8656f59f14e',NULL),(86,'d9695299-8294-484d-a8ae-fdbd0e96f4ad',NULL),(90,'cf09c924-e132-4f00-b0c7-1d8c83cb243d','mlpo00aa'),(92,'13add2fe-9a7d-4666-8ade-aa650cf3f9ee',NULL),(93,'db3925d2-2714-4013-a312-84089e2e2957',NULL),(95,'dda561a2-76dc-42fc-b75d-e0b44f825fb3','anhduy'),(96,'c23c6878-43ef-4063-8eb6-8f46ad424ac1',NULL),(97,'df00cc5b-c18b-4a2f-bfe0-cf2311615f50','khanhk8a'),(104,'afb959b8-665b-46f7-98df-1f7ee7e04fd5',NULL),(105,'b29e444f-6567-45c6-abb4-44a1d44bb889',NULL),(106,'2f0d894f-c11b-46c0-9e1d-f28ab58588ea',NULL),(108,'2a0b3efd-5521-4c5f-924d-ebafe97c52f9',NULL),(109,'d0c1d215-1bc6-43ec-b35e-3f586ddd1e55',NULL),(110,'b9b6afc0-6fbd-4740-9028-70bf51b01894',NULL),(111,'7344a163-3c0b-4343-9840-8f77ecc4293f',NULL),(112,'2b26ebeb-b47e-46ad-b260-e15826ae5def',NULL),(115,'002cbe21-83c2-43d3-80a3-835e1595946d',NULL),(116,'a592cc8e-e9ce-4118-ac44-f673d926db8f',NULL),(118,'69c0e337-ec09-4b5a-8ac8-3ad8b26bc0d0',NULL),(119,'7234e932-d433-4096-bc25-102b767fa082',NULL),(120,'e6195477-5c6c-48c8-8769-5160ec261052',NULL),(121,'3a6a84bf-5060-4d90-b083-343ab00f5482',NULL),(123,'515f3884-eb5e-4be7-9c8c-bbacff28a1b0','tan0211'),(125,'9fc85c66-b815-452f-a4e3-7ef995e383da',NULL),(126,'5cec00dc-4e94-4c42-a213-dcc22d0813bb','test1232'),(127,'e5680dee-c3c4-459b-99eb-fbbd4190ff21','tuanngo'),(128,'b8aebef2-1eb5-4a1b-8598-4468a47eea94','leduong'),(131,'609ad46f-682f-4a45-b07e-224bdc2994d4',NULL),(132,'edd1eebc-6bc7-4ec3-b8b6-8031265e2f34','20173073'),(133,'ce304033-f2d4-4583-a972-5cafd2e5414d','chuteudataj1102'),(134,'3317bb60-4a36-4614-bc88-4eef93667fec','NguyenNgocSon'),(135,'2480d1a0-22ff-4478-92b9-47ebba4c582e','tiep'),(137,'2b7e690f-313e-413f-9767-4045789b7ebf',NULL),(138,'c47d62be-75ef-4cab-94d3-bc3b3f2f304f',NULL);
/*!40000 ALTER TABLE `dbo_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_cart_product`
--

DROP TABLE IF EXISTS `dbo_cart_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_cart_product` (
  `cart_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`cart_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_cart_product`
--

LOCK TABLES `dbo_cart_product` WRITE;
/*!40000 ALTER TABLE `dbo_cart_product` DISABLE KEYS */;
INSERT INTO `dbo_cart_product` VALUES (3,6,3,1),(4,8,1,1),(5,9,47,1),(6,9,6,1),(7,9,1,1),(10,21,2,1),(15,36,1,2),(16,43,1,1),(17,43,2,1),(22,60,1,2),(23,63,5,1),(24,63,6,1),(27,69,1,1),(30,78,1,1),(31,78,2,1),(32,81,1,1),(33,81,2,9),(35,77,3,1),(37,85,1,2),(46,95,5,1),(52,77,18,2),(58,83,1,1),(60,83,2,1),(63,83,3,1),(66,110,1,1),(67,111,8,1),(68,115,1,1),(69,112,29,1),(73,115,4,1),(74,112,11,1),(78,121,6,1),(81,127,2,8),(82,126,2,3),(83,126,3,1),(88,126,4,1),(93,126,7,111111112),(95,127,10,1),(96,123,2,1),(97,123,3,1),(98,123,4,1),(99,132,2,1),(100,118,5,1),(102,137,3,1);
/*!40000 ALTER TABLE `dbo_cart_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_category`
--

DROP TABLE IF EXISTS `dbo_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_category`
--

LOCK TABLES `dbo_category` WRITE;
/*!40000 ALTER TABLE `dbo_category` DISABLE KEYS */;
INSERT INTO `dbo_category` VALUES (1,'Category 1','Category 1 short desc','2019-10-22 20:08:44'),(2,'Category 2','Category 2 short desc','2019-10-22 20:08:44'),(3,'Category 3','Category 3 short desc','2019-10-22 20:08:44'),(4,'Category 4','Category 4 short desc','2019-10-22 20:08:44'),(5,'Category 5','Category 5 short desc','2019-10-22 20:08:44'),(6,'test','1','2019-12-03 21:18:12');
/*!40000 ALTER TABLE `dbo_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_order`
--

DROP TABLE IF EXISTS `dbo_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_order`
--

LOCK TABLES `dbo_order` WRITE;
/*!40000 ALTER TABLE `dbo_order` DISABLE KEYS */;
INSERT INTO `dbo_order` VALUES (2,'f96b342f-5120-4824-af50-98840b7c90e3',NULL,'Nguyễn Ngọc ','1687137474','Khu đô thị Nam Cường Cổ Nhuế','tiepnguyenptit@gmail.com','2019-06-14 19:16:40',778.68),(3,'e34e286a-c97c-4864-97f2-dd975f2e0109','tiep','Tiệp Nguyễn','+84123214214','test','tiepnguyenptit@gmail.com','2019-08-02 20:57:17',77.89),(4,'39d62dee-5c59-40c1-b39c-fe96401f4723','tiep','Tiệp Nguyễn kslajflkjsaf;lkjsalkf;lskc;ldsakc;lkdsac;lsa','+84123214214','test','tiepnguyenptit@gmail.com','2019-09-24 21:04:23',84.03),(5,'953fa8e2-4ca0-41f8-8eb1-dad761221b44',NULL,'Nguyễn Ngọc Tiệp','01687137474','Khu đô thị Nam Cường Cổ Nhuế','tiepnguyenptit@gmail.com','2019-10-16 10:36:24',48.85),(6,'2807a81a-ed2f-4dbc-af4a-704526c9841c',NULL,'Tiệp','01687137474','Khu đô thị Nam Cường Cổ Nhuế','tiepnguyenptit@gmail.com','2019-11-23 10:06:01',7.95),(7,'2807a81a-ed2f-4dbc-af4a-704526c9841c',NULL,'Tiệp','12','Khu đô thị Nam Cường Cổ Nhuế','tiepnguyenptit@gmail.com','2019-11-23 10:57:37',8.14),(8,'00b6cda6-b411-4bcc-844f-3a7dafc0d4d5',NULL,'Nguyễn Ngọc Tiệp','1687137474','Khu đô thị Nam Cường Cổ Nhuế','tiepnguyenptit@gmail.com','2019-11-26 20:13:38',101.59),(9,'13add2fe-9a7d-4666-8ade-aa650cf3f9ee',NULL,'Nguyễn Ngọc','1687137474','Khu đô thị Nam Cường Cổ Nhuế','tiepnguyenptit@gmail.com','2020-05-10 15:31:48',22.09),(10,'d0c1d215-1bc6-43ec-b35e-3f586ddd1e55',NULL,'khắc quả','0359024864','704 hh4c linh đàm','nguyenkhacqua@gmail.com','2020-05-10 15:36:44',7.95),(11,'f3bfa57a-6eaf-439a-9b8a-8bccee1ae575',NULL,'sfasf','1231231231','adasdasda','thinhthiago9@gmail.com','2020-05-10 15:37:20',22.09),(12,'db3925d2-2714-4013-a312-84089e2e2957',NULL,'a','2121','â','a@gmAIL.com','2020-05-10 15:39:36',44.18),(13,'1e5360f7-423e-47e2-bfc0-3f4e4d0ee176','anhduy','a','2121','â','a@gmAIL.com','2020-05-10 15:41:01',25.96),(14,'30066f17-c980-43e4-9f44-b3366716b45f','khanhk8a','khanhs','09284373474','nghe an','khanhk8a@gmail.com','2020-05-10 15:43:10',4.00),(15,'d0c1d215-1bc6-43ec-b35e-3f586ddd1e55',NULL,'khắc quả','0359024864','704 hh4c linh đàm','nkqua104@gmail.com','2020-05-10 15:45:57',46.32),(16,'2a0b3efd-5521-4c5f-924d-ebafe97c52f9',NULL,'a','2121','â','monsterinparadise@yahoo.com.vn','2020-05-10 16:54:45',8.14),(17,'afb959b8-665b-46f7-98df-1f7ee7e04fd5',NULL,'tew','gagaag','vagdagag','kuronguyen99@gmail.com','2020-05-10 17:14:19',2221.98),(18,'d0c1d215-1bc6-43ec-b35e-3f586ddd1e55',NULL,'khắc quả','0359024864','704 hh4c linh đàm','nkqua104@gmail.com','2020-05-10 17:14:23',8.14),(19,'2f0d894f-c11b-46c0-9e1d-f28ab58588ea',NULL,'quyet','85686756','4534534','vanquyetx97@gmail.com','2020-05-10 17:14:25',34.60),(20,'e3e7e4a7-d86a-4627-b138-301255373b60',NULL,'buiduclong','0911448457','nam định','buiduclong0511@gmail.com','2020-05-10 17:14:31',12.98),(21,'b29e444f-6567-45c6-abb4-44a1d44bb889',NULL,'da','sadasd','ádad','nguyendt10@gmail.com','2020-05-10 17:14:33',28.87),(22,'f3bfa57a-6eaf-439a-9b8a-8bccee1ae575',NULL,'sfasf','đá','đáa','thinhthiago9@gmail.com','2020-05-10 17:14:44',8.14),(23,'d0c1d215-1bc6-43ec-b35e-3f586ddd1e55',NULL,'khắc quả','0359024864','704 hh4c linh đàm','contact@webapp.com.vn','2020-05-10 17:14:59',12.98),(24,'f3bfa57a-6eaf-439a-9b8a-8bccee1ae575',NULL,'da','qeqwe','đấ','thinhthiago9@gmail.com','2020-05-10 17:19:10',23.92),(25,'2a0b3efd-5521-4c5f-924d-ebafe97c52f9',NULL,'a','2121','â','monsterinparadise@yahoo.com.vn','2020-05-10 17:19:47',21.12),(26,'b9b6afc0-6fbd-4740-9028-70bf51b01894',NULL,'khanhs','012312983','NGHE AN','khanhk8a@gmail.com','2020-05-10 17:20:21',29.57),(27,'e6195477-5c6c-48c8-8769-5160ec261052',NULL,'','','','','2020-05-19 18:38:16',16.09),(28,'3a6a84bf-5060-4d90-b083-343ab00f5482',NULL,'duy','032020292','Số 90 Phố Gia Quất, Thượng Thanh, Long Biên, Hà Nội, Việt Nam','buigiakhanh1997@gmail.com','2020-05-19 18:39:30',25.96),(29,'9fc85c66-b815-452f-a4e3-7ef995e383da',NULL,'Nguyen Ngoc Son','0981901257','50 Tran Hung Dao','ngocson10697@gmail.com','2020-05-19 18:40:06',21.62),(30,'f1bd1380-16a0-41c7-ab83-5af485fd489c','leduong','','','','qweqweeeeeeee@gmail.com','2020-05-19 18:41:16',7.95),(31,'0369e366-c630-447b-8610-092a6bd066e4','20173073','duy','3t7832879','Số 90 Phố Gia Quất, Thượng Thanh, Long Biên, Hà Nội, Việt Nam','buigiakhanh1997@gmail.com','2020-05-19 18:42:13',50.69),(32,'c7995690-6b9b-4006-ab0b-20441b038011','NguyenNgocSon','NguyenNgocSon','0981901257','50 Tran Hung Dao','ngocson10697@gmail.com','2020-05-19 18:49:15',43.21),(33,'e1da8c59-4035-4528-9c90-f4d0dbcef24b','ddwdw','Doan','','','doantrongkhoi711@gmail.com','2020-05-19 18:49:42',28.96),(34,'b9003f8d-f540-4562-95f5-de9097752d3e','tiep','Tiệp Nguyễn','+84123214214','abc s','tiepnguyenptit@gmail.com','2020-05-19 19:37:09',16.28),(35,'c47d62be-75ef-4cab-94d3-bc3b3f2f304f',NULL,'duy','aS','Số 90 Phố Gia Quất, Thượng Thanh, Long Biên, Hà Nội, Việt Nam','sasaduy@gmail.com','2020-05-19 19:38:50',8.14);
/*!40000 ALTER TABLE `dbo_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_order_product`
--

DROP TABLE IF EXISTS `dbo_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_order_product`
--

LOCK TABLES `dbo_order_product` WRITE;
/*!40000 ALTER TABLE `dbo_order_product` DISABLE KEYS */;
INSERT INTO `dbo_order_product` VALUES (1,24,2,28,778.68),(2,2,3,1,28.01),(3,1,3,3,29.04),(4,4,3,1,20.84),(5,2,4,3,84.03),(6,2,5,1,28.01),(7,4,5,1,20.84),(8,3,6,1,7.95),(9,2,7,1,8.14),(10,1,8,1,12.98),(11,3,8,1,7.95),(12,6,8,2,44.18),(13,11,8,2,32.48),(14,7,8,1,4.00),(15,6,9,1,22.09),(16,3,10,1,7.95),(17,6,11,1,22.09),(18,6,12,2,44.18),(19,1,13,2,25.96),(20,7,14,1,4.00),(21,2,15,2,16.28),(22,3,15,1,7.95),(23,6,15,1,22.09),(24,2,16,1,8.14),(25,6,17,100,2209.00),(26,1,17,1,12.98),(27,2,18,1,8.14),(28,4,19,1,21.62),(29,1,19,1,12.98),(30,1,20,1,12.98),(31,6,21,1,22.09),(32,34,21,1,6.78),(33,2,22,1,8.14),(34,1,23,1,12.98),(35,5,24,1,23.92),(36,1,25,1,12.98),(37,2,25,1,8.14),(38,4,26,1,21.62),(39,3,26,1,7.95),(40,2,27,1,8.14),(41,3,27,1,7.95),(42,1,28,2,25.96),(43,4,29,1,21.62),(44,3,30,1,7.95),(45,1,31,1,12.98),(46,2,31,1,8.14),(47,3,31,1,7.95),(48,4,31,1,21.62),(49,2,32,1,8.14),(50,6,32,1,22.09),(51,1,32,1,12.98),(52,10,33,1,28.96),(53,2,34,2,16.28),(54,2,35,1,8.14);
/*!40000 ALTER TABLE `dbo_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_product`
--

DROP TABLE IF EXISTS `dbo_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_product`
--

LOCK TABLES `dbo_product` WRITE;
/*!40000 ALTER TABLE `dbo_product` DISABLE KEYS */;
INSERT INTO `dbo_product` VALUES (1,3,'Product test','Product 1 short desc','https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg',12.98,'2019-12-03 18:27:42'),(2,4,'Product 2','Product 2 short desc','https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg',8.14,'2019-10-31 20:22:53'),(3,2,'Product 3','Product 3 short desc','https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg',7.95,'2019-10-31 20:22:53'),(4,1,'Product 4','Product 4 short desc','https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg',21.62,'2019-10-31 20:22:53'),(5,2,'Product 5','Product 5 short desc','https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg',23.92,'2019-10-31 20:22:53'),(6,5,'Product 6','Product 6 short desc','https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg',22.09,'2019-10-31 20:22:53'),(7,1,'Product 7','Product 7 short desc','https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg',4.00,'2019-10-31 20:22:53'),(8,4,'Product 8','Product 8 short desc','https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg',16.61,'2019-10-31 20:22:53'),(9,3,'Product 9','Product 9 short desc','https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg',27.44,'2019-10-31 20:22:53'),(10,1,'Product 10','Product 10 short desc','https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg',28.96,'2019-10-31 20:22:53'),(11,3,'Product 11','Product 11 short desc','https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg',16.24,'2019-10-31 20:22:53'),(12,4,'Product 12','Product 12 short desc','https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg',11.35,'2019-10-31 20:22:53'),(13,2,'Product 13','Product 13 short desc','https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg',7.32,'2019-10-31 20:22:53'),(14,2,'Product 14','Product 14 short desc','https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg',12.65,'2019-10-31 20:22:53'),(15,1,'Product 15','Product 15 short desc','https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg',5.02,'2019-10-31 20:22:53'),(16,3,'Product 16','Product 16 short desc','https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg',7.91,'2019-10-31 20:22:53'),(17,5,'Product 17','Product 17 short desc','https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg',22.03,'2019-10-31 20:22:53'),(18,4,'Product 18','Product 18 short desc','https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg',28.33,'2019-10-31 20:22:53'),(19,2,'Product 19','Product 19 short desc','https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg',5.36,'2019-10-31 20:22:53'),(20,4,'Product 20','Product 20 short desc','https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg',25.72,'2019-10-31 20:22:53'),(21,1,'Product 21','Product 21 short desc','https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg',8.99,'2019-10-31 20:22:53'),(22,1,'Product 22','Product 22 short desc','https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg',17.77,'2019-10-31 20:22:53'),(23,4,'Product 23','Product 23 short desc','https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg',19.45,'2019-10-31 20:22:53'),(24,5,'Product 24','Product 24 short desc','https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg',19.44,'2019-10-31 20:22:53'),(25,5,'Product 25','Product 25 short desc','https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg',8.05,'2019-10-31 20:22:53'),(26,2,'Product 26','Product 26 short desc','https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg',22.45,'2019-10-31 20:22:53'),(27,2,'Product 27','Product 27 short desc','https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg',18.08,'2019-10-31 20:22:53'),(28,2,'Product 28','Product 28 short desc','https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg',5.59,'2019-10-31 20:22:53'),(29,4,'Product 29','Product 29 short desc','https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg',22.71,'2019-10-31 20:22:53'),(30,3,'Product 30','Product 30 short desc','https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg',21.64,'2019-10-31 20:22:53'),(31,1,'Product 31','Product 31 short desc','https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg',14.24,'2019-10-31 20:22:53'),(32,2,'Product 32','Product 32 short desc','https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg',5.40,'2019-10-31 20:22:53'),(33,2,'Product 33','Product 33 short desc','https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg',18.90,'2019-10-31 20:22:53'),(34,5,'Product 34','Product 34 short desc','https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg',6.78,'2019-10-31 20:22:53'),(35,5,'Product 35','Product 35 short desc','https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg',22.36,'2019-10-31 20:22:53'),(36,2,'Product 36','Product 36 short desc','https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg',15.32,'2019-10-31 20:22:53'),(37,5,'Product 37','Product 37 short desc','https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg',20.78,'2019-10-31 20:22:53'),(38,4,'Product 38','Product 38 short desc','https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg',26.33,'2019-10-31 20:22:53'),(39,1,'Product 39','Product 39 short desc','https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg',9.39,'2019-10-31 20:22:53'),(40,3,'Product 40','Product 40 short desc','https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg',15.68,'2019-10-31 20:22:53');
/*!40000 ALTER TABLE `dbo_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_product_image`
--

DROP TABLE IF EXISTS `dbo_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `link` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`product_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_product_image`
--

LOCK TABLES `dbo_product_image` WRITE;
/*!40000 ALTER TABLE `dbo_product_image` DISABLE KEYS */;
INSERT INTO `dbo_product_image` VALUES (1,1,'https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg','2019-10-31 20:22:58'),(2,1,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(3,2,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(4,2,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(5,3,'https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg','2019-10-31 20:22:58'),(6,3,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(7,3,'https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg','2019-10-31 20:22:58'),(8,4,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(9,4,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(10,4,'https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg','2019-10-31 20:22:58'),(11,5,'https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg','2019-10-31 20:22:58'),(12,5,'https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg','2019-10-31 20:22:58'),(13,5,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(14,6,'https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','2019-10-31 20:22:58'),(15,6,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(16,6,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(17,7,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(18,7,'https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg','2019-10-31 20:22:58'),(19,7,'https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','2019-10-31 20:22:58'),(20,8,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(21,8,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(22,8,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(23,9,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(24,9,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(25,10,'https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','2019-10-31 20:22:58'),(26,10,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(27,11,'https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg','2019-10-31 20:22:58'),(28,11,'https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','2019-10-31 20:22:58'),(29,12,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(30,12,'https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg','2019-10-31 20:22:58'),(31,13,'https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','2019-10-31 20:22:58'),(32,13,'https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg','2019-10-31 20:22:58'),(33,13,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(34,14,'https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg','2019-10-31 20:22:58'),(35,14,'https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','2019-10-31 20:22:58'),(36,15,'https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg','2019-10-31 20:22:58'),(37,15,'https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg','2019-10-31 20:22:58'),(38,15,'https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','2019-10-31 20:22:58'),(39,16,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(40,16,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(41,17,'https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg','2019-10-31 20:22:58'),(42,17,'https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg','2019-10-31 20:22:58'),(43,17,'https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg','2019-10-31 20:22:58'),(44,18,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(45,18,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(46,18,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(47,19,'https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','2019-10-31 20:22:58'),(48,19,'https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg','2019-10-31 20:22:58'),(49,20,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(50,20,'https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','2019-10-31 20:22:58'),(51,21,'https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','2019-10-31 20:22:58'),(52,21,'https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','2019-10-31 20:22:58'),(53,22,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(54,22,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(55,22,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(56,23,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(57,23,'https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','2019-10-31 20:22:58'),(58,24,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(59,24,'https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','2019-10-31 20:22:58'),(60,24,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(61,25,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(62,25,'https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','2019-10-31 20:22:58'),(63,26,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(64,26,'https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','2019-10-31 20:22:58'),(65,27,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(66,27,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(67,27,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(68,28,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(69,28,'https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg','2019-10-31 20:22:58'),(70,28,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(71,29,'https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','2019-10-31 20:22:58'),(72,29,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(73,29,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(74,30,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(75,30,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(76,30,'https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg','2019-10-31 20:22:58'),(77,31,'https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg','2019-10-31 20:22:58'),(78,31,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(79,31,'https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg','2019-10-31 20:22:58'),(80,32,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(81,32,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(82,32,'https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg','2019-10-31 20:22:58'),(83,33,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(84,33,'https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg','2019-10-31 20:22:58'),(85,34,'https://salt.tikicdn.com/cache/550x550/ts/product/0a/fb/75/740106b009f436911a8ea4efdf7edadf.jpg','2019-10-31 20:22:58'),(86,34,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(87,34,'https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','2019-10-31 20:22:58'),(88,35,'https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg','2019-10-31 20:22:58'),(89,35,'https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg','2019-10-31 20:22:58'),(90,36,'https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg','2019-10-31 20:22:58'),(91,36,'https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg','2019-10-31 20:22:58'),(92,37,'https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg','2019-10-31 20:22:58'),(93,37,'https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg','2019-10-31 20:22:58'),(94,38,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(95,38,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(96,39,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(97,39,'https://salt.tikicdn.com/cache/w1200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','2019-10-31 20:22:58'),(98,39,'https://salt.tikicdn.com/cache/550x550/ts/product/dd/28/91/4a7bb0e7be810aade0c4ab45427508a4.jpg','2019-10-31 20:22:58'),(99,40,'https://salt.tikicdn.com/cache/w1200/ts/product/cc/6f/1a/bddcfae10b1ae4877dee0d85d11a325e.jpg','2019-10-31 20:22:58'),(100,40,'https://salt.tikicdn.com/cache/550x550/media/catalog/product/a/m/american-edition-5-student-book.jpg','2019-10-31 20:22:58');
/*!40000 ALTER TABLE `dbo_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_role`
--

DROP TABLE IF EXISTS `dbo_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_role`
--

LOCK TABLES `dbo_role` WRITE;
/*!40000 ALTER TABLE `dbo_role` DISABLE KEYS */;
INSERT INTO `dbo_role` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `dbo_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_user`
--

DROP TABLE IF EXISTS `dbo_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_user`
--

LOCK TABLES `dbo_user` WRITE;
/*!40000 ALTER TABLE `dbo_user` DISABLE KEYS */;
INSERT INTO `dbo_user` VALUES (2,'tiep','tiepnguyenptit@gmail.com','+84123214214',1,'Tiệp Nguyễn','/link/1574343031-bai-tap-sql.jpg','abc s','$2a$10$QeTzGC6DqEYn5UTqqrv7rOE4ncdKGnSDh2P4kPqj6CfqlISpV6goe','2019-06-14'),(3,'abc','abc@123',NULL,0,NULL,NULL,NULL,'$2a$10$COgrK52kZ1VpYAOjL9WGXe1k9iG9e7AYzDC5.oxHY1qRm099Q4RhK','2019-11-07'),(4,'a','a@241','',0,'','','','$2a$10$7843VJSHDs5sWPOGwiER7eQTuuwzxAiphpmqHYRtO4KyPQPThf2Rq','2019-11-21'),(5,'khanhk8a','khanhk8a@gmail.com',NULL,0,NULL,NULL,NULL,'$2a$10$XhzexTR52S9qJqQJuE1cI.1Ipc6mn3qw1ab.DANZSieH/wwfdzlLW','2020-05-10'),(6,'buiduclong','buiduclong0511@gmail.com',NULL,0,NULL,NULL,NULL,'$2a$10$tYLg5ouZjDXlommdBD0kNOLiu9F/v7z/lI8qObGcAVll8TRzpcbq2','2020-05-10'),(7,'mlpo00aa','vanquyetx97@gmail.com',NULL,0,NULL,NULL,NULL,'$2a$10$2UBCny7jqXvm7JLJsvOHiuxRkJey/v/Bk80nu2z/RAXJHSXONnKAK','2020-05-10'),(8,'KuroHieu','kuronguyen99@gmail.com',NULL,0,NULL,NULL,NULL,'$2a$10$7hXnCsXw9ok2kuAwLBJeIeXTk9NEb98Tg2nR4JWZVNT.J97llJ4JC','2020-05-10'),(9,'anhduy','a@gmAIL.com',NULL,0,NULL,NULL,NULL,'$2a$10$3uLNF/I/N.QqrINxaE8LE.cYEzLsdY.kJRa/wISZv7aFhSodIdbXW','2020-05-10'),(10,'test123','loc@gmail.com',NULL,0,NULL,NULL,NULL,'$2a$10$asCE5fnF5clobcXerMQzUO2NTqFGRlbh1Lzorm.a2TzNjEFu8RjlO','2020-05-19'),(11,'ddwdw','doantrongkhoi711@gmail.com','',0,'','/link/1589888605-studentManagement.png','','$2a$10$blyWRYih1nACr4Vw9V4K2.6Hz/.U..Y2/5NNTnsDcqVWRhGjm2auq','2020-05-19'),(12,'monodioo','tuan@gmail.com',NULL,0,NULL,NULL,NULL,'$2a$10$2PL6oPIuWvsdIHbYgvmoCe6tSZT8UYnhlI03PDNFKbabaRB4bp8C6','2020-05-19'),(13,'leduong','qweqweeeeeeee@gmail.com',NULL,0,NULL,NULL,NULL,'$2a$10$VqULi0aW7guAvUqQFs8DIOpp9d9NTRV9L8/KeLjZ1JoepPh1fdiDS','2020-05-19'),(14,'tan0211','ktptientan98@gmail.com','0965644478',0,'tan0211','/link/1589888588-97061917_248428203061382_4019114964055752704_n.jpg','ktptientan98@gmail.com','$2a$10$Qg2xCLGiZ369LUkYcbAAMOXlkJAjZVxz4vyJcHpl0e.APm3Rg8y8C','2020-05-19'),(15,'test1232','locc@gmail.com','0988999777',2,'loc','/link/1589888514-seabig.jpg','VietNam','$2a$10$0py1XOvF57oZKmqoF2KyAueqNX33tOI9vXo66I2NZv2z4gRRxePSO','2020-05-19'),(16,'tuanngo','tuaan.nn91@gmail.com','0852714375',1,'Ngô Ngọc Tuân','/link/1589888591-b9111e2710157e92814ffa865adce2e9.jpg','4 Tô Ngọc Vân','$2a$10$IgNNkzZH.jeQ5zWkg4fqxO9YMV/yPKMT2uf8vDaQq2XmufAkx4qgS','2020-05-19'),(17,'20173073','buigiakhanh1997@gmail.com','3t7832879',1,'Phan Duy','/link/1589888581-Untitled.jpg','Số 90 Phố Gia Quất, Thượng Thanh, Long Biên, Hà Nội, Việt Nam','$2a$10$ZsNApgfPZT3zgCte9PCSqOU6wvn6z7bUUjk7c4DYiAo7M7CRPQWmu','2020-05-19'),(18,'NguyenNgocSon','ngocson10697@gmail.com','0981901257',1,'NguyenNgocSon','/link/1589888660-72975551.cms','50 Tran Hung Dao','$2a$10$9rlKA8gGAdVMCyjsVDyKL.qoM5wsiXfHFYouXV5D6dEYl.X8nqFNK','2020-05-19'),(19,'chuteudataj','chuteudataj@gmail.com',NULL,0,NULL,NULL,NULL,'$2a$10$5kdUzELAjF/8jgHPO0VVQOcBoJXPKEIO99IN8WaPQeKb.l0jlXN0S','2020-05-19'),(20,'chuteudataj1102','chuteudataj1102@gmail.com',NULL,0,NULL,NULL,NULL,'$2a$10$FZb9Zr8ZaFn8GohykSgpeuX9CaQWerErlj2OQfoBJG7NaDy6tQqOG','2020-05-19');
/*!40000 ALTER TABLE `dbo_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo_user_role`
--

DROP TABLE IF EXISTS `dbo_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dbo_user_role` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo_user_role`
--

LOCK TABLES `dbo_user_role` WRITE;
/*!40000 ALTER TABLE `dbo_user_role` DISABLE KEYS */;
INSERT INTO `dbo_user_role` VALUES (3,2,2),(4,2,2),(5,3,2),(6,4,2),(7,5,2),(8,6,2),(9,7,2),(10,8,2),(11,9,2),(12,10,2),(13,11,2),(14,12,2),(15,13,2),(16,14,2),(17,15,2),(18,16,2),(19,17,2),(20,18,2),(21,19,2),(22,20,2);
/*!40000 ALTER TABLE `dbo_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-10 19:04:16
