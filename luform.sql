CREATE DATABASE  IF NOT EXISTS `luform` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `luform`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: luform
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2017_03_25_173952_create_pilgrim_infos_table',2),(4,'2017_03_25_174048_create_sponsor_infos_table',2),(5,'2017_03_25_174127_create_pastor_infos_table',2),(6,'2017_03_27_012230_add_user_type_to_users',3),(7,'2017_03_27_025017_add_pilgrim_id_to_sponsor_info',4),(8,'2017_03_28_012508_add_sponsorship_id_to_pastor_infos',5),(9,'2017_04_15_191952_update_pilgrims_aptsuite',6),(10,'2017_04_15_194407_allow_nulls',7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pastor_infos`
--

DROP TABLE IF EXISTS `pastor_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pastor_infos` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `churchname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `goodcandidateexplanation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `signed` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sponsorship_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pastor_infos`
--

LOCK TABLES `pastor_infos` WRITE;
/*!40000 ALTER TABLE `pastor_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pastor_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pilgrim_infos`
--

DROP TABLE IF EXISTS `pilgrim_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pilgrim_infos` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sponsor_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `aptsuite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bestcalltime` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `over18` tinyint(1) NOT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tagname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `marriagepartner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homechurch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homechurchcity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homechurchpastor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `homechurchattendance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialneeds` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reasontoattend` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `signed` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `maritalstatus` enum('single','married','separated','divorced','widowed') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pilgrim_infos`
--

LOCK TABLES `pilgrim_infos` WRITE;
/*!40000 ALTER TABLE `pilgrim_infos` DISABLE KEYS */;
INSERT INTO `pilgrim_infos` VALUES ('1234-abcd-1111-2222','4321-asdf-1111-4321','Big','Bird','1234 Sesame St','123','Bronx','NY','21016','212-123-4567','20:15','bigbird@ctw.org',1,'I\'m a bird','BiggieSmallBird','null','First United Methodist','Bronx','Rev Hooper','Rare','none','Forced',1,NULL,NULL,'single'),('27edeae0-1288-11e7-ab34-9bf63bf92191','4321-asdf-1111-4321','Elmo','Monster','1234 Sesame St','129','Bronx','NY','21016','212-123-4567','20:15','elmo@ctw.org',1,'I\'m a monster','LilRed','null','First United Methodist','Bronx','Rev Hooper','Rare','none','Court ordered',1,'2017-03-27 06:56:05','2017-03-27 06:56:05','single'),('5aee3150-2217-11e7-afc2-1d88d68f134c','321-asdf-1111-4321','Jim','Wharton','1234 Sesame St',NULL,'Brooklyn','NY','90036','904-445-3029','14:45','jim@hotmail.com',1,'Ditch Digger','Slick Willy',NULL,NULL,NULL,NULL,NULL,'[\"allergies\",\"dietary\"]','Cuz',1,'2017-04-16 02:08:56','2017-04-16 02:08:56','single'),('8f1f1e60-1289-11e7-b5e0-8d52e65d43b4','1111-2222-3333-4444','Harry','Monster','1234 Sesame St','125','Bronx','NY','21016','212-123-4567','18:00','harry@ctw.org',1,'I\'m a monster','BlueBlue','null','First United Methodist','Bronx','Rev Hooper','Rare','none','Court ordered (Elmo\'s Fault)',1,'2017-03-27 07:06:07','2017-03-27 07:06:07','single'),('ab8e2440-1293-11e7-80d0-0f07c4b220cc','1111-2222-3333-4444','Telly','Monster','1234 Sesame St','125','Bronx','NY','21016','212-123-4567','18:00','telly@ctw.org',1,'I\'m a whiny monster','WhinyBaby','null','First United Methodist','Bronx','Rev Hooper','Rare','none','I had nothing better to do',1,'2017-03-27 08:18:30','2017-03-27 08:18:30','single');
/*!40000 ALTER TABLE `pilgrim_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor_infos`
--

DROP TABLE IF EXISTS `sponsor_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsor_infos` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bestcalltime` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicantfullname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `baptizedlutheran` tinyint(1) NOT NULL,
  `hadcursillospousediscussion` tinyint(1) NOT NULL,
  `bothspousesattending` tinyint(1) NOT NULL,
  `singlespouseexplanation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cursilloattitude` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `plantosupport` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `otherapplicantinfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `goodcandidatereason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicantexpectations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `signed` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pilgrim_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor_infos`
--

LOCK TABLES `sponsor_infos` WRITE;
/*!40000 ALTER TABLE `sponsor_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `sponsor_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` enum('sponsor','pastor','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('321-asdf-1111-4321','Gordon','Jones','gordon@ctw.org','gordon1',NULL,NULL,NULL,'sponsor');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-29 21:29:20
