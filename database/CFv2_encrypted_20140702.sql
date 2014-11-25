CREATE DATABASE  IF NOT EXISTS `rosogonatos_sc2` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `rosogonatos_sc2`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 192.168.252.24    Database: rosogonatos_sc2
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Street` varchar(255) DEFAULT NULL,
  `StreetNo` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `County` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `ZipCode` varchar(255) DEFAULT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  `IsPrimary` bit(1) DEFAULT NULL,
  `persondata` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1ED033D44EAC96B0` (`persondata`),
  CONSTRAINT `FK1ED033D44EAC96B0` FOREIGN KEY (`persondata`) REFERENCES `persondata` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (31,'zJVdMGnxGRJQg/9VIWmtxg==','T4wVAblC1DE4wCvQF1FCkg==','gbDaG1/ODDaG3ZRvjzTHxw==','HeW21NcJ4o6NaoEv83acRQ==','eY0+EBXBFOkmfoeUQ7eITQ==','RHue6efvVw8qpk2YPQY93g==','iACgiBDIIX4HndmSLIlxOg==','\0',1000102),(32,'LyAgLSsN5hRg+Ks+a4G5NQ==','VjX4eTAfGD8aDwN/2hZWhQ==','BIhnJ7uMckpeI1/T+ZT8zA==','CNk/zzxYxkgdWOrhiKcd/w==','OP5wAwWef4j+xsca3gRyZQ==','eeRgqbgxvl61Cqk4wFYU8g==','Bo2NHU5RYD5yq9f1d6nFAA==','\0',1000103),(33,'ED9w3JVBilCiMRN8tSNLKA==','W4eLX2LipGxK0nhgazcxMQ==','WYuI1bZiX5O6UdQnSkB2Tg==','L93R2jRan27El2kn3Xakvw==','yIzx19D6nSNZJ8o36F60ag==','/EyxfzTyjCIkDQm259nm0w==','caUWzQS46LTOgvaeb6tTpA==','\0',1000104),(34,'ZAsl4LVtamiLekaUvb068g==','whd+vQMzDKWBejLVsR1OQw==','fxlyb0+lmuiF0IdiDAQNLw==','7XYHd7PKEMGBw4/7ruqKvQ==','Q0qtSUbtv4z0k/g7fhutSg==','/TbPXQlFvXgBrmvFAn/XaQ==','KyKIuOjJZsmxwjn2cpgxRQ==','\0',1000105),(35,'xzzPWCaA7vGb7i6xy8qNag==','vEy/JOySSNricqtkrBThkw==','Lf0eZk2xZZOZL76CQeGZmQ==','+NVK0wMheYWNLmOt65uSCQ==','I/MUQC6058G/Ho2mAm5x+w==','+nOEdAEmh+3h8vwgXmP9Yg==','1+UdyzwlLjsRrz2gNHxY2w==','\0',1000109),(36,'RJmVvfHINWukbAHL83+WxA==','5CQETjuarfwEQnaZNJ4lKQ==','QrqOR0ZnFft78vjKAF6WjQ==','S+tP+pOoboYvNmW1BY1PIQ==','f05h+0hgONYSy/ruGLffPQ==','m2pmsp2NmlBJY4STIUaFjQ==','GCOXOasVwbYd5dgI5lFfRw==','\0',1000110),(37,'6qIMvyTIkP1RHsWPQBK1cg==','q8utaT5gl7IZGZzOYeFPHg==','u4RaGzbM+SkFo6yiOgSS+g==','3PUAfV2eF+mKzVV9jo55Gw==','/eTgLa6JS8CuX/MLqs8f5g==','C+j/QRraVdH2QV8hWgJAqg==','PTXyPyivBhcmRvCTjGzVyA==','\0',1000111),(38,'YFkFVtIYm7l/NbeRYMwWKA==','mArk93f+u/OCgrBHGjSntw==','+Hh3qYtNOOGtrH9p9dSTiw==','FG50aR/TtutIjwK2g/sJyA==','Lszh0+kNxntYlUw5r5gkhg==','UQueg1Whj4cIxfaIwfSVTA==','94J2folBsU6HDiQgbnZfyA==','\0',1000112);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `personData` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8BEF2AD4EAC96B0` (`personData`),
  CONSTRAINT `FK8BEF2AD4EAC96B0` FOREIGN KEY (`personData`) REFERENCES `persondata` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000017 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (1000011,1000093),(1000012,1000106),(1000013,1000107),(1000014,1000108),(1000015,1000113),(1000016,1000114);
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aladdinuser`
--

DROP TABLE IF EXISTS `aladdinuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aladdinuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `personId` int(11) DEFAULT NULL,
  `locked` bit(1) DEFAULT b'0',
  `lastlogged` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logtries` smallint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fkrole_idx` (`type`),
  CONSTRAINT `fkrole` FOREIGN KEY (`type`) REFERENCES `ehealthroles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1000093 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aladdinuser`
--

LOCK TABLES `aladdinuser` WRITE;
/*!40000 ALTER TABLE `aladdinuser` DISABLE KEYS */;
INSERT INTO `aladdinuser` VALUES (1000071,'admin','9ibtMUHvuqiRjQt6qI5FXwAvTbTjx94CqCPXNA==',1,1000093,'\0','2014-07-02 05:07:38',0),(1000080,'b5328504c7330a','EFV7HwQMko6B32tyAcdSnEGy6AzYzb4LhL3UqQ==',2,1000102,'\0','2014-03-07 15:57:53',0),(1000081,'rosogonatos_sc','hDF3pQn/09GnKFG85NYFYyOh1YzAJ+z8CeMNSw==',2,1000103,'\0','2014-03-07 16:03:34',0),(1000082,'pebe','9ibtMUHvuqiRjQt6qI5FXwAvTbTjx94CqCPXNA==',2,1000104,'\0','2014-03-07 16:04:51',0),(1000083,'rsucasas','yB1qHc2ETFaKjOvAiBEyaPYxrbXW8VjGBSnbow==',2,1000105,'\0','2014-03-10 10:33:04',0),(1000084,'admin2','Rebtm0QOXUABx1sC/0HuOhaFhh0AmnNGmQdzZA==',1,1000106,'\0','2014-03-13 11:45:38',1),(1000085,'admin3','Ug0QjIq9QTJFMitO0r8a6BydvERJxAgpmqIxoQ==',1,1000107,'\0','2014-03-10 14:53:57',0),(1000086,'admin4','QPBRuTSz06glsfZnfRQ/gcSSjUxBuqz3ZNf7PA==',1,1000108,'\0','2014-03-10 14:54:32',0),(1000087,'feji','+7wScoY50/AKoK/hIaZo9SKkgwoeQDw69aIKLg==',2,1000109,'\0','2014-03-11 10:47:34',0),(1000088,'house','eGNvUyjCrAHUruFlUlYzF4rMOZair5SyNlx40A==',2,1000110,'\0','2014-06-27 10:39:04',0),(1000089,'felo','F/BWYrKDIsJV+6C2XBmNhG/W+/PWA6DnWAJgVQ==',3,1000111,'\0','2014-03-24 08:48:25',0),(1000090,'caco','AV7l4rBUD43Yk3b6JEbqBPPxBO1AGtgd2aUMzw==',4,1000112,'\0','2014-03-12 11:51:02',0),(1000091,'juju','dW/Aj/sh0TJ9U4MiaIpJ6T3ZiyM48lwam1eQBQ==',1,1000113,'\0','2014-04-07 12:50:02',0),(1000092,'rame','xhs+fk9ldVKQtymrb2J/RCAHCbB1kq7pzxBXGQ==',1,1000114,'\0','2014-04-14 08:26:18',0);
/*!40000 ALTER TABLE `aladdinuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carer`
--

DROP TABLE IF EXISTS `carer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `persondata` int(11) DEFAULT NULL,
  `sd` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3DDF7614EAC96B0` (`persondata`),
  KEY `FK3DDF761B1CF35A5` (`sd`),
  CONSTRAINT `FK3DDF7614EAC96B0` FOREIGN KEY (`persondata`) REFERENCES `persondata` (`id`),
  CONSTRAINT `FK3DDF761B1CF35A5` FOREIGN KEY (`sd`) REFERENCES `sociodemographicdata` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carer`
--

LOCK TABLES `carer` WRITE;
/*!40000 ALTER TABLE `carer` DISABLE KEYS */;
INSERT INTO `carer` VALUES (1,1000111,1);
/*!40000 ALTER TABLE `carer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carerassessment`
--

DROP TABLE IF EXISTS `carerassessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carerassessment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carer` int(11) DEFAULT NULL,
  `DateOfAssessment` datetime DEFAULT NULL,
  `RelevantHealthProblem` varchar(255) DEFAULT NULL,
  `SeverityOfBurden` int(11) DEFAULT NULL,
  `EmotionalOrMentalDisorder` varchar(255) DEFAULT NULL,
  `PsychoactiveDrugs` varchar(255) DEFAULT NULL,
  `QualityOfLife` int(11) DEFAULT NULL,
  `clinician` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9BE20503513C2A30` (`carer`),
  KEY `FK9BE20503F8FC050A` (`clinician`),
  CONSTRAINT `FK9BE20503513C2A30` FOREIGN KEY (`carer`) REFERENCES `carer` (`id`),
  CONSTRAINT `FK9BE20503F8FC050A` FOREIGN KEY (`clinician`) REFERENCES `clinician` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carerassessment`
--

LOCK TABLES `carerassessment` WRITE;
/*!40000 ALTER TABLE `carerassessment` DISABLE KEYS */;
/*!40000 ALTER TABLE `carerassessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clinician`
--

DROP TABLE IF EXISTS `clinician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clinician` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `persondata` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1501984E4EAC96B0` (`persondata`),
  CONSTRAINT `FK1501984E4EAC96B0` FOREIGN KEY (`persondata`) REFERENCES `persondata` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinician`
--

LOCK TABLES `clinician` WRITE;
/*!40000 ALTER TABLE `clinician` DISABLE KEYS */;
INSERT INTO `clinician` VALUES (18,1000102),(19,1000103),(20,1000104),(21,1000105),(22,1000109),(23,1000110);
/*!40000 ALTER TABLE `clinician` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communication`
--

DROP TABLE IF EXISTS `communication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(255) DEFAULT NULL,
  `Value` varchar(255) DEFAULT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  `IsPrimary` bit(1) DEFAULT NULL,
  `persondata` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKF1E9FFB64EAC96B0` (`persondata`),
  CONSTRAINT `FKF1E9FFB64EAC96B0` FOREIGN KEY (`persondata`) REFERENCES `persondata` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communication`
--

LOCK TABLES `communication` WRITE;
/*!40000 ALTER TABLE `communication` DISABLE KEYS */;
INSERT INTO `communication` VALUES (32,'phone','JCHn+FI/GhLIPK6idta2oFac5OlQc9Wd','KbvyLIEFtEE9WsDtVlqqXg==','\0',1000102),(33,'phone','UzAjtSjlR7OiNmOIBS+sDWFnlpcmwiLR','w1S8VqIIOj1suBNOffhAfQ==','\0',1000103),(34,'phone','S3Z4o9f4fqy7l+rpdCIEjBlCbiwQImvf','051YvUIYrOhQzTyAgVGKMQ==','\0',1000104),(35,'phone','+0OZyCEaEsEZ/FE58srV27aigrMQqtCY','5FWKKl3rJAtZQqxNPAnRcg==','\0',1000105),(36,'email','Y08CbB388JasywQrNJsWQRDP8YmWiPbYpUn0/TUYMsE=','FRTe1BZk6rBiawRrYK9pTA==','\0',1000106),(37,'phone','JbyM9GCPz0SQhVboPpTOyLalF77j5B3t','XhK/hfdblG/AXbv5zwxqxA==','\0',1000107),(38,'phone','R8jAHyJqUWtM3PiwAU1vAhOG5JEvUM6h','eEx70jC63DQ0BP5BO1zlkA==','\0',1000108),(39,'phone','2rcWbowJ4Omitu8AqMq5fIkzUjn05GzX','05y+rW0SfXpL3jN330WZ/A==','\0',1000109),(40,'email','0EBRYi/EKk8ukr4onFjj+A7RuZgLwnNAfwnZyfXWGc8=','m/W6nJ5GAD31T7h/hEEvEA==','\0',1000110),(41,'phone','CayVJMlWi8/d6PflBRlYjzKHZVMfSKAe','dEHrS2FMo3cIEibhXyGBeQ==','\0',1000111),(42,'phone','aGAtrGVpmtPRZOoZX0l2w+RJdv3rF3H0','+7x+elkMA9m8MaAutJ/G3A==','\0',1000112),(43,'email','7wrg9XC6noRhaE9LomagL4+QjJazTLCH','/p1PdiZVJkLVqbPMiz0R1A==','\0',1000113),(44,'phone','JNXCzl4RnG11WPgse6ADzXrx8NFj3yR4','fji2o8JyOsZ4Gg/OR71x2g==','\0',1000114);
/*!40000 ALTER TABLE `communication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dict`
--

DROP TABLE IF EXISTS `dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `locale` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK207FD6F67D2746` (`locale`),
  CONSTRAINT `FK207FD6F67D2746` FOREIGN KEY (`locale`) REFERENCES `locale` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dict`
--

LOCK TABLES `dict` WRITE;
/*!40000 ALTER TABLE `dict` DISABLE KEYS */;
/*!40000 ALTER TABLE `dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ehealthparameters`
--

DROP TABLE IF EXISTS `ehealthparameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ehealthparameters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ehealthparameters`
--

LOCK TABLES `ehealthparameters` WRITE;
/*!40000 ALTER TABLE `ehealthparameters` DISABLE KEYS */;
INSERT INTO `ehealthparameters` VALUES (1,'WEIGHT_MIN','30'),(2,'WEIGHT_MAX','180'),(3,'BLOOD_SISTOLIC_MIN','60'),(4,'BLOOD_SISTOLIC_MAX','250'),(5,'BLOOD_DIASTOLIC_MIN','30'),(6,'BLOOD_DIASTOLIC_MAX','140'),(7,'LOGIN_ATTEMPTS','5'),(8,'ACTIVITY_SEDENTARY','0-4999'),(9,'ACTIVITY_LOW','5000-7499'),(10,'ACTIVITY_MED','7500-9999'),(11,'ACTIVITY_ACTIVE','10000-12499'),(12,'ACTIVITY_HIGH','12500'),(13,'TASK_STATUS_PENDING','1'),(14,'TASK_STATUS_CANCELED','2'),(15,'TASK_STATUS_COMPLETED','3');
/*!40000 ALTER TABLE `ehealthparameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ehealthroles`
--

DROP TABLE IF EXISTS `ehealthroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ehealthroles` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ehealthroles`
--

LOCK TABLES `ehealthroles` WRITE;
/*!40000 ALTER TABLE `ehealthroles` DISABLE KEYS */;
INSERT INTO `ehealthroles` VALUES (1,'ADMIN'),(2,'CLINICIAN'),(3,'CARER'),(4,'PATIENT');
/*!40000 ALTER TABLE `ehealthroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entertainmentcontent`
--

DROP TABLE IF EXISTS `entertainmentcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entertainmentcontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entertainmentcontent`
--

LOCK TABLES `entertainmentcontent` WRITE;
/*!40000 ALTER TABLE `entertainmentcontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `entertainmentcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `externalservice`
--

DROP TABLE IF EXISTS `externalservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `externalservice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Address` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `externalservice`
--

LOCK TABLES `externalservice` WRITE;
/*!40000 ALTER TABLE `externalservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `externalservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identifier`
--

DROP TABLE IF EXISTS `identifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identifier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(255) DEFAULT NULL,
  `Number` varchar(255) DEFAULT NULL,
  `IssueDate` datetime DEFAULT NULL,
  `IssueAuthority` varchar(255) DEFAULT NULL,
  `persondata` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK165A88C94EAC96B0` (`persondata`),
  CONSTRAINT `FK165A88C94EAC96B0` FOREIGN KEY (`persondata`) REFERENCES `persondata` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identifier`
--

LOCK TABLES `identifier` WRITE;
/*!40000 ALTER TABLE `identifier` DISABLE KEYS */;
INSERT INTO `identifier` VALUES (54,'patient','1000','2014-03-07 00:00:00','authority',1000102),(55,'patient','1000','2014-03-07 00:00:00','authority',1000103),(56,'patient','1000','2014-03-07 00:00:00','authority',1000104),(57,'patient','1000','2014-03-10 00:00:00','authority',1000105),(58,'patient','1000','2014-03-10 00:00:00','authority',1000106),(59,'patient','1000','2014-03-10 00:00:00','authority',1000107),(60,'patient','1000','2014-03-10 00:00:00','authority',1000108),(61,'patient','1000','2014-03-11 00:00:00','authority',1000109),(62,'patient','1000','2014-03-12 00:00:00','authority',1000110),(63,'patient','1000','2014-03-12 00:00:00','authority',1000111),(64,'patient','1000','2014-03-12 00:00:00','authority',1000112),(65,'patient','1000','2014-04-07 00:00:00','authority',1000113),(66,'patient','1000','2014-04-13 22:00:00','authority',1000114);
/*!40000 ALTER TABLE `identifier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locale`
--

DROP TABLE IF EXISTS `locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locale`
--

LOCK TABLES `locale` WRITE;
/*!40000 ALTER TABLE `locale` DISABLE KEYS */;
INSERT INTO `locale` VALUES (4,'en_UK'),(5,'es_ES'),(6,'de_DE');
/*!40000 ALTER TABLE `locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logstmp`
--

DROP TABLE IF EXISTS `logstmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logstmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logValue` longtext,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `in_out` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logstmp`
--

LOCK TABLES `logstmp` WRITE;
/*!40000 ALTER TABLE `logstmp` DISABLE KEYS */;
INSERT INTO `logstmp` VALUES (1,'<?xml version=\"1.0\" encoding=\"UTF-8\"?><soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n  <SOAP-ENV:Header xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n    <wsse:Security xmlns:wsse=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd\" xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\" soap:mustUnderstand=\"1\">\r\n      <wsu:Timestamp wsu:Id=\"TS-78DC8D14AB6D57EEC213974675827521\">\r\n        <wsu:Created>2014-04-14T09:26:22.749Z</wsu:Created>\r\n        <wsu:Expires>2014-04-14T09:28:22.749Z</wsu:Expires>\r\n      </wsu:Timestamp>\r\n    </wsse:Security>\r\n  </SOAP-ENV:Header>\r\n  <soap:Body>\r\n    <ns3:getEhealthParameters xmlns:ns2=\"http://aladdin-project.eu/xsd\" xmlns:ns3=\"http://ehealth.eu/StorageComponent/\" xmlns:ns4=\"http://aladdin-project.eu/StorageComponent/\"/>\r\n  </soap:Body>\r\n</soap:Envelope>\r\n','2014-04-14 09:26:04','IN'),(2,'<?xml version=\"1.0\" encoding=\"UTF-8\"?><soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n  <SOAP-ENV:Header xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n    <wsse:Security xmlns:wsse=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd\" xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\" soap:mustUnderstand=\"1\">\r\n      <wsu:Timestamp wsu:Id=\"TS-78DC8D14AB6D57EEC213974676159762\">\r\n        <wsu:Created>2014-04-14T09:26:55.976Z</wsu:Created>\r\n        <wsu:Expires>2014-04-14T09:28:55.976Z</wsu:Expires>\r\n      </wsu:Timestamp>\r\n    </wsse:Security>\r\n  </SOAP-ENV:Header>\r\n  <soap:Body>\r\n    <ns3:Auth xmlns:ns2=\"http://aladdin-project.eu/xsd\" xmlns:ns3=\"http://ehealth.eu/StorageComponent/\" xmlns:ns4=\"http://aladdin-project.eu/StorageComponent/\">\r\n      <login>admin</login>\r\n      <password>admin123</password>\r\n      <token/>\r\n    </ns3:Auth>\r\n  </soap:Body>\r\n</soap:Envelope>\r\n','2014-04-14 09:26:37','IN'),(3,'<?xml version=\"1.0\" encoding=\"UTF-8\"?><soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n  <SOAP-ENV:Header xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n    <wsse:Security xmlns:wsse=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd\" xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\" soap:mustUnderstand=\"1\">\r\n      <xenc:EncryptedKey xmlns:xenc=\"http://www.w3.org/2001/04/xmlenc#\" Id=\"EK-D5A5F3C31135D6887213974677241357\">\r\n        <xenc:EncryptionMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#rsa-oaep-mgf1p\"/>\r\n        <ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\">\r\n          <wsse:SecurityTokenReference>\r\n            <ds:X509Data>\r\n              <ds:X509IssuerSerial>\r\n                <ds:X509IssuerName>CN=localhost</ds:X509IssuerName>\r\n                <ds:X509SerialNumber>662378146</ds:X509SerialNumber>\r\n              </ds:X509IssuerSerial>\r\n            </ds:X509Data>\r\n          </wsse:SecurityTokenReference>\r\n        </ds:KeyInfo>\r\n        <xenc:CipherData>\r\n          <xenc:CipherValue>LHUKwmOSCL2lEpwJIVvjv4NQhGjsWmxeCkkDQ+SDykebr/oM590w1O10yn2y8UPhX/VgQctj8ntD+EOYqGiF8BgTdXTt3J9PYDMs21EsIo+6bR2MVHHGL84jVa+pKSIeKij1GXt78V25NV+wphB5SE+0zsCDxiERZjNSkGpA1PzH9XmkfbYXYYC53sVOaXep5ZrL6zRUfsGGj/ohSQ32sJMWSZN42Rliqbz9p/tgd/PBeDu5PdGSHyKzvBQn0cBXWXYoy4FD8qJhlaqBM2SDnVdFVLN+bk4EdGuBvfIm7F5zYhQdiBXRqrQ9BCNOTV8u/y9wSQToWqm0qO/5aAnSfg==</xenc:CipherValue>\r\n        </xenc:CipherData>\r\n        <xenc:ReferenceList>\r\n          <xenc:DataReference URI=\"#ED-D5A5F3C31135D6887213974677241598\"/>\r\n          <xenc:DataReference URI=\"#ED-D5A5F3C31135D6887213974677241689\"/>\r\n        </xenc:ReferenceList>\r\n      </xenc:EncryptedKey>\r\n      <wsse:BinarySecurityToken EncodingType=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-soap-message-security-1.0#Base64Binary\" ValueType=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-x509-token-profile-1.0#X509v3\" wsu:Id=\"X509-D5A5F3C31135D6887213974677239002\">MIICxzCCAa+gAwIBAgIEFpLW+TANBgkqhkiG9w0BAQsFADAUMRIwEAYDVQQDEwlsb2NhbGhvc3QwHhcNMTQwNDExMTM0NTIyWhcNMTQwNzEwMTM0NTIyWjAUMRIwEAYDVQQDEwlsb2NhbGhvc3QwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCx+I8L7C4R/5WIlQP8nmHqMlgNyboQB/+CFIOBjiWtSnPdDTNacnXamcbfNz4COlg9DxOdFCUDNMcl5PTdskWCe/CzDh5aqA8yxpaUqetOZK/eCmJdQtCmisF5rCGZ57Z4tuycCmEDU1p8ihF5Jqs4tvDL5gcE+DOqPTAl3rIATlfxD4KwU9BbyykhvaZ0fWbNJqkJfICa+x1qpAJbnDLvjLc9VaTaOiKO7LI437vBJA6RRoOlQ173h26UqKWHjnXqB4b8Eqs1kxNVIC0uHmhNH+0b1C2UcddBT+iWAy5g0AqnPCbkZv28liW3/E9+5RLSAnV4zUrQYjC/jSTmqVCRAgMBAAGjITAfMB0GA1UdDgQWBBTID72DDsHjuC9eGp/pTM7Il3yPPzANBgkqhkiG9w0BAQsFAAOCAQEASkiJFcj9yig7ZbKVxU7iWlRJCnACdyaSoJnhJKTLb+PaqDrO7X/KyMQBHcQYkNH8apmzj1b8ERfDMgpRN20T8bM80szA78yGBqvdf06TPmBLc/Lt2/6aJYI1FvHRqthjcwKbfEYTbG4cwW1NrdiY4QwsL9ay3sBYQs1vN+NOwEcRLFvEpGR/deRc3Z36ONKrllpk7H/oC0UckZvzd3oT047OzcGmYspbUJC1N83Nl8yHzt71vkIh+q6oOGLmRxw2tyKpzLEGZpoZW51yVra2etyIlEmXrtKryQJpj68zMQeBI+r1oRD6Lgi2d/+zEcmlTjGuJlYC+ZL/BVOfV9ehUQ==</wsse:BinarySecurityToken>\r\n      <xenc:EncryptedData xmlns:xenc=\"http://www.w3.org/2001/04/xmlenc#\" Id=\"ED-D5A5F3C31135D6887213974677241598\" Type=\"http://www.w3.org/2001/04/xmlenc#Element\">\r\n        <xenc:EncryptionMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#tripledes-cbc\"/>\r\n        <ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\">\r\n          <wsse:SecurityTokenReference xmlns:wsse11=\"http://docs.oasis-open.org/wss/oasis-wss-wssecurity-secext-1.1.xsd\" xmlns:wsse=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd\" wsse11:TokenType=\"http://docs.oasis-open.org/wss/oasis-wss-soap-message-security-1.1#EncryptedKey\">\r\n            <wsse:Reference URI=\"#EK-D5A5F3C31135D6887213974677241357\"/>\r\n          </wsse:SecurityTokenReference>\r\n        </ds:KeyInfo>\r\n        <xenc:CipherData>\r\n          <xenc:CipherValue>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</xenc:CipherValue>\r\n        </xenc:CipherData>\r\n      </xenc:EncryptedData>\r\n      <wsu:Timestamp wsu:Id=\"TS-D5A5F3C31135D6887213974677238841\">\r\n        <wsu:Created>2014-04-14T09:28:43.882Z</wsu:Created>\r\n        <wsu:Expires>2014-04-14T09:30:43.882Z</wsu:Expires>\r\n      </wsu:Timestamp>\r\n    </wsse:Security>\r\n  </SOAP-ENV:Header>\r\n  <soap:Body xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\" wsu:Id=\"id-D5A5F3C31135D6887213974677239145\">\r\n    <xenc:EncryptedData xmlns:xenc=\"http://www.w3.org/2001/04/xmlenc#\" Id=\"ED-D5A5F3C31135D6887213974677241689\" Type=\"http://www.w3.org/2001/04/xmlenc#Content\">\r\n      <xenc:EncryptionMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#tripledes-cbc\"/>\r\n      <ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\">\r\n        <wsse:SecurityTokenReference xmlns:wsse=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd\" xmlns:wsse11=\"http://docs.oasis-open.org/wss/oasis-wss-wssecurity-secext-1.1.xsd\" wsse11:TokenType=\"http://docs.oasis-open.org/wss/oasis-wss-soap-message-security-1.1#EncryptedKey\">\r\n          <wsse:Reference URI=\"#EK-D5A5F3C31135D6887213974677241357\"/>\r\n        </wsse:SecurityTokenReference>\r\n      </ds:KeyInfo>\r\n      <xenc:CipherData>\r\n        <xenc:CipherValue>c3oHZ7pnmBUjvDcHhGlAeyesMJmLmYuK1sV/wy6gaF9gJkoN5xJNb7mbTPBdLxOWfrtwR8htrrgTbePk+HHszvNX/F5+cySXxtryYoua6P/rteDqSW5zVfYNo6zvKfKkUnw7Bz/ZAXkoxggG1meeux8pdDbKsMJhjB4W4SJzeF/nMiOWRnj6jZHMsaJ+cYjIVRGcHuTrhBLbpxQe4AjAvSjGCAbWZ567Hyl0NsqwwmHCCPmx5588Kr46I+5fWDyuLeeUCi2ESxRrFxyipM2Sdw==</xenc:CipherValue>\r\n      </xenc:CipherData>\r\n    </xenc:EncryptedData>\r\n  </soap:Body>\r\n</soap:Envelope>\r\n','2014-04-14 09:28:25','IN'),(4,'<?xml version=\"1.0\" encoding=\"UTF-8\"?><soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n  <SOAP-ENV:Header xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n    <wsse:Security xmlns:wsse=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd\" xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\" soap:mustUnderstand=\"1\">\r\n      <xenc:EncryptedKey xmlns:xenc=\"http://www.w3.org/2001/04/xmlenc#\" Id=\"EK-D5A5F3C31135D68872139746774054016\">\r\n        <xenc:EncryptionMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#rsa-oaep-mgf1p\"/>\r\n        <ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\">\r\n          <wsse:SecurityTokenReference>\r\n            <ds:X509Data>\r\n              <ds:X509IssuerSerial>\r\n                <ds:X509IssuerName>CN=localhost</ds:X509IssuerName>\r\n                <ds:X509SerialNumber>662378146</ds:X509SerialNumber>\r\n              </ds:X509IssuerSerial>\r\n            </ds:X509Data>\r\n          </wsse:SecurityTokenReference>\r\n        </ds:KeyInfo>\r\n        <xenc:CipherData>\r\n          <xenc:CipherValue>WnpN/yt4OYnvbEAIwbwiPHtFSefwHd2FeCRCPazk5fWQloKTAap5O0uTXsI/BBPQBryG3suxPPKXIWiFNDReqxhjCI1kzNTGPgWGoUm3S7lCG7LO9D7DX0tWrswrG+EaE+zdkmva6SLDUwPFEq+Er/r1BTXZxTKVEWfr6RYt0YSZDZ4LhHumpCcX/9W/LKkxix9F790Mkecq24gD6lsgXoAzJdw/lVa6KgJcqwXac6gW2I5et9vodxDD8pPnAaJrH/8HjMIoQec1JvcDFUCo+WXi738RB+/srwL5nH16+QbJZOOzl5Btqx86AHgH0HUb7N7Xw+GBXEeTpHlmZJVYEA==</xenc:CipherValue>\r\n        </xenc:CipherData>\r\n        <xenc:ReferenceList>\r\n          <xenc:DataReference URI=\"#ED-D5A5F3C31135D68872139746774054117\"/>\r\n          <xenc:DataReference URI=\"#ED-D5A5F3C31135D68872139746774054218\"/>\r\n        </xenc:ReferenceList>\r\n      </xenc:EncryptedKey>\r\n      <wsse:BinarySecurityToken EncodingType=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-soap-message-security-1.0#Base64Binary\" ValueType=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-x509-token-profile-1.0#X509v3\" wsu:Id=\"X509-D5A5F3C31135D68872139746774052811\">MIICxzCCAa+gAwIBAgIEFpLW+TANBgkqhkiG9w0BAQsFADAUMRIwEAYDVQQDEwlsb2NhbGhvc3QwHhcNMTQwNDExMTM0NTIyWhcNMTQwNzEwMTM0NTIyWjAUMRIwEAYDVQQDEwlsb2NhbGhvc3QwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCx+I8L7C4R/5WIlQP8nmHqMlgNyboQB/+CFIOBjiWtSnPdDTNacnXamcbfNz4COlg9DxOdFCUDNMcl5PTdskWCe/CzDh5aqA8yxpaUqetOZK/eCmJdQtCmisF5rCGZ57Z4tuycCmEDU1p8ihF5Jqs4tvDL5gcE+DOqPTAl3rIATlfxD4KwU9BbyykhvaZ0fWbNJqkJfICa+x1qpAJbnDLvjLc9VaTaOiKO7LI437vBJA6RRoOlQ173h26UqKWHjnXqB4b8Eqs1kxNVIC0uHmhNH+0b1C2UcddBT+iWAy5g0AqnPCbkZv28liW3/E9+5RLSAnV4zUrQYjC/jSTmqVCRAgMBAAGjITAfMB0GA1UdDgQWBBTID72DDsHjuC9eGp/pTM7Il3yPPzANBgkqhkiG9w0BAQsFAAOCAQEASkiJFcj9yig7ZbKVxU7iWlRJCnACdyaSoJnhJKTLb+PaqDrO7X/KyMQBHcQYkNH8apmzj1b8ERfDMgpRN20T8bM80szA78yGBqvdf06TPmBLc/Lt2/6aJYI1FvHRqthjcwKbfEYTbG4cwW1NrdiY4QwsL9ay3sBYQs1vN+NOwEcRLFvEpGR/deRc3Z36ONKrllpk7H/oC0UckZvzd3oT047OzcGmYspbUJC1N83Nl8yHzt71vkIh+q6oOGLmRxw2tyKpzLEGZpoZW51yVra2etyIlEmXrtKryQJpj68zMQeBI+r1oRD6Lgi2d/+zEcmlTjGuJlYC+ZL/BVOfV9ehUQ==</wsse:BinarySecurityToken>\r\n      <xenc:EncryptedData xmlns:xenc=\"http://www.w3.org/2001/04/xmlenc#\" Id=\"ED-D5A5F3C31135D68872139746774054117\" Type=\"http://www.w3.org/2001/04/xmlenc#Element\">\r\n        <xenc:EncryptionMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#tripledes-cbc\"/>\r\n        <ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\">\r\n          <wsse:SecurityTokenReference xmlns:wsse11=\"http://docs.oasis-open.org/wss/oasis-wss-wssecurity-secext-1.1.xsd\" xmlns:wsse=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd\" wsse11:TokenType=\"http://docs.oasis-open.org/wss/oasis-wss-soap-message-security-1.1#EncryptedKey\">\r\n            <wsse:Reference URI=\"#EK-D5A5F3C31135D68872139746774054016\"/>\r\n          </wsse:SecurityTokenReference>\r\n        </ds:KeyInfo>\r\n        <xenc:CipherData>\r\n          <xenc:CipherValue>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</xenc:CipherValue>\r\n        </xenc:CipherData>\r\n      </xenc:EncryptedData>\r\n      <wsu:Timestamp wsu:Id=\"TS-D5A5F3C31135D68872139746774052510\">\r\n        <wsu:Created>2014-04-14T09:29:00.525Z</wsu:Created>\r\n        <wsu:Expires>2014-04-14T09:31:00.525Z</wsu:Expires>\r\n      </wsu:Timestamp>\r\n    </wsse:Security>\r\n  </SOAP-ENV:Header>\r\n  <soap:Body xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\" wsu:Id=\"id-D5A5F3C31135D68872139746774052814\">\r\n    <xenc:EncryptedData xmlns:xenc=\"http://www.w3.org/2001/04/xmlenc#\" Id=\"ED-D5A5F3C31135D68872139746774054218\" Type=\"http://www.w3.org/2001/04/xmlenc#Content\">\r\n      <xenc:EncryptionMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#tripledes-cbc\"/>\r\n      <ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\">\r\n        <wsse:SecurityTokenReference xmlns:wsse=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd\" xmlns:wsse11=\"http://docs.oasis-open.org/wss/oasis-wss-wssecurity-secext-1.1.xsd\" wsse11:TokenType=\"http://docs.oasis-open.org/wss/oasis-wss-soap-message-security-1.1#EncryptedKey\">\r\n          <wsse:Reference URI=\"#EK-D5A5F3C31135D68872139746774054016\"/>\r\n        </wsse:SecurityTokenReference>\r\n      </ds:KeyInfo>\r\n      <xenc:CipherData>\r\n        <xenc:CipherValue>b4IGhup56NwXunXvFXrPhlzIbRlNn16St1LKRLcILtclhz2tjxosFyFAmLOOEOsAKtr6uz2uPY0VPW9bO3NR5doxs3SYGhHoUyf5qDCRkkfzNLtFDB1BQFS8389Ej07f5lepjYp4DQjXQEdUF/suPW2dpPfIM6+f/nUTxIjK9ma1wCuCDWQvnZNY5qyFpowTVLzfz0SPTt/mV6mNingNCGjCp2xzWXy0vx1DuOJj+7JdJbHQxFMZdDyvFXg1eBBf+bUWevlEdDkJoKsmoyxLkdXjhVCbLXmwtNM7D75vX5OQYQ+E/FVjsuq2lqnWzjiY</xenc:CipherValue>\r\n      </xenc:CipherData>\r\n    </xenc:EncryptedData>\r\n  </soap:Body>\r\n</soap:Envelope>\r\n','2014-04-14 09:28:41','IN'),(5,'<?xml version=\"1.0\" encoding=\"UTF-8\"?><soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n  <SOAP-ENV:Header xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n    <wsse:Security xmlns:wsse=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd\" xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\" soap:mustUnderstand=\"1\">\r\n      <xenc:EncryptedKey xmlns:xenc=\"http://www.w3.org/2001/04/xmlenc#\" Id=\"EK-D5A5F3C31135D68872139746774143825\">\r\n        <xenc:EncryptionMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#rsa-oaep-mgf1p\"/>\r\n        <ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\">\r\n          <wsse:SecurityTokenReference>\r\n            <ds:X509Data>\r\n              <ds:X509IssuerSerial>\r\n                <ds:X509IssuerName>CN=localhost</ds:X509IssuerName>\r\n                <ds:X509SerialNumber>662378146</ds:X509SerialNumber>\r\n              </ds:X509IssuerSerial>\r\n            </ds:X509Data>\r\n          </wsse:SecurityTokenReference>\r\n        </ds:KeyInfo>\r\n        <xenc:CipherData>\r\n          <xenc:CipherValue>AWSLMYnRgwZHQDGoDgny9zb228yw/1M19mWiTCjnuXCoOUOB4E5z2sj2WiEzp9nOA4p//uv+Oq+WMjPV6mCNtnqostyP6Ey092ErHj0NEtH244Y3C21jGCyHQq8cHXaMR+XjozKhlzR5Ny/0sHqTVz/8hZ41Nvng07goxVVh5Bt2AOLUyr1AJP3g3yNFDaXPNXlTBYEbLLcSl4VwT6OQXi/SBslH1QwsQWO09KrP+6/X42ts/DNix/klAoeKrUGtN1lIkq0KfJHglCuh1dei09oBAAlfGwWh5zO4h9JzishEzMepDZ9/jK6eDRMZQ49HVcfBvAQoEUFgAez1Vwt9Pg==</xenc:CipherValue>\r\n        </xenc:CipherData>\r\n        <xenc:ReferenceList>\r\n          <xenc:DataReference URI=\"#ED-D5A5F3C31135D68872139746774143826\"/>\r\n          <xenc:DataReference URI=\"#ED-D5A5F3C31135D68872139746774144027\"/>\r\n        </xenc:ReferenceList>\r\n      </xenc:EncryptedKey>\r\n      <wsse:BinarySecurityToken EncodingType=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-soap-message-security-1.0#Base64Binary\" ValueType=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-x509-token-profile-1.0#X509v3\" wsu:Id=\"X509-D5A5F3C31135D68872139746774142820\">MIICxzCCAa+gAwIBAgIEFpLW+TANBgkqhkiG9w0BAQsFADAUMRIwEAYDVQQDEwlsb2NhbGhvc3QwHhcNMTQwNDExMTM0NTIyWhcNMTQwNzEwMTM0NTIyWjAUMRIwEAYDVQQDEwlsb2NhbGhvc3QwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCx+I8L7C4R/5WIlQP8nmHqMlgNyboQB/+CFIOBjiWtSnPdDTNacnXamcbfNz4COlg9DxOdFCUDNMcl5PTdskWCe/CzDh5aqA8yxpaUqetOZK/eCmJdQtCmisF5rCGZ57Z4tuycCmEDU1p8ihF5Jqs4tvDL5gcE+DOqPTAl3rIATlfxD4KwU9BbyykhvaZ0fWbNJqkJfICa+x1qpAJbnDLvjLc9VaTaOiKO7LI437vBJA6RRoOlQ173h26UqKWHjnXqB4b8Eqs1kxNVIC0uHmhNH+0b1C2UcddBT+iWAy5g0AqnPCbkZv28liW3/E9+5RLSAnV4zUrQYjC/jSTmqVCRAgMBAAGjITAfMB0GA1UdDgQWBBTID72DDsHjuC9eGp/pTM7Il3yPPzANBgkqhkiG9w0BAQsFAAOCAQEASkiJFcj9yig7ZbKVxU7iWlRJCnACdyaSoJnhJKTLb+PaqDrO7X/KyMQBHcQYkNH8apmzj1b8ERfDMgpRN20T8bM80szA78yGBqvdf06TPmBLc/Lt2/6aJYI1FvHRqthjcwKbfEYTbG4cwW1NrdiY4QwsL9ay3sBYQs1vN+NOwEcRLFvEpGR/deRc3Z36ONKrllpk7H/oC0UckZvzd3oT047OzcGmYspbUJC1N83Nl8yHzt71vkIh+q6oOGLmRxw2tyKpzLEGZpoZW51yVra2etyIlEmXrtKryQJpj68zMQeBI+r1oRD6Lgi2d/+zEcmlTjGuJlYC+ZL/BVOfV9ehUQ==</wsse:BinarySecurityToken>\r\n      <xenc:EncryptedData xmlns:xenc=\"http://www.w3.org/2001/04/xmlenc#\" Id=\"ED-D5A5F3C31135D68872139746774143826\" Type=\"http://www.w3.org/2001/04/xmlenc#Element\">\r\n        <xenc:EncryptionMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#tripledes-cbc\"/>\r\n        <ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\">\r\n          <wsse:SecurityTokenReference xmlns:wsse11=\"http://docs.oasis-open.org/wss/oasis-wss-wssecurity-secext-1.1.xsd\" xmlns:wsse=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd\" wsse11:TokenType=\"http://docs.oasis-open.org/wss/oasis-wss-soap-message-security-1.1#EncryptedKey\">\r\n            <wsse:Reference URI=\"#EK-D5A5F3C31135D68872139746774143825\"/>\r\n          </wsse:SecurityTokenReference>\r\n        </ds:KeyInfo>\r\n        <xenc:CipherData>\r\n          <xenc:CipherValue>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</xenc:CipherValue>\r\n        </xenc:CipherData>\r\n      </xenc:EncryptedData>\r\n      <wsu:Timestamp wsu:Id=\"TS-D5A5F3C31135D68872139746774142519\">\r\n        <wsu:Created>2014-04-14T09:29:01.425Z</wsu:Created>\r\n        <wsu:Expires>2014-04-14T09:31:01.425Z</wsu:Expires>\r\n      </wsu:Timestamp>\r\n    </wsse:Security>\r\n  </SOAP-ENV:Header>\r\n  <soap:Body xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\" wsu:Id=\"id-D5A5F3C31135D68872139746774142823\">\r\n    <xenc:EncryptedData xmlns:xenc=\"http://www.w3.org/2001/04/xmlenc#\" Id=\"ED-D5A5F3C31135D68872139746774144027\" Type=\"http://www.w3.org/2001/04/xmlenc#Content\">\r\n      <xenc:EncryptionMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#tripledes-cbc\"/>\r\n      <ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\">\r\n        <wsse:SecurityTokenReference xmlns:wsse=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd\" xmlns:wsse11=\"http://docs.oasis-open.org/wss/oasis-wss-wssecurity-secext-1.1.xsd\" wsse11:TokenType=\"http://docs.oasis-open.org/wss/oasis-wss-soap-message-security-1.1#EncryptedKey\">\r\n          <wsse:Reference URI=\"#EK-D5A5F3C31135D68872139746774143825\"/>\r\n        </wsse:SecurityTokenReference>\r\n      </ds:KeyInfo>\r\n      <xenc:CipherData>\r\n        <xenc:CipherValue>sC6WY2yHyaEWg+1N62T8UgRumrPwQWft2O2rJ753LtN0Miw/ItDKfbsKs/VeKyHVxpVA804wFNPBUjVGuXrjydMT9kbPZlBD5W55f11193bwF4x/kX0NiSv5m66veEpXaFDzNg36sbwHSU9vv10JNFvhChauQj9yAWbs5Ibgn+se9G/4W8maCt8sUezPEX/epXZxbvgtQGdoUPM2DfqxvAdJT2+/XQk0jV4F6gnrxpUn66EIBW3X5fLZ5mBv83QOXdyeohkDc0y92QPjmD1c2w==</xenc:CipherValue>\r\n      </xenc:CipherData>\r\n    </xenc:EncryptedData>\r\n  </soap:Body>\r\n</soap:Envelope>\r\n','2014-04-14 09:28:42','IN'),(6,'<?xml version=\"1.0\" encoding=\"UTF-8\"?><soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n  <SOAP-ENV:Header xmlns:SOAP-ENV=\"http://schemas.xmlsoap.org/soap/envelope/\">\r\n    <wsse:Security xmlns:wsse=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd\" xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\" soap:mustUnderstand=\"1\">\r\n      <xenc:EncryptedKey xmlns:xenc=\"http://www.w3.org/2001/04/xmlenc#\" Id=\"EK-D5A5F3C31135D68872139746774640734\">\r\n        <xenc:EncryptionMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#rsa-oaep-mgf1p\"/>\r\n        <ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\">\r\n          <wsse:SecurityTokenReference>\r\n            <ds:X509Data>\r\n              <ds:X509IssuerSerial>\r\n                <ds:X509IssuerName>CN=localhost</ds:X509IssuerName>\r\n                <ds:X509SerialNumber>662378146</ds:X509SerialNumber>\r\n              </ds:X509IssuerSerial>\r\n            </ds:X509Data>\r\n          </wsse:SecurityTokenReference>\r\n        </ds:KeyInfo>\r\n        <xenc:CipherData>\r\n          <xenc:CipherValue>aKs5xJqIUNfXbxTHnoDIfkj4GIeCDOxN6vs23W0MoQrod/pIlSQUcGI0JaoGgVOXAi1MYRJOHZRloTCX11oabACCwk3WtKoufyrdkJzKlqJVOD4hG6nqtiTPFcQD8dU3E3lk7oXwXgoZIrRVuRSRpZKuEwXZoS7kUXeAvLzlB3sOEJLd5OuQcRTNIyL5/S6CCz1n0E30cYiJUIzECSKdp37XqMa9iiho5r+1NUO23Q+TxIuwQEXWMzUkwHiSDFL05vAX+UhI1f6+tlOUosPwRT3PGDHdZfRFIHBXlfLwX0yJHAa11hlAnY+cjgmDweJfh9L79aoDwICnzmSnsb4SBg==</xenc:CipherValue>\r\n        </xenc:CipherData>\r\n        <xenc:ReferenceList>\r\n          <xenc:DataReference URI=\"#ED-D5A5F3C31135D68872139746774640835\"/>\r\n          <xenc:DataReference URI=\"#ED-D5A5F3C31135D68872139746774640936\"/>\r\n        </xenc:ReferenceList>\r\n      </xenc:EncryptedKey>\r\n      <wsse:BinarySecurityToken EncodingType=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-soap-message-security-1.0#Base64Binary\" ValueType=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-x509-token-profile-1.0#X509v3\" wsu:Id=\"X509-D5A5F3C31135D68872139746774639029\">MIICxzCCAa+gAwIBAgIEFpLW+TANBgkqhkiG9w0BAQsFADAUMRIwEAYDVQQDEwlsb2NhbGhvc3QwHhcNMTQwNDExMTM0NTIyWhcNMTQwNzEwMTM0NTIyWjAUMRIwEAYDVQQDEwlsb2NhbGhvc3QwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCx+I8L7C4R/5WIlQP8nmHqMlgNyboQB/+CFIOBjiWtSnPdDTNacnXamcbfNz4COlg9DxOdFCUDNMcl5PTdskWCe/CzDh5aqA8yxpaUqetOZK/eCmJdQtCmisF5rCGZ57Z4tuycCmEDU1p8ihF5Jqs4tvDL5gcE+DOqPTAl3rIATlfxD4KwU9BbyykhvaZ0fWbNJqkJfICa+x1qpAJbnDLvjLc9VaTaOiKO7LI437vBJA6RRoOlQ173h26UqKWHjnXqB4b8Eqs1kxNVIC0uHmhNH+0b1C2UcddBT+iWAy5g0AqnPCbkZv28liW3/E9+5RLSAnV4zUrQYjC/jSTmqVCRAgMBAAGjITAfMB0GA1UdDgQWBBTID72DDsHjuC9eGp/pTM7Il3yPPzANBgkqhkiG9w0BAQsFAAOCAQEASkiJFcj9yig7ZbKVxU7iWlRJCnACdyaSoJnhJKTLb+PaqDrO7X/KyMQBHcQYkNH8apmzj1b8ERfDMgpRN20T8bM80szA78yGBqvdf06TPmBLc/Lt2/6aJYI1FvHRqthjcwKbfEYTbG4cwW1NrdiY4QwsL9ay3sBYQs1vN+NOwEcRLFvEpGR/deRc3Z36ONKrllpk7H/oC0UckZvzd3oT047OzcGmYspbUJC1N83Nl8yHzt71vkIh+q6oOGLmRxw2tyKpzLEGZpoZW51yVra2etyIlEmXrtKryQJpj68zMQeBI+r1oRD6Lgi2d/+zEcmlTjGuJlYC+ZL/BVOfV9ehUQ==</wsse:BinarySecurityToken>\r\n      <xenc:EncryptedData xmlns:xenc=\"http://www.w3.org/2001/04/xmlenc#\" Id=\"ED-D5A5F3C31135D68872139746774640835\" Type=\"http://www.w3.org/2001/04/xmlenc#Element\">\r\n        <xenc:EncryptionMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#tripledes-cbc\"/>\r\n        <ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\">\r\n          <wsse:SecurityTokenReference xmlns:wsse11=\"http://docs.oasis-open.org/wss/oasis-wss-wssecurity-secext-1.1.xsd\" xmlns:wsse=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd\" wsse11:TokenType=\"http://docs.oasis-open.org/wss/oasis-wss-soap-message-security-1.1#EncryptedKey\">\r\n            <wsse:Reference URI=\"#EK-D5A5F3C31135D68872139746774640734\"/>\r\n          </wsse:SecurityTokenReference>\r\n        </ds:KeyInfo>\r\n        <xenc:CipherData>\r\n          <xenc:CipherValue>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</xenc:CipherValue>\r\n        </xenc:CipherData>\r\n      </xenc:EncryptedData>\r\n      <wsu:Timestamp wsu:Id=\"TS-D5A5F3C31135D68872139746774638228\">\r\n        <wsu:Created>2014-04-14T09:29:06.382Z</wsu:Created>\r\n        <wsu:Expires>2014-04-14T09:31:06.382Z</wsu:Expires>\r\n      </wsu:Timestamp>\r\n    </wsse:Security>\r\n  </SOAP-ENV:Header>\r\n  <soap:Body xmlns:wsu=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd\" wsu:Id=\"id-D5A5F3C31135D68872139746774639132\">\r\n    <xenc:EncryptedData xmlns:xenc=\"http://www.w3.org/2001/04/xmlenc#\" Id=\"ED-D5A5F3C31135D68872139746774640936\" Type=\"http://www.w3.org/2001/04/xmlenc#Content\">\r\n      <xenc:EncryptionMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#tripledes-cbc\"/>\r\n      <ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\">\r\n        <wsse:SecurityTokenReference xmlns:wsse=\"http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd\" xmlns:wsse11=\"http://docs.oasis-open.org/wss/oasis-wss-wssecurity-secext-1.1.xsd\" wsse11:TokenType=\"http://docs.oasis-open.org/wss/oasis-wss-soap-message-security-1.1#EncryptedKey\">\r\n          <wsse:Reference URI=\"#EK-D5A5F3C31135D68872139746774640734\"/>\r\n        </wsse:SecurityTokenReference>\r\n      </ds:KeyInfo>\r\n      <xenc:CipherData>\r\n        <xenc:CipherValue>qWJW+JzS9NmGOw7zUrrHHM0zp/pFV8I4ei7zihzO3qzUJcUzfwzeeVGZypF0aqLRKQ4kYBmgqMLmZ0oVNIuHs8qQEpOLHCxG7XZjaLeHZC5TzdzeL5NdRx3KB9Dz7Y63n1v70nbcYNkXhE1YuSV3/Tzcy9e01RBkMRDWJlK+kQ/1MFJ8rXCZGre8AnHjItCEWrKsrZfQcSuqRDYt+32npBeETVi5JXf9PNzL17TVEGRSVhydrZT+FQpozu8E6sd+7uWdEqkfXznok6GcXGvtKFcb434YhfVgNlbwC8ZBYhon/CATvEOi9w==</xenc:CipherValue>\r\n      </xenc:CipherData>\r\n    </xenc:EncryptedData>\r\n  </soap:Body>\r\n</soap:Envelope>\r\n','2014-04-14 09:28:47','IN'),(7,'<?xml version=\"1.0\" encoding=\"UTF-8\"?><soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n  <soap:Body>\n    <ns3:Auth xmlns:ns2=\"http://aladdin-project.eu/xsd\" xmlns:ns3=\"http://ehealth.eu/StorageComponent/\" xmlns:ns4=\"http://aladdin-project.eu/StorageComponent/\">\n      <login>admin</login>\n      <password>admin123</password>\n      <token/>\n    </ns3:Auth>\n  </soap:Body>\n</soap:Envelope>\n','2014-04-16 11:36:20','IN'),(8,'<?xml version=\"1.0\" encoding=\"UTF-8\"?><soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n  <soap:Body>\n    <ns3:Auth xmlns:ns2=\"http://aladdin-project.eu/xsd\" xmlns:ns3=\"http://ehealth.eu/StorageComponent/\" xmlns:ns4=\"http://aladdin-project.eu/StorageComponent/\">\n      <login>admin</login>\n      <password>admin123</password>\n      <token/>\n    </ns3:Auth>\n  </soap:Body>\n</soap:Envelope>\n','2014-04-16 11:36:30','IN');
/*!40000 ALTER TABLE `logstmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measurement`
--

DROP TABLE IF EXISTS `measurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measurement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `value` decimal(19,2) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `units` varchar(255) DEFAULT NULL,
  `lowerlimit` decimal(19,2) DEFAULT NULL,
  `upperlimit` decimal(19,2) DEFAULT NULL,
  `patientassessment` int(11) DEFAULT NULL,
  `task` int(11) DEFAULT NULL,
  `lastupdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `warning` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKF75C839C5542F21C` (`task`),
  KEY `FKF75C839CFC90A15C` (`patientassessment`),
  CONSTRAINT `FKF75C839C5542F21C` FOREIGN KEY (`task`) REFERENCES `task` (`id`),
  CONSTRAINT `FKF75C839CFC90A15C` FOREIGN KEY (`patientassessment`) REFERENCES `patientassessment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measurement`
--

LOCK TABLES `measurement` WRITE;
/*!40000 ALTER TABLE `measurement` DISABLE KEYS */;
INSERT INTO `measurement` VALUES (49,'2',85.00,'2014-03-15 15:00:00','Kg',0.00,0.00,NULL,37915,'2014-03-21 16:25:14',NULL),(50,'2',65.00,'2014-03-16 15:00:00','Kg',0.00,0.00,NULL,37916,'2014-03-21 16:25:21',NULL),(51,'2',79.00,'2014-03-20 15:00:00','Kg',0.00,0.00,NULL,37920,'2014-03-21 16:27:26',NULL),(52,'2',70.00,'2014-03-21 15:00:00','Kg',0.00,0.00,NULL,37921,'2014-03-21 16:27:31',NULL),(53,'3',5058.00,'2014-03-02 15:00:00','steps/day',0.00,0.00,NULL,37899,'2014-03-24 09:12:24',NULL),(54,'3',6500.00,'2014-03-03 15:00:00','steps/day',0.00,0.00,NULL,37900,'2014-03-24 09:12:57',NULL),(55,'3',4200.00,'2014-03-04 15:00:00','steps/day',0.00,0.00,NULL,37901,'2014-03-24 09:13:04',NULL),(56,'3',2000.00,'2014-03-20 15:00:00','steps/day',0.00,0.00,NULL,37933,'2014-03-24 09:13:19',NULL),(57,'2',75.00,'2014-03-01 15:00:00','Kg',0.00,0.00,NULL,37896,'2014-03-24 09:13:28',NULL),(58,'1',99.00,'2014-03-12 15:00:00','mmHg',0.00,0.00,NULL,8,'2014-03-24 09:48:39',NULL),(59,'1',145.00,'2014-03-12 15:00:00','mmHg',0.00,0.00,NULL,8,'2014-03-24 09:48:39',NULL),(60,'1',98.00,'2014-03-13 15:00:00','mmHg',0.00,0.00,NULL,9,'2014-03-24 09:48:51',NULL),(61,'1',157.00,'2014-03-13 15:00:00','mmHg',0.00,0.00,NULL,9,'2014-03-24 09:48:51',NULL),(62,'1',75.00,'2014-03-14 15:00:00','mmHg',0.00,0.00,NULL,10,'2014-03-24 09:49:02',NULL),(63,'1',120.00,'2014-03-14 15:00:00','mmHg',0.00,0.00,NULL,10,'2014-03-24 09:49:02',NULL),(64,'1',45.00,'2014-03-15 15:00:00','mmHg',0.00,0.00,NULL,11,'2014-03-24 09:49:16',NULL),(65,'1',114.00,'2014-03-15 15:00:00','mmHg',0.00,0.00,NULL,11,'2014-03-24 09:49:16',NULL),(66,'1',120.00,'2014-03-21 15:00:00','mmHg',0.00,0.00,NULL,37932,'2014-03-24 09:49:26',NULL),(67,'1',189.00,'2014-03-21 15:00:00','mmHg',0.00,0.00,NULL,37932,'2014-03-24 09:49:26',NULL);
/*!40000 ALTER TABLE `measurement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `persondata` int(11) DEFAULT NULL,
  `sd` int(11) DEFAULT NULL,
  `clinician` int(11) DEFAULT NULL,
  `swname` varchar(255) DEFAULT NULL,
  `swphone` varchar(255) DEFAULT NULL,
  `swemail` varchar(255) DEFAULT NULL,
  `ccname` varchar(255) DEFAULT NULL,
  `ccphone` varchar(255) DEFAULT NULL,
  `ccemail` varchar(255) DEFAULT NULL,
  `gpname` varchar(255) DEFAULT NULL,
  `gpphone` varchar(255) DEFAULT NULL,
  `gpemail` varchar(255) DEFAULT NULL,
  `carer` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK340C82E5513C2A30` (`carer`),
  KEY `FK340C82E54EAC96B0` (`persondata`),
  KEY `FK340C82E5F8FC050A` (`clinician`),
  KEY `FK340C82E5B1CF35A5` (`sd`),
  CONSTRAINT `FK340C82E54EAC96B0` FOREIGN KEY (`persondata`) REFERENCES `persondata` (`id`),
  CONSTRAINT `FK340C82E5513C2A30` FOREIGN KEY (`carer`) REFERENCES `carer` (`id`),
  CONSTRAINT `FK340C82E5B1CF35A5` FOREIGN KEY (`sd`) REFERENCES `sociodemographicdata` (`id`),
  CONSTRAINT `FK340C82E5F8FC050A` FOREIGN KEY (`clinician`) REFERENCES `clinician` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,1000112,2,23,'','','','','','','','','',1);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientassessment`
--

DROP TABLE IF EXISTS `patientassessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patientassessment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient` int(11) DEFAULT NULL,
  `DateOfAssessment` datetime DEFAULT NULL,
  `Aetology` int(11) DEFAULT NULL,
  `TimeElapsedSinceDiagnose` int(11) DEFAULT NULL,
  `Severity` int(11) DEFAULT NULL,
  `RelevantPathologyAntecedents` varchar(255) DEFAULT NULL,
  `Comorbidity` varchar(255) DEFAULT NULL,
  `CharlsonComobodityIndex` int(11) DEFAULT NULL,
  `BarthelIndex` int(11) DEFAULT NULL,
  `LawtonIndex` int(11) DEFAULT NULL,
  `MMSE` int(11) DEFAULT NULL,
  `MDRS` int(11) DEFAULT NULL,
  `BlessedScalePart1` decimal(19,2) DEFAULT NULL,
  `BlessedScalePart2` int(11) DEFAULT NULL,
  `BlessedScalePart3` int(11) DEFAULT NULL,
  `ChecklistMBPC` int(11) DEFAULT NULL,
  `NPQISeverity` int(11) DEFAULT NULL,
  `NPQIStress` int(11) DEFAULT NULL,
  `GDS` int(11) DEFAULT NULL,
  `Falls` bit(1) DEFAULT NULL,
  `Incontinence` bit(1) DEFAULT NULL,
  `Delirium` bit(1) DEFAULT NULL,
  `Immobility` bit(1) DEFAULT NULL,
  `SensorialDeficits` bit(1) DEFAULT NULL,
  `PharmacologyTreatment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKDD8AFB8752781DB8` (`patient`),
  CONSTRAINT `FKDD8AFB8752781DB8` FOREIGN KEY (`patient`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientassessment`
--

LOCK TABLES `patientassessment` WRITE;
/*!40000 ALTER TABLE `patientassessment` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientassessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persondata`
--

DROP TABLE IF EXISTS `persondata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persondata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Surname` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persondata`
--

LOCK TABLES `persondata` WRITE;
/*!40000 ALTER TABLE `persondata` DISABLE KEYS */;
INSERT INTO `persondata` VALUES (1000093,'8OmZxjub8QZcchtSLWiKxA==','+F17wlG119+hK8e8BCpThA=='),(1000102,'HHdG2CIsfn0e050K4o62wQ==','m8JfuCkQbdFsZOEeA/Inj3Wl3hq49cDd'),(1000103,'cfn29BUTX9YU484zQ6Unnw==','qzsdwJZ9vZxfRzjz3MWhTw=='),(1000104,'sC8F7DGpAht4MU4Rmklw14+ejpQM7v+b','lsHEoBnjM/hMpilBcPSCoA=='),(1000105,'8OmZxjub8QZcchtSLWiKxA==','+F17wlG119+hK8e8BCpThA=='),(1000106,'m0ZKdlpZt9bPsshbUO97L3AFW1cOo63H','bs2FnOE2quYvFcdNxAwwxA=='),(1000107,'ECg2xNi0Dd8vYQ65uNIsdEpOCb9CsOVp','Z67OYnhNhbp4hDhO/ZaSY23tWugRJl3K'),(1000108,'9AxC7rGwysSURvl7vWTNMRYZ5z+s4bh7','WuGEFfngfdbPoD2yoJ/TPA=='),(1000109,'1+Q4D2FBkcCjycKeapj+Ig==','6ybmrqrTU0JL7HrYZJP6KHK4KvzVfoPQ'),(1000110,'jF6rMU8qB7oos7Zqq6WTWw==','Vq/OYe6QfgFjAK6exp0cyg=='),(1000111,'1GqVBASxZxIRH/Hs9fbQ2Q==','66Yn04Jg6A1PMcAXU/2OZt2A4oKLGwzf'),(1000112,'TFf3vNCoJGVKd6EemKMKHA==','U2gixnWHdLsCbahKoaTCFQ=='),(1000113,'mS17OYdgl0I7i10Mo6oY+w==','TbIInMpi8iyUljId5CetlQ=='),(1000114,'+mqASv8Ebj1qNvRR7UpXmQ==','zdl0JsCgfzwHmykO2OkEwg==');
/*!40000 ALTER TABLE `persondata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionnaire`
--

DROP TABLE IF EXISTS `questionnaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questionnaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` decimal(19,2) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionnaire`
--

LOCK TABLES `questionnaire` WRITE;
/*!40000 ALTER TABLE `questionnaire` DISABLE KEYS */;
/*!40000 ALTER TABLE `questionnaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionnaireanswer`
--

DROP TABLE IF EXISTS `questionnaireanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questionnaireanswer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `objectId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK161DFB211EDFD5BD` (`question`),
  CONSTRAINT `FK161DFB211EDFD5BD` FOREIGN KEY (`question`) REFERENCES `questionnairequestion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionnaireanswer`
--

LOCK TABLES `questionnaireanswer` WRITE;
/*!40000 ALTER TABLE `questionnaireanswer` DISABLE KEYS */;
/*!40000 ALTER TABLE `questionnaireanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionnairequestion`
--

DROP TABLE IF EXISTS `questionnairequestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questionnairequestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `isPrimary` bit(1) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `quest` int(11) DEFAULT NULL,
  `condition1` int(11) DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `GlobalId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKDED4AA896D8B73B3` (`quest`),
  KEY `FKDED4AA89AA692D1C` (`parentid`),
  CONSTRAINT `FKDED4AA896D8B73B3` FOREIGN KEY (`quest`) REFERENCES `questionnaire` (`id`),
  CONSTRAINT `FKDED4AA89AA692D1C` FOREIGN KEY (`parentid`) REFERENCES `questionnairequestion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionnairequestion`
--

LOCK TABLES `questionnairequestion` WRITE;
/*!40000 ALTER TABLE `questionnairequestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `questionnairequestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionnairequestionanswer`
--

DROP TABLE IF EXISTS `questionnairequestionanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questionnairequestionanswer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `question` int(11) DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK17920BA71EDFD5BD` (`question`),
  CONSTRAINT `FK17920BA71EDFD5BD` FOREIGN KEY (`question`) REFERENCES `questionnairequestion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionnairequestionanswer`
--

LOCK TABLES `questionnairequestionanswer` WRITE;
/*!40000 ALTER TABLE `questionnairequestionanswer` DISABLE KEYS */;
/*!40000 ALTER TABLE `questionnairequestionanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sociodemographicdata`
--

DROP TABLE IF EXISTS `sociodemographicdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sociodemographicdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Gender` int(11) DEFAULT NULL,
  `MaritalStatus` int(11) DEFAULT NULL,
  `Children` int(11) DEFAULT NULL,
  `LivingWith` int(11) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sociodemographicdata`
--

LOCK TABLES `sociodemographicdata` WRITE;
/*!40000 ALTER TABLE `sociodemographicdata` DISABLE KEYS */;
INSERT INTO `sociodemographicdata` VALUES (1,0,0,0,0,'1950-01-01 00:00:00'),(2,1,1,13,0,'1969-01-01 00:00:00');
/*!40000 ALTER TABLE `sociodemographicdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemparameter`
--

DROP TABLE IF EXISTS `systemparameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemparameter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Code` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemparameter`
--

LOCK TABLES `systemparameter` WRITE;
/*!40000 ALTER TABLE `systemparameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `systemparameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TaskType` int(11) DEFAULT NULL,
  `DateTimeAssigned` datetime DEFAULT NULL,
  `DateTimeFulfilled` datetime DEFAULT NULL,
  `TaskStatus` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `questionnaire` int(11) DEFAULT NULL,
  `Executor` int(11) DEFAULT NULL,
  `Assigner` int(11) DEFAULT NULL,
  `Object` int(11) DEFAULT NULL,
  `lastupdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK27A9A52A7D6874` (`questionnaire`),
  KEY `FK27A9A5D3883C27` (`Executor`),
  KEY `FK27A9A543B65130` (`Assigner`),
  KEY `FK27A9A51CC2E693` (`Object`),
  CONSTRAINT `FK27A9A51CC2E693` FOREIGN KEY (`Object`) REFERENCES `aladdinuser` (`id`),
  CONSTRAINT `FK27A9A52A7D6874` FOREIGN KEY (`questionnaire`) REFERENCES `questionnaire` (`id`),
  CONSTRAINT `FK27A9A543B65130` FOREIGN KEY (`Assigner`) REFERENCES `aladdinuser` (`id`),
  CONSTRAINT `FK27A9A5D3883C27` FOREIGN KEY (`Executor`) REFERENCES `aladdinuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37935 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (8,3,'2014-03-12 12:00:00','2014-03-12 12:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(9,3,'2014-03-13 12:00:00','2014-03-13 12:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(10,3,'2014-03-14 12:00:00','2014-03-14 12:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(11,3,'2014-03-15 12:00:00','2014-03-15 12:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37896,4,'2014-03-01 12:00:00','2014-03-02 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37899,6,'2014-03-02 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37900,6,'2014-03-03 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37901,6,'2014-03-04 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37902,4,'2014-03-02 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37903,4,'2014-03-03 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37904,4,'2014-03-04 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37905,4,'2014-03-05 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37906,4,'2014-03-06 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37907,4,'2014-03-07 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37908,4,'2014-03-08 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37909,4,'2014-03-09 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37910,4,'2014-03-10 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37911,4,'2014-03-11 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37912,4,'2014-03-12 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37913,4,'2014-03-13 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37914,4,'2014-03-14 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37915,4,'2014-03-15 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37916,4,'2014-03-16 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37917,4,'2014-03-17 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37918,4,'2014-03-18 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37919,4,'2014-03-19 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37920,4,'2014-03-20 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37921,4,'2014-03-21 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37922,4,'2014-03-22 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37923,4,'2014-03-23 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37924,4,'2014-03-24 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37925,4,'2014-03-25 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37926,4,'2014-03-26 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37927,4,'2014-03-27 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37928,4,'2014-03-28 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37929,4,'2014-03-29 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37930,4,'2014-03-30 13:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37931,4,'2014-03-31 13:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37932,3,'2014-03-21 12:00:00','2014-03-21 12:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37933,6,'2014-03-20 12:00:00','2014-03-20 12:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37934,3,'2014-03-22 12:00:00','2014-03-22 12:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:19:00');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translate`
--

DROP TABLE IF EXISTS `translate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entityid` int(11) DEFAULT NULL,
  `entity` varchar(255) DEFAULT NULL,
  `locale` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKB633112EF67D2746` (`locale`),
  CONSTRAINT `FKB633112EF67D2746` FOREIGN KEY (`locale`) REFERENCES `locale` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translate`
--

LOCK TABLES `translate` WRITE;
/*!40000 ALTER TABLE `translate` DISABLE KEYS */;
/*!40000 ALTER TABLE `translate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warning`
--

DROP TABLE IF EXISTS `warning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warning` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TypeOfWarning` int(11) DEFAULT NULL,
  `DateTimeOfWarning` datetime DEFAULT NULL,
  `Effect` int(11) DEFAULT NULL,
  `Indicator` int(11) DEFAULT NULL,
  `RiskLevel` int(11) DEFAULT NULL,
  `JustificationText` varchar(255) DEFAULT NULL,
  `EmergencyLevel` int(11) DEFAULT NULL,
  `Delivered` bit(1) DEFAULT NULL,
  `Patient` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKA63E477C52781DB8` (`Patient`),
  CONSTRAINT `FKA63E477C52781DB8` FOREIGN KEY (`Patient`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warning`
--

LOCK TABLES `warning` WRITE;
/*!40000 ALTER TABLE `warning` DISABLE KEYS */;
INSERT INTO `warning` VALUES (9,2,'2014-03-21 16:27:31',NULL,NULL,NULL,'Type {Weight} Current value = 70.0, Previous value = 79.0',NULL,'\0',1),(10,2,'2014-03-24 09:13:29',NULL,NULL,NULL,'Type {Weight} Current value = 75.0, Previous value = 70.0',NULL,'\0',1),(11,2,'2014-03-24 09:48:39',NULL,NULL,NULL,'Type {Diastolic Blood Pressure} Current value = 99.0, Previous value = 0.0',NULL,'\0',1),(12,2,'2014-03-24 09:48:51',NULL,NULL,NULL,'Type {Diastolic Blood Pressure} Current value = 98.0, Previous value = 0.0',NULL,'\0',1),(13,2,'2014-03-24 09:48:51',NULL,NULL,NULL,'Type {Systolic Blood Pressure} Current value = 157.0, Previous value = 0.0',NULL,'\0',1),(14,2,'2014-03-24 09:49:16',NULL,NULL,NULL,'Type {Diastolic Blood Pressure} Current value = 45.0, Previous value = 0.0',NULL,'\0',1),(15,2,'2014-03-24 09:49:26',NULL,NULL,NULL,'Type {Diastolic Blood Pressure} Current value = 120.0, Previous value = 0.0',NULL,'\0',1),(16,2,'2014-03-24 09:49:26',NULL,NULL,NULL,'Type {Systolic Blood Pressure} Current value = 189.0, Previous value = 0.0',NULL,'\0',1);
/*!40000 ALTER TABLE `warning` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-02 11:00:19
