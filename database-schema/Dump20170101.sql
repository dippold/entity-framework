CREATE DATABASE  IF NOT EXISTS `entityfrwk` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `entityfrwk`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: entityfrwk
-- ------------------------------------------------------
-- Server version	5.6.20

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
-- Table structure for table `abstractentity`
--

DROP TABLE IF EXISTS `abstractentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abstractentity` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abstractentity`
--

LOCK TABLES `abstractentity` WRITE;
/*!40000 ALTER TABLE `abstractentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `abstractentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  `COMPANYGROUPID` bigint(20) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (0,0,0,0,0.00,0.00,0,'2016-12-30 11:18:06',0,'Padrão',0,0,1,1,'2016-12-30 11:18:06',1,0),(1,0,0,0,0.00,0.00,0,'2016-12-30 11:18:08',0,'Filial-1',0,0,1,1,'2016-12-30 11:18:08',1,0),(2,0,0,0,0.00,0.00,0,'2016-12-30 11:18:08',0,'Filial-2',0,0,1,1,'2016-12-30 11:18:08',1,0),(3,0,0,0,0.00,0.00,0,'2016-12-30 11:18:08',0,'Filial-3',0,0,1,1,'2016-12-30 11:18:08',1,0),(4,0,0,0,0.00,0.00,0,'2016-12-30 11:18:08',0,'Filial-4',0,0,1,1,'2016-12-30 11:18:08',1,0);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companygroup`
--

DROP TABLE IF EXISTS `companygroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companygroup` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companygroup`
--

LOCK TABLES `companygroup` WRITE;
/*!40000 ALTER TABLE `companygroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `companygroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configkey`
--

DROP TABLE IF EXISTS `configkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configkey` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configkey`
--

LOCK TABLES `configkey` WRITE;
/*!40000 ALTER TABLE `configkey` DISABLE KEYS */;
INSERT INTO `configkey` VALUES (20,0,0,1,0.00,0.00,0,'2016-12-28 15:59:18',0,'app.version',0,0,1,1,'2016-12-28 15:59:18',1,'10.0.1'),(21,0,0,1,0.00,0.00,0,'2016-12-28 15:59:18',0,'app.smtp.server',0,0,1,1,'2016-12-28 15:59:18',1,'smtp.gmail.com'),(22,0,0,1,0.00,0.00,0,'2016-12-28 15:59:18',0,'app.smtp.account',0,0,1,1,'2016-12-28 15:59:18',1,'ppm@gmail.com'),(23,0,0,1,0.00,0.00,0,'2016-12-28 15:59:18',0,'app.smtp.passwd',0,0,1,1,'2016-12-28 15:59:18',1,'ppm@123'),(24,0,0,1,0.00,0.00,0,'2016-12-28 15:59:18',0,'app.default.role.id',0,0,1,1,'2016-12-28 15:59:18',1,'3'),(25,0,0,1,0.00,0.00,0,'2016-12-28 15:59:18',0,'app.default.company.id',0,0,1,1,'2016-12-28 15:59:18',1,'1'),(26,0,0,1,0.00,0.00,0,'2016-12-28 15:59:19',0,'app.default.project.id',0,0,1,1,'2016-12-28 15:59:19',1,'1'),(27,0,0,1,0.00,0.00,0,'2016-12-28 15:59:19',0,'app.default.project.state.id',0,0,1,1,'2016-12-28 15:59:19',1,'1'),(28,0,0,1,0.00,0.00,0,'2016-12-28 15:59:19',0,'app.portlet.my.project.by.status.show',0,0,1,1,'2016-12-28 15:59:19',1,'yes'),(29,0,0,1,0.00,0.00,0,'2016-12-28 15:59:19',0,'app.portlet.my.task.by.project.show',0,0,1,1,'2016-12-28 15:59:19',1,'yes'),(30,0,0,1,0.00,0.00,0,'2016-12-28 15:59:19',0,'app.portlet.my.task.by.status.show',0,0,1,1,'2016-12-28 15:59:19',1,'yes'),(31,0,0,1,0.00,0.00,0,'2016-12-28 15:59:19',0,'app.portlet.my.task.by.project.status.id.lst',0,0,1,1,'2016-12-28 15:59:19',1,'*'),(32,0,0,1,0.00,0.00,0,'2016-12-28 15:59:19',0,'app.portlet.my.task.by.status.status.id.lst',0,0,1,1,'2016-12-28 15:59:19',1,'*'),(33,0,0,1,0.00,0.00,0,'2016-12-28 15:59:19',0,'app.portlet.project.by.status.project.id.lst',0,0,1,1,'2016-12-28 15:59:19',1,'*'),(34,0,0,1,0.00,0.00,0,'2016-12-28 15:59:19',0,'app.portlet.project.by.status.status.id.lst',0,0,1,1,'2016-12-28 15:59:19',1,'*');
/*!40000 ALTER TABLE `configkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credential`
--

DROP TABLE IF EXISTS `credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credential` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credential`
--

LOCK TABLES `credential` WRITE;
/*!40000 ALTER TABLE `credential` DISABLE KEYS */;
INSERT INTO `credential` VALUES (35,0,0,0,0.00,0.00,0,'2016-12-28 15:59:19',0,'Google',0,0,1,1,'2016-12-28 15:59:19',1),(36,0,0,0,0.00,0.00,0,'2016-12-28 15:59:19',0,'SalesForce',0,0,1,1,'2016-12-28 15:59:19',1),(37,0,0,0,0.00,0.00,0,'2016-12-28 15:59:19',0,'SAP ECC',0,0,1,1,'2016-12-28 15:59:19',1),(38,0,0,0,0.00,0.00,0,'2016-12-28 15:59:19',0,'AD',0,0,1,1,'2016-12-28 15:59:19',1);
/*!40000 ALTER TABLE `credential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  `PHYSICALPERSON` tinyint(1) DEFAULT '0',
  `PROSPECT` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (801,0,0,0,0.00,0.00,0,'2016-12-30 16:21:49',0,'EUAX',0,0,1,1,'2016-12-30 16:21:49',1,0,0),(802,0,0,0,0.00,0.00,0,'2016-12-30 16:21:51',0,'BMW',0,0,1,1,'2016-12-30 16:21:51',1,0,0),(803,0,0,0,0.00,0.00,0,'2016-12-30 16:21:51',0,'WEG',0,0,1,1,'2016-12-30 16:21:51',1,0,0),(804,0,0,0,0.00,0.00,0,'2016-12-30 16:21:51',0,'A-DEFINIR',0,0,1,1,'2016-12-30 16:21:51',1,0,0);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COMPLETENESS` int(11) DEFAULT NULL,
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ENDDATE` date DEFAULT NULL,
  `ESTIMATEDCUST` int(11) DEFAULT NULL,
  `ESTIMATEDWORK` int(11) DEFAULT NULL,
  `GENERALSTATEID` bigint(20) DEFAULT '1',
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `STARTDATE` date DEFAULT NULL,
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  `WORKPACKEAGEID` bigint(20) DEFAULT '1',
  `SERVICEORDERID` bigint(20) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue`
--

LOCK TABLES `issue` WRITE;
/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `progressobservation`
--

DROP TABLE IF EXISTS `progressobservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `progressobservation` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `NEWPROGRESSSTATUS` bigint(20) DEFAULT '1',
  `NEXTACTIONS` varchar(255) DEFAULT NULL,
  `OBSERVATIONS` varchar(255) NOT NULL,
  `OBSERVEDENTITYID` bigint(20) DEFAULT '1',
  `OBSERVEDENTITYTYPE` varchar(100) NOT NULL,
  `OLDPROGRESSSTATUS` bigint(20) DEFAULT '1',
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progressobservation`
--

LOCK TABLES `progressobservation` WRITE;
/*!40000 ALTER TABLE `progressobservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `progressobservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `progressstatus`
--

DROP TABLE IF EXISTS `progressstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `progressstatus` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `SYSTEM` tinyint(1) DEFAULT '0',
  `TRANSITION` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `progressstatus`
--

LOCK TABLES `progressstatus` WRITE;
/*!40000 ALTER TABLE `progressstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `progressstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ENDDATE` date DEFAULT NULL,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `MANAGERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `PROJECTMAINSTATUS` bigint(20) DEFAULT '1',
  `PROJECTTRANSITIONSTATUS` bigint(20) DEFAULT '1',
  `RULEID` bigint(20) DEFAULT '1',
  `STARTDATE` date DEFAULT NULL,
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (0,0,0,0,0.00,0.00,0,'2016-12-30 11:18:08',NULL,0,1,'Rotina',0,0,1,1,1,NULL,1,'2016-12-30 11:18:08',1),(1,0,0,0,0.00,0.00,0,'2016-12-30 11:18:08',NULL,0,1,'Administrativo',0,0,1,1,1,NULL,1,'2016-12-30 11:18:08',1),(2,0,0,0,0.00,0.00,0,'2016-12-30 11:18:08',NULL,0,1,'Treinamentos',0,0,1,1,1,NULL,1,'2016-12-30 11:18:08',1),(3,0,0,0,0.00,0.00,0,'2016-12-30 11:18:08',NULL,0,1,'Férias',0,0,1,1,1,NULL,1,'2016-12-30 11:18:08',1),(4,0,0,0,0.00,0.00,0,'2016-12-30 11:18:08',NULL,0,1,'Projeto ABC',0,0,1,1,1,NULL,1,'2016-12-30 11:18:08',1);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectbaseline`
--

DROP TABLE IF EXISTS `projectbaseline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectbaseline` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `CHANGEAPPROVAL` varchar(255) NOT NULL,
  `CHANGEJUSTIFICATION` varchar(255) NOT NULL,
  `COMPANYID` bigint(20) DEFAULT '0',
  `COMPLETENESS` int(11) DEFAULT NULL,
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ENDDATE` date DEFAULT NULL,
  `ESTIMATEDCUST` int(11) DEFAULT NULL,
  `ESTIMATEDWORK` int(11) DEFAULT NULL,
  `GENERALSTATEID` bigint(20) DEFAULT '1',
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `STARTDATE` date DEFAULT NULL,
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  `WORKPACKEAGEID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectbaseline`
--

LOCK TABLES `projectbaseline` WRITE;
/*!40000 ALTER TABLE `projectbaseline` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectbaseline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rule`
--

DROP TABLE IF EXISTS `rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule`
--

LOCK TABLES `rule` WRITE;
/*!40000 ALTER TABLE `rule` DISABLE KEYS */;
INSERT INTO `rule` VALUES (1,0,0,0,0.00,0.00,0,'2016-12-28 15:59:11',0,'Admin',0,0,1,1,'2016-12-28 15:59:11',1),(2,0,0,0,0.00,0.00,0,'2016-12-28 15:59:17',0,'Gerente',0,0,1,1,'2016-12-28 15:59:17',1),(3,0,0,0,0.00,0.00,0,'2016-12-28 15:59:18',0,'Vendedor',0,0,1,1,'2016-12-28 15:59:18',1),(4,0,0,0,0.00,0.00,0,'2016-12-28 15:59:18',0,'Técnico',0,0,1,1,'2016-12-28 15:59:18',1),(5,0,0,0,0.00,0.00,0,'2016-12-28 15:59:18',0,'Financeiro',0,0,1,1,'2016-12-28 15:59:18',1),(201,0,1,0,0.00,0.00,0,'2016-12-29 22:47:24',0,'PMO 2',0,0,4,1,'2016-12-29 22:47:24',1);
/*!40000 ALTER TABLE `rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequence` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence`
--

LOCK TABLES `sequence` WRITE;
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
INSERT INTO `sequence` VALUES ('SEQ_GEN',1050);
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceorder`
--

DROP TABLE IF EXISTS `serviceorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serviceorder` (
  `ID` bigint(20) NOT NULL,
  `SERVICEORDERMAINSTATUSID` bigint(20) DEFAULT '1',
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COMPLETENESS` decimal(3,2) DEFAULT '0.00',
  `CONTACTS` varchar(40) DEFAULT NULL,
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CUSTOMERID` bigint(20) DEFAULT NULL,
  `DETAIL` varchar(255) NOT NULL,
  `ENDDATE` date DEFAULT NULL,
  `ESTIMATEDCUST` decimal(10,2) DEFAULT '0.00',
  `ESTIMATEDWORK` decimal(10,2) DEFAULT '0.00',
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `SERVICEORDERTYPEID` bigint(20) DEFAULT '1',
  `STAKEHOLDERID` bigint(20) DEFAULT NULL,
  `STARTDATE` date DEFAULT NULL,
  `SUBSIDIARY` varchar(40) DEFAULT NULL,
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceorder`
--

LOCK TABLES `serviceorder` WRITE;
/*!40000 ALTER TABLE `serviceorder` DISABLE KEYS */;
INSERT INTO `serviceorder` VALUES (951,1,0,0,0,0.00,'dfgdfg',0.00,0.00,0,'2016-12-30 19:45:38',804,'dfgdfg',NULL,0.00,0.00,0,'dfgdfg',0,0,1,1,NULL,NULL,'dfgd',0,'2016-12-30 19:45:38',1),(1001,2,0,0,0,0.00,'Fabio Dippold',0.00,0.00,0,'2016-12-31 11:14:56',803,'Instalação de central telefonica digital',NULL,0.00,0.00,0,'Instalação de central telefonica digital',0,0,1,3,NULL,NULL,'Gravatai',0,'2016-12-31 11:14:56',1);
/*!40000 ALTER TABLE `serviceorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceordermainstatus`
--

DROP TABLE IF EXISTS `serviceordermainstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serviceordermainstatus` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceordermainstatus`
--

LOCK TABLES `serviceordermainstatus` WRITE;
/*!40000 ALTER TABLE `serviceordermainstatus` DISABLE KEYS */;
INSERT INTO `serviceordermainstatus` VALUES (1,0,0,0,0.00,0.00,0,'2016-12-28 17:38:05',0,'1 Em triagem',0,0,1,1,'2016-12-28 17:38:05',1),(2,0,0,0,0.00,0.00,0,'2016-12-28 17:38:05',0,'2 Em oçamentação',0,0,1,1,'2016-12-28 17:38:05',1),(3,0,0,0,0.00,0.00,0,'2016-12-28 17:38:05',0,'3 Em aprovação interna',0,0,1,1,'2016-12-28 17:38:05',1),(4,0,0,0,0.00,0.00,0,'2016-12-28 17:38:05',0,'4 Em aprovação cliente',0,0,1,1,'2016-12-28 17:38:05',1),(5,0,0,0,0.00,0.00,0,'2016-12-28 17:38:06',0,'5 Firme para execução',0,0,1,1,'2016-12-28 17:38:06',1),(6,0,0,0,0.00,0.00,0,'2016-12-28 17:38:06',0,'6 Em execução',0,0,1,1,'2016-12-28 17:38:06',1),(7,0,0,0,0.00,0.00,0,'2016-12-28 17:38:06',0,'7 Finalizado e solicitado aceite',0,0,1,1,'2016-12-28 17:38:06',1),(8,0,0,0,0.00,0.00,0,'2016-12-28 17:38:06',0,'8 Pronto p/ faturamento',0,0,1,1,'2016-12-28 17:38:06',1),(9,0,0,0,0.00,0.00,0,'2016-12-28 17:38:06',0,'9 Faturado',0,0,1,1,'2016-12-28 17:38:06',1),(10,0,0,0,0.00,0.00,0,'2016-12-28 17:38:06',0,'10 Paga',0,0,1,1,'2016-12-28 17:38:06',1),(11,0,0,0,0.00,0.00,0,'2016-12-28 17:38:06',0,'11 Fechada',0,0,1,1,'2016-12-28 17:38:06',1),(40,0,0,0,0.00,0.00,0,'2016-12-28 17:38:05',0,'40 Orçamento cancelado',0,0,1,1,'2016-12-28 17:38:05',1),(60,0,0,0,0.00,0.00,0,'2016-12-28 17:38:06',0,'60 Parada execução',0,0,1,1,'2016-12-28 17:38:06',1),(61,0,0,0,0.00,0.00,0,'2016-12-28 17:38:06',0,'61 Retomada execução',0,0,1,1,'2016-12-28 17:38:06',1),(71,0,0,0,0.00,0.00,0,'2016-12-28 17:38:06',0,'71 Em revisão do Serviço',0,0,1,1,'2016-12-28 17:38:06',1),(90,0,0,0,0.00,0.00,0,'2016-12-28 17:38:06',0,'90 Pgto em atraso',0,0,1,1,'2016-12-28 17:38:06',1);
/*!40000 ALTER TABLE `serviceordermainstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceordertype`
--

DROP TABLE IF EXISTS `serviceordertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serviceordertype` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceordertype`
--

LOCK TABLES `serviceordertype` WRITE;
/*!40000 ALTER TABLE `serviceordertype` DISABLE KEYS */;
INSERT INTO `serviceordertype` VALUES (1,0,0,0,0.00,0.00,0,'2016-12-28 17:38:05',0,'Serviço',0,0,1,1,'2016-12-28 17:38:05',1),(2,0,0,0,0.00,0.00,0,'2016-12-28 17:38:05',0,'Serviço garantia',0,0,1,1,'2016-12-28 17:38:05',1),(3,0,0,0,0.00,0.00,0,'2016-12-28 17:38:05',0,'Serviço cortesia',0,0,1,1,'2016-12-28 17:38:05',1),(4,0,0,0,0.00,0.00,0,'2016-12-28 17:38:05',0,'Serviço interno',0,0,1,1,'2016-12-28 17:38:05',1),(5,0,0,0,0.00,0.00,0,'2016-12-28 17:38:05',0,'Rotina',0,0,1,1,'2016-12-28 17:38:05',1),(6,0,0,0,0.00,0.00,0,'2016-12-28 17:38:05',0,'Outros',0,0,1,1,'2016-12-28 17:38:05',1);
/*!40000 ALTER TABLE `serviceordertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stakeholder`
--

DROP TABLE IF EXISTS `stakeholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stakeholder` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `ADDITIONALNOTES` varchar(255) DEFAULT NULL,
  `AFFINITYGROUP` varchar(45) NOT NULL,
  `BLOCKED` tinyint(1) DEFAULT '0',
  `CELLPHONENUMBER` varchar(45) DEFAULT NULL,
  `COMMUNICATIONFREQUENCY` varchar(255) DEFAULT NULL,
  `COMPANYID` bigint(20) DEFAULT '0',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `EMAIL` varchar(45) NOT NULL,
  `GMAIL` varchar(45) DEFAULT NULL,
  `HIERARCHY` varchar(45) NOT NULL,
  `HOWCANITHELP` varchar(255) DEFAULT NULL,
  `HOWITCANMESSUP` varchar(255) DEFAULT NULL,
  `INTERESTDEGREE` int(11) NOT NULL,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `OFFICEPHONENUMBER` varchar(45) DEFAULT NULL,
  `POWERDEGREE` int(11) DEFAULT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `SKYPE` varchar(45) DEFAULT NULL,
  `STRATEGYATTITUDE` varchar(255) DEFAULT NULL,
  `STRATEGYCOMMUNICATION` varchar(255) DEFAULT NULL,
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  `CUSTOMERID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EMAIL` (`EMAIL`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stakeholder`
--

LOCK TABLES `stakeholder` WRITE;
/*!40000 ALTER TABLE `stakeholder` DISABLE KEYS */;
/*!40000 ALTER TABLE `stakeholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemlog`
--

DROP TABLE IF EXISTS `systemlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemlog` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemlog`
--

LOCK TABLES `systemlog` WRITE;
/*!40000 ALTER TABLE `systemlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `systemlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemmessage`
--

DROP TABLE IF EXISTS `systemmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemmessage` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `MESSAGE` varchar(255) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RESOURCE` varchar(45) DEFAULT NULL,
  `RESOURCEID` bigint(20) DEFAULT NULL,
  `RULEID` bigint(20) DEFAULT '1',
  `SUBJECT` varchar(100) NOT NULL,
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `URGENT` tinyint(1) DEFAULT '0',
  `USERID` bigint(20) DEFAULT '1',
  `USERSENDERID` bigint(20) NOT NULL,
  `WASREAD` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemmessage`
--

LOCK TABLES `systemmessage` WRITE;
/*!40000 ALTER TABLE `systemmessage` DISABLE KEYS */;
INSERT INTO `systemmessage` VALUES (651,0,0,0,0.00,0.00,0,'2016-12-30 14:32:41',0,'Favor priorizar a Issue','30/12/2016 12:32 = 10 >> 10',0,0,NULL,NULL,1,'Issue FTD-234',0,'2016-12-30 14:32:41',1,10,10,1),(701,0,0,0,0.00,0.00,0,'2016-12-30 15:08:47',0,'Favor priorizar a issue','30/12/2016 13:08 = 10 >> 10',0,0,NULL,NULL,1,'Issue ftd-456',0,'2016-12-30 15:08:47',1,10,10,1),(751,0,0,0,0.00,0.00,0,'2016-12-30 15:16:50',0,'FDGDFGDFGFDG','30/12/2016 13:16 = 10 >> 10',0,0,NULL,NULL,1,'DFGDFGFD',0,'2016-12-30 15:16:50',1,10,10,1);
/*!40000 ALTER TABLE `systemmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COMPLETENESS` int(11) DEFAULT NULL,
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ENDDATE` date DEFAULT NULL,
  `ESTIMATEDCUST` int(11) DEFAULT NULL,
  `ESTIMATEDWORK` int(11) DEFAULT NULL,
  `GENERALSTATEID` bigint(20) DEFAULT '1',
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `STARTDATE` date DEFAULT NULL,
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  `WORKPACKEAGEID` bigint(20) DEFAULT '1',
  `SERVICEORDERID` bigint(20) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `EMAIL` varchar(45) NOT NULL,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `NICKNAME` varchar(10) NOT NULL,
  `PASSWD` varchar(20) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EMAIL` (`EMAIL`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (6,0,0,0,0.00,0.00,0,'2016-12-28 15:59:18','Alexandro.Acerga@digitaldoor.com.br',0,'Alexandro Luiz Acerga','Alexandro','dd@1234',0,0,1,1,'2016-12-28 15:59:18',1),(7,0,0,0,0.00,0.00,0,'2016-12-28 15:59:18','Bruno.Santos@digitaldoor.com.br',0,'Bruno dos Santos','Bruno','dd@1234',0,0,1,1,'2016-12-28 15:59:18',1),(8,0,0,0,0.00,0.00,0,'2016-12-28 15:59:18','Daniel.Souza@digitaldoor.com.br',0,'Daniel Natal de Souza','Daniel','dd@1234',0,0,1,1,'2016-12-28 15:59:18',1),(9,0,0,0,0.00,0.00,0,'2016-12-28 15:59:18','Denilson.Furtado@digitaldoor.com.br',0,'Denilson Furtado','Denilson','dd@1234',0,0,1,1,'2016-12-28 15:59:18',1),(10,0,0,0,0.00,0.00,0,'2016-12-28 15:59:18','dippold.br@gmail.com',0,'Fabio Tavares Dippold','Fabio','galateo2013',0,0,1,1,'2016-12-28 15:59:18',1),(11,0,0,0,0.00,0.00,0,'2016-12-28 15:59:18','Fernando.Voigt@digitaldoor.com.br',0,'Fernando Maciel Hiller Voigt','Fernando','dd@1234',0,0,1,1,'2016-12-28 15:59:18',1),(12,0,0,0,0.00,0.00,0,'2016-12-28 15:59:18','Jefferson.Macial@digitaldoor.com.br',0,'Jefferson Fernando Macial','Jefferson','dd@1234',0,0,1,1,'2016-12-28 15:59:18',1),(13,0,0,0,0.00,0.00,0,'2016-12-28 15:59:18','João.Bittencourt@digitaldoor.com.br',0,'João Roberto Bittencourt','João','dd@1234',0,0,1,1,'2016-12-28 15:59:18',1),(14,0,0,0,0.00,0.00,0,'2016-12-28 15:59:18','Jony.Torres@digitaldoor.com.br',0,'Jony Udson Torres','Jony','dd@1234',0,0,1,1,'2016-12-28 15:59:18',1),(15,0,0,0,0.00,0.00,0,'2016-12-28 15:59:18','Laercio.Bento@digitaldoor.com.br',0,'Laercio Bento','Laercio','dd@1234',0,0,1,1,'2016-12-28 15:59:18',1),(16,0,0,0,0.00,0.00,0,'2016-12-28 15:59:18','Leonardo.Silva@digitaldoor.com.br',0,'Leonardo Viriato da Silva','Leonardo','dd@1234',0,0,1,1,'2016-12-28 15:59:18',1),(17,0,0,0,0.00,0.00,0,'2016-12-28 15:59:18','Lucas.Oliveira@digitaldoor.com.br',0,'Lucas Sprenger de Oliveira','Lucas','dd@1234',0,0,1,1,'2016-12-28 15:59:18',1),(18,0,0,0,0.00,0.00,0,'2016-12-28 15:59:18','Matheus.Rosa@digitaldoor.com.br',0,'Matheus Daniel Rosa','Matheus','dd@1234',0,0,1,1,'2016-12-28 15:59:18',1),(19,0,0,0,0.00,0.00,0,'2016-12-28 15:59:18','Rafael.Gonsalves@digitaldoor.com.br',0,'Rafael Cardoso Gonsalves','Rafael','dd@1234',0,0,1,1,'2016-12-28 15:59:18',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercredential`
--

DROP TABLE IF EXISTS `usercredential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usercredential` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREDENTIALID` bigint(20) DEFAULT '0',
  `IDENTIFICATION` varchar(40) NOT NULL,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `PASSWD` varchar(20) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercredential`
--

LOCK TABLES `usercredential` WRITE;
/*!40000 ALTER TABLE `usercredential` DISABLE KEYS */;
INSERT INTO `usercredential` VALUES (39,0,0,0,0.00,0.00,0,'2016-12-28 15:59:19',35,'Alexandro Luiz Acerga',0,'Alexandro Luiz Acerga -> Google','Google@1234',0,0,1,0,'2016-12-28 15:59:19',6),(40,0,0,0,0.00,0.00,0,'2016-12-28 15:59:19',36,'Alexandro Luiz Acerga',0,'Alexandro Luiz Acerga -> SalesForce','SalesForce@1234',0,0,1,0,'2016-12-28 15:59:19',6),(41,0,0,0,0.00,0.00,0,'2016-12-28 15:59:19',37,'Alexandro Luiz Acerga',0,'Alexandro Luiz Acerga -> SAP ECC','SAP ECC@1234',0,0,1,0,'2016-12-28 15:59:19',6),(42,0,0,0,0.00,0.00,0,'2016-12-28 15:59:19',38,'Alexandro Luiz Acerga',0,'Alexandro Luiz Acerga -> AD','AD@1234',0,0,1,0,'2016-12-28 15:59:19',6),(43,0,0,0,0.00,0.00,0,'2016-12-28 15:59:19',35,'Bruno dos Santos',0,'Bruno dos Santos -> Google','Google@1234',0,0,1,0,'2016-12-28 15:59:19',7),(44,0,0,0,0.00,0.00,0,'2016-12-28 15:59:19',36,'Bruno dos Santos',0,'Bruno dos Santos -> SalesForce','SalesForce@1234',0,0,1,0,'2016-12-28 15:59:19',7),(45,0,0,0,0.00,0.00,0,'2016-12-28 15:59:19',37,'Bruno dos Santos',0,'Bruno dos Santos -> SAP ECC','SAP ECC@1234',0,0,1,0,'2016-12-28 15:59:19',7),(46,0,0,0,0.00,0.00,0,'2016-12-28 15:59:19',38,'Bruno dos Santos',0,'Bruno dos Santos -> AD','AD@1234',0,0,1,0,'2016-12-28 15:59:19',7),(47,0,0,0,0.00,0.00,0,'2016-12-28 15:59:19',35,'Daniel Natal de Souza',0,'Daniel Natal de Souza -> Google','Google@1234',0,0,1,0,'2016-12-28 15:59:19',8),(48,0,0,0,0.00,0.00,0,'2016-12-28 15:59:19',36,'Daniel Natal de Souza',0,'Daniel Natal de Souza -> SalesForce','SalesForce@1234',0,0,1,0,'2016-12-28 15:59:19',8),(49,0,0,0,0.00,0.00,0,'2016-12-28 15:59:19',37,'Daniel Natal de Souza',0,'Daniel Natal de Souza -> SAP ECC','SAP ECC@1234',0,0,1,0,'2016-12-28 15:59:19',8),(50,0,0,0,0.00,0.00,0,'2016-12-28 15:59:19',38,'Daniel Natal de Souza',0,'Daniel Natal de Souza -> AD','AD@1234',0,0,1,0,'2016-12-28 15:59:19',8),(51,0,0,0,0.00,0.00,0,'2016-12-28 15:59:19',35,'Denilson Furtado',0,'Denilson Furtado -> Google','Google@1234',0,0,1,0,'2016-12-28 15:59:19',9),(52,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',36,'Denilson Furtado',0,'Denilson Furtado -> SalesForce','SalesForce@1234',0,0,1,0,'2016-12-28 15:59:20',9),(53,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',37,'Denilson Furtado',0,'Denilson Furtado -> SAP ECC','SAP ECC@1234',0,0,1,0,'2016-12-28 15:59:20',9),(54,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',38,'Denilson Furtado',0,'Denilson Furtado -> AD','AD@1234',0,0,1,0,'2016-12-28 15:59:20',9),(55,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',35,'Fabio Tavares Dippold',0,'Fabio Tavares Dippold -> Google','Google@1234',0,0,1,0,'2016-12-28 15:59:20',10),(56,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',36,'Fabio Tavares Dippold',0,'Fabio Tavares Dippold -> SalesForce','SalesForce@1234',0,0,1,0,'2016-12-28 15:59:20',10),(57,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',37,'Fabio Tavares Dippold',0,'Fabio Tavares Dippold -> SAP ECC','SAP ECC@1234',0,0,1,0,'2016-12-28 15:59:20',10),(58,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',38,'Fabio Tavares Dippold',0,'Fabio Tavares Dippold -> AD','AD@1234',0,0,1,0,'2016-12-28 15:59:20',10),(59,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',35,'Fernando Maciel Hiller Voigt',0,'Fernando Maciel Hiller Voigt -> Google','Google@1234',0,0,1,0,'2016-12-28 15:59:20',11),(60,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',36,'Fernando Maciel Hiller Voigt',0,'Fernando Maciel Hiller Voigt -> SalesForce','SalesForce@1234',0,0,1,0,'2016-12-28 15:59:20',11),(61,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',37,'Fernando Maciel Hiller Voigt',0,'Fernando Maciel Hiller Voigt -> SAP ECC','SAP ECC@1234',0,0,1,0,'2016-12-28 15:59:20',11),(62,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',38,'Fernando Maciel Hiller Voigt',0,'Fernando Maciel Hiller Voigt -> AD','AD@1234',0,0,1,0,'2016-12-28 15:59:20',11),(63,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',35,'Jefferson Fernando Macial',0,'Jefferson Fernando Macial -> Google','Google@1234',0,0,1,0,'2016-12-28 15:59:20',12),(64,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',36,'Jefferson Fernando Macial',0,'Jefferson Fernando Macial -> SalesForce','SalesForce@1234',0,0,1,0,'2016-12-28 15:59:20',12),(65,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',37,'Jefferson Fernando Macial',0,'Jefferson Fernando Macial -> SAP ECC','SAP ECC@1234',0,0,1,0,'2016-12-28 15:59:20',12),(66,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',38,'Jefferson Fernando Macial',0,'Jefferson Fernando Macial -> AD','AD@1234',0,0,1,0,'2016-12-28 15:59:20',12),(67,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',35,'João Roberto Bittencourt',0,'João Roberto Bittencourt -> Google','Google@1234',0,0,1,0,'2016-12-28 15:59:20',13),(68,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',36,'João Roberto Bittencourt',0,'João Roberto Bittencourt -> SalesForce','SalesForce@1234',0,0,1,0,'2016-12-28 15:59:20',13),(69,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',37,'João Roberto Bittencourt',0,'João Roberto Bittencourt -> SAP ECC','SAP ECC@1234',0,0,1,0,'2016-12-28 15:59:20',13),(70,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',38,'João Roberto Bittencourt',0,'João Roberto Bittencourt -> AD','AD@1234',0,0,1,0,'2016-12-28 15:59:20',13),(71,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',35,'Jony Udson Torres',0,'Jony Udson Torres -> Google','Google@1234',0,0,1,0,'2016-12-28 15:59:20',14),(72,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',36,'Jony Udson Torres',0,'Jony Udson Torres -> SalesForce','SalesForce@1234',0,0,1,0,'2016-12-28 15:59:20',14),(73,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',37,'Jony Udson Torres',0,'Jony Udson Torres -> SAP ECC','SAP ECC@1234',0,0,1,0,'2016-12-28 15:59:20',14),(74,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',38,'Jony Udson Torres',0,'Jony Udson Torres -> AD','AD@1234',0,0,1,0,'2016-12-28 15:59:20',14),(75,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',35,'Laercio Bento',0,'Laercio Bento -> Google','Google@1234',0,0,1,0,'2016-12-28 15:59:20',15),(76,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',36,'Laercio Bento',0,'Laercio Bento -> SalesForce','SalesForce@1234',0,0,1,0,'2016-12-28 15:59:20',15),(77,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',37,'Laercio Bento',0,'Laercio Bento -> SAP ECC','SAP ECC@1234',0,0,1,0,'2016-12-28 15:59:20',15),(78,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',38,'Laercio Bento',0,'Laercio Bento -> AD','AD@1234',0,0,1,0,'2016-12-28 15:59:20',15),(79,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',35,'Leonardo Viriato da Silva',0,'Leonardo Viriato da Silva -> Google','Google@1234',0,0,1,0,'2016-12-28 15:59:20',16),(80,0,0,0,0.00,0.00,0,'2016-12-28 15:59:20',36,'Leonardo Viriato da Silva',0,'Leonardo Viriato da Silva -> SalesForce','SalesForce@1234',0,0,1,0,'2016-12-28 15:59:20',16),(81,0,0,0,0.00,0.00,0,'2016-12-28 15:59:21',37,'Leonardo Viriato da Silva',0,'Leonardo Viriato da Silva -> SAP ECC','SAP ECC@1234',0,0,1,0,'2016-12-28 15:59:21',16),(82,0,0,0,0.00,0.00,0,'2016-12-28 15:59:21',38,'Leonardo Viriato da Silva',0,'Leonardo Viriato da Silva -> AD','AD@1234',0,0,1,0,'2016-12-28 15:59:21',16),(83,0,0,0,0.00,0.00,0,'2016-12-28 15:59:21',35,'Lucas Sprenger de Oliveira',0,'Lucas Sprenger de Oliveira -> Google','Google@1234',0,0,1,0,'2016-12-28 15:59:21',17),(84,0,0,0,0.00,0.00,0,'2016-12-28 15:59:21',36,'Lucas Sprenger de Oliveira',0,'Lucas Sprenger de Oliveira -> SalesForce','SalesForce@1234',0,0,1,0,'2016-12-28 15:59:21',17),(85,0,0,0,0.00,0.00,0,'2016-12-28 15:59:21',37,'Lucas Sprenger de Oliveira',0,'Lucas Sprenger de Oliveira -> SAP ECC','SAP ECC@1234',0,0,1,0,'2016-12-28 15:59:21',17),(86,0,0,0,0.00,0.00,0,'2016-12-28 15:59:21',38,'Lucas Sprenger de Oliveira',0,'Lucas Sprenger de Oliveira -> AD','AD@1234',0,0,1,0,'2016-12-28 15:59:21',17),(87,0,0,0,0.00,0.00,0,'2016-12-28 15:59:21',35,'Matheus Daniel Rosa',0,'Matheus Daniel Rosa -> Google','Google@1234',0,0,1,0,'2016-12-28 15:59:21',18),(88,0,0,0,0.00,0.00,0,'2016-12-28 15:59:21',36,'Matheus Daniel Rosa',0,'Matheus Daniel Rosa -> SalesForce','SalesForce@1234',0,0,1,0,'2016-12-28 15:59:21',18),(89,0,0,0,0.00,0.00,0,'2016-12-28 15:59:21',37,'Matheus Daniel Rosa',0,'Matheus Daniel Rosa -> SAP ECC','SAP ECC@1234',0,0,1,0,'2016-12-28 15:59:21',18),(90,0,0,0,0.00,0.00,0,'2016-12-28 15:59:21',38,'Matheus Daniel Rosa',0,'Matheus Daniel Rosa -> AD','AD@1234',0,0,1,0,'2016-12-28 15:59:21',18),(91,0,0,0,0.00,0.00,0,'2016-12-28 15:59:21',35,'Rafael Cardoso Gonsalves',0,'Rafael Cardoso Gonsalves -> Google','Google@1234',0,0,1,0,'2016-12-28 15:59:21',19),(92,0,0,0,0.00,0.00,0,'2016-12-28 15:59:21',36,'Rafael Cardoso Gonsalves',0,'Rafael Cardoso Gonsalves -> SalesForce','SalesForce@1234',0,0,1,0,'2016-12-28 15:59:21',19),(93,0,0,0,0.00,0.00,0,'2016-12-28 15:59:21',37,'Rafael Cardoso Gonsalves',0,'Rafael Cardoso Gonsalves -> SAP ECC','SAP ECC@1234',0,0,1,0,'2016-12-28 15:59:21',19),(94,0,0,0,0.00,0.00,0,'2016-12-28 15:59:21',38,'Rafael Cardoso Gonsalves',0,'Rafael Cardoso Gonsalves -> AD','AD@1234',0,0,1,0,'2016-12-28 15:59:21',19);
/*!40000 ALTER TABLE `usercredential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workedhour`
--

DROP TABLE IF EXISTS `workedhour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workedhour` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ENDTIME` time DEFAULT NULL,
  `GENERALSTATEID` bigint(20) DEFAULT '1',
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `NAME` varchar(100) NOT NULL,
  `PENDENCY` varchar(255) DEFAULT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `SERVICEPERFORMED` varchar(255) NOT NULL,
  `STARTDATE` date DEFAULT NULL,
  `SYSTEM` tinyint(1) DEFAULT '0',
  `TASKID` bigint(20) DEFAULT NULL,
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workedhour`
--

LOCK TABLES `workedhour` WRITE;
/*!40000 ALTER TABLE `workedhour` DISABLE KEYS */;
/*!40000 ALTER TABLE `workedhour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workpackage`
--

DROP TABLE IF EXISTS `workpackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workpackage` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '0',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '0',
  `COMPLETENESS` int(11) DEFAULT NULL,
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '0',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ENDDATE` date DEFAULT NULL,
  `ESTIMATEDCUST` int(11) DEFAULT NULL,
  `ESTIMATEDWORK` int(11) DEFAULT NULL,
  `GENERALSTATEID` bigint(20) DEFAULT '1',
  `INVESTIMENTORDERID` bigint(20) DEFAULT '0',
  `MANAGERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '0',
  `PROJECTID` bigint(20) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `STAKEHOLDERID` bigint(20) DEFAULT '1',
  `STARTDATE` date DEFAULT NULL,
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workpackage`
--

LOCK TABLES `workpackage` WRITE;
/*!40000 ALTER TABLE `workpackage` DISABLE KEYS */;
/*!40000 ALTER TABLE `workpackage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-01  6:47:57
