-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.47


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema infinityservices
--

CREATE DATABASE IF NOT EXISTS infinityservices;
USE infinityservices;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`,`email`,`password`) VALUES 
 (1,'admin@gmail.com','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Mail` varchar(45) NOT NULL,
  `Message` varchar(45) NOT NULL,
  `Date` varchar(45) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;


--
-- Definition of table `mainmenu`
--

DROP TABLE IF EXISTS `mainmenu`;
CREATE TABLE `mainmenu` (
  `m_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MenuName` varchar(100) NOT NULL,
  PRIMARY KEY (`m_id`),
  UNIQUE KEY `Index_2` (`MenuName`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainmenu`
--

/*!40000 ALTER TABLE `mainmenu` DISABLE KEYS */;
INSERT INTO `mainmenu` (`m_id`,`MenuName`) VALUES 
 (5,'Carpenter'),
 (4,'Digital Marketing'),
 (3,'Electricians'),
 (18,'Electronic Device Services'),
 (2,'Home Appliances'),
 (15,'Massage'),
 (17,'Refurbished Dealer');
/*!40000 ALTER TABLE `mainmenu` ENABLE KEYS */;


--
-- Definition of table `primary_syllabus`
--

DROP TABLE IF EXISTS `primary_syllabus`;
CREATE TABLE `primary_syllabus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pattern` varchar(20) DEFAULT NULL,
  `Standard` varchar(50) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `Syllabus` varchar(50000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `primary_syllabus`
--

/*!40000 ALTER TABLE `primary_syllabus` DISABLE KEYS */;
INSERT INTO `primary_syllabus` (`id`,`pattern`,`Standard`,`subject`,`Syllabus`) VALUES 
 (1,'CBSE','4th Standard','linux','Primary_Syllabus/OnlineShopingCocsit.docx'),
 (2,'CBSE','6th Standard','Math','Primary_Syllabus/field report.docx'),
 (3,'CBSE','1st Standard','linux','Primary_Syllabus/null');
/*!40000 ALTER TABLE `primary_syllabus` ENABLE KEYS */;


--
-- Definition of table `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE `request` (
  `R_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Mobile` varchar(45) DEFAULT NULL,
  `Service_Name` varchar(100) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `worker_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`R_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` (`R_id`,`Name`,`Email`,`Mobile`,`Service_Name`,`Description`,`date`,`user_id`,`status`,`worker_id`) VALUES 
 (1,'Ashihs','ashishgokhalem314@gmail.com','8087422232','Digital Marketing ','I want Advertising of my shop!',NULL,NULL,'complete','1'),
 (2,'Mahesh Sherekar','maheshsherekar20@gmail.com','7391919638','Electronic Device Services ','Reparing',NULL,NULL,'complete','3'),
 (3,'Mahesh Sherekar','maheshsherekar20@gmail.com','7391919638','Electronic Device Services ','Reparing',NULL,NULL,'complete','1'),
 (4,'Mahesh Sherekar','mahesh@gmail.com','7391919638','Electricians ','reparing',NULL,NULL,'complete','1'),
 (5,'Mahesh Sherekar','maheshsherekar20@gmail.com','7391919638','Electricians ','Repairing','Mar 14, 2020 4:25:51 PM','3','complete','1'),
 (6,'Mahesh Sherekar','maheshsherekar20@gmail.com','7391919638','Carpenter ','reparing','Mar 14, 2020 4:25:51 PM','3','pending','1'),
 (7,'Ashihs','ashishgokhalem314@gmail.com','8087422232','Digital Marketing ','I want Advertising of my shop!','Mar 14, 2020 4:25:51 PM','3','pending','1'),
 (8,'Mahesh Sherekar','maheshsherekar20@gmail.com','7391919638','Electricians ','Reparing','Mar 14, 2020 4:25:51 PM','3','pending','1'),
 (9,'Mahesh Sherekar','maheshsherekar20@gmail.com','7391919638','Electricians ','Reparing','Mar 14, 2020 4:25:51 PM','3','complete','3'),
 (10,'Mahesh Sherekar ','maheshsherekar20@gmail.com','7391919638','Electricians ','dsg','Mar 14, 2020 4:25:51 PM','3','complete','1'),
 (11,'Mahesh Sherekar ','maheshsherekar20@gmail.com','7391919638','Electronic Device Services ','dss','Mar 14, 2020 4:25:51 PM','3','pending','3'),
 (12,'Mahesh Sherekar ','maheshsherekar20@gmail.com','7391919638','Electronic Device Services ','df','Mar 15, 2020 1:29:14 PM','3','pending','3'),
 (13,'Mahesh Sherekar ','maheshsherekar20@gmail.com','7391919638','Digital Marketing ','fsdf','Mar 15, 2020 3:14:44 PM','3','pending','3'),
 (14,'Mahesh Sherekar ','maheshsherekar20@gmail.com','7391919638','Carpenter ','Hi','Jul 12, 2020 3:48:07 PM','3','pending','3'),
 (15,'Mahesh Sherekar ','maheshsherekar20@gmail.com','7391919638','Xerox Machine Repairing','dfdtt','Jul 13, 2020 4:00:14 PM','3','complete','3');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;


--
-- Definition of table `secondary_syllabus`
--

DROP TABLE IF EXISTS `secondary_syllabus`;
CREATE TABLE `secondary_syllabus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pattern` varchar(20) DEFAULT NULL,
  `Branch` varchar(50) DEFAULT NULL,
  `Course` varchar(500) DEFAULT NULL,
  `Standard` varchar(500) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `Syllabus` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `secondary_syllabus`
--

/*!40000 ALTER TABLE `secondary_syllabus` DISABLE KEYS */;
INSERT INTO `secondary_syllabus` (`id`,`pattern`,`Branch`,`Course`,`Standard`,`subject`,`Syllabus`) VALUES 
 (1,'CBSE','Science','Electronic Science','12th Standard','Math','Secondary_Syllabus/111.txt'),
 (2,'CBSE','Art','Computer Science','11th Standard','Math','Secondary_Syllabus/billing system.docx'),
 (3,'CBSE','Art','Computer Science','11th Standard','linux','Secondary_Syllabus/null'),
 (4,'CBSE','Art','Computer Science','11th Standard','Math','Secondary_Syllabus/null'),
 (5,'CBSE','Art',NULL,'11th Standard','','Secondary_Syllabus/null'),
 (6,'CBSE','Science','Computer Science','11th Standard','Math','Secondary_Syllabus/null');
/*!40000 ALTER TABLE `secondary_syllabus` ENABLE KEYS */;


--
-- Definition of table `serviceimages`
--

DROP TABLE IF EXISTS `serviceimages`;
CREATE TABLE `serviceimages` (
  `si_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sm_id` int(10) unsigned NOT NULL,
  `image_path` varchar(1000) NOT NULL,
  PRIMARY KEY (`si_id`),
  UNIQUE KEY `Index_3` (`sm_id`),
  CONSTRAINT `FK_serviceimages_1` FOREIGN KEY (`sm_id`) REFERENCES `submenu` (`sm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `serviceimages`
--

/*!40000 ALTER TABLE `serviceimages` DISABLE KEYS */;
INSERT INTO `serviceimages` (`si_id`,`sm_id`,`image_path`) VALUES 
 (2,8,'assets/img/serviceimages/tv.png'),
 (3,10,'assets/img/serviceimages/washing machine.jpg'),
 (5,18,'assets/img/serviceimages/ac-repair-service-coimbatore.jpg'),
 (6,19,'assets/img/serviceimages/unnamed (1).jpg'),
 (7,15,'assets/img/serviceimages/cctv-camera-installations.png'),
 (8,16,'assets/img/serviceimages/hard-drive-repair-thumbnail.jpg'),
 (9,13,'assets/img/serviceimages/product-500x500.jpeg'),
 (10,14,'assets/img/serviceimages/printer-repair.jpg'),
 (11,17,'assets/img/serviceimages/5252552-500x500.png'),
 (12,12,'assets/img/serviceimages/computer-repair-quik-fix.jpg'),
 (13,20,'assets/img/serviceimages/dell-3440.jpg');
/*!40000 ALTER TABLE `serviceimages` ENABLE KEYS */;


--
-- Definition of table `submenu`
--

DROP TABLE IF EXISTS `submenu`;
CREATE TABLE `submenu` (
  `sm_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m_id` int(10) unsigned NOT NULL,
  `subm_name` varchar(100) NOT NULL,
  PRIMARY KEY (`sm_id`),
  UNIQUE KEY `Index_3` (`m_id`,`subm_name`),
  CONSTRAINT `FK_submenu_1` FOREIGN KEY (`m_id`) REFERENCES `mainmenu` (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenu`
--

/*!40000 ALTER TABLE `submenu` DISABLE KEYS */;
INSERT INTO `submenu` (`sm_id`,`m_id`,`subm_name`) VALUES 
 (18,2,'A.C Repair'),
 (19,2,'Freeze Repairing'),
 (8,2,'T.V Repair'),
 (10,2,'Washing Machine Repair'),
 (3,15,'Men Massage'),
 (20,17,'Laptop Refurbished Dealer'),
 (15,18,'CCTV Installation and Repairing'),
 (16,18,'HDD Repairing '),
 (12,18,'Laptop Repairing '),
 (13,18,'Mobile Repairing '),
 (14,18,'Printer Repairing'),
 (17,18,'Xerox Machine Repairing');
/*!40000 ALTER TABLE `submenu` ENABLE KEYS */;


--
-- Definition of table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_photo` varchar(500) DEFAULT NULL,
  `teacher_name` varchar(100) DEFAULT NULL,
  `teacher_email` varchar(100) DEFAULT NULL,
  `teacher_mobile` varchar(20) DEFAULT NULL,
  `teacher_address` varchar(500) DEFAULT NULL,
  `teacher_qulification` varchar(100) DEFAULT NULL,
  `teacher_description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` (`id`,`teacher_photo`,`teacher_name`,`teacher_email`,`teacher_mobile`,`teacher_address`,`teacher_qulification`,`teacher_description`) VALUES 
 (1,'teacher_image/teacher1.jpg','Rohit Sharma','rohit415@gmail.com','7391919638','Latur','PHD. MCOM BCOM','I am a developer, Teachers, experiance are 5 yrs..'),
 (2,'teacher_image/teacher.jpg','Mahesh Sherekar','mahesh20@gmail.com','9834951863','Latur','MSC CS','I am a Web Developer'),
 (3,'teacher_image/teacher1.jpg','Mahesh Laur','maheshsherekar20@gmail.com','7391919638','Ausa Road Latur Maharashtra','MSC CS BCOM MCOM LLB','Hello  HTML');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;


--
-- Definition of table `ugpg_syllabus`
--

DROP TABLE IF EXISTS `ugpg_syllabus`;
CREATE TABLE `ugpg_syllabus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pattern` varchar(50) DEFAULT NULL,
  `Degree` varchar(500) DEFAULT NULL,
  `course` varchar(500) DEFAULT NULL,
  `Standard` varchar(500) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `Syllabus` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ugpg_syllabus`
--

/*!40000 ALTER TABLE `ugpg_syllabus` DISABLE KEYS */;
INSERT INTO `ugpg_syllabus` (`id`,`pattern`,`Degree`,`course`,`Standard`,`subject`,`Syllabus`) VALUES 
 (1,'CBCS','Medical','Medical Laboratory Technology','Second Year','linux','UgPg_Syllabus/debug.log'),
 (2,'CBCS','Engineering','BCA','Second Year','Math','UgPg_Syllabus/field report.docx'),
 (3,'CBCS','Engineering','BCA','Second Year','linux','UgPg_Syllabus/null'),
 (4,'CBCS','Engineering','BCA','First Year','linux','UgPg_Syllabus/null'),
 (5,'CBCS','Engineering','CIVIL ENGINEERING','First Year','Math','UgPg_Syllabus/null'),
 (6,'CBCS','Engineering','ELECTRICAL AND ELECTRONICS ENGINEERING','First Year','Math','UgPg_Syllabus/null'),
 (7,'CBCS','Medical','Bachelor of Medicine, Bachelor of Surgery (MBBS)','Second Year','','UgPg_Syllabus/null'),
 (8,'CBCS','Bachelor of Science (BSc)','CS','First Year','','UgPg_Syllabus/null'),
 (9,'CBCS','Bachelor of Computer Applications(BCA)','BCA','First Year','linux','UgPg_Syllabus/null');
/*!40000 ALTER TABLE `ugpg_syllabus` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `address` varchar(450) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`name`,`mobile`,`city`,`address`,`email`,`password`) VALUES 
 (3,'Mahesh Sherekar','7391919638','Latur','Ausa Road Latur','maheshsherekar20@gmail.com','739191');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


--
-- Definition of table `worker_user`
--

DROP TABLE IF EXISTS `worker_user`;
CREATE TABLE `worker_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(450) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `address` varchar(405) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `worker_user`
--

/*!40000 ALTER TABLE `worker_user` DISABLE KEYS */;
INSERT INTO `worker_user` (`id`,`photo`,`name`,`mobile`,`city`,`address`,`email`,`password`) VALUES 
 (1,'worker/33653466_445892909201980_6469409440104710144_n.jpg','Mahesh Sherekar','7391919638','Latur','Ausa Road, Latur','maheshsherekar@gmail.com','7391919638'),
 (3,'worker/20190828_112038.jpeg','Mahesh SHerekar','7391919638','Latur','Latur','m@gmail.com','123456');
/*!40000 ALTER TABLE `worker_user` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
