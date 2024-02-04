-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: payroll
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administration`
--

DROP TABLE IF EXISTS `administration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administration` (
  `Admin_ID` varchar(30) NOT NULL,
  `First_Name` varchar(45) DEFAULT NULL,
  `Last_Name` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Contact` varchar(11) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `DateOfJoining` date DEFAULT NULL,
  PRIMARY KEY (`Admin_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administration`
--

LOCK TABLES `administration` WRITE;
/*!40000 ALTER TABLE `administration` DISABLE KEYS */;
INSERT INTO `administration` VALUES ('Admin1','Thomas','Shelby','tommyshelby@peakyblinders.org','01234567890','Male','1987-02-03','2015-06-01'),('Admin2','Polly','Gray','pgray@peakyblinders.org','9988554403','Female','1975-12-12','2016-01-13'),('Admin3','Arthur','Shelby','arthurshelby@peakyblinders.org','897564231','Male','1985-11-18','2015-12-01');
/*!40000 ALTER TABLE `administration` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `admlog` AFTER INSERT ON `administration` FOR EACH ROW begin
insert into login(UserID, Password,Division) values(new.Admin_ID,new.Admin_ID,"Admin");
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `allowance`
--

DROP TABLE IF EXISTS `allowance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allowance` (
  `Allowance_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Overtime` decimal(30,0) DEFAULT NULL,
  `Medical` decimal(30,0) DEFAULT NULL,
  `Bonus` decimal(30,0) DEFAULT NULL,
  `Other` decimal(30,0) DEFAULT NULL,
  `Employee_ID` varchar(30) DEFAULT NULL,
  `Salary` decimal(30,0) DEFAULT NULL,
  `Rate` decimal(30,0) DEFAULT NULL,
  `Total_Allowance` decimal(30,0) DEFAULT NULL,
  `First_Name` varchar(45) DEFAULT NULL,
  `Last_Name` varchar(45) DEFAULT NULL,
  `GivenBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Allowance_ID`),
  KEY `Employee_ID_idx` (`Employee_ID`),
  KEY `GivenBy_idx` (`GivenBy`),
  CONSTRAINT `allowance_ibfk_1` FOREIGN KEY (`GivenBy`) REFERENCES `administration` (`Admin_ID`),
  CONSTRAINT `allowance_ibfk_2` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allowance`
--

LOCK TABLES `allowance` WRITE;
/*!40000 ALTER TABLE `allowance` DISABLE KEYS */;
INSERT INTO `allowance` VALUES (1,15,1000,900,800,'Emp1',35000,175,5325,'Grace','Burgess','Admin1'),(2,0,200,300,50,'Emp2',20000,100,550,'Micheal','Gray','Admin1'),(3,9,600,400,150,'Emp3',34000,170,2680,'Ada','Shelby','Admin1'),(4,23,1000,1200,75,'Emp4',35000,175,6213,'Abraham','Gold','Admin1'),(6,300,200,200,200,'Emp2',20000,100,30600,'Micheal','Gray','Admin1'),(14,6,500,400,800,'Emp2',20000,100,2300,'Micheal','Gray','Admin1');
/*!40000 ALTER TABLE `allowance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit` (
  `AuditID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(30) DEFAULT NULL,
  `Login_Time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`AuditID`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit`
--

LOCK TABLES `audit` WRITE;
/*!40000 ALTER TABLE `audit` DISABLE KEYS */;
INSERT INTO `audit` VALUES (2,'Admin1','2019-10-09 23:12:09'),(3,'Admin1','2019-10-09 23:36:55'),(4,'Admin1','2019-10-09 23:53:26'),(5,'Admin1','2019-10-09 23:56:06'),(6,'Admin2','2019-10-10 00:11:47'),(7,'Admin3','2019-10-10 00:13:33'),(8,'Admin2','2019-10-10 00:15:44'),(9,'Emp1','2019-10-10 00:16:52'),(10,'Emp2','2019-10-10 00:17:42'),(11,'Emp3','2019-10-10 00:18:46'),(12,'Admin1','2019-10-10 00:19:42'),(13,'Admin1','2019-10-10 00:20:22'),(14,'Admin1','2019-10-10 16:21:14'),(15,'Admin1','2019-10-11 11:52:10'),(16,'Admin1','2019-10-11 21:51:56'),(17,'Emp1','2019-10-11 22:14:25'),(18,'Emp1','2019-10-11 22:14:51'),(19,'Admin1','2019-10-11 22:26:26'),(20,'Admin1','2019-10-11 22:36:07'),(21,'Admin1','2019-10-11 22:37:53'),(22,'Admin1','2019-10-11 22:39:36'),(23,'Emp1','2019-10-11 22:42:06'),(24,'Admin2','2019-10-11 22:51:17'),(25,'Admin3','2019-10-11 22:54:45'),(26,'Emp1','2019-10-11 22:59:27'),(27,'Emp1','2019-10-11 23:00:58'),(28,'Emp3','2019-10-11 23:05:10'),(29,'Emp3','2019-10-11 23:06:33'),(30,'Emp1','2019-10-11 23:07:44'),(31,'Admin1','2019-10-11 23:16:57'),(32,'Admin1','2019-10-11 23:17:47'),(33,'Admin1','2019-10-11 23:18:39'),(34,'Admin1','2019-10-11 23:19:19'),(35,'Admin1','2019-10-11 23:20:07'),(36,'Admin1','2019-10-11 23:20:49'),(37,'Admin3','2019-10-11 23:22:09'),(38,'Admin2','2019-10-11 23:23:07'),(39,'Admin1','2019-10-11 23:25:53'),(40,'Admin1','2019-10-11 23:30:26'),(41,'Admin2','2019-10-11 23:31:13'),(42,'Admin3','2019-10-11 23:33:04'),(43,'Emp2','2019-10-11 23:43:18'),(44,'Admin1','2019-10-12 01:00:20'),(45,'Admin2','2019-10-12 01:33:52'),(46,'Admin1','2019-10-12 01:39:53'),(47,'Admin3','2019-10-12 01:47:05'),(48,'Emp1','2019-10-12 01:51:45'),(49,'Admin1','2019-10-14 17:22:20'),(50,'Admin1','2019-10-15 16:39:34'),(51,'emp1','2019-10-17 16:22:44'),(52,'emp1','2019-10-17 16:23:04'),(53,'Admin1','2019-10-21 22:17:49'),(54,'Admin2','2019-10-21 22:37:08'),(55,'Admin3','2019-10-21 22:52:07'),(56,'Admin4','2019-10-21 22:56:21'),(57,'Admin3','2019-10-21 23:00:24'),(58,'Admin4','2019-10-21 23:03:22'),(59,'Admin4','2019-10-21 23:10:21'),(60,'Admin4','2019-10-22 17:03:58'),(61,'Admin4','2019-10-22 17:17:11'),(62,'Admin4','2019-10-22 17:18:32'),(63,'Emp1','2019-10-22 17:19:04'),(64,'Emp1','2019-10-22 17:20:20'),(65,'Emp4','2019-10-22 17:22:54'),(66,'Emp4','2019-10-22 17:23:27'),(67,'Admin1','2019-10-22 17:25:32'),(68,'Admin1','2019-10-22 17:26:20'),(69,'Emp1','2019-10-22 17:26:45'),(70,'Admin1','2019-10-22 17:31:06'),(71,'Admin2','2019-10-23 06:29:05'),(72,'Admin6','2019-10-23 06:47:09'),(73,'Emp7','2019-10-23 06:50:09'),(74,'Emp7','2019-10-23 06:51:09'),(75,'Emp6','2019-10-23 06:52:28'),(76,'Admin4','2019-10-23 06:53:13'),(77,'Admin3','2019-10-23 07:01:21'),(78,'Admin1','2019-10-23 07:06:28'),(79,'Admin3','2019-10-23 07:07:10'),(80,'Admin2','2019-10-23 07:07:47'),(81,'Admin1','2019-10-23 14:45:10'),(82,'Emp2','2019-10-23 14:51:57');
/*!40000 ALTER TABLE `audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deductions`
--

DROP TABLE IF EXISTS `deductions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deductions` (
  `Deduction_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Employee_ID` varchar(30) DEFAULT NULL,
  `First_Name` varchar(45) DEFAULT NULL,
  `Last_Name` varchar(45) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Deduction_Amount` int(11) DEFAULT NULL,
  `Deduction_Reason` varchar(45) DEFAULT NULL,
  `MadeBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Deduction_ID`),
  KEY `MadeBy` (`MadeBy`),
  KEY `Employee_ID` (`Employee_ID`),
  CONSTRAINT `deductions_ibfk_1` FOREIGN KEY (`MadeBy`) REFERENCES `administration` (`Admin_ID`),
  CONSTRAINT `deductions_ibfk_2` FOREIGN KEY (`Employee_ID`) REFERENCES `employee` (`Employee_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deductions`
--

LOCK TABLES `deductions` WRITE;
/*!40000 ALTER TABLE `deductions` DISABLE KEYS */;
INSERT INTO `deductions` VALUES (1,'Emp1','Grace','Burgess',35000,1200,'Tax','Admin1'),(3,'Emp2','Micheal','Gray',20000,1000,'Recklessness','Admin1'),(5,'Emp3','Ada','Shelby',34000,1700,'Late For Work','Admin2'),(6,'Emp4','Abraham','Gold',35000,750,'PF','Admin3');
/*!40000 ALTER TABLE `deductions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Employee_ID` varchar(30) NOT NULL,
  `First_Name` varchar(30) DEFAULT NULL,
  `Middle_Name` varchar(45) DEFAULT NULL,
  `Last_name` varchar(40) DEFAULT NULL,
  `Gender` varchar(30) DEFAULT NULL,
  `DateOfBirth` varchar(10) DEFAULT NULL,
  `Contact` varchar(11) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Designation` varchar(30) DEFAULT NULL,
  `Hire_Date` varchar(10) DEFAULT NULL,
  `Grade` varchar(10) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `AddedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`),
  KEY `AddedBy_idx` (`AddedBy`),
  CONSTRAINT `AddedBy` FOREIGN KEY (`AddedBy`) REFERENCES `administration` (`Admin_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('Emp1','Grace','Hellen','Burgess','Female','1987-01-17','9876543210','graceburgess@shelby.org','ChiefAssistant','2017-06-01','A',35000,'Admin1'),('Emp2','Micheal','Polly','Gray','Male','1999-05-27','8806390687','mgray@shelby.org','Accountant','2018-06-01','C',20000,'Admin3'),('Emp3','Ada','Arthur','Shelby','Female','1990-03-17','8794652138','adashelby@shelby.org','Legal','2016-07-02','B',35000,'Admin2'),('Emp4','Abraham','-','Gold','Male','1975-03-15','7894561230','agold@shelby.org','Security Manager','2016-06-01','B',35000,'Admin1');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `emplog` AFTER INSERT ON `employee` FOR EACH ROW begin
insert into login(UserID,Password,Division) values(new.Employee_ID,new.Employee_ID,"Employee");
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `UserID` varchar(30) NOT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Division` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('Admin1','Admin1','Admin'),('Admin2','Admin2','Admin'),('Admin3','Admin3','Admin'),('Emp1','Emp1','Employee'),('Emp2','Emp2','Employee'),('Emp3','Emp3','Employee'),('Emp4','Emp4','Employee');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `PaymentID` int(11) NOT NULL AUTO_INCREMENT,
  `Payed_To` varchar(45) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Payed_By` varchar(45) DEFAULT NULL,
  `Payment_Time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PaymentID`),
  KEY `Payed_By` (`Payed_By`),
  KEY `Payed_To` (`Payed_To`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`Payed_By`) REFERENCES `administration` (`Admin_ID`),
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`Payed_To`) REFERENCES `employee` (`Employee_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'Emp1',39125,'Admin1','2019-10-20 10:06:42'),(2,'Emp4',40463,'Admin1','2019-10-20 10:06:54'),(3,'Emp3',35980,'Admin3','2019-10-22 09:07:20'),(4,'Emp2',49600,'Admin2','2019-10-22 11:08:01'),(6,'Emp3',35980,'Admin2','2019-10-23 07:08:25'),(7,'Emp3',35980,'Admin1','2019-10-23 14:48:30');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'payroll'
--

--
-- Dumping routines for database 'payroll'
--
/*!50003 DROP PROCEDURE IF EXISTS `del_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `del_login`(in id varchar(30))
BEGIN
delete from login where UserID=id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-23 18:54:26
