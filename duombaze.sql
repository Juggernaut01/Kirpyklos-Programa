-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for debian-linux-gnueabihf (armv8l)
--
-- Host: 127.0.0.1    Database: projektui
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Visits`
--

DROP TABLE IF EXISTS `Visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Visits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `resource` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Visits`
--

LOCK TABLES `Visits` WRITE;
/*!40000 ALTER TABLE `Visits` DISABLE KEYS */;
/*!40000 ALTER TABLE `Visits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `tel_nr` int(11) NOT NULL,
  `email` varchar(15) NOT NULL,
  `code` varchar(8) NOT NULL,
  `visit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`client_id`),
  KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (43,'Antanas',860000001,'antanas.a@mail.','Ant860',1),(44,'Bronius',86000000,'bronius.b@mail.','Bro860',2),(45,'Dainius',860000003,'dainius.d@mail.','Dai860',3),(46,'Damianas',860000004,'damianas.d@mail','Dam860',4),(47,'Dalius',860000005,'dalius.d@mail.c','Dal860',5),(48,'Danas',860000006,'danas.d@mail.co','Dan860',6),(49,'Erikas',860000007,'erikas.e@mail.c','Eri860',7),(50,'Edmunas',860000008,'edmundas.e@mail','Edm860',8),(51,'Enrikas',860000009,'enrikas.e@mail.','Enr860',9),(52,'Henrikas',860000010,'henrikas.he@mai','Hen860',10),(53,'Jurgis',860000011,'jurgis.j@mail.c','Jur860',11),(54,'Janas',860000012,'janas.j@mail.co','Jan860',12),(55,'Jonas',860000013,'jonas.j@mail.co','Jon860',13),(56,'Jagminas',860000014,'jagminas.j@mail','Jag860',14),(57,'Janis',860000015,'janis.j@mail.co','Jan860',15),(58,'Gediminas',860000017,'gedis.g@mail.co','Ged860',16),(59,'Grutas',860000018,'grutas.g@mail.c','Gru860',17),(60,'Gamovas',860000019,'gamovas.g@mail.','Gam860',18),(61,'Gertruda',860000020,'gertruda.g@mail','Ger860',19),(62,'Anabele',860000021,'anabele.a@mail.','Ana860',20),(63,'Amanda',860000024,'amanda.a@mail.c','Ama860',21),(64,'Beata',860000028,'beata.b@mail.co','Bea860',22),(65,'Julija',860000030,'julija.j@mail.c','Jul860',23),(66,'Jeronimas',860000031,'jeronimas.j@mai','Jer860',24),(67,'Teodoras',860000032,'narbutas.n@mail','Teo860',25),(68,'Agata',860000033,'agata.a@mail.co','Aga860',26),(69,'Brone',860000035,'brone.b@mail.co','Bro860',27),(70,'Balys',860000035,'balys.b@mail.co','Bal860',28),(71,'Angele',860000040,'angele.a@mail.c','Ang860',29),(72,'Ricardas',860000041,'ricardas.r@mail','Ric860',30),(73,'Anatolijus',860000055,'anatolijus.a@ma','Ana860',31),(74,'Beatrice',860000070,'beatrice.b@mail','Bea860',32),(75,'Valdas',860000080,'valdas.v@mail.c','Val860',33),(76,'Gabriele',860000090,'gabriele.g@mail','Gab860',34),(77,'Nikodemas',860000091,'nikodemas.n@mai','Nik860',35),(78,'Nikas',860000098,'nikas.n@mail.co','Nik860',36),(79,'Egle',860000077,'egle.e@mail.com','Egl860',37),(80,'Tomas',860000055,'tomas.t@mail.co','Tom860',38),(81,'Igoris',860000036,'igoris.i@mail.c','Igo860',39),(82,'Mantas',860000059,'mantas.m@mail.c','Man860',40),(83,'Benas',860000095,'benas.b@mail.co','Ben860',41),(84,'Ieva',860000047,'ieva.i@mail.com','Iev860',42),(85,'Gintas',860000077,'gintas.g@mail.c','Gin860',43),(86,'Jelena',860000333,'jelena.j@mail.c','Jel860',44),(87,'Vytautas',860000057,'vytas.v@mail.co','Vyt860',45),(88,'Vadimas',860000099,'vadimas.v@mail.','Vad860',46),(89,'Migle',860000073,'migle.m@mail.co','Mig860',47),(90,'Monika',860000046,'monika.m@mail.c','Mon860',48),(91,'Marius',860000084,'marius.m@mail.c','Mar860',49),(92,'Virginija',860000074,'virginija.v@mai','Vir860',50),(93,'Jelena',860000059,'jelena.j@mail.c','Jel860',51);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Antanas','2019-02-17 10:00:00','2019-02-17 10:15:00'),(4,'Damianas','2019-02-20 14:00:00','2019-02-20 14:15:00'),(5,'Dalius','2019-02-19 14:00:00','2019-02-19 14:15:00'),(6,'Danas','2019-02-22 15:45:00','2019-02-22 16:00:00'),(7,'Erikas','2019-02-23 14:45:00','2019-02-23 15:00:00'),(8,'Edmunas','2019-02-21 17:30:00','2019-02-21 17:45:00'),(9,'Enrikas','2019-02-19 13:15:00','2019-02-19 13:30:00'),(10,'Henrikas','2019-02-20 17:00:00','2019-02-20 17:15:00'),(11,'Jurgis','2019-02-19 15:15:00','2019-02-19 15:30:00'),(12,'Janas','2019-02-22 13:45:00','2019-02-22 14:00:00'),(13,'Jonas','2019-02-21 15:00:00','2019-02-21 15:15:00'),(14,'Jagminas','2019-02-23 17:30:00','2019-02-23 17:45:00'),(15,'Janis','2019-02-24 16:15:00','2019-02-24 16:30:00'),(16,'Gediminas','2019-02-25 18:15:00','2019-02-25 18:30:00'),(17,'Grutas','2019-02-26 14:15:00','2019-02-26 14:30:00'),(19,'Gertruda','2019-02-27 17:30:00','2019-02-27 17:45:00'),(20,'Anabele','2019-02-18 18:15:00','2019-02-18 18:30:00'),(21,'Amanda','2019-02-22 11:45:00','2019-02-22 12:00:00'),(22,'Beata','2019-03-01 15:15:00','2019-03-01 15:30:00'),(23,'Julija','2019-02-19 15:15:00','2019-02-19 15:30:00'),(24,'Jeronimas','2019-02-19 15:15:00','2019-02-19 15:30:00'),(25,'Teodoras','2019-02-21 15:00:00','2019-02-21 15:15:00'),(26,'Agata','2019-02-27 17:30:00','2019-02-27 17:45:00'),(27,'Brone','2019-02-21 17:30:00','2019-02-21 17:45:00'),(28,'Balys','2019-02-22 18:30:00','2019-02-22 18:45:00'),(29,'Angele','2019-03-01 18:45:00','2019-03-01 19:00:00'),(30,'Ricardas','2019-02-20 17:00:00','2019-02-20 17:15:00'),(31,'Anatolijus','2019-02-20 19:30:00','2019-02-20 19:45:00'),(32,'Beatrice','2019-02-21 18:15:00','2019-02-21 18:30:00'),(33,'Valdas','2019-02-23 19:00:00','2019-02-23 19:15:00'),(34,'Gabriele','2019-02-19 18:45:00','2019-02-19 19:00:00'),(35,'Nikodemas','2019-02-21 19:00:00','2019-02-21 19:15:00'),(36,'Nikas','2019-02-28 18:00:00','2019-02-28 18:15:00'),(37,'Egle','2019-03-06 17:00:00','2019-03-06 17:15:00'),(38,'Tomas','2019-03-20 16:15:00','2019-03-20 16:30:00'),(39,'Igoris','2019-03-19 16:00:00','2019-03-19 16:15:00'),(40,'Mantas','2019-04-02 14:15:00','2019-04-02 14:30:00'),(41,'Benas','2019-02-23 19:45:00','2019-02-23 20:00:00'),(42,'Ieva','2019-02-22 17:30:00','2019-02-22 17:45:00'),(43,'Gintas','2019-02-25 18:30:00','2019-02-25 18:45:00'),(45,'Vytautas','2019-03-11 13:00:00','2019-03-11 13:15:00'),(46,'Vadimas','2019-02-20 15:45:00','2019-02-20 16:00:00'),(47,'Migle','2019-02-19 17:00:00','2019-02-19 17:15:00'),(48,'Monika','2019-02-21 12:30:00','2019-02-21 12:45:00'),(49,'Marius','2019-02-27 17:30:00','2019-02-27 17:45:00'),(50,'Virginija','2019-02-28 18:00:00','2019-02-28 18:15:00'),(51,'Jelena','2019-02-21 16:45:00','2019-02-21 17:00:00');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-20 11:55:00
