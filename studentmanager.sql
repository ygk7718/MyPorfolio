-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: studentmanager
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `b_number` int(11) NOT NULL AUTO_INCREMENT,
  `b_title` varchar(200) DEFAULT NULL,
  `b_writer` varchar(45) DEFAULT NULL,
  `b_content` text,
  `b_date` timestamp NULL DEFAULT NULL,
  `b_count` int(11) DEFAULT '0',
  `b_grade` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`b_number`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (14,'테스트','admin','테스트','2018-11-20 04:55:36',2,NULL),(15,'페이징테스트1','admin','1','2018-11-20 04:56:29',10,NULL),(16,'페이징테스트2','admin','2','2018-11-20 04:56:37',0,NULL),(17,'페이징테스트3','admin','3','2018-11-20 04:56:47',0,NULL),(18,'페이징테스트4','admin','4','2018-11-20 04:56:56',0,NULL),(19,'페이징테스트5','admin','5','2018-11-20 04:57:07',5,NULL),(20,'1','admin','1','2018-12-15 10:07:15',0,NULL),(21,'2','admin','2','2018-12-15 10:07:20',0,NULL),(22,'3','admin','3','2018-12-15 10:07:24',0,NULL),(23,'4','admin','4','2018-12-15 10:07:28',0,NULL),(24,'5','admin','5','2018-12-15 10:07:32',0,NULL),(25,'6','admin','6','2018-12-15 10:07:35',0,NULL),(26,'7','admin','7','2018-12-15 10:07:39',0,NULL),(27,'이거 진짜 글작성 맞음 좀더 꾸밀거임','admin','8','2018-12-15 10:07:45',0,NULL),(28,'임재범','admin','','2018-12-15 10:07:53',0,NULL),(29,'1','admin','1','2018-12-15 10:07:58',0,NULL),(30,'2222','admin','222','2018-12-15 10:08:03',0,NULL),(31,'333','admin','333','2018-12-15 10:08:07',0,NULL),(32,'444','admin','444','2018-12-15 10:08:12',0,NULL),(33,'555','admin','555','2018-12-15 10:08:17',0,NULL),(34,'666','admin','666','2018-12-15 10:08:22',0,NULL),(35,'7777','admin','7777','2018-12-15 10:08:27',0,NULL),(36,'8888','admin','88888','2018-12-15 10:08:32',0,NULL),(37,'99999','admin','999999','2018-12-15 10:08:36',0,NULL),(38,'0000','admin','0000','2018-12-15 10:08:44',0,NULL),(39,'1111','admin','1111','2018-12-15 10:08:49',0,NULL),(40,'11111','admin','11111','2018-12-15 10:09:11',0,NULL);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `comment_no` int(11) NOT NULL AUTO_INCREMENT,
  `b_number` int(11) DEFAULT NULL,
  `comment` text,
  `comment_writer` varchar(30) DEFAULT NULL,
  `writer_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`comment_no`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (17,15,'댓글테스트','admin','2018-11-20 04:59:05'),(20,19,'댓글테스트5','admin','2018-12-15 13:10:49');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_info`
--

DROP TABLE IF EXISTS `student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_info` (
  `student_number` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(13) DEFAULT NULL,
  `Password` varchar(15) DEFAULT NULL,
  `student_name` varchar(15) DEFAULT NULL,
  `student_picture` longblob,
  `student_birth` varchar(8) DEFAULT NULL,
  `student_gender` varchar(5) DEFAULT NULL,
  `student_phone` varchar(13) DEFAULT NULL,
  `student_mail` varchar(45) DEFAULT NULL,
  `student_address` varchar(100) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`student_number`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_info`
--

LOCK TABLES `student_info` WRITE;
/*!40000 ALTER TABLE `student_info` DISABLE KEYS */;
INSERT INTO `student_info` VALUES (2,'admin','admin','관리자',NULL,'000000','남자','010-0000-0000','admin@admin.admin','관리자','2018-05-14 08:44:00',NULL,2),(7,'test','test','테스트',NULL,'19951030','남자','010-9140-7718','test@test.com','테스트입니다','2018-11-20 04:53:54',NULL,1),(8,'test2','test2','테스트2',NULL,'00000000','남자','000-0000-0000','test2@test2','테스트2','2018-11-20 07:57:44',NULL,0);
/*!40000 ALTER TABLE `student_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_score`
--

DROP TABLE IF EXISTS `student_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_score` (
  `student_number` int(11) NOT NULL,
  `kor` int(11) DEFAULT NULL,
  `math` int(11) DEFAULT NULL,
  `social` int(11) DEFAULT NULL,
  `science` int(11) DEFAULT NULL,
  `english` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `grade` varchar(1) DEFAULT NULL,
  `input_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`student_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_score`
--

LOCK TABLES `student_score` WRITE;
/*!40000 ALTER TABLE `student_score` DISABLE KEYS */;
INSERT INTO `student_score` VALUES (7,50,50,50,50,50,250,'F','2018-11-20 07:24:58');
/*!40000 ALTER TABLE `student_score` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-16 16:23:24
