-- MySQL dump 10.13  Distrib 8.4.11, for Win64 (x86_64)
--
-- Host: mysql-2eb9aece-dndcompanion-1234.a.aivencloud.com    Database: defaultdb
-- ------------------------------------------------------
-- Server version	8.4.8

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
-- Table structure for table `Classes`
--

DROP TABLE IF EXISTS `Classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Classes` (
  `classID` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `hitDiceDie` varchar(255) DEFAULT NULL,
  `primaryAbility` varchar(255) DEFAULT NULL,
  `armorTraining` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`classID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Dice`
--

DROP TABLE IF EXISTS `Dice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dice` (
  `rollID` int unsigned NOT NULL AUTO_INCREMENT,
  `diceType` varchar(255) DEFAULT NULL,
  `result` int DEFAULT NULL,
  `karmicMod` int DEFAULT NULL,
  `rollDate` datetime DEFAULT NULL,
  PRIMARY KEY (`rollID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Rules`
--

DROP TABLE IF EXISTS `Rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rules` (
  `tabID` int unsigned NOT NULL AUTO_INCREMENT,
  `rulesetID` int unsigned DEFAULT NULL,
  `parentTabID` int unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`tabID`),
  KEY `rulesetID` (`rulesetID`),
  KEY `parentTabID` (`parentTabID`),
  FULLTEXT KEY `title` (`title`,`content`),
  CONSTRAINT `Rules_ibfk_1` FOREIGN KEY (`rulesetID`) REFERENCES `Ruleset` (`rulesetID`),
  CONSTRAINT `Rules_ibfk_2` FOREIGN KEY (`parentTabID`) REFERENCES `Rules` (`tabID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Ruleset`
--

DROP TABLE IF EXISTS `Ruleset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ruleset` (
  `rulesetID` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rulesetID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Spell`
--

DROP TABLE IF EXISTS `Spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Spell` (
  `spellID` int unsigned NOT NULL AUTO_INCREMENT,
  `rulesetID` int unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level` int DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `castingTime` varchar(255) DEFAULT NULL,
  `spellRange` varchar(100) DEFAULT NULL,
  `components` varchar(255) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `description` text,
  `higherLevel` text,
  `concentration` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`spellID`),
  KEY `rulesetID` (`rulesetID`),
  FULLTEXT KEY `name` (`name`,`description`),
  CONSTRAINT `Spell_ibfk_1` FOREIGN KEY (`rulesetID`) REFERENCES `Ruleset` (`rulesetID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SpellClass`
--

DROP TABLE IF EXISTS `SpellClass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SpellClass` (
  `spellID` int unsigned NOT NULL,
  `classID` int unsigned NOT NULL,
  PRIMARY KEY (`spellID`,`classID`),
  KEY `classID` (`classID`),
  CONSTRAINT `SpellClass_ibfk_1` FOREIGN KEY (`spellID`) REFERENCES `Spell` (`spellID`),
  CONSTRAINT `SpellClass_ibfk_2` FOREIGN KEY (`classID`) REFERENCES `Classes` (`classID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-12 12:15:11
