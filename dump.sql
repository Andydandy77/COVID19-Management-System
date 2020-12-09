CREATE DATABASE  IF NOT EXISTS `mm_cpsc502102team04` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mm_cpsc502102team04`;
-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: cs100.seattleu.edu    Database: mm_cpsc502102team04
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `Businesses`
--

DROP TABLE IF EXISTS `Businesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Businesses` (
  `business_id` int NOT NULL AUTO_INCREMENT,
  `total_cases` int DEFAULT NULL,
  `state_dep_health_state_id` int NOT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip_code` varchar(45) DEFAULT NULL,
  `business_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`business_id`),
  KEY `fk_Businesses_State_Dep_Health1_idx` (`state_dep_health_state_id`),
  CONSTRAINT `fk_Businesses_State_Dep_Health1` FOREIGN KEY (`state_dep_health_state_id`) REFERENCES `State_Dep_Health` (`state_dep_health_state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Businesses`
--

LOCK TABLES `Businesses` WRITE;
/*!40000 ALTER TABLE `Businesses` DISABLE KEYS */;
INSERT INTO `Businesses` VALUES (1,84,6,'6245 Stone Corner Center','Portland','Oregon','53706','Price Group'),(2,52,5,'32990 Algoma Crossing','Knoxville','Tennessee','74871','Ullrich, Walsh and Metz'),(3,28,1,'55570 Summerview Lane','New Orleans','Louisiana','72042','Rippin-Schroeder'),(4,87,8,'20861 Gerald Crossing','Atlanta','Georgia','96812','Bogan, Satterfield and Hodkiewicz'),(5,26,4,'02 Comanche Way','Anchorage','Alaska','59349','Hegmann-Glover'),(6,63,9,'47 Gerald Alley','Reno','Nevada','31753','Graham LLC'),(7,46,9,'378 Stone Corner Trail','Paterson','New Jersey','38290','Huels-Reilly'),(8,45,3,'0344 Golden Leaf Lane','Wichita','Kansas','22063','Zboncak-Greenfelder'),(9,15,9,'574 Vermont Pass','Macon','Georgia','82458','Russel Inc'),(10,84,1,'61481 Browning Avenue','Richmond','Virginia','90328','Kuhn and Sons'),(11,19,7,'914 Cherokee Court','Mobile','Alabama','35447','Harvey and Sons'),(12,67,3,'425 Jay Court','Washington','District of Columbia','89899','Hegmann, Fahey and Gorczany'),(13,67,8,'7 Golden Leaf Park','Torrance','California','66370','Lehner, Gutkowski and Hackett'),(14,72,8,'3 Miller Circle','Pittsburgh','Pennsylvania','80591','Reichel-Crona'),(15,34,1,'9 Warner Junction','Edmond','Oklahoma','60409','Lockman, Sipes and Rutherford'),(16,62,5,'601 Cody Parkway','New Orleans','Louisiana','05610','Padberg-Kutch'),(17,65,4,'200 Nancy Drive','Jacksonville','Florida','60146','Heathcote-Padberg'),(18,81,7,'62 Carberry Street','Washington','District of Columbia','14524','O\'Reilly, Pouros and Marquardt'),(19,57,5,'2916 David Plaza','San Angelo','Texas','53246','Haley Inc'),(20,9,9,'332 Crowley Court','Brooklyn','New York','43642','Carroll-Jakubowski'),(21,14,8,'7 Kings Alley','Long Beach','California','28789','Gulgowski-Collins'),(22,61,3,'9 Moulton Crossing','Newport Beach','California','27106','Jacobs-Collier'),(23,83,9,'40 Acker Parkway','Scranton','Pennsylvania','97060','Bernier-Morissette'),(24,38,2,'2 Chinook Plaza','Newark','New Jersey','47693','Farrell-Murray'),(25,85,6,'06 Towne Park','Austin','Texas','13196','Mueller-Cremin'),(26,45,3,'9 Namekagon Crossing','San Bernardino','California','13588','Abbott LLC'),(27,91,4,'07333 Spenser Pass','Boulder','Colorado','75433','Murray, Reichert and Weber'),(28,39,9,'37 Goodland Hill','Hayward','California','87612','Prohaska and Sons'),(29,32,4,'74 Ramsey Court','Los Angeles','California','03789','Ernser, Crist and Hauck'),(30,40,2,'31684 Amoth Road','Detroit','Michigan','75021','Lindgren, Homenick and Greenfelder'),(31,50,8,'52260 Carberry Crossing','Seattle','Washington','32748','Hamill Inc'),(32,49,10,'616 Fisk Hill','Norfolk','Virginia','67522','Herzog Group'),(33,14,5,'6 Marcy Parkway','Salt Lake City','Utah','55314','Schmitt Inc'),(34,42,5,'46904 Valley Edge Park','Odessa','Texas','08192','Donnelly Inc'),(35,18,5,'84 Fordem Trail','Dayton','Ohio','29317','Herman Group'),(36,58,10,'6 Northport Drive','Richmond','Virginia','06875','Dibbert Inc'),(37,74,4,'422 Pearson Court','New York City','New York','91055','King and Sons'),(38,77,5,'18 Pepper Wood Alley','Appleton','Wisconsin','65051','Kertzmann, Pfannerstill and Marks'),(39,72,7,'3 West Circle','Madison','Wisconsin','68308','Treutel LLC'),(40,19,6,'2 International Park','Houston','Texas','25395','Kub LLC'),(41,48,7,'94837 Anzinger Place','San Antonio','Texas','82105','Kunde, Runolfsdottir and Jones'),(42,15,2,'4389 Merrick Alley','Greensboro','North Carolina','50231','Bergstrom Group'),(43,31,7,'63 Anhalt Plaza','Saginaw','Michigan','13324','Cartwright Inc'),(44,39,6,'756 Muir Parkway','Memphis','Tennessee','81063','Gibson-Lemke'),(45,13,4,'8945 Bluestem Plaza','Huntington','West Virginia','87886','Gutkowski, Jenkins and Maggio'),(46,10,2,'2034 Utah Place','Indianapolis','Indiana','94363','Fay, Oberbrunner and Hudson'),(47,77,2,'5 Doe Crossing Crossing','Birmingham','Alabama','43870','Kautzer Inc'),(48,19,2,'992 Dorton Lane','Pittsburgh','Pennsylvania','13731','O\'Hara and Sons'),(49,34,6,'82 Darwin Terrace','Minneapolis','Minnesota','04108','Deckow Group'),(50,42,9,'96182 Northport Park','Charleston','West Virginia','52083','Jenkins LLC');
/*!40000 ALTER TABLE `Businesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cases`
--

DROP TABLE IF EXISTS `Cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cases` (
  `case_id` int NOT NULL AUTO_INCREMENT,
  `hospital_id` int DEFAULT NULL,
  `treatment_method_id` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `date_diagnosed` date DEFAULT NULL,
  `state_dep_health_state_id` int NOT NULL,
  `people_id` int NOT NULL,
  PRIMARY KEY (`case_id`,`people_id`),
  KEY `hosptial_id_idx` (`hospital_id`) /*!80000 INVISIBLE */,
  KEY `fk_case_State_Dep_Health1_idx` (`state_dep_health_state_id`),
  KEY `treatment_method_id_idx` (`treatment_method_id`),
  KEY `fk_Cases_People1_idx` (`people_id`),
  CONSTRAINT `fk_case_State_Dep_Health1` FOREIGN KEY (`state_dep_health_state_id`) REFERENCES `State_Dep_Health` (`state_dep_health_state_id`),
  CONSTRAINT `fk_Cases_People1` FOREIGN KEY (`people_id`) REFERENCES `People` (`people_id`),
  CONSTRAINT `hosptial_id` FOREIGN KEY (`hospital_id`) REFERENCES `Hospitals` (`hospital_id`),
  CONSTRAINT `treatment_method_id` FOREIGN KEY (`treatment_method_id`) REFERENCES `Treatments` (`treatment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cases`
--

LOCK TABLES `Cases` WRITE;
/*!40000 ALTER TABLE `Cases` DISABLE KEYS */;
INSERT INTO `Cases` VALUES (1,46,98,'deceased','2020-04-29',3,4),(2,28,5,'deceased','2020-05-29',7,8),(3,1,53,'recovered','2020-07-22',2,12),(4,38,68,'recovered','2020-07-04',1,16),(5,5,149,'recovered','2020-06-27',9,20),(6,7,5,'active','2020-08-14',2,24),(7,46,22,'recovered','2020-05-07',4,28),(8,13,139,'active','2020-08-15',6,32),(9,9,156,'deceased','2020-09-29',4,36),(10,42,79,'deceased','2020-03-28',9,40),(11,10,40,'recovered','2020-05-31',4,44),(12,32,11,'active','2020-03-28',1,48),(13,45,37,'recovered','2020-09-10',2,52),(14,22,28,'active','2020-09-13',1,56),(15,3,100,'recovered','2020-04-25',5,60),(16,19,48,'active','2020-05-30',6,64),(17,8,103,'recovered','2020-04-10',10,68),(18,42,12,'deceased','2020-04-01',9,72),(19,12,69,'recovered','2020-03-18',8,76),(20,47,45,'active','2020-07-07',6,80),(21,20,53,'recovered','2020-05-18',4,84),(22,23,15,'recovered','2020-04-14',5,88),(23,31,118,'recovered','2020-08-22',2,92),(24,24,95,'active','2020-03-23',10,96),(25,35,158,'recovered','2020-04-05',4,100),(26,30,56,'active','2020-09-21',8,104),(27,42,46,'deceased','2020-06-20',3,108),(28,17,113,'active','2020-06-30',9,112),(29,44,174,'recovered','2020-10-21',10,116),(30,29,168,'active','2020-10-12',9,120),(31,7,167,'recovered','2020-04-11',3,124),(32,1,129,'active','2020-03-31',7,128),(33,45,162,'recovered','2020-06-06',9,132),(34,47,143,'active','2020-10-05',4,136),(35,45,56,'recovered','2020-09-16',7,140),(36,5,81,'deceased','2020-09-15',2,144),(37,7,51,'recovered','2020-04-12',5,148),(38,12,76,'active','2020-08-18',9,152),(39,34,174,'recovered','2020-08-20',5,156),(40,40,138,'active','2020-04-19',7,160),(41,20,171,'recovered','2020-03-30',10,164),(42,45,138,'active','2020-08-08',5,168),(43,11,104,'recovered','2020-04-30',6,172),(44,5,31,'active','2020-03-15',1,176),(45,48,79,'deceased','2020-03-23',2,180),(46,37,69,'active','2020-07-11',1,184),(47,36,61,'recovered','2020-06-14',4,188),(48,47,40,'active','2020-10-09',4,192),(49,24,12,'recovered','2020-08-18',9,196),(50,37,194,'active','2020-07-12',6,200);
/*!40000 ALTER TABLE `Cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Checkins`
--

DROP TABLE IF EXISTS `Checkins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Checkins` (
  `checkins_id` int NOT NULL AUTO_INCREMENT,
  `people_id` int NOT NULL,
  `business_id` int NOT NULL,
  `checkin_date` datetime DEFAULT NULL,
  PRIMARY KEY (`checkins_id`,`business_id`,`people_id`),
  KEY `fk_People_has_Businesses_Businesses1_idx` (`business_id`),
  KEY `fk_People_has_Businesses_People1_idx` (`people_id`),
  CONSTRAINT `fk_People_has_Businesses_Businesses1` FOREIGN KEY (`business_id`) REFERENCES `Businesses` (`business_id`),
  CONSTRAINT `fk_People_has_Businesses_People1` FOREIGN KEY (`people_id`) REFERENCES `People` (`people_id`)
) ENGINE=InnoDB AUTO_INCREMENT=612 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Checkins`
--

LOCK TABLES `Checkins` WRITE;
/*!40000 ALTER TABLE `Checkins` DISABLE KEYS */;
INSERT INTO `Checkins` VALUES (1,107,6,'2020-09-30 13:55:35'),(2,137,40,'2020-04-21 22:17:01'),(3,71,19,'2020-05-25 08:47:59'),(4,4,23,'2020-05-25 06:22:35'),(5,62,29,'2020-09-03 20:59:51'),(6,100,15,'2020-04-01 23:37:41'),(7,84,30,'2020-03-28 13:08:28'),(8,139,48,'2020-07-30 17:39:16'),(9,10,35,'2020-06-17 18:34:23'),(10,70,29,'2020-07-01 03:31:26'),(11,54,26,'2020-07-22 12:05:40'),(12,43,25,'2020-04-13 13:37:50'),(13,93,44,'2020-09-23 21:31:36'),(14,90,29,'2020-06-09 06:51:29'),(15,132,47,'2020-03-22 06:40:47'),(16,32,6,'2020-09-13 08:23:31'),(17,186,6,'2020-05-16 20:31:23'),(18,131,20,'2020-05-08 03:57:18'),(19,180,38,'2020-04-01 07:47:48'),(20,10,28,'2020-06-05 22:44:01'),(21,125,17,'2020-04-11 17:03:04'),(22,31,46,'2020-03-25 17:37:07'),(23,92,23,'2020-06-18 03:15:03'),(24,185,1,'2020-09-26 03:43:58'),(25,177,18,'2020-06-15 10:05:13'),(26,62,2,'2020-05-12 18:40:37'),(27,156,3,'2020-06-07 00:40:51'),(28,185,17,'2020-09-22 18:57:48'),(29,79,47,'2020-03-26 23:09:20'),(30,122,8,'2020-07-01 10:47:16'),(31,195,29,'2020-07-14 22:18:27'),(32,45,26,'2020-06-14 13:30:13'),(33,30,22,'2020-04-21 05:49:45'),(34,150,28,'2020-09-27 20:55:19'),(35,174,42,'2020-08-16 17:53:36'),(36,18,21,'2020-10-15 10:50:46'),(37,54,27,'2020-08-22 00:33:02'),(38,199,13,'2020-08-21 08:23:03'),(39,52,41,'2020-09-11 21:45:53'),(40,117,13,'2020-03-19 18:37:47'),(41,19,50,'2020-08-22 14:49:13'),(42,52,1,'2020-08-05 19:15:19'),(43,1,21,'2020-05-03 23:36:56'),(44,105,14,'2020-05-15 20:15:26'),(45,97,15,'2020-08-09 17:49:01'),(46,146,24,'2020-07-10 03:06:33'),(47,67,45,'2020-07-17 16:03:05'),(48,195,35,'2020-06-17 09:45:46'),(49,193,5,'2020-10-10 15:07:46'),(50,7,12,'2020-08-26 23:08:34'),(51,143,7,'2020-09-13 12:36:40'),(52,19,16,'2020-03-26 22:08:12'),(53,143,46,'2020-04-19 23:35:22'),(54,187,7,'2020-04-17 17:40:32'),(55,189,17,'2020-09-09 21:22:11'),(56,193,34,'2020-05-08 07:33:55'),(57,72,29,'2020-07-08 07:03:10'),(58,101,45,'2020-04-21 16:43:39'),(59,134,28,'2020-05-15 09:19:48'),(60,176,1,'2020-09-04 04:23:57'),(61,165,49,'2020-03-16 21:43:43'),(62,59,45,'2020-07-19 09:54:25'),(63,152,32,'2020-09-16 02:06:44'),(64,90,22,'2020-07-11 01:37:19'),(65,15,4,'2020-10-02 07:35:47'),(66,156,34,'2020-04-24 18:49:10'),(67,118,39,'2020-10-19 12:31:56'),(68,27,6,'2020-07-27 16:32:42'),(69,179,32,'2020-06-08 19:53:20'),(70,12,16,'2020-07-05 06:22:10'),(71,182,21,'2020-10-01 18:55:02'),(72,28,8,'2020-05-24 21:05:06'),(73,18,39,'2020-05-24 07:16:22'),(74,173,30,'2020-07-24 11:53:31'),(75,134,28,'2020-03-28 00:51:29'),(76,45,41,'2020-07-20 01:32:53'),(77,118,47,'2020-05-18 10:59:52'),(78,68,24,'2020-07-28 08:56:04'),(79,192,28,'2020-06-17 10:40:35'),(80,72,36,'2020-09-19 21:08:08'),(81,35,36,'2020-10-03 07:35:52'),(82,4,23,'2020-08-30 07:14:53'),(83,117,40,'2020-07-08 23:37:32'),(84,93,8,'2020-03-29 23:44:08'),(85,134,48,'2020-06-01 03:21:26'),(86,84,12,'2020-09-25 19:05:22'),(87,63,37,'2020-05-19 12:38:58'),(88,42,27,'2020-04-11 14:54:08'),(89,68,41,'2020-09-08 15:05:44'),(90,46,24,'2020-08-03 21:54:55'),(91,80,10,'2020-07-13 11:13:55'),(92,127,34,'2020-05-16 01:46:13'),(93,120,17,'2020-06-11 07:23:08'),(94,86,50,'2020-07-10 05:09:16'),(95,151,26,'2020-06-25 03:12:28'),(96,32,47,'2020-07-09 04:55:06'),(97,38,40,'2020-05-10 22:38:43'),(98,20,9,'2020-07-16 17:26:37'),(99,179,20,'2020-04-08 18:24:11'),(100,36,21,'2020-04-15 08:02:58'),(101,56,37,'2020-08-13 16:35:21'),(102,34,2,'2020-06-18 17:45:35'),(103,128,12,'2020-10-19 07:00:08'),(104,113,45,'2020-04-05 08:19:34'),(105,119,24,'2020-05-27 19:47:12'),(106,88,38,'2020-03-22 21:25:32'),(107,15,6,'2020-04-19 23:46:41'),(108,94,35,'2020-05-01 20:08:12'),(109,15,23,'2020-08-16 23:31:12'),(110,38,26,'2020-06-04 08:18:47'),(111,185,36,'2020-10-07 04:00:47'),(112,112,32,'2020-06-09 19:26:22'),(113,141,20,'2020-07-20 19:40:02'),(114,38,24,'2020-08-22 16:35:46'),(115,195,4,'2020-10-12 04:21:36'),(116,148,45,'2020-05-16 14:46:46'),(117,147,50,'2020-07-14 05:31:15'),(118,53,17,'2020-08-24 16:23:05'),(119,148,44,'2020-08-30 03:14:33'),(120,182,31,'2020-06-01 18:45:43'),(121,190,45,'2020-03-31 08:37:29'),(122,91,48,'2020-04-25 12:08:24'),(123,28,44,'2020-10-01 13:47:44'),(124,36,29,'2020-06-30 20:05:08'),(125,198,17,'2020-04-09 12:38:00'),(126,51,11,'2020-05-11 06:35:16'),(127,95,38,'2020-07-31 20:26:05'),(128,188,9,'2020-04-04 06:07:40'),(129,13,33,'2020-08-04 12:11:13'),(130,140,37,'2020-07-18 13:19:32'),(131,105,1,'2020-06-22 04:45:45'),(132,112,20,'2020-10-14 12:57:28'),(133,184,17,'2020-06-03 05:37:50'),(134,17,22,'2020-06-15 12:59:10'),(135,132,46,'2020-04-03 22:38:38'),(136,167,6,'2020-10-05 18:33:31'),(137,64,42,'2020-07-02 06:09:40'),(138,133,30,'2020-08-04 04:32:17'),(139,35,33,'2020-04-17 02:08:45'),(140,81,4,'2020-07-06 19:10:15'),(141,12,5,'2020-10-04 01:38:17'),(142,117,8,'2020-09-29 01:41:21'),(143,153,17,'2020-04-03 07:08:10'),(144,165,4,'2020-07-14 13:59:09'),(145,47,18,'2020-08-16 10:21:20'),(146,19,18,'2020-07-28 23:19:40'),(147,32,29,'2020-09-24 06:25:16'),(148,75,49,'2020-07-07 04:47:05'),(149,186,18,'2020-04-20 05:32:20'),(150,187,48,'2020-06-21 04:40:37'),(151,23,43,'2020-04-04 07:11:34'),(152,45,30,'2020-06-29 07:24:46'),(153,124,11,'2020-04-15 01:12:50'),(154,155,37,'2020-07-11 21:50:42'),(155,162,11,'2020-06-12 01:27:20'),(156,155,45,'2020-06-03 10:36:49'),(157,60,28,'2020-04-20 18:41:15'),(158,1,45,'2020-05-25 11:56:16'),(159,47,41,'2020-07-25 08:11:09'),(160,154,27,'2020-09-16 09:37:55'),(161,92,19,'2020-07-20 23:33:47'),(162,72,29,'2020-06-22 17:19:02'),(163,182,27,'2020-04-17 09:27:57'),(164,113,30,'2020-06-28 23:25:42'),(165,94,17,'2020-06-06 17:16:54'),(166,68,11,'2020-06-02 05:18:46'),(167,16,31,'2020-06-25 19:40:41'),(168,135,36,'2020-07-14 22:44:26'),(169,84,37,'2020-09-30 15:06:23'),(170,189,10,'2020-07-05 14:26:26'),(171,142,27,'2020-06-23 07:48:19'),(172,62,36,'2020-06-04 23:22:06'),(173,53,46,'2020-05-08 12:28:11'),(174,173,32,'2020-06-15 08:42:46'),(175,141,8,'2020-03-28 13:13:20'),(176,75,27,'2020-07-21 01:30:50'),(177,169,40,'2020-06-27 00:27:20'),(178,76,8,'2020-05-21 10:18:01'),(179,194,45,'2020-05-22 23:09:31'),(180,28,21,'2020-05-03 04:33:42'),(181,161,17,'2020-09-05 06:18:02'),(182,164,22,'2020-10-10 06:15:34'),(183,179,46,'2020-07-02 01:18:47'),(184,149,27,'2020-06-29 15:42:37'),(185,173,17,'2020-09-03 03:37:00'),(186,31,16,'2020-05-09 20:09:55'),(187,75,39,'2020-06-27 09:44:49'),(188,62,15,'2020-10-21 07:03:51'),(189,52,9,'2020-10-09 06:14:30'),(190,187,42,'2020-04-23 04:21:17'),(191,170,17,'2020-06-29 07:15:23'),(192,85,4,'2020-06-15 12:35:26'),(193,136,28,'2020-09-11 05:29:57'),(194,167,21,'2020-06-26 03:30:28'),(195,2,35,'2020-06-21 05:34:22'),(196,32,2,'2020-08-12 03:22:46'),(197,51,24,'2020-04-24 19:24:41'),(198,48,44,'2020-10-07 02:26:32'),(199,132,30,'2020-03-27 20:48:07'),(200,165,45,'2020-09-14 07:37:50'),(201,86,12,'2020-07-08 01:29:55'),(202,74,32,'2020-06-08 02:54:03'),(203,99,9,'2020-05-27 22:30:36'),(204,80,3,'2020-08-08 08:02:08'),(205,187,44,'2020-07-19 04:14:09'),(206,95,30,'2020-08-06 10:01:29'),(207,151,26,'2020-06-17 16:11:28'),(208,127,8,'2020-06-03 21:50:34'),(209,55,12,'2020-04-08 05:42:03'),(210,16,28,'2020-08-24 08:36:59'),(211,66,7,'2020-05-29 02:03:08'),(212,169,24,'2020-09-09 04:24:28'),(213,46,6,'2020-05-19 11:12:32'),(214,189,1,'2020-03-25 11:14:28'),(215,99,11,'2020-05-30 08:20:54'),(216,38,43,'2020-03-27 13:32:01'),(217,181,29,'2020-06-16 23:07:44'),(218,74,32,'2020-09-04 14:51:59'),(219,117,41,'2020-09-25 16:42:55'),(220,16,24,'2020-06-25 19:38:33'),(221,170,29,'2020-04-17 03:31:45'),(222,149,41,'2020-07-09 07:24:42'),(223,165,28,'2020-04-12 15:45:06'),(224,32,47,'2020-08-22 11:28:31'),(225,106,34,'2020-07-29 02:55:56'),(226,145,17,'2020-09-09 15:43:54'),(227,85,29,'2020-04-29 15:55:44'),(228,195,18,'2020-03-22 01:18:58'),(229,133,35,'2020-05-01 15:57:17'),(230,149,47,'2020-09-25 16:14:56'),(231,106,31,'2020-05-05 14:20:39'),(232,168,4,'2020-04-30 17:54:30'),(233,133,21,'2020-07-03 01:30:45'),(234,43,24,'2020-09-07 21:48:52'),(235,192,29,'2020-06-21 15:04:26'),(236,67,43,'2020-07-27 03:32:45'),(237,77,12,'2020-05-04 00:42:45'),(238,89,37,'2020-09-22 22:04:22'),(239,148,29,'2020-06-20 17:13:04'),(240,172,26,'2020-07-13 20:07:25'),(241,71,18,'2020-07-22 04:45:43'),(242,46,43,'2020-06-25 15:11:33'),(243,118,18,'2020-06-07 19:41:10'),(244,65,10,'2020-07-20 01:21:02'),(245,99,36,'2020-05-06 17:57:10'),(246,63,8,'2020-09-23 15:22:52'),(247,162,47,'2020-09-19 13:40:23'),(248,145,50,'2020-10-09 18:29:40'),(249,46,7,'2020-07-19 22:13:50'),(250,91,13,'2020-07-26 13:58:41'),(251,109,34,'2020-10-21 10:58:32'),(252,72,42,'2020-06-15 15:42:35'),(253,105,4,'2020-09-19 10:22:30'),(254,91,13,'2020-10-11 21:24:18'),(255,16,11,'2020-05-08 11:53:35'),(256,70,19,'2020-09-06 05:13:11'),(257,44,34,'2020-08-19 20:08:48'),(258,112,16,'2020-07-03 22:53:40'),(259,134,3,'2020-08-17 17:50:32'),(260,147,34,'2020-04-02 03:50:44'),(261,50,13,'2020-09-19 13:26:14'),(262,117,50,'2020-04-09 00:03:56'),(263,36,2,'2020-07-15 23:48:03'),(264,85,10,'2020-04-21 04:48:44'),(265,81,22,'2020-05-22 17:27:11'),(266,152,27,'2020-06-04 21:03:17'),(267,78,42,'2020-07-30 12:09:57'),(268,58,14,'2020-09-06 09:25:51'),(269,43,47,'2020-06-27 13:36:21'),(270,63,43,'2020-08-29 01:20:06'),(271,172,45,'2020-04-10 12:58:31'),(272,18,21,'2020-10-03 01:27:58'),(273,51,11,'2020-10-09 02:55:32'),(274,35,20,'2020-07-30 14:40:38'),(275,94,37,'2020-05-27 02:32:00'),(276,123,9,'2020-06-21 15:17:47'),(277,144,24,'2020-06-19 15:46:34'),(278,14,28,'2020-04-24 18:23:24'),(279,161,36,'2020-08-15 04:15:25'),(280,163,19,'2020-08-27 08:23:12'),(281,103,13,'2020-10-15 00:46:12'),(282,162,44,'2020-06-05 09:15:28'),(283,146,11,'2020-07-20 04:06:19'),(284,79,27,'2020-08-08 14:22:07'),(285,9,21,'2020-07-06 02:02:37'),(286,8,30,'2020-08-15 04:47:54'),(287,199,22,'2020-09-07 00:02:32'),(288,80,38,'2020-05-10 04:36:45'),(289,102,44,'2020-08-22 23:51:14'),(290,39,34,'2020-07-23 08:31:23'),(291,51,13,'2020-05-04 11:40:32'),(292,139,5,'2020-09-02 19:48:22'),(293,154,24,'2020-09-13 07:20:27'),(294,155,14,'2020-04-09 00:35:34'),(295,18,32,'2020-08-24 21:50:14'),(296,60,19,'2020-05-17 21:47:00'),(297,126,44,'2020-07-06 15:13:43'),(298,168,47,'2020-09-30 14:04:42'),(299,165,36,'2020-04-04 02:30:48'),(300,125,46,'2020-05-07 18:08:21'),(301,150,32,'2020-07-06 02:10:12'),(302,97,16,'2020-04-28 13:32:59'),(303,187,40,'2020-05-29 13:15:48'),(304,26,18,'2020-10-15 14:45:13'),(305,112,49,'2020-05-29 13:43:31'),(306,96,46,'2020-04-17 16:17:24'),(307,114,30,'2020-10-12 11:40:08'),(308,23,19,'2020-08-18 03:14:57'),(309,45,45,'2020-10-21 21:22:04'),(310,67,24,'2020-10-08 07:41:50'),(311,123,50,'2020-04-30 10:46:16'),(312,132,3,'2020-08-19 10:34:34'),(313,86,28,'2020-08-05 18:58:19'),(314,22,8,'2020-06-03 00:23:29'),(315,161,24,'2020-05-01 03:57:02'),(316,22,14,'2020-06-18 01:12:22'),(317,156,7,'2020-07-04 23:34:38'),(318,183,26,'2020-08-01 15:28:37'),(319,162,22,'2020-07-09 23:57:18'),(320,135,23,'2020-04-10 18:12:07'),(321,142,14,'2020-10-16 13:35:43'),(322,5,13,'2020-09-07 07:26:46'),(323,111,30,'2020-06-22 04:56:59'),(324,85,26,'2020-05-30 13:01:56'),(325,9,25,'2020-05-28 20:19:10'),(326,87,43,'2020-04-11 08:27:04'),(327,199,46,'2020-04-27 23:58:04'),(328,186,26,'2020-08-08 03:45:35'),(329,34,47,'2020-07-17 14:44:16'),(330,144,19,'2020-06-09 18:27:35'),(331,149,44,'2020-05-09 22:03:37'),(332,168,18,'2020-04-10 15:37:44'),(333,24,35,'2020-10-13 12:38:56'),(334,104,35,'2020-06-24 07:43:40'),(335,149,38,'2020-09-11 14:42:52'),(336,200,6,'2020-10-05 10:03:24'),(337,44,3,'2020-09-28 00:32:20'),(338,49,47,'2020-09-13 12:14:24'),(339,13,1,'2020-06-07 19:17:18'),(340,23,20,'2020-03-22 08:14:41'),(341,6,1,'2020-09-16 08:47:41'),(342,55,50,'2020-09-21 21:38:10'),(343,40,44,'2020-09-05 08:43:21'),(344,67,15,'2020-05-23 21:54:30'),(345,107,25,'2020-05-04 21:08:53'),(346,16,39,'2020-04-25 14:00:24'),(347,51,41,'2020-08-14 05:10:46'),(348,23,34,'2020-06-18 07:38:36'),(349,70,35,'2020-05-22 19:47:39'),(350,71,4,'2020-08-20 04:51:26'),(351,113,36,'2020-06-23 10:28:20'),(352,116,43,'2020-05-04 22:35:44'),(353,117,15,'2020-08-09 18:36:45'),(354,140,12,'2020-09-24 00:24:49'),(355,98,20,'2020-08-29 02:47:32'),(356,83,14,'2020-07-22 13:16:40'),(357,138,36,'2020-05-06 14:40:14'),(358,136,32,'2020-08-14 19:36:50'),(359,161,44,'2020-03-25 12:26:20'),(360,64,1,'2020-05-02 10:14:28'),(361,116,22,'2020-04-23 02:36:05'),(362,85,18,'2020-03-20 12:01:54'),(363,166,27,'2020-05-15 05:23:31'),(364,45,24,'2020-08-23 22:00:25'),(365,62,44,'2020-03-24 07:58:59'),(366,150,7,'2020-06-18 02:13:04'),(367,23,13,'2020-04-28 20:18:08'),(368,108,10,'2020-04-30 00:14:59'),(369,176,5,'2020-06-13 22:42:24'),(370,197,37,'2020-08-07 08:09:17'),(371,86,50,'2020-04-13 14:53:30'),(372,13,4,'2020-05-30 04:35:26'),(373,95,1,'2020-09-23 14:12:10'),(374,26,27,'2020-05-14 07:41:15'),(375,41,25,'2020-04-28 23:45:06'),(376,16,8,'2020-07-06 23:03:50'),(377,130,38,'2020-08-09 23:08:47'),(378,136,37,'2020-04-16 21:39:03'),(379,137,41,'2020-08-13 10:01:50'),(380,19,9,'2020-09-11 19:42:36'),(381,110,3,'2020-07-05 08:14:05'),(382,110,7,'2020-09-16 15:59:15'),(383,189,19,'2020-06-02 16:09:26'),(384,136,5,'2020-10-04 15:54:42'),(385,154,32,'2020-04-02 11:01:32'),(386,186,33,'2020-05-20 17:10:55'),(387,4,38,'2020-08-27 13:06:05'),(388,18,8,'2020-04-04 04:50:21'),(389,27,13,'2020-05-12 22:46:04'),(390,152,38,'2020-04-05 23:31:45'),(391,129,2,'2020-06-16 23:58:46'),(392,111,39,'2020-07-14 08:57:23'),(393,176,33,'2020-04-26 21:56:13'),(394,142,47,'2020-09-19 11:17:02'),(395,114,42,'2020-07-03 21:14:06'),(396,96,10,'2020-10-17 08:36:17'),(397,10,37,'2020-06-17 01:27:48'),(398,79,50,'2020-07-07 00:56:26'),(399,128,36,'2020-09-20 23:46:58'),(400,102,22,'2020-05-29 04:10:15'),(401,85,40,'2020-08-12 15:51:41'),(402,142,24,'2020-07-11 18:04:24'),(403,129,34,'2020-10-08 20:49:38'),(404,30,22,'2020-04-16 06:31:41'),(405,154,18,'2020-10-03 23:22:20'),(406,185,10,'2020-04-03 07:02:05'),(407,131,21,'2020-08-02 22:12:49'),(408,199,24,'2020-05-12 19:00:47'),(409,189,29,'2020-10-02 01:08:34'),(410,88,20,'2020-10-15 09:52:01'),(411,93,44,'2020-08-13 14:21:24'),(412,86,50,'2020-03-22 00:09:33'),(413,62,32,'2020-06-04 17:52:46'),(414,63,13,'2020-04-18 15:28:14'),(415,138,35,'2020-04-27 00:32:16'),(416,182,31,'2020-09-18 04:01:41'),(417,159,8,'2020-04-03 07:31:15'),(418,151,46,'2020-03-31 16:24:10'),(419,151,7,'2020-09-21 05:53:03'),(420,44,49,'2020-10-01 08:15:16'),(421,138,22,'2020-04-02 08:31:22'),(422,150,9,'2020-09-29 16:16:49'),(423,71,41,'2020-08-10 17:48:36'),(424,4,33,'2020-07-16 16:22:53'),(425,78,21,'2020-03-19 12:47:04'),(426,109,45,'2020-09-13 12:57:16'),(427,127,49,'2020-09-14 03:24:23'),(428,72,36,'2020-07-11 00:23:28'),(429,70,40,'2020-07-19 21:43:37'),(430,76,29,'2020-10-20 01:03:26'),(431,200,4,'2020-05-18 21:35:34'),(432,145,4,'2020-05-02 09:26:07'),(433,20,24,'2020-09-14 05:44:38'),(434,38,43,'2020-07-11 20:14:24'),(435,90,11,'2020-08-04 06:39:58'),(436,140,46,'2020-05-02 13:36:26'),(437,178,7,'2020-04-13 15:49:17'),(438,182,3,'2020-08-06 11:40:49'),(439,48,29,'2020-07-13 05:16:09'),(440,113,41,'2020-10-04 19:59:21'),(441,50,48,'2020-06-09 15:01:30'),(442,170,25,'2020-10-11 07:36:06'),(443,21,44,'2020-06-20 05:01:14'),(444,197,34,'2020-10-02 02:34:24'),(445,194,13,'2020-10-19 09:31:49'),(446,147,32,'2020-09-08 20:28:36'),(447,54,46,'2020-05-17 17:51:59'),(448,115,40,'2020-10-01 20:54:38'),(449,50,47,'2020-09-11 03:01:08'),(450,153,9,'2020-06-30 18:37:19'),(451,155,44,'2020-03-20 21:14:21'),(452,198,14,'2020-10-08 00:07:54'),(453,156,24,'2020-08-31 21:59:03'),(454,123,21,'2020-09-10 19:43:03'),(455,147,18,'2020-10-15 02:54:41'),(456,63,15,'2020-07-02 14:23:08'),(457,21,2,'2020-08-03 06:18:58'),(458,63,15,'2020-07-15 16:03:56'),(459,68,40,'2020-07-02 01:54:35'),(460,56,6,'2020-09-13 04:09:27'),(461,80,7,'2020-10-06 09:44:10'),(462,51,39,'2020-09-04 10:24:28'),(463,187,8,'2020-06-02 09:45:54'),(464,114,19,'2020-08-31 15:25:24'),(465,7,31,'2020-05-14 11:23:56'),(466,64,9,'2020-04-29 20:19:44'),(467,136,38,'2020-08-16 09:59:43'),(468,49,34,'2020-08-29 13:15:36'),(469,11,3,'2020-06-27 14:26:54'),(470,72,31,'2020-03-18 15:46:16'),(471,12,12,'2020-09-19 15:36:29'),(472,147,16,'2020-09-26 22:30:06'),(473,180,31,'2020-08-29 03:49:58'),(474,22,24,'2020-10-01 02:35:01'),(475,179,25,'2020-06-04 15:14:28'),(476,189,36,'2020-04-01 03:53:30'),(477,50,44,'2020-04-09 13:18:31'),(478,19,13,'2020-10-05 20:28:27'),(479,46,27,'2020-07-18 03:36:25'),(480,185,27,'2020-07-17 11:19:00'),(481,186,27,'2020-07-29 08:25:03'),(482,101,34,'2020-10-01 01:12:55'),(483,185,28,'2020-09-23 19:01:22'),(484,22,47,'2020-07-30 09:43:11'),(485,63,15,'2020-06-06 21:37:42'),(486,50,25,'2020-08-20 04:49:35'),(487,47,2,'2020-05-20 20:49:35'),(488,73,15,'2020-10-08 00:21:43'),(489,40,25,'2020-08-30 06:01:17'),(490,155,35,'2020-05-18 22:55:32'),(491,43,43,'2020-07-29 00:34:31'),(492,137,6,'2020-04-23 04:43:25'),(493,151,32,'2020-03-22 10:42:42'),(494,81,7,'2020-10-16 09:09:40'),(495,46,33,'2020-07-12 13:29:46'),(496,119,13,'2020-09-11 09:02:46'),(497,67,28,'2020-09-03 07:16:19'),(498,122,50,'2020-06-06 07:37:40'),(499,6,27,'2020-09-28 18:01:23'),(500,155,22,'2020-07-06 16:02:19'),(600,150,6,'2020-10-05 00:00:00'),(602,16,4,'2020-05-13 00:00:00'),(602,6,6,'2020-03-21 00:00:00'),(603,1,2,'2020-08-22 12:03:05'),(604,6,6,'2020-10-20 00:00:00'),(605,19,6,'2020-11-20 00:00:00'),(606,1,2,'2020-11-16 11:11:11'),(607,1,2,'2020-09-12 00:00:00'),(608,1,1,'2020-11-16 11:11:11'),(609,1,2,'2020-11-16 00:00:00'),(610,1,2,'2020-11-16 00:00:00');
/*!40000 ALTER TABLE `Checkins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hospitals`
--

DROP TABLE IF EXISTS `Hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hospitals` (
  `hospital_id` int NOT NULL AUTO_INCREMENT,
  `capacity` int DEFAULT NULL,
  `state_dep_health_state_id` int NOT NULL,
  `hospital_name` varchar(45) DEFAULT NULL,
  `no_patients` int NOT NULL,
  PRIMARY KEY (`hospital_id`,`state_dep_health_state_id`),
  KEY `fk_Hospitals_State_Dep_Health1_idx` (`state_dep_health_state_id`),
  CONSTRAINT `fk_Hospitals_State_Dep_Health1` FOREIGN KEY (`state_dep_health_state_id`) REFERENCES `State_Dep_Health` (`state_dep_health_state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hospitals`
--

LOCK TABLES `Hospitals` WRITE;
/*!40000 ALTER TABLE `Hospitals` DISABLE KEYS */;
INSERT INTO `Hospitals` VALUES (1,356,10,'Zboncak Hospital',182),(2,476,9,'Lynch Hospital',241),(3,416,3,'Boehm Hospital',336),(4,354,9,'Heathcote Hospital',252),(5,488,2,'Windler Hospital',462),(6,370,10,'Haag Hospital',263),(7,273,3,'Armstrong Hospital',246),(8,427,2,'Berge Hospital',309),(9,282,3,'Harvey Hospital',231),(10,299,6,'Schowalter Hospital',243),(11,381,7,'Donnelly Hospital',372),(12,266,2,'Auer Hospital',189),(13,450,1,'Dickens Hospital',304),(14,335,4,'Lowe Hospital',209),(15,256,10,'Skiles Hospital',188),(16,377,9,'Wuckert Hospital',182),(17,437,3,'Schinner Hospital',208),(18,261,7,'Johnson Hospital',25),(19,304,5,'Osinski Hospital',197),(20,311,1,'Heaney Hospital',180),(21,407,4,'Bogisich Hospital',216),(22,292,1,'Zulauf Hospital',73),(23,408,5,'Bayer Hospital',209),(24,264,9,'Jones Hospital',189),(25,359,1,'Collier Hospital',328),(26,483,7,'Hegmann Hospital',376),(27,351,2,'Kertzmann Hospital',306),(28,257,8,'Hane Hospital',94),(29,336,5,'Rau Hospital',324),(30,319,6,'Herzog Hospital',133),(31,426,8,'Toy Hospital',355),(32,452,5,'Wiegand Hospital',218),(33,424,6,'Grimes Hospital',269),(34,303,2,'Bode Hospital',247),(35,418,5,'O\'Keefe Hospital',378),(36,373,9,'Ward Hospital',219),(37,494,8,'Hauck Hospital',452),(38,459,7,'Kulas Hospital',270),(39,457,7,'Hahn Hospital',287),(40,410,6,'Powlowski Hospital',384),(41,320,2,'Bradtke Hospital',239),(42,344,7,'Roberts Hospital',145),(43,470,7,'Yost Hospital',465),(44,409,7,'Graham Hospital',374),(45,402,1,'Ankunding Hospital',197),(46,396,1,'Goyette Hospital',295),(47,314,6,'Feeney Hospital',186),(48,375,3,'Pfannerstill Hospital',338),(49,395,5,'Bauch Hospital',306),(50,431,1,'Wisozk Hospital',221);
/*!40000 ALTER TABLE `Hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Item_Description`
--

DROP TABLE IF EXISTS `Item_Description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Item_Description` (
  `item_name` varchar(200) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `item_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Item_Description`
--

LOCK TABLES `Item_Description` WRITE;
/*!40000 ALTER TABLE `Item_Description` DISABLE KEYS */;
INSERT INTO `Item_Description` VALUES ('Arnica, Dulcamara, Berberis, Bryonia, Rhus tox','shelf vasts us shawl\'s lop ','Native Remedies, LLC',1),('Saltbush Annual Atriplex','crack slave my crumb\'s sex ','ALK-Abello, Inc.',2),('Wheat Smut','altho drily ah grand\'s ani ','Nelco Laboratories, Inc.',3),('glycerin, phenylephrine HCl, pramoxine HCl, white petrolatum','demon wad\'s ah deigned bit ','Western Family Foods Inc',4),('Mexican Tea Pollen','dames pin\'s pi smolder N\'s ','Nelco Laboratories, Inc.',5),('SILICON DIOXIDE','proms nasty of lorry\'s woo ','LUBASBIO CO., LTD',6),('clindamycin phosphate','junks mites to major\'s P\'s ','Physicians Total Care, Inc.',7),('tretinoin','soars pinks be hammers ray ','Clinical Solutions Wholesale',8),('SODIUM FLUORIDE','rinks pined ho trebles cod ','ShopKo Stores Operating Co., LLC',9),('Carvedilol','gains grate ad waxiest cow ','Cadila Healthcare Limited',10),('Avobenzone, Octinoxate, Octisalate, and Oxybenzone','chant peaks ha satisfy van ','Dermalogica, Inc.',11),('Azithromycin','sired swaps be rewrote lip ','Lake Erie Medical DBA Quality Care Products LLC',12),('ciprofloxacin hydrochloride','okays entry ah inducts spy ','Bayer HealthCare Pharmaceuticals Inc.',13),('Triclosan','prick stern by squirms ply ','SJ Creations, Inc.',14),('Sodium Fluoride','parka pushy Cs collect tea ','Colgate-Palmolive Canada',15),('Duloxetine','row\'s shrew em pertain bay ','Zydus Pharmaceuticals (USA) Inc.',16),('Benzalkonium Chloride','mucus sheen ax rebel\'s pea ','Best Sanitizers, Inc',17),('Risperidone','horns jolts pa exhumed sat ','Major Pharmaceuticals',18),('Natural Medicine','jab\'s sinus it shave\'s opt ','King Bio Inc.',19),('tinzaparin sodium','hoots sands go point\'s web ','LEO Pharma Inc.',20),('acetaminophen','hunch jaw\'s Ms round\'s lop ','Harmon Stores Inc.',21),('HYDROCORTISONE ACETATE','wok\'s rue\'s as grinder ani ','Salix Pharmaceuticals, Inc',22),('DOCUSATE SODIUM','madly goons ho murmurs cue ','TOP CARE (Topco Associates LLC)',23),('Lentil','sagas moans Cs fence\'s den ','Antigen Laboratories, Inc.',24),('diltiazem hydrochloride','rouse being ms squalor non ','Apotex Corp.',25),('Treatment Set TS334128','mutes dirge Cs jumpers pub ','Antigen Laboratories, Inc.',26),('Acetaminophen Phenylephrine','naive huffy it chirp\'s cog ','Zee Medical Inc',27),('Isosulfan Blue','inane sores am nuttier wit ','Mylan Institutional LLC',28),('Acetaminophen','pease exist ha chromes H\'s ','McKesson',29),('Ciprofloxacin','vends twang if swathes arm ','Bryant Ranch Prepack',30),('Menthol','dozed faked or castoff elk ','Enzyme Labs',31),('POTASSIUM CHLORIDE','place pants ms semen\'s sag ','Hospira, Inc.',32),('norethindrone and ethinyl estradiol','blobs furor it handles sue ','Janssen Pharmaceuticals, Inc.',33),('Nicotine polacrilex','mints fiery no pattern pat ','CVS Pharmacy',34),('Isoleucine, Arginine, Carnitine, Alpha keto glutaricum acid, Leucine, Ornithine, Valine, Estrogen, Progesterone, Testosterone,','lyric banks ox unaware rap ','Apotheca Company',35),('Temozolomide','rodeo kilns he heavy\'s wee ','Merck Sharp & Dohme Corp.',36),('Levofloxacin','filly tipsy ah sharply elm ','REMEDYREPACK INC.',37),('Avobenzone, Octisalate, Octocrylene','ivy\'s grins to bound\'s eel ','BCM Ltd',38),('ibuprofen','gin\'s sugar Mr sieve\'s had ','NorMed',39),('montelukast sodium','liars finch Cs rigidly get ','Preferred Pharmaceuticals, Inc.',40),('Cattle Hair and Dander','tarts bulks hi embassy man ','Jubilant HollisterStier LLC',41),('Avobenzone, Homosalate, Octisalate and Octocrylene','halon seeps or shuttle chi ','L\'Oreal USA Products Inc',42),('Acetaminophen, Dextromethorphan HBr, Doxylamine succinate','havoc gourd on peppers leg ','Kmart Corporation',43),('TOPICAL STARCH','comma force hi mixer\'s old ','KJI Industrial Co Ltd',44),('Ondansetron','names top\'s he prawn\'s pro ','Dispensing Solutions, Inc.',45),('Pseudoephedrine Hydrochloride','scale bouts ah dearest par ','Meijer Distribution Inc',46),('Guaifenesin, Dextromethorphan HBR','gem\'s shape re monarch W\'s ','Menper Distributors, Inc.',47),('Shrimp','frisk barge ms yapping sky ','Nelco Laboratories, Inc.',48),('Diltiazem Hydrochloride','bribe virus ho rogue\'s pas ','REMEDYREPACK INC.',49),('Protriptyline Hydrochloride','zests one\'s ay crust\'s but ','Teva Women\'s Health, Inc.',50),('metronidazole','cello speed ms crudely vie ','Medimetriks Pharmaceuticals, Inc.',51),('NITROUS OXIDE','other spied Os wadding ask ','Air Liquide America Specialty Gases LLC',52),('Neurospora intermedia','boned gouge or sharked T\'s ','Nelco Laboratories, Inc.',53),('IODINE, SODIUM IODIDE, ALCOHOL','walls tunas up encored jot ','McKesson',54),('OCTINOXATE, OCTOCRYLENE, OCTISALATE, and AVOBENZONE','borne pines oh endives dip ','KINeSYS Pharmaceutical Inc.',55),('atorvastatin calcium','eying barge ox merited hah ','A-S Medication Solutions LLC',56),('ALCOHOL','words movie em rereads cox ','Greenbrier International',57),('Promethazine Hydrochloride','aback skill re forming six ','REMEDYREPACK INC.',58),('Octinoxate and Titanium dioxide','surer firms to chagrin sex ','SHISEIDO CO., LTD.',59),('ETHYL ALCOHOL','wives baste up godlike ape ','DZA BRANDS',60),('Apricot','jawed friar ma oblique sod ','Nelco Laboratories, Inc.',61),('Lenscale Quailbrush','son\'s pucks pa dangers bog ','Nelco Laboratories, Inc.',62),('Lisinopril','whose ram\'s Cs cuckoos G\'s ','NCS HealthCare of KY, Inc dba Vangard Labs',63),('Chicory','issue heros go guide\'s lit ','Apotheca Company',64),('Ibuprofen','snoop witch ay dolling via ','Cardinal Health',65),('ACETAMINOPHEN, DEXTROMETHORPHAN, PHENYLEPHRINE','odder mousy oh loiters opt ','Novartis Consumer Health',66),('Nortriptyline Hydrochloride','theta waist ha summing par ','Rebel Distributors Corp',67),('Gemcitabine Hydrochloride','eject spied up warring roe ','Watson Laboratories, Inc.',68),('','dusts toyed go canters net ','Chattem, Inc.',69),('Propranolol Hydrochloride','rasps mount or utensil gas ','Golden State Medical Supply, Inc.',70),('Lobelia Quercus','cuffs adore cs politer lop ','Uriel Pharmacy Inc.',71),('Pentoxifylline','ass\'s angst at inhibit fry ','Cardinal Health',72),('salicylic acid','crave tot\'s up porting mes ','Pedinol Pharmacal, Inc.',73),('Duloxetine','crypt heavy in debut\'s dot ','American Health Packaging',74),('Famotidine','singe drips ah fussier sop ','West-ward Pharmaceutical Corp.',75),('Equisetum arv','robot clout ay earshot ace ','Native Remedies, LLC',76),('Irbesartan and Hydrochlorothiazide','crate event do dwarfed leg ','Winthrop U.S.',77),('Ibuprofen','cello skimp Mr bullion jay ','Cardinal Health',78),('Amiodarone Hydrochloride','lairs girls ay grammar sea ','Aphena Pharma Solutions - Tennessee, LLC',79),('Zinc Oxide','cages tab\'s Os laciest dye ','Mission Pharmacal Company',80),('Pseudoephedrine HCl','log\'s eased ms audible wry ','Rite Aid Corporation',81),('Citalopram','harsh shave Mr tallest axe ','Golden State Medical Supply, Inc.',82),('Acetaminophen, Dextromathorphan HBr, Gauifenesin, Phenylephrine HCl','hails dried Es epitaph oar ','WOONSOCKET PRESCRIPTION CENTER,INCORPORATED',83),('TITANIUM DIOXIDE, ZINC OXIDE','colon tends of bluffed how ','CLINIQUE LABORATORIES INC.',84),('Calcium polycarbophil','garbs human ax numbing shy ','Safeway',85),('ALTERNARIA TENUIS','meter groan ma smaller dam ','ALK-Abello, Inc.',86),('Phenazopyridine Hydrochloride','dunce phase ay insurer yak ','American Health Packaging',87),('Topiramate','reign sways on haughty ore ','Teva Pharmaceuticals USA Inc',88),('IBUPROFEN AND DIPHENHYDRAMINE HCL','dregs dazes id surgery rim ','Strides Arcolab Limited',89),('oxymorphone hydrochloride','hotel adopt so pupil\'s pan ','Endo Pharmaceuticals Inc.',90),('indinavir sulfate','rigor staff pa deeming mop ','Merck Sharp & Dohme Corp.',91),('strophanthus hispidus','coups array am tautest his ','Sanum Kehlbeck GmbH & Co. KG',92),('FLUOXETINE HYDROCHLORIDE','rears inn\'s Cs qualify pet ','DIRECT RX',93),('Human Immunoglobulin G','tubed depth ox effects pus ','CSL Behring LLC',94),('diphenoxylate hydrochloride and atropine sulfate','golds heaps Cs botched wot ','Lake Erie Medical & Surgical Supply DBA Quality Care Products LLC',95),('Enalapril Maleate','burly domes if envoy\'s era ','Valeant Pharmaceuticals North America LLC',96),('efavirenz','eater flaws or therapy too ','Physicians Total Care, Inc.',97),('DIPHENHYDRAMINE HYDROCHLORIDE','barge delay no quirk\'s pep ','HIMPRIT PHARMACHEM PVT LTD',98),('Glyburide and Metformin Hydrochloride','ham\'s skill ms retrace win ','Aurobindo Pharma Limited',99),('Acetaminophen','keg\'s feint ay exclaim off ','Conney Safety Products, LLC',100);
/*!40000 ALTER TABLE `Item_Description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lab`
--

DROP TABLE IF EXISTS `Lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Lab` (
  `lab_id` int NOT NULL AUTO_INCREMENT,
  `testing_capacity` int DEFAULT NULL,
  `state_dep_health_state_id` int NOT NULL,
  `lab_name` varchar(30) DEFAULT NULL,
  `tests_in_progress` int DEFAULT NULL,
  PRIMARY KEY (`lab_id`),
  KEY `fk_Lab_State_Dep_Health1_idx` (`state_dep_health_state_id`),
  CONSTRAINT `fk_Lab_State_Dep_Health1` FOREIGN KEY (`state_dep_health_state_id`) REFERENCES `State_Dep_Health` (`state_dep_health_state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lab`
--

LOCK TABLES `Lab` WRITE;
/*!40000 ALTER TABLE `Lab` DISABLE KEYS */;
INSERT INTO `Lab` VALUES (1,87,4,'Armstrong lab',8),(2,69,3,'Hintz lab',13),(3,62,6,'Kertzmann lab',16),(4,94,1,'Block lab',74),(5,77,10,'Gutkowski lab',61),(6,74,2,'Altenwerth lab',23),(7,94,4,'Aufderhar lab',15),(8,68,2,'Olson lab',76),(9,52,7,'Roberts lab',50),(10,65,2,'Jakubowski lab',18),(11,95,6,'Dicki lab',77),(12,94,9,'Thompson lab',47),(13,93,4,'Prosacco lab',91),(14,55,10,'Padberg lab',26),(15,94,10,'Schinner lab',4),(16,97,4,'Tillman lab',49),(17,53,2,'Barton lab',74),(18,96,8,'Kohler lab',61),(19,71,3,'Runolfsson lab',76),(20,67,2,'Towne lab',56),(21,100,4,'Hane lab',76),(22,95,7,'Donnelly lab',99),(23,81,2,'Rolfson lab',75),(24,60,4,'Rice lab',52),(25,93,3,'Connelly lab',55),(26,58,5,'Hessel lab',62),(27,82,5,'Lang lab',70),(28,65,2,'Jewess lab',60),(29,68,5,'Pacocha lab',78),(30,82,2,'Turner lab',72),(31,70,6,'Terry lab',66),(32,94,7,'Ernser lab',26),(33,86,7,'Ward lab',34),(34,51,7,'Schaden lab',3),(35,50,8,'Watsica lab',27),(36,94,5,'Jacobson lab',54),(37,84,7,'Tromp lab',22),(38,97,3,'Stracke lab',93),(39,70,5,'Armstrong lab',8),(40,92,7,'Cormier lab',16);
/*!40000 ALTER TABLE `Lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `People`
--

DROP TABLE IF EXISTS `People`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `People` (
  `people_id` int NOT NULL AUTO_INCREMENT,
  `result` varchar(45) DEFAULT NULL,
  `facility_id` int NOT NULL,
  `state_dep_health_state_id` int NOT NULL,
  PRIMARY KEY (`people_id`),
  KEY `fk_People_Testing_Facilities1_idx` (`facility_id`,`state_dep_health_state_id`),
  CONSTRAINT `fk_People_Testing_Facilities1` FOREIGN KEY (`facility_id`, `state_dep_health_state_id`) REFERENCES `Testing_Facilities` (`facility_id`, `state_dep_health_state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `People`
--

LOCK TABLES `People` WRITE;
/*!40000 ALTER TABLE `People` DISABLE KEYS */;
INSERT INTO `People` VALUES (1,'negative',21,7),(2,'negative',8,10),(3,'negative',64,9),(4,'positive',42,7),(5,'negative',45,5),(6,'negative',3,9),(7,'negative',64,9),(8,'positive',30,5),(9,'negative',46,3),(10,'negative',30,5),(11,'negative',19,8),(12,'positive',65,5),(13,'negative',2,2),(14,'negative',8,10),(15,'negative',17,6),(16,'positive',70,4),(17,'negative',23,2),(18,'negative',8,10),(19,'negative',15,1),(20,'positive',27,2),(21,'negative',7,7),(22,'negative',43,2),(23,'negative',8,10),(24,'positive',57,7),(25,'negative',54,1),(26,'negative',35,8),(27,'negative',31,3),(28,'positive',72,5),(29,'negative',61,7),(30,'negative',73,9),(31,'negative',68,10),(32,'positive',3,9),(33,'negative',15,1),(34,'negative',39,1),(35,'negative',54,1),(36,'positive',39,1),(37,'negative',34,7),(38,'negative',54,1),(39,'negative',51,6),(40,'positive',49,1),(41,'negative',25,7),(42,'negative',63,1),(43,'negative',28,8),(44,'positive',53,6),(45,'negative',42,7),(46,'negative',42,7),(47,'negative',61,7),(48,'positive',10,1),(49,'negative',56,3),(50,'negative',26,6),(51,'negative',5,1),(52,'positive',41,10),(53,'negative',30,5),(54,'negative',40,7),(55,'negative',21,7),(56,'positive',74,7),(57,'negative',21,7),(58,'negative',13,1),(59,'negative',68,10),(60,'positive',2,2),(61,'negative',3,9),(62,'negative',35,8),(63,'negative',68,10),(64,'positive',29,2),(65,'negative',15,1),(66,'negative',44,3),(67,'negative',38,9),(68,'positive',36,8),(69,'negative',26,6),(70,'negative',53,6),(71,'negative',32,8),(72,'positive',61,7),(73,'negative',14,2),(74,'negative',24,1),(75,'negative',22,3),(76,'positive',27,2),(77,'negative',10,1),(78,'negative',23,2),(79,'negative',3,9),(80,'positive',73,9),(81,'negative',65,5),(82,'negative',74,7),(83,'negative',44,3),(84,'positive',46,3),(85,'negative',68,10),(86,'negative',62,7),(87,'negative',23,2),(88,'positive',23,2),(89,'negative',60,3),(90,'negative',30,5),(91,'negative',75,9),(92,'positive',58,3),(93,'negative',67,1),(94,'negative',8,10),(95,'negative',53,6),(96,'positive',28,8),(97,'negative',6,9),(98,'negative',12,7),(99,'negative',70,4),(100,'positive',14,2),(101,'negative',12,7),(102,'negative',60,3),(103,'negative',4,3),(104,'positive',48,3),(105,'negative',22,3),(106,'negative',10,1),(107,'negative',64,9),(108,'positive',45,5),(109,'negative',36,8),(110,'negative',48,3),(111,'negative',56,3),(112,'positive',62,7),(113,'negative',50,5),(114,'negative',36,8),(115,'negative',1,6),(116,'positive',68,10),(117,'negative',15,1),(118,'negative',47,7),(119,'negative',11,5),(120,'positive',46,3),(121,'negative',52,6),(122,'negative',50,5),(123,'negative',32,8),(124,'positive',4,3),(125,'negative',23,2),(126,'negative',3,9),(127,'negative',73,9),(128,'positive',56,3),(129,'negative',2,2),(130,'negative',35,8),(131,'negative',5,1),(132,'positive',75,9),(133,'negative',29,2),(134,'negative',45,5),(135,'negative',72,5),(136,'positive',12,7),(137,'negative',22,3),(138,'negative',74,7),(139,'negative',64,9),(140,'positive',60,3),(141,'negative',53,6),(142,'negative',45,5),(143,'negative',64,9),(144,'positive',45,5),(145,'negative',57,7),(146,'negative',30,5),(147,'negative',1,6),(148,'positive',33,6),(149,'negative',19,8),(150,'negative',47,7),(151,'negative',44,3),(152,'positive',74,7),(153,'negative',51,6),(154,'negative',74,7),(155,'negative',3,9),(156,'positive',11,5),(157,'negative',72,5),(158,'negative',23,2),(159,'negative',6,9),(160,'positive',25,7),(161,'negative',4,3),(162,'negative',71,4),(163,'negative',73,9),(164,'positive',24,1),(165,'negative',28,8),(166,'negative',63,1),(167,'negative',48,3),(168,'positive',46,3),(169,'negative',62,7),(170,'negative',65,5),(171,'negative',59,3),(172,'positive',4,3),(173,'negative',5,1),(174,'negative',73,9),(175,'negative',49,1),(176,'positive',10,1),(177,'negative',75,9),(178,'negative',22,3),(179,'negative',38,9),(180,'positive',57,7),(181,'negative',27,2),(182,'negative',71,4),(183,'negative',27,2),(184,'positive',55,5),(185,'negative',60,3),(186,'negative',10,1),(187,'negative',33,6),(188,'positive',42,7),(189,'negative',30,5),(190,'negative',18,7),(191,'negative',60,3),(192,'positive',20,8),(193,'negative',67,1),(194,'negative',45,5),(195,'negative',60,3),(196,'positive',4,3),(197,'negative',38,9),(198,'negative',58,3),(199,'negative',52,6),(200,'positive',9,7);
/*!40000 ALTER TABLE `People` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Personal_Information`
--

DROP TABLE IF EXISTS `Personal_Information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Personal_Information` (
  `lname` varchar(45) DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `ethnicity` varchar(100) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip_code` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `people_id` int NOT NULL,
  PRIMARY KEY (`people_id`),
  CONSTRAINT `fk_Personal_Information_People1` FOREIGN KEY (`people_id`) REFERENCES `People` (`people_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personal_Information`
--

LOCK TABLES `Personal_Information` WRITE;
/*!40000 ALTER TABLE `Personal_Information` DISABLE KEYS */;
INSERT INTO `Personal_Information` VALUES ('Ianetti','Camey','Argentinian','Male','1954-02-11 03:55:56','1175 Anhalt Circle','Rochester','New York','19673','585-609-7616',1),('Fellini','Abbie','Cree','Male','2009-03-02 05:43:58','378 Jana Pass','Youngstown','Ohio','18211','330-239-6027',2),('Dutton','Francene','Navajo','Female','1952-05-22 15:24:16','862 Colorado Crossing','Shawnee Mission','Kansas','76427','913-646-5118',3),('Timothy','Bethena','Aleut','Female','1986-12-12 09:12:04','88 Monument Lane','Pittsburgh','Pennsylvania','59799','412-878-7000',4),('Vanyushkin','Dougie','Peruvian','Male','1972-11-09 07:06:48','5 Crowley Street','Falls Church','Virginia','56063','571-633-8087',5),('Citrine','Sheffy','Creek','Male','1920-05-19 13:19:08','8 Mockingbird Lane','Montgomery','Alabama','74561','334-468-1532',6),('Halesworth','Neddie','Tohono O\'Odham','Male','1982-03-20 18:57:02','41652 Judy Crossing','Bloomington','Indiana','63321','812-347-5867',7),('Le Port','Kamila','Cambodian','Female','2003-09-15 02:01:17','2865 Fremont Crossing','Houston','Texas','38222','713-283-0433',8),('Scoble','Lyn','Chamorro','Female','1979-02-06 15:30:19','63 Valley Edge Road','Newton','Massachusetts','48355','617-300-1657',9),('Zotto','Rip','Nicaraguan','Male','1969-05-07 03:22:05','92 Jackson Park','Houston','Texas','06944','281-429-0558',10),('St Clair','Paola','Aleut','Female','1948-03-08 00:10:40','8 Eagle Crest Point','Birmingham','Alabama','61055','205-917-4016',11),('Richardes','Conn','Navajo','Male','2014-03-28 11:30:31','490 Cody Place','Baltimore','Maryland','96266','410-199-9367',12),('Linnane','Emogene','Mexican','Female','1977-09-03 00:22:17','30 Hanover Point','York','Pennsylvania','66869','717-122-2376',13),('Asken','Cello','Micronesian','Male','1923-02-27 23:24:49','8 Graceland Pass','El Paso','Texas','14751','915-122-8376',14),('Bentham3','Egon','Osage','Male','1975-06-11 14:22:58','4 Bellgrove Pass','Los Angeles','California','27510','626-120-3770',15),('Chalfain','Yetta','Uruguayan','Female','1972-09-06 03:31:31','949 Bluejay Terrace','Gulfport','Mississippi','96143','228-663-9222',16),('Jessep','Robyn','Hmong','Female','1977-11-24 10:06:28','940 Namekagon Crossing','Kansas City','Missouri','95272','816-700-1544',17),('Cuddehay','Julianne','Ottawa','Female','1999-01-19 15:03:36','04936 Corben Way','Phoenix','Arizona','71662','602-844-4495',18),('Ryson','Nate','Colville','Male','1929-02-18 11:18:31','21053 7th Avenue','Shawnee Mission','Kansas','37770','913-879-9145',19),('Alsop','Reynolds','Kiowa','Male','1928-10-09 09:23:43','374 Farmco Pass','Peoria','Illinois','19581','309-674-4265',20),('Stoppard','Mariejeanne','Cambodian','Female','1953-10-28 09:37:57','8 Ridge Oak Crossing','Arlington','Virginia','44388','571-362-0680',21),('Hub','Meryl','Thai','Male','2007-12-11 10:20:51','51824 Bartelt Way','Las Vegas','Nevada','31394','702-835-3596',22),('Klasing','Brendis','Melanesian','Male','1950-08-26 03:49:36','43099 7th Street','Fresno','California','69266','559-519-0652',23),('Mum','Millisent','Houma','Female','1956-04-13 02:17:45','6124 Pond Junction','Washington','District of Columbia','80491','202-188-9349',24),('Guidone','Cassondra','Venezuelan','Female','1949-04-15 03:53:57','47 West Avenue','Tacoma','Washington','26813','253-244-9801',25),('Langhor','Abbi','Comanche','Female','1982-11-30 16:32:11','738 Mcguire Court','Athens','Georgia','41748','706-421-3276',26),('Benmore','Hyacinthe','Samoan','Female','1933-06-17 00:03:11','64761 Clemons Plaza','Kansas City','Missouri','81703','816-622-6549',27),('Cato','Uriel','Colville','Male','1933-04-24 10:08:26','22333 Pearson Drive','Evansville','Indiana','08183','812-607-6461',28),('Sarney','Rossie','Bolivian','Male','2010-03-19 04:34:54','73874 Kennedy Lane','Bonita Springs','Florida','26294','941-867-9975',29),('Plester','Flore','Osage','Female','2018-08-09 10:44:27','2779 Coleman Hill','Pasadena','California','13223','818-728-4968',30),('Hulk','Ann','Chippewa','Female','1925-11-07 21:07:04','20 Pearson Junction','Jacksonville','Florida','19038','904-688-2208',31),('Strivens','Astrid','Seminole','Female','2009-01-22 11:02:14','903 Vidon Parkway','Charleston','South Carolina','62271','843-741-5327',32),('Desson','Mair','Argentinian','Female','1996-07-18 01:42:21','85184 Harbort Lane','Anchorage','Alaska','90300','907-747-7278',33),('Calfe','Joyan','Fijian','Female','1960-04-07 16:15:48','91 Arizona Plaza','Spokane','Washington','89280','509-657-1401',34),('Stockman','Esdras','Bangladeshi','Male','1970-12-30 09:51:33','20 Jenna Street','Dayton','Ohio','68091','937-231-7357',35),('Seyffert','Miriam','Tlingit-Haida','Female','1999-12-22 07:48:28','76 Lindbergh Hill','Waterloo','Iowa','62411','319-926-9807',36),('Vasyutochkin','Cordelia','Latin American Indian','Female','1929-10-03 23:24:29','15 Blackbird Lane','Baltimore','Maryland','96703','443-285-8522',37),('Caswall','Kim','Filipino','Female','1993-07-28 22:43:39','2462 Fairview Hill','Corpus Christi','Texas','01471','361-391-7752',38),('Repper','Griselda','Puget Sound Salish','Female','1987-02-03 12:56:59','83817 Southridge Road','Louisville','Kentucky','26070','502-804-2097',39),('Bubeer','Estevan','Thai','Male','1950-03-21 01:56:22','430 Loftsgordon Drive','Boise','Idaho','73849','208-119-6806',40),('Lenahan','Ashil','South American','Female','1967-02-03 16:30:05','6 Glacier Hill Hill','Lancaster','Pennsylvania','77844','717-854-9958',41),('Parrott','Aluin','American Indian and Alaska Native (AIAN)','Male','1934-07-15 04:26:46','6548 Buhler Parkway','Delray Beach','Florida','03453','561-168-8856',42),('Fleckney','Sylvan','Colville','Male','1931-10-18 06:48:44','72 Columbus Alley','Pomona','California','12479','909-511-3668',43),('Eilhertsen','Joshua','Costa Rican','Male','1954-01-11 23:14:51','320 Laurel Hill','Charlotte','North Carolina','42543','704-561-4396',44),('Filimore','Germayne','Creek','Male','1924-06-27 15:52:36','4 Northview Crossing','Tulsa','Oklahoma','87225','918-737-4985',45),('Maffy','Aloin','Puerto Rican','Male','1941-10-12 18:43:15','4 Muir Parkway','New York City','New York','27500','212-970-9835',46),('Atlee','Beulah','Sioux','Female','2004-08-04 13:42:31','5692 Kropf Park','Boston','Massachusetts','69875','781-542-8673',47),('Watkiss','Amabelle','American Indian and Alaska Native (AIAN)','Female','1971-10-05 07:27:24','937 American Ash Pass','Migrate','Kentucky','51266','502-530-7718',48),('Parysiak','Vonny','Panamanian','Female','1980-04-23 18:39:01','804 Northport Street','Greensboro','North Carolina','13616','336-463-4636',49),('Kingsworth','Janenna','American Indian and Alaska Native (AIAN)','Female','1983-11-24 00:29:45','8313 Express Circle','Tucson','Arizona','39820','520-269-9486',50),('Marchand','Lavina','White','Female','2010-04-07 09:55:22','0 Spohn Plaza','Schenectady','New York','09261','518-185-6104',51),('Kitney','Rodney','Pueblo','Male','1949-10-15 06:49:07','60129 Myrtle Road','Mansfield','Ohio','81838','419-579-0909',52),('Brinded','Etan','Ute','Male','1973-01-12 18:28:45','568 Ryan Park','Pittsburgh','Pennsylvania','10443','412-714-0386',53),('Webb-Bowen','Amber','Japanese','Female','1978-01-14 21:40:10','71764 Garrison Parkway','Torrance','California','41748','310-631-2746',54),('MacCague','Dorella','Pima','Female','1943-11-20 02:14:59','7474 Grover Hill','Harrisburg','Pennsylvania','80404','717-998-7358',55),('Boyen','Alli','Spaniard','Female','2004-03-07 00:38:31','11 Boyd Center','Suffolk','Virginia','59097','757-590-8396',56),('Lowmass','Dominga','Cheyenne','Female','1920-02-23 19:43:56','4972 Pennsylvania Junction','Chicago','Illinois','69436','312-296-7260',57),('Anear','Quent','American Indian','Male','2000-01-07 06:41:22','1837 Crest Line Junction','Sacramento','California','07375','916-638-9714',58),('Kepe','Michel','Latin American Indian','Male','1960-11-09 09:19:02','7 Pierstorff Hill','Lancaster','Pennsylvania','76027','717-566-1226',59),('Starford','Cammy','Lumbee','Female','1950-07-28 18:46:59','144 Truax Plaza','Cincinnati','Ohio','61413','513-434-8477',60),('Ommundsen','Lynett','South American','Female','1955-11-10 12:47:44','731 Toban Alley','Baton Rouge','Louisiana','22533','225-870-5073',61),('Wray','Nil','Potawatomi','Male','1946-04-25 04:02:06','741 Walton Park','Lees Summit','Missouri','03965','816-598-8643',62),('Turnbull','Edeline','Kiowa','Female','1988-07-16 05:46:09','175 Burning Wood Hill','Redwood City','California','88334','650-748-0502',63),('Valsler','Daffie','Cree','Female','1983-06-17 03:50:48','03 Summerview Circle','Lincoln','Nebraska','35648','402-443-7416',64),('Hakonsson','Evyn','Nicaraguan','Male','1964-08-25 13:05:34','0 Tennyson Place','Austin','Texas','76921','512-684-2787',65),('Pull','Nina','Native Hawaiian and Other Pacific Islander (NHPI)','Female','1993-02-19 05:40:41','8 David Terrace','Honolulu','Hawaii','74978','808-263-4886',66),('Tomeo','Carney','Micronesian','Male','2007-02-26 18:41:48','495 Kim Circle','Pensacola','Florida','89346','850-199-8297',67),('De la Yglesia','Wyndham','Ecuadorian','Male','2003-03-16 14:23:57','6003 Twin Pines Avenue','Sacramento','California','41899','916-794-0249',68),('Morcom','Ulrika','Dominican (Dominican Republic)','Female','1969-12-28 03:23:35','99621 Lillian Place','Phoenix','Arizona','13429','480-868-4779',69),('M\'Chirrie','Skippy','Argentinian','Male','1998-02-25 21:48:32','77166 Reindahl Park','San Jose','California','93405','408-688-2538',70),('Strongman','Jade','Asian Indian','Female','1953-01-13 22:35:30','19 American Ash Avenue','Jackson','Mississippi','65616','601-548-7271',71),('Dinning','Floyd','Thai','Male','2013-04-13 13:09:38','8 Kim Hill','Bowie','Maryland','60385','240-304-9133',72),('Brussels','Elie','Laotian','Female','2002-11-25 08:38:40','788 Mallard Plaza','Columbia','South Carolina','46658','803-377-1878',73),('Pettifor','Athena','Hmong','Female','1997-11-19 16:14:54','0 Blackbird Avenue','North Hollywood','California','88658','213-973-9033',74),('Nys','Linzy','Aleut','Female','1938-11-22 13:14:37','0154 Sullivan Street','Washington','District of Columbia','89406','202-611-7779',75),('Witt','Vivie','Alaska Native','Female','1988-03-05 13:16:17','16 Summerview Plaza','Austin','Texas','75170','512-713-4697',76),('Banes','Pam','Polynesian','Female','1930-02-05 03:24:07','09295 Algoma Trail','Kansas City','Missouri','04142','816-311-5811',77),('Dresche','Kandace','Costa Rican','Female','1957-07-16 09:05:37','303 Westridge Street','Riverside','California','00666','951-446-0092',78),('Yakubovich','Delmar','Chinese','Male','1963-03-22 21:39:32','1 Dottie Junction','Fort Wayne','Indiana','19744','260-826-1492',79),('Primarolo','Ermengarde','Tohono O\'Odham','Female','1981-05-02 06:57:56','54578 6th Trail','Riverside','California','70147','951-857-1564',80),('Gianetti','Harriott','Yuman','Female','1940-09-25 13:37:42','541 Swallow Plaza','Seattle','Washington','79153','206-700-5961',81),('Corkett','Evangelia','Peruvian','Female','2004-06-17 17:56:45','76 5th Parkway','Saint Paul','Minnesota','79503','612-912-7157',82),('Venners','Orel','Chinese','Female','1933-05-09 09:41:36','72298 Tennessee Point','Reno','Nevada','68491','775-358-6621',83),('Georgeau','Hobey','Puget Sound Salish','Male','1991-12-01 15:50:03','9832 Graedel Park','Duluth','Minnesota','58365','218-568-3883',84),('Puddicombe','Merna','Polynesian','Female','2007-03-21 20:05:58','3 Cambridge Park','Waco','Texas','08301','254-738-1632',85),('Dickerline','Betteann','Kiowa','Female','1928-08-21 15:29:59','29916 Summerview Road','Monroe','Louisiana','90168','318-225-6839',86),('Illem','Alina','Japanese','Female','2001-12-05 04:21:13','17 Roxbury Road','Sterling','Virginia','01981','571-339-2479',87),('Lancaster','Mohammed','Creek','Male','1956-05-04 06:04:49','5001 Sullivan Street','Birmingham','Alabama','96190','205-620-1808',88),('Dovydenas','Odetta','Chilean','Female','1928-03-10 02:35:25','494 Mcbride Park','Louisville','Kentucky','07157','502-857-9452',89),('Yosselevitch','Christi','Latin American Indian','Female','1959-02-04 15:39:25','264 Corry Street','Fort Myers','Florida','46394','239-955-2417',90),('Corrao','Karney','Korean','Male','1937-05-03 21:52:56','82 Morning Junction','Charlotte','North Carolina','18116','704-412-6252',91),('Beldon','Tabby','Yakama','Female','1931-10-21 09:34:30','9 Fordem Way','New York City','New York','33968','718-612-6503',92),('Fennick','Rossy','Cuban','Male','2002-03-17 06:06:57','20 Everett Circle','Tampa','Florida','35728','813-253-2269',93),('Yanson','Quinton','Ottawa','Male','1937-06-02 09:33:39','20352 Fieldstone Center','Fullerton','California','25887','559-153-5674',94),('Lotherington','Calvin','Osage','Male','1987-09-27 09:13:26','7 Duke Crossing','Tulsa','Oklahoma','99112','918-363-4134',95),('Bleakman','Dolli','Tlingit-Haida','Female','1956-08-06 20:33:17','2853 Oak Valley Street','Escondido','California','99921','760-710-5313',96),('Ivanishin','Egor','Tlingit-Haida','Male','1947-11-18 14:05:22','3970 Lake View Crossing','Long Beach','California','50857','562-326-5202',97),('Maddison','Thibaud','Costa Rican','Male','1979-03-31 13:05:05','597 Mendota Court','Newport News','Virginia','80864','757-892-3662',98),('Bracer','Bibby','Comanche','Female','1952-08-24 17:53:57','9 Vernon Plaza','Lafayette','Louisiana','07880','337-845-0370',99),('Dunderdale','Brook','Argentinian','Female','1989-12-04 02:31:52','4 Lighthouse Bay Crossing','Pompano Beach','Florida','62161','754-379-2292',100),('Tompkiss','Marlie','Ute','Female','1998-03-22 23:30:31','2980 Cascade Trail','Little Rock','Arkansas','37347','501-408-1390',101),('Van den Bosch','Vince','Tongan','Male','1985-01-04 06:44:15','8745 Bashford Place','Houston','Texas','56121','832-655-2972',102),('Jemmison','Ailsun','Asian Indian','Female','1965-11-23 22:52:31','59 Macpherson Alley','Winston Salem','North Carolina','26348','336-441-2963',103),('Yann','Cordy','Sri Lankan','Female','1938-12-14 09:19:48','34296 Dennis Avenue','Aurora','Colorado','02595','303-658-3124',104),('Dreye','Sheff','Ecuadorian','Male','1959-09-29 08:51:58','4 Sundown Center','San Jose','California','37803','408-826-4916',105),('Whatley','Peyton','Paiute','Male','2010-05-23 02:39:55','046 Lien Street','Fort Worth','Texas','17486','682-408-6564',106),('Gasnell','Herbert','Shoshone','Male','1989-05-26 00:31:08','7207 Reinke Crossing','Orlando','Florida','62235','407-818-5126',107),('Ende','Cordey','Vietnamese','Female','1990-04-25 15:00:06','7 Northview Street','Cleveland','Ohio','83317','216-811-8786',108),('Glanfield','Dermot','Chippewa','Male','1980-04-13 01:27:44','0569 Twin Pines Avenue','Birmingham','Alabama','82969','205-902-8617',109),('Wycliffe','Viole','Chippewa','Female','1981-01-28 19:00:18','31394 Eggendart Terrace','Aurora','Colorado','54427','720-196-9778',110),('Tryme','Selig','Yaqui','Male','2007-10-23 20:14:06','8332 Stang Lane','South Bend','Indiana','50578','574-452-4573',111),('Vitall','Wolfy','Eskimo','Male','2002-08-24 09:32:47','688 Linden Lane','Philadelphia','Pennsylvania','52559','215-670-7571',112),('Mingey','Kati','South American','Female','1947-06-02 09:04:14','5 Canary Alley','Austin','Texas','60947','361-173-9378',113),('Shovelbottom','Jeffie','Ecuadorian','Male','1970-03-17 22:35:47','6627 8th Alley','Akron','Ohio','29427','234-620-6112',114),('Caldero','Noll','Yuman','Male','1937-03-17 14:03:59','14300 Kingsford Way','Merrifield','Virginia','21221','571-657-1344',115),('Kensington','Vikky','Tlingit-Haida','Female','1924-11-16 01:55:23','95 Portage Trail','San Antonio','Texas','45396','210-119-8798',116),('Rivenzon','Fitz','Ute','Male','1922-10-27 23:01:14','34 Mitchell Point','Las Vegas','Nevada','87319','702-778-3552',117),('Jerrolt','Benedikt','Sioux','Male','1988-12-04 07:33:31','82027 Arrowood Park','Baton Rouge','Louisiana','72886','225-306-2179',118),('Darridon','Rikki','Delaware','Male','2006-12-28 06:37:35','37669 Oakridge Drive','Sioux City','Iowa','45937','712-760-5414',119),('Choat','Creigh','Tongan','Male','1984-04-25 18:44:51','90 Rowland Alley','Modesto','California','09525','209-883-7743',120),('Allitt','Cherey','Cree','Female','1989-04-05 01:24:19','25065 Fairview Parkway','Spring','Texas','96029','409-204-1108',121),('Pantry','Niccolo','Asian Indian','Male','1947-01-17 13:31:14','5 Texas Plaza','New York City','New York','43668','212-474-9413',122),('Stryde','Panchito','Puget Sound Salish','Male','1983-07-18 04:09:36','4 Southridge Plaza','Roanoke','Virginia','68109','540-561-9180',123),('Browse','Lutero','Osage','Male','2011-07-05 09:27:51','2 Vidon Street','Portland','Oregon','73230','503-692-5759',124),('Schruyers','Fawne','Cambodian','Female','1928-07-29 07:08:10','73324 Rieder Hill','Houston','Texas','35768','713-315-6984',125),('Vince','Lalo','Potawatomi','Male','1932-08-21 01:11:39','25 Algoma Terrace','Little Rock','Arkansas','77470','501-222-4192',126),('Everett','Timotheus','South American','Male','1922-04-12 22:38:52','569 Lakewood Gardens Avenue','Miami','Florida','67187','305-988-6564',127),('Killoran','Cass','Comanche','Female','1966-08-15 14:01:38','999 Hagan Road','Charlottesville','Virginia','29925','434-642-6567',128),('Harbron','Crystie','Creek','Female','1939-09-14 21:16:22','5744 Sunfield Junction','Dallas','Texas','56876','469-421-5312',129),('Hendriksen','Darbee','Thai','Male','1986-02-27 16:49:33','884 American Court','Seattle','Washington','70629','206-728-0185',130),('Cummine','Freda','Apache','Female','2019-07-12 12:05:21','25346 Tennessee Plaza','Oceanside','California','14713','858-951-6514',131),('Snazle','Felicle','Chamorro','Female','1952-09-12 08:42:35','23 Blaine Point','Chattanooga','Tennessee','20030','423-280-5989',132),('Bispham','Tammie','Colombian','Female','1963-05-15 03:47:55','0 Claremont Terrace','Cleveland','Ohio','14489','216-157-9661',133),('Porcas','Sterne','Chamorro','Male','1979-04-01 00:31:29','59476 Browning Alley','Jacksonville','Florida','04763','904-221-6819',134),('Noore','Corby','Guatemalan','Male','2002-08-14 18:48:34','284 Homewood Plaza','Bronx','New York','14092','914-473-8358',135),('Lisamore','Dore','Samoan','Female','1993-04-19 09:26:17','1116 Bobwhite Avenue','Pensacola','Florida','59894','850-153-8561',136),('Hebblewhite','Rolando','Paiute','Male','1991-07-26 21:34:03','9322 Golden Leaf Pass','Gainesville','Florida','98362','352-752-6623',137),('Berndsen','Brad','Korean','Male','1920-11-12 09:14:55','265 Arapahoe Park','Long Beach','California','87159','562-273-6833',138),('Dicker','Beret','Lumbee','Female','2013-09-30 18:30:12','88 Golden Leaf Way','Asheville','North Carolina','25946','828-267-2826',139),('Mackley','Dallon','Mexican','Male','1977-09-09 00:30:46','6864 Weeping Birch Road','Reno','Nevada','02628','775-943-2242',140),('Adshad','Brew','Yuman','Male','2010-12-21 23:41:08','76 Clove Junction','Bronx','New York','52498','917-741-3405',141),('Tardiff','Kyla','Native Hawaiian and Other Pacific Islander (NHPI)','Female','1944-02-17 17:42:35','5167 Rusk Center','Jefferson City','Missouri','72707','573-922-8035',142),('Rehorek','Yank','Samoan','Male','1932-04-16 10:47:59','351 Summit Avenue','Seattle','Washington','19478','206-141-7244',143),('Sherrell','Terrell','Polynesian','Male','1985-10-21 03:40:16','48567 Bellgrove Place','San Antonio','Texas','76753','210-237-5869',144),('Bonhome','Freemon','Kiowa','Male','1935-10-31 04:03:57','02 Delaware Way','Washington','District of Columbia','85373','202-965-5451',145),('Janks','Lesley','Paraguayan','Male','1992-03-31 18:39:28','3450 Ohio Plaza','Detroit','Michigan','94522','313-332-1286',146),('Brehault','Rollie','Native Hawaiian and Other Pacific Islander (NHPI)','Male','1932-03-15 07:04:14','08 Arizona Crossing','Miami','Florida','90875','786-495-8881',147),('McCooke','Ravid','Asian','Male','2002-05-27 03:11:23','7337 Veith Circle','Newark','Delaware','11814','302-472-5753',148),('Monsey','Zorine','Puerto Rican','Female','1953-06-15 17:29:36','162 Harper Junction','Lincoln','Nebraska','95845','402-504-2455',149),('Chyuerton','Elsa','Asian Indian','Female','1940-02-15 17:11:00','2009 Moulton Place','El Paso','Texas','12626','915-290-2479',150),('Paramor','Wain','Dominican (Dominican Republic)','Male','2013-02-27 13:05:14','9634 Spenser Court','Cleveland','Ohio','03619','216-773-2948',151),('Cohr','Reube','Costa Rican','Male','1933-09-21 04:05:59','63897 Mesta Hill','Huntsville','Alabama','05058','256-732-7507',152),('Gillibrand','Domingo','Comanche','Male','1974-01-26 04:14:05','70 Novick Drive','Modesto','California','59536','559-806-6513',153),('Melonby','Philip','Puerto Rican','Male','1957-05-26 08:33:00','570 Gina Center','Spring','Texas','32711','713-976-3733',154),('Ofield','Marni','Costa Rican','Female','1932-05-15 01:54:25','5 Arrowood Circle','Berkeley','California','81552','510-907-0761',155),('Finey','Kearney','Puerto Rican','Male','1963-06-04 23:05:03','4666 Anhalt Plaza','Honolulu','Hawaii','13278','808-154-3262',156),('Prys','Kelley','Paraguayan','Female','1947-06-10 06:04:23','6 Debs Court','Harrisburg','Pennsylvania','79213','717-528-7254',157),('Croxon','Estrellita','Guamanian','Female','1996-07-29 00:48:01','8841 Onsgard Avenue','Evansville','Indiana','87130','812-412-4629',158),('O\'Day','Leigh','Colombian','Male','2010-08-30 14:27:39','9 Dovetail Trail','Tulsa','Oklahoma','85688','918-566-6050',159),('McGavigan','Coral','Sioux','Female','1997-08-12 03:41:29','3176 Merchant Parkway','Madison','Wisconsin','67469','608-419-7951',160),('Mitchall','Hilly','American Indian and Alaska Native (AIAN)','Male','1936-12-20 04:23:25','57 Sherman Crossing','Saint Louis','Missouri','54895','314-249-0636',161),('Brasner','Hyatt','Comanche','Male','1969-04-22 13:44:23','407 Green Ridge Park','Delray Beach','Florida','43694','561-566-6966',162),('Udden','Kameko','Micronesian','Female','1983-10-18 11:11:03','2 Steensland Parkway','Richmond','Virginia','70069','804-493-4420',163),('Pimer','Shaylah','Iroquois','Female','1964-11-01 19:44:25','56 Pine View Court','Milwaukee','Wisconsin','35981','414-689-4496',164),('Astlett','Luciano','Chamorro','Male','1976-09-16 12:23:32','0 Vahlen Pass','Oklahoma City','Oklahoma','60889','405-100-0088',165),('Lamblin','Lonnard','South American','Male','1931-03-07 12:54:51','542 Hallows Crossing','Roanoke','Virginia','76538','540-675-9837',166),('Grimwad','Tildie','Bangladeshi','Female','1944-03-23 04:37:17','5 Russell Trail','Roanoke','Virginia','44785','540-408-1748',167),('Winspur','Brockie','Chickasaw','Male','1945-09-13 08:15:41','03690 Fremont Place','Richmond','Virginia','29176','804-604-6133',168),('Banaszkiewicz','Georgeta','Ottawa','Female','1932-05-22 08:42:13','27550 Vidon Plaza','Sacramento','California','02761','916-961-8576',169),('Elvy','Darda','Paiute','Female','1956-06-01 18:51:44','76 Badeau Junction','San Diego','California','97267','619-498-3086',170),('Moraleda','Neysa','Micronesian','Female','1947-11-01 02:01:26','16 Harbort Street','Phoenix','Arizona','34152','623-876-7760',171),('Silly','Bryana','South American','Female','1962-04-30 12:24:00','0344 Stang Parkway','Green Bay','Wisconsin','29588','920-588-5118',172),('Kevis','Leda','Salvadoran','Female','2018-05-03 18:56:35','6 Valley Edge Circle','Rochester','New York','42333','585-175-3764',173),('Pawling','Chandra','Black or African American','Female','2006-05-05 01:25:49','50 Melvin Circle','Los Angeles','California','02401','213-554-6089',174),('Tolman','Tammy','Iroquois','Male','1952-08-22 00:02:29','04 Eastlawn Parkway','Peoria','Illinois','35554','309-490-5991',175),('Turnell','Daune','Choctaw','Female','1997-03-26 23:10:07','601 Daystar Street','Saint Louis','Missouri','58696','314-915-5949',176),('Reinisch','Donn','Chinese','Male','1992-03-27 20:15:45','99 Loftsgordon Road','El Paso','Texas','42232','915-236-2533',177),('Fearnill','Butch','Alaska Native','Male','1940-07-23 08:35:57','203 Holy Cross Plaza','Inglewood','California','99889','310-639-5118',178),('Powdrill','Abbott','Samoan','Male','1967-03-10 22:31:53','2 Kipling Drive','Springfield','Missouri','98954','417-631-4485',179),('Treanor','Cullie','Hmong','Male','1987-01-05 04:32:16','37 Hovde Avenue','Tucson','Arizona','70975','520-241-3687',180),('Richter','Alejoa','Eskimo','Male','1975-05-11 09:25:48','77606 Fremont Alley','Portsmouth','New Hampshire','74018','603-324-1341',181),('Doe','Nikoletta','Latin American Indian','Female','2009-08-06 01:48:01','22 Nelson Avenue','Fargo','North Dakota','20624','701-419-2394',182),('Tyndall','Paco','Indonesian','Male','1989-04-03 17:05:07','81851 Roxbury Circle','Saint Petersburg','Florida','19125','727-654-3039',183),('Friar','Britt','Comanche','Male','1972-11-24 16:38:11','98462 Katie Point','Syracuse','New York','64525','315-643-6850',184),('Alldridge','Augustina','Bangladeshi','Female','1947-08-15 05:52:59','8 Lunder Trail','Roanoke','Virginia','38307','540-792-2008',185),('Monni','Constance','Seminole','Female','1969-11-14 09:14:51','977 Pleasure Road','Waterloo','Iowa','10219','319-316-7185',186),('Gerhts','Vito','Pima','Male','1926-12-25 02:16:48','50525 Kropf Parkway','Detroit','Michigan','48987','313-675-4191',187),('Sebert','Kristopher','Apache','Male','1920-07-29 17:28:52','9480 Dwight Lane','Dayton','Ohio','28393','937-531-9287',188),('Filyakov','Dareen','Yuman','Female','1989-09-25 00:01:02','2601 Ridgeview Pass','Delray Beach','Florida','29999','561-373-9585',189),('Amsberger','Vincents','Polynesian','Male','1938-05-18 19:32:23','245 Thackeray Drive','Columbus','Ohio','15248','614-652-1785',190),('McClaurie','Gustie','Polynesian','Female','1982-09-28 20:29:43','5 Linden Alley','Springfield','Illinois','74502','217-688-6200',191),('O\'Leagham','Elliott','Tohono O\'Odham','Male','2004-11-04 16:47:37','6965 Homewood Drive','Sacramento','California','77709','916-249-8394',192),('Haggie','Vania','Vietnamese','Female','1966-09-22 00:09:36','1585 Darwin Road','Palatine','Illinois','93839','847-905-2252',193),('Corrison','Saul','Shoshone','Male','1994-04-08 20:21:27','77 Gerald Circle','Saint Louis','Missouri','80496','314-156-7301',194),('Wisher','Blythe','Salvadoran','Female','1973-12-28 18:41:25','9383 Vera Plaza','Laurel','Maryland','46927','410-500-7653',195),('Wailes','Alfie','Dominican (Dominican Republic)','Female','1979-03-05 14:04:06','6541 Cardinal Place','Miami','Florida','07578','305-510-8291',196),('Tomsen','Jerald','Chickasaw','Male','1983-02-03 02:59:59','4 Summerview Trail','Des Moines','Iowa','31489','515-342-3329',197),('Frake','Harrietta','Native Hawaiian and Other Pacific Islander (NHPI)','Female','1946-06-08 01:55:14','03 Miller Way','San Bernardino','California','94184','951-685-6591',198),('Steen','Mason','Pakistani','Male','2002-01-20 07:48:00','50 Sundown Lane','Waterbury','Connecticut','05508','203-953-7575',199),('Frift','Maury','Aleut','Male','1933-03-21 00:24:09','39794 Northridge Avenue','Fairfield','Connecticut','09878','203-376-2285',200);
/*!40000 ALTER TABLE `Personal_Information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `State_Dep_Health`
--

DROP TABLE IF EXISTS `State_Dep_Health`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `State_Dep_Health` (
  `state_dep_health_state_id` int NOT NULL AUTO_INCREMENT,
  `state_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`state_dep_health_state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `State_Dep_Health`
--

LOCK TABLES `State_Dep_Health` WRITE;
/*!40000 ALTER TABLE `State_Dep_Health` DISABLE KEYS */;
INSERT INTO `State_Dep_Health` VALUES (1,'Louisiana'),(2,'Texas'),(3,'Colorado'),(4,'Washington'),(5,'Idaho'),(6,'Oregon'),(7,'Delaware'),(8,'California'),(9,'Tennessee'),(10,'New York');
/*!40000 ALTER TABLE `State_Dep_Health` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Supply`
--

DROP TABLE IF EXISTS `Supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Supply` (
  `supply_id` int NOT NULL AUTO_INCREMENT,
  `inventory` int DEFAULT NULL,
  `treatment_id` int DEFAULT NULL,
  `hospital_id` int NOT NULL,
  `state_dep_health_id` int NOT NULL,
  `item_id` int NOT NULL,
  PRIMARY KEY (`supply_id`),
  KEY `treatment_id_idx` (`treatment_id`),
  KEY `fk_supply_Hospitals1_idx` (`hospital_id`,`state_dep_health_id`),
  KEY `fk_Supply_Item_Description1_idx` (`item_id`),
  CONSTRAINT `fk_supply_Hospitals1` FOREIGN KEY (`hospital_id`, `state_dep_health_id`) REFERENCES `Hospitals` (`hospital_id`, `state_dep_health_state_id`),
  CONSTRAINT `fk_Supply_Item_Description1` FOREIGN KEY (`item_id`) REFERENCES `Item_Description` (`item_id`),
  CONSTRAINT `treatment_id` FOREIGN KEY (`treatment_id`) REFERENCES `Treatments` (`treatment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Supply`
--

LOCK TABLES `Supply` WRITE;
/*!40000 ALTER TABLE `Supply` DISABLE KEYS */;
INSERT INTO `Supply` VALUES (1,208,46,7,3,41),(2,280,5,26,7,100),(3,252,134,34,2,52),(4,10,93,39,7,53),(5,391,81,42,7,80),(6,389,95,22,1,88),(7,83,16,35,5,13),(8,465,2,48,3,67),(9,323,111,49,5,83),(10,418,177,28,8,98),(11,82,91,46,1,77),(12,109,152,35,5,58),(13,417,149,44,7,54),(14,71,121,23,5,45),(15,251,13,35,5,86),(16,410,92,14,4,43),(17,422,35,2,9,87),(18,360,157,7,3,44),(19,385,99,22,1,62),(20,5,120,37,8,26),(21,272,102,12,2,17),(22,408,64,19,5,96),(23,462,141,33,6,17),(24,226,164,26,7,11),(25,385,191,35,5,93),(26,393,164,27,2,26),(27,180,31,12,2,44),(28,342,175,10,6,3),(29,264,131,18,7,92),(30,169,157,48,3,72),(31,151,115,32,5,89),(32,286,58,46,1,41),(33,238,158,39,7,15),(34,40,181,14,4,71),(35,495,131,49,5,78),(36,219,101,46,1,69),(37,482,108,12,2,69),(38,128,11,3,3,97),(39,358,112,29,5,90),(40,246,99,27,2,52),(41,463,168,42,7,47),(42,306,63,10,6,13),(43,357,81,3,3,54),(44,29,41,6,10,100),(45,407,52,36,9,26),(46,242,104,23,5,56),(47,154,141,50,1,13),(48,465,167,14,4,28),(49,24,195,33,6,27),(50,408,174,2,9,23),(51,489,162,40,6,47),(52,150,92,29,5,7),(53,157,19,28,8,68),(54,345,161,29,5,76),(55,448,167,31,8,54),(56,400,20,4,9,66),(57,41,104,3,3,38),(58,310,135,31,8,85),(59,278,134,23,5,36),(60,323,157,27,2,36),(61,305,20,15,10,60),(62,485,123,14,4,48),(63,396,116,50,1,38),(64,360,79,44,7,75),(65,487,15,21,4,22),(66,360,57,42,7,47),(67,470,12,35,5,80),(68,176,126,19,5,60),(69,50,199,35,5,66),(70,214,81,23,5,46),(71,365,89,38,7,12),(72,44,161,3,3,20),(73,181,195,23,5,76),(74,74,138,35,5,43),(75,144,27,9,3,47),(76,249,85,20,1,84),(77,206,127,6,10,52),(78,228,104,46,1,12),(79,100,142,43,7,56),(80,140,172,47,6,10),(81,233,158,25,1,27),(82,321,199,27,2,38),(83,82,195,25,1,15),(84,206,102,25,1,13),(85,380,12,41,2,73),(86,487,21,25,1,43),(87,93,4,4,9,64),(88,96,94,24,9,28),(89,430,152,8,2,87),(90,379,30,43,7,84),(91,428,62,28,8,64),(92,313,123,39,7,89),(93,191,168,48,3,2),(94,328,74,21,4,9),(95,71,8,36,9,60),(96,172,137,44,7,41),(97,107,91,9,3,31),(98,14,30,9,3,99),(99,461,83,37,8,26),(100,211,123,23,5,48);
/*!40000 ALTER TABLE `Supply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Testing_Facilities`
--

DROP TABLE IF EXISTS `Testing_Facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Testing_Facilities` (
  `facility_id` int NOT NULL AUTO_INCREMENT,
  `state_dep_health_state_id` int NOT NULL,
  `facility_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`facility_id`,`state_dep_health_state_id`),
  KEY `fk_Testing Facilities_State_Dep_Health1_idx` (`state_dep_health_state_id`),
  CONSTRAINT `fk_Testing Facilities_State_Dep_Health1` FOREIGN KEY (`state_dep_health_state_id`) REFERENCES `State_Dep_Health` (`state_dep_health_state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Testing_Facilities`
--

LOCK TABLES `Testing_Facilities` WRITE;
/*!40000 ALTER TABLE `Testing_Facilities` DISABLE KEYS */;
INSERT INTO `Testing_Facilities` VALUES (1,6,'Schultz facility'),(2,2,'Krajcik facility'),(3,9,'Stiedemann facility'),(4,3,'Cormier facility'),(5,1,'Leuschke facility'),(6,9,'Muller facility'),(7,7,'Von facility'),(8,10,'Thiel facility'),(9,7,'Willms facility'),(10,1,'Hirthe facility'),(11,5,'Hermiston facility'),(12,7,'Kessler facility'),(13,1,'White facility'),(14,2,'Howe facility'),(15,1,'Hahn facility'),(16,7,'Johns facility'),(17,6,'Moore facility'),(18,7,'Spencer facility'),(19,8,'Konopelski facility'),(20,8,'Stark facility'),(21,7,'Senger facility'),(22,3,'Rogahn facility'),(23,2,'Muller facility'),(24,1,'Heathcote facility'),(25,7,'Bergstrom facility'),(26,6,'Wisozk facility'),(27,2,'VonRueden facility'),(28,8,'Walter facility'),(29,2,'Schulist facility'),(30,5,'Tremblay facility'),(31,3,'Stracke facility'),(32,8,'Bernhard facility'),(33,6,'Ankunding facility'),(34,7,'Hudson facility'),(35,8,'Kris facility'),(36,8,'Johnston facility'),(37,2,'Schimmel facility'),(38,9,'Heller facility'),(39,1,'Schuster facility'),(40,7,'Runolfsdottir facility'),(41,10,'Paucek facility'),(42,7,'Kunde facility'),(43,2,'Larkin facility'),(44,3,'Thiel facility'),(45,5,'Kertzmann facility'),(46,3,'Russel facility'),(47,7,'Herman facility'),(48,3,'Bernier facility'),(49,1,'Thompson facility'),(50,5,'Kohler facility'),(51,6,'Schmitt facility'),(52,6,'Connelly facility'),(53,6,'Thiel facility'),(54,1,'Breitenberg facility'),(55,5,'Kunde facility'),(56,3,'Donnelly facility'),(57,7,'Bednar facility'),(58,3,'Konopelski facility'),(59,3,'Champlin facility'),(60,3,'Wiegand facility'),(61,7,'Bayer facility'),(62,7,'Homenick facility'),(63,1,'Dach facility'),(64,9,'Kirlin facility'),(65,5,'Cummings facility'),(66,9,'Abshire facility'),(67,1,'Hermiston facility'),(68,10,'Schamberger facility'),(69,7,'Runolfsdottir facility'),(70,4,'Stokes facility'),(71,4,'Terry facility'),(72,5,'Reichert facility'),(73,9,'Gutmann facility'),(74,7,'Nader facility'),(75,9,'Simonis facility');
/*!40000 ALTER TABLE `Testing_Facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tests`
--

DROP TABLE IF EXISTS `Tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tests` (
  `test_id` int NOT NULL AUTO_INCREMENT,
  `facility_id` int NOT NULL,
  `state_dep_health_state_id` int NOT NULL,
  `lab_id` int NOT NULL,
  `test_date` datetime DEFAULT NULL,
  PRIMARY KEY (`test_id`,`facility_id`,`state_dep_health_state_id`,`lab_id`),
  KEY `fk_Testing_Facilities_has_Lab_Lab1_idx` (`lab_id`),
  KEY `fk_Testing_Facilities_has_Lab_Testing_Facilities1_idx` (`facility_id`,`state_dep_health_state_id`),
  CONSTRAINT `fk_Testing_Facilities_has_Lab_Lab1` FOREIGN KEY (`lab_id`) REFERENCES `Lab` (`lab_id`),
  CONSTRAINT `fk_Testing_Facilities_has_Lab_Testing_Facilities1` FOREIGN KEY (`facility_id`, `state_dep_health_state_id`) REFERENCES `Testing_Facilities` (`facility_id`, `state_dep_health_state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tests`
--

LOCK TABLES `Tests` WRITE;
/*!40000 ALTER TABLE `Tests` DISABLE KEYS */;
INSERT INTO `Tests` VALUES (1,53,6,19,'2020-06-09 18:48:30'),(2,19,8,25,'2020-05-12 21:38:46'),(3,17,6,36,'2020-04-01 02:18:05'),(4,50,5,35,'2020-06-19 14:05:28'),(5,24,1,35,'2020-08-12 15:27:33'),(6,58,3,9,'2020-07-09 06:07:00'),(7,7,7,26,'2020-10-12 04:26:18'),(8,71,4,40,'2020-03-26 11:50:05'),(9,73,9,36,'2020-10-17 02:23:34'),(10,37,2,9,'2020-04-13 14:20:49'),(11,10,1,30,'2020-07-12 09:57:10'),(12,29,2,34,'2020-04-06 09:18:27'),(13,64,9,27,'2020-06-08 05:06:10'),(14,19,8,3,'2020-08-13 21:35:56'),(15,40,7,38,'2020-04-21 10:27:01'),(16,29,2,26,'2020-07-13 22:49:46'),(17,46,3,33,'2020-08-03 15:09:30'),(18,41,10,28,'2020-10-04 14:05:15'),(19,27,2,26,'2020-08-15 06:47:28'),(20,21,7,2,'2020-07-30 16:46:57'),(21,69,7,9,'2020-08-30 23:08:49'),(22,16,7,35,'2020-09-21 03:43:48'),(23,17,6,32,'2020-05-04 23:32:53'),(24,74,7,29,'2020-03-24 19:58:24'),(25,26,6,8,'2020-04-19 05:42:04'),(26,45,5,9,'2020-03-18 15:47:52'),(27,2,2,24,'2020-07-05 21:08:21'),(28,48,3,8,'2020-07-20 20:15:02'),(29,71,4,31,'2020-05-24 16:57:00'),(30,17,6,18,'2020-04-24 17:48:09'),(31,31,3,25,'2020-04-03 09:36:27'),(32,67,1,35,'2020-08-03 16:21:13'),(33,39,1,28,'2020-05-12 07:42:08'),(34,36,8,3,'2020-07-09 04:24:17'),(35,61,7,15,'2020-09-06 01:33:58'),(36,52,6,30,'2020-07-15 05:14:54'),(37,12,7,23,'2020-08-22 11:23:46'),(38,8,10,34,'2020-09-29 08:24:53'),(39,4,3,3,'2020-05-02 00:28:10'),(40,31,3,12,'2020-06-02 20:00:07'),(41,30,5,15,'2020-03-17 01:49:02'),(42,63,1,6,'2020-07-20 14:34:37'),(43,58,3,21,'2020-10-13 02:10:01'),(44,38,9,29,'2020-05-21 18:56:32'),(45,26,6,38,'2020-08-18 12:24:20'),(46,10,1,8,'2020-03-22 01:58:10'),(47,5,1,10,'2020-03-21 15:00:56'),(48,67,1,5,'2020-08-31 18:13:36'),(49,2,2,30,'2020-09-21 09:48:14'),(50,63,1,36,'2020-09-29 13:11:11'),(51,69,7,19,'2020-10-12 11:18:40'),(52,43,2,15,'2020-08-01 15:26:10'),(53,20,8,33,'2020-07-14 07:51:52'),(54,2,2,6,'2020-08-25 11:47:31'),(55,28,8,35,'2020-07-05 09:21:21'),(56,4,3,17,'2020-08-01 02:54:06'),(57,42,7,31,'2020-04-11 19:35:12'),(58,69,7,18,'2020-07-29 15:10:56'),(59,43,2,1,'2020-10-17 16:49:29'),(60,68,10,3,'2020-10-05 20:39:16'),(61,63,1,4,'2020-07-24 20:37:50'),(62,15,1,35,'2020-06-01 01:33:53'),(63,40,7,3,'2020-08-18 23:32:31'),(64,26,6,4,'2020-06-15 04:38:36'),(65,9,7,9,'2020-09-16 15:20:43'),(66,9,7,32,'2020-10-19 00:33:41'),(67,28,8,23,'2020-06-12 02:31:30'),(68,52,6,32,'2020-08-23 04:44:11'),(69,20,8,1,'2020-07-27 04:38:41'),(70,2,2,10,'2020-03-27 23:13:28'),(71,17,6,20,'2020-04-25 18:16:34'),(72,19,8,1,'2020-05-07 03:11:05'),(73,62,7,34,'2020-04-25 10:41:06'),(74,17,6,32,'2020-05-25 07:13:37'),(75,23,2,26,'2020-09-21 12:52:04'),(76,67,1,25,'2020-07-12 23:22:36'),(77,70,4,30,'2020-04-26 07:26:22'),(78,33,6,38,'2020-08-01 06:10:57'),(79,15,1,20,'2020-10-15 22:35:29'),(80,29,2,24,'2020-06-26 09:26:36'),(81,7,7,35,'2020-05-23 03:56:55'),(82,63,1,19,'2020-04-23 16:28:15'),(83,36,8,30,'2020-07-20 06:54:10'),(84,22,3,39,'2020-10-07 10:33:53'),(85,1,6,3,'2020-04-01 09:08:59'),(86,44,3,3,'2020-07-20 09:59:27'),(87,73,9,39,'2020-07-21 02:04:36'),(88,41,10,20,'2020-06-13 18:35:32'),(89,37,2,22,'2020-08-20 11:01:55'),(90,49,1,36,'2020-04-14 04:43:26'),(91,51,6,39,'2020-09-25 15:27:35'),(92,23,2,12,'2020-09-23 19:46:21'),(93,9,7,33,'2020-09-28 10:57:50'),(94,75,9,37,'2020-10-09 13:40:01'),(95,73,9,21,'2020-09-30 09:29:12'),(96,45,5,15,'2020-09-25 18:02:48'),(97,30,5,30,'2020-04-15 14:51:09'),(98,51,6,34,'2020-09-03 02:57:03'),(99,70,4,3,'2020-07-02 07:01:57'),(100,35,8,6,'2020-10-08 00:27:58'),(101,65,5,20,'2020-08-07 21:07:07'),(102,68,10,12,'2020-09-28 13:21:23'),(103,68,10,12,'2020-07-07 16:36:30'),(104,5,1,39,'2020-07-24 13:37:11'),(105,23,2,3,'2020-07-01 17:23:53'),(106,46,3,29,'2020-10-15 16:51:11'),(107,40,7,17,'2020-04-01 02:59:51'),(108,22,3,28,'2020-03-22 00:35:35'),(109,55,5,36,'2020-08-25 04:05:51'),(110,45,5,27,'2020-08-19 05:13:07'),(111,36,8,39,'2020-10-07 03:35:15'),(112,7,7,9,'2020-04-07 14:39:59'),(113,13,1,21,'2020-06-28 19:42:49'),(114,38,9,18,'2020-08-13 06:12:33'),(115,39,1,9,'2020-07-03 06:31:27'),(116,26,6,14,'2020-04-17 11:42:10'),(117,39,1,26,'2020-09-24 16:15:06'),(118,58,3,29,'2020-03-29 20:30:37'),(119,10,1,30,'2020-07-15 06:33:20'),(120,49,1,30,'2020-04-07 22:14:52'),(121,63,1,18,'2020-10-18 04:36:52'),(122,62,7,10,'2020-07-16 09:13:23'),(123,71,4,37,'2020-03-18 10:42:42'),(124,64,9,4,'2020-06-28 08:32:17'),(125,21,7,27,'2020-07-12 19:13:02'),(126,31,3,39,'2020-10-21 16:36:38'),(127,41,10,16,'2020-08-02 03:49:53'),(128,10,1,21,'2020-07-31 13:09:53'),(129,60,3,27,'2020-07-20 06:23:05'),(130,45,5,28,'2020-05-14 18:06:28'),(131,59,3,39,'2020-03-18 20:26:11'),(132,15,1,30,'2020-10-08 15:06:30'),(133,6,9,22,'2020-10-19 16:14:41'),(134,26,6,39,'2020-10-02 17:41:01'),(135,32,8,13,'2020-09-20 01:40:21'),(136,41,10,25,'2020-08-07 00:44:32'),(137,14,2,13,'2020-09-25 11:52:41'),(138,33,6,36,'2020-06-13 20:07:13'),(139,75,9,27,'2020-10-13 06:17:47'),(140,30,5,40,'2020-04-19 00:57:51'),(141,48,3,9,'2020-06-23 12:58:35'),(142,46,3,36,'2020-07-23 19:33:52'),(143,63,1,29,'2020-05-15 00:09:11'),(144,26,6,20,'2020-05-15 16:10:52'),(145,72,5,37,'2020-07-07 08:16:16'),(146,14,2,36,'2020-05-10 20:23:19'),(147,59,3,24,'2020-06-22 05:56:34'),(148,75,9,10,'2020-07-22 07:41:21'),(149,34,7,27,'2020-06-14 03:41:02'),(150,69,7,7,'2020-07-30 08:55:10'),(151,1,6,27,'2020-03-31 01:57:01'),(152,19,8,20,'2020-06-28 07:38:28'),(153,11,5,30,'2020-06-14 01:36:58'),(154,57,7,16,'2020-09-15 22:22:11'),(155,30,5,5,'2020-07-22 07:13:29'),(156,41,10,36,'2020-05-16 19:03:14'),(157,56,3,8,'2020-08-24 11:36:05'),(158,13,1,15,'2020-08-30 03:18:34'),(159,47,7,35,'2020-05-21 07:57:02'),(160,41,10,18,'2020-10-17 02:19:41'),(161,3,9,18,'2020-06-03 19:10:44'),(162,42,7,15,'2020-07-31 17:31:51'),(163,36,8,26,'2020-04-26 12:56:04'),(164,37,2,31,'2020-08-03 19:59:53'),(165,2,2,3,'2020-09-08 04:48:00'),(166,31,3,17,'2020-10-16 01:51:13'),(167,57,7,30,'2020-09-30 23:35:33'),(168,36,8,24,'2020-09-05 05:34:09'),(169,40,7,9,'2020-08-28 10:38:18'),(170,4,3,27,'2020-07-13 11:10:14'),(171,75,9,32,'2020-08-06 13:17:02'),(172,62,7,27,'2020-04-12 12:54:31'),(173,19,8,1,'2020-08-24 08:40:47'),(174,73,9,15,'2020-03-27 13:07:06'),(175,38,9,15,'2020-05-31 22:29:43'),(176,35,8,35,'2020-08-06 15:16:06'),(177,30,5,28,'2020-04-26 15:35:19'),(178,9,7,1,'2020-08-06 13:29:28'),(179,32,8,20,'2020-09-30 19:15:59'),(180,17,6,21,'2020-06-27 16:54:47'),(181,45,5,34,'2020-09-30 05:01:08'),(182,31,3,1,'2020-07-29 07:35:29'),(183,3,9,12,'2020-03-27 19:08:56'),(184,3,9,29,'2020-08-11 05:43:55'),(185,59,3,5,'2020-05-11 20:03:03'),(186,28,8,30,'2020-05-08 16:31:56'),(187,61,7,11,'2020-05-27 23:20:50'),(188,48,3,19,'2020-10-07 21:34:32'),(189,75,9,13,'2020-07-21 03:04:00'),(190,34,7,29,'2020-07-13 18:07:00'),(191,4,3,9,'2020-07-29 07:54:35'),(192,40,7,28,'2020-10-14 16:57:24'),(193,56,3,15,'2020-09-14 01:36:40'),(194,19,8,8,'2020-07-07 07:43:31'),(195,22,3,9,'2020-07-05 06:14:48'),(196,74,7,2,'2020-04-04 09:36:15'),(197,23,2,28,'2020-06-10 19:11:30'),(198,75,9,20,'2020-04-06 06:44:46'),(199,31,3,29,'2020-08-23 05:59:11'),(200,51,6,8,'2020-08-15 16:07:40');
/*!40000 ALTER TABLE `Tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Treatments`
--

DROP TABLE IF EXISTS `Treatments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Treatments` (
  `treatment_method_id` int NOT NULL AUTO_INCREMENT,
  `treatment_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`treatment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Treatments`
--

LOCK TABLES `Treatments` WRITE;
/*!40000 ALTER TABLE `Treatments` DISABLE KEYS */;
INSERT INTO `Treatments` VALUES (1,'Methylprednisolone Acetate'),(2,'SHISEIDO SHEER AND PERFECT FOUNDATION'),(3,'cold'),(4,'ReCreate Foundation'),(5,'Antibacterial Hand Sanitizer'),(6,'Olanzapine'),(7,'DOCEFREZ'),(8,'Warfarin Sodium'),(9,'Bayberry'),(10,'PhytoGel'),(11,'ADVATE'),(12,'Venlafaxine Hydrochloride'),(13,'Acetaminophen and Codeine Phosphate'),(14,'Hongo Killer'),(15,'Deb Med Antimicrobial Foaming Hand Wash Fresh Grapefruit'),(16,'Morphine Sulfate'),(17,'BANANA BOAT'),(18,'Zolpidem Tartrate'),(19,'Bayer Genuine Aspirin'),(20,'Neomycin and Polymyxin B Sulfates and Hydrocortisone'),(21,'QUERCUS AGRIFOLIA POLLEN'),(22,'Everyday Sunscreen Broad Spectrum SPF 50'),(23,'Methylprednisolone Sodium Succinate'),(24,'Tolterodine Tartrate'),(25,'ESIKA Extreme Moisturizing SPF 16'),(26,'Ibuprofen'),(27,'Savella'),(28,'Mometasone Furoate'),(29,'Ibuprofen'),(30,'FENTANYL'),(31,'Nu Skin Tri-Phasic White Day Milk Broad Spectrum SPF 15'),(32,'Diorskin Nude Natural Glow Makeup 050 Dark Beige'),(33,'TOPCARE MEDICATED CLEANSING PADS'),(34,'LORTUSS LQ'),(35,'Acyclovir'),(36,'Ropinirole Hydrochloride'),(37,'Mucus Relief DM Max'),(38,'LUXIQ'),(39,'Niaspan'),(40,'Topiramate'),(41,'Meteoric Iron Prunus'),(42,'Cardizem LA'),(43,'Fluoxetine Hydrochloride'),(44,'Lisinopril and Hydrochlorothiazide'),(45,'procure'),(46,'Chlordiazepoxide Hydrochloride and Clidinium Bromide'),(47,'aspirin'),(48,'Australian Gold'),(49,'Promethazine Hydrochloride'),(50,'Carboxymethylcellulose sodium'),(51,'Clonidine Hydrochloride'),(52,'Reserpine'),(53,'ELCURE AC-LEX Serum'),(54,'Cimicifuga Racemosa Kit Refill'),(55,'Disney Monsters University Antiseptic Hand Cleansing Grape Scented'),(56,'Direct Safety Aspirin Free'),(57,'FANAPT'),(58,'ANTI-AGING SUNSCREEN BROAD SPECTRUM SPF 30'),(59,'Lyme'),(60,'US Favorite Hot Pain Relieving'),(61,'CHELIDONIUM MAJUS'),(62,'FEMALE BALANCE'),(63,'Dovonex'),(64,'Nitrofurantion Macrocrystals'),(65,'Diltiazem Hydrochloride'),(66,'Berberis Larix'),(67,'PREPARATION H COOLING GEL'),(68,'Noble 1 Plus'),(69,'Haloperidol'),(70,'LBEL LEDERM 45plus Jour'),(71,'Health Mart Iodine Tincture Mild'),(72,'Labetalol Hydrochloride'),(73,'GMC Medical'),(74,'Carvedilol'),(75,'Renewing Antioxidant Treatment SPF 6'),(76,'METROGEL'),(77,'ESSENTIAL SOLUTION CAVIAR MASK SHEET'),(78,'IOPE SS'),(79,'Arthritic - Joint Care'),(80,'cold relief'),(81,'aspirin'),(82,'LBEL COULEUR LUXE AMPLIFIER XP'),(83,'pain relief'),(84,'Valtrum Soothing Topical Analgesic'),(85,'naproxen sodium'),(86,'Risperidone'),(87,'Enalapril Maleate and Hydrochlorothiazide'),(88,'Hydrochlorothiazide'),(89,'Valsartan and Hydrochlorothiazide'),(90,'Monistat 7 Combination Pack'),(91,'Clean and Clear'),(92,'Allergy Relief'),(93,'Terbinafine Hydrochloride'),(94,'Acne Medication 5'),(95,'Ramipril'),(96,'Suntan Lotion'),(97,'Doxycycline'),(98,'Treatment Set TS331579'),(99,'temazepam'),(100,'Ulta Vanilla Sugar Anti-Bacterial Deep Cleansing'),(101,'SkinMedica TNS Ultimate Daily Moisturizer Sunscreen SPF 20'),(102,'Cough and Cold HBP'),(103,'Meprobamate'),(104,'Galantamine'),(105,'Greasewood'),(106,'Benazepril Hydrochloride'),(107,'Linzess'),(108,'Cuprum aceticum Nicotiana'),(109,'ZOMIG ZMT'),(110,'CARBAMAZEPINE'),(111,'Lisinopril'),(112,'OLEA EUROPAEA POLLEN'),(113,'Frankincense and Myrrh Carpal Tunnel'),(114,'BareMinerals Fair Matte'),(115,'Nighttime Sleep Aid'),(116,'Childrens Ibuprofen'),(117,'Pure petroleum'),(118,'Colgate Cavity Protection'),(119,'XtraCare Foam Antibacterial Hand Wash'),(120,'GRANIX'),(121,'Banana Boat Baby Tear Free Lotion SPF 50'),(122,'topcare flu and severe cold and cough'),(123,'Adult Glycerin Laxative'),(124,'Cutivate'),(125,'PRAMIPEXOLE DIHYDROCHLORIDE'),(126,'Mens Kirkland'),(127,'Amoxicillin'),(128,'Suphedrine PE'),(129,'Krystexxa'),(130,'Zolpidem Tartrate'),(131,'Somatuline Depot'),(132,'FreAmine III'),(133,'ANTIBACTERIAL'),(134,'RYTHMOL'),(135,'hydrocodone bitartrate and acetaminophen'),(136,'PRAMIPEXOLE DIHYDROCHLORIDE'),(137,'Diabenex HP'),(138,'Dawn Ultra Antibacterial Hand'),(139,'Ranitidine'),(140,'Quetiapine Fumarate'),(141,'Allopurinol'),(142,'Melatonin'),(143,'Pediatric Cough and Cold Medicine'),(144,'Phenazopyridine Hydrochloride'),(145,'Indomethacin'),(146,'Eastern Cottonwood'),(147,'Musk Marine'),(148,'Propylthiouracil'),(149,'Pravastatin Sodium'),(150,'Rocky Mountain Juniper'),(151,'butalbital, acetaminophen and caffeine'),(152,'MESNA'),(153,'MOIST MOISTURE EYE'),(154,'Tussin Cough'),(155,'STUDIO FIX FLUID SPF 15 BROAD SPECTRUM'),(156,'Doxycycline'),(157,'Amoxicillin and Clavulanate Potassium'),(158,'INSOMNIA RELIEF'),(159,'Antispetic'),(160,'Bensal HP'),(161,'Smarth'),(162,'VP-PNV-DHA'),(163,'Nicotine'),(164,'Mountain Cedar'),(165,'Equaline nighttime cold'),(166,'oxycodone hydrochloride'),(167,'Childrens mucus relief multi-symptom cold'),(168,'Oxygen'),(169,'ESIKA HYDRACOLOR 2 IN 1 HIGHLY MOISTURIZING AND COLORING SPF 25'),(170,'Classic Care'),(171,'Pramipexole'),(172,'antacid plus gas relief'),(173,'VANIQA'),(174,'Rough Pigweed'),(175,'Hydrocodone Bitartrate and Acetaminophen'),(176,'Smooth Brome'),(177,'Caduet'),(178,'Crest Complete Multi-Benefit'),(179,'Folic Acid'),(180,'Bayer'),(181,'Acne and Blemish Target'),(182,'Paroxetine'),(183,'GAMMAGARD S/D'),(184,'amoxicillin and clavulanate potassium'),(185,'DR.G DEWRINKLE FORTIFIER'),(186,'Tyramine'),(187,'Warfarin Sodium'),(188,'Amikacin Sulfate'),(189,'Desert Essence Mineral Sunscreen SPF 35'),(190,'ARNICA MONTANA (WHOLE PLANT)'),(191,'Quetiapine Fumarate'),(192,'Sunmark womans laxative'),(193,'Degree'),(194,'Lorazepam'),(195,'Shopko Hydrocortisone Intensive Healing Formula'),(196,'Olivene'),(197,'Duetact'),(198,'Antibacterial Foam'),(199,'Boscia BB SPF 27 PA'),(200,'Dog Hair');
/*!40000 ALTER TABLE `Treatments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mm_cpsc502102team04'
--
/*!50003 DROP PROCEDURE IF EXISTS `getSupplyReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mm_cpsc502102team04`@`%` PROCEDURE `getSupplyReport`()
BEGIN
SELECT 
    inventory AS Inventory,
    Supply.hospital_id AS Hospital_ID,
    hospital_name AS Hospital_Name
FROM
    Supply
        JOIN
    Hospitals ON Hospitals.hospital_id = Supply.hospital_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTestReportsByState` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mm_cpsc502102team04`@`%` PROCEDURE `getTestReportsByState`(IN state VARCHAR(45))
BEGIN
SELECT 
    COUNT(*) AS Total_Tests, s.state_name
FROM
    Tests
        JOIN
    State_Dep_Health s USING (state_dep_health_state_id) where s.state_name = state;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTracers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`mm_cpsc502102team04`@`%` PROCEDURE `getTracers`(IN userId INT)
BEGIN
		SELECT 
			Checkins.business_id,
			Checkins.date,
			Cases.date_diagnosed,
			Cases.people_id
		FROM
			Cases
				JOIN
			People USING (people_id)
				JOIN
			Checkins ON Checkins.people_id = People.people_id
				AND (Checkins.business_id IN (SELECT 
					business_id
				FROM
					Checkins
				WHERE
					people_id = userId))
				AND (CAST(Checkins.checkin_date AS DATE) IN (SELECT 
					CAST(Checkins.checkin_date AS DATE)
				FROM
					Checkins
				WHERE
					people_id = userId))
				AND Cases.people_id <> userId
				AND CAST(Cases.date_diagnosed AS DATE) - CAST(Checkins.checkin_date AS DATE) <= 14;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-17 15:46:03
