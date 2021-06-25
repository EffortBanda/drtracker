-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: analytics
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.16.04.1

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
-- Table structure for table `drequest_tracker`
--

DROP TABLE IF EXISTS `drequest_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drequest_tracker` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_request_received` date NOT NULL,
  `requester_first_name` varchar(255) NOT NULL,
  `requester_last_name` varchar(255) NOT NULL,
  `requester_position` varchar(255) NOT NULL,
  `requester_phone` varchar(50) DEFAULT NULL,
  `requester_email` varchar(50) DEFAULT NULL,
  `requester_organization` varchar(255) NOT NULL,
  `date_data_required` date DEFAULT NULL,
  `title_of_request` varchar(255) DEFAULT NULL,
  `description_of_request` varchar(255) DEFAULT NULL,
  `type_of_data_required` varchar(255) DEFAULT NULL,
  `intended_use_of_requested_data` varchar(500) DEFAULT NULL,
  `type_of_access_format` varchar(255) DEFAULT NULL,
  `data_disposal_arrangement_after_use` varchar(255) DEFAULT NULL,
  `approval_organization` varchar(255) DEFAULT NULL,
  `approver_name` varchar(255) DEFAULT NULL,
  `approver_designation` varchar(255) DEFAULT NULL,
  `approval_date` date DEFAULT NULL,
  `approval_supporting_document` blob,
  `date_of_data_submission` date DEFAULT NULL,
  `attachment_sent` blob,
  `frequency_of_report` varchar(255) DEFAULT NULL,
  `report_has_PII` tinyint(1) DEFAULT NULL,
  `cdr_member_assigned` varchar(255) DEFAULT NULL,
  `co_requesters` varchar(255) DEFAULT NULL,
  `comments_after_data_submission` varchar(255) DEFAULT NULL,
  `general_comments` varchar(255) DEFAULT NULL,
  `extraction_script_used` blob,
  `request_status` varchar(50) NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drequest_tracker`
--

LOCK TABLES `drequest_tracker` WRITE;
/*!40000 ALTER TABLE `drequest_tracker` DISABLE KEYS */;
INSERT INTO `drequest_tracker` VALUES (1,'2021-02-26','Effort','Kamnkhwani','Database Officer','0884022265','ekamnkhwani@gmail.com','EGPAF','2021-03-05',NULL,NULL,'dump file','test','direct access','purge',NULL,NULL,NULL,NULL,NULL,'2021-02-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary 'meeting on short notice.txt','data submitted'),(3,'2021-02-26','George','Ellanim','Researcher','09999999454','ekamnkhwani@gmail.com','URC','2021-03-12',NULL,NULL,'art data','unknown','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,'2021-02-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary 'minutes.txt','data submitted'),(4,'2021-02-25','Gerald','Kanyama','Clinician','08837362276','gkanyama@gmail.com','EGPAF','2021-03-04',NULL,NULL,'excel sheet','unknown','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WIP'),(5,'2021-03-09','gloria','Mary','Researcher','08878676232','gmary@gmail.com','Lighthouse','2021-03-19',NULL,NULL,'mortality data','N/a','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WIP'),(6,'2021-03-11','Focc','Lindani','Clinician','099999999','flindani@lindani.com','MOH','2021-03-18',NULL,NULL,'medication data','analysis','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rejected'),(7,'2021-03-10','Howard','Merv','M&E Officer','0999999888','hmerv@gmail.com','JHPIEGO','2021-03-31',NULL,NULL,'excel file','visualisation','N/A','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rejected'),(8,'2021-03-09','Bright','Mwapasa','Analyst','0999876555','bmwapasa@mwapasa.com','PIH (Partners In Hope)','2021-03-26',NULL,NULL,'csv file','unknown','N/A','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(9,'2021-03-09','Owen','Mapinda','Medical Doctor','07364536','omapinda@mapinda.com','EGPAF','2021-03-18',NULL,NULL,'connection to database','Presentation','N/A','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(10,'2021-03-08','Chloe ','Kamnkhwani','Nurse','0887654434','ckamnkhwani@kamnkhwani.com','EGPAF','2021-03-18',NULL,NULL,'dump file','unknown','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(11,'2021-03-18','Hilary','Mkulichi','CBM','08865453343','hmkulicji@mm.com','Lighthouse','2021-03-25',NULL,NULL,'mortality data','test','direct access','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WIP'),(12,'2021-03-09','Greem','Sichone','Medical Doctor','0998456321','gsichone@sichone.org','Project Concern International','2021-03-30',NULL,NULL,'mortality data','analysis','get csv file','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(13,'2021-03-21','Lindiwe','Mwamadi','Researcher','0000111111','lmwamadi@gmail.com','JHPIEGO','2021-03-26',NULL,NULL,'art appointments data','analysis','excel sheet report','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(14,'2021-03-13','Gloria','Mawere','Programmer','0882323234','gmawere','EGPAF','2021-03-21',NULL,NULL,'art patient records','develop an API','direct access to database','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(15,'2021-03-08','Greg ','Lizwell','Country Director','999999999','gliz@liz.com','Baylor TSP','2021-03-31',NULL,NULL,'teens on art','comparison wih their findings','csv files to be sent','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(16,'2021-03-10','Golden','Mapira','Database Officer','0888777666','gmapira@mapira.com','MOH','2021-04-02',NULL,NULL,'text file','N/A','indirect','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(17,'2021-03-15','Weasley','Pope','Programme Director','0999444444','wpope@pope.com','Project Concern International','2021-03-22',NULL,NULL,'csv files','N/A','excel sheet report','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(18,'2021-03-12','Mary','Chiuni','Nurse','0999999999','mchiuni@chiuni.com','PIH (Partners In Hope)','2021-03-31',NULL,NULL,'pdf file','decision making','indirect','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(19,'2021-03-08','Andew','Pigion','Data Analyst','0999666777','apigion@pigion.com','Baylor TSP','2021-03-29',NULL,NULL,'docx file','unknown','indirect','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(20,'2021-03-09','Wellington','Malizani','Research Director','0999888777','wmalizani@malizani.com','URC','2021-04-01',NULL,NULL,'excel workbook','N/A','N/A','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(21,'2021-03-15','Bridget','Bandawe','Medical Doctor','0999999999','bbandawe@bandawe.com','Lighthouse','2021-03-23',NULL,NULL,'N/A','N/A','N/A','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(22,'2021-03-12','Horace','Kambani','Laboratory Technologist','1232323434','hkambani@kambani.com','Project Concern International','2021-03-29',NULL,NULL,'medication regimen data','N/A','indirect','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(23,'2021-02-26','Effort','Kamnkhwani','Database Officer','0884022265','ekamnkhwani@gmail.com','EGPAF','2021-03-05',NULL,NULL,'dump file','test','direct access','purge',NULL,NULL,NULL,NULL,NULL,'2021-02-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary 'meeting on short notice.txt','data submitted'),(24,'2021-02-26','George','Ellanim','Researcher','09999999454','ekamnkhwani@gmail.com','URC','2021-03-12',NULL,NULL,'art data','unknown','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,'2021-02-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary 'minutes.txt','data submitted'),(25,'2021-02-25','Gerald','Kanyama','Clinician','08837362276','gkanyama@gmail.com','EGPAF','2021-03-04',NULL,NULL,'excel sheet','unknown','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WIP'),(26,'2021-03-09','gloria','Mary','Researcher','08878676232','gmary@gmail.com','Lighthouse','2021-03-19',NULL,NULL,'mortality data','N/a','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WIP'),(27,'2021-03-11','Focc','Lindani','Clinician','099999999','flindani@lindani.com','MOH','2021-03-18',NULL,NULL,'medication data','analysis','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rejected'),(28,'2021-03-10','Howard','Merv','M&E Officer','0999999888','hmerv@gmail.com','JHPIEGO','2021-03-31',NULL,NULL,'excel file','visualisation','N/A','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rejected'),(29,'2021-03-09','Bright','Mwapasa','Analyst','0999876555','bmwapasa@mwapasa.com','PIH (Partners In Hope)','2021-03-26',NULL,NULL,'csv file','unknown','N/A','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'completed'),(30,'2021-03-09','Owen','Mapinda','Medical Doctor','07364536','omapinda@mapinda.com','EGPAF','2021-03-18',NULL,NULL,'connection to database','Presentation','N/A','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(31,'2021-03-08','Chloe ','Kamnkhwani','Nurse','0887654434','ckamnkhwani@kamnkhwani.com','EGPAF','2021-03-18',NULL,NULL,'dump file','unknown','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(32,'2021-03-18','Hilary','Mkulichi','CBM','08865453343','hmkulicji@mm.com','Lighthouse','2021-03-25',NULL,NULL,'mortality data','test','direct access','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WIP'),(33,'2021-03-20','Greem','Sichone','Medical Doctor','0998456321','gsichone@sichone.org','Project Concern International','2021-03-25',NULL,NULL,'mortality data','analysis','get csv file','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(34,'2021-03-14','Lindiwe','Mwamadi','Researcher','0000111111','lmwamadi@gmail.com','JHPIEGO','2021-04-03',NULL,NULL,'art appointments data','analysis','excel sheet report','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(35,'2021-03-18','Gloria','Mawere','Programmer','0882323234','gmawere','EGPAF','2021-03-30',NULL,NULL,'art patient records','develop an API','direct access to database','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(36,'2021-03-14','Greg ','Lizwell','Country Director','999999999','gliz@liz.com','Baylor TSP','2021-03-27',NULL,NULL,'teens on art','comparison wih their findings','csv files to be sent','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(37,'2021-03-20','Golden','Mapira','Database Officer','0888777666','gmapira@mapira.com','MOH','2021-03-26',NULL,NULL,'text file','N/A','indirect','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WIP'),(38,'2021-03-10','Weasley','Pope','Programme Director','0999444444','wpope@pope.com','Project Concern International','2021-03-28',NULL,NULL,'csv files','N/A','excel sheet report','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rejected'),(39,'2021-03-12','Mary','Chiuni','Nurse','0999999999','mchiuni@chiuni.com','PIH (Partners In Hope)','2021-03-29',NULL,NULL,'pdf file','decision making','indirect','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(40,'2021-03-21','Andew','Pigion','Data Analyst','0999666777','apigion@pigion.com','Baylor TSP','2021-03-26',NULL,NULL,'docx file','unknown','indirect','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(41,'2021-03-08','Wellington','Malizani','Research Director','0999888777','wmalizani@malizani.com','URC','2021-03-21',NULL,NULL,'excel workbook','N/A','N/A','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(42,'2021-03-09','Bridget','Bandawe','Medical Doctor','0999999999','bbandawe@bandawe.com','Lighthouse','2021-03-23',NULL,NULL,'N/A','N/A','N/A','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(43,'2021-03-13','Horace','Kambani','Laboratory Technologist','1232323434','hkambani@kambani.com','Project Concern International','2021-03-30',NULL,NULL,'medication regimen data','N/A','indirect','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(54,'2021-02-26','Effort','Kamnkhwani','Database Officer','0884022265','ekamnkhwani@gmail.com','EGPAF','2021-03-05',NULL,NULL,'dump file','test','direct access','purge',NULL,NULL,NULL,NULL,NULL,'2021-02-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary 'meeting on short notice.txt','data submitted'),(55,'2021-02-26','George','Ellanim','Researcher','09999999454','ekamnkhwani@gmail.com','URC','2021-03-12',NULL,NULL,'art data','unknown','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,'2021-02-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary 'minutes.txt','data submitted'),(56,'2021-02-25','Gerald','Kanyama','Clinician','08837362276','gkanyama@gmail.com','EGPAF','2021-03-04',NULL,NULL,'excel sheet','unknown','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WIP'),(57,'2021-03-09','gloria','Mary','Researcher','08878676232','gmary@gmail.com','Lighthouse','2021-03-19',NULL,NULL,'mortality data','N/a','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WIP'),(58,'2021-03-11','Focc','Lindani','Clinician','099999999','flindani@lindani.com','MOH','2021-03-18',NULL,NULL,'medication data','analysis','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rejected'),(59,'2021-03-10','Howard','Merv','M&E Officer','0999999888','hmerv@gmail.com','JHPIEGO','2021-03-31',NULL,NULL,'excel file','visualisation','N/A','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rejected'),(60,'2021-03-09','Bright','Mwapasa','Analyst','0999876555','bmwapasa@mwapasa.com','PIH (Partners In Hope)','2021-03-26',NULL,NULL,'csv file','unknown','N/A','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(61,'2021-03-09','Owen','Mapinda','Medical Doctor','07364536','omapinda@mapinda.com','EGPAF','2021-03-18',NULL,NULL,'connection to database','Presentation','N/A','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(62,'2021-03-08','Chloe ','Kamnkhwani','Nurse','0887654434','ckamnkhwani@kamnkhwani.com','EGPAF','2021-03-18',NULL,NULL,'dump file','unknown','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(63,'2021-03-18','Hilary','Mkulichi','CBM','08865453343','hmkulicji@mm.com','Lighthouse','2021-03-25',NULL,NULL,'mortality data','test','direct access','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WIP'),(64,'2021-03-16','Greem','Sichone','Medical Doctor','0998456321','gsichone@sichone.org','Project Concern International','2021-04-03',NULL,NULL,'mortality data','analysis','get csv file','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WIP'),(65,'2021-03-19','Lindiwe','Mwamadi','Researcher','0000111111','lmwamadi@gmail.com','JHPIEGO','2021-03-31',NULL,NULL,'art appointments data','analysis','excel sheet report','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'completed'),(66,'2021-03-14','Gloria','Mawere','Programmer','0882323234','gmawere','EGPAF','2021-04-02',NULL,NULL,'art patient records','develop an API','direct access to database','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(67,'2021-03-17','Greg ','Lizwell','Country Director','999999999','gliz@liz.com','Baylor TSP','2021-03-22',NULL,NULL,'teens on art','comparison wih their findings','csv files to be sent','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(68,'2021-03-21','Golden','Mapira','Database Officer','0888777666','gmapira@mapira.com','MOH','2021-04-01',NULL,NULL,'text file','N/A','indirect','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(69,'2021-03-19','Weasley','Pope','Programme Director','0999444444','wpope@pope.com','Project Concern International','2021-04-03',NULL,NULL,'csv files','N/A','excel sheet report','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rejected'),(70,'2021-03-11','Mary','Chiuni','Nurse','0999999999','mchiuni@chiuni.com','PIH (Partners In Hope)','2021-03-26',NULL,NULL,'pdf file','decision making','indirect','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WIP'),(71,'2021-03-18','Andew','Pigion','Data Analyst','0999666777','apigion@pigion.com','Baylor TSP','2021-04-03',NULL,NULL,'docx file','unknown','indirect','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'completed'),(72,'2021-03-20','Wellington','Malizani','Research Director','0999888777','wmalizani@malizani.com','URC','2021-03-29',NULL,NULL,'excel workbook','N/A','N/A','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rejected'),(73,'2021-03-11','Bridget','Bandawe','Medical Doctor','0999999999','bbandawe@bandawe.com','Lighthouse','2021-03-23',NULL,NULL,'N/A','N/A','N/A','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WIP'),(74,'2021-03-18','Horace','Kambani','Laboratory Technologist','1232323434','hkambani@kambani.com','Project Concern International','2021-04-02',NULL,NULL,'medication regimen data','N/A','indirect','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'completed'),(75,'2021-02-26','Effort','Kamnkhwani','Database Officer','0884022265','ekamnkhwani@gmail.com','EGPAF','2021-03-05',NULL,NULL,'dump file','test','direct access','purge',NULL,NULL,NULL,NULL,NULL,'2021-02-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary 'meeting on short notice.txt','data submitted'),(76,'2021-02-26','George','Ellanim','Researcher','09999999454','ekamnkhwani@gmail.com','URC','2021-03-12',NULL,NULL,'art data','unknown','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,'2021-02-27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary 'minutes.txt','data submitted'),(77,'2021-02-25','Gerald','Kanyama','Clinician','08837362276','gkanyama@gmail.com','EGPAF','2021-03-04',NULL,NULL,'excel sheet','unknown','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WIP'),(78,'2021-03-09','gloria','Mary','Researcher','08878676232','gmary@gmail.com','Lighthouse','2021-03-19',NULL,NULL,'mortality data','N/a','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rejected'),(79,'2021-03-11','Focc','Lindani','Clinician','099999999','flindani@lindani.com','MOH','2021-03-18',NULL,NULL,'medication data','analysis','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rejected'),(80,'2021-03-10','Howard','Merv','M&E Officer','0999999888','hmerv@gmail.com','JHPIEGO','2021-03-31',NULL,NULL,'excel file','visualisation','N/A','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rejected'),(81,'2021-03-09','Bright','Mwapasa','Analyst','0999876555','bmwapasa@mwapasa.com','PIH (Partners In Hope)','2021-03-26',NULL,NULL,'csv file','unknown','N/A','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(82,'2021-03-09','Owen','Mapinda','Medical Doctor','07364536','omapinda@mapinda.com','EGPAF','2021-03-18',NULL,NULL,'connection to database','Presentation','N/A','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(83,'2021-03-08','Chloe ','Kamnkhwani','Nurse','0887654434','ckamnkhwani@kamnkhwani.com','EGPAF','2021-03-18',NULL,NULL,'dump file','unknown','unkonwn','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(84,'2021-03-18','Hilary','Mkulichi','CBM','08865453343','hmkulicji@mm.com','Lighthouse','2021-03-25',NULL,NULL,'mortality data','test','direct access','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WIP'),(85,'2021-03-20','Greem','Sichone','Medical Doctor','0998456321','gsichone@sichone.org','Project Concern International','2021-03-23',NULL,NULL,'mortality data','analysis','get csv file','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(86,'2021-03-11','Lindiwe','Mwamadi','Researcher','0000111111','lmwamadi@gmail.com','JHPIEGO','2021-03-22',NULL,NULL,'art appointments data','analysis','excel sheet report','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(87,'2021-03-14','Gloria','Mawere','Programmer','0882323234','gmawere','EGPAF','2021-04-03',NULL,NULL,'art patient records','develop an API','direct access to database','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(88,'2021-03-15','Greg ','Lizwell','Country Director','999999999','gliz@liz.com','Baylor TSP','2021-03-29',NULL,NULL,'teens on art','comparison wih their findings','csv files to be sent','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'completed'),(89,'2021-03-15','Golden','Mapira','Database Officer','0888777666','gmapira@mapira.com','MOH','2021-04-03',NULL,NULL,'text file','N/A','indirect','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WIP'),(90,'2021-03-19','Weasley','Pope','Programme Director','0999444444','wpope@pope.com','Project Concern International','2021-03-22',NULL,NULL,'csv files','N/A','excel sheet report','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rejected'),(91,'2021-03-15','Mary','Chiuni','Nurse','0999999999','mchiuni@chiuni.com','PIH (Partners In Hope)','2021-03-28',NULL,NULL,'pdf file','decision making','indirect','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WIP'),(92,'2021-03-11','Andew','Pigion','Data Analyst','0999666777','apigion@pigion.com','Baylor TSP','2021-03-27',NULL,NULL,'docx file','unknown','indirect','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'received'),(93,'2021-03-16','Wellington','Malizani','Research Director','0999888777','wmalizani@malizani.com','URC','2021-03-30',NULL,NULL,'excel workbook','N/A','N/A','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rejected'),(94,'2021-03-13','Bridget','Bandawe','Medical Doctor','0999999999','bbandawe@bandawe.com','Lighthouse','2021-03-22',NULL,NULL,'N/A','N/A','N/A','N/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'completed'),(95,'2021-03-08','Horace','Kambani','Laboratory Technologist','1232323434','hkambani@kambani.com','Project Concern International','2021-03-27',NULL,NULL,'medication regimen data','N/A','indirect','purge',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'WIP');
/*!40000 ALTER TABLE `drequest_tracker` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger status_change
after update on drequest_tracker 
for each row
begin
if old.request_status<>new.request_status then
insert into status_update_log (request_id,status_change,date_of_change) values (old.request_id,concat('status changed from ',old.request_status,' to',' ',new.request_status),curdate());
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partners` (
  `partner_id` int(11) NOT NULL AUTO_INCREMENT,
  `partner_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`partner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (1,'Baylor TSP'),(2,'EGPAF'),(3,'JHPIEGO'),(4,'Lighthouse'),(5,'PIH (Partners In Hope)'),(6,'Project Concern International'),(7,'URC'),(8,'MOH'),(9,'Other');
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_status`
--

DROP TABLE IF EXISTS `request_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_status`
--

LOCK TABLES `request_status` WRITE;
/*!40000 ALTER TABLE `request_status` DISABLE KEYS */;
INSERT INTO `request_status` VALUES (1,'received'),(2,'rejected'),(3,'WIP'),(4,'completed'),(5,'data submitted');
/*!40000 ALTER TABLE `request_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_update_log`
--

DROP TABLE IF EXISTS `status_update_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_update_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) DEFAULT NULL,
  `status_change` varchar(255) DEFAULT NULL,
  `date_of_change` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_update_log`
--

LOCK TABLES `status_update_log` WRITE;
/*!40000 ALTER TABLE `status_update_log` DISABLE KEYS */;
INSERT INTO `status_update_log` VALUES (1,7,'status changed from completed to rejected','2021-03-12'),(2,11,'status changed from received to WIP','2021-03-12'),(3,95,'status changed from received to WIP','2021-03-21'),(4,94,'status changed from received to completed','2021-03-21'),(5,93,'status changed from received to rejected','2021-03-21'),(6,91,'status changed from received to WIP','2021-03-21'),(7,90,'status changed from received to rejected','2021-03-21'),(8,89,'status changed from received to WIP','2021-03-21'),(9,88,'status changed from received to completed','2021-03-21'),(10,69,'status changed from received to rejected','2021-03-21'),(11,65,'status changed from received to completed','2021-03-21'),(12,37,'status changed from received to WIP','2021-03-21'),(13,38,'status changed from received to rejected','2021-03-21'),(14,64,'status changed from received to WIP','2021-03-21'),(15,29,'status changed from received to completed','2021-03-21'),(16,70,'status changed from received to WIP','2021-03-21'),(17,71,'status changed from received to completed','2021-03-21'),(18,72,'status changed from received to rejected','2021-03-21'),(19,73,'status changed from received to WIP','2021-03-21'),(20,74,'status changed from received to completed','2021-03-21'),(21,78,'status changed from WIP to rejected','2021-03-21');
/*!40000 ALTER TABLE `status_update_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `designation` varchar(255) NOT NULL,
  `userFullName` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `userIDNo` varchar(255) NOT NULL,
  `contactno` varchar(255) DEFAULT NULL,
  `userEmail` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Database Officer','Effort Kamnkhwani','Area 23','TRESD6','0884022265','ekankhwani@pedaids.org','123456'),('user','user','user','user','user','user@user.com','123456');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-24 15:36:36
