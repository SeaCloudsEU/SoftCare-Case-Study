CREATE DATABASE  IF NOT EXISTS `heroku_backup` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `heroku_backup`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: eu-cdbr-west-01.cleardb.com    Database: heroku_52c9cbef6918e0d
-- ------------------------------------------------------
-- Server version	5.5.29-log

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1000011 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (1000010,1000041);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aladdinuser`
--

LOCK TABLES `aladdinuser` WRITE;
/*!40000 ALTER TABLE `aladdinuser` DISABLE KEYS */;
INSERT INTO `aladdinuser` VALUES (1000036,'admin','admin',1,1000041,'\0','2014-06-25 14:33:29',0),(1000048,'userNoDelete','password',3,7,'\0',NULL,0),(1000050,'clinician1','password',2,1000069,'\0','2014-06-23 14:54:28',0),(1000053,'carer10','password',3,1000073,'\0',NULL,0),(1000054,'patient1','password',4,1000074,'\0',NULL,0),(1000071,'carer2','password123',3,1000091,'\0',NULL,0),(1000081,'patient2','password123',4,1000101,'\0','2014-03-03 11:37:35',5),(1000101,'cli3username','123qwe123',2,1000121,'\0','2014-03-03 10:24:45',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carer`
--

LOCK TABLES `carer` WRITE;
/*!40000 ALTER TABLE `carer` DISABLE KEYS */;
INSERT INTO `carer` VALUES (8,1000073,11),(21,1000091,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinician`
--

LOCK TABLES `clinician` WRITE;
/*!40000 ALTER TABLE `clinician` DISABLE KEYS */;
INSERT INTO `clinician` VALUES (4,1000069),(21,1000121);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communication`
--

LOCK TABLES `communication` WRITE;
/*!40000 ALTER TABLE `communication` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dict`
--

LOCK TABLES `dict` WRITE;
/*!40000 ALTER TABLE `dict` DISABLE KEYS */;
INSERT INTO `dict` VALUES (1,'comment','Comment',2,12),(11,'problem','Problem',2,12),(21,'question','Question',2,12),(31,'comment','Comentarios',3,12),(41,'problem','Problemas',3,12),(51,'question','Preguntas',3,12);
/*!40000 ALTER TABLE `dict` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entertainmentcontent`
--

LOCK TABLES `entertainmentcontent` WRITE;
/*!40000 ALTER TABLE `entertainmentcontent` DISABLE KEYS */;
INSERT INTO `entertainmentcontent` VALUES (1,'What is Alzheimer\'s disease?','http://www.youtube.com/v/9Wv9jrk-gXc','Media Content','education','What is Alzheimer\'s disease?',''),(11,'entertainment video','http://www.youtube.com/watch?v=OV17_aaqz_8&feature=player_detailpage','Media Content','entertainment','entertainment video','\0'),(21,'Brain games','http://www.mindgames.com/mindgame.php?mind=Brain+Workout&game=135','Media Content','games','Give your brain a workout in 4 mini games. Read the instructions before every mini game.','');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `externalservice`
--

LOCK TABLES `externalservice` WRITE;
/*!40000 ALTER TABLE `externalservice` DISABLE KEYS */;
INSERT INTO `externalservice` VALUES (11,'http://example.service.com','example service','');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identifier`
--

LOCK TABLES `identifier` WRITE;
/*!40000 ALTER TABLE `identifier` DISABLE KEYS */;
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
  `name` varchar(25) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locale`
--

LOCK TABLES `locale` WRITE;
/*!40000 ALTER TABLE `locale` DISABLE KEYS */;
INSERT INTO `locale` VALUES (1,'de_DE','deutsch'),(2,'en_UK','english'),(3,'es_ES','español'),(11,'it_IT','italiano');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measurement`
--

LOCK TABLES `measurement` WRITE;
/*!40000 ALTER TABLE `measurement` DISABLE KEYS */;
INSERT INTO `measurement` VALUES (1,'2',65.00,'2014-01-14 14:22:17','Kg',0.00,0.00,NULL,9),(14,'2',85.00,'2014-01-15 13:41:08','Kg',0.00,0.00,NULL,9),(15,'2',95.00,'2014-01-15 13:41:34','Kg',0.00,0.00,NULL,14),(16,'1',45.00,'2014-01-15 13:47:24','mmHg',0.00,0.00,NULL,7),(17,'1',100.00,'2014-01-15 13:47:24','mmHg',0.00,0.00,NULL,7),(18,'1',100.00,'2014-01-25 13:48:09','mmHg',0.00,0.00,NULL,8),(19,'1',65.00,'2014-01-25 13:48:09','mmHg',0.00,0.00,NULL,8),(21,'2',78.00,'2014-01-30 18:01:59','Kg',0.00,0.00,NULL,31),(31,'1',78.00,'2014-02-19 08:41:54','mmHg',0.00,0.00,NULL,41),(41,'1',96.00,'2014-02-19 08:41:55','mmHg',0.00,0.00,NULL,41),(51,'2',51.00,'2014-02-19 08:43:27','Kg',0.00,0.00,NULL,51);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (4,1000074,12,4,'','','','','','','','','',8),(11,1000101,41,4,'','','','','','','','','',21);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientassessment`
--

LOCK TABLES `patientassessment` WRITE;
/*!40000 ALTER TABLE `patientassessment` DISABLE KEYS */;
INSERT INTO `patientassessment` VALUES (1,4,'2014-01-10 15:41:10',1,13,1,'1','1',1,1,1,1,1,1.00,1,1,1,1,1,1,'','\0','\0','\0','','1'),(2,4,'2014-01-14 14:18:47',1,1,3,'2','3',2,3,2,3,2,3.00,2,3,3,3,3,3,'','','','','\0','3');
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
) ENGINE=InnoDB AUTO_INCREMENT=1000122 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persondata`
--

LOCK TABLES `persondata` WRITE;
/*!40000 ALTER TABLE `persondata` DISABLE KEYS */;
INSERT INTO `persondata` VALUES (1000041,'Admin','Mr.'),(1000069,'clinician1','clinician1'),(1000073,'carer10','carer10'),(1000074,'patient1','patient1'),(1000091,'carer2','carer2'),(1000101,'patient2','patient2'),(1000121,'cli3surname','cli3name');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionnaire`
--

LOCK TABLES `questionnaire` WRITE;
/*!40000 ALTER TABLE `questionnaire` DISABLE KEYS */;
INSERT INTO `questionnaire` VALUES (1,1.00,'cuestionario1'),(3,1.00,NULL),(13,1.00,NULL),(14,1.00,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionnaireanswer`
--

LOCK TABLES `questionnaireanswer` WRITE;
/*!40000 ALTER TABLE `questionnaireanswer` DISABLE KEYS */;
INSERT INTO `questionnaireanswer` VALUES (1,2,'1',1000053,'2014-01-14 14:12:30',1000054),(2,3,'1',1000053,'2014-01-14 14:12:30',1000054),(3,4,'adsadasdasdasd',1000053,'2014-01-14 14:12:30',1000054);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionnairequestion`
--

LOCK TABLES `questionnairequestion` WRITE;
/*!40000 ALTER TABLE `questionnairequestion` DISABLE KEYS */;
INSERT INTO `questionnairequestion` VALUES (2,'OneAnswer','\0',NULL,'111111111111111',13,0,'\0',1,1),(3,'ManyAnswers','\0',NULL,'2222222222222',13,0,'\0',2,2),(4,'FreeText','\0',NULL,'3333333333',13,0,'\0',3,3),(5,'OneAnswer','\0',NULL,'Edad?',14,0,'\0',1,1),(6,'OneAnswer','\0',NULL,'Hombre / Mujer',14,0,'\0',2,2),(7,'FreeText','\0',NULL,'Lugar de residencia',14,0,'\0',3,3),(8,'OneAnswer','\0',NULL,'Como se encuentra?',14,0,'\0',4,4),(9,'','\0',5,'',14,0,'\0',0,0),(10,'','\0',6,'',14,0,'\0',0,0),(11,'','\0',7,'',14,0,'\0',0,0),(12,'','\0',8,'',14,0,'\0',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionnairequestionanswer`
--

LOCK TABLES `questionnairequestionanswer` WRITE;
/*!40000 ALTER TABLE `questionnairequestionanswer` DISABLE KEYS */;
INSERT INTO `questionnairequestionanswer` VALUES (1,1,NULL,2,'\0',1),(2,1,NULL,3,'\0',1),(3,2,NULL,3,'\0',2),(4,1,NULL,5,'\0',1),(5,1,NULL,6,'\0',1),(6,2,NULL,6,'\0',2),(7,1,NULL,8,'\0',1),(8,2,NULL,8,'\0',2),(9,3,NULL,8,'\0',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sociodemographicdata`
--

LOCK TABLES `sociodemographicdata` WRITE;
/*!40000 ALTER TABLE `sociodemographicdata` DISABLE KEYS */;
INSERT INTO `sociodemographicdata` VALUES (11,0,0,0,0,'1969-05-12 00:00:00'),(12,1,1,6,0,'1944-10-18 00:00:00'),(31,0,0,0,0,'1989-01-01 00:00:00'),(41,1,1,1,0,'1954-06-10 00:00:00'),(51,0,0,0,0,'1900-01-01 00:00:00'),(61,1,1,1,0,'1990-01-01 00:00:00'),(71,0,0,0,0,'2014-03-07 00:00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,1,'2014-01-04 12:00:00','2014-01-04 12:00:00',1,'','',1,1000048,1000050,1000054),(2,1,'2014-01-06 12:00:00','2014-01-06 12:00:00',1,'','',1,1000048,1000050,1000054),(3,1,'2014-01-03 12:00:00','2014-01-03 12:00:00',1,'','',1,1000048,1000050,1000054),(4,1,'2014-01-05 12:00:00','2014-01-05 12:00:00',2,'','',1,1000053,1000050,1000054),(5,1,'2014-01-10 12:00:00','2014-01-10 15:37:29',3,'','',3,1000053,1000050,1000054),(6,1,'2014-01-14 12:00:00','2014-01-14 14:12:31',3,'','',13,1000053,1000050,1000054),(7,3,'2014-01-15 12:00:00','2014-01-15 12:00:00',3,'','',NULL,1000053,1000050,1000054),(8,3,'2014-01-14 12:00:00','2014-01-14 12:00:00',3,'','',NULL,1000053,1000050,1000054),(9,4,'2014-01-14 12:00:00','2014-01-14 12:00:00',3,'','',NULL,1000053,1000050,1000054),(10,7,'2014-01-14 12:00:00','2014-01-14 12:00:00',3,'www.google.es','adasd',NULL,1000053,1000050,1000054),(11,1,'2013-12-31 12:00:00','2013-12-31 12:00:00',1,'','',14,1000053,1000050,1000054),(12,1,'2014-01-14 12:00:00','2014-01-14 12:00:00',1,'','',14,1000053,1000050,1000054),(13,8,'2014-01-14 12:00:00','2014-01-14 12:00:00',1,'','hola caracola',NULL,1000053,1000050,1000054),(14,4,'2014-01-15 12:00:00','2014-01-15 12:00:00',3,'','',NULL,1000053,1000050,1000054),(15,4,'2014-01-13 12:00:00','2014-01-13 12:00:00',1,'','',NULL,1000053,1000050,1000054),(16,4,'2014-01-01 12:00:00','2014-01-01 12:00:00',1,'','',NULL,1000053,1000050,1000054),(17,4,'2014-01-01 12:00:00','2014-01-01 12:00:00',1,'','',NULL,1000053,1000050,1000054),(21,4,'2014-01-27 12:00:00','2014-01-27 12:00:00',1,'','',NULL,1000053,1000050,1000054),(31,4,'2014-01-30 12:00:00','2014-01-30 12:00:00',3,'','',NULL,1000053,1000050,1000054),(41,3,'2014-02-19 11:00:00','2014-02-19 11:00:00',3,'','',NULL,1000053,1000050,1000054),(51,4,'2014-02-19 11:00:00','2014-02-19 11:00:00',3,'','',NULL,1000053,1000050,1000054);
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

-- Dump completed on 2014-06-25 16:37:38
