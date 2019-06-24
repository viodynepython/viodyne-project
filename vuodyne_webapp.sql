-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: viodyne_webapp
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
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
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add home slider',7,'add_homeslider'),(26,'Can change home slider',7,'change_homeslider'),(27,'Can delete home slider',7,'delete_homeslider'),(28,'Can view home slider',7,'view_homeslider'),(29,'Can add homeslide3',8,'add_homeslide3'),(30,'Can change homeslide3',8,'change_homeslide3'),(31,'Can delete homeslide3',8,'delete_homeslide3'),(32,'Can view homeslide3',8,'view_homeslide3'),(33,'Can add home slider2',9,'add_homeslider2'),(34,'Can change home slider2',9,'change_homeslider2'),(35,'Can delete home slider2',9,'delete_homeslider2'),(36,'Can view home slider2',9,'view_homeslider2'),(37,'Can add contact us',10,'add_contactus'),(38,'Can change contact us',10,'change_contactus'),(39,'Can delete contact us',10,'delete_contactus'),(40,'Can view contact us',10,'view_contactus'),(41,'Can add join us',11,'add_joinus'),(42,'Can change join us',11,'change_joinus'),(43,'Can delete join us',11,'delete_joinus'),(44,'Can view join us',11,'view_joinus'),(45,'Can add home s1',12,'add_homes1'),(46,'Can change home s1',12,'change_homes1'),(47,'Can delete home s1',12,'delete_homes1'),(48,'Can view home s1',12,'view_homes1'),(49,'Can add home s2',13,'add_homes2'),(50,'Can change home s2',13,'change_homes2'),(51,'Can delete home s2',13,'delete_homes2'),(52,'Can view home s2',13,'view_homes2'),(53,'Can add homes3',14,'add_homes3'),(54,'Can change homes3',14,'change_homes3'),(55,'Can delete homes3',14,'delete_homes3'),(56,'Can view homes3',14,'view_homes3'),(57,'Can add about us',15,'add_aboutus'),(58,'Can change about us',15,'change_aboutus'),(59,'Can delete about us',15,'delete_aboutus'),(60,'Can view about us',15,'view_aboutus'),(61,'Can add about us slider',16,'add_aboutusslider'),(62,'Can change about us slider',16,'change_aboutusslider'),(63,'Can delete about us slider',16,'delete_aboutusslider'),(64,'Can view about us slider',16,'view_aboutusslider'),(65,'Can add join us slider',17,'add_joinusslider'),(66,'Can change join us slider',17,'change_joinusslider'),(67,'Can delete join us slider',17,'delete_joinusslider'),(68,'Can view join us slider',17,'view_joinusslider'),(69,'Can add product slider',18,'add_productslider'),(70,'Can change product slider',18,'change_productslider'),(71,'Can delete product slider',18,'delete_productslider'),(72,'Can view product slider',18,'view_productslider'),(73,'Can add product slider1',19,'add_productslider1'),(74,'Can change product slider1',19,'change_productslider1'),(75,'Can delete product slider1',19,'delete_productslider1'),(76,'Can view product slider1',19,'view_productslider1'),(77,'Can add specialties slider',20,'add_specialtiesslider'),(78,'Can change specialties slider',20,'change_specialtiesslider'),(79,'Can delete specialties slider',20,'delete_specialtiesslider'),(80,'Can view specialties slider',20,'view_specialtiesslider');
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
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$PxpH2jyh51Ei$KYy+Mwa7beLBOCUUBchSh/YAzCVyJg4ZTWtDf40rF3k=','2019-05-21 12:07:19.061592',1,'admin','','','',1,1,'2019-01-07 08:24:05.582008');
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
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
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
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-02-12 05:53:06.142199','1','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(2,'2019-02-12 05:53:18.127422','2','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(3,'2019-02-12 05:53:25.925299','3','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(4,'2019-02-12 05:53:33.948628','4','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(5,'2019-02-12 05:53:43.039182','5','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(6,'2019-02-12 05:53:51.710006','6','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(7,'2019-02-12 05:53:59.492398','7','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(8,'2019-02-12 05:54:07.637633','8','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(9,'2019-02-12 05:54:24.208224','9','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(10,'2019-02-12 05:54:31.874240','10','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(11,'2019-02-12 05:54:39.694476','11','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(12,'2019-02-12 05:54:47.365433','12','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(13,'2019-02-12 05:54:54.289476','13','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(14,'2019-02-12 05:55:01.171424','14','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(15,'2019-02-12 05:55:08.024926','15','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(16,'2019-02-12 05:55:15.020124','16','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(17,'2019-02-12 05:55:22.484527','17','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(18,'2019-02-12 05:55:29.662225','18','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(19,'2019-02-12 05:55:36.939207','19','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(20,'2019-02-12 05:55:43.825384','20','Bio Diagnostics',1,'[{\"added\": {}}]',7,1),(21,'2019-02-12 05:56:55.737075','1','INNOVATIVE',1,'[{\"added\": {}}]',9,1),(22,'2019-02-12 05:57:26.222992','2','DISTINCTIVE',1,'[{\"added\": {}}]',9,1),(23,'2019-02-12 05:58:00.910985','3','EXTENDING',1,'[{\"added\": {}}]',9,1),(24,'2019-02-12 05:58:58.669581','1','Surgical Instruments',1,'[{\"added\": {}}]',8,1),(25,'2019-02-12 05:59:07.473874','2','Surgical Instruments',1,'[{\"added\": {}}]',8,1),(26,'2019-02-12 05:59:17.786656','3','Surgical Instruments',1,'[{\"added\": {}}]',8,1),(27,'2019-02-12 05:59:26.275639','4','Surgical Instruments',1,'[{\"added\": {}}]',8,1),(28,'2019-02-12 05:59:35.126636','5','Surgical Instruments',1,'[{\"added\": {}}]',8,1),(29,'2019-04-01 07:56:40.921006','20','Body Cooling and Heating',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(30,'2019-04-01 08:05:00.265566','20','Body Cooling and Heating',2,'[]',7,1),(31,'2019-04-01 08:05:18.401372','19','Low Vision Assistive Technology',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(32,'2019-04-01 08:05:39.589688','18','Medical Equipment',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(33,'2019-04-01 08:05:52.280418','17','Rapid Diagnostic Tests',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(34,'2019-04-01 08:06:05.293000','16','Smart Glasses',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(35,'2019-04-01 08:06:17.621019','15','Sterile Processing Supplies',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(36,'2019-04-01 08:06:30.150172','14','Surgical Instruments',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(37,'2019-04-01 08:06:42.378588','13','Surgical Sutures',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(38,'2019-04-01 08:07:32.303287','13','Surgical Sutures',2,'[]',7,1),(39,'2019-04-01 08:12:10.930290','12','Bio Diagnostics',3,'',7,1),(40,'2019-04-01 08:12:10.933547','11','Bio Diagnostics',3,'',7,1),(41,'2019-04-01 08:12:10.936615','10','Bio Diagnostics',3,'',7,1),(42,'2019-04-01 08:14:02.117124','9','Bio Diagnostics',3,'',7,1),(43,'2019-04-01 08:14:02.124598','8','Bio Diagnostics',3,'',7,1),(44,'2019-04-01 08:14:02.131245','7','Bio Diagnostics',3,'',7,1),(45,'2019-04-01 08:14:02.134278','6','Bio Diagnostics',3,'',7,1),(46,'2019-04-01 08:14:02.138642','5','Bio Diagnostics',3,'',7,1),(47,'2019-04-01 08:14:02.145222','4','Bio Diagnostics',3,'',7,1),(48,'2019-04-01 08:14:02.149790','3','Bio Diagnostics',3,'',7,1),(49,'2019-04-01 08:14:02.152759','2','Bio Diagnostics',3,'',7,1),(50,'2019-04-01 08:14:02.154713','1','Bio Diagnostics',3,'',7,1),(51,'2019-04-01 08:17:08.082927','5','Body Cooling and Heating',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),(52,'2019-04-01 08:17:27.154018','4','Low Vision Assistive Technology',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),(53,'2019-04-01 08:18:59.174400','3','Medical Equipment',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),(54,'2019-04-01 08:19:30.493244','2','Rapid Diagnostic Tests',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),(55,'2019-04-01 08:19:48.500819','1','Smart Glasses',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),(56,'2019-04-01 08:19:55.091818','1','Smart Glasses',2,'[]',8,1),(57,'2019-04-01 08:20:39.503293','6','Sterile Processing Supplies',1,'[{\"added\": {}}]',8,1),(58,'2019-04-01 08:21:13.815546','6','Sterile Processing Supplies',2,'[]',8,1),(59,'2019-04-01 08:21:26.296207','7','Surgical Instruments',1,'[{\"added\": {}}]',8,1),(60,'2019-04-01 08:21:49.108420','8','Surgical Sutures',1,'[{\"added\": {}}]',8,1),(61,'2019-04-04 04:18:53.277045','20','Body Cooling and Heating',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(62,'2019-04-04 04:19:33.933574','19','Low Vision Assistive Technology',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(63,'2019-04-04 04:19:45.985447','18','Medical Equipment',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(64,'2019-04-04 04:19:57.256592','17','Rapid Diagnostic Tests',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(65,'2019-04-04 04:20:05.385386','16','Smart Glasses',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(66,'2019-04-04 04:20:13.853438','15','Sterile Processing Supplies',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(67,'2019-04-04 04:20:23.343903','14','Surgical Instruments',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(68,'2019-04-04 04:20:35.758696','13','Surgical Sutures',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(69,'2019-04-04 04:29:21.369849','20','Bio Diagnostics',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',7,1),(70,'2019-04-04 04:30:07.462119','19','Central Sterile Supply',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',7,1),(71,'2019-04-04 04:30:24.965851','18','Medical Devices',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',7,1),(72,'2019-04-04 04:30:48.897730','17','Operating Suite',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',7,1),(73,'2019-04-04 04:31:07.673955','16','Smart Technology',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',7,1),(74,'2019-04-04 04:31:26.181333','15','Sports Therapy and Performance',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',7,1),(75,'2019-04-04 04:31:48.157813','14','Visual Aids',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',7,1),(76,'2019-04-04 04:32:13.216515','13','Surgical Sutures',3,'',7,1),(77,'2019-04-04 04:40:30.702220','17','Operating Suite',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(78,'2019-04-04 04:46:19.405595','20','Bio Diagnostics',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(79,'2019-04-04 05:04:07.666147','20','Bio Diagnostics',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(80,'2019-04-04 05:04:18.464840','19','Central Sterile Supply',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(81,'2019-04-04 05:04:27.221318','18','Medical Devices',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(82,'2019-04-04 05:04:36.785631','17','Operating Suite',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(83,'2019-04-04 05:05:14.189408','17','Operating Suite',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(84,'2019-04-04 05:05:27.068668','16','Smart Technology',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(85,'2019-04-04 05:05:36.695484','15','Sports Therapy and Performance',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(86,'2019-04-04 05:05:49.877334','14','Visual Aids',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(87,'2019-04-04 05:06:08.316343','20','Bio Diagnostics',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(88,'2019-04-04 05:21:16.233150','7','Surgical Instruments',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(89,'2019-04-04 05:26:09.187829','15','Sports Therapy and Performance',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(90,'2019-04-04 05:54:17.546729','20','Bio Diagnostics',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(91,'2019-04-04 05:54:27.490339','19','Central Sterile Supply',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(92,'2019-04-04 05:54:37.341984','18','Medical Devices',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(93,'2019-04-04 05:54:46.923068','17','Operating Suite',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(94,'2019-04-04 05:54:56.079694','16','Smart Technology',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(95,'2019-04-04 05:55:05.003039','15','Sports Therapy and Performance',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(96,'2019-04-04 05:55:13.131597','14','Visual Aids',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(97,'2019-04-04 06:50:21.543309','8','Surgical Sutures',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(98,'2019-04-04 06:50:34.803974','7','Surgical Instruments',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(99,'2019-04-04 06:50:50.720294','6','Sterile Processing Supplies',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(100,'2019-04-04 06:51:02.052909','5','Body Cooling and Heating',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(101,'2019-04-04 06:51:13.718122','4','Low Vision Assistive Technology',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(102,'2019-04-04 06:51:54.547357','3','Medical Equipment',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(103,'2019-04-04 06:53:21.585296','3','Medical Equipment',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(104,'2019-04-04 06:53:30.856325','2','Rapid Diagnostic Tests',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(105,'2019-04-04 06:53:48.444937','1','Smart Glasses',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(106,'2019-04-04 12:12:13.654289','20','Visual Aids',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',7,1),(107,'2019-04-04 12:12:50.078068','19','Sports Therapy and Performance',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',7,1),(108,'2019-04-04 12:14:23.140133','18','Smart Technology',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',7,1),(109,'2019-04-04 12:14:55.597590','16','Medical Equipment',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',7,1),(110,'2019-04-04 12:15:31.813769','15','Central Sterile Supply',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',7,1),(111,'2019-04-04 12:15:50.905866','14','Bio Diagnostics',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(112,'2019-04-04 12:17:24.851549','3','EXTENDING',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(113,'2019-04-04 12:17:38.312689','2','DISTINCTIVE',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(114,'2019-04-04 12:17:53.133106','1','INNOVATIVE',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(115,'2019-04-04 12:18:34.307521','17','Operating Suite',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(116,'2019-04-04 12:19:28.164261','14','Bio Diagnostics',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(117,'2019-04-04 12:20:23.603939','1','Body Cooling and Heating',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',8,1),(118,'2019-04-04 12:20:41.652655','2','Low Vision Assistive Technology',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',8,1),(119,'2019-04-04 12:20:56.009860','3','Medical Equipment',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(120,'2019-04-04 12:21:10.789117','4','Rapid Diagnostic Tests',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',8,1),(121,'2019-04-04 12:21:31.541743','5','Smart Glasses',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',8,1),(122,'2019-04-04 12:21:57.699375','6','Sterile Processing Supplies',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(123,'2019-04-04 12:22:04.142163','7','Surgical Instruments',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(124,'2019-04-04 12:22:11.429234','8','Surgical Sutures',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(125,'2019-04-04 12:48:57.156126','21','test',1,'[{\"added\": {}}]',7,1),(126,'2019-04-04 12:51:50.385962','9','test',1,'[{\"added\": {}}]',8,1),(127,'2019-04-04 12:52:14.352884','9','a test',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),(128,'2019-04-04 13:02:58.419722','8','Surgical Sutures',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(129,'2019-04-04 13:03:07.650880','7','Surgical Instruments',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(130,'2019-04-04 13:03:16.542621','6','Sterile Processing Supplies',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(131,'2019-04-04 13:03:25.776149','5','Smart Glasses',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(132,'2019-04-04 13:03:34.369546','4','Rapid Diagnostic Tests',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(133,'2019-04-04 13:03:42.590194','3','Medical Equipment',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(134,'2019-04-04 13:03:51.521005','2','Low Vision Assistive Technology',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(135,'2019-04-04 13:03:59.450136','1','Body Cooling and Heating',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(136,'2019-04-04 13:31:23.109374','1','Body Cooling and Heating',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(137,'2019-04-04 13:32:17.386873','9','a test',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',8,1),(138,'2019-04-05 05:09:34.121009','9','a test',3,'',8,1),(139,'2019-04-05 05:11:52.010931','21','test',3,'',7,1),(140,'2019-04-06 05:43:19.778745','22','test',1,'[{\"added\": {}}]',7,1),(141,'2019-04-06 05:45:38.785588','22','test',3,'',7,1),(142,'2019-04-06 05:46:10.227713','10','test',1,'[{\"added\": {}}]',8,1),(143,'2019-04-06 05:46:39.633778','10','a test',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),(144,'2019-04-06 05:47:25.280485','10','a test',3,'',8,1),(145,'2019-04-12 13:04:10.141470','1','Bio Diagnostics',1,'[{\"added\": {}}]',12,1),(146,'2019-04-12 13:04:27.125495','2','Central Sterile Supply',1,'[{\"added\": {}}]',12,1),(147,'2019-04-12 13:04:47.075850','3','Medical Equipment',1,'[{\"added\": {}}]',12,1),(148,'2019-04-12 13:04:58.020427','3','Medical Equipment',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',12,1),(149,'2019-04-12 13:05:15.605405','4','Operating Suite',1,'[{\"added\": {}}]',12,1),(150,'2019-04-12 13:05:39.809904','5','Smart Technology',1,'[{\"added\": {}}]',12,1),(151,'2019-04-12 13:06:28.011737','6','Sports Therapy and Performance',1,'[{\"added\": {}}]',12,1),(152,'2019-04-12 13:07:03.366119','7','Visual Aids',1,'[{\"added\": {}}]',12,1),(153,'2019-04-12 13:08:00.249361','1','EXTENDING',1,'[{\"added\": {}}]',13,1),(154,'2019-04-12 13:08:37.169576','2','DISTINCTIVE',1,'[{\"added\": {}}]',13,1),(155,'2019-04-12 13:09:12.024140','3','INNOVATIVE',1,'[{\"added\": {}}]',13,1),(156,'2019-04-12 13:14:12.913333','1','Bio Diagnostics',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',12,1),(157,'2019-04-12 13:26:10.205293','3','EXTENDING',2,'[{\"changed\": {\"fields\": [\"Name\", \"Name2\", \"Text\", \"Image\"]}}]',13,1),(158,'2019-04-12 13:26:55.526069','1','INNOVATIVE',2,'[{\"changed\": {\"fields\": [\"Name\", \"Name2\", \"Text\", \"Image\"]}}]',13,1),(159,'2019-04-12 13:29:01.686047','1','Body Cooling and Heating',1,'[{\"added\": {}}]',14,1),(160,'2019-04-12 13:29:10.172724','2','Body Cooling and Heating',1,'[{\"added\": {}}]',14,1),(161,'2019-04-12 13:29:29.266773','3','Medical Equipment',1,'[{\"added\": {}}]',14,1),(162,'2019-04-12 13:30:39.579320','1','Low Vision Assistive Technology',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',14,1),(163,'2019-04-12 13:30:59.122079','4','Rapid Diagnostic Tests',1,'[{\"added\": {}}]',14,1),(164,'2019-04-17 07:37:40.379859','3','INNOVATIVE',3,'',15,1),(165,'2019-04-17 07:41:54.437929','1','Bio Diagnostics',1,'[{\"added\": {}}]',12,1),(166,'2019-04-17 07:42:24.293922','2','Central Sterile Supply',1,'[{\"added\": {}}]',12,1),(167,'2019-04-17 07:42:42.210398','3','Medical Equipment',1,'[{\"added\": {}}]',12,1),(168,'2019-04-17 07:43:01.832516','4','Operating Suite',1,'[{\"added\": {}}]',12,1),(169,'2019-04-17 07:43:51.753512','5','Smart Technology',1,'[{\"added\": {}}]',12,1),(170,'2019-04-17 07:44:06.366733','6','Sports Therapy and Performance',1,'[{\"added\": {}}]',12,1),(171,'2019-04-17 07:44:20.914497','7','Visual Aids',1,'[{\"added\": {}}]',12,1),(172,'2019-04-17 07:45:28.903750','1','EXTENDING',1,'[{\"added\": {}}]',13,1),(173,'2019-04-17 07:45:51.123412','2','DISTINCTIVE',1,'[{\"added\": {}}]',13,1),(174,'2019-04-17 07:46:35.438342','3','INNOVATIVE',1,'[{\"added\": {}}]',13,1),(175,'2019-04-17 07:47:04.321157','3','EXTENDING',2,'[{\"changed\": {\"fields\": [\"Name\", \"Name2\", \"Text\", \"Image\"]}}]',13,1),(176,'2019-04-17 07:47:42.048485','1','INNOVATIVE',2,'[{\"changed\": {\"fields\": [\"Name\", \"Name2\", \"Text\", \"Image\"]}}]',13,1),(177,'2019-04-17 07:48:33.794550','1','Body Cooling and Heating',1,'[{\"added\": {}}]',14,1),(178,'2019-04-17 07:48:46.203660','2','Low Vision Assistive Technology',1,'[{\"added\": {}}]',14,1),(179,'2019-04-17 07:48:58.301726','3','Medical Equipment',1,'[{\"added\": {}}]',14,1),(180,'2019-04-17 07:49:13.047678','4','Rapid Diagnostic Tests',1,'[{\"added\": {}}]',14,1),(181,'2019-04-26 13:02:54.655008','1','Company Overview',1,'[{\"added\": {}}]',16,1),(182,'2019-04-26 13:03:50.219539','2','Quality Management System',1,'[{\"added\": {}}]',16,1),(183,'2019-04-26 13:04:03.837104','3','Our Mission',1,'[{\"added\": {}}]',16,1),(184,'2019-04-26 13:04:23.717860','4','Our Vision',1,'[{\"added\": {}}]',16,1),(185,'2019-04-26 13:04:53.837546','5','Testimonials',1,'[{\"added\": {}}]',16,1),(186,'2019-04-26 13:15:04.934166','1','Central Sterile Supply',1,'[{\"added\": {}}]',20,1),(187,'2019-04-26 13:18:09.436340','2','Logistics and Storage',1,'[{\"added\": {}}]',20,1),(188,'2019-04-26 13:18:41.085286','3','Operating Suite',1,'[{\"added\": {}}]',20,1),(189,'2019-04-26 13:19:37.175558','4','Ophthalmology',1,'[{\"added\": {}}]',20,1),(190,'2019-04-26 13:19:52.158874','5','Sports Therapy and Performance',1,'[{\"added\": {}}]',20,1),(191,'2019-04-26 13:22:34.175088','1','Body Cooling and Heating',1,'[{\"added\": {}}]',19,1),(192,'2019-04-26 13:23:01.420648','2','Low Vision Assistive Technology',1,'[{\"added\": {}}]',19,1),(193,'2019-04-26 13:23:15.393635','3','Medical Equipment',1,'[{\"added\": {}}]',19,1),(194,'2019-04-26 13:23:32.027006','4','Rapid Diagnostic Tests',1,'[{\"added\": {}}]',19,1),(195,'2019-04-26 13:23:44.449816','5','Smart Glasses',1,'[{\"added\": {}}]',19,1),(196,'2019-04-26 13:23:57.337608','6','Sterile Processing Supplies',1,'[{\"added\": {}}]',19,1),(197,'2019-04-26 13:24:09.430889','7','Surgical Instruments',1,'[{\"added\": {}}]',19,1),(198,'2019-04-26 13:24:09.855167','8','Surgical Instruments',1,'[{\"added\": {}}]',19,1),(199,'2019-04-26 13:24:17.895243','7','Surgical Instruments',3,'',19,1),(200,'2019-04-26 13:24:28.894687','9','Surgical Sutures',1,'[{\"added\": {}}]',19,1),(201,'2019-04-26 13:25:04.413704','1','Body Cooling and Heating',1,'[{\"added\": {}}]',18,1),(202,'2019-04-26 13:25:31.696916','2','Low Vision Assistive Technology',1,'[{\"added\": {}}]',18,1),(203,'2019-04-26 13:25:52.288487','3','Medical Equipment',1,'[{\"added\": {}}]',18,1),(204,'2019-04-26 13:26:23.726958','2','Low Vision Assistive Technology',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',18,1),(205,'2019-04-26 13:26:43.465952','4','Rapid Diagnostic Tests',1,'[{\"added\": {}}]',18,1),(206,'2019-04-26 13:27:04.269287','5','Smart Glasses',1,'[{\"added\": {}}]',18,1),(207,'2019-04-26 13:49:33.687164','6','Sterile Processing Supplies',1,'[{\"added\": {}}]',18,1),(208,'2019-04-26 13:49:58.420533','7','Surgical Instruments',1,'[{\"added\": {}}]',18,1),(209,'2019-04-26 13:50:12.533635','8','Surgical Sutures',1,'[{\"added\": {}}]',18,1),(210,'2019-04-26 13:50:29.084514','1','Become a Viodyne Sterile Processing Supplies Distributor',1,'[{\"added\": {}}]',17,1),(211,'2019-04-26 13:50:40.911076','2','Join Our Team',1,'[{\"added\": {}}]',17,1),(212,'2019-04-27 08:18:52.827672','1','Central Sterile Supply',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',20,1),(213,'2019-04-27 08:19:25.765507','2','Logistics and Storage',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',20,1),(214,'2019-04-27 08:20:30.549538','1','Central Sterile Supply',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',20,1),(215,'2019-04-27 08:20:38.869514','2','Logistics and Storage',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',20,1),(216,'2019-04-27 09:21:00.915612','1','Company Overview',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(217,'2019-04-27 09:23:13.405224','1','Company Overview',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(218,'2019-05-04 07:19:15.392194','1','Company Overview',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(219,'2019-05-04 07:27:40.360763','1','Company Overview',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(220,'2019-05-04 07:34:03.500597','3','Our Mission',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(221,'2019-05-04 07:36:34.985895','4','Our Vision',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(222,'2019-05-04 07:38:23.015042','2','Quality Management System',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(223,'2019-05-04 07:42:45.185925','5','Testimonials',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(224,'2019-05-04 07:52:36.440286','6','Bio Diagnostics',1,'[{\"added\": {}}]',20,1),(225,'2019-05-04 08:02:00.627055','14','Laboratory',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(226,'2019-05-04 08:02:37.443397','16','Medical Devices',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(227,'2019-05-04 08:03:19.153718','18','Logistics and Storage Smart Technology',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(228,'2019-05-04 08:03:38.708767','18','Logistics and Storage',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(229,'2019-05-04 08:04:09.860757','20','Ophthalmology',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(230,'2019-05-04 08:09:42.103733','6','Laboratory',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',20,1),(231,'2019-05-04 08:11:15.462896','7','Medical Devices',1,'[{\"added\": {}}]',20,1),(232,'2019-05-04 08:26:36.824292','1','Company Overview',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(233,'2019-05-04 08:26:46.588135','3','Our Mission',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(234,'2019-05-04 08:26:55.620732','4','Our Vision',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(235,'2019-05-04 08:27:03.341830','2','Quality Management System',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(236,'2019-05-04 08:27:11.727817','5','Testimonials',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',16,1),(237,'2019-05-04 08:45:12.699259','1','Central Sterile Supply',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',20,1),(238,'2019-05-04 08:45:22.292290','6','Laboratory',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',20,1),(239,'2019-05-04 08:45:29.937338','2','Logistics and Storage',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',20,1),(240,'2019-05-04 08:45:37.197477','7','Medical Devices',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',20,1),(241,'2019-05-04 08:45:44.705440','3','Operating Suite',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',20,1),(242,'2019-05-04 08:45:51.878772','4','Ophthalmology',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',20,1),(243,'2019-05-04 08:45:59.460298','5','Sports Therapy and Performance',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',20,1),(244,'2019-05-04 08:49:57.150133','1','Body Cooling and',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',19,1),(245,'2019-05-04 08:51:26.634088','1','Body Cooling and Heating',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',18,1),(246,'2019-05-04 08:53:14.073999','1','Body Cooling and Heating',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',18,1),(247,'2019-05-04 08:55:11.683717','1','Body Cooling and Heating',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\"]}}]',19,1),(248,'2019-05-04 08:56:34.429359','2','Low Vision Assistive Technology',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',19,1),(249,'2019-05-04 08:59:04.510109','3','Medical Equipment',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',19,1),(250,'2019-05-04 08:59:16.250019','4','Rapid Diagnostic Tests',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',19,1),(251,'2019-05-04 08:59:25.339624','5','Smart Glasses',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',19,1),(252,'2019-05-04 08:59:33.957225','6','Sterile Processing Supplies',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',19,1),(253,'2019-05-04 09:00:01.524259','8','Surgical Instruments',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',19,1),(254,'2019-05-04 09:00:10.286083','9','Surgical Sutures',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',19,1);
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
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(15,'home','aboutus'),(16,'home','aboutusslider'),(10,'home','contactus'),(12,'home','homes1'),(13,'home','homes2'),(14,'home','homes3'),(8,'home','homeslide3'),(7,'home','homeslider'),(9,'home','homeslider2'),(11,'home','joinus'),(17,'home','joinusslider'),(18,'home','productslider'),(19,'home','productslider1'),(20,'home','specialtiesslider'),(6,'sessions','session');
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
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-12-20 10:25:53.116415'),(2,'auth','0001_initial','2018-12-20 10:25:53.563380'),(3,'admin','0001_initial','2018-12-20 10:25:53.718331'),(4,'admin','0002_logentry_remove_auto_add','2018-12-20 10:25:53.750770'),(5,'admin','0003_logentry_add_action_flag_choices','2018-12-20 10:25:53.800115'),(6,'contenttypes','0002_remove_content_type_name','2018-12-20 10:25:53.895152'),(7,'auth','0002_alter_permission_name_max_length','2018-12-20 10:25:53.910859'),(8,'auth','0003_alter_user_email_max_length','2018-12-20 10:25:53.936003'),(9,'auth','0004_alter_user_username_opts','2018-12-20 10:25:53.952517'),(10,'auth','0005_alter_user_last_login_null','2018-12-20 10:25:54.010868'),(11,'auth','0006_require_contenttypes_0002','2018-12-20 10:25:54.015625'),(12,'auth','0007_alter_validators_add_error_messages','2018-12-20 10:25:54.030349'),(13,'auth','0008_alter_user_username_max_length','2018-12-20 10:25:54.052896'),(14,'auth','0009_alter_user_last_name_max_length','2018-12-20 10:25:54.072447'),(15,'sessions','0001_initial','2018-12-20 10:25:54.108579'),(16,'home','0001_initial','2019-01-31 05:55:04.918032'),(17,'home','0002_homeslide3','2019-01-31 05:55:04.963960'),(18,'home','0003_homeslider2','2019-01-31 05:55:04.998576'),(19,'home','0004_auto_20181228_1039','2019-01-31 05:55:05.169498'),(20,'home','0005_auto_20190118_0843','2019-01-31 05:55:05.236738'),(21,'home','0006_contactus_joinus','2019-02-12 09:33:39.486631'),(22,'home','0007_auto_20190214_1141','2019-03-06 12:33:27.979924'),(23,'home','0008_auto_20190214_1144','2019-03-06 12:33:27.997248'),(24,'home','0009_auto_20190225_1400','2019-03-06 12:33:28.017880'),(25,'home','0010_auto_20190225_1402','2019-03-06 12:33:28.027982'),(26,'home','0011_auto_20190304_1108','2019-03-06 12:33:28.033801'),(27,'home','0012_auto_20190306_0601','2019-03-06 12:33:28.038725'),(28,'home','0013_auto_20190306_0650','2019-03-06 12:33:28.043473'),(29,'home','0014_auto_20190306_0816','2019-03-06 12:33:28.060155'),(30,'home','0015_auto_20190306_1027','2019-03-06 12:33:28.087681'),(31,'home','0016_auto_20190306_1028','2019-03-06 12:33:28.115628'),(32,'home','0017_auto_20190306_1029','2019-03-06 12:33:28.133458'),(33,'home','0018_auto_20190306_1032','2019-03-06 12:33:28.170349'),(34,'home','0019_auto_20190306_1035','2019-03-06 12:33:28.178175'),(35,'home','0020_auto_20190306_1219','2019-03-06 12:33:28.222201'),(36,'home','0021_auto_20190412_1227','2019-04-12 12:27:35.950992'),(37,'home','0021_auto_20190417_0626','2019-04-17 07:24:43.428302'),(38,'home','0022_merge_20190417_0716','2019-04-17 07:24:43.432961'),(39,'home','0023_auto_20190419_1042','2019-04-19 10:42:21.983769'),(40,'home','0024_aboutusslider_joinusslider_productslider_productslider1_specialtiesslider','2019-04-26 13:00:04.766372');
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
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0iqyz921q2m2xtsm697ftn9zh24ouuis','YTU3YzZiZjBlOTYxMDE3MGU4YzEyYTVmMWM3M2IwNmNmNDg4YTk4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNGU4NmFjYzg4MmRlM2E3MThmNzdmMTFlZTkwNmQ3MzVhNmQxYWFhIn0=','2019-04-26 09:20:47.086999'),('2ai3yciom5b838vsm0kkb8ohokgj7az9','YTU3YzZiZjBlOTYxMDE3MGU4YzEyYTVmMWM3M2IwNmNmNDg4YTk4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNGU4NmFjYzg4MmRlM2E3MThmNzdmMTFlZTkwNmQ3MzVhNmQxYWFhIn0=','2019-02-26 05:01:13.406631'),('737rrng6lvoa23wyjh0uxmp60nr6cjme','YTU3YzZiZjBlOTYxMDE3MGU4YzEyYTVmMWM3M2IwNmNmNDg4YTk4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNGU4NmFjYzg4MmRlM2E3MThmNzdmMTFlZTkwNmQ3MzVhNmQxYWFhIn0=','2019-02-04 15:05:24.175976'),('bdv95j0bb3ks8pbchhp3yumjytnzldu3','YTU3YzZiZjBlOTYxMDE3MGU4YzEyYTVmMWM3M2IwNmNmNDg4YTk4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNGU4NmFjYzg4MmRlM2E3MThmNzdmMTFlZTkwNmQ3MzVhNmQxYWFhIn0=','2019-03-20 12:34:24.236119'),('f18vvru770bkslsjd6s4mdx4dtr4qzoj','YTU3YzZiZjBlOTYxMDE3MGU4YzEyYTVmMWM3M2IwNmNmNDg4YTk4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNGU4NmFjYzg4MmRlM2E3MThmNzdmMTFlZTkwNmQ3MzVhNmQxYWFhIn0=','2019-06-04 12:07:19.067655'),('ohdzlyvdcdcf2jniwv125ja71wh8kxps','YTU3YzZiZjBlOTYxMDE3MGU4YzEyYTVmMWM3M2IwNmNmNDg4YTk4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNGU4NmFjYzg4MmRlM2E3MThmNzdmMTFlZTkwNmQ3MzVhNmQxYWFhIn0=','2019-02-15 07:45:02.342864'),('vxhxaxw0bw37r1l5u2rd03442l3yma8h','YTU3YzZiZjBlOTYxMDE3MGU4YzEyYTVmMWM3M2IwNmNmNDg4YTk4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNGU4NmFjYzg4MmRlM2E3MThmNzdmMTFlZTkwNmQ3MzVhNmQxYWFhIn0=','2019-05-10 13:02:13.922450'),('xyzrkxz6bmijron41w16m3uvvgo9mk8q','YTU3YzZiZjBlOTYxMDE3MGU4YzEyYTVmMWM3M2IwNmNmNDg4YTk4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNGU4NmFjYzg4MmRlM2E3MThmNzdmMTFlZTkwNmQ3MzVhNmQxYWFhIn0=','2019-04-18 06:36:19.738359'),('ymnsk8a1vbhkd8xhdhk8ktu5o1uhi58u','YTU3YzZiZjBlOTYxMDE3MGU4YzEyYTVmMWM3M2IwNmNmNDg4YTk4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNGU4NmFjYzg4MmRlM2E3MThmNzdmMTFlZTkwNmQ3MzVhNmQxYWFhIn0=','2019-05-14 10:56:31.730846');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_aboutus`
--

DROP TABLE IF EXISTS `home_aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_aboutus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(120) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Comment` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_aboutus`
--

LOCK TABLES `home_aboutus` WRITE;
/*!40000 ALTER TABLE `home_aboutus` DISABLE KEYS */;
INSERT INTO `home_aboutus` VALUES (1,'EXTENDING','Suraj@gmal.com','wdw'),(2,'Medical Equipment','sasj@gmail.com','kdfoifjiqwj');
/*!40000 ALTER TABLE `home_aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_aboutusslider`
--

DROP TABLE IF EXISTS `home_aboutusslider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_aboutusslider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(120) NOT NULL,
  `Image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_aboutusslider`
--

LOCK TABLES `home_aboutusslider` WRITE;
/*!40000 ALTER TABLE `home_aboutusslider` DISABLE KEYS */;
INSERT INTO `home_aboutusslider` VALUES (1,'Company Overview','s1/Company_Overview_bszUxWK.png'),(2,'Quality Management System','s1/Quality_Management_System_EGZyLhP.png'),(3,'Our Mission','s1/Our_Mission_hL7xIoC.png'),(4,'Our Vision','s1/Our_Vision_wOBlHE0.png'),(5,'Testimonials','s1/Testimonials_KeZVu67.png');
/*!40000 ALTER TABLE `home_aboutusslider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_contactus`
--

DROP TABLE IF EXISTS `home_contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(120) NOT NULL,
  `COMPANY` varchar(120) NOT NULL,
  `TELEPHONE` varchar(120) NOT NULL,
  `EMAIL` varchar(120) NOT NULL,
  `MESSAGE` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_contactus`
--

LOCK TABLES `home_contactus` WRITE;
/*!40000 ALTER TABLE `home_contactus` DISABLE KEYS */;
INSERT INTO `home_contactus` VALUES (1,'test3','test3','1234567890','test3@gmail.com','this is test3'),(2,'test','test','1234567890','s@gmail.com','thsi'),(3,'ss','as','549498','d@gmail.com','eq'),(4,'ds','dasf','85335385','d@gmail.com','ssssssssssss');
/*!40000 ALTER TABLE `home_contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_homes1`
--

DROP TABLE IF EXISTS `home_homes1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_homes1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(120) NOT NULL,
  `Image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_homes1`
--

LOCK TABLES `home_homes1` WRITE;
/*!40000 ALTER TABLE `home_homes1` DISABLE KEYS */;
INSERT INTO `home_homes1` VALUES (1,'Bio Diagnostics','s1/Bio_Diagnostics_CbbeRUO_fuxoaB8.png'),(2,'Central Sterile Supply','s1/Central_Sterile_Supply_89b7brq.png'),(3,'Medical Equipment','s1/Medical_Devices_eq0vilJ.png'),(4,'Operating Suite','s1/OperatingSuite_ACp5GF4.jpg'),(5,'Smart Technology','s1/Smart_Technology_qmZYRV1.png'),(6,'Sports Therapy and Performance','s1/Sports_Therapy_and_Performance_BwfRPc5_GB0GccU_ABAFum5.png'),(7,'Visual Aids','s1/Visual_Aids_HCRxjGY.png');
/*!40000 ALTER TABLE `home_homes1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_homes2`
--

DROP TABLE IF EXISTS `home_homes2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_homes2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(120) NOT NULL,
  `Name2` varchar(120) NOT NULL,
  `Text` varchar(300) NOT NULL,
  `Image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_homes2`
--

LOCK TABLES `home_homes2` WRITE;
/*!40000 ALTER TABLE `home_homes2` DISABLE KEYS */;
INSERT INTO `home_homes2` VALUES (1,'INNOVATIVE','PRODUCTS','Driven to remain on the forefront of emerging technologies','s2/Innovative_H6JCgPv.jpg'),(2,'DISTINCTIVE','SERVICE','Implementation of the highest service standard','s2/Distinctive_VsvMSTz.jpg'),(3,'EXTENDING','THE QUALITY OF LIFE','and Saving Lives!','s2/Extending_lEfty5E.jpg');
/*!40000 ALTER TABLE `home_homes2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_homes3`
--

DROP TABLE IF EXISTS `home_homes3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_homes3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(120) NOT NULL,
  `Image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_homes3`
--

LOCK TABLES `home_homes3` WRITE;
/*!40000 ALTER TABLE `home_homes3` DISABLE KEYS */;
INSERT INTO `home_homes3` VALUES (1,'Body Cooling and Heating','s3/OperatingSuite_XNhtjwt_CMcmsVz.jpg'),(2,'Low Vision Assistive Technology','s3/OperatingSuite_XNhtjwt_nYg31nY.jpg'),(3,'Medical Equipment','s3/OperatingSuite_XNhtjwt_UttsT78.jpg'),(4,'Rapid Diagnostic Tests','s3/OperatingSuite_XNhtjwt_slRh9De.jpg');
/*!40000 ALTER TABLE `home_homes3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_homeslide3`
--

DROP TABLE IF EXISTS `home_homeslide3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_homeslide3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(120) NOT NULL,
  `Image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_homeslide3`
--

LOCK TABLES `home_homeslide3` WRITE;
/*!40000 ALTER TABLE `home_homeslide3` DISABLE KEYS */;
INSERT INTO `home_homeslide3` VALUES (1,'Body Cooling and Heating','slider3/Body_Cooling_and_Heating_4Az52Xw.png'),(2,'Low Vision Assistive Technology','slider3/Low_Vision_Assistive_Technology.png'),(3,'Medical Equipment','slider3/Medical_Equipment.png'),(4,'Rapid Diagnostic Tests','slider3/Rapid_Diagnostic_Tests.png'),(5,'Smart Glasses','slider3/Smart_Glasses.png'),(6,'Sterile Processing Supplies','slider3/Sterile_Processing_Supplies.png'),(7,'Surgical Instruments','slider3/Surgical_Instruments.png'),(8,'Surgical Sutures','slider3/Surgical_Sutures_At2v96b.png');
/*!40000 ALTER TABLE `home_homeslide3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_homeslider`
--

DROP TABLE IF EXISTS `home_homeslider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_homeslider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(120) NOT NULL,
  `Image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_homeslider`
--

LOCK TABLES `home_homeslider` WRITE;
/*!40000 ALTER TABLE `home_homeslider` DISABLE KEYS */;
INSERT INTO `home_homeslider` VALUES (14,'Laboratory','slider/Bio_Diagnostics_CbbeRUO_ieUnpRW_V7STu9v.png'),(15,'Central Sterile Supply','slider/Central_Sterile_Supply_dYZP9wi.png'),(16,'Medical Devices','slider/Medical_Devices_XP9k1h3.png'),(17,'Operating Suite','slider/OperatingSuite_ILfGzHM.jpg'),(18,'Logistics and Storage','slider/Smart_Technology_vxAdhyV.png'),(19,'Sports Therapy and Performance','slider/Sports_Therapy_and_Performance_BwfRPc5_GB0GccU_SRLTdzu_AlUtWyy.png'),(20,'Ophthalmology','slider/Visual_Aids_sYQu1Bl.png');
/*!40000 ALTER TABLE `home_homeslider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_homeslider2`
--

DROP TABLE IF EXISTS `home_homeslider2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_homeslider2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(120) NOT NULL,
  `Name2` varchar(120) NOT NULL,
  `Text` varchar(300) NOT NULL,
  `Image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_homeslider2`
--

LOCK TABLES `home_homeslider2` WRITE;
/*!40000 ALTER TABLE `home_homeslider2` DISABLE KEYS */;
INSERT INTO `home_homeslider2` VALUES (1,'INNOVATIVE','PRODUCTS','Driven to remain on the forefront of emerging technologies','slider2/Innovative_bZKWdZS_3j475Dz.jpg'),(2,'DISTINCTIVE','SERVICE','Implementation of the highest service standard','slider2/Distinctive_hIK7fhk_ycPHvXR_m36YpqG.jpg'),(3,'EXTENDING','THE QUALITY OF LIFE','and Saving Lives!','slider2/Extending_cCs1z94_lOLWJp7.jpg');
/*!40000 ALTER TABLE `home_homeslider2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_joinus`
--

DROP TABLE IF EXISTS `home_joinus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_joinus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(120) NOT NULL,
  `COMPANY` varchar(120) NOT NULL,
  `TELEPHONE` varchar(120) NOT NULL,
  `EMAIL` varchar(120) NOT NULL,
  `MESSAGE` varchar(300) NOT NULL,
  `IMAGE` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_joinus`
--

LOCK TABLES `home_joinus` WRITE;
/*!40000 ALTER TABLE `home_joinus` DISABLE KEYS */;
INSERT INTO `home_joinus` VALUES (1,'test','test2','1234567890','test1@gmail.com','this is test message',''),(2,'ss','dasf','549498','d@gmail.com','qadff',''),(3,'sxa','as','85335385','ss@gmail.com','aD',''),(4,'ds','dasf','85335385','d@gmail.com','wqr',''),(5,'ss','dasf','549498','d@gmail.com','sssssssssss','');
/*!40000 ALTER TABLE `home_joinus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_joinusslider`
--

DROP TABLE IF EXISTS `home_joinusslider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_joinusslider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(120) NOT NULL,
  `Image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_joinusslider`
--

LOCK TABLES `home_joinusslider` WRITE;
/*!40000 ALTER TABLE `home_joinusslider` DISABLE KEYS */;
INSERT INTO `home_joinusslider` VALUES (1,'Become a Viodyne Sterile Processing Supplies Distributor','s1/Become_a_CSSD_Distributor.png'),(2,'Join Our Team','s1/Join_Our_Team.jpg');
/*!40000 ALTER TABLE `home_joinusslider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_productslider`
--

DROP TABLE IF EXISTS `home_productslider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_productslider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(120) NOT NULL,
  `Image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_productslider`
--

LOCK TABLES `home_productslider` WRITE;
/*!40000 ALTER TABLE `home_productslider` DISABLE KEYS */;
INSERT INTO `home_productslider` VALUES (1,'Body Cooling and Heating','s1/Body_Cooling_and_Heating_eIckCzP.png'),(2,'Low Vision Assistive Technology','s1/Low_Vision_Assistive_Technology.png'),(3,'Medical Equipment','s1/Medical_Devices_NwOkjxk.png'),(4,'Rapid Diagnostic Tests','s1/OperatingSuite_WYoZ85f.jpg'),(5,'Smart Glasses','s1/OperatingSuite_ul2HABW.jpg'),(6,'Sterile Processing Supplies','s1/OperatingSuite_L8uJAEX.jpg'),(7,'Surgical Instruments','s1/OperatingSuite_iLJFs4q.jpg'),(8,'Surgical Sutures','s1/OperatingSuite_X4Dcjp5.jpg');
/*!40000 ALTER TABLE `home_productslider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_productslider1`
--

DROP TABLE IF EXISTS `home_productslider1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_productslider1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(120) NOT NULL,
  `Image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_productslider1`
--

LOCK TABLES `home_productslider1` WRITE;
/*!40000 ALTER TABLE `home_productslider1` DISABLE KEYS */;
INSERT INTO `home_productslider1` VALUES (1,'Body Cooling and Heating','s1/Body_Cooling_and_Heating_BnPQ1L9.png'),(2,'Low Vision Assistive Technology','s1/Low_Vision_Assistive_Technology_nfyPTDC.png'),(3,'Medical Equipment','s1/Medical_Equipment.png'),(4,'Rapid Diagnostic Tests','s1/Rapid_Diagnostic_Tests.png'),(5,'Smart Glasses','s1/Smart_Glasses.png'),(6,'Sterile Processing Supplies','s1/Sterile_Processing_Supplies.png'),(8,'Surgical Instruments','s1/Surgical_Instruments.png'),(9,'Surgical Sutures','s1/Surgical_Sutures.png');
/*!40000 ALTER TABLE `home_productslider1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_specialtiesslider`
--

DROP TABLE IF EXISTS `home_specialtiesslider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_specialtiesslider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(120) NOT NULL,
  `Image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_specialtiesslider`
--

LOCK TABLES `home_specialtiesslider` WRITE;
/*!40000 ALTER TABLE `home_specialtiesslider` DISABLE KEYS */;
INSERT INTO `home_specialtiesslider` VALUES (1,'Central Sterile Supply','s1/Central_Sterile_Supply_z5PiP3K.png'),(2,'Logistics and Storage','s1/Logistics_and_Storage.png'),(3,'Operating Suite','s1/Operating_Suite.png'),(4,'Ophthalmology','s1/Ophthalmology.png'),(5,'Sports Therapy and Performance','s1/Sports_Therapy_and_Performance.png'),(6,'Laboratory','s1/Laboratory.png'),(7,'Medical Devices','s1/Medical_Devices_nirHu1D.png');
/*!40000 ALTER TABLE `home_specialtiesslider` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-24 15:34:49
