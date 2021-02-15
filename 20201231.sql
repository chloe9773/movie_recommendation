-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: portfolio
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `company_info`
--

DROP TABLE IF EXISTS `company_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_info` (
  `comName` varchar(30) NOT NULL,
  `comSubName` varchar(30) NOT NULL,
  `comCeo` varchar(15) NOT NULL,
  `comTel` varchar(15) DEFAULT NULL,
  `comUrl` varchar(100) DEFAULT NULL,
  `comCopyright` varchar(300) DEFAULT NULL,
  `comEmail` varchar(200) DEFAULT NULL,
  `comAuth` int DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_info`
--

LOCK TABLES `company_info` WRITE;
/*!40000 ALTER TABLE `company_info` DISABLE KEYS */;
INSERT INTO `company_info` VALUES ('YOUNG FLOWER','YF','박정화','010-3506-9773',NULL,'Copyright 2020. 박정화 All Rights Reserved.','jeonghwapark@outlook.com',2);
/*!40000 ALTER TABLE `company_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yf_article_likes`
--

DROP TABLE IF EXISTS `yf_article_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yf_article_likes` (
  `aid` int NOT NULL,
  `mUserName` varchar(50) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yf_article_likes`
--

LOCK TABLES `yf_article_likes` WRITE;
/*!40000 ALTER TABLE `yf_article_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `yf_article_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yf_articles`
--

DROP TABLE IF EXISTS `yf_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yf_articles` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `boardCode` varchar(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `hit` int DEFAULT '0',
  `likeArticle` int DEFAULT '0',
  `hateArticle` int DEFAULT '0',
  `regdate` datetime DEFAULT NULL,
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `reStep` int DEFAULT NULL,
  `reLevel` int DEFAULT NULL,
  `division` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yf_articles`
--

LOCK TABLES `yf_articles` WRITE;
/*!40000 ALTER TABLE `yf_articles` DISABLE KEYS */;
INSERT INTO `yf_articles` VALUES (1,'commNoti','공지사항&nbsp;테스트&nbsp;1번','master','&lt;p>공지사항 테스트 1번&lt;/p>\r<br />',85,0,0,'2020-12-28 14:34:12',NULL,NULL,NULL,1,0,0,'noti'),(3,'commFree','자유게시글&nbsp;테스트&nbsp;1번','master','&lt;p>자유게시글 테스트 1번&lt;/p>\r<br />',195,0,0,'2020-12-28 17:25:14',NULL,NULL,NULL,2,0,0,'free'),(4,'commNoti','공지사항&nbsp;테스트&nbsp;2번','master','&lt;p>공지사항 테스트 2번&lt;/p>\r<br />',0,0,0,'2020-12-31 10:13:13',NULL,NULL,NULL,3,0,0,'noti'),(5,'commNoti','공지사항&nbsp;테스트&nbsp;3번','master','&lt;p>공지사항 테스트 3번&lt;/p>\r<br />',0,0,0,'2020-12-31 10:13:25',NULL,NULL,NULL,4,0,0,'noti'),(6,'commNoti','공지사항&nbsp;테스트&nbsp;4번','master','&lt;p>공지사항 테스트 4번&lt;/p>\r<br />',0,0,0,'2020-12-31 10:13:35',NULL,NULL,NULL,5,0,0,'noti'),(7,'commNoti','공지사항&nbsp;테스트&nbsp;5번','master','&lt;p>공지사항 테스트 5번&lt;/p>\r<br />',0,0,0,'2020-12-31 10:13:53',NULL,NULL,NULL,6,0,0,'noti');
/*!40000 ALTER TABLE `yf_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yf_authority`
--

DROP TABLE IF EXISTS `yf_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yf_authority` (
  `auth` varchar(10) NOT NULL,
  `authLevel` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yf_authority`
--

LOCK TABLES `yf_authority` WRITE;
/*!40000 ALTER TABLE `yf_authority` DISABLE KEYS */;
INSERT INTO `yf_authority` VALUES ('신규회원',1),('정식회원',2),('관리자',10),('마스터',11);
/*!40000 ALTER TABLE `yf_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yf_board`
--

DROP TABLE IF EXISTS `yf_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yf_board` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `boardCode` varchar(10) DEFAULT NULL,
  `boardDivision` varchar(4) DEFAULT NULL,
  `boardMaker` varchar(50) NOT NULL,
  `boardTitle` varchar(20) NOT NULL,
  `boardRead` int NOT NULL DEFAULT '1',
  `boardWrite` int NOT NULL DEFAULT '1',
  `boardReply` int NOT NULL DEFAULT '1',
  `boardDownload` int NOT NULL DEFAULT '1',
  `boardRegdate` date DEFAULT NULL,
  `boardAdmin` varchar(50) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yf_board`
--

LOCK TABLES `yf_board` WRITE;
/*!40000 ALTER TABLE `yf_board` DISABLE KEYS */;
INSERT INTO `yf_board` VALUES (19,'commNoti','noti','master','공지사항',2,10,10,2,'2020-12-28','null'),(20,'commFree','free','master','자유',1,2,2,2,'2020-12-28','null');
/*!40000 ALTER TABLE `yf_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yf_calendar`
--

DROP TABLE IF EXISTS `yf_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yf_calendar` (
  `cal_id` int NOT NULL AUTO_INCREMENT,
  `startDate` char(12) NOT NULL,
  `endDate` char(12) NOT NULL,
  `calContent` varchar(255) NOT NULL,
  `mUserName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yf_calendar`
--

LOCK TABLES `yf_calendar` WRITE;
/*!40000 ALTER TABLE `yf_calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `yf_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yf_comments`
--

DROP TABLE IF EXISTS `yf_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yf_comments` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` varchar(200) NOT NULL,
  `who` varchar(50) NOT NULL,
  `hit` int DEFAULT '0',
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yf_comments`
--

LOCK TABLES `yf_comments` WRITE;
/*!40000 ALTER TABLE `yf_comments` DISABLE KEYS */;
INSERT INTO `yf_comments` VALUES (1,3,'자유게시글 댓글 테스트 1번','bbh0506',0,'2020-12-29 16:15:51');
/*!40000 ALTER TABLE `yf_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yf_gender`
--

DROP TABLE IF EXISTS `yf_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yf_gender` (
  `gValue` int NOT NULL,
  `gender` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yf_gender`
--

LOCK TABLES `yf_gender` WRITE;
/*!40000 ALTER TABLE `yf_gender` DISABLE KEYS */;
INSERT INTO `yf_gender` VALUES (1,'남'),(2,'여'),(3,'X');
/*!40000 ALTER TABLE `yf_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yf_membership`
--

DROP TABLE IF EXISTS `yf_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yf_membership` (
  `mid` int NOT NULL AUTO_INCREMENT,
  `mEmail` varchar(50) NOT NULL,
  `mUserName` varchar(50) NOT NULL,
  `mPassword` varchar(30) NOT NULL,
  `mName` varchar(5) NOT NULL,
  `mBirthdate` date NOT NULL,
  `mAgeGroup` int NOT NULL,
  `mGender` int NOT NULL,
  `mSido` varchar(10) DEFAULT NULL,
  `mPostcode` varchar(5) DEFAULT NULL,
  `mAddress` varchar(100) DEFAULT NULL,
  `mExtraAddress` varchar(100) DEFAULT NULL,
  `mFavGenre` varchar(200) DEFAULT NULL,
  `mLevel` int NOT NULL DEFAULT '1',
  `mRegdate` date DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yf_membership`
--

LOCK TABLES `yf_membership` WRITE;
/*!40000 ALTER TABLE `yf_membership` DISABLE KEYS */;
INSERT INTO `yf_membership` VALUES (1,'master@exo.com','master','1234','김준면','2020-12-22',0,1,NULL,NULL,NULL,NULL,NULL,11,'2020-12-22'),(2,'admin@exo.com','admin','1234','김민석','2020-12-22',0,1,NULL,NULL,NULL,NULL,NULL,10,'2020-12-22'),(3,'bbh0506@exo.com','bbh0506','bbh0506!','변백현','1992-05-06',20,1,'서울','04773','서울 성동구 왕십리로 16','12동 48호',NULL,1,'2020-12-22'),(4,'ms@exo.com','ms','rlaalstjr0327!','김민석','1990-03-27',30,1,'경기','13494','경기 성남시 분당구 판교역로 235','카카오',NULL,2,'2020-12-30');
/*!40000 ALTER TABLE `yf_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yf_question`
--

DROP TABLE IF EXISTS `yf_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yf_question` (
  `qid` int NOT NULL AUTO_INCREMENT,
  `qTitle` varchar(50) NOT NULL,
  `qWriter` varchar(50) NOT NULL,
  `qContent` text NOT NULL,
  `regdate` date DEFAULT NULL,
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `reStep` int DEFAULT NULL,
  `reLevel` int DEFAULT NULL,
  `qCheck` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yf_question`
--

LOCK TABLES `yf_question` WRITE;
/*!40000 ALTER TABLE `yf_question` DISABLE KEYS */;
INSERT INTO `yf_question` VALUES (1,'test1','bbh0506','<p>test111111111</p>\r\n','2020-12-22','WHHOCkINOWgwm4Qag5eP5mekQmR7Sixg.txt','ipsec.txt','c://upload//fileUpload//',1,0,0,1),(3,'test1 답변','admin','<p>test 1 답변 테스트</p>\r\n','2020-12-30',NULL,NULL,NULL,1,1,1,1);
/*!40000 ALTER TABLE `yf_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yf_question_answer`
--

DROP TABLE IF EXISTS `yf_question_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yf_question_answer` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` varchar(200) NOT NULL,
  `who` varchar(50) NOT NULL,
  `regdate` date DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yf_question_answer`
--

LOCK TABLES `yf_question_answer` WRITE;
/*!40000 ALTER TABLE `yf_question_answer` DISABLE KEYS */;
INSERT INTO `yf_question_answer` VALUES (1,2,'관리자용 댓글 테스트 (사용자는 볼 수 없음) (+ 댓글 수정테스트)','master','2020-12-30'),(3,2,'관리자용 댓글 테스트2','admin','2020-12-30');
/*!40000 ALTER TABLE `yf_question_answer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-31 12:01:56
