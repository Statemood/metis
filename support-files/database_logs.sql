# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.28-log)
# Database: logs
# Generation Time: 2012-12-03 11:43:46 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table application
# ------------------------------------------------------------

DROP TABLE IF EXISTS `application`;

CREATE TABLE `application` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` char(10) DEFAULT NULL,
  `time` char(18) DEFAULT NULL,
  `user` char(50) DEFAULT NULL,
  `ip` char(16) DEFAULT NULL,
  `level` char(10) DEFAULT NULL,
  `app` char(20) DEFAULT NULL,
  `details` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table http_access
# ------------------------------------------------------------

DROP TABLE IF EXISTS `http_access`;

CREATE TABLE `http_access` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `domain` char(50) DEFAULT NULL,
  `date` char(10) DEFAULT NULL,
  `time` char(8) DEFAULT NULL,
  `ip` char(16) DEFAULT NULL,
  `user` char(32) DEFAULT NULL,
  `status` int(3) DEFAULT NULL,
  `request` char(100) DEFAULT NULL,
  `from` char(100) DEFAULT NULL,
  `size` int(10) DEFAULT NULL,
  `method` char(8) DEFAULT NULL,
  `version` char(8) DEFAULT NULL,
  `client` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table http_analytics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `http_analytics`;

CREATE TABLE `http_analytics` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table System
# ------------------------------------------------------------

DROP TABLE IF EXISTS `System`;

CREATE TABLE `System` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` char(10) DEFAULT NULL,
  `time` char(18) DEFAULT NULL,
  `host` char(20) DEFAULT NULL,
  `level` char(16) DEFAULT NULL,
  `details` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
