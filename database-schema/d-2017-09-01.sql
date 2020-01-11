-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: entityfrwk
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYGROUPID` bigint(20) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
  `RULEID` bigint(20) DEFAULT '1',
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,1,0,0,1,0.00,0.00,1,'2017-07-29 19:35:02',1,'Padrão',1,1,1,1,'2017-07-29 19:35:02',1),(2,1,0,0,1,0.00,0.00,1,'2017-07-29 19:35:02',1,'Filial-1',1,1,1,1,'2017-07-29 19:35:02',1),(3,1,0,0,1,0.00,0.00,1,'2017-07-29 19:35:02',1,'Filial-2',1,1,1,1,'2017-07-29 19:35:02',1),(4,1,0,0,1,0.00,0.00,1,'2017-07-29 19:35:02',1,'Filial-3',1,1,1,1,'2017-07-29 19:35:02',1),(5,1,0,0,1,0.00,0.00,1,'2017-07-29 19:35:02',1,'Filial-4',1,1,1,1,'2017-07-29 19:35:02',1);
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
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
INSERT INTO `configkey` VALUES (1,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'app.version',1,1,1,1,'2017-07-29 19:35:01',1,'10.0.1'),(2,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'app.smtp.server',1,1,1,1,'2017-07-29 19:35:01',1,'smtp.gmail.com'),(3,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'app.smtp.account',1,1,1,1,'2017-07-29 19:35:01',1,'ppm@gmail.com'),(4,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'app.smtp.passwd',1,1,1,1,'2017-07-29 19:35:01',1,'ppm@123'),(5,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'app.default.role.id',1,1,1,1,'2017-07-29 19:35:01',1,'3'),(6,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'app.default.company.id',1,1,1,1,'2017-07-29 19:35:01',1,'1'),(7,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'app.default.project.id',1,1,1,1,'2017-07-29 19:35:01',1,'1'),(8,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'app.default.project.state.id',1,1,1,1,'2017-07-29 19:35:01',1,'1'),(9,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'app.portlet.my.project.by.status.show',1,1,1,1,'2017-07-29 19:35:01',1,'yes'),(10,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'app.portlet.my.task.by.project.show',1,1,1,1,'2017-07-29 19:35:01',1,'yes'),(11,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'app.portlet.my.task.by.status.show',1,1,1,1,'2017-07-29 19:35:01',1,'yes'),(12,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'app.portlet.my.task.by.project.status.id.lst',1,1,1,1,'2017-07-29 19:35:01',1,'*'),(13,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'app.portlet.my.task.by.status.status.id.lst',1,1,1,1,'2017-07-29 19:35:01',1,'*'),(14,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'app.portlet.project.by.status.project.id.lst',1,1,1,1,'2017-07-29 19:35:01',1,'*'),(15,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'app.portlet.project.by.status.status.id.lst',1,1,1,1,'2017-07-29 19:35:01',1,'*'),(451,1,1,1,0.00,0.00,1,'2017-09-01 13:18:26',1,'lst.crud.actions',1,1,1,1,'2017-09-01 13:18:26',1,'list;create;read;update;delete'),(851,1,0,1,0.00,0.00,1,'2017-09-01 23:27:36',1,'rules.perfil.cliente.pf',1,1,1,1,'2017-09-01 23:27:36',1,'1;3;4'),(1001,1,0,1,0.00,0.00,1,'2017-09-02 02:21:42',1,'table.crud.operation',1,1,1,1,'2017-09-02 02:21:42',1,'[\r\n{\"id\":\"1\",\"value\":\"create\"},{\"id\":\"2\",\"value\":\"read\"},{\"id\":\"3\",\"value\":\"update\"},{\"id\":\"4\",\"value\":\"delete\"}\r\n]');
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
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
INSERT INTO `credential` VALUES (35,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'Google',1,1,1,1,'2017-07-29 19:35:01',1),(36,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'SalesForce',1,1,1,1,'2017-07-29 19:35:01',1),(37,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'SAP ECC',1,1,1,1,'2017-07-29 19:35:01',1),(38,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'AD',1,1,1,1,'2017-07-29 19:35:01',1);
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PHYSICALPERSON` tinyint(1) DEFAULT '0',
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
  `PROSPECT` tinyint(1) DEFAULT '0',
  `RULEID` bigint(20) DEFAULT '1',
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COMPLETENESS` int(11) DEFAULT NULL,
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ENDDATE` date DEFAULT NULL,
  `ESTIMATEDCUST` int(11) DEFAULT NULL,
  `ESTIMATEDWORK` int(11) DEFAULT NULL,
  `GENERALSTATEID` bigint(20) DEFAULT '1',
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
  `RULEID` bigint(20) DEFAULT '1',
  `SERVICEORDERID` bigint(20) DEFAULT '0',
  `STARTDATE` date DEFAULT NULL,
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  `WORKPACKEAGEID` bigint(20) DEFAULT '0',
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `NEWPROGRESSSTATUS` bigint(20) DEFAULT '1',
  `NEXTACTIONS` varchar(255) DEFAULT NULL,
  `OBSERVATIONS` varchar(255) NOT NULL,
  `OBSERVEDENTITYID` bigint(20) DEFAULT '1',
  `OBSERVEDENTITYTYPE` varchar(100) NOT NULL,
  `OLDPROGRESSSTATUS` bigint(20) DEFAULT '1',
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ENDDATE` date DEFAULT NULL,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `MANAGERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
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
INSERT INTO `project` VALUES (100,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',NULL,1,1,'Rotina',1,1,1,1,1,NULL,1,'2017-07-29 19:35:02',1),(101,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',NULL,1,1,'Administrativo',1,1,1,1,1,NULL,1,'2017-07-29 19:35:02',1),(102,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',NULL,1,1,'Treinamentos',1,1,1,1,1,NULL,1,'2017-07-29 19:35:02',1),(103,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',NULL,1,1,'Férias',1,1,1,1,1,NULL,1,'2017-07-29 19:35:02',1),(104,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',NULL,1,1,'Projeto ABC',1,1,1,1,1,NULL,1,'2017-07-29 19:35:02',1);
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `CHANGEAPPROVAL` varchar(255) NOT NULL,
  `CHANGEJUSTIFICATION` varchar(255) NOT NULL,
  `COMPANYID` bigint(20) DEFAULT '1',
  `COMPLETENESS` int(11) DEFAULT NULL,
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ENDDATE` date DEFAULT NULL,
  `ESTIMATEDCUST` int(11) DEFAULT NULL,
  `ESTIMATEDWORK` int(11) DEFAULT NULL,
  `GENERALSTATEID` bigint(20) DEFAULT '1',
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
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
-- Table structure for table `rota`
--

DROP TABLE IF EXISTS `rota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rota` (
  `ID` bigint(20) NOT NULL,
  `ACAO` varchar(10) NOT NULL,
  `DICATELA` varchar(100) DEFAULT NULL,
  `MOSTRARNOMENU` tinyint(1) DEFAULT '0',
  `NOMEMENU` varchar(20) NOT NULL,
  `NOMEGRUPOMENU` varchar(20) NOT NULL,
  `OBSERVACAO` varchar(100) DEFAULT NULL,
  `PERMISSOESID` varchar(50) NOT NULL,
  `RECURSO` varchar(50) NOT NULL,
  `TELA` varchar(50) NOT NULL,
  `CONTROLADOR` varchar(50) NOT NULL,
  `ACAOFALHA` varchar(10) NOT NULL,
  `ACAOSUCESSO` varchar(10) NOT NULL,
  `SISTEMA` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NOME` (`NOMEMENU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rota`
--

LOCK TABLES `rota` WRITE;
/*!40000 ALTER TABLE `rota` DISABLE KEYS */;
INSERT INTO `rota` VALUES (1,'list','...',1,'Rotas','Sistema','...','1','RotaModel','/WEB-INF/views/ListRotaView.jsp','RotaController','list','list',1),(2,'create','...',0,'Rotas - create','Sistema','...','1','RotaModel','/WEB-INF/views/CreateRotaView.jsp','RotaController','create','list',1),(4,'update','...',0,'Rotas - update','Sistema','...','1','RotaModel','/WEB-INF/views/UpdateRotaView.jsp','RotaController','update','list',1),(5,'delete','...',0,'Rotas - delete','Sistema','...','1','RotaModel','/WEB-INF/views/DeleteRotaView.jsp','RotaController','delete','list',1),(6,'create','...',0,'Chaves - create','Sistema','','1','ConfigKeyModel','/WEB-INF/views/KeyValueCreateView.jsp','ConfigKeyController','create','list',1),(7,'list','...',0,'Chaves - list','Sistema','Rrrrrrrr','1','ConfigKeyModel','/WEB-INF/views/ListView.jsp','ConfigKeyController','list','list',1),(901,'update','...',0,'ConfigKey - update','Sistema','','1','ConfigKeyModel','/WEB-INF/views/KeyValueUpdateView.jsp','ConfigKeyController','update','list',1),(951,'delete','...',0,'ConfigKey - read','Sistema','','1','ConfigKeyModel','/WEB-INF/views/KeyValueReadView.jsp','ConfigKeyController','read','list',1);
/*!40000 ALTER TABLE `rota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rule`
--

DROP TABLE IF EXISTS `rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
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
INSERT INTO `rule` VALUES (1,1,0,1,0.00,0.00,1,'2017-07-29 19:34:59',1,'Admin',1,1,1,1,'2017-07-29 19:34:59',1),(2,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'Gerente',1,1,1,1,'2017-07-29 19:35:01',1),(3,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'Vendedor',1,1,1,1,'2017-07-29 19:35:01',1),(4,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'Técnico',1,1,1,1,'2017-07-29 19:35:01',1),(5,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',1,'Financeiro',1,1,1,1,'2017-07-29 19:35:01',1);
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COMPLETENESS` decimal(3,2) DEFAULT '0.00',
  `CONTACTS` varchar(40) DEFAULT NULL,
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CUSTOMERID` bigint(20) DEFAULT NULL,
  `DETAIL` varchar(255) NOT NULL,
  `ENDDATE` date DEFAULT NULL,
  `ESTIMATEDCUST` decimal(10,2) DEFAULT '0.00',
  `ESTIMATEDWORK` decimal(10,2) DEFAULT '0.00',
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `ADDITIONALNOTES` varchar(255) DEFAULT NULL,
  `AFFINITYGROUP` varchar(45) NOT NULL,
  `BLOCKED` tinyint(1) DEFAULT '0',
  `CELLPHONENUMBER` varchar(45) DEFAULT NULL,
  `COMMUNICATIONFREQUENCY` varchar(255) DEFAULT NULL,
  `COMPANYID` bigint(20) DEFAULT '1',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CUSTOMERID` bigint(20) DEFAULT '1',
  `EMAIL` varchar(45) NOT NULL,
  `GMAIL` varchar(45) DEFAULT NULL,
  `HIERARCHY` varchar(45) NOT NULL,
  `HOWCANITHELP` varchar(255) DEFAULT NULL,
  `HOWITCANMESSUP` varchar(255) DEFAULT NULL,
  `INTERESTDEGREE` int(11) NOT NULL,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `OFFICEPHONENUMBER` varchar(45) DEFAULT NULL,
  `POWERDEGREE` int(11) DEFAULT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
  `RULEID` bigint(20) DEFAULT '1',
  `SKYPE` varchar(45) DEFAULT NULL,
  `STRATEGYATTITUDE` varchar(255) DEFAULT NULL,
  `STRATEGYCOMMUNICATION` varchar(255) DEFAULT NULL,
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `MESSAGE` varchar(255) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COMPLETENESS` int(11) DEFAULT NULL,
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ENDDATE` date DEFAULT NULL,
  `ESTIMATEDCUST` int(11) DEFAULT NULL,
  `ESTIMATEDWORK` int(11) DEFAULT NULL,
  `GENERALSTATEID` bigint(20) DEFAULT '1',
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
  `RULEID` bigint(20) DEFAULT '1',
  `SERVICEORDERID` bigint(20) DEFAULT '0',
  `STARTDATE` date DEFAULT NULL,
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  `WORKPACKEAGEID` bigint(20) DEFAULT '0',
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `EMAIL` varchar(45) NOT NULL,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `NICKNAME` varchar(10) NOT NULL,
  `PASSWD` varchar(20) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
  `RULEID` bigint(20) DEFAULT '1',
  `SYSTEM` tinyint(1) DEFAULT '0',
  `UPDATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USERID` bigint(20) DEFAULT '1',
  `PROFILEIDS` varchar(50) NOT NULL,
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
INSERT INTO `user` VALUES (1,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01','dippold.br@gmail.com',1,'Fabio Tavares Dippold','Fabio','galateo2013',1,1,1,1,'2017-07-29 19:35:01',1,''),(2,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01','Alexandro.Acerga@digitaldoor.com.br',1,'Alexandro Luiz Acerga','Alexandro','dd@1234',1,1,1,1,'2017-07-29 19:35:01',1,''),(3,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01','Bruno.Santos@digitaldoor.com.br',1,'Bruno dos Santos','Bruno','dd@1234',1,1,1,1,'2017-07-29 19:35:01',1,''),(4,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01','Daniel.Souza@digitaldoor.com.br',1,'Daniel Natal de Souza','Daniel','dd@1234',1,1,1,1,'2017-07-29 19:35:01',1,''),(5,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01','Denilson.Furtado@digitaldoor.com.br',1,'Denilson Furtado','Denilson','dd@1234',1,1,1,1,'2017-07-29 19:35:01',1,''),(6,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01','Fernando.Voigt@digitaldoor.com.br',1,'Fernando Maciel Hiller Voigt','Fernando','dd@1234',1,1,1,1,'2017-07-29 19:35:01',1,''),(7,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01','Jefferson.Macial@digitaldoor.com.br',1,'Jefferson Fernando Macial','Jefferson','dd@1234',1,1,1,1,'2017-07-29 19:35:01',1,''),(8,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01','João.Bittencourt@digitaldoor.com.br',1,'João Roberto Bittencourt','João','dd@1234',1,1,1,1,'2017-07-29 19:35:01',1,''),(9,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01','Jony.Torres@digitaldoor.com.br',1,'Jony Udson Torres','Jony','dd@1234',1,1,1,1,'2017-07-29 19:35:01',1,''),(10,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01','Laercio.Bento@digitaldoor.com.br',1,'Laercio Bento','Laercio','dd@1234',1,1,1,1,'2017-07-29 19:35:01',1,''),(11,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01','Leonardo.Silva@digitaldoor.com.br',1,'Leonardo Viriato da Silva','Leonardo','dd@1234',1,1,1,1,'2017-07-29 19:35:01',1,''),(12,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01','Lucas.Oliveira@digitaldoor.com.br',1,'Lucas Sprenger de Oliveira','Lucas','dd@1234',1,1,1,1,'2017-07-29 19:35:01',1,''),(13,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01','Matheus.Rosa@digitaldoor.com.br',1,'Matheus Daniel Rosa','Matheus','dd@1234',1,1,1,1,'2017-07-29 19:35:01',1,''),(14,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01','Rafael.Gonsalves@digitaldoor.com.br',1,'Rafael Cardoso Gonsalves','Rafael','dd@1234',1,1,1,1,'2017-07-29 19:35:01',1,'');
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREDENTIALID` bigint(20) DEFAULT '0',
  `IDENTIFICATION` varchar(40) NOT NULL,
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PASSWD` varchar(20) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
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
INSERT INTO `usercredential` VALUES (39,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',35,'Alexandro Luiz Acerga',1,'Alexandro Luiz Acerga -> Google','Google@1234',1,1,1,0,'2017-07-29 19:35:01',6),(40,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',36,'Alexandro Luiz Acerga',1,'Alexandro Luiz Acerga -> SalesForce','SalesForce@1234',1,1,1,0,'2017-07-29 19:35:01',6),(41,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',37,'Alexandro Luiz Acerga',1,'Alexandro Luiz Acerga -> SAP ECC','SAP ECC@1234',1,1,1,0,'2017-07-29 19:35:01',6),(42,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',38,'Alexandro Luiz Acerga',1,'Alexandro Luiz Acerga -> AD','AD@1234',1,1,1,0,'2017-07-29 19:35:01',6),(43,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',35,'Bruno dos Santos',1,'Bruno dos Santos -> Google','Google@1234',1,1,1,0,'2017-07-29 19:35:01',7),(44,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',36,'Bruno dos Santos',1,'Bruno dos Santos -> SalesForce','SalesForce@1234',1,1,1,0,'2017-07-29 19:35:01',7),(45,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',37,'Bruno dos Santos',1,'Bruno dos Santos -> SAP ECC','SAP ECC@1234',1,1,1,0,'2017-07-29 19:35:01',7),(46,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',38,'Bruno dos Santos',1,'Bruno dos Santos -> AD','AD@1234',1,1,1,0,'2017-07-29 19:35:01',7),(47,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',35,'Daniel Natal de Souza',1,'Daniel Natal de Souza -> Google','Google@1234',1,1,1,0,'2017-07-29 19:35:01',8),(48,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',36,'Daniel Natal de Souza',1,'Daniel Natal de Souza -> SalesForce','SalesForce@1234',1,1,1,0,'2017-07-29 19:35:01',8),(49,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',37,'Daniel Natal de Souza',1,'Daniel Natal de Souza -> SAP ECC','SAP ECC@1234',1,1,1,0,'2017-07-29 19:35:01',8),(50,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',38,'Daniel Natal de Souza',1,'Daniel Natal de Souza -> AD','AD@1234',1,1,1,0,'2017-07-29 19:35:01',8),(51,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',35,'Denilson Furtado',1,'Denilson Furtado -> Google','Google@1234',1,1,1,0,'2017-07-29 19:35:01',9),(52,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',36,'Denilson Furtado',1,'Denilson Furtado -> SalesForce','SalesForce@1234',1,1,1,0,'2017-07-29 19:35:01',9),(53,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',37,'Denilson Furtado',1,'Denilson Furtado -> SAP ECC','SAP ECC@1234',1,1,1,0,'2017-07-29 19:35:01',9),(54,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',38,'Denilson Furtado',1,'Denilson Furtado -> AD','AD@1234',1,1,1,0,'2017-07-29 19:35:01',9),(55,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',35,'Fabio Tavares Dippold',1,'Fabio Tavares Dippold -> Google','Google@1234',1,1,1,0,'2017-07-29 19:35:01',10),(56,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',36,'Fabio Tavares Dippold',1,'Fabio Tavares Dippold -> SalesForce','SalesForce@1234',1,1,1,0,'2017-07-29 19:35:01',10),(57,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',37,'Fabio Tavares Dippold',1,'Fabio Tavares Dippold -> SAP ECC','SAP ECC@1234',1,1,1,0,'2017-07-29 19:35:01',10),(58,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',38,'Fabio Tavares Dippold',1,'Fabio Tavares Dippold -> AD','AD@1234',1,1,1,0,'2017-07-29 19:35:01',10),(59,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',35,'Fernando Maciel Hiller Voigt',1,'Fernando Maciel Hiller Voigt -> Google','Google@1234',1,1,1,0,'2017-07-29 19:35:01',11),(60,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',36,'Fernando Maciel Hiller Voigt',1,'Fernando Maciel Hiller Voigt -> SalesForce','SalesForce@1234',1,1,1,0,'2017-07-29 19:35:01',11),(61,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',37,'Fernando Maciel Hiller Voigt',1,'Fernando Maciel Hiller Voigt -> SAP ECC','SAP ECC@1234',1,1,1,0,'2017-07-29 19:35:01',11),(62,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',38,'Fernando Maciel Hiller Voigt',1,'Fernando Maciel Hiller Voigt -> AD','AD@1234',1,1,1,0,'2017-07-29 19:35:01',11),(63,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',35,'Jefferson Fernando Macial',1,'Jefferson Fernando Macial -> Google','Google@1234',1,1,1,0,'2017-07-29 19:35:01',12),(64,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',36,'Jefferson Fernando Macial',1,'Jefferson Fernando Macial -> SalesForce','SalesForce@1234',1,1,1,0,'2017-07-29 19:35:01',12),(65,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',37,'Jefferson Fernando Macial',1,'Jefferson Fernando Macial -> SAP ECC','SAP ECC@1234',1,1,1,0,'2017-07-29 19:35:01',12),(66,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',38,'Jefferson Fernando Macial',1,'Jefferson Fernando Macial -> AD','AD@1234',1,1,1,0,'2017-07-29 19:35:01',12),(67,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',35,'João Roberto Bittencourt',1,'João Roberto Bittencourt -> Google','Google@1234',1,1,1,0,'2017-07-29 19:35:01',13),(68,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',36,'João Roberto Bittencourt',1,'João Roberto Bittencourt -> SalesForce','SalesForce@1234',1,1,1,0,'2017-07-29 19:35:01',13),(69,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',37,'João Roberto Bittencourt',1,'João Roberto Bittencourt -> SAP ECC','SAP ECC@1234',1,1,1,0,'2017-07-29 19:35:01',13),(70,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',38,'João Roberto Bittencourt',1,'João Roberto Bittencourt -> AD','AD@1234',1,1,1,0,'2017-07-29 19:35:01',13),(71,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',35,'Jony Udson Torres',1,'Jony Udson Torres -> Google','Google@1234',1,1,1,0,'2017-07-29 19:35:01',14),(72,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',36,'Jony Udson Torres',1,'Jony Udson Torres -> SalesForce','SalesForce@1234',1,1,1,0,'2017-07-29 19:35:01',14),(73,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',37,'Jony Udson Torres',1,'Jony Udson Torres -> SAP ECC','SAP ECC@1234',1,1,1,0,'2017-07-29 19:35:01',14),(74,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',38,'Jony Udson Torres',1,'Jony Udson Torres -> AD','AD@1234',1,1,1,0,'2017-07-29 19:35:01',14),(75,1,0,1,0.00,0.00,1,'2017-07-29 19:35:01',35,'Laercio Bento',1,'Laercio Bento -> Google','Google@1234',1,1,1,0,'2017-07-29 19:35:01',15),(76,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',36,'Laercio Bento',1,'Laercio Bento -> SalesForce','SalesForce@1234',1,1,1,0,'2017-07-29 19:35:02',15),(77,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',37,'Laercio Bento',1,'Laercio Bento -> SAP ECC','SAP ECC@1234',1,1,1,0,'2017-07-29 19:35:02',15),(78,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',38,'Laercio Bento',1,'Laercio Bento -> AD','AD@1234',1,1,1,0,'2017-07-29 19:35:02',15),(79,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',35,'Leonardo Viriato da Silva',1,'Leonardo Viriato da Silva -> Google','Google@1234',1,1,1,0,'2017-07-29 19:35:02',16),(80,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',36,'Leonardo Viriato da Silva',1,'Leonardo Viriato da Silva -> SalesForce','SalesForce@1234',1,1,1,0,'2017-07-29 19:35:02',16),(81,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',37,'Leonardo Viriato da Silva',1,'Leonardo Viriato da Silva -> SAP ECC','SAP ECC@1234',1,1,1,0,'2017-07-29 19:35:02',16),(82,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',38,'Leonardo Viriato da Silva',1,'Leonardo Viriato da Silva -> AD','AD@1234',1,1,1,0,'2017-07-29 19:35:02',16),(83,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',35,'Lucas Sprenger de Oliveira',1,'Lucas Sprenger de Oliveira -> Google','Google@1234',1,1,1,0,'2017-07-29 19:35:02',17),(84,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',36,'Lucas Sprenger de Oliveira',1,'Lucas Sprenger de Oliveira -> SalesForce','SalesForce@1234',1,1,1,0,'2017-07-29 19:35:02',17),(85,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',37,'Lucas Sprenger de Oliveira',1,'Lucas Sprenger de Oliveira -> SAP ECC','SAP ECC@1234',1,1,1,0,'2017-07-29 19:35:02',17),(86,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',38,'Lucas Sprenger de Oliveira',1,'Lucas Sprenger de Oliveira -> AD','AD@1234',1,1,1,0,'2017-07-29 19:35:02',17),(87,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',35,'Matheus Daniel Rosa',1,'Matheus Daniel Rosa -> Google','Google@1234',1,1,1,0,'2017-07-29 19:35:02',18),(88,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',36,'Matheus Daniel Rosa',1,'Matheus Daniel Rosa -> SalesForce','SalesForce@1234',1,1,1,0,'2017-07-29 19:35:02',18),(89,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',37,'Matheus Daniel Rosa',1,'Matheus Daniel Rosa -> SAP ECC','SAP ECC@1234',1,1,1,0,'2017-07-29 19:35:02',18),(90,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',38,'Matheus Daniel Rosa',1,'Matheus Daniel Rosa -> AD','AD@1234',1,1,1,0,'2017-07-29 19:35:02',18),(91,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',35,'Rafael Cardoso Gonsalves',1,'Rafael Cardoso Gonsalves -> Google','Google@1234',1,1,1,0,'2017-07-29 19:35:02',19),(92,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',36,'Rafael Cardoso Gonsalves',1,'Rafael Cardoso Gonsalves -> SalesForce','SalesForce@1234',1,1,1,0,'2017-07-29 19:35:02',19),(93,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',37,'Rafael Cardoso Gonsalves',1,'Rafael Cardoso Gonsalves -> SAP ECC','SAP ECC@1234',1,1,1,0,'2017-07-29 19:35:02',19),(94,1,0,1,0.00,0.00,1,'2017-07-29 19:35:02',38,'Rafael Cardoso Gonsalves',1,'Rafael Cardoso Gonsalves -> AD','AD@1234',1,1,1,0,'2017-07-29 19:35:02',19);
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ENDTIME` time DEFAULT NULL,
  `GENERALSTATEID` bigint(20) DEFAULT '1',
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PENDENCY` varchar(255) DEFAULT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
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
  `ACCOUNTINGACCOUNTID` bigint(20) DEFAULT '1',
  `BLOCKED` tinyint(1) DEFAULT '0',
  `COMPANYID` bigint(20) DEFAULT '1',
  `COMPLETENESS` int(11) DEFAULT NULL,
  `COORDSLATITUDE` decimal(3,2) DEFAULT '0.00',
  `COORDSLONGITUDE` decimal(3,2) DEFAULT '0.00',
  `COSTCENTERID` bigint(20) DEFAULT '1',
  `CREATEDIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ENDDATE` date DEFAULT NULL,
  `ESTIMATEDCUST` int(11) DEFAULT NULL,
  `ESTIMATEDWORK` int(11) DEFAULT NULL,
  `GENERALSTATEID` bigint(20) DEFAULT '1',
  `INVESTIMENTORDERID` bigint(20) DEFAULT '1',
  `MANAGERID` bigint(20) DEFAULT '1',
  `NAME` varchar(100) NOT NULL,
  `PROFITCENTERID` bigint(20) DEFAULT '1',
  `PROJECTID` bigint(20) DEFAULT '1',
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

-- Dump completed on 2017-09-01 23:57:30
