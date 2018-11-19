-- MySQL dump 10.15  Distrib 10.0.36-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cinnamon
-- ------------------------------------------------------
-- Server version	10.0.36-MariaDB-0ubuntu0.16.04.1

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
-- Table structure for table `APs`
--

DROP TABLE IF EXISTS `APs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `APs` (
  `access_point_name` varchar(150) DEFAULT NULL,
  `access_point_address` varchar(30) NOT NULL,
  `channel` int(2) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `subtype` varchar(50) NOT NULL,
  `strength` varchar(6) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`access_point_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APs`
--

LOCK TABLES `APs` WRITE;
/*!40000 ALTER TABLE `APs` DISABLE KEYS */;
INSERT INTO `APs` VALUES ('labtes','00:1a:70:31:ab:30',1,'Management','Beacon','-84','2018-11-15 14:39:06'),('eduroam','00:1f:45:4b:9c:c9',1,'Management','Beacon','-91','2018-11-15 14:39:46'),('Fisica','00:3a:98:0f:43:41',1,'Management','Beacon','-92','2018-11-15 14:39:39'),('Eduroam','00:3a:98:0f:43:42',1,'Management','Beacon','-89','2018-11-15 14:39:23'),('WiFi-Cubo31B','dc:fb:02:e7:e0:20',1,'Management','Beacon','-69','2018-11-15 14:39:06'),('Network Wi-Fi di luigi.srv','f8:1e:df:f9:12:df',1,'Management','Beacon','-89','2018-11-15 14:39:11');
/*!40000 ALTER TABLE `APs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EAP`
--

DROP TABLE IF EXISTS `EAP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EAP` (
  `BSSID` varchar(30) NOT NULL,
  `source` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `channel` varchar(5) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `strength` varchar(6) DEFAULT NULL,
  `encrypted` char(1) DEFAULT NULL,
  `to_ds` varchar(10) DEFAULT NULL,
  `from_ds` varchar(10) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EAP`
--

LOCK TABLES `EAP` WRITE;
/*!40000 ALTER TABLE `EAP` DISABLE KEYS */;
/*!40000 ALTER TABLE `EAP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Packets`
--

DROP TABLE IF EXISTS `Packets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Packets` (
  `BSSID` varchar(30) NOT NULL,
  `source` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `channel` varchar(5) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `subtype` varchar(50) NOT NULL,
  `strength` varchar(6) DEFAULT NULL,
  `encrypted` char(1) DEFAULT NULL,
  `to_ds` varchar(10) DEFAULT NULL,
  `from_ds` varchar(10) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Packets`
--

LOCK TABLES `Packets` WRITE;
/*!40000 ALTER TABLE `Packets` DISABLE KEYS */;
/*!40000 ALTER TABLE `Packets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Waypoints`
--

DROP TABLE IF EXISTS `Waypoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Waypoints` (
  `id_waypoint` int(11) NOT NULL AUTO_INCREMENT,
  `position_x` float NOT NULL,
  `position_y` float NOT NULL,
  `position_z` float NOT NULL,
  `orientation_x` float NOT NULL,
  `orientation_y` float NOT NULL,
  `orientation_z` float NOT NULL,
  `orientation_w` float NOT NULL,
  PRIMARY KEY (`id_waypoint`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Waypoints`
--

LOCK TABLES `Waypoints` WRITE;
/*!40000 ALTER TABLE `Waypoints` DISABLE KEYS */;
INSERT INTO `Waypoints` VALUES (2,0.982275,-0.0891954,0,0,0,0,1),(3,1.02084,0.799337,0,0,0,0.705737,0.708474),(4,1.66029,0.809369,0,0,0,0,1);
/*!40000 ALTER TABLE `Waypoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Waypoints_AP`
--

DROP TABLE IF EXISTS `Waypoints_AP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Waypoints_AP` (
  `id_waypoint` int(11) NOT NULL AUTO_INCREMENT,
  `position_x` float NOT NULL,
  `position_y` float NOT NULL,
  `position_z` float NOT NULL,
  `orientation_x` float NOT NULL,
  `orientation_y` float NOT NULL,
  `orientation_z` float NOT NULL,
  `orientation_w` float NOT NULL,
  `AP` varchar(30) NOT NULL,
  `strength` varchar(6) NOT NULL,
  PRIMARY KEY (`id_waypoint`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Waypoints_AP`
--

LOCK TABLES `Waypoints_AP` WRITE;
/*!40000 ALTER TABLE `Waypoints_AP` DISABLE KEYS */;
INSERT INTO `Waypoints_AP` VALUES (1,0,0,0,0,0,0,1,'dc:fb:02:e7:e0:20','-75'),(2,0,0,0,0,0,0,1,'00:1a:70:31:ab:30','-87'),(3,0,0,0,0,0,0,1,'dc:fb:02:e7:e0:20','-75'),(4,0,0,0,0,0,0,1,'00:1a:70:31:ab:30','-86'),(5,0,0,0,0,0,0,1,'dc:fb:02:e7:e0:20','-75'),(6,0,0,0,0,0,0,1,'00:1a:70:31:ab:30','-88'),(7,0,0,0,0,0,0,1,'dc:fb:02:e7:e0:20','-74'),(8,0,0,0,0,0,0,1,'00:1a:70:31:ab:30','-88'),(9,0,0,0,0,0,0,1,'dc:fb:02:e7:e0:20','-74'),(10,0,0,0,0,0,0,1,'00:1a:70:31:ab:30','-86'),(11,0,0,0,0,0,0,1,'dc:fb:02:e7:e0:20','-75'),(12,0,0,0,0,0,0,1,'00:1a:70:31:ab:30','-87'),(13,0,0,0,0,0,0,1,'dc:fb:02:e7:e0:20','-74'),(14,0,0,0,0,0,0,1,'00:1a:70:31:ab:30','-86'),(15,0,0,0,0,0,0,1,'dc:fb:02:e7:e0:20','-74'),(16,0,0,0,0,0,0,1,'f8:1e:df:f9:12:df','-92'),(17,0,0,0,0,0,0,1,'dc:fb:02:e7:e0:20','-75'),(18,0,0,0,0,0,0,1,'00:1a:70:31:ab:30','-87'),(19,0,0,0,0,0,0,1,'dc:fb:02:e7:e0:20','-74'),(20,0.014157,0.000448475,0,0,0,0.0329656,0.999456,'00:1a:70:31:ab:30','-88'),(21,0.0486388,0.00455502,0,0,0,0.0806858,0.99674,'dc:fb:02:e7:e0:20','-73'),(22,0.0770014,0.00990373,0,0,0,0.1056,0.994409,'f8:1e:df:f9:12:df','-90'),(23,0.096528,0.014187,0,0,0,0.108836,0.99406,'dc:fb:02:e7:e0:20','-73'),(24,0.116046,0.0185458,0,0,0,0.111713,0.99374,'00:1a:70:31:ab:30','-88'),(25,0.139886,0.0239633,0,0,0,0.113152,0.993578,'dc:fb:02:e7:e0:20','-73'),(26,0.152892,0.0269976,0,0,0,0.116032,0.993245,'dc:fb:02:e7:e0:20','-72'),(27,0.16582,0.0301588,0,0,0,0.124638,0.992202,'00:1a:70:31:ab:30','-88'),(28,0.229772,0.0490768,0,0,0,0.153949,0.988079,'f8:1e:df:f9:12:df','-91'),(29,0.274043,0.0637311,0,0,0,0.16298,0.986629,'00:1a:70:31:ab:30','-88'),(30,0.307577,0.0755556,0,0,0,0.161554,0.986864,'dc:fb:02:e7:e0:20','-74'),(31,0.341181,0.0871575,0,0,0,0.175614,0.984459,'00:1a:70:31:ab:30','-88'),(32,0.393438,0.106085,0,0,0,0.177043,0.984203,'dc:fb:02:e7:e0:20','-75'),(33,0.414251,0.113823,0,0,0,0.177043,0.984203,'00:1a:70:31:ab:30','-89'),(34,0.433007,0.120749,0,0,0,0.173724,0.984794,'dc:fb:02:e7:e0:20','-73'),(35,0.455993,0.129062,0,0,0,0.174199,0.98471,'dc:fb:02:e7:e0:20','-72'),(36,0.476402,0.136926,0,0,0,0.195023,0.980799,'f8:1e:df:f9:12:df','-93'),(37,0.490341,0.142789,0,0,0,0.201347,0.97952,'dc:fb:02:e7:e0:20','-74'),(38,0.502295,0.147955,0,0,0,0.202765,0.979227,'f8:1e:df:f9:12:df','-92'),(39,0.514487,0.153386,0,0,0,0.212665,0.977125,'dc:fb:02:e7:e0:20','-73'),(40,0.52427,0.157856,0,0,0,0.21408,0.976816,'f8:1e:df:f9:12:df','-90'),(41,0.532455,0.161676,0,0,0,0.2155,0.976504,'dc:fb:02:e7:e0:20','-71'),(42,0.539389,0.164862,0,0,0,0.209843,0.977735,'f8:1e:df:f9:12:df','-91'),(43,0.549034,0.168951,0,0,0,0.184284,0.982873,'dc:fb:02:e7:e0:20','-71'),(44,0.555247,0.171366,0,0,0,0.184757,0.982784,'f8:1e:df:f9:12:df','-89'),(45,0.562339,0.174152,0,0,0,0.186653,0.982426,'dc:fb:02:e7:e0:20','-71'),(46,0.568541,0.176597,0,0,0,0.186653,0.982426,'f8:1e:df:f9:12:df','-91'),(47,0.575629,0.179391,0,0,0,0.186653,0.982426,'dc:fb:02:e7:e0:20','-71'),(48,0.580059,0.181138,0,0,0,0.186653,0.982426,'f8:1e:df:f9:12:df','-92'),(49,0.587119,0.184003,0,0,0,0.198016,0.980199,'dc:fb:02:e7:e0:20','-71'),(50,0.59237,0.186257,0,0,0,0.203688,0.979036,'00:3a:98:0f:43:42','-91'),(51,0.599356,0.189296,0,0,0,0.203688,0.979036,'f8:1e:df:f9:12:df','-91'),(52,0.606315,0.192397,0,0,0,0.217838,0.975985,'dc:fb:02:e7:e0:20','-72'),(53,0.617586,0.197519,0,0,0,0.203486,0.979078,'f8:1e:df:f9:12:df','-90'),(54,0.629849,0.202755,0,0,0,0.196868,0.98043,'dc:fb:02:e7:e0:20','-72'),(55,0.637758,0.206058,0,0,0,0.198278,0.980146,'f8:1e:df:f9:12:df','-90'),(56,0.647395,0.210168,0,0,0,0.201114,0.979568,'dc:fb:02:e7:e0:20','-70'),(57,0.647395,0.210168,0,0,0,0.0921737,0.995743,'f8:1e:df:f9:12:df','-90'),(58,0.647395,0.210168,0,0,0,0.0398616,0.999205,'dc:fb:02:e7:e0:20','-71'),(59,0.647395,0.210168,0,0,0,0.0182531,0.999833,'f8:1e:df:f9:12:df','-90'),(60,0.647395,0.210168,0,0,0,0.00795571,0.999968,'dc:fb:02:e7:e0:20','-71'),(61,0.647395,0.210168,0,0,0,0.00795571,0.999968,'dc:fb:02:e7:e0:20','-71'),(62,0.647395,0.210168,0,0,0,0.00795571,0.999968,'f8:1e:df:f9:12:df','-90'),(63,0.647395,0.210168,0,0,0,0.00795571,0.999968,'dc:fb:02:e7:e0:20','-71'),(64,0.647395,0.210168,0,0,0,0.00795571,0.999968,'dc:fb:02:e7:e0:20','-71'),(65,0.647395,0.210168,0,0,0,0.0262034,0.999657,'f8:1e:df:f9:12:df','-88'),(66,0.647395,0.210168,0,0,0,0.0891276,0.99602,'dc:fb:02:e7:e0:20','-71'),(67,0.648209,0.210374,0,0,0,0.132514,0.991181,'f8:1e:df:f9:12:df','-92'),(68,0.662382,0.216477,0,0,0,0.258401,0.966038,'dc:fb:02:e7:e0:20','-71'),(69,0.670602,0.221632,0,0,0,0.302204,0.953243,'f8:1e:df:f9:12:df','-90'),(70,0.685711,0.234049,0,0,0,0.379729,0.925098,'dc:fb:02:e7:e0:20','-71'),(71,0.696121,0.245525,0,0,0,0.438267,0.898845,'f8:1e:df:f9:12:df','-91'),(72,0.709727,0.26584,0,0,0,0.50691,0.861999,'dc:fb:02:e7:e0:20','-72'),(73,0.71678,0.279652,0,0,0,0.541393,0.84077,'f8:1e:df:f9:12:df','-91'),(74,0.723604,0.296066,0,0,0,0.570778,0.821105,'dc:fb:02:e7:e0:20','-70'),(75,0.732691,0.323482,0,0,0,0.598125,0.801403,'dc:fb:02:e7:e0:20','-71'),(76,0.73754,0.340585,0,0,0,0.608866,0.793273,'f8:1e:df:f9:12:df','-89'),(77,0.743507,0.364288,0,0,0,0.621658,0.783289,'dc:fb:02:e7:e0:20','-71'),(78,0.746933,0.379462,0,0,0,0.626558,0.779375,'f8:1e:df:f9:12:df','-90'),(79,0.751155,0.399012,0,0,0,0.629937,0.776647,'dc:fb:02:e7:e0:20','-71'),(80,0.756533,0.425201,0,0,0,0.634434,0.772977,'00:1a:70:31:ab:30','-89'),(81,0.767975,0.486291,0,0,0,0.640741,0.767757,'dc:fb:02:e7:e0:20','-70'),(82,0.771855,0.508172,0,0,0,0.644437,0.764657,'f8:1e:df:f9:12:df','-90'),(83,0.774808,0.525701,0,0,0,0.647384,0.762164,'dc:fb:02:e7:e0:20','-72'),(84,0.777669,0.543248,0,0,0,0.647751,0.761852,'dc:fb:02:e7:e0:20','-71'),(85,0.782309,0.571762,0,0,0,0.648853,0.760913,'dc:fb:02:e7:e0:20','-70'),(86,0.783356,0.578345,0,0,0,0.649954,0.759974,'dc:fb:02:e7:e0:20','-67'),(87,0.787735,0.6069,0,0,0,0.650687,0.759346,'f8:1e:df:f9:12:df','-91'),(88,0.789779,0.620078,0,0,0,0.649954,0.759973,'dc:fb:02:e7:e0:20','-65'),(89,0.792791,0.638935,0,0,0,0.648119,0.761539,'dc:fb:02:e7:e0:20','-64'),(90,0.794121,0.647005,0,0,0,0.645912,0.763412,'dc:fb:02:e7:e0:20','-67'),(91,0.796141,0.658877,0,0,0,0.645175,0.764035,'00:1a:70:31:ab:30','-86'),(92,0.798804,0.674755,0,0,0,0.646644,0.762792,'dc:fb:02:e7:e0:20','-66'),(93,0.80123,0.68965,0,0,0,0.648483,0.76123,'00:1a:70:31:ab:30','-82'),(94,0.802921,0.700271,0,0,0,0.650317,0.759663,'dc:fb:02:e7:e0:20','-71'),(95,0.804145,0.707948,0,0,0,0.644814,0.764339,'00:1a:70:31:ab:30','-80'),(96,0.80595,0.718656,0,0,0,0.646881,0.762591,'dc:fb:02:e7:e0:20','-73'),(97,0.807353,0.727143,0,0,0,0.646881,0.762591,'00:1a:70:31:ab:30','-78'),(98,0.8083,0.732873,0,0,0,0.646881,0.762591,'dc:fb:02:e7:e0:20','-71'),(99,0.809233,0.738519,0,0,0,0.646881,0.762591,'00:3a:98:0f:43:41','-89'),(100,0.810787,0.747917,0,0,0,0.646881,0.762591,'dc:fb:02:e7:e0:20','-68'),(101,0.811719,0.753555,0,0,0,0.646881,0.762591,'dc:fb:02:e7:e0:20','-67'),(102,0.813865,0.767722,0,0,0,0.659667,0.751558,'dc:fb:02:e7:e0:20','-64'),(103,0.815672,0.781535,0,0,0,0.659658,0.751566,'dc:fb:02:e7:e0:20','-62'),(104,0.817905,0.79825,0,0,0,0.656029,0.754736,'00:1a:70:31:ab:30','-82'),(105,0.818685,0.803575,0,0,0,0.650548,0.759465,'00:1a:70:31:ab:30','-79'),(106,0.821007,0.818232,0,0,0,0.64945,0.760404,'dc:fb:02:e7:e0:20','-68'),(107,0.822104,0.825244,0,0,0,0.650549,0.759464,'00:1a:70:31:ab:30','-82'),(108,0.823634,0.835016,0,0,0,0.642455,0.766323,'dc:fb:02:e7:e0:20','-70'),(109,0.826222,0.847656,0,0,0,0.630172,0.776455,'00:1a:70:31:ab:30','-82'),(110,0.828125,0.856706,0,0,0,0.630172,0.776455,'dc:fb:02:e7:e0:20','-71'),(111,0.829572,0.863544,0,0,0,0.628298,0.777973,'dc:fb:02:e7:e0:20','-70'),(112,0.831811,0.873791,0,0,0,0.627922,0.778277,'00:3a:98:0f:43:42','-91'),(113,0.832812,0.878447,0,0,0,0.628673,0.77767,'00:1a:70:31:ab:30','-82'),(114,0.834209,0.884967,0,0,0,0.628673,0.77767,'dc:fb:02:e7:e0:20','-66'),(115,0.835179,0.889627,0,0,0,0.636145,0.77157,'00:3a:98:0f:43:42','-90'),(116,0.836401,0.896182,0,0,0,0.639852,0.768498,'dc:fb:02:e7:e0:20','-67'),(117,0.837446,0.901805,0,0,0,0.637992,0.770043,'00:3a:98:0f:43:42','-91'),(118,0.838731,0.908341,0,0,0,0.630911,0.775856,'dc:fb:02:e7:e0:20','-68'),(119,0.839936,0.913927,0,0,0,0.624149,0.781305,'00:1a:70:31:ab:30','-84'),(120,0.841015,0.918565,0,0,0,0.618478,0.785802,'dc:fb:02:e7:e0:20','-67'),(121,0.842842,0.925961,0,0,0,0.615061,0.78848,'dc:fb:02:e7:e0:20','-67'),(122,0.8447,0.933351,0,0,0,0.613919,0.789369,'00:3a:98:0f:43:42','-89'),(123,0.847328,0.943492,0,0,0,0.609721,0.792616,'dc:fb:02:e7:e0:20','-65'),(124,0.849576,0.951763,0,0,0,0.60243,0.798172,'dc:fb:02:e7:e0:20','-73'),(125,0.851183,0.957247,0,0,0,0.595475,0.803374,'00:1a:70:31:ab:30','-85'),(126,0.85377,0.965419,0,0,0,0.58496,0.811063,'f8:1e:df:f9:12:df','-93'),(127,0.855926,0.971727,0,0,0,0.579861,0.814716,'f8:1e:df:f9:12:df','-92'),(128,0.857488,0.976263,0,0,0,0.581839,0.813304,'00:1f:45:4b:9c:c9','-91'),(129,0.859622,0.982541,0,0,0,0.581434,0.813594,'00:1a:70:31:ab:30','-84'),(130,0.863075,0.992471,0,0,0,0.577093,0.816679,'dc:fb:02:e7:e0:20','-64'),(131,0.864983,0.997817,0,0,0,0.574742,0.818335,'00:1a:70:31:ab:30','-84'),(132,0.867885,1.00588,0,0,0,0.565649,0.824646,'00:1a:70:31:ab:30','-80'),(133,0.870359,1.01207,0,0,0,0.555883,0.83126,'dc:fb:02:e7:e0:20','-68'),(134,0.872529,1.01736,0,0,0,0.558287,0.829648,'00:1a:70:31:ab:30','-78'),(135,0.875375,1.02443,0,0,0,0.561485,0.827487,'00:1a:70:31:ab:30','-83'),(136,0.877126,1.02886,0,0,0,0.56348,0.82613,'dc:fb:02:e7:e0:20','-66'),(137,0.878855,1.03329,0,0,0,0.565471,0.824768,'dc:fb:02:e7:e0:20','-65'),(138,0.880227,1.03686,0,0,0,0.567065,0.823673,'dc:fb:02:e7:e0:20','-65'),(139,0.880227,1.03686,0,0,0,0.581805,0.813328,'dc:fb:02:e7:e0:20','-65'),(140,0.880227,1.03686,0,0,0,0.604154,0.796868,'dc:fb:02:e7:e0:20','-67'),(141,0.880227,1.03686,0,0,0,0.618875,0.785489,'00:1a:70:31:ab:30','-82'),(142,0.880227,1.03686,0,0,0,0.640844,0.767671,'f8:1e:df:f9:12:df','-94'),(143,0.880227,1.03686,0,0,0,0.640844,0.767671,'dc:fb:02:e7:e0:20','-65'),(144,0.880227,1.03686,0,0,0,0.640844,0.767671,'00:1a:70:31:ab:30','-83'),(145,0.880227,1.03686,0,0,0,0.640844,0.767671,'dc:fb:02:e7:e0:20','-69'),(146,0.880227,1.03686,0,0,0,0.640844,0.767671,'dc:fb:02:e7:e0:20','-68'),(147,0.880227,1.03686,0,0,0,0.640844,0.767671,'dc:fb:02:e7:e0:20','-64'),(148,0.880227,1.03686,0,0,0,0.604987,0.796235,'dc:fb:02:e7:e0:20','-64'),(149,0.880227,1.03686,0,0,0,0.545032,0.838415,'dc:fb:02:e7:e0:20','-66'),(150,0.883346,1.04178,0,0,0,0.449703,0.893178,'dc:fb:02:e7:e0:20','-64'),(151,0.89489,1.05511,0,0,0,0.374574,0.927197,'dc:fb:02:e7:e0:20','-66'),(152,0.909949,1.06764,0,0,0,0.296886,0.954913,'dc:fb:02:e7:e0:20','-66'),(153,0.921236,1.07467,0,0,0,0.245021,0.969518,'00:1a:70:31:ab:30','-85'),(154,0.931183,1.07964,0,0,0,0.205784,0.978597,'dc:fb:02:e7:e0:20','-65'),(155,0.943551,1.08456,0,0,0,0.165093,0.986278,'00:1a:70:31:ab:30','-85'),(156,0.962699,1.09031,0,0,0,0.119408,0.992845,'dc:fb:02:e7:e0:20','-65'),(157,0.975735,1.09309,0,0,0,0.0870039,0.996208,'00:1a:70:31:ab:30','-85'),(158,0.995536,1.09587,0,0,0,0.0508561,0.998706,'dc:fb:02:e7:e0:20','-66'),(159,1.01104,1.09716,0,0,0,0.028488,0.999594,'dc:fb:02:e7:e0:20','-65'),(160,1.02214,1.0977,0,0,0,0.0176787,0.999844,'00:1a:70:31:ab:30','-84'),(161,1.03546,1.09804,0,0,0,0.00688534,0.999976,'dc:fb:02:e7:e0:20','-65'),(162,1.05102,1.09811,0,0,0,-0.00409587,0.999992,'00:1a:70:31:ab:30','-84'),(163,1.06213,1.09795,0,0,0,-0.0114237,0.999935,'dc:fb:02:e7:e0:20','-65'),(164,1.07768,1.09746,0,0,0,-0.0215704,0.999767,'f8:1e:df:f9:12:df','-91'),(165,1.08989,1.09691,0,0,0,-0.0254293,0.999677,'00:1a:70:31:ab:30','-86'),(166,1.10125,1.09621,0,0,0,-0.034109,0.999418,'dc:fb:02:e7:e0:20','-64'),(167,1.11223,1.09542,0,0,0,-0.0403799,0.999184,'dc:fb:02:e7:e0:20','-65'),(168,1.12595,1.09421,0,0,0,-0.0461618,0.998934,'00:1a:70:31:ab:30','-85'),(169,1.14291,1.09263,0,0,0,-0.0476133,0.998866,'dc:fb:02:e7:e0:20','-65'),(170,1.15203,1.09173,0,0,0,-0.0490589,0.998796,'dc:fb:02:e7:e0:20','-65'),(171,1.16402,1.09055,0,0,0,-0.0509873,0.998699,'dc:fb:02:e7:e0:20','-65'),(172,1.17001,1.08992,0,0,0,-0.0538767,0.998548,'00:1a:70:31:ab:30','-84'),(173,1.17574,1.08929,0,0,0,-0.0567671,0.998387,'dc:fb:02:e7:e0:20','-65'),(174,1.18048,1.08873,0,0,0,-0.0630333,0.998011,'00:1a:70:31:ab:30','-85'),(175,1.18896,1.08755,0,0,0,-0.0760214,0.997106,'dc:fb:02:e7:e0:20','-63'),(176,1.19554,1.08646,0,0,0,-0.0909377,0.995857,'f8:1e:df:f9:12:df','-88'),(177,1.20115,1.08536,0,0,0,-0.102352,0.994748,'00:1a:70:31:ab:30','-83'),(178,1.2087,1.08375,0,0,0,-0.10599,0.994367,'dc:fb:02:e7:e0:20','-63'),(179,1.21512,1.08236,0,0,0,-0.10839,0.994108,'f8:1e:df:f9:12:df','-89'),(180,1.2207,1.08113,0,0,0,-0.10647,0.994316,'dc:fb:02:e7:e0:20','-68'),(181,1.22628,1.07993,0,0,0,-0.105988,0.994367,'f8:1e:df:f9:12:df','-93'),(182,1.23001,1.07912,0,0,0,-0.106948,0.994265,'00:1a:70:31:ab:30','-82'),(183,1.23745,1.07748,0,0,0,-0.108866,0.994056,'dc:fb:02:e7:e0:20','-68'),(184,1.24302,1.07625,0,0,0,-0.10695,0.994264,'dc:fb:02:e7:e0:20','-64'),(185,1.24768,1.07524,0,0,0,-0.10743,0.994213,'f8:1e:df:f9:12:df','-89'),(186,1.25326,1.07401,0,0,0,-0.108868,0.994056,'00:1a:70:31:ab:30','-81'),(187,1.25791,1.07298,0,0,0,-0.108868,0.994056,'dc:fb:02:e7:e0:20','-66'),(188,1.26907,1.07054,0,0,0,-0.10599,0.994367,'dc:fb:02:e7:e0:20','-66'),(189,1.27373,1.06953,0,0,0,-0.10599,0.994367,'dc:fb:02:e7:e0:20','-65'),(190,1.27838,1.0685,0,0,0,-0.113187,0.993574,'f8:1e:df:f9:12:df','-90'),(191,1.28301,1.06741,0,0,0,-0.120371,0.992729,'00:1a:70:31:ab:30','-80'),(192,1.29314,1.06474,0,0,0,-0.140941,0.990018,'dc:fb:02:e7:e0:20','-64'),(193,1.29771,1.06339,0,0,0,-0.140268,0.990114,'f8:1e:df:f9:12:df','-90'),(194,1.30326,1.06184,0,0,0,-0.127836,0.991795,'00:1a:70:31:ab:30','-81'),(195,1.31061,1.06003,0,0,0,-0.111707,0.993741,'f8:1e:df:f9:12:df','-89'),(196,1.31526,1.05901,0,0,0,-0.103438,0.994636,'dc:fb:02:e7:e0:20','-66'),(197,1.31526,1.05901,0,0,0,-0.0941061,0.995562,'f8:1e:df:f9:12:df','-90'),(198,1.31526,1.05901,0,0,0,-0.0855223,0.996336,'00:1a:70:31:ab:30','-81'),(199,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-68'),(200,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-61'),(201,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'f8:1e:df:f9:12:df','-90'),(202,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-63'),(203,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'f8:1e:df:f9:12:df','-90'),(204,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-64'),(205,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'f8:1e:df:f9:12:df','-89'),(206,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-63'),(207,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'00:1a:70:31:ab:30','-81'),(208,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'f8:1e:df:f9:12:df','-90'),(209,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-68'),(210,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'f8:1e:df:f9:12:df','-89'),(211,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'f8:1e:df:f9:12:df','-90'),(212,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-63'),(213,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'00:1a:70:31:ab:30','-83'),(214,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-61'),(215,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'f8:1e:df:f9:12:df','-89'),(216,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-64'),(217,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-68'),(218,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'00:1a:70:31:ab:30','-90'),(219,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-68'),(220,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'00:3a:98:0f:43:41','-92'),(221,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'00:1a:70:31:ab:30','-86'),(222,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'00:1a:70:31:ab:30','-88'),(223,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-74'),(224,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'00:1a:70:31:ab:30','-81'),(225,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'00:1a:70:31:ab:30','-86'),(226,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'00:1a:70:31:ab:30','-86'),(227,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-67'),(228,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-69'),(229,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'00:1a:70:31:ab:30','-87'),(230,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-65'),(231,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-68'),(232,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-71'),(233,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-68'),(234,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'00:1a:70:31:ab:30','-79'),(235,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-67'),(236,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'00:1a:70:31:ab:30','-80'),(237,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-69'),(238,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'00:1a:70:31:ab:30','-81'),(239,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-67'),(240,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-65'),(241,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'00:1a:70:31:ab:30','-88'),(242,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-68'),(243,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'00:1a:70:31:ab:30','-81'),(244,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-68'),(245,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'00:1a:70:31:ab:30','-81'),(246,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-72'),(247,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'00:1a:70:31:ab:30','-84'),(248,1.31526,1.05901,0,0,0,-0.0777561,0.996972,'dc:fb:02:e7:e0:20','-69');
/*!40000 ALTER TABLE `Waypoints_AP` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-15 18:28:11