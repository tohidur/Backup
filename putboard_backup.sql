-- MySQL dump 10.13  Distrib 5.7.13, for Linux (x86_64)
--
-- Host: localhost    Database: putboard_db
-- ------------------------------------------------------
-- Server version	5.7.13-0ubuntu0.16.04.2

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add collection',7,'add_collection'),(20,'Can change collection',7,'change_collection'),(21,'Can delete collection',7,'delete_collection'),(22,'Can add tag',8,'add_tag'),(23,'Can change tag',8,'change_tag'),(24,'Can delete tag',8,'delete_tag'),(25,'Can add link',9,'add_link'),(26,'Can change link',9,'change_link'),(27,'Can delete link',9,'delete_link'),(28,'Can add site',10,'add_site'),(29,'Can change site',10,'change_site'),(30,'Can delete site',10,'delete_site');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (3,'pbkdf2_sha256$24000$sNE0bQ4PNrtx$X8jjQ2hcr66vfwir6L9DvQJBytVicDRrtIjdS4ArIsw=','2016-07-30 18:52:24',1,'admin','Admin','','',1,1,'2016-07-17 15:11:18'),(4,'pbkdf2_sha256$24000$tt5Nzkzjx2m0$3+oKb495hlsU0NrNCwx6D/dSz83gjOZhTVwP397Jptw=','2016-07-23 07:55:10',0,'kr.sushantdas@gmail.com','Qwerty','','kr.sushantdas@gmail.com',0,1,'2016-07-18 13:37:59'),(5,'pbkdf2_sha256$24000$bo3pvB2rPmNR$laUUVopztzwK64aRolWGp99EhOmkS4FrPssWaRRoNOg=','2016-07-18 15:09:57',0,'sajib.halder2010@gmail.com','Sajib','','sajib.halder2010@gmail.com',0,1,'2016-07-18 15:09:57'),(6,'pbkdf2_sha256$24000$NDHwLzoQRQWr$Sj380sYDYHsCly2OFIKMbx89+HbCtH3I1yJ/aYNTfQE=','2016-07-19 11:14:07',0,'er.rahulsutradhar@gmail.com','Rahu Sutradhar','','er.rahulsutradhar@gmail.com',0,1,'2016-07-19 11:14:07'),(7,'pbkdf2_sha256$24000$l3AGEXDMxQkS$QWQbderqCAWY3ZOLxYtt5AqPQURGS7Y/FV5w0R/mkjE=','2016-07-19 13:17:26',0,'sajibhalder15@gmail.com','sajib','','sajibhalder15@gmail.com',0,1,'2016-07-19 13:17:26'),(9,'pbkdf2_sha256$24000$ObPHnWU4Cd8P$qnEEBu1BxlrmLDmKNA5SogARy8MiMwiTEj8bn46TNMM=','2016-07-23 07:55:35',0,'sushantkr18@gmail.com','Sushant','','sushantkr18@gmail.com',0,1,'2016-07-23 07:55:35'),(10,'pbkdf2_sha256$24000$PIZOclMqE48F$117c2A7KNochSxjBShX9ssDpKg81A/cHhmJl50xPlG8=','2016-07-30 13:31:22',0,'rh.tohidur@gmail.com','Tohidur','','rh.tohidur@gmail.com',0,1,'2016-07-23 09:55:07'),(11,'pbkdf2_sha256$24000$HhAm18wgRWKj$dlJR/tS1YXV9Xscd6bVLEsYJBN11ybsQV1WPOkXo3L4=','2016-07-23 22:43:14',1,'ubuntu','','','',1,1,'2016-07-23 22:42:52'),(12,'pbkdf2_sha256$24000$69fPWb3j9EGQ$pAJZ7+ZnjKjH0OOwuQ4w283Qib5DoPUa7wSgQf9TASM=','2016-07-25 16:21:30',0,'m.aryabrata@gmail.com','Arya Mondal','','m.aryabrata@gmail.com',0,1,'2016-07-25 16:21:30'),(13,'pbkdf2_sha256$24000$jC0F6pw34Aex$sMEBHjVDhHCKR0GUAa8x+Gx6SEpci3vleoERMNgwd3s=','2016-07-26 09:52:46',0,'soumi@gmail.com','soumi akhtar','','soumi@gmail.com',0,1,'2016-07-26 09:52:46'),(14,'pbkdf2_sha256$24000$khLPkdY4PDf3$i6Nh7SH5EkC/Moo56R4CkYoi/qx9U1mOir2RQAWTQVQ=','2016-07-26 11:13:03',0,'anjanmandal42@yahoo.com','Anjan Mandal','','anjanmandal42@yahoo.com',0,1,'2016-07-26 11:13:03'),(15,'pbkdf2_sha256$24000$YWvHHlx0wZu6$9uJXKullgA+JqAO4pIOW3hRtfutkAi7vG1KXVhOiuwI=','2016-07-26 19:58:19',0,'symamon12@gmail.com','symamon','','symamon12@gmail.com',0,1,'2016-07-26 19:58:18'),(16,'pbkdf2_sha256$24000$pVNQCiWN34Ip$+QEThn2X3yd2+o2YeQyVQRgbOjnmmgLBiByl7TxmuaQ=','2016-07-27 11:44:08',0,'rishavmondal99@gmail.com','Rishav Mondal','','rishavmondal99@gmail.com',0,1,'2016-07-27 11:44:08'),(17,'pbkdf2_sha256$24000$IUiZpMERfmtQ$/HkVEh8Emli4GKYwQ+BVqoD8fDdti3aNyeBN8Tpc+2I=','2016-07-27 11:44:42',0,'habibullah.quaderi@gmail.com','HABIBULLAH QUADERI','','habibullah.quaderi@gmail.com',0,1,'2016-07-27 11:44:42'),(18,'pbkdf2_sha256$24000$0kYrIYuHQUok$08oIX5wolWBU3fxdq3f2UyYdMTEJzAxWQac7iJhlgHw=','2016-07-28 09:44:09',0,'test@gmail.com','test','','test@gmail.com',0,1,'2016-07-28 09:44:08'),(19,'pbkdf2_sha256$24000$xaYLTwP8a5XG$M/KiN48uFgRBXI9uOF1C0o7aieKlLkG25kki7F2HnXA=','2016-07-28 19:15:12',0,'nitishranjan23@gmail.com','Nitish','','nitishranjan23@gmail.com',0,1,'2016-07-28 19:15:12'),(20,'pbkdf2_sha256$24000$ltlclIczYAob$DUPP68TmBvlTq/ND8IaCn2uBg6LeiSR0vuA4bwJen5w=','2016-07-29 14:59:56',0,'nknitishkumar845@gmail.com','Nitish kumar','','nknitishkumar845@gmail.com',0,1,'2016-07-29 14:59:56');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_collection`
--

DROP TABLE IF EXISTS `collection_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `privacy` tinyint(1) DEFAULT NULL,
  `update` datetime NOT NULL,
  `timestamp` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `collection_collection_user_id_2769ebdc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `collection_collection_user_id_2769ebdc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_collection`
--

LOCK TABLES `collection_collection` WRITE;
/*!40000 ALTER TABLE `collection_collection` DISABLE KEYS */;
INSERT INTO `collection_collection` VALUES (2,'Develop Board','develop-board','Board for develop testing.',NULL,'2016-07-23 08:20:29','2016-07-17 15:15:09',3),(3,'Hello','hello','',0,'2016-07-18 13:38:07','2016-07-18 13:38:07',4),(5,'Dash','dash','',1,'2016-07-18 15:10:18','2016-07-18 15:10:18',5),(6,'Furniture','furniture','Furniture we need for flat',0,'2016-07-19 11:14:31','2016-07-19 11:14:31',6),(7,'dhs','dhs','',0,'2016-07-19 13:17:33','2016-07-19 13:17:33',7),(8,'dhs','dhs-7','',0,'2016-07-19 13:17:43','2016-07-19 13:17:43',7),(9,'Bookmark','bookmark','',0,'2016-07-20 19:51:17','2016-07-20 19:51:17',4),(10,'Frontend Development','frontend-development','Links for the related courses to get you started for the Frontend development',0,'2016-07-21 12:46:51','2016-07-21 12:46:51',4),(12,'Google Interview Tips','google-interview-tips','Sample Links from where you can find more about the how google hire for their Software Development Engineering role',0,'2016-07-23 07:56:35','2016-07-23 07:56:35',9),(13,'Django Pass Reset and Email confirmation','django-pass-reset-and-email-confirmation','Imp links of password reset and email conformation in djago.',1,'2016-07-24 12:37:14','2016-07-23 09:56:19',10),(15,'docu','docu','personal document',1,'2016-07-25 16:22:11','2016-07-25 16:22:11',12),(16,'little','little','Small Descriptiono (Optional)',0,'2016-07-26 09:58:44','2016-07-26 09:58:44',13),(17,'little','little-16','Small Descriptiono (Optional)',1,'2016-07-26 10:00:31','2016-07-26 10:00:31',13),(18,'Anjan','anjan','',1,'2016-07-26 11:13:37','2016-07-26 11:13:37',14),(19,'Anjan','anjan-18','',0,'2016-07-26 11:14:37','2016-07-26 11:14:37',14),(21,'Frontend essentials','frontend-essentials','Use this link for your future reference',0,'2016-07-26 16:29:26','2016-07-26 16:29:26',9),(22,'sahayear','sahayear','mamon',1,'2016-07-26 19:58:59','2016-07-26 19:58:59',15),(23,'Testing Board','testing-board','Just for the testing purpose',0,'2016-07-27 08:19:18','2016-07-27 08:19:18',9),(24,'rishav.rc','rishavrc','nothing to say',1,'2016-07-27 11:45:14','2016-07-27 11:45:14',16),(25,'Habibuullah','habibuullah','Trxvhy jgdxvjit kfdvj',1,'2016-07-27 11:45:36','2016-07-27 11:45:17',17),(26,'Furniture Saptarshi','furniture-saptarshi','You order these furniture',0,'2016-07-28 05:47:12','2016-07-28 05:47:12',6),(27,'Furniture Sid','furniture-sid','You order this furniture',0,'2016-07-28 05:47:50','2016-07-28 05:47:50',6),(28,'Furniture Rahul','furniture-rahul','Me need to order these',0,'2016-07-28 05:53:07','2016-07-28 05:53:07',6),(29,'test','test','',1,'2016-07-28 09:44:16','2016-07-28 09:44:16',18),(30,'twitter.com','twittercom','',0,'2016-07-28 09:45:00','2016-07-28 09:45:00',18),(31,'Fav','fav','My Fav',1,'2016-07-28 19:15:54','2016-07-28 19:15:54',19),(32,'Nonveg Recepie','nonveg-recepie','Need to cook them',0,'2016-07-29 11:16:54','2016-07-29 11:16:54',6),(33,'Mausa','mausa','Important details',1,'2016-07-29 15:00:27','2016-07-29 15:00:27',20),(34,'Inspirational Blogs','inspirational-blogs','',0,'2016-07-29 20:15:48','2016-07-29 20:15:48',9),(35,'Cool Startup Products','cool-startup-products','',0,'2016-07-30 09:40:15','2016-07-30 09:40:15',9);
/*!40000 ALTER TABLE `collection_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_link`
--

DROP TABLE IF EXISTS `collection_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `link` longtext NOT NULL,
  `domain` varchar(300) NOT NULL,
  `img` varchar(300) NOT NULL,
  `timestamp` datetime NOT NULL,
  `collection_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `collection_li_collection_id_1829f134_fk_collection_collection_id` (`collection_id`),
  CONSTRAINT `collection_li_collection_id_1829f134_fk_collection_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `collection_collection` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_link`
--

LOCK TABLES `collection_link` WRITE;
/*!40000 ALTER TABLE `collection_link` DISABLE KEYS */;
INSERT INTO `collection_link` VALUES (1,'init','init','init.com','init.png','2016-07-17 19:03:59',2),(11,'','https://in.linkedin.com/in/sushantkr','in.linkedin.com','11.png','2016-07-18 14:46:49',3),(14,'CodyHouse - Free HTML, CSS, JS nuggets','https://codyhouse.co/','codyhouse.co','14.png','2016-07-20 19:51:54',9),(27,'Performance based questions for Google interview','http://www.va.gov/pbi/questions.asp','va.gov','15.png','2016-07-23 07:57:44',12),(28,'Technical development guide to prepare yourself for SDE position','https://www.google.com/about/careers/students/guide-to-technical-development.html','google.com','28.png','2016-07-23 07:59:49',12),(29,'Email confirmation tutorial in stackoverflow','http://stackoverflow.com/questions/24935271/django-custom-user-email-account-verification','stackoverflow.com','29.png','2016-07-23 09:56:59',13),(30,'Email subject change problem on stackoverflow','http://stackoverflow.com/questions/5812985/django-password-reset-email-subject-line-contains-example-com','stackoverflow.com','30.png','2016-07-23 09:58:01',13),(31,'imporing Site from sites.models porblem','http://stackoverflow.com/questions/15556499/django-db-settings-improperly-configured-error','stackoverflow.com','31.png','2016-07-23 09:58:42',13),(36,'Getting started with Github','https://guides.github.com/activities/hello-world/','guides.github.com','36.png','2016-07-26 16:30:14',21),(37,'Git Tutorial - Try Git','https://try.github.io/levels/1/challenges/1','try.github.io','37.png','2016-07-26 16:30:40',21),(38,'Single door fridge','https://www.rentomojo.com/mumbai/appliances-and-utility/single-door-fridge','rentomojo.com','38.png','2016-07-27 07:52:13',6),(39,'Washing Machine','https://www.rentomojo.com/mumbai/appliances-and-utility/washing-machine-top-load','rentomojo.com','39.png','2016-07-27 07:53:04',6),(40,'Cloth Dryer','https://www.rentomojo.com/mumbai/appliances-and-utility/clothes-dryer','rentomojo.com','40.png','2016-07-27 07:53:39',6),(41,'Sofa Cum Bed','https://www.rentomojo.com/mumbai/living-room/dexter-sofa-bed-value','rentomojo.com','41.png','2016-07-27 07:54:06',6),(42,'Center Table','https://www.rentomojo.com/mumbai/living-room/cuppa-centre-table-lite','rentomojo.com','42.png','2016-07-27 07:55:37',6),(43,'Shoe rack','https://www.rentomojo.com/mumbai/living-room/footsie-shoerack-lite','rentomojo.com','43.png','2016-07-27 07:56:09',6),(44,'Bed Room Mattress','https://www.rentomojo.com/mumbai/bedroom/slumber-mattress-prime','rentomojo.com','44.png','2016-07-27 07:56:44',6),(45,'Single Door Wardrobe for SG','https://www.rentomojo.com/mumbai/bedroom/stowy-wardrobe-1-door-lite','rentomojo.com','45.png','2016-07-27 07:58:08',6),(46,'Double Door Wardobe','https://www.rentomojo.com/mumbai/bedroom/stowy-wardrobe-2-door-lite','rentomojo.com','46.png','2016-07-27 07:58:28',6),(55,'Designlab: Learn UI & UX design skills part-time & online','http://trydesignlab.com/','trydesignlab.com','55.png','2016-07-27 09:36:31',23),(76,'Wardrobe Double door','https://www.rentomojo.com/mumbai/bedroom/stowy-wardrobe-2-door-lite','rentomojo.com','76.png','2016-07-28 05:52:04',27),(77,'Wardrobe Double door','https://www.rentomojo.com/mumbai/bedroom/stowy-wardrobe-2-door-lite','rentomojo.com','77.png','2016-07-28 05:52:25',26),(78,'Single door wardrobe','https://www.rentomojo.com/mumbai/bedroom/stowy-wardrobe-1-door-lite','rentomojo.com','78.png','2016-07-28 05:55:47',28),(79,'Mattress','https://www.rentomojo.com/mumbai/bedroom/slumber-mattress-prime','rentomojo.com','79.png','2016-07-28 05:56:12',28),(80,'Washing Machine','https://www.rentomojo.com/mumbai/appliances-and-utility/washing-machine-top-load','rentomojo.com','80.png','2016-07-28 05:57:49',27),(81,'Fridge','https://www.rentomojo.com/mumbai/appliances-and-utility/single-door-fridge','rentomojo.com','81.png','2016-07-28 05:58:30',28),(82,'Sofa','https://www.rentomojo.com/mumbai/living-room/dexter-sofa-bed-value','rentomojo.com','82.png','2016-07-28 05:58:57',26),(92,'test','http://www.google.com','google.com','92.png','2016-07-28 09:44:31',29),(93,'\"alert(\'here\');','http://twitter.com','twitter.com','93.png','2016-07-28 09:45:37',29),(94,'Shoe Rack','https://www.rentomojo.com/mumbai/living-room/footsie-shoerack-lite','rentomojo.com','94.png','2016-07-28 10:42:16',27),(95,'Center Table','https://www.rentomojo.com/mumbai/living-room/cuppa-centre-table-lite','rentomojo.com','95.png','2016-07-28 10:43:00',26),(103,'South Indian Chicken gravy','http://www.yummytummyaarthi.com/2016/01/chicken-gravy-recipe-south-indian.html','yummytummyaarthi.com','96.png','2016-07-29 11:17:40',32),(105,'4 Essential Pre-Launch Steps for Startups','https://www.entrepreneur.com/article/278914','entrepreneur.com','105.png','2016-07-29 20:16:05',34),(106,'Tohidur Rahaman | Facebook','http://facebook.com/rh.tohidur','facebook.com','106.png','2016-07-30 09:14:45',2),(107,'Dash | Learn HTML, CSS, JavaScript with our free online tutorial | General Assembly','https://dash.generalassemb.ly','dash.generalassemb.ly','107.png','2016-07-30 09:40:33',35),(108,'Real Python - Real Python','https://realpython.com/','realpython.com','108.png','2016-07-30 09:40:48',35),(109,'Learn Web Design: 50+ of the Best Online Educational Resources to Learn T0 Build Websites | SkilledUp','http://www.skilledup.com/guides/learn-web-design-course-guide','skilledup.com','109.png','2016-07-30 11:21:21',21),(111,'Tohidur Rahaman | LinkedIn','http://linkedin.com/in/tohidur','linkedin.com','110.png','2016-07-30 12:30:09',2),(116,'Material icons - Google Design','https://design.google.com/icons/','design.google.com','116.png','2016-07-30 16:04:49',23),(117,'Tohidur Rahaman | Facebook','http://facebook.com/rh.tohidur','facebook.com','117.png','2016-07-30 16:06:10',13),(118,'Sign up - AngelList','https://angel.co/jobs?job_filter_id=358310&startup_id=1068707&utm_campaign=daily_subscription_digest&utm_content=simplilend&utm_medium=email&utm_source=subscription-digest&utm_term=','angel.co','118.png','2016-07-30 16:06:50',23),(119,'Tohidur Rahaman | LinkedIn','http://linkedin.com/in/tohidur','linkedin.com','119.png','2016-07-30 18:00:46',13),(120,'How to start and run a successful blog','http://yourstory.com/2016/07/starting-your-blog-tips/','yourstory.com','120.png','2016-07-30 18:01:16',13),(121,'5 must-ask questions to determine whether a candidate is a cultural fit','https://yourstory.com/2016/07/interview-questions-cultural-fit/','yourstory.com','121.png','2016-07-30 18:01:50',34);
/*!40000 ALTER TABLE `collection_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_link_tags`
--

DROP TABLE IF EXISTS `collection_link_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection_link_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `collection_link_tags_link_id_17885c08_uniq` (`link_id`,`tag_id`),
  KEY `collection_link_tags_tag_id_6958052c_fk_collection_tag_id` (`tag_id`),
  CONSTRAINT `collection_link_tags_link_id_cf1465b9_fk_collection_link_id` FOREIGN KEY (`link_id`) REFERENCES `collection_link` (`id`),
  CONSTRAINT `collection_link_tags_tag_id_6958052c_fk_collection_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `collection_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_link_tags`
--

LOCK TABLES `collection_link_tags` WRITE;
/*!40000 ALTER TABLE `collection_link_tags` DISABLE KEYS */;
INSERT INTO `collection_link_tags` VALUES (1,1,1),(2,14,2),(3,28,3),(4,36,4),(5,38,5),(6,39,6),(7,42,7),(8,43,6),(9,44,8),(17,55,16),(29,76,8),(30,77,8),(31,78,8),(32,80,6),(33,81,5),(34,82,7),(37,94,7),(38,95,7),(41,103,5),(42,106,21),(43,109,22),(48,116,26),(49,117,21),(50,118,27);
/*!40000 ALTER TABLE `collection_link_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_tag`
--

DROP TABLE IF EXISTS `collection_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_tag`
--

LOCK TABLES `collection_tag` WRITE;
/*!40000 ALTER TABLE `collection_tag` DISABLE KEYS */;
INSERT INTO `collection_tag` VALUES (1,'Travel','2016-07-17 19:03:19'),(2,'blog','2016-07-20 19:51:54'),(3,'Learning','2016-07-23 07:59:49'),(4,'git','2016-07-26 16:30:15'),(5,'Kitchen','2016-07-27 07:52:13'),(6,'House_Appliance','2016-07-27 07:53:04'),(7,'Living_Room','2016-07-27 07:55:37'),(8,'Bed_Room_Furniture','2016-07-27 07:56:45'),(12,'test_test','2016-07-27 09:12:23'),(14,'Angel_Profile','2016-07-27 09:27:30'),(15,'Your_Story','2016-07-27 09:31:23'),(16,'design_lab','2016-07-27 09:36:32'),(21,'facebook','2016-07-30 09:14:46'),(22,'giudes','2016-07-30 11:21:31'),(23,'Instagram','2016-07-30 11:58:15'),(24,'google','2016-07-30 13:26:32'),(25,'github','2016-07-30 13:33:50'),(26,'hello','2016-07-30 16:04:49'),(27,'jobs','2016-07-30 16:06:50');
/*!40000 ALTER TABLE `collection_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (2,'2016-07-17 15:14:40','3','admin',2,'Changed first_name.',4,3),(3,'2016-07-17 15:23:43','2','ubuntu',3,'',4,3),(4,'2016-07-17 19:03:19','1','Travel',1,'Added.',8,3),(5,'2016-07-17 19:03:59','1','init',1,'Added.',9,3),(6,'2016-07-18 13:09:34','2','Tohidur Rahaman | Facebook',3,'',9,3),(7,'2016-07-18 15:17:43','10','World’s Largest Professional Network | LinkedIn',3,'',9,3),(8,'2016-07-18 15:17:43','9','',3,'',9,3),(9,'2016-07-18 15:17:43','7','',3,'',9,3),(10,'2016-07-18 15:17:43','6','',3,'',9,3),(11,'2016-07-22 21:39:09','6','er.rahulsutradhar@gmail.com',2,'Changed email.',4,3),(12,'2016-07-22 21:39:29','4','kr.sushantdas@gmail.com',2,'Changed email.',4,3),(13,'2016-07-22 21:39:41','5','sajib.halder2010@gmail.com',2,'Changed email.',4,3),(14,'2016-07-22 21:39:56','7','sajibhalder15@gmail.com',2,'Changed email.',4,3),(15,'2016-07-22 21:40:10','3','admin',2,'Changed email.',4,3),(16,'2016-07-22 23:07:42','8','tohidur920@gmail.com',3,'',4,3),(17,'2016-07-23 09:54:21','3','admin',2,'Changed email.',4,3),(18,'2016-07-23 22:43:48','10','rh.tohidur@gmail.com',2,'Changed username and email.',4,11),(19,'2016-07-27 08:25:44','6','House_Appliance',2,'Changed name.',8,3),(20,'2016-07-27 08:27:48','8','Bed_Room_Furniture',2,'Changed name.',8,3),(21,'2016-07-27 08:27:54','7','Living_Room',2,'Changed name.',8,3),(22,'2016-07-27 08:48:29','11','10',3,'',8,3),(23,'2016-07-27 08:48:29','10','Angel Profile',3,'',8,3),(24,'2016-07-27 08:48:29','9','test test',3,'',8,3),(25,'2016-07-27 09:26:06','13','Angel Profile',3,'',8,3),(26,'2016-07-27 14:31:11','17','12',3,'',8,3),(27,'2016-07-27 15:48:43','19','tag_tag',3,'',8,3),(28,'2016-07-27 15:48:43','18','some_tag',3,'',8,3),(29,'2016-07-27 19:16:37','21','quora_answer',3,'',8,3),(30,'2016-07-27 19:16:37','20','flip_kart',3,'',8,3),(31,'2016-07-28 09:08:35','18','quo_ra',3,'',8,3),(32,'2016-07-28 09:08:35','17','12',3,'',8,3),(33,'2016-07-28 18:52:32','20','quora_ans',3,'',8,3),(34,'2016-07-28 18:52:32','19','jquery_each',3,'',8,3);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'collection','collection'),(9,'collection','link'),(8,'collection','tag'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(10,'sites','site');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-07-17 08:35:36'),(2,'auth','0001_initial','2016-07-17 08:35:36'),(3,'admin','0001_initial','2016-07-17 08:35:36'),(4,'admin','0002_logentry_remove_auto_add','2016-07-17 08:35:36'),(5,'contenttypes','0002_remove_content_type_name','2016-07-17 08:35:36'),(6,'auth','0002_alter_permission_name_max_length','2016-07-17 08:35:36'),(7,'auth','0003_alter_user_email_max_length','2016-07-17 08:35:36'),(8,'auth','0004_alter_user_username_opts','2016-07-17 08:35:36'),(9,'auth','0005_alter_user_last_login_null','2016-07-17 08:35:36'),(10,'auth','0006_require_contenttypes_0002','2016-07-17 08:35:36'),(11,'auth','0007_alter_validators_add_error_messages','2016-07-17 08:35:36'),(12,'collection','0001_initial','2016-07-17 08:35:36'),(13,'collection','0002_auto_20160709_1647','2016-07-17 08:35:36'),(14,'collection','0003_auto_20160713_1116','2016-07-17 08:35:36'),(15,'collection','0004_auto_20160714_2126','2016-07-17 08:35:36'),(16,'sessions','0001_initial','2016-07-17 08:35:36'),(17,'sites','0001_initial','2016-07-23 08:33:21'),(18,'sites','0002_alter_domain_unique','2016-07-23 08:33:21');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('08kx3bj4x16q8xekzqj77t4rmygxnfle','NjUzMjhlNzNjY2FkMDE2YmRhMTFmNGQ1YzMzYTgyMzUxZmYxODUzMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ0MWE4MzI0NDNmNjJkYmUyYzg1Y2Q3NTBlYTc5ZDI0ZGI2NWY4ZTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMyJ9','2016-08-09 09:52:46'),('33ca36nq7ir2htkwdvlzc2jcma5xwwvo','Y2U2YTU5MzRlNTM2M2IyYTAxYTg0NTdkYjExYmJiMmQ5MTU3OTEyMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImIxYTRkN2FhNmY4YmVjOWVkZWE2NTRiNzcyM2E2ZmMzYzE4NWYxMWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-07-31 10:13:32'),('3518x7w9x6mjthgq862welojoj1slxmk','MDc1MTViM2IzMGQ3MjU0NmU4ZTk0ZDkwODM1Y2UyN2NjZGJjODg4Nzp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjNjBhNjhhNjE4Yzg4NmRmZjc1NWQ1NGQ3ZDc2MTI1ZTg5YWFiN2EiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2In0=','2016-08-02 11:14:07'),('9qs4rry7u6fz5d9qqu3wlbjcr71wtlms','ZjU3NTEzNDU4ZDhjYmNmZjIzNzFlZWM2ZTg1NzhhYWY5YjdkYTU5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImIwN2IwMjk2YzA4MDg3MGI5OTUxODViYjgwMjQ0MDIzYmU5MmRiYjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2016-08-09 12:39:54'),('aysie6esz0sqx1pwyar3tps8qy8n5ym9','NTYzYmQwY2RhMDUwNDM4NGZkNTFmNDU5NjdmM2U3YTFhNzRlYzlkMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTMyYzdkNDZmZWMwYzQzZDU0NWJhZTBmM2ZiZmVkMDJmODI2NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2016-08-01 07:22:01'),('dchku972n58xck8zx0g1hlrzc4pmrvkb','NjA0YWU0OWM4ZjYzNmY4M2FjMTQzZjNlMjY3ZWJiMzg4NGQ4ZWE4ODp7Il9hdXRoX3VzZXJfaGFzaCI6IjM3ZTI4M2YxN2IwMzZiMjg1NDQ0ODczY2U0ZTM3ZjBmZGFiMmE1ZGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMCJ9','2016-08-12 14:59:56'),('eey4i8br8jaqdrcw7q330z1uoz78iu9j','ZGFlMDdlMThhZmY1OTU0ZWU2MzFkNDkwZjVjYWUzZmRhZjZkNzg3ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImNiNWUxNjRmYTQxYjg3YTllYzE5NjYwZDU1MTE0MmI4NzIzYzE4YTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=','2016-08-01 15:09:57'),('hhr008seupv96yxh2g01uylo57lf281a','ZjU3NTEzNDU4ZDhjYmNmZjIzNzFlZWM2ZTg1NzhhYWY5YjdkYTU5YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImIwN2IwMjk2YzA4MDg3MGI5OTUxODViYjgwMjQ0MDIzYmU5MmRiYjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2016-08-13 18:52:24'),('jwri14birwhfyjzsoyhe02lfm9aqmsem','NTYzYmQwY2RhMDUwNDM4NGZkNTFmNDU5NjdmM2U3YTFhNzRlYzlkMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTMyYzdkNDZmZWMwYzQzZDU0NWJhZTBmM2ZiZmVkMDJmODI2NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2016-08-01 12:39:03'),('kq5p8t2d0t0zwh6p5i2hu44bpu1r5dud','ODQzNDMzODQ1MzRkMjJlMTY5Y2Q4M2NhZjg4MGVhZWFmNGM5OWI3Mjp7Il9hdXRoX3VzZXJfaGFzaCI6ImI1NTAxYzRjZjdmYmQyZmMzYTQwYTUxZTZjNzU0OWJlOWNlOTY4ZjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI5In0=','2016-08-06 07:55:35'),('lar2d89rgrzrxlkrpqk9mfg7bdmvs2t3','MGYxYjQ3YTlkYmMyZGY5YTMzMGY2YTgyNWEwNTZiNmY0YWQ4NTE0YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImI0OGZjNGQ0NDRjZjcyYjcwMjAxYzkxMjZjYzEwNGM5YTVkZmJmMDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxOSJ9','2016-08-11 19:15:12'),('m2ji425uun94uq6n41d3et56ozx62wkc','NzRiNWEzNWI3OWE3OWVlNDMyYjVjYzRhYzc0Y2RiNGY2OTkxZmM2Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImI2OGY2ODVjZTI2YzJjZTZiYjE1M2UzYTJiMWFmNjY4ZDY1MGQxZjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNSJ9','2016-08-09 19:58:19'),('ostyeazuox9n9jiwxmc1p0z8ix8npmzw','NTYzYmQwY2RhMDUwNDM4NGZkNTFmNDU5NjdmM2U3YTFhNzRlYzlkMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTMyYzdkNDZmZWMwYzQzZDU0NWJhZTBmM2ZiZmVkMDJmODI2NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2016-07-31 15:11:41'),('oszk25qw99p8q7xyxmvvm4he1mru4zja','MTRjYTU5OTFjZTdkNTU5ZTQyNTViNDRiZTQ1OWNkODc1ZjEyMzNkODp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ4YWE2MGQ3NmNiZmM4ZjMxOWJjMWJkMzE4NjdhM2ViNTY5NGU5YWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNyJ9','2016-08-10 11:44:42'),('rwb900kjw5e8cg7m3bwqu43qftdnhijh','NTI0ZjBlMDFhYmFkNzU3Y2RhN2M4YmRkZTFjYjVkNTJhMjM4OTdjNDp7Il9hdXRoX3VzZXJfaGFzaCI6IjMyMjUwNWVkNTY3YmNlOWYzYzM3NTg4YmI4Zjg1MGI1MTZjYTQ4MjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNCJ9','2016-08-09 11:13:03'),('s065zw947w2vc73wd97eok6aqok2t1vb','NTYzYmQwY2RhMDUwNDM4NGZkNTFmNDU5NjdmM2U3YTFhNzRlYzlkMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTMyYzdkNDZmZWMwYzQzZDU0NWJhZTBmM2ZiZmVkMDJmODI2NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2016-07-31 22:02:53'),('u19m43iwceq2d9ndxxng9lkvwpxc7pse','NTYzYmQwY2RhMDUwNDM4NGZkNTFmNDU5NjdmM2U3YTFhNzRlYzlkMTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjZTMyYzdkNDZmZWMwYzQzZDU0NWJhZTBmM2ZiZmVkMDJmODI2NDEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2016-07-31 19:54:13'),('wka8ydf6avqtie5z2kytye0yla8i7nis','Yzk3ZTVkYTU3MDVlMjNjN2FjN2NjMjVlMTQ2MzQxOWU4ZjZlZDU2YTp7Il9hdXRoX3VzZXJfaGFzaCI6IjRlMTdlN2Q5MjQzNTkzNTM0YmE2ZjY3YzMzYWY0ZDRkNWVjZWE1YjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxOCJ9','2016-08-11 09:44:09'),('y0inzdpl2tpd4ap9t2h10d8aopxv58ef','NTU4OTAwZTAxZjRiNTgzNWE4ZTdjYjEwNjA5ZWUxMTY3MGEyZWQwNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjAzMTc1MWRhNWNlODU4NTQ3Y2RjYzIwMGNjMTQ5YjM4NjEzYWFlZDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3In0=','2016-08-02 13:17:26'),('zsqac7alolrxc7d07u95cfoen0kv3bnm','YmYyYTE2ZTkyN2U3NjYxMzJjYzI4ZTcwYjNlZWIzMjQ5NjNjYTk5Nzp7Il9hdXRoX3VzZXJfaGFzaCI6ImE0MmFiM2ZlYmUwODI1ZmJmMTQ5ZWNlMjQ3YTA5MzlhMGE3N2JjNzMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNiJ9','2016-08-10 11:44:08');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com'),(2,'www.putboard.com','Putboard');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-30 21:28:48
