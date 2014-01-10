# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.28-log)
# Database: metis
# Generation Time: 2012-12-03 11:43:32 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table server
# ------------------------------------------------------------

DROP TABLE IF EXISTS `server`;

CREATE TABLE `server` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `CTIP` char(20) DEFAULT NULL,
  `CUIP` char(20) DEFAULT NULL,
  `CMIP` char(20) DEFAULT NULL,
  `NATIP` char(20) DEFAULT NULL,
  `Port` int(5) DEFAULT NULL,
  `Open_Port` char(100) DEFAULT NULL,
  `Hostname` char(30) DEFAULT NULL,
  `Login_users` char(255) DEFAULT NULL,
  `CPU_Mode` char(30) DEFAULT NULL,
  `CPU_Rate` char(5) DEFAULT NULL,
  `CPU_Count` int(3) DEFAULT NULL,
  `CPU_Core` int(3) DEFAULT NULL,
  `CPU_Thread` int(3) DEFAULT NULL,
  `Mem_Size` int(3) DEFAULT NULL,
  `Mem_Count` int(3) DEFAULT NULL,
  `Disk_Size` int(5) DEFAULT NULL,
  `Disk_Type` char(10) DEFAULT NULL,
  `Disk_Count` int(3) DEFAULT NULL,
  `Disk_RPM` int(6) DEFAULT NULL,
  `RAID` int(2) DEFAULT NULL,
  `Power_Rated` int(5) DEFAULT NULL,
  `Power_Count` int(1) DEFAULT NULL,
  `Product_Mode` char(50) DEFAULT NULL,
  `Height_U` int(2) DEFAULT NULL,
  `Serial_Number` char(30) DEFAULT NULL,
  `Service_Code` char(12) DEFAULT NULL,
  `Asset_Number` char(30) DEFAULT NULL,
  `OS` char(50) DEFAULT NULL,
  `Kernel_Version` char(20) DEFAULT NULL,
  `Location` char(40) DEFAULT NULL,
  `Description` char(200) DEFAULT NULL,
  `Application` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `server` WRITE;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;

INSERT INTO `server` (`id`, `CTIP`, `CUIP`, `CMIP`, `NATIP`, `Port`, `Open_Port`, `Hostname`, `Login_users`, `CPU_Mode`, `CPU_Rate`, `CPU_Count`, `CPU_Core`, `CPU_Thread`, `Mem_Size`, `Mem_Count`, `Disk_Size`, `Disk_Type`, `Disk_Count`, `Disk_RPM`, `RAID`, `Power_Rated`, `Power_Count`, `Product_Mode`, `Height_U`, `Serial_Number`, `Service_Code`, `Asset_Number`, `OS`, `Kernel_Version`, `Location`, `Description`, `Application`)
VALUES
	(1,NULL,NULL,NULL,'192.168.0.2',22,'22,80','test_server','root,testuser','Intel E5645','2.13',2,6,12,8,8,300,'SAS',6,15000,10,500,2,'Dell R710',2,'TUVWXYZ','1234567890','987654321','opensuse_12.2_x86_64','3.4.11','Shanghai','Test','Apache2,Tomcat7,Nginx1.2,MySQL5.5');

/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
