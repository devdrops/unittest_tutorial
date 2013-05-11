-- MySQL dump 10.13  Distrib 5.5.30, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: tek
-- ------------------------------------------------------
-- Server version	5.5.30-1.1

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
-- Table structure for table `attendees`
--

DROP TABLE IF EXISTS `attendees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendees`
--

LOCK TABLES `attendees` WRITE;
/*!40000 ALTER TABLE `attendees` DISABLE KEYS */;
INSERT INTO `attendees` VALUES (1,'John','Doe',48),(2,'Harrie','Verveer',30),(3,'Some','Guy',60),(4,'Foo','Bar',14);
/*!40000 ALTER TABLE `attendees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conference`
--

DROP TABLE IF EXISTS `conference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conference`
--

LOCK TABLES `conference` WRITE;
/*!40000 ALTER TABLE `conference` DISABLE KEYS */;
INSERT INTO `conference` VALUES (1,'tek12'),(2,'dpc12'),(3,'phpbnl12'),(4,'tek13'),(5,'dpc13'),(6,'phpbnl13');
/*!40000 ALTER TABLE `conference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conference_attendee`
--

DROP TABLE IF EXISTS `conference_attendee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conference_attendee` (
  `conference_id` int(11) NOT NULL,
  `attendee_id` int(11) NOT NULL,
  PRIMARY KEY (`conference_id`,`attendee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conference_attendee`
--

LOCK TABLES `conference_attendee` WRITE;
/*!40000 ALTER TABLE `conference_attendee` DISABLE KEYS */;
INSERT INTO `conference_attendee` VALUES (1,1),(1,2),(1,4),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,3),(4,4),(5,1),(5,2),(6,2),(6,4);
/*!40000 ALTER TABLE `conference_attendee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-11  5:48:19