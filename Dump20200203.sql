CREATE DATABASE  IF NOT EXISTS `loan_advisory` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `loan_advisory`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: loan_advisory
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `cust_details`
--

DROP TABLE IF EXISTS `cust_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust_details` (
  `cid` int(11) NOT NULL auto_increment,
  `nic` varchar(12) default NULL,
  `name` varchar(45) default NULL,
  `phn_num` varchar(10) default NULL,
  `accnt_num` varchar(10) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_details`
--

LOCK TABLES `cust_details` WRITE;
/*!40000 ALTER TABLE `cust_details` DISABLE KEYS */;
INSERT INTO `cust_details` VALUES (1,'968232433v','Lakmali Perera','0712276335','763028'),(2,'908124331v','Pasan Abekoon','0764340113','568713'),(6,'968232431v','Lakmali Perera','0712276335','76302856'),(7,'968232433v','Lakmali Perera','0712276335','76302844'),(8,'875635621v','Namal Gamage','0741838889','568713'),(9,'681480333v','Nimal','0712276335','568713');
/*!40000 ALTER TABLE `cust_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cust_request`
--

DROP TABLE IF EXISTS `cust_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust_request` (
  `rid` int(11) NOT NULL auto_increment,
  `nic` varchar(12) default NULL,
  `segment` varchar(45) default NULL,
  `purpose` varchar(45) default NULL,
  `amount` int(11) default NULL,
  PRIMARY KEY  (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_request`
--

LOCK TABLES `cust_request` WRITE;
/*!40000 ALTER TABLE `cust_request` DISABLE KEYS */;
INSERT INTO `cust_request` VALUES (7,'968232433v','Personal Needs','Education',1020000),(13,'908124331v','Development and SME','Agriculture and agroprocessing',100000),(15,'899146771v','Personal Needs','Education',1020000);
/*!40000 ALTER TABLE `cust_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purpose`
--

DROP TABLE IF EXISTS `purpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purpose` (
  `pid` varchar(5) NOT NULL,
  `purpose_name` varchar(45) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purpose`
--

LOCK TABLES `purpose` WRITE;
/*!40000 ALTER TABLE `purpose` DISABLE KEYS */;
INSERT INTO `purpose` VALUES ('p01','General'),('p02','Housing'),('p03','Transpotation'),('p04','Solar'),('p05','Education'),('p06','SME'),('p07','Agriculture & agroprocessing'),('p08','Tourism'),('p09','Self-Employee'),('p10','Other');
/*!40000 ALTER TABLE `purpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheme_details`
--

DROP TABLE IF EXISTS `scheme_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheme_details` (
  `id` int(11) NOT NULL auto_increment,
  `schemeName` varchar(45) default NULL,
  `description` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheme_details`
--

LOCK TABLES `scheme_details` WRITE;
/*!40000 ALTER TABLE `scheme_details` DISABLE KEYS */;
INSERT INTO `scheme_details` VALUES (1,'Sonduru Piyasa','Bank of Ceylon offers special housing loan scheme to fulfill all the housing needs of our customers.'),(2,'Home Sweet Home','Bank of Ceylon offers special housing loan scheme to fulfill all the housing needs of our customers.'),(3,'Sihina Maliga','Bank of Ceylon offers special housing loan scheme to fulfill all the housing needs of our customers.'),(4,'RAPPIA III','Bank of Ceylon offers special housing loan scheme to fulfill all the housing needs of our customers.');
/*!40000 ALTER TABLE `scheme_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segments`
--

DROP TABLE IF EXISTS `segments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segments` (
  `sid` varchar(5) NOT NULL,
  `segment_name` varchar(45) default NULL,
  PRIMARY KEY  (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segments`
--

LOCK TABLES `segments` WRITE;
/*!40000 ALTER TABLE `segments` DISABLE KEYS */;
INSERT INTO `segments` VALUES ('s01','Personal Needs'),('s02','Development & SME');
/*!40000 ALTER TABLE `segments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'loan_advisory'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-03  9:33:41
