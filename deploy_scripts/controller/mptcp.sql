-- MySQL dump 10.14  Distrib 5.5.57-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mptcp
-- ------------------------------------------------------
-- Server version	5.5.57-MariaDB-1ubuntu0.14.04.1

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
-- Table structure for table `conn`
--

DROP TABLE IF EXISTS `conn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_src` varchar(30) DEFAULT NULL,
  `ip_dst` varchar(30) DEFAULT NULL,
  `keya` varchar(50) DEFAULT NULL,
  `keyb` varchar(50) DEFAULT NULL,
  `tokena` varchar(50) DEFAULT NULL,
  `tokenb` varchar(50) DEFAULT NULL,
  `tcp_src` int(11) DEFAULT NULL,
  `tcp_dst` int(11) DEFAULT NULL,
  `src` varchar(50) DEFAULT NULL,
  `dst` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokenb` (`tokenb`),
  UNIQUE KEY `tokena` (`tokena`)
) ENGINE=InnoDB AUTO_INCREMENT=802 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conn`
--

LOCK TABLES `conn` WRITE;
/*!40000 ALTER TABLE `conn` DISABLE KEYS */;
/*!40000 ALTER TABLE `conn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subflow`
--

DROP TABLE IF EXISTS `subflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subflow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `connid` int(11) DEFAULT NULL,
  `tokenb` varchar(50) DEFAULT NULL,
  `noncea` varchar(50) DEFAULT NULL,
  `nonceb` varchar(50) DEFAULT NULL,
  `trunhash` varchar(100) DEFAULT NULL,
  `hash` varchar(100) DEFAULT NULL,
  `ip_src` varchar(30) DEFAULT NULL,
  `ip_dst` varchar(30) DEFAULT NULL,
  `tcp_src` int(11) DEFAULT NULL,
  `tcp_dst` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tcp_src` (`tcp_src`),
  KEY `connid` (`connid`),
  CONSTRAINT `subflow_ibfk_1` FOREIGN KEY (`connid`) REFERENCES `conn` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=985 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subflow`
--

LOCK TABLES `subflow` WRITE;
/*!40000 ALTER TABLE `subflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `subflow` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-26 13:18:51
