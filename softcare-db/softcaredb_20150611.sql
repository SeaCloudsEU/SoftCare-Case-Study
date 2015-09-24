CREATE DATABASE  IF NOT EXISTS `softcaredb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `softcaredb`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 95.211.172.242    Database: ehealthdb
-- ------------------------------------------------------
-- Server version	5.6.21-1+deb.sury.org~precise+1

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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (32,'LyAgLSsN5hRg+Ks+a4G5NQ==','VjX4eTAfGD8aDwN/2hZWhQ==','BIhnJ7uMckpeI1/T+ZT8zA==','CNk/zzxYxkgdWOrhiKcd/w==','OP5wAwWef4j+xsca3gRyZQ==','eeRgqbgxvl61Cqk4wFYU8g==','Bo2NHU5RYD5yq9f1d6nFAA==','\0',1000103),(33,'ED9w3JVBilCiMRN8tSNLKA==','W4eLX2LipGxK0nhgazcxMQ==','WYuI1bZiX5O6UdQnSkB2Tg==','L93R2jRan27El2kn3Xakvw==','yIzx19D6nSNZJ8o36F60ag==','/EyxfzTyjCIkDQm259nm0w==','caUWzQS46LTOgvaeb6tTpA==','\0',1000104),(35,'xzzPWCaA7vGb7i6xy8qNag==','vEy/JOySSNricqtkrBThkw==','Lf0eZk2xZZOZL76CQeGZmQ==','+NVK0wMheYWNLmOt65uSCQ==','I/MUQC6058G/Ho2mAm5x+w==','+nOEdAEmh+3h8vwgXmP9Yg==','1+UdyzwlLjsRrz2gNHxY2w==','\0',1000109),(36,'RJmVvfHINWukbAHL83+WxA==','5CQETjuarfwEQnaZNJ4lKQ==','QrqOR0ZnFft78vjKAF6WjQ==','S+tP+pOoboYvNmW1BY1PIQ==','f05h+0hgONYSy/ruGLffPQ==','m2pmsp2NmlBJY4STIUaFjQ==','GCOXOasVwbYd5dgI5lFfRw==','\0',1000110),(38,'YFkFVtIYm7l/NbeRYMwWKA==','mArk93f+u/OCgrBHGjSntw==','+Hh3qYtNOOGtrH9p9dSTiw==','FG50aR/TtutIjwK2g/sJyA==','Lszh0+kNxntYlUw5r5gkhg==','UQueg1Whj4cIxfaIwfSVTA==','94J2folBsU6HDiQgbnZfyA==','\0',1000112),(40,'VdtphzakUxhiivKRUn5qdw==','wxt/iaphD788VMK5pHbcLw==','+ZPDiIvr6pJs848fwINs5Q==','S3i1A4Ln+gs+MwUOGOU7CQ==','gavsCUyoggyAvEXdSTwrWA==','p2DW01TIXic2Q2f91uOUxA==','1Nc7ziC2hRXwQPNIilTbvQ==','\0',1000173),(41,'XCQ+0Xh0KlX2j1H4FGXXhQ==','/vPr1hgNrh+16et88vf1uA==','AYnCE9X9W2ohRbbHbIUwVw==','zvA+21db1GwAhMw8mUxdBA==','9G4qCYQWk1oxcxktHah6Cw==','cDfQTC9mDcTFQsSSnNOZdw==','GPO9wc87ovqPaEWjCOEvcA==','\0',1000174),(42,'exc83PQ1V2L6cUiYsUi+RA==','Ienx9fdbYe/hAq197WEFSA==','U3xiDDoYmYG5gMPv6W0jgA==','9TSMn7AkPb7qMcIPMXDx8g==','mWD4CLZZ2rs9EEziOw6SzQ==','fl2y86j2a4JUZvN7n6KMTg==','T/SCuvzTcBOtr23K6H6Kmg==','\0',1000175),(43,'1Mi0mxcq2gqy9fzAWoDMVQ==','7fJugi6/nfL/tbdq8zhGSg==','WimNww15kw1Edus7ypPVMw==','tnZIutRCWoDNP7Rc3+0bAw==','H+HQ6wdqyNpcMgqPeUk6Sw==','eFjvHRUgMw9XRYe1OFYdxw==','yPSOQQRx5T0qqQoTcJjZew==','\0',1000176),(44,'IvInsi23tm64lKBv7g84Uw==','nCGHuIm5ofPcVUA0DOi95w==','PiJulM7bz22oG7BdQx00mg==','Y/ma/u8k2tHLcCjUNZ4C8g==','1PHSoiFOY6oWrV8UnViaew==','7CGR2c+VWjKkOynculRzAA==','qmv+4s9LfX/WfoYnCfr94w==','\0',1000177),(45,'jTpLLtOFUsq96jECoeaaTg==','mkldYwiI4RxoUvhRdrKeUQ==','/i+tEvdD1CuJRW0VDgn2UQ==','9SXFiRgUQVpU9bLBdR+OKw==','vUwGSR40bDe9ISdOtc2GXQ==','9n7BDv5al+4Ucb6JzLUKUA==','IKoYXZERZ+snrabEm93zow==','\0',1000178),(57,'InACnZBnEQWZ5nheC1tMQQ==','ffWwnHzUWEPed5s/IYCb4Q==','kocZohkQEJsnPHvg2xvW/A==','Ne5Wwm2t+7x7DfcrjZEqLw==','ScnjaVXw2U7YI0hQBsKmbQ==','fPO3aKIKRlBx9yxXi5ttzw==','o+BUrIEb5Nyt2HIMy8yCWg==','\0',1000190),(58,'ZYgySPbmAQQPLCpryDE5FQ==','Vah/dKGfkG1Ipahd6+9Qjw==','HtvnV5kJPGH0XuoS0Aa27A==','JHySAHx7W3uKorQuuAz8EA==','XURBAFQgyLlnWUPcoUW19g==','gVKM95iA+Es7PKTbPVSIzQ==','MpX/RiHeuDNaN3jJOS8soQ==','\0',1000111),(59,'5tT0VS8BwmqZltEZ7+uhjw==','VcO8on2rvvU2jZ3SDgpuUg==','UaAS6Y3egWMMlF0JJbAkBg==','K9pWy7oKyfBnoCggPo+n7w==','v5V/+HKZizDl6wTpX0zyLg==','Vcpq0j0EQ+pRvmxaJ+Vawg==','1z0cJzGfUVKssbauLl19+g==','\0',1000102),(60,'QZfM5mRGuhxJiy1yLGkCSg==','pRYA1ACVSOrxgItJhOhqQg==','bA59SfTnw/HE9r9xYARKbA==','XEsIHBI1MkqcBga07vuIrw==','/RSw0Dr0y5Jb92a5CU9ycA==','dlRoarLGxS7fgUa3DyPUag==','eqVP2vjl++Fn+ytGq37xjw==','\0',1000105),(61,'Q/dUEHQeXuW6mkgcVStXDw==','0HipHXt0R9nA1G9VoLf+MQ==','gXMJITThdxyt3gFjST4ROA==','b4pQ1BZ7uvRnKKK3fZB6cA==','TVwLRVPPbay4YdDg2jjuKQ==','j0YFE1msJyPB0sSi/oGH1Q==','Te6t5vm/sbX4cKgmxheUeA==','\0',1000207);
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
) ENGINE=InnoDB AUTO_INCREMENT=1000160 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aladdinuser`
--

LOCK TABLES `aladdinuser` WRITE;
/*!40000 ALTER TABLE `aladdinuser` DISABLE KEYS */;
INSERT INTO `aladdinuser` VALUES (1000071,'admin','9ibtMUHvuqiRjQt6qI5FXwAvTbTjx94CqCPXNA==',1,1000093,'\0','2015-06-08 11:59:50',0),(1000081,'rosogonatos_sc','hDF3pQn/09GnKFG85NYFYyOh1YzAJ+z8CeMNSw==',2,1000103,'\0','2014-03-07 16:03:34',0),(1000082,'pebe','9ibtMUHvuqiRjQt6qI5FXwAvTbTjx94CqCPXNA==',2,1000104,'\0','2014-03-07 16:04:51',0),(1000083,'rsucasas','yB1qHc2ETFaKjOvAiBEyaPYxrbXW8VjGBSnbow==',2,1000105,'\0','2014-03-10 10:33:04',0),(1000084,'admin2','Rebtm0QOXUABx1sC/0HuOhaFhh0AmnNGmQdzZA==',1,1000106,'','2014-09-16 06:50:11',5),(1000085,'admin3','Ug0QjIq9QTJFMitO0r8a6BydvERJxAgpmqIxoQ==',1,1000107,'\0','2014-09-16 07:16:23',0),(1000086,'admin4','QPBRuTSz06glsfZnfRQ/gcSSjUxBuqz3ZNf7PA==',1,1000108,'\0','2014-03-10 14:54:32',0),(1000087,'feji','+7wScoY50/AKoK/hIaZo9SKkgwoeQDw69aIKLg==',2,1000109,'\0','2014-03-11 10:47:34',0),(1000088,'house','eGNvUyjCrAHUruFlUlYzF4rMOZair5SyNlx40A==',2,1000110,'\0','2015-06-11 09:34:26',0),(1000089,'felo','F/BWYrKDIsJV+6C2XBmNhG/W+/PWA6DnWAJgVQ==',3,1000111,'\0','2015-06-01 14:13:56',0),(1000090,'caco','AV7l4rBUD43Yk3b6JEbqBPPxBO1AGtgd2aUMzw==',4,1000112,'\0','2014-03-12 11:51:02',0),(1000091,'juju','dW/Aj/sh0TJ9U4MiaIpJ6T3ZiyM48lwam1eQBQ==',1,1000113,'\0','2014-04-07 12:50:02',0),(1000092,'rame','xhs+fk9ldVKQtymrb2J/RCAHCbB1kq7pzxBXGQ==',1,1000114,'\0','2014-04-14 08:26:18',0),(1000119,'usertest','heiHLP65QJXMgANNWYh5+iac4sjfW3IVTG8qzQ==',4,1000141,'','2014-09-22 13:40:45',5),(1000139,'pepe','lLuwQGFoMIb0dLF8zcl4CoAqKemhULjD1gGMwg==',4,1000172,'','2014-10-15 11:30:51',5),(1000140,'amug','n0v1n74X5TD/LIpqPKu2HNMrHleXsWv2g9wNVg==',3,1000173,'\0','2014-10-23 14:07:34',0),(1000141,'pecora','BvzK6CjneCJ3pMi3AW+Zq+mAK6NRJX2aDdMsTA==',4,1000174,'\0','2014-10-23 14:12:07',0),(1000142,'luviga','MFqTObZadMEVXxVprnjknc17wRN97tFzTNiLWA==',3,1000175,'\0','2014-10-23 15:53:25',0),(1000143,'rsucasas','557IE59JUHXm5kcyZQIVlD1fLLWm8tN6+0clNA==',3,1000176,'\0','2014-10-24 08:13:40',0),(1000144,'pecas','/3ZfJNWWx84rvE5g7kXdEmM+LQZbaNa4nrP6FA==',3,1000177,'\0','2014-10-24 08:24:57',0),(1000145,'cacla','TXqd2Gyo4dOH0oopUa8tQFTcGd9rEUDew1+ibw==',3,1000178,'\0','2014-10-24 08:30:04',0),(1000146,'pepa','brBk/9vji1NgEPvJ8nTCS00JP9fzEcF6C8lKaw==',3,1000179,'\0','2014-10-24 08:40:47',0),(1000147,'popus','RfEkN8jGpyJ0Pqf4e3FqyOQRoO0pcn+XKakRtQ==',3,1000180,'\0','2014-10-24 08:55:05',0),(1000148,'prislo','HxvQ+0EWb2/lI8/KdBw3lqWYSBkFss9TzbbJSg==',3,1000181,'\0','2014-10-24 09:27:13',0),(1000150,'ptest1','yTdCIPWtL/GljMj7tZ1yy8ljnhf9Buod05urqQ==',4,1000183,'\0','2014-10-24 10:25:38',0),(1000157,'test1','hFjCgIPIgcXJZiRbJbs8qncta5wez16ZvPCSoQ==',4,1000190,'\0','2014-11-03 16:27:28',0),(1000158,'test3','z4mnwV428Hyn9YzESJ5sagqoGv3tecchUSr4Kw==',4,1000191,'\0','2014-11-04 15:54:48',0),(1000159,'height1','3GoM6ocfmfh6iOsJbjhvQlpcLTL4fWH/UlYOag==',4,1000207,'\0','2015-05-07 14:36:32',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carer`
--

LOCK TABLES `carer` WRITE;
/*!40000 ALTER TABLE `carer` DISABLE KEYS */;
INSERT INTO `carer` VALUES (1,1000111,1),(2,1000173,3),(3,1000175,5),(4,1000176,6),(5,1000177,7),(6,1000178,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinician`
--

LOCK TABLES `clinician` WRITE;
/*!40000 ALTER TABLE `clinician` DISABLE KEYS */;
INSERT INTO `clinician` VALUES (18,1000102),(19,1000103),(20,1000104),(21,1000105),(22,1000109),(23,1000110),(24,1000184),(25,1000185),(26,1000186),(34,1000196),(35,1000197),(36,1000198),(38,1000200),(39,1000201),(40,1000202),(41,1000203),(42,1000204),(43,1000205),(44,1000206);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communication`
--

LOCK TABLES `communication` WRITE;
/*!40000 ALTER TABLE `communication` DISABLE KEYS */;
INSERT INTO `communication` VALUES (33,'phone','UzAjtSjlR7OiNmOIBS+sDWFnlpcmwiLR','w1S8VqIIOj1suBNOffhAfQ==','\0',1000103),(34,'phone','S3Z4o9f4fqy7l+rpdCIEjBlCbiwQImvf','051YvUIYrOhQzTyAgVGKMQ==','\0',1000104),(36,'email','Y08CbB388JasywQrNJsWQRDP8YmWiPbYpUn0/TUYMsE=','FRTe1BZk6rBiawRrYK9pTA==','\0',1000106),(37,'phone','JbyM9GCPz0SQhVboPpTOyLalF77j5B3t','XhK/hfdblG/AXbv5zwxqxA==','\0',1000107),(38,'phone','R8jAHyJqUWtM3PiwAU1vAhOG5JEvUM6h','eEx70jC63DQ0BP5BO1zlkA==','\0',1000108),(39,'phone','2rcWbowJ4Omitu8AqMq5fIkzUjn05GzX','05y+rW0SfXpL3jN330WZ/A==','\0',1000109),(40,'email','0EBRYi/EKk8ukr4onFjj+A7RuZgLwnNAfwnZyfXWGc8=','m/W6nJ5GAD31T7h/hEEvEA==','\0',1000110),(42,'phone','aGAtrGVpmtPRZOoZX0l2w+RJdv3rF3H0','+7x+elkMA9m8MaAutJ/G3A==','\0',1000112),(43,'email','7wrg9XC6noRhaE9LomagL4+QjJazTLCH','/p1PdiZVJkLVqbPMiz0R1A==','\0',1000113),(47,'phone','ot0sGEOkf3ks0pDiCPoRVZZ1i1PF/Huk','eWXB7U4FqoNdPjGfQAedXw==','\0',1000173),(48,'email','fQNN4h8j/YlG4HcUv1X9T6/RrXGUFpjM','JoeBqQBV7JXuQQHD5ik0Uw==','\0',1000174),(49,'phone','HZzzLG9E08wchJ9MyfOKmg5xTjTO0Gu+','sWgxfEi4LlOKj2fUa+AzkQ==','\0',1000175),(50,'phone','fgMmH4BsUCZELE8ga+581qTs9AnI9EjN','FpMDWPb37+iieZ5npV5T/A==','\0',1000176),(51,'phone','fl4Szzi4w+e/eT5DKPemZAUbrLiUVOEY','TRozAPlBj8nCx7NGGhvgEg==','\0',1000177),(52,'phone','ImY5R1xdQSOSuPBOSOeA6lymbs6jTFSu','Ba1gDCW/muNxpTQ4uD5dFA==','\0',1000178),(64,'phone','gpOauxCkFfbQQN/G6HeCQxoT5ZEOzeua','W8yd3TdpAhv53PGeffUCFg==','\0',1000190),(65,'phone','yIe065jN6QybpssLGWc6GqMbn/SlBKnf','kWpzkxEWvJ8Wkvvcw3rfsA==','\0',1000111),(66,'phone','eWKXzERFnFWKglRnIgX1z1lKsbC8q1st','JeAvGArE4fnudVVSbnYFqQ==','\0',1000102),(67,'email','8Lce4urvUwLpZhyyw8dKhsl286LqsgUXnnQSRzXc4DA=','BSii1lFQ/9VjWnULNfEijw==','\0',1000102),(68,'phone','ygLEk0+pVO50Ybq2hz7nOVNX9DAiQNRd','ttD4Vh4OqgNS07/8DCO/9g==','\0',1000105),(69,'phone','CCin/U4vZBQw+Sk6PIB2D1ojT94ltoxX','Cs2wH4pNB1eIBxBAZlgxpA==','\0',1000114),(70,'phone','jlrcs/1EYYEcdOd16TZRGGVh7l5bOCGt','8k5gohgDG7zOIYtWsgedLg==','\0',1000207);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entertainmentcontent`
--

LOCK TABLES `entertainmentcontent` WRITE;
/*!40000 ALTER TABLE `entertainmentcontent` DISABLE KEYS */;
INSERT INTO `entertainmentcontent` VALUES (1,'Viviendo con el Alzheimer','http://www.youtube.com/v/EWXTaUAz4Zg','Media Content','education','30 Minutos Viviendo con el Alzheimer - Telemadrid',''),(2,'news - Alzheimer\'s Dementia','http://www.youtube.com/v/LL_Gq7Shc-Y','Media Content','education','Experience 12 Minutes In Alzheimer\'s Dementia',''),(3,'Brain Games','http://www.be-dementia-free.com/brain-games.html','Media Content','games','Brain Games','\0'),(4,'Dementia Adventure','http://www.dementiaadventure.co.uk/','Media Content','entertainment','Dementia Adventure connects people living with dementia with nature and a sense of adventure.',''),(5,'dementia-education','http://www.actonalz.org/dementia-education','Media Content','education','The value of understanding Alzheimer\'s disease and dementia is immeasurable for staff who care for people living with the disease. ...','\0');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `externalservice`
--

LOCK TABLES `externalservice` WRITE;
/*!40000 ALTER TABLE `externalservice` DISABLE KEYS */;
INSERT INTO `externalservice` VALUES (1,'http://www.betterhealth.vic.gov.au/bhcv2/bhcarticles.nsf/pages/Dementia_-_activities_and_exercise','Dementia - activities and exercise','exercises');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identifier`
--

LOCK TABLES `identifier` WRITE;
/*!40000 ALTER TABLE `identifier` DISABLE KEYS */;
INSERT INTO `identifier` VALUES (55,'patient','1000','2014-03-07 00:00:00','authority',1000103),(56,'patient','1000','2014-03-07 00:00:00','authority',1000104),(58,'patient','1000','2014-03-10 00:00:00','authority',1000106),(59,'patient','1000','2014-03-10 00:00:00','authority',1000107),(60,'patient','1000','2014-03-10 00:00:00','authority',1000108),(61,'patient','1000','2014-03-11 00:00:00','authority',1000109),(62,'patient','1000','2014-03-12 00:00:00','authority',1000110),(64,'patient','1000','2014-03-12 00:00:00','authority',1000112),(65,'patient','1000','2014-04-07 00:00:00','authority',1000113),(68,'patient','1000','2014-10-23 00:00:00','authority',1000173),(69,'patient','1000','2014-10-23 00:00:00','authority',1000174),(70,'patient','1000','2014-10-23 00:00:00','authority',1000175),(71,'patient','1000','2014-10-24 00:00:00','authority',1000176),(72,'patient','1000','2014-10-24 00:00:00','authority',1000177),(73,'patient','1000','2014-10-24 00:00:00','authority',1000178),(85,'patient','1000','2014-11-04 00:00:00','authority',1000190),(86,'patient','1000','2015-01-08 00:00:00','authority',1000111),(87,'patient','1000','2015-04-30 00:00:00','authority',1000102),(88,'patient','1000','2015-04-30 00:00:00','authority',1000105),(89,'patient','1000','2015-04-30 00:00:00','authority',1000114),(90,'patient','1000','2015-05-07 00:00:00','authority',1000207);
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
  `field1` varchar(45) DEFAULT NULL,
  `field2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKF75C839C5542F21C` (`task`),
  KEY `FKF75C839CFC90A15C` (`patientassessment`),
  CONSTRAINT `FKF75C839C5542F21C` FOREIGN KEY (`task`) REFERENCES `task` (`id`),
  CONSTRAINT `FKF75C839CFC90A15C` FOREIGN KEY (`patientassessment`) REFERENCES `patientassessment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measurement`
--

LOCK TABLES `measurement` WRITE;
/*!40000 ALTER TABLE `measurement` DISABLE KEYS */;
INSERT INTO `measurement` VALUES (49,'2',85.00,'2014-03-15 15:00:00','Kg',0.00,0.00,NULL,37915,'2014-03-21 16:25:14',NULL,NULL,NULL),(50,'2',65.00,'2014-03-16 15:00:00','Kg',0.00,0.00,NULL,37916,'2014-03-21 16:25:21',NULL,NULL,NULL),(51,'2',79.00,'2014-03-20 15:00:00','Kg',0.00,0.00,NULL,37920,'2014-03-21 16:27:26',NULL,NULL,NULL),(52,'2',70.00,'2014-03-21 15:00:00','Kg',0.00,0.00,NULL,37921,'2014-03-21 16:27:31',NULL,NULL,NULL),(53,'3',5058.00,'2014-03-02 15:00:00','steps/day',0.00,0.00,NULL,37899,'2014-03-24 09:12:24',NULL,NULL,NULL),(54,'3',6500.00,'2014-03-03 15:00:00','steps/day',0.00,0.00,NULL,37900,'2014-03-24 09:12:57',NULL,NULL,NULL),(55,'3',4200.00,'2014-03-04 15:00:00','steps/day',0.00,0.00,NULL,37901,'2014-03-24 09:13:04',NULL,NULL,NULL),(56,'3',2000.00,'2014-03-20 15:00:00','steps/day',0.00,0.00,NULL,37933,'2014-03-24 09:13:19',NULL,NULL,NULL),(57,'2',75.00,'2014-03-01 15:00:00','Kg',0.00,0.00,NULL,37896,'2014-03-24 09:13:28',NULL,NULL,NULL),(58,'1',99.00,'2014-03-12 15:00:00','mmHg',0.00,0.00,NULL,8,'2014-03-24 09:48:39',NULL,'dia',NULL),(59,'1',145.00,'2014-03-12 15:00:00','mmHg',0.00,0.00,NULL,8,'2014-03-24 09:48:39',NULL,'sys',NULL),(60,'1',98.00,'2014-03-13 15:00:00','mmHg',0.00,0.00,NULL,9,'2014-03-24 09:48:51',NULL,'dia',NULL),(61,'1',157.00,'2014-03-13 15:00:00','mmHg',0.00,0.00,NULL,9,'2014-03-24 09:48:51',NULL,'sys',NULL),(62,'1',75.00,'2014-03-14 15:00:00','mmHg',0.00,0.00,NULL,10,'2014-03-24 09:49:02',NULL,'dia',NULL),(63,'1',120.00,'2014-03-14 15:00:00','mmHg',0.00,0.00,NULL,10,'2014-03-24 09:49:02',NULL,'sys',NULL),(64,'1',45.00,'2014-03-15 15:00:00','mmHg',0.00,0.00,NULL,11,'2014-03-24 09:49:16',NULL,'dia',NULL),(65,'1',114.00,'2014-03-15 15:00:00','mmHg',0.00,0.00,NULL,11,'2014-03-24 09:49:16',NULL,'sys',NULL),(66,'1',120.00,'2014-03-21 15:00:00','mmHg',0.00,0.00,NULL,37932,'2014-03-24 09:49:26',NULL,'dia',NULL),(67,'1',189.00,'2014-03-21 15:00:00','mmHg',0.00,0.00,NULL,37932,'2014-03-24 09:49:26',NULL,'sys',NULL),(68,'1',32.00,'2014-10-10 15:00:00','mmHg',0.00,0.00,NULL,37935,'2014-10-24 12:36:04',NULL,'dia',NULL),(69,'1',65.00,'2014-10-10 15:00:00','mmHg',0.00,0.00,NULL,37935,'2014-10-24 12:36:06',NULL,'sys',NULL),(70,'2',69.00,'2014-10-10 15:00:00','Kg',0.00,0.00,NULL,37936,'2014-10-24 12:36:18',NULL,NULL,NULL),(71,'2',80.00,'2014-10-16 15:00:00','Kg',0.00,0.00,NULL,37939,'2014-11-03 09:50:53',NULL,NULL,NULL),(72,'2',80.00,'2014-10-18 15:00:00','Kg',0.00,0.00,NULL,37940,'2014-11-03 09:51:11',NULL,NULL,NULL),(73,'2',80.00,'2014-10-20 15:00:00','Kg',0.00,0.00,NULL,37941,'2014-11-03 09:59:04',NULL,NULL,NULL),(74,'2',65.00,'2014-11-01 15:00:00','Kg',0.00,0.00,NULL,38125,'2014-11-04 16:29:09',NULL,NULL,NULL),(75,'2',89.00,'2014-12-21 15:00:00','Kg',0.00,0.00,NULL,37972,'2015-01-21 13:16:25',NULL,NULL,NULL),(76,'2',88.00,'2014-12-23 15:00:00','Kg',0.00,0.00,NULL,37973,'2015-01-21 13:16:33',NULL,NULL,NULL),(77,'2',90.00,'2014-12-25 15:00:00','Kg',0.00,0.00,NULL,37974,'2015-01-21 13:16:42',NULL,NULL,NULL),(78,'2',85.00,'2014-12-27 15:00:00','Kg',0.00,0.00,NULL,37975,'2015-01-21 13:16:49',NULL,NULL,NULL),(79,'2',83.00,'2014-12-29 15:00:00','Kg',0.00,0.00,NULL,37976,'2015-01-21 13:16:56',NULL,NULL,NULL),(80,'2',80.00,'2014-12-31 15:00:00','Kg',0.00,0.00,NULL,38128,'2015-01-21 13:17:02',NULL,NULL,NULL),(81,'2',79.00,'2015-01-02 15:00:00','Kg',0.00,0.00,NULL,37978,'2015-01-21 13:17:10',NULL,NULL,NULL),(82,'2',80.00,'2015-01-04 15:00:00','Kg',0.00,0.00,NULL,37979,'2015-01-21 13:17:17',NULL,NULL,NULL),(83,'2',78.00,'2015-01-06 15:00:00','Kg',0.00,0.00,NULL,37980,'2015-01-21 13:17:23',NULL,NULL,NULL),(84,'2',77.00,'2015-01-08 15:00:00','Kg',0.00,0.00,NULL,37981,'2015-01-21 13:17:29',NULL,NULL,NULL),(85,'2',69.00,'2015-01-10 15:00:00','Kg',0.00,0.00,NULL,37982,'2015-01-21 13:17:37',NULL,NULL,NULL),(86,'2',69.00,'2015-01-12 15:00:00','Kg',0.00,0.00,NULL,37983,'2015-01-21 13:17:44',NULL,NULL,NULL),(87,'2',68.00,'2015-01-14 15:00:00','Kg',0.00,0.00,NULL,37984,'2015-01-21 13:17:50',NULL,NULL,NULL),(88,'2',69.00,'2015-01-16 15:00:00','Kg',0.00,0.00,NULL,37985,'2015-01-21 13:17:55',NULL,NULL,NULL),(89,'2',67.00,'2015-01-18 15:00:00','Kg',0.00,0.00,NULL,37986,'2015-01-21 13:18:02',NULL,NULL,NULL),(90,'2',69.00,'2015-01-20 15:00:00','Kg',0.00,0.00,NULL,37987,'2015-01-21 13:18:08',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,1000112,2,23,'','','','','','','','','',1),(2,1000174,4,23,'','','','','','','','','',2),(4,1000190,14,23,'','','','','','','','','',6),(5,1000207,15,20,'','','','','','','','','',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientassessment`
--

LOCK TABLES `patientassessment` WRITE;
/*!40000 ALTER TABLE `patientassessment` DISABLE KEYS */;
INSERT INTO `patientassessment` VALUES (1,1,'2015-05-29 14:08:41',1,0,0,'','',0,0,0,0,0,0.00,0,0,0,0,0,0,'\0','\0','\0','\0','\0','');
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
) ENGINE=InnoDB AUTO_INCREMENT=1000208 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persondata`
--

LOCK TABLES `persondata` WRITE;
/*!40000 ALTER TABLE `persondata` DISABLE KEYS */;
INSERT INTO `persondata` VALUES (1000093,'8OmZxjub8QZcchtSLWiKxA==','+F17wlG119+hK8e8BCpThA=='),(1000102,'HHdG2CIsfn0e050K4o62wQ==','m8JfuCkQbdFsZOEeA/Inj3Wl3hq49cDd'),(1000103,'cfn29BUTX9YU484zQ6Unnw==','qzsdwJZ9vZxfRzjz3MWhTw=='),(1000104,'sC8F7DGpAht4MU4Rmklw14+ejpQM7v+b','lsHEoBnjM/hMpilBcPSCoA=='),(1000105,'5hrwAp+AefHmZr506kRrMwkKUpEfSUgH','CTe+UUIq/WDY4j/+6buRgw=='),(1000106,'m0ZKdlpZt9bPsshbUO97L3AFW1cOo63H','bs2FnOE2quYvFcdNxAwwxA=='),(1000107,'ECg2xNi0Dd8vYQ65uNIsdEpOCb9CsOVp','Z67OYnhNhbp4hDhO/ZaSY23tWugRJl3K'),(1000108,'9AxC7rGwysSURvl7vWTNMRYZ5z+s4bh7','WuGEFfngfdbPoD2yoJ/TPA=='),(1000109,'1+Q4D2FBkcCjycKeapj+Ig==','6ybmrqrTU0JL7HrYZJP6KHK4KvzVfoPQ'),(1000110,'jF6rMU8qB7oos7Zqq6WTWw==','Vq/OYe6QfgFjAK6exp0cyg=='),(1000111,'Sb0S+racv15PxHUooCFVQw==','6f2iva0RswBaKl5wstTMevzmVgqUebFk'),(1000112,'TFf3vNCoJGVKd6EemKMKHA==','U2gixnWHdLsCbahKoaTCFQ=='),(1000113,'mS17OYdgl0I7i10Mo6oY+w==','TbIInMpi8iyUljId5CetlQ=='),(1000114,'DC+mAp1cNt1kbzJnHQwGNA==','Xz4YV6cvUPajetUMftDDHw=='),(1000173,'5PYxfkSi0UgBjpk8JeuOgQ==','gV27yd8EFukFbkDIPPJieQ=='),(1000174,'vMwlNx3q50L22yD8kReurw==','kMKiYXRdcxNZ7Rapsq9euw=='),(1000175,'8B/32238hcP66yJHDydPFQ==','1tMX4Uzgc6D3NoygwUCkfA=='),(1000176,'njN42wA9s9752ROyR9sWHQ==','+ox2BfQull6A4PgQRMONpw=='),(1000177,'z4PyH1yJLol/Q+fpdruT8biqRaKXyXrm','5bxKZWMnJYcT6NexmbLt+g=='),(1000178,'myadVX/uCMKobDgpENCRHg==','r0UdOaI54V8ylKASNbO2pg=='),(1000184,'LfQrnnKkrd+lZhn9R3lM+qFpKZ/x6zUx','7nO+RRf2HGKExU1QBwbGkxXjEWyI+vad'),(1000185,'7ZXfK9B9Y+cc9RMCoe5neWZmoAtUgb0p','Brpag2zbdE62w7fYStjI+glqg89y22YK'),(1000186,'N63H/hacppM2fJ4daEwGE4hyx30dG2Im','qNqS7CUHTAhu6+YxVuUFYZLVf1/HzcgI'),(1000190,'ty1cRW0MSFjLcSaeFia5uA==','Mtjo9AfRkUnAkxam+Sz/9w=='),(1000196,'nSe8lgrZ8zQ/q5psWftfDcitntnWdjB4','TprnvfYzIdpABdvl4TpjHgrw2MNvAwrY'),(1000197,'KivhpbNEQ0yiNipj4i0V4Gm9HXWgWd6K','9ZMEUeWEUEKlHR6sovlnbMP7qRGGm1fj'),(1000198,'3M4lLFfIEAdpfmEShH2d2Ce5hxJQqNlq','YU/4NsaX1o6lHdqZ07Z9EVKeTFIUX0Na'),(1000200,'suopPkFdk0H38yVfQyo6d6Ki5TeqJEjR','WVlla5F9W/QBJ+sR+Wm9tDECHAF9ePEb'),(1000201,'xZDveBvkEfahyLJayJLDhVtkaGBXE64d','AW0qRkpVLDA+oBsXnCKYFxZTAnX54nzp'),(1000202,'8yHrloHFE5e3ax6ECeD5aP9NJcVlaVZ9','yA7xjydiNZ8ALz8brkzpAaQS3NsAQvxO'),(1000203,'npFIZJFsntBUH4YBY39qcBEOkGeMxBJh','gXOjUaavfb1zXBX75pU/srxzGIscETZ4'),(1000204,'t204fhrQ340ZV0sB3w1cwh4H2zqIfsAX','UqcdeufzoGEJNHGhXIDQBMiN1y767mhr'),(1000205,'/AEkYvQe8YE+DspYXSDg+rfylPZSjYKG','5Ra61gN3aROGdN8Wbp6vW9zlQn/eR9dn'),(1000206,'H7XsYCGu1qjQegnX9AhMp4aJdp0FIAlJ','VaVE0hx6hcqQFTXfgfjk+KKqrFQyjVyX'),(1000207,'RcwkmlX3R7CElMgVF68vllY3jDrjWDKx','susb81dA5n/B841ziLpqhiISLms+JDLt');
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
-- Table structure for table `rules`
--

DROP TABLE IF EXISTS `rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rules` (
  `id` varchar(45) NOT NULL,
  `comments` varchar(150) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `dataType` int(11) DEFAULT '0',
  `dataTypeDesc` varchar(45) DEFAULT NULL,
  `callerID` int(11) DEFAULT '0',
  `callerIDDesc` varchar(45) DEFAULT NULL,
  `lowerLimit` int(11) DEFAULT '0',
  `upperLimit` int(11) DEFAULT '0',
  `getPrevious` varchar(45) DEFAULT 'false',
  `highRiskThresh` int(11) DEFAULT '0',
  `averageTotalData` int(11) DEFAULT '5',
  `averageWeeksMax` int(11) DEFAULT '2',
  `alg` varchar(100) DEFAULT NULL,
  `activate` varchar(45) DEFAULT 'true',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='replaces rules.xml and rules.json files used to fire warnings after a patient measurements analysis';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules`
--

LOCK TABLES `rules` WRITE;
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;
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
  `height` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sociodemographicdata`
--

LOCK TABLES `sociodemographicdata` WRITE;
/*!40000 ALTER TABLE `sociodemographicdata` DISABLE KEYS */;
INSERT INTO `sociodemographicdata` VALUES (1,0,0,0,0,'1950-01-01 00:00:00',175),(2,1,1,13,0,'1969-01-01 00:00:00',175),(3,0,0,0,0,'1989-06-08 00:00:00',175),(4,1,1,1,0,'1934-10-25 00:00:00',175),(5,0,0,0,0,'1940-06-14 00:00:00',175),(6,0,0,0,0,'2077-01-01 00:00:00',175),(7,0,0,0,0,'1989-01-02 00:00:00',175),(8,0,0,0,0,'1954-09-09 00:00:00',175),(14,1,1,1,0,'1970-01-25 00:00:00',175),(15,1,1,1,0,'1989-01-01 00:00:00',175);
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
) ENGINE=InnoDB AUTO_INCREMENT=38143 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (8,3,'2014-03-12 12:00:00','2014-03-12 12:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(9,3,'2014-03-13 12:00:00','2014-03-13 12:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(10,3,'2014-03-14 12:00:00','2014-03-14 12:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(11,3,'2014-03-15 12:00:00','2014-03-15 12:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37896,4,'2014-03-01 12:00:00','2014-03-02 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37899,6,'2014-03-02 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37900,6,'2014-03-03 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37901,6,'2014-03-04 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37902,4,'2014-03-02 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37903,4,'2014-03-03 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37904,4,'2014-03-04 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37905,4,'2014-03-05 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37906,4,'2014-03-06 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37907,4,'2014-03-07 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37908,4,'2014-03-08 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37909,4,'2014-03-09 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37910,4,'2014-03-10 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37911,4,'2014-03-11 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37912,4,'2014-03-12 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37913,4,'2014-03-13 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37914,4,'2014-03-14 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37915,4,'2014-03-15 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37916,4,'2014-03-16 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37917,4,'2014-03-17 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37918,4,'2014-03-18 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37919,4,'2014-03-19 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37920,4,'2014-03-20 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37921,4,'2014-03-21 12:00:00','2014-03-03 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37922,4,'2014-03-22 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37923,4,'2014-03-23 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37924,4,'2014-03-24 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37925,4,'2014-03-25 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37926,4,'2014-03-26 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37927,4,'2014-03-27 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37928,4,'2014-03-28 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37929,4,'2014-03-29 12:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37930,4,'2014-03-30 13:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37931,4,'2014-03-31 13:00:00','2014-03-03 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37932,3,'2014-03-21 12:00:00','2014-03-21 12:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37933,6,'2014-03-20 12:00:00','2014-03-20 12:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:18:12'),(37934,3,'2014-03-22 12:00:00','2014-03-22 12:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-03-21 12:19:00'),(37935,3,'2014-10-10 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:28'),(37936,4,'2014-10-10 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37937,4,'2014-10-12 12:00:00','2014-10-11 00:00:00',2,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37938,4,'2014-10-14 12:00:00','2014-10-11 00:00:00',2,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37939,4,'2014-10-16 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37940,4,'2014-10-18 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37941,4,'2014-10-20 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37942,4,'2014-10-22 12:00:00','2014-10-11 00:00:00',2,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37943,4,'2014-10-24 12:00:00','2014-10-11 00:00:00',2,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37944,4,'2014-10-26 12:00:00','2014-10-11 00:00:00',2,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37945,4,'2014-10-28 12:00:00','2014-10-11 00:00:00',2,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37946,4,'2014-10-30 12:00:00','2014-10-11 00:00:00',2,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37947,4,'2014-11-01 12:00:00','2014-10-11 00:00:00',2,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37948,4,'2014-11-03 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37949,4,'2014-11-05 12:00:00','2014-10-11 00:00:00',2,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37950,4,'2014-11-07 12:00:00','2014-10-11 00:00:00',2,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37951,4,'2014-11-09 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37952,4,'2014-11-11 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37953,4,'2014-11-13 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37954,4,'2014-11-15 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37955,4,'2014-11-17 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37956,4,'2014-11-19 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37957,4,'2014-11-21 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37958,4,'2014-11-23 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37959,4,'2014-11-25 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37960,4,'2014-11-27 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37961,4,'2014-11-29 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37962,4,'2014-12-01 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37963,4,'2014-12-03 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37964,4,'2014-12-05 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37965,4,'2014-12-07 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37966,4,'2014-12-09 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37967,4,'2014-12-11 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37968,4,'2014-12-13 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37969,4,'2014-12-15 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37970,4,'2014-12-17 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37971,4,'2014-12-19 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37972,4,'2014-12-21 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37973,4,'2014-12-23 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37974,4,'2014-12-25 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37975,4,'2014-12-27 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37976,4,'2014-12-29 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37977,4,'2014-12-31 12:00:00','2014-10-11 00:00:00',2,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37978,4,'2015-01-02 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37979,4,'2015-01-04 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37980,4,'2015-01-06 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37981,4,'2015-01-08 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37982,4,'2015-01-10 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37983,4,'2015-01-12 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37984,4,'2015-01-14 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37985,4,'2015-01-16 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37986,4,'2015-01-18 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37987,4,'2015-01-20 12:00:00','2014-10-11 00:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37988,4,'2015-01-22 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37989,4,'2015-01-24 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37990,4,'2015-01-26 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37991,4,'2015-01-28 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37992,4,'2015-01-30 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37993,4,'2015-02-01 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37994,4,'2015-02-03 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37995,4,'2015-02-05 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37996,4,'2015-02-07 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37997,4,'2015-02-09 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37998,4,'2015-02-11 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(37999,4,'2015-02-13 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38000,4,'2015-02-15 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38001,4,'2015-02-17 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38002,4,'2015-02-19 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38003,4,'2015-02-21 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38004,4,'2015-02-23 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38005,4,'2015-02-25 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38006,4,'2015-02-27 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38007,4,'2015-03-01 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38008,4,'2015-03-03 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38009,4,'2015-03-05 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38010,4,'2015-03-07 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38011,4,'2015-03-09 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38012,4,'2015-03-11 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38013,4,'2015-03-13 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38014,4,'2015-03-15 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38015,4,'2015-03-17 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38016,4,'2015-03-19 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38017,4,'2015-03-21 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38018,4,'2015-03-23 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38019,4,'2015-03-25 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38020,4,'2015-03-27 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38021,4,'2015-03-29 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38022,4,'2015-03-31 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38023,4,'2015-04-02 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38024,4,'2015-04-04 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38025,4,'2015-04-06 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38026,4,'2015-04-08 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38027,4,'2015-04-10 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38028,4,'2015-04-12 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38029,4,'2015-04-14 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38030,4,'2015-04-16 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38031,4,'2015-04-18 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38032,4,'2015-04-20 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38033,4,'2015-04-22 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38034,4,'2015-04-24 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38035,4,'2015-04-26 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38036,4,'2015-04-28 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38037,4,'2015-04-30 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38038,4,'2015-05-02 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38039,4,'2015-05-04 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38040,4,'2015-05-06 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38041,4,'2015-05-08 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38042,4,'2015-05-10 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38043,4,'2015-05-12 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38044,4,'2015-05-14 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38045,4,'2015-05-16 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38046,4,'2015-05-18 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38047,4,'2015-05-20 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38048,4,'2015-05-22 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38049,4,'2015-05-24 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38050,4,'2015-05-26 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38051,4,'2015-05-28 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38052,4,'2015-05-30 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38053,4,'2015-06-01 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38054,4,'2015-06-03 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38055,4,'2015-06-05 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38056,4,'2015-06-07 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38057,4,'2015-06-09 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38058,4,'2015-06-11 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38059,4,'2015-06-13 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38060,4,'2015-06-15 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38061,4,'2015-06-17 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38062,4,'2015-06-19 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38063,4,'2015-06-21 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38064,4,'2015-06-23 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38065,4,'2015-06-25 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38066,4,'2015-06-27 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38067,4,'2015-06-29 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38068,4,'2015-07-01 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38069,4,'2015-07-03 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38070,4,'2015-07-05 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38071,4,'2015-07-07 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38072,4,'2015-07-09 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38073,4,'2015-07-11 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38074,4,'2015-07-13 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38075,4,'2015-07-15 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38076,4,'2015-07-17 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38077,4,'2015-07-19 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38078,4,'2015-07-21 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38079,4,'2015-07-23 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38080,4,'2015-07-25 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38081,4,'2015-07-27 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38082,4,'2015-07-29 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38083,4,'2015-07-31 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38084,4,'2015-08-02 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38085,4,'2015-08-04 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38086,4,'2015-08-06 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38087,4,'2015-08-08 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38088,4,'2015-08-10 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38089,4,'2015-08-12 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38090,4,'2015-08-14 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38091,4,'2015-08-16 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38092,4,'2015-08-18 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38093,4,'2015-08-20 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38094,4,'2015-08-22 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38095,4,'2015-08-24 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38096,4,'2015-08-26 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38097,4,'2015-08-28 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38098,4,'2015-08-30 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38099,4,'2015-09-01 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38100,4,'2015-09-03 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38101,4,'2015-09-05 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38102,4,'2015-09-07 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38103,4,'2015-09-09 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38104,4,'2015-09-11 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38105,4,'2015-09-13 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38106,4,'2015-09-15 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38107,4,'2015-09-17 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38108,4,'2015-09-19 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38109,4,'2015-09-21 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38110,4,'2015-09-23 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38111,4,'2015-09-25 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38112,4,'2015-09-27 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38113,4,'2015-09-29 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38114,4,'2015-10-01 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38115,4,'2015-10-03 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38116,4,'2015-10-05 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38117,4,'2015-10-07 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38118,4,'2015-10-09 12:00:00','2014-10-11 00:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-10 11:47:58'),(38119,3,'2014-11-06 12:00:00','2014-11-06 12:00:00',2,'','',NULL,1000089,1000088,1000090,'2014-10-28 14:42:46'),(38120,6,'2014-11-07 12:00:00','2014-11-07 12:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-28 14:45:49'),(38121,4,'2014-11-07 12:00:00','2014-11-07 12:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-10-28 14:50:01'),(38122,3,'2014-10-29 12:00:00','2014-10-29 12:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-11-04 12:46:51'),(38123,6,'2014-11-04 12:00:00','2014-11-04 12:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-11-04 12:49:35'),(38124,3,'2014-11-05 12:00:00','2014-11-05 12:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-11-04 12:50:10'),(38125,4,'2014-11-01 12:00:00','2014-11-01 12:00:00',3,'','',NULL,1000089,1000088,1000090,'2014-11-04 16:27:21'),(38126,6,'2014-11-01 12:00:00','2014-11-01 12:00:00',2,'','',NULL,1000089,1000088,1000090,'2014-11-04 16:28:14'),(38127,6,'2014-11-02 12:00:00','2014-11-02 12:00:00',1,'','',NULL,1000089,1000088,1000090,'2014-11-26 14:06:22'),(38128,4,'2014-12-31 12:00:00','2014-12-31 12:00:00',3,'','',NULL,1000089,1000088,1000090,'2015-01-08 13:30:02'),(38129,4,'2014-12-31 12:00:00','2014-12-31 12:00:00',1,'','',NULL,1000145,1000088,1000157,'2015-01-08 13:35:35'),(38130,4,'2015-01-03 12:00:00','2015-01-03 12:00:00',1,'','',NULL,1000145,1000088,1000157,'2015-01-08 14:01:04'),(38131,4,'2015-01-06 12:00:00','2015-01-06 12:00:00',1,'','',NULL,1000145,1000088,1000157,'2015-01-08 14:23:34'),(38132,4,'2015-01-10 12:00:00','2015-01-10 12:00:00',1,'','',NULL,1000145,1000088,1000157,'2015-01-08 14:24:03'),(38133,4,'2015-01-01 12:00:00','2015-01-01 12:00:00',1,'','',NULL,1000140,1000088,1000141,'2015-01-12 09:11:55'),(38134,20,'2015-05-03 10:00:00','2015-05-03 10:00:00',1,'','',NULL,1000089,1000088,1000090,'2015-05-29 14:52:46'),(38135,20,'2015-06-12 10:00:00','2015-06-12 10:00:00',2,'','',NULL,1000089,1000088,1000090,'2015-06-01 08:20:31'),(38136,8,'2015-06-12 10:00:00','2015-06-12 10:00:00',2,'','a b c',NULL,1000089,1000088,1000090,'2015-06-01 13:28:14'),(38137,6,'2015-06-12 10:00:00','2015-06-12 10:00:00',1,'','',NULL,1000089,1000088,1000090,'2015-06-01 13:33:22'),(38138,7,'2015-06-12 10:00:00','2015-06-12 10:00:00',1,'asdasd','123123asdasdasdasddasdasd',NULL,1000089,1000088,1000090,'2015-06-01 13:33:41'),(38139,20,'2015-06-12 10:00:00','2015-06-12 10:00:00',2,'','',NULL,1000089,1000088,1000090,'2015-06-01 13:34:01'),(38140,20,'2015-06-06 10:00:00','2015-06-06 10:00:00',1,'','mañana',NULL,1000089,1000088,1000090,'2015-06-01 13:38:25'),(38141,8,'2015-06-04 10:00:00','2015-06-04 10:00:00',1,'','loco ...!!!!',NULL,1000089,1000088,1000090,'2015-06-01 14:13:16'),(38142,8,'2015-05-29 10:00:00','2015-05-29 10:00:00',1,'','chacho, loco!!!!',NULL,1000089,1000088,1000090,'2015-06-01 14:14:44');
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
  `DateTimeOfWarning` datetime DEFAULT CURRENT_TIMESTAMP,
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warning`
--

LOCK TABLES `warning` WRITE;
/*!40000 ALTER TABLE `warning` DISABLE KEYS */;
INSERT INTO `warning` VALUES (9,2,'2014-03-21 16:27:31',NULL,NULL,NULL,'Type {Weight} Current value = 70.0, Previous value = 79.0',NULL,'',1),(10,2,'2014-03-24 09:13:29',NULL,NULL,NULL,'Type {Weight} Current value = 75.0, Previous value = 70.0',NULL,'',1),(11,2,'2014-03-24 09:48:39',NULL,NULL,NULL,'Type {Diastolic Blood Pressure} Current value = 99.0, Previous value = 0.0',NULL,'\0',1),(12,2,'2014-03-24 09:48:51',NULL,NULL,NULL,'Type {Diastolic Blood Pressure} Current value = 98.0, Previous value = 0.0',NULL,'\0',1),(13,2,'2014-03-24 09:48:51',NULL,NULL,NULL,'Type {Systolic Blood Pressure} Current value = 157.0, Previous value = 0.0',NULL,'\0',1),(14,2,'2014-03-24 09:49:16',NULL,NULL,NULL,'Type {Diastolic Blood Pressure} Current value = 45.0, Previous value = 0.0',NULL,'\0',1),(15,2,'2014-03-24 09:49:26',NULL,NULL,NULL,'Type {Diastolic Blood Pressure} Current value = 120.0, Previous value = 0.0',NULL,'\0',1),(16,2,'2014-03-24 09:49:26',NULL,NULL,NULL,'Type {Systolic Blood Pressure} Current value = 189.0, Previous value = 0.0',NULL,'\0',1),(17,2,'2014-10-24 12:36:05',NULL,NULL,NULL,'-Diastolic Blood Pressure- [Current value = 32.0, Upper limit = 90.0, Lower limit = 50.0]',NULL,'\0',1),(18,2,'2014-10-24 12:36:06',NULL,NULL,NULL,'-Systolic Blood Pressure- [Current value = 65.0, Upper limit = 150.0, Lower limit = 80.0]',NULL,'\0',1);
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

-- Dump completed on 2015-06-11 11:58:13
