-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: tourbase
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.12.04.1

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
-- Table structure for table `WREGIONS`
--

DROP TABLE IF EXISTS `WREGIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WREGIONS` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `COD` varchar(10) DEFAULT NULL,
  `WCOUNTRY_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WREGIONS`
--

LOCK TABLES `WREGIONS` WRITE;
/*!40000 ALTER TABLE `WREGIONS` DISABLE KEYS */;
INSERT INTO `WREGIONS` VALUES (1,'Abu Dhabi','ABD',1),(2,'Dubai','DUB',1),(3,'Sharjah','SHA',1),(4,'Fujairah','FUJ',1),(5,'Ajman','AJM',1),(6,'Ras Al Khaimah','RAK',1),(7,'Umm Al Quwain','UAQ',1),(8,'Tashkent','TSH',3),(9,'Central','AST',4),(10,'Almata','ALM',4),(16,'S.Peterburg',NULL,2),(17,'KIEV',NULL,5),(18,'Donesk',NULL,5),(11,'Moskow',NULL,2),(20,'Yerevan',NULL,6),(21,'Minsk',NULL,8),(12,'Namangan',NULL,3);
/*!40000 ALTER TABLE `WREGIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WPARTNERSERVICE`
--

DROP TABLE IF EXISTS `WPARTNERSERVICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WPARTNERSERVICE` (
  `ID` int(11) NOT NULL,
  `WPARTNER_ID` int(11) NOT NULL,
  `WSERVICELIST_ID` int(11) NOT NULL,
  `WSERVICETYPE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WPARTNERSERVICE`
--

LOCK TABLES `WPARTNERSERVICE` WRITE;
/*!40000 ALTER TABLE `WPARTNERSERVICE` DISABLE KEYS */;
INSERT INTO `WPARTNERSERVICE` VALUES (103,86,1,1),(104,87,38,1),(4,2,21,1),(5,1,1,1),(10,3,1,1),(11,40,1,1),(9,1,6,1),(12,40,2,1),(13,41,1,1),(14,41,2,1),(15,3,357,6),(16,3,358,6),(17,2,357,6),(18,2,358,6),(19,1,27,3),(39,42,2,1),(21,1,362,5),(22,1,360,6),(51,56,1,1),(24,1,359,6),(25,1,357,6),(26,49,361,4),(27,53,361,4),(28,51,361,4),(29,50,361,4),(30,52,361,4),(32,50,363,4),(33,51,363,4),(34,48,27,3),(35,53,363,4),(36,52,363,4),(37,49,363,4),(44,1,361,4),(38,42,1,1),(45,1,363,4),(47,48,366,3),(42,46,1,1),(171,46,184,1),(48,55,1,1),(49,42,360,6),(50,40,360,6),(52,56,21,1),(53,56,23,1),(54,56,219,1),(59,40,39,1),(56,56,57,1),(57,56,68,1),(58,56,38,1),(61,40,32,1),(62,1,374,11),(64,1,4,9),(65,1,5,9),(66,1,372,9),(67,1,373,9),(73,4,31,1),(74,4,32,1),(69,57,27,10),(70,57,366,10),(71,57,369,10),(72,57,370,10),(75,1,3,8),(76,1,5,8),(77,65,33,1),(78,67,1,1),(79,76,104,1),(80,31,97,1),(81,81,157,1),(82,83,2,1),(105,87,57,1),(106,87,2,1),(84,83,1,1),(85,83,4,2),(86,83,4,8),(107,87,268,1),(108,89,103,1),(89,84,3,2),(90,84,3,8),(109,89,102,1),(98,1,3,2),(91,84,152,1),(92,84,145,1),(93,84,220,1),(94,84,221,1),(95,84,144,1),(96,85,39,1),(97,85,58,1),(99,1,4,2),(100,1,5,2),(101,1,372,2),(102,1,373,2),(110,89,22,1),(111,89,179,1),(112,89,219,1),(113,89,230,1),(114,89,231,1),(115,89,301,1),(116,89,352,1),(117,90,2,1),(118,90,188,1),(119,90,219,1),(120,90,270,1),(121,91,119,1),(122,91,24,1),(123,91,26,1),(124,91,195,1),(125,91,198,1),(126,92,2,1),(127,92,25,1),(128,92,179,1),(129,92,333,1),(130,33,111,1),(149,65,260,1),(132,33,118,1),(133,33,179,1),(134,94,23,1),(135,94,112,1),(136,94,117,1),(137,94,184,1),(138,94,273,1),(139,95,131,1),(140,95,187,1),(141,95,301,1),(142,95,340,1),(143,96,145,1),(144,96,152,1),(145,97,76,1),(146,97,144,1),(147,97,188,1),(148,97,207,1),(150,65,52,1),(151,65,158,1),(152,98,21,1),(153,98,322,1),(154,98,38,1),(155,99,9,1),(156,99,11,1),(157,99,375,1),(158,100,1,1),(159,100,181,1),(160,101,376,1),(161,101,377,1),(162,101,378,1),(163,102,2,1),(164,102,380,1),(165,102,219,1),(166,102,179,1),(167,102,381,1),(168,102,382,1),(169,102,294,1),(172,3,29,1);
/*!40000 ALTER TABLE `WPARTNERSERVICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WCITY`
--

DROP TABLE IF EXISTS `WCITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WCITY` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `COD` varchar(10) DEFAULT NULL,
  `WCOUNTRY_ID` int(11) NOT NULL,
  `WREGIONS_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WCITY`
--

LOCK TABLES `WCITY` WRITE;
/*!40000 ALTER TABLE `WCITY` DISABLE KEYS */;
INSERT INTO `WCITY` VALUES (1,'Abu Dhabi',NULL,1,1),(2,'Al Ain',NULL,1,1),(3,'Dubai Jumeirah',NULL,1,2),(4,'Dubai Shayh Zayd',NULL,1,2),(5,'Dubai City',NULL,1,2),(6,'Sharjah',NULL,1,3),(7,'Fujairah',NULL,1,4),(8,'Ajman',NULL,1,5),(9,'Ras Al Khaimah',NULL,1,6),(10,'Umm Al Quwain',NULL,1,7),(11,'Tashkent',NULL,3,8),(12,'Namangan',NULL,3,12),(13,'Chust',NULL,3,12),(14,'Moskow',NULL,2,11),(15,'S.Peterburg',NULL,2,16),(16,'Kiev',NULL,5,17),(21,'Yerevan',NULL,6,20),(22,'Minsk',NULL,8,21),(23,'Almaty',NULL,4,9),(24,'Astana',NULL,4,9);
/*!40000 ALTER TABLE `WCITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WSTAR`
--

DROP TABLE IF EXISTS `WSTAR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WSTAR` (
  `ID` int(11) NOT NULL,
  `STAR` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WSTAR`
--

LOCK TABLES `WSTAR` WRITE;
/*!40000 ALTER TABLE `WSTAR` DISABLE KEYS */;
/*!40000 ALTER TABLE `WSTAR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WCOUNTRY`
--

DROP TABLE IF EXISTS `WCOUNTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WCOUNTRY` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `COD` varchar(10) DEFAULT NULL,
  `INCOM` smallint(6) NOT NULL DEFAULT '0',
  `ACTIVE` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WCOUNTRY`
--

LOCK TABLES `WCOUNTRY` WRITE;
/*!40000 ALTER TABLE `WCOUNTRY` DISABLE KEYS */;
INSERT INTO `WCOUNTRY` VALUES (1,'UAE','AE',1,1),(5,'UKRAINE','UA',0,1),(2,'RUSSIA','RU',0,1),(6,'Armenia','AR',0,1),(3,'UZBEKISTAN','UZ',0,1),(7,'USA','US',0,1),(8,'Belarus','BR',0,1),(4,'KAZAKSTAN','KZ',0,1);
/*!40000 ALTER TABLE `WCOUNTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WPARTNERTYPEADD`
--

DROP TABLE IF EXISTS `WPARTNERTYPEADD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WPARTNERTYPEADD` (
  `ID` int(11) NOT NULL,
  `WPARTNER_ID` int(11) NOT NULL,
  `WPARTNERTYPE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WPARTNERTYPEADD`
--

LOCK TABLES `WPARTNERTYPEADD` WRITE;
/*!40000 ALTER TABLE `WPARTNERTYPEADD` DISABLE KEYS */;
INSERT INTO `WPARTNERTYPEADD` VALUES (1,1,4),(2,2,1),(79,48,3),(66,54,1),(67,43,4),(80,57,3),(70,1,2),(10,42,1),(72,55,1),(73,56,1),(81,51,4),(82,49,4),(83,50,4),(12,40,1),(13,41,1),(90,62,0),(14,46,1),(15,3,1),(84,53,4),(17,4,1),(18,5,1),(19,6,1),(20,7,1),(21,8,1),(22,10,1),(23,13,1),(24,14,1),(25,15,1),(26,16,1),(27,17,1),(28,47,1),(29,20,1),(30,11,1),(31,21,1),(32,44,1),(33,22,1),(34,23,1),(35,24,1),(36,26,1),(37,25,1),(38,27,1),(39,1,1),(85,52,4),(86,59,5),(87,58,5),(43,28,1),(88,60,5),(44,29,1),(45,30,1),(46,31,1),(47,32,1),(48,33,1),(49,34,1),(50,35,1),(51,36,1),(52,37,1),(53,38,1),(54,39,1),(55,43,2),(89,61,5),(91,63,0),(92,64,0),(93,65,1),(94,66,0),(95,67,1),(96,68,0),(97,69,0),(98,70,0),(99,71,0),(100,72,0),(101,74,0),(102,76,1),(103,79,0),(104,78,0),(106,80,0),(107,81,1),(108,83,1),(109,83,2),(110,84,1),(111,84,2),(112,85,1),(113,86,1),(114,87,1),(115,89,1),(116,88,0),(117,90,1),(118,91,1),(119,92,1),(120,94,1),(121,95,1),(122,96,1),(123,97,1),(124,98,1),(125,99,1),(77,43,0),(126,100,1),(127,101,1),(128,102,1),(129,73,0),(130,103,1);
/*!40000 ALTER TABLE `WPARTNERTYPEADD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WSERVICELIST`
--

DROP TABLE IF EXISTS `WSERVICELIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WSERVICELIST` (
  `ID` int(11) NOT NULL,
  `WSERVICECLASS_ID` int(11) NOT NULL DEFAULT '1',
  `WSERVICETYPE_ID` int(11) NOT NULL DEFAULT '1',
  `NAME` varchar(200) NOT NULL,
  `COD` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WSERVICELIST`
--

LOCK TABLES `WSERVICELIST` WRITE;
/*!40000 ALTER TABLE `WSERVICELIST` DISABLE KEYS */;
INSERT INTO `WSERVICELIST` VALUES (1,1,1,'Standard','STD'),(2,1,1,'Deluxe','DLX'),(8,1,1,'1 Bedroom','1BR'),(3,2,0,'Group','ARR'),(4,2,0,'Ind1(Camry)','DPR'),(5,2,0,'Ind2(Mers500)','HBH'),(6,1,1,'Club','CLB'),(7,1,1,'Club Suite','CLS'),(9,1,1,'1 Bedroom Apartment',NULL),(10,1,1,'2 Bedroom',NULL),(11,1,1,'2 Bedroom Apartment',NULL),(12,1,1,'3 Bedroom',NULL),(13,1,1,'3 Bedroom Apartment',NULL),(14,1,1,'4 Bedroom',NULL),(15,1,1,'4 Bedroom Apartment',NULL),(16,1,1,'Business class',NULL),(17,1,1,'Business Suite',NULL),(18,1,1,'Cabana',NULL),(19,1,1,'Cabin',NULL),(20,1,1,'Chalet',NULL),(21,1,1,'Classic',NULL),(22,1,1,'City View',NULL),(23,1,1,'Classic Balcony',NULL),(24,1,1,'Creek',NULL),(25,1,1,'Executive',NULL),(26,1,1,'Grand',NULL),(27,3,0,'Tourist Visa',NULL),(28,1,1,'1 Bedroom Apartment Direct Sea View',NULL),(29,1,1,'1 Bedroom Apartment Palm View',NULL),(30,1,1,'1 Bedroom Apartment Partical Sea View',NULL),(31,1,1,'1 Bedroom Chalet',NULL),(32,1,1,'1 Bedroom Deluxe',NULL),(33,1,1,'1 Bedroom Deluxe Suite',NULL),(34,1,1,'1 Bedroom Duplex',NULL),(35,1,1,'1 Bedroom Flamingo Residence',NULL),(36,1,1,'1 Bedroom Residense Apartment',NULL),(37,1,1,'1 Bedroom Studio Bungalow',NULL),(38,1,1,'1 Bedroom Suite',NULL),(39,1,1,'1 Bedroom Suite City View',NULL),(40,1,1,'1 Bedroom Suite Creek View',NULL),(41,1,1,'1 Bedroom Suite Golf View',NULL),(42,1,1,'1 Bedroom Suite Sea View',NULL),(43,1,1,'1 Bedroom Superior Suite',NULL),(44,1,1,'1 Bedroom Triple',NULL),(45,1,1,'1 Bedroom Villa',NULL),(46,1,1,'2 Bedroom Apartment large',NULL),(47,1,1,'2 Bedroom Apartment Partical Sea View',NULL),(48,1,1,'2 Bedroom Chalet',NULL),(49,1,1,'2 Bedroom Courtyad View',NULL),(50,1,1,'2 Bedroom Creek View',NULL),(51,1,1,'2 Bedroom Deluxe',NULL),(52,1,1,'2 Bedroom Deluxe Suite',NULL),(53,1,1,'2 Bedroom Executive Suite',NULL),(54,1,1,'2 Bedroom Premium',NULL),(55,1,1,'2 Bedroom Residense Apartment',NULL),(56,1,1,'2 Bedroom Sea View',NULL),(57,1,1,'2 Bedroom Suite',NULL),(58,1,1,'2 Bedroom Suite City View',NULL),(59,1,1,'2 Bedroom Suite Golf View',NULL),(60,1,1,'2 Bedroom Suite Sea View',NULL),(61,1,1,'2 Bedroom Superior',NULL),(63,1,1,'3 Bedroom Courtyad View',NULL),(62,1,1,'3 Bedroom Deluxe',NULL),(64,1,1,'3 Bedroom Executive Suite',NULL),(65,1,1,'3 Bedroom Premium',NULL),(66,1,1,'3 Bedroom Residense Apartment',NULL),(67,1,1,'3 Bedroom Sea View',NULL),(68,1,1,'3 Bedroom Suite',NULL),(69,1,1,'3 Bedroom Suite Palace View',NULL),(70,1,1,'3 Bedroom Superior',NULL),(71,1,1,'4 Bedroom Deluxe',NULL),(72,1,1,'4 Bedroom Premium',NULL),(73,1,1,'4 Bedroom Superior',NULL),(74,1,1,'Admiral Floor',NULL),(75,1,1,'Al Sondos Suite',NULL),(76,1,1,'Ambassador Suite',NULL),(77,1,1,'Aqua Marine Suite',NULL),(78,1,1,'Arabian 1 Bedroom Suite',NULL),(79,1,1,'Arabian Court Deluxe',NULL),(80,1,1,'Arabian Court Falcon Executive Suite',NULL),(81,1,1,'Arabian Court Falcon Prince Suite',NULL),(82,1,1,'Arabian Deluxe',NULL),(83,1,1,'Arabian Gulf Suite',NULL),(84,1,1,'Arabian Junior Suite',NULL),(85,1,1,'Armany Classic Room',NULL),(86,1,1,'Armany Deluxe Room',NULL),(87,1,1,'Armany Execuitive Suite',NULL),(88,1,1,'Armany Fountain Suite',NULL),(89,1,1,'Armany Premier Suite',NULL),(90,1,1,'Atlantis',NULL),(91,1,1,'Avari Business Class',NULL),(92,1,1,'Avari Business Class Suite',NULL),(93,1,1,'Avari Superior ',NULL),(94,1,1,'Avari World Traveler ',NULL),(95,1,1,'Avari World Traveler Suite',NULL),(96,1,1,'Battuta Suite',NULL),(97,1,1,'Beachcomder Suite',NULL),(98,1,1,'Beachfront Junior Suite',NULL),(99,1,1,'Bedouin Suite',NULL),(100,1,1,'Cabanas',NULL),(101,1,1,'Captain Suite',NULL),(102,1,1,'Chalet City View',NULL),(103,1,1,'Chalet Sea View',NULL),(104,1,1,'City side',NULL),(105,1,1,'Classic 1 Bedroom Apartment',NULL),(106,1,1,'Classic 1 Bedroom Suite',NULL),(107,1,1,'Classic 2 Bedroom Apartmen',NULL),(108,1,1,'Classic 2 Bedroom Suite',NULL),(109,1,1,'Classic 3 Bedroom Suite',NULL),(111,1,1,'Classic City View',NULL),(110,1,1,'Classic Creek View',NULL),(112,1,1,'Classic Ocean Front',NULL),(113,1,1,'Classic Sea View',NULL),(114,1,1,'Classic Sea View Suite',NULL),(115,1,1,'Classic Studio',NULL),(116,1,1,'Classic Suite',NULL),(117,1,1,'Classic Terrace',NULL),(118,1,1,'Club City View',NULL),(119,1,1,'Club Creek',NULL),(120,1,1,'Club Creek View',NULL),(121,1,1,'Club Executive Arabian Deluxe',NULL),(122,1,1,'Club Executive Ocean Deluxe',NULL),(123,1,1,'Club Floor Deluxe',NULL),(124,1,1,'Club Fointain View',NULL),(125,1,1,'Club Intercontinental',NULL),(126,1,1,'Club Land View',NULL),(127,1,1,'Club Millesime',NULL),(128,1,1,'Club Primier',NULL),(129,1,1,'Club Rotana',NULL),(130,1,1,'Club Rotana Sea View',NULL),(131,1,1,'Club Sea View',NULL),(132,1,1,'Club Sea View Suite',NULL),(133,1,1,'Club Select',NULL),(134,1,1,'Commodore Suite',NULL),(135,1,1,'Corner Suite',NULL),(137,1,1,'Deluxe 1 B/R Apartment',NULL),(136,1,1,'Deluxe 2 B/R Apartment',NULL),(138,1,1,'Deluxe 2 Bedroom',NULL),(139,1,1,'Deluxe 2 BR Suite Resort Collection',NULL),(140,1,1,'Deluxe 3 B/R Apartment',NULL),(141,1,1,'Deluxe 3 BR Suite Resort Collection',NULL),(142,1,1,'Deluxe Burj View',NULL),(143,1,1,'Deluxe Chalet',NULL),(144,1,1,'Deluxe City View',NULL),(145,1,1,'Deluxe Creek View',NULL),(146,1,1,'Deluxe Executive',NULL),(147,1,1,'Deluxe Family Two Bedroom',NULL),(148,1,1,'Deluxe Fountain View',NULL),(149,1,1,'Deluxe Lake View',NULL),(150,1,1,'Deluxe Land View',NULL),(151,1,1,'Deluxe Plus',NULL),(152,1,1,'Deluxe Sea View',NULL),(153,1,1,'Deluxe Studio',NULL),(154,1,1,'Deluxe Suite',NULL),(155,1,1,'Deluxe Triple',NULL),(156,1,1,'Deluxe Twin Suite',NULL),(157,1,1,'Deluxe Walk View',NULL),(158,1,1,'Diplomatic Suite',NULL),(159,1,1,'Diplomatic Suite Lake View',NULL),(160,1,1,'Duplex Ski Chalet',NULL),(161,1,1,'Emirates Suite',NULL),(162,1,1,'Emiri Suite',NULL),(163,1,1,'Empire Villa',NULL),(164,1,1,'Exclusive 2 B/R Suite',NULL),(165,1,1,'Exclusive Deluxe 2 B/R Suite',NULL),(166,1,1,'Execuitive One Bedroom Suite',NULL),(167,1,1,'Executive 1 B/R Suite',NULL),(168,1,1,'Executive Chalet',NULL),(169,1,1,'Executive Creek View',NULL),(170,1,1,'Executive Deluxe',NULL),(171,1,1,'Executive Deluxe Suite',NULL),(172,1,1,'Executive Family Suite',NULL),(173,1,1,'Executive Fointain View',NULL),(174,1,1,'Executive Front',NULL),(175,1,1,'Executive Grand Deluxe',NULL),(176,1,1,'Executive Land View',NULL),(177,1,1,'Executive Sea View',NULL),(178,1,1,'Executive Souk View',NULL),(179,1,1,'Executive Suite',NULL),(180,1,1,'Executive Suite Chalet',NULL),(181,1,1,'Executive Suite Sea View',NULL),(182,1,1,'Executive Superior',NULL),(183,1,1,'Executive Walk View',NULL),(184,1,1,'Family',NULL),(185,1,1,'Family Garden View',NULL),(186,1,1,'Family Rooms 2 Bedrooms (interconnecting)',NULL),(187,1,1,'Family Sea View',NULL),(188,1,1,'Family Suite',NULL),(189,1,1,'Family Suite Sea View',NULL),(190,1,1,'Flamingo Residence 2 Bedroom',NULL),(191,1,1,'Flamingo Suite 1 Bedroom',NULL),(192,1,1,'Full Villa',NULL),(193,1,1,'Garden View',NULL),(194,1,1,'Garden View Junior Suite',NULL),(195,1,1,'Grand Deluxe',NULL),(196,1,1,'Grand Deluxe Balcony',NULL),(197,1,1,'Grand Deluxe Family Two Bedroom',NULL),(198,1,1,'Grand Suite',NULL),(199,1,1,'Gulf Summerhouse - Arabian 1B/R Deluxe',NULL),(200,1,1,'Gulf Summerhouse - Arabian Deluxe',NULL),(201,1,1,'Gulf Summerhouse - Ocean 1B/R Deluxe',NULL),(202,1,1,'Gulf Summerhouse - Ocean Deluxe',NULL),(203,1,1,'Hilton Deluxe (Creek Side View)',NULL),(204,1,1,'Hilton Deluxe Plus (Panoramic Creek)',NULL),(205,1,1,'Hilton Executive (Creek Side View)',NULL),(206,1,1,'Hilton Executive Plus (Panoramic Creek)',NULL),(207,1,1,'Hilton Guest',NULL),(208,1,1,'Hilton Guest (Creek Side View)',NULL),(209,1,1,'Horizon Deluxe',NULL),(210,1,1,'Imperial Club',NULL),(211,1,1,'Imperial Club Executive Suite',NULL),(212,1,1,'Imperial Club Regal Suite',NULL),(213,1,1,'Imperial Club Terrace Suite',NULL),(214,1,1,'Imperial One Bedroom Suite',NULL),(215,1,1,'Imperial Suite Fountain View',NULL),(216,1,1,'Junior Executive',NULL),(217,1,1,'Junior Executive Suite',NULL),(218,1,1,'Junior One Bedroom Suite',NULL),(219,1,1,'Junior Suite',NULL),(220,1,1,'Junior Suite City View',NULL),(221,1,1,'Junior Suite Creek View',NULL),(222,1,1,'Junior Suite Sea View',NULL),(223,1,1,'Lagoon Residense',NULL),(224,1,1,'Laguna Poolside',NULL),(225,1,1,'Landmark Suite',NULL),(226,1,1,'Leisure Club',NULL),(227,1,1,'Loft Studio',NULL),(228,1,1,'Luxury',NULL),(229,1,1,'Master Suite',NULL),(230,1,1,'MB City View',NULL),(231,1,1,'MB Sea View',NULL),(232,1,1,'Meydan 2 Bedroom Suite',NULL),(233,1,1,'Ocean 1 Bedroom Suite',NULL),(234,1,1,'Ocean Club Executive',NULL),(235,1,1,'Ocean Deluxe',NULL),(236,1,1,'Ocean Deluxe Balcony',NULL),(237,1,1,'Ocean Junior Suite',NULL),(238,1,1,'Ocean Premium Leisure Club',NULL),(239,1,1,'Ocean Suite 1 B/R',NULL),(240,1,1,'Ocean Suite 2 B/R',NULL),(241,1,1,'Palace Executive Suite',NULL),(242,1,1,'Palace Gold Club',NULL),(243,1,1,'Palace Gold Club Suite',NULL),(244,1,1,'Palace Lake View',NULL),(245,1,1,'Palace Royal Suite',NULL),(246,1,1,'Palace Suite Fountain View',NULL),(247,1,1,'Palace Suite Lake View',NULL),(248,1,1,'Palace Superior Deluxe',NULL),(249,1,1,'Palm Beach Executive Suite',NULL),(250,1,1,'Palm Beach Executive Suite with poll',NULL),(251,1,1,'Palm Beach Junior Suite',NULL),(252,1,1,'Palm Beach Junior Suite with poll',NULL),(253,1,1,'Palm Beach Premier',NULL),(254,1,1,'Palm Beach Villa',NULL),(255,1,1,'Palm Manor House Executive Suite',NULL),(256,1,1,'Palm Manor House Grand Suite',NULL),(257,1,1,'Palm Manor House Premier',NULL),(258,1,1,'Palm Tree Court Suite',NULL),(259,1,1,'Panoramic 1 Bedroom Suite',NULL),(260,1,1,'Panoramic Suite',NULL),(261,1,1,'Preferred',NULL),(262,1,1,'Preffer',NULL),(263,1,1,'Premier',NULL),(264,1,1,'Premier Burj View',NULL),(265,1,1,'Premier Executive Suite',NULL),(266,1,1,'Premier Fointain View',NULL),(267,1,1,'Premier Junior Suite',NULL),(268,1,1,'Premier One Bedroom Suite',NULL),(269,1,1,'Premier Suite',NULL),(270,1,1,'Premium',NULL),(271,1,1,'Premium 1 Bedroom Apartment',NULL),(272,1,1,'Premium 2 Bedroom Apartment',NULL),(273,1,1,'Premium Balcony',NULL),(274,1,1,'Premium Sea View',NULL),(275,1,1,'Premium Suite',NULL),(276,1,1,'Presidential Suite',NULL),(277,1,1,'Presidential Suite Sea View',NULL),(278,1,1,'Prestige Suite',NULL),(279,1,1,'Raffles Club',NULL),(280,1,1,'Regal Suite',NULL),(281,1,1,'Regency Club',NULL),(282,1,1,'Regency Executive Suite',NULL),(283,1,1,'Regency Suite',NULL),(284,1,1,'Regular',NULL),(285,1,1,'Residence Executive Suite',NULL),(286,1,1,'Residence Garden Villa',NULL),(287,1,1,'Residence Junior Suite',NULL),(288,1,1,'Residence Prestige',NULL),(289,1,1,'Resort Garden Room',NULL),(290,1,1,'Ritz-Carlton Suite',NULL),(291,1,1,'Royal 5 BR Villa Palace Collection',NULL),(292,1,1,'Royal Club',NULL),(293,1,1,'Royal Jasmine Junior Suite',NULL),(294,1,1,'Royal Suite',NULL),(295,1,1,'Royal Suite Fountain View',NULL),(296,1,1,'Royal Villa',NULL),(297,1,1,'Sakura Suite',NULL),(298,1,1,'Sakura Suite 1 Bedroom',NULL),(299,1,1,'Sakura Suite 2 Bedroom',NULL),(300,1,1,'Sea Side',NULL),(301,1,1,'Sea View',NULL),(302,1,1,'Seafront Residense',NULL),(303,1,1,'Season Suite',NULL),(304,1,1,'Senior Executive Suite',NULL),(305,1,1,'Senior Suite',NULL),(306,1,1,'Signature',NULL),(307,1,1,'Ski Chalet',NULL),(308,1,1,'Sky Room',NULL),(309,1,1,'SPA Suite',NULL),(310,1,1,'SPA Suite Fointain View',NULL),(311,1,1,'Standard Atrium',NULL),(312,1,1,'Standard Balcony',NULL),(313,1,1,'Standard City View',NULL),(314,1,1,'Standard Creek View',NULL),(315,1,1,'Standard Sea View',NULL),(316,1,1,'Standard Souk View',NULL),(317,1,1,'Standard Studio',NULL),(318,1,1,'Standard Suite',NULL),(319,1,1,'Standard Superior',NULL),(320,1,1,'Standard/Executive Suite',NULL),(321,1,1,'Standart 1 Bedroom',NULL),(322,1,1,'Studio',NULL),(323,1,1,'Studio Apartment',NULL),(324,1,1,'Studio Chalet',NULL),(325,1,1,'Studio Courtyad View',NULL),(326,1,1,'Studio Creek View',NULL),(327,1,1,'Studio Deluxe',NULL),(328,1,1,'Studio Deluxe Courtyad View',NULL),(329,1,1,'Studio Deluxe Sea View',NULL),(330,1,1,'Studio Sea View',NULL),(331,1,1,'Studio Suite',NULL),(332,1,1,'Suite',NULL),(333,1,1,'Superior',NULL),(334,1,1,'Superior Balcony',NULL),(335,1,1,'Superior City View',NULL),(336,1,1,'Superior Club',NULL),(337,1,1,'Superior Deluxe',NULL),(338,1,1,'Superior Front',NULL),(339,1,1,'Superior Golf View',NULL),(340,1,1,'Superior Sea View',NULL),(341,1,1,'Superior Studio',NULL),(342,1,1,'Taj Club',NULL),(343,1,1,'Terrace Suite',NULL),(344,1,1,'Tower',NULL),(345,1,1,'Tower Family',NULL),(346,1,1,'Tower Sea View',NULL),(347,1,1,'Tower Suite',NULL),(348,1,1,'Tower Suite Fointain View',NULL),(349,1,1,'Viceroy Suite',NULL),(350,1,1,'Villa',NULL),(351,1,1,'Villa 1 Bedroom',NULL),(352,1,1,'Villa 2 Bedroom',NULL),(353,1,1,'Villa Junior Suite Sea View',NULL),(354,1,1,'Villa Superior Garden View',NULL),(355,1,1,'Villa Superior Pool View',NULL),(356,1,1,'Villa Superior Sea View',NULL),(357,1,6,'New Year Gala Diner',NULL),(358,1,6,'Iftar',NULL),(359,1,6,'Extra dinner',NULL),(360,1,6,'Simple',NULL),(361,4,4,'Meet & Assist on Arrival',NULL),(362,4,5,'Exc Standart Dubai',NULL),(363,4,4,'Meet & Assist on Departure',NULL),(366,3,0,'Extension tourist visa',NULL),(367,1,7,'Standart',NULL),(372,2,0,'Ind3(Prado)',NULL),(371,1,7,'StandartDouble',NULL),(375,1,1,'2 Bedroom Apartment Deluxe Lagoon View',NULL),(368,1,6,'New Year Gala Brunch',NULL),(373,2,0,'Ind4(Hammer)',NULL),(369,3,0,'Clear overstay',NULL),(370,3,0,'Cancellation Online Tourist Visa',NULL),(376,1,1,'Business Executive',NULL),(377,1,1,'Leisure Twin',NULL),(378,1,1,'Standard Twin',NULL),(374,4,11,'19 flouwers',NULL),(380,1,1,'Club Deluxe',NULL),(381,1,1,'Club Junior Suite',NULL),(382,1,1,'Club Executive Suite',NULL);
/*!40000 ALTER TABLE `WSERVICELIST` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WSERVICECLASS`
--

DROP TABLE IF EXISTS `WSERVICECLASS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WSERVICECLASS` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `TYPE_BIND` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WSERVICECLASS`
--

LOCK TABLES `WSERVICECLASS` WRITE;
/*!40000 ALTER TABLE `WSERVICECLASS` DISABLE KEYS */;
INSERT INTO `WSERVICECLASS` VALUES (1,'HOTEL',0),(2,'TRANSFER',0),(3,'VISA',0),(4,'OTHER',1);
/*!40000 ALTER TABLE `WSERVICECLASS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WPARTNERTYPE`
--

DROP TABLE IF EXISTS `WPARTNERTYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WPARTNERTYPE` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `WORDER` smallint(6) DEFAULT NULL,
  `RATE` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WPARTNERTYPE`
--

LOCK TABLES `WPARTNERTYPE` WRITE;
/*!40000 ALTER TABLE `WPARTNERTYPE` DISABLE KEYS */;
INSERT INTO `WPARTNERTYPE` VALUES (1,'Hotel',8,1),(2,'Transport',7,1),(3,'Visa',1,1),(4,'Other Service',6,1),(5,'Point',5,1),(0,'Customer',0,1);
/*!40000 ALTER TABLE `WPARTNERTYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WSERVICETYPE`
--

DROP TABLE IF EXISTS `WSERVICETYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WSERVICETYPE` (
  `ID` int(11) NOT NULL,
  `WSERVICECLASS_ID` int(11) NOT NULL DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `COD` varchar(10) DEFAULT NULL,
  `SORT` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WSERVICETYPE`
--

LOCK TABLES `WSERVICETYPE` WRITE;
/*!40000 ALTER TABLE `WSERVICETYPE` DISABLE KEYS */;
INSERT INTO `WSERVICETYPE` VALUES (1,1,'ROOM','RM',1),(2,2,'ARRIVAL','TR',3),(3,3,'DUBAI VISA','VS',2),(4,4,'MEET & ASSIST','M&A',4),(5,4,'EXCURSION','EX',5),(8,2,'DEPARTURE','TRD',3),(9,2,'HOTEL-HOTEL','TRA',3),(11,4,'FLORAL','FLO',NULL),(10,3,'SHARJAH VISA','VS',NULL),(6,1,'EXTRAMEAL','ML',2);
/*!40000 ALTER TABLE `WSERVICETYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WMEALTYPE`
--

DROP TABLE IF EXISTS `WMEALTYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WMEALTYPE` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `COD` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WMEALTYPE`
--

LOCK TABLES `WMEALTYPE` WRITE;
/*!40000 ALTER TABLE `WMEALTYPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `WMEALTYPE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-19 19:52:30
