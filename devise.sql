-- MySQL dump 10.13  Distrib 5.7.41, for Linux (x86_64)
--
-- Host: localhost    Database: devise3_d
-- ------------------------------------------------------
-- Server version	5.7.41-0ubuntu0.18.04.1

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `account` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`),
  UNIQUE KEY `index_admins_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'a@a.a','$2a$12$a1PA7L9ngxgDoGK7EBwCOu1IgJr5rfDpO.sXHCPC3SXZrGuajUid.',NULL,NULL,NULL,'2023-03-16 07:14:21','2023-03-16 07:14:21','Patrick','afgn'),(2,'yleemccullou@tremblay.co','$2a$12$Fdo7QA2cNLadGry2qMheZuvs4RmcLY16EmTwo/bSH4Ii8eaVkD5ny',NULL,NULL,NULL,'2023-03-16 07:14:22','2023-03-16 07:14:22','yleeMcCullou','yleemccullou'),(3,'karyngoodw@miller.com','$2a$12$vn.X0K1QzJXqX6nrcuAW1.M.2/Z3QsOBPAwuMPTKT6en09jKhF83S',NULL,NULL,NULL,'2023-03-16 07:14:22','2023-03-16 07:14:22','KarynGoodw','karyngoodw'),(4,'niekingdo@harvey-rosenbaum.biz','$2a$12$LA2w5.wRDzbzk3YId4IVae3tp165ud5NXTZCIUro.PHDgxUSAbtvq',NULL,NULL,NULL,'2023-03-16 07:14:22','2023-03-16 07:14:22','nieKingDO','niekingdo'),(5,'gifaheydvm@spencer-jaskolski.co','$2a$12$94pIrSlpIBDz5EVwk2.kYOC5KuJVQrSKOvagFekXow6j6bfkzoVUG',NULL,NULL,NULL,'2023-03-16 07:14:22','2023-03-16 07:14:22','giFaheyDVM','gifaheydvm'),(6,'zhegmann@gusikowski.com','$2a$12$gJctdo9yzRrZeZoeEdt7muq5XsyEZfzSq.gFVHP6Oaaw3JId7c6Lq',NULL,NULL,NULL,'2023-03-16 07:14:23','2023-03-16 07:14:23','zHegmann','zhegmann'),(7,'phenierau@jones.net','$2a$12$gcCDCCgtuvjz7etiFFkb.uKzWQ6dVmIHcJmhjx4SZnEUhRFl0fVZe',NULL,NULL,NULL,'2023-03-16 07:14:23','2023-03-16 07:14:23','phenieRau','phenierau'),(8,'ertwitting@lemke.biz','$2a$12$C5pXHLlb9fMU8DxvuCNRe.Wwfvbt33KwMWQ2KtD0Kxh2q4jTogm8K',NULL,NULL,NULL,'2023-03-16 07:14:23','2023-03-16 07:14:23','ertWitting','ertwitting'),(9,'iswuckertph@kutch.io','$2a$12$tCOHp7ST3qeO.pcmEAy1NuPAgCGQzxHUnhL99Rt1xBuwqosN7isQ.',NULL,NULL,NULL,'2023-03-16 07:14:24','2023-03-16 07:14:24','isWuckertPh','iswuckertph'),(10,'renettamoo@jacobs.com','$2a$12$sQsF3aaKnN1DCw28PaSEG.uM25/ufbZK.I33MRcVrGARTdX1S0rVW',NULL,NULL,NULL,'2023-03-16 07:14:24','2023-03-16 07:14:24','RenettaMoo','renettamoo'),(11,'rianefisher@howe.name','$2a$12$t0sxseNLjsvgN.RAu1zH4.Yv5NY1RrUf1tyusB1KaFanwHCUlIlHO',NULL,NULL,NULL,'2023-03-16 07:14:24','2023-03-16 07:14:24','rianeFisher','rianefisher'),(12,'onnitzsche@corwin.net','$2a$12$sm8fQ/4e8v1ZajhpjQVxbefccBwwVBzFZFDYwy2k/nB2qSaYsLi.q',NULL,NULL,NULL,'2023-03-16 07:14:25','2023-03-16 07:14:25','onNitzsche','onnitzsche'),(13,'merspencer@walker.co','$2a$12$GiSzcWgXZTjI4UtSwq5shufY7BSHKJYQ0Fpk5zbPtGjyaNYMM5C1C',NULL,NULL,NULL,'2023-03-16 07:14:25','2023-03-16 07:14:25','merSpencer','merspencer'),(14,'linebrekkei@kunze-reichert.net','$2a$12$Gk.d5FJ9pfOPpdnZj5YfU.idpR2dv1IN42Ra2VcY4374JDBM4Ahse',NULL,NULL,NULL,'2023-03-16 07:14:25','2023-03-16 07:14:25','lineBrekkeI','linebrekkei'),(15,'ricedonnelly@will-greenfelder.net','$2a$12$1SwjBy37AcPGCkfkLlwTSuCX80ubC09u6H1e5zi75oVPrtP1/Qm2e',NULL,NULL,NULL,'2023-03-16 07:14:26','2023-03-16 07:14:26','riceDonnelly','ricedonnelly'),(16,'ianostroman@windler.name','$2a$12$mF/O8zUYF3OImkyy.5Lfv.SQQV73yKbxatHw1xfM142YObgwGIHIe',NULL,NULL,NULL,'2023-03-16 07:14:26','2023-03-16 07:14:26','ianoStroman','ianostroman'),(17,'untadamore@lynch-beahan.com','$2a$12$SYqOoyV0SpN23x4KKpVDl.IAYJRcWdDAqrS5b2qFSikAGkD7nvlqy',NULL,NULL,NULL,'2023-03-16 07:14:26','2023-03-16 07:14:26','untaDAmore','untadamore'),(18,'nardagerhold@huels-davis.biz','$2a$12$bZnNJRaDM27lYGVW0uRhW.FWK7/I0S8nK4uQhgTHiGU0FYJ3lGyxu',NULL,NULL,NULL,'2023-03-16 07:14:26','2023-03-16 07:14:26','nardaGerhold','nardagerhold'),(19,'thomasined@skiles.co','$2a$12$XiLhcxbKBG06fFSZrGKJfO8W7LsLklNUm9XhoOR3mZy9bkb0JBYsW',NULL,NULL,NULL,'2023-03-16 07:14:27','2023-03-16 07:14:27','ThomasineD','thomasined'),(20,'vispfeffer@yost.net','$2a$12$Qj8qDoNyzfQp3X0qJyU6suC05MgtdHmEWUSBWGqd0bvHoUCexEAF.',NULL,NULL,NULL,'2023-03-16 07:14:27','2023-03-16 07:14:27','visPfeffer','vispfeffer'),(21,'rollhomenick@howell.com','$2a$12$nOdAwMAvsHHEMPuFGNMFseKcRpEEmzFNrD3uGh5mMW4tdRQxtxYw2',NULL,NULL,NULL,'2023-03-16 07:14:27','2023-03-16 07:14:27','rollHomenick','rollhomenick'),(22,'b@b.b','$2a$12$yXh0tq4FB0PTH5HvRDoq0.xB5X65Fbk1kBW3NU4MVEIu03RXko16.',NULL,NULL,NULL,'2023-03-16 08:11:39','2023-03-16 08:11:39','B B','bbbb');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2023-03-16 07:13:14','2023-03-16 07:13:14');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20230315073340'),('20230316004602');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-16  8:44:00
