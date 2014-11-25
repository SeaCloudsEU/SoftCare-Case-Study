CREATE DATABASE  IF NOT EXISTS `heroku_4cac9616fe1810f` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `heroku_4cac9616fe1810f`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: us-cdbr-east-05.cleardb.net    Database: heroku_4cac9616fe1810f
-- ------------------------------------------------------
-- Server version	5.5.34-log

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
) ENGINE=InnoDB AUTO_INCREMENT=1000015 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (1000011,1000093),(1000012,1000106),(1000013,1000107),(1000014,1000108);
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
) ENGINE=InnoDB AUTO_INCREMENT=1000091 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aladdinuser`
--

LOCK TABLES `aladdinuser` WRITE;
/*!40000 ALTER TABLE `aladdinuser` DISABLE KEYS */;
INSERT INTO `aladdinuser` VALUES (1000071,'admin','9ibtMUHvuqiRjQt6qI5FXwAvTbTjx94CqCPXNA==',1,1000093,'\0','2014-04-03 10:03:21',1),(1000080,'b5328504c7330a','EFV7HwQMko6B32tyAcdSnEGy6AzYzb4LhL3UqQ==',2,1000102,'\0','2014-03-07 15:57:53',0),(1000081,'rosogonatos_sc','hDF3pQn/09GnKFG85NYFYyOh1YzAJ+z8CeMNSw==',2,1000103,'\0','2014-03-07 16:03:34',0),(1000082,'pebe','9ibtMUHvuqiRjQt6qI5FXwAvTbTjx94CqCPXNA==',2,1000104,'\0','2014-03-07 16:04:51',0),(1000083,'rsucasas','yB1qHc2ETFaKjOvAiBEyaPYxrbXW8VjGBSnbow==',2,1000105,'\0','2014-03-10 10:33:04',0),(1000084,'admin2','Rebtm0QOXUABx1sC/0HuOhaFhh0AmnNGmQdzZA==',1,1000106,'\0','2014-03-13 11:45:38',1),(1000085,'admin3','Ug0QjIq9QTJFMitO0r8a6BydvERJxAgpmqIxoQ==',1,1000107,'\0','2014-03-10 14:53:57',0),(1000086,'admin4','QPBRuTSz06glsfZnfRQ/gcSSjUxBuqz3ZNf7PA==',1,1000108,'\0','2014-03-10 14:54:32',0),(1000087,'feji','+7wScoY50/AKoK/hIaZo9SKkgwoeQDw69aIKLg==',2,1000109,'\0','2014-03-11 10:47:34',0),(1000088,'house','eGNvUyjCrAHUruFlUlYzF4rMOZair5SyNlx40A==',2,1000110,'\0','2014-04-22 14:52:01',0),(1000089,'felo','F/BWYrKDIsJV+6C2XBmNhG/W+/PWA6DnWAJgVQ==',3,1000111,'\0','2014-03-13 14:37:54',0),(1000090,'caco','AV7l4rBUD43Yk3b6JEbqBPPxBO1AGtgd2aUMzw==',4,1000112,'\0','2014-03-12 11:51:02',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communication`
--

LOCK TABLES `communication` WRITE;
/*!40000 ALTER TABLE `communication` DISABLE KEYS */;
INSERT INTO `communication` VALUES (32,'phone','JCHn+FI/GhLIPK6idta2oFac5OlQc9Wd','KbvyLIEFtEE9WsDtVlqqXg==','\0',1000102),(33,'phone','UzAjtSjlR7OiNmOIBS+sDWFnlpcmwiLR','w1S8VqIIOj1suBNOffhAfQ==','\0',1000103),(34,'phone','S3Z4o9f4fqy7l+rpdCIEjBlCbiwQImvf','051YvUIYrOhQzTyAgVGKMQ==','\0',1000104),(35,'phone','+0OZyCEaEsEZ/FE58srV27aigrMQqtCY','5FWKKl3rJAtZQqxNPAnRcg==','\0',1000105),(36,'email','Y08CbB388JasywQrNJsWQRDP8YmWiPbYpUn0/TUYMsE=','FRTe1BZk6rBiawRrYK9pTA==','\0',1000106),(37,'phone','JbyM9GCPz0SQhVboPpTOyLalF77j5B3t','XhK/hfdblG/AXbv5zwxqxA==','\0',1000107),(38,'phone','R8jAHyJqUWtM3PiwAU1vAhOG5JEvUM6h','eEx70jC63DQ0BP5BO1zlkA==','\0',1000108),(39,'phone','2rcWbowJ4Omitu8AqMq5fIkzUjn05GzX','05y+rW0SfXpL3jN330WZ/A==','\0',1000109),(40,'email','0EBRYi/EKk8ukr4onFjj+A7RuZgLwnNAfwnZyfXWGc8=','m/W6nJ5GAD31T7h/hEEvEA==','\0',1000110),(41,'phone','CayVJMlWi8/d6PflBRlYjzKHZVMfSKAe','dEHrS2FMo3cIEibhXyGBeQ==','\0',1000111),(42,'phone','aGAtrGVpmtPRZOoZX0l2w+RJdv3rF3H0','+7x+elkMA9m8MaAutJ/G3A==','\0',1000112);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ehealthparameters`
--

LOCK TABLES `ehealthparameters` WRITE;
/*!40000 ALTER TABLE `ehealthparameters` DISABLE KEYS */;
INSERT INTO `ehealthparameters` VALUES (1,'WEIGHT_MIN','30'),(2,'WEIGHT_MAX','180'),(3,'BLOOD_SISTOLIC_MIN','60'),(4,'BLOOD_SISTOLIC_MAX','250'),(5,'BLOOD_DIASTOLIC_MIN','30'),(6,'BLOOD_DIASTOLIC_MAX','140'),(7,'LOGIN_ATTEMPTS','5');
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identifier`
--

LOCK TABLES `identifier` WRITE;
/*!40000 ALTER TABLE `identifier` DISABLE KEYS */;
INSERT INTO `identifier` VALUES (54,'patient','1000','2014-03-07 00:00:00','authority',1000102),(55,'patient','1000','2014-03-07 00:00:00','authority',1000103),(56,'patient','1000','2014-03-07 00:00:00','authority',1000104),(57,'patient','1000','2014-03-10 00:00:00','authority',1000105),(58,'patient','1000','2014-03-10 00:00:00','authority',1000106),(59,'patient','1000','2014-03-10 00:00:00','authority',1000107),(60,'patient','1000','2014-03-10 00:00:00','authority',1000108),(61,'patient','1000','2014-03-11 00:00:00','authority',1000109),(62,'patient','1000','2014-03-12 00:00:00','authority',1000110),(63,'patient','1000','2014-03-12 00:00:00','authority',1000111),(64,'patient','1000','2014-03-12 00:00:00','authority',1000112);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logstmp`
--

LOCK TABLES `logstmp` WRITE;
/*!40000 ALTER TABLE `logstmp` DISABLE KEYS */;
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
  PRIMARY KEY (`id`),
  KEY `FKF75C839C5542F21C` (`task`),
  KEY `FKF75C839CFC90A15C` (`patientassessment`),
  CONSTRAINT `FKF75C839C5542F21C` FOREIGN KEY (`task`) REFERENCES `task` (`id`),
  CONSTRAINT `FKF75C839CFC90A15C` FOREIGN KEY (`patientassessment`) REFERENCES `patientassessment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measurement`
--

LOCK TABLES `measurement` WRITE;
/*!40000 ALTER TABLE `measurement` DISABLE KEYS */;
INSERT INTO `measurement` VALUES (1,'2',76.90,'2014-03-12 12:49:30','Kg',0.00,0.00,NULL,37912),(2,'2',76.30,'2014-03-13 12:49:40','Kg',0.00,0.00,NULL,37913),(3,'1',85.00,'2014-03-12 12:53:12','mmHg',0.00,0.00,NULL,8),(4,'1',125.00,'2014-03-12 12:53:12','mmHg',0.00,0.00,NULL,8),(5,'1',79.00,'2014-03-13 12:53:22','mmHg',0.00,0.00,NULL,9),(6,'1',123.00,'2014-03-13 12:53:22','mmHg',0.00,0.00,NULL,9),(7,'2',69.90,'2014-03-06 14:17:03','Kg',0.00,0.00,NULL,37906),(8,'2',71.00,'2014-03-01 15:00:00','Kg',0.00,0.00,NULL,37896),(9,'2',72.00,'2014-03-02 15:00:00','Kg',0.00,0.00,NULL,37902),(10,'2',73.00,'2014-03-03 15:00:00','Kg',0.00,0.00,NULL,37903),(11,'2',74.00,'2014-03-04 15:00:00','Kg',0.00,0.00,NULL,37904),(12,'2',73.00,'2014-03-05 15:00:00','Kg',0.00,0.00,NULL,37905),(13,'2',74.00,'2014-03-07 15:00:00','Kg',0.00,0.00,NULL,37907),(14,'2',80.00,'2014-03-08 15:00:00','Kg',0.00,0.00,NULL,37908),(15,'2',82.00,'2014-03-09 15:00:00','Kg',0.00,0.00,NULL,37909),(16,'2',79.00,'2014-03-10 15:00:00','Kg',0.00,0.00,NULL,37910),(17,'2',76.00,'2014-03-11 15:00:00','Kg',0.00,0.00,NULL,37911);
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
) ENGINE=InnoDB AUTO_INCREMENT=1000113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persondata`
--

LOCK TABLES `persondata` WRITE;
/*!40000 ALTER TABLE `persondata` DISABLE KEYS */;
INSERT INTO `persondata` VALUES (1000093,'8OmZxjub8QZcchtSLWiKxA==','+F17wlG119+hK8e8BCpThA=='),(1000102,'HHdG2CIsfn0e050K4o62wQ==','m8JfuCkQbdFsZOEeA/Inj3Wl3hq49cDd'),(1000103,'cfn29BUTX9YU484zQ6Unnw==','qzsdwJZ9vZxfRzjz3MWhTw=='),(1000104,'sC8F7DGpAht4MU4Rmklw14+ejpQM7v+b','lsHEoBnjM/hMpilBcPSCoA=='),(1000105,'8OmZxjub8QZcchtSLWiKxA==','+F17wlG119+hK8e8BCpThA=='),(1000106,'m0ZKdlpZt9bPsshbUO97L3AFW1cOo63H','bs2FnOE2quYvFcdNxAwwxA=='),(1000107,'ECg2xNi0Dd8vYQ65uNIsdEpOCb9CsOVp','Z67OYnhNhbp4hDhO/ZaSY23tWugRJl3K'),(1000108,'9AxC7rGwysSURvl7vWTNMRYZ5z+s4bh7','WuGEFfngfdbPoD2yoJ/TPA=='),(1000109,'1+Q4D2FBkcCjycKeapj+Ig==','6ybmrqrTU0JL7HrYZJP6KHK4KvzVfoPQ'),(1000110,'jF6rMU8qB7oos7Zqq6WTWw==','Vq/OYe6QfgFjAK6exp0cyg=='),(1000111,'1GqVBASxZxIRH/Hs9fbQ2Q==','66Yn04Jg6A1PMcAXU/2OZt2A4oKLGwzf'),(1000112,'TFf3vNCoJGVKd6EemKMKHA==','U2gixnWHdLsCbahKoaTCFQ==');
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
  PRIMARY KEY (`id`),
  KEY `FK27A9A52A7D6874` (`questionnaire`),
  KEY `FK27A9A5D3883C27` (`Executor`),
  KEY `FK27A9A543B65130` (`Assigner`),
  KEY `FK27A9A51CC2E693` (`Object`),
  CONSTRAINT `FK27A9A51CC2E693` FOREIGN KEY (`Object`) REFERENCES `aladdinuser` (`id`),
  CONSTRAINT `FK27A9A52A7D6874` FOREIGN KEY (`questionnaire`) REFERENCES `questionnaire` (`id`),
  CONSTRAINT `FK27A9A543B65130` FOREIGN KEY (`Assigner`) REFERENCES `aladdinuser` (`id`),
  CONSTRAINT `FK27A9A5D3883C27` FOREIGN KEY (`Executor`) REFERENCES `aladdinuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37932 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (8,3,'2014-03-12 12:00:00','2014-03-12 12:00:00',3,'','',NULL,1000089,1000088,1000090),(9,3,'2014-03-13 12:00:00','2014-03-13 12:00:00',3,'','',NULL,1000089,1000088,1000090),(10,3,'2014-03-14 12:00:00','2014-03-14 12:00:00',1,'','',NULL,1000089,1000088,1000090),(11,3,'2014-03-15 12:00:00','2014-03-15 12:00:00',1,'','',NULL,1000089,1000088,1000090),(37886,4,'2014-03-01 12:00:00','2014-03-02 00:00:00',2,'','',NULL,1000089,1000088,1000090),(37887,4,'2014-03-01 12:00:00','2014-03-02 00:00:00',2,'','',NULL,1000089,1000088,1000090),(37888,4,'2014-03-01 12:00:00','2014-03-02 00:00:00',2,'','',NULL,1000089,1000088,1000090),(37889,4,'2014-03-01 12:00:00','2014-03-02 00:00:00',2,'','',NULL,1000089,1000088,1000090),(37890,4,'2014-03-01 12:00:00','2014-03-02 00:00:00',2,'','',NULL,1000089,1000088,1000090),(37891,4,'2014-03-01 12:00:00','2014-03-02 00:00:00',2,'','',NULL,1000089,1000088,1000090),(37892,4,'2014-03-01 12:00:00','2014-03-02 00:00:00',2,'','',NULL,1000089,1000088,1000090),(37893,4,'2014-03-01 12:00:00','2014-03-02 00:00:00',2,'','',NULL,1000089,1000088,1000090),(37894,4,'2014-03-01 12:00:00','2014-03-02 00:00:00',2,'','',NULL,1000089,1000088,1000090),(37895,4,'2014-03-01 12:00:00','2014-03-02 00:00:00',2,'','',NULL,1000089,1000088,1000090),(37896,4,'2014-03-01 12:00:00','2014-03-02 00:00:00',3,'','',NULL,1000089,1000088,1000090),(37897,4,'2014-03-01 12:00:00','2014-03-02 00:00:00',2,'','',NULL,1000089,1000088,1000090),(37898,4,'2014-03-01 12:00:00','2014-03-02 00:00:00',2,'','',NULL,1000089,1000088,1000090),(37899,6,'2014-03-02 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37900,6,'2014-03-03 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37901,6,'2014-03-04 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37902,4,'2014-03-02 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090),(37903,4,'2014-03-03 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090),(37904,4,'2014-03-04 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090),(37905,4,'2014-03-05 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090),(37906,4,'2014-03-06 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090),(37907,4,'2014-03-07 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090),(37908,4,'2014-03-08 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090),(37909,4,'2014-03-09 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090),(37910,4,'2014-03-10 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090),(37911,4,'2014-03-11 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090),(37912,4,'2014-03-12 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090),(37913,4,'2014-03-13 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090),(37914,4,'2014-03-14 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37915,4,'2014-03-15 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37916,4,'2014-03-16 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37917,4,'2014-03-17 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37918,4,'2014-03-18 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37919,4,'2014-03-19 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37920,4,'2014-03-20 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37921,4,'2014-03-21 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37922,4,'2014-03-22 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37923,4,'2014-03-23 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37924,4,'2014-03-24 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37925,4,'2014-03-25 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37926,4,'2014-03-26 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37927,4,'2014-03-27 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37928,4,'2014-03-28 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37929,4,'2014-03-29 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37930,4,'2014-03-30 13:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090),(37931,4,'2014-03-31 13:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warning`
--

LOCK TABLES `warning` WRITE;
/*!40000 ALTER TABLE `warning` DISABLE KEYS */;
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

-- Dump completed on 2014-07-02 10:57:43
