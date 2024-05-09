-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	8.0.32


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema frampol_db
--

CREATE DATABASE IF NOT EXISTS frampol_db;
USE frampol_db;

--
-- Definition of table `domains`
--

DROP TABLE IF EXISTS `domains`;
CREATE TABLE `domains` (
  `dom_id` int unsigned NOT NULL AUTO_INCREMENT,
  `domain_name` varchar(45) NOT NULL,
  PRIMARY KEY (`dom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `domains`
--

/*!40000 ALTER TABLE `domains` DISABLE KEYS */;
INSERT INTO `domains` (`dom_id`,`domain_name`) VALUES 
 (1,'@ispcustomer.co.zw');
/*!40000 ALTER TABLE `domains` ENABLE KEYS */;


--
-- Definition of table `plan`
--

DROP TABLE IF EXISTS `plan`;
CREATE TABLE `plan` (
  `plan_id` int unsigned NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(45) NOT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `plan`
--

/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` (`plan_id`,`plan_name`) VALUES 
 (1,'30_MEG_UP_30_MEG_DOWN'),
 (2,'50_MEG_UP_50_MEG_DOWN');
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;


--
-- Definition of table `subscriber`
--

DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE `subscriber` (
  `sub_id` int unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(45) NOT NULL,
  `attribute` varchar(45) NOT NULL,
  `plan_id` int unsigned NOT NULL,
  `dom_id` int unsigned NOT NULL,
  PRIMARY KEY (`sub_id`,`plan_id`,`dom_id`) USING BTREE,
  KEY `FK_subscriber_PLAN` (`plan_id`),
  KEY `FK_subscriber_DOMAINS` (`dom_id`),
  CONSTRAINT `FK_subscriber_DOMAINS` FOREIGN KEY (`dom_id`) REFERENCES `domains` (`dom_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_subscriber_PLAN` FOREIGN KEY (`plan_id`) REFERENCES `plan` (`plan_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subscriber`
--

/*!40000 ALTER TABLE `subscriber` DISABLE KEYS */;
INSERT INTO `subscriber` (`sub_id`,`ipaddress`,`attribute`,`plan_id`,`dom_id`) VALUES 
 (5,'10.10.10.25',':=set_attribute',1,1),
 (6,'10.10.10.26',':=set_attribute',2,1),
 (7,'10.10.10.30',':=set_attribute',2,1),
 (8,'192.168.1.10',':=set_attribute',1,1),
 (10,'11.11.11.12',':=set_attribute',2,1);
/*!40000 ALTER TABLE `subscriber` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
