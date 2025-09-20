-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: dream
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `apply`
--

DROP TABLE IF EXISTS `apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apply` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `employer_id` bigint NOT NULL,
  `jobs_id` bigint NOT NULL,
  `job_seeker_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa2rf1446u1bnc49cgdpu04hhr` (`employer_id`),
  KEY `FK4ljl4pg97h3gb3v0298jnidp2` (`jobs_id`),
  KEY `FKif0068hysx98rqusxelrfs8g4` (`job_seeker_id`),
  CONSTRAINT `FK4ljl4pg97h3gb3v0298jnidp2` FOREIGN KEY (`jobs_id`) REFERENCES `jobs` (`id`),
  CONSTRAINT `FKa2rf1446u1bnc49cgdpu04hhr` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`id`),
  CONSTRAINT `FKif0068hysx98rqusxelrfs8g4` FOREIGN KEY (`job_seeker_id`) REFERENCES `job_seeker` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply`
--

LOCK TABLES `apply` WRITE;
/*!40000 ALTER TABLE `apply` DISABLE KEYS */;
INSERT INTO `apply` VALUES (1,2,1,1),(2,2,2,1),(3,2,2,1),(4,3,4,1),(5,2,1,1),(6,2,1,2),(7,2,3,2),(8,3,5,2),(9,4,6,3),(10,4,7,3),(11,3,5,3),(12,2,8,4),(13,2,8,6),(14,2,10,5),(15,8,12,4),(16,8,13,4),(17,3,4,4);
/*!40000 ALTER TABLE `apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Garments & Textile'),(2,'Information Technology (IT)'),(3,'Agriculture'),(4,'Manufacturing'),(5,'Health'),(6,'Business & Finance'),(7,'Retail & Wholesale'),(8,'Hospitality & Tourism'),(9,'Pharmaceuticals'),(10,'Administrative & Support'),(11,'Sales & Marketing'),(12,'Creative & Design'),(13,'Technical/Skilled');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_messages`
--

DROP TABLE IF EXISTS `contact_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_messages`
--

LOCK TABLES `contact_messages` WRITE;
/*!40000 ALTER TABLE `contact_messages` DISABLE KEYS */;
INSERT INTO `contact_messages` VALUES (1,'xyz@gmail.com','nice job..carry on..\nYour work is Exellent','Sathe'),(2,'jitusalman@gmail.com','\"May your journey ahead be as bright and beautiful as your smile. Best of luck!\"\n','Salman Ahasan Jitu'),(3,'sadiar@gmail.com','\"May every challenge you face bring you closer to achieving your dreams. Good luck!\"\n','Sadiar Rahman'),(4,'rahim@gmail.com','\"Sending you positive vibes and wishes\".\n','Abdur Rahim');
/*!40000 ALTER TABLE `contact_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `board` varchar(255) DEFAULT NULL,
  `institute` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `job_seeker_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc2b8xe5ab4pl7gf6ynf3y807f` (`job_seeker_id`),
  CONSTRAINT `FKc2b8xe5ab4pl7gf6ynf3y807f` FOREIGN KEY (`job_seeker_id`) REFERENCES `job_seeker` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (1,NULL,'Dhaka College','Masters','3.18','2024',1),(3,NULL,'Dhaka College','Honors','2.48','2021',1),(5,NULL,'Dhaka College','HSC','3.18','2020',1),(6,NULL,'Dhaka College','SSC','3.18','2018',1),(14,'Dhaka','Mirpur Bangla College','Masters','2.48','2024',4),(16,'Dhaka','Dhaka College','Honors','3.18','2023',4),(18,'Dhaka','Dhaka College','HSC','4.18','2019',4),(20,'Dhaka','Mohammadpur Govt. High School','SSC','4.88','2017',4),(22,'Dhaka','Bodrunnesa Mahila College','Masters','3.18','2022',5),(24,'Dhaka','Bodrunnesa Mahila College','Honors','3.10','2021',5),(26,'Dhaka','SBSFM Govt. College','HSC','4.39','2017',5),(28,'Barishal','Nilkantho High School','SSC','4.70','2016',5),(30,'Dhaka','Eden Mahila College','Masters','3.09','2022',6),(32,'Dhaka','Eden Mahila College','Honors','2.48','2021',6),(34,'Dhaka','SBSFM Govt. College','HSC','4.42','2017',6),(36,'Barishal','Purba Satla High School','SSC','4.88','2014',6);
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer`
--

DROP TABLE IF EXISTS `employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_address` varchar(200) DEFAULT NULL,
  `company_name` varchar(150) NOT NULL,
  `company_website` varchar(200) DEFAULT NULL,
  `contact_person` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `industry_type` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKk30e1f6l8hxi1t8aabflue0he` (`user_id`),
  CONSTRAINT `FK43iuo0lskcmiokbwvolc0lmj9` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer`
--

LOCK TABLES `employer` WRITE;
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
INSERT INTO `employer` VALUES (1,'Dhaka, Bangladesh.','Dream Job Portal','www.dreamjob@gmail.com','Humayra Akter','sathekhanom550@gmail.com','Job Portal','njghdxhfx_f813dd4d-20ca-435f-a74a-a67316c0b46a.png',NULL,'12343545',1),(2,NULL,'ABM Company','www.abm@gmail.com','Sathe Khanom','sathe@gmail.com','sdfdf','ABM_Company_f39e8b2f-5371-4140-8402-d91c6a819756.png',NULL,'12342455',5),(3,NULL,'Shikder Real State Limited','www.srsl@gmail.com','Eiasin Prodhan','eiasin@gmail.com','dfgfdh','Shikder_Real_State_Limited_0ab63c81-2da8-406c-99c1-4a89b131a11d.png',NULL,'2143546',14),(4,NULL,'BOM Company Limited','www.bom@gmail.com','Parvej Ahmed','parvej@gmail.com','cvgf','BOM_Company_Limited_d0ac6525-650c-44db-be76-d14595aa723c.png',NULL,'21434546',16),(5,NULL,'Currier Limited','www.currier@gmail.com','Rakib Hossain ','rakib@gmail.com','fghgfjh','Currier_Limited_4ea93da8-7fa8-487d-9d2a-a4b15e5ccb62.png',NULL,'243565676',18),(6,NULL,'CBS Textile','www.cbs@yahoo.com','Shamim Ahmed','samim@gmail.com','Textile','CBS_Textile_78badeb3-b953-4e9a-a6ca-1e8693761c79.png',NULL,'2143546',21),(8,NULL,'BRAC BANK LIMITED','www.bracbank@gmail.com','Abdus Salam','salam543@gmail.com','BANK','BRAC_BANK_LIMITED_da75f158-22bd-4324-b83c-83db2cc39b71.png',NULL,'548721235646',27);
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company` varchar(255) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `job_seeker_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe48fd26k40qxsg3exmkq6kxu6` (`job_seeker_id`),
  CONSTRAINT `FKe48fd26k40qxsg3exmkq6kxu6` FOREIGN KEY (`job_seeker_id`) REFERENCES `job_seeker` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience`
--

LOCK TABLES `experience` WRITE;
/*!40000 ALTER TABLE `experience` DISABLE KEYS */;
INSERT INTO `experience` VALUES (2,'Board Office',NULL,'2025-09-05','Computer Operator','2025-09-26',1),(5,'Shapla Academy',NULL,'2017-01-01','Computer Operator','2020-12-31',4),(6,'Board Office',NULL,'2021-01-01','Computer Operator','2024-12-31',4),(7,'MidLand Kinder Garten',NULL,'2019-01-01','Assistant Teacher','2022-12-31',5),(8,'Medi Care Diagonstic Center',NULL,'2023-01-01','Nurse','2025-07-30',5),(9,'Shapla Academy',NULL,'2017-01-01','Assistant Teacher','2018-12-31',6),(10,'World Vision Bangladesh',NULL,'2019-01-01','CESP Facilitator','2024-12-31',6),(11,'Shapla Academy','Analyze sales data, market trends, and consumer behavior to forecast demand and determine product needs. \\n\nManage inventory levels, stock shelves with the right products and quantities, and rotate stock to remove outdated or damaged items. \\n\nMonitor sales and identify best-selling and slow-selling items to maximize profitability. \\n','2025-09-10','Assistant Teacher','2025-09-20',1),(12,'','Analyze sales data, market trends, and consumer behavior to forecast demand and determine product needs. </br>\nManage inventory levels, stock shelves with the right products and quantities, and rotate stock to remove outdated or damaged items. </br>\nMonitor sales and identify best-selling and slow-selling items to maximize profitability. \n',NULL,'',NULL,1);
/*!40000 ALTER TABLE `experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extracurricular`
--

DROP TABLE IF EXISTS `extracurricular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extracurricular` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `job_seeker_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5wo1y3398r9jbj9e4k78wxihf` (`job_seeker_id`),
  CONSTRAINT `FK5wo1y3398r9jbj9e4k78wxihf` FOREIGN KEY (`job_seeker_id`) REFERENCES `job_seeker` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extracurricular`
--

LOCK TABLES `extracurricular` WRITE;
/*!40000 ALTER TABLE `extracurricular` DISABLE KEYS */;
INSERT INTO `extracurricular` VALUES (1,'','','Leadership ',1),(2,'','Participates in a weekly local litter clean-up initiative, contributing to environmental conservation efforts in the community.','',4),(3,'','Volunteer at local food shelters or community kitchens, helping those in need and giving back to the community.','',4),(4,'','Helps during charity fundraising events, including sponsored runs and bake sales, to support local causes and organisations.','',4),(5,'','Participates in a weekly local litter clean-up initiative, contributing to environmental conservation efforts in the community.','',5),(6,'','Volunteer at local food shelters or community kitchens, helping those in need and giving back to the community.','',5),(7,'','Helps during charity fundraising events, including sponsored runs and bake sales, to support local causes and organisations.','',5),(8,'','Participates in a weekly local litter clean-up initiative, contributing to environmental conservation efforts in the community.','',6),(9,'','Volunteer at local food shelters or community kitchens, helping those in need and giving back to the community.','',6),(10,'','Helps during charity fundraising events, including sponsored runs and bake sales, to support local causes and organisations.','',6);
/*!40000 ALTER TABLE `extracurricular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hobby`
--

DROP TABLE IF EXISTS `hobby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hobby` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `job_seeker_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1oudwxmtngj78tj5gt4mme4fu` (`job_seeker_id`),
  CONSTRAINT `FK1oudwxmtngj78tj5gt4mme4fu` FOREIGN KEY (`job_seeker_id`) REFERENCES `job_seeker` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hobby`
--

LOCK TABLES `hobby` WRITE;
/*!40000 ALTER TABLE `hobby` DISABLE KEYS */;
INSERT INTO `hobby` VALUES (1,'Travelling',1),(2,'Eating',1),(4,'Gardening',1),(5,'creative arts ',1),(6,'Baking and experimenting with new recipes.',4),(7,'Exploring different cuisines and techniques.',4),(8,'Outdoor activities such as hiking and nature trail exploration.',4),(9,'Chess, coding, or learning a new language show logical thinking and problem-solving. ',5),(10,' Painting, writing, graphic design, or blog writing highlight imagination and project management. ',5),(11,'Sports, running marathons, or learning a musical instrument can demonstrate focus and commitment. ',5),(12,'Baking and experimenting with new recipes.',6),(13,'Exploring different cuisines and techniques.',6),(14,'Outdoor activities such as hiking and nature trail exploration.',6);
/*!40000 ALTER TABLE `hobby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_seeker`
--

DROP TABLE IF EXISTS `job_seeker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_seeker` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKls9yllllsot92tgfvwdpqsclo` (`user_id`),
  CONSTRAINT `FKrdytjcpry10yjwmfcj3a7qvfg` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_seeker`
--

LOCK TABLES `job_seeker` WRITE;
/*!40000 ALTER TABLE `job_seeker` DISABLE KEYS */;
INSERT INTO `job_seeker` VALUES (1,'Dhaka','2025-08-23','rahim@gmail.com','MALE','Abdur Rahim','21432546','Abdur_Rahim_ce47d1ab-d492-401c-940b-b84cc2750c1f',11),(2,'Cumilla','2025-08-02','sadiar@gmail.com','MALE','Sadiar Rahman','124354657','Sadiar_Rahman_c2c8c631-ff67-4711-a541-93870ac6d322',12),(3,'Rangpur','2025-08-23','reja@gmail.com','MALE','Rejaul Karim','4546757868','Rejaul_Karim_b15c39de-8bea-446c-8298-dd8a9f0e35cd',13),(4,'284/4, Tali Office Road , Dhaka-1209','2008-02-05','jitusalman@gmail.com','MALE','Salman Ahasan Jitu','01777702541','Salman_Ahasan_Jitu_cb29b0d0-dac5-4ae5-9d1d-fd0f1a10b216',24),(5,'23/3, Jhawchar Bazar, Hazaribagh, Dhaka-1209','1998-12-16','salma534@gmail.com','FEMALE','Salma Akter','01454543697','Salma_Akter_a608b7bb-f173-436c-8c7f-5cb24c33b0aa',25),(6,'28/GA/2, Sonatongor, Hazaribagh , Dhaka-1209','1998-11-19','sathe234@gmail.com','FEMALE','Sathe Khanom','01788524563','Sathe_Khanom_93019d4c-a0d8-46cb-8eda-ef9d91c2cfa6',26);
/*!40000 ALTER TABLE `job_seeker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` text,
  `job_type` varchar(50) DEFAULT NULL,
  `posted_date` datetime(6) DEFAULT NULL,
  `salary` double NOT NULL,
  `title` varchar(150) NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `employer_id` bigint NOT NULL,
  `location_id` bigint DEFAULT NULL,
  `benefits` varchar(2000) DEFAULT NULL,
  `edurequirement` varchar(2000) DEFAULT NULL,
  `end_date` datetime(6) DEFAULT NULL,
  `exprequirement` varchar(2000) DEFAULT NULL,
  `keyresponsibility` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2e6sj6oyoskyjpetepiho9t6h` (`category_id`),
  KEY `FK1rx2n3e5npgq47kqy0dm4r8tr` (`employer_id`),
  KEY `FK15tvlycdtsdn4926t0e6ahfo6` (`location_id`),
  CONSTRAINT `FK15tvlycdtsdn4926t0e6ahfo6` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  CONSTRAINT `FK1rx2n3e5npgq47kqy0dm4r8tr` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`id`),
  CONSTRAINT `FK2e6sj6oyoskyjpetepiho9t6h` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'A job description is a written document that details a specific job\'s duties, responsibilities, and required qualifications, serving as a crucial tool for employers to attract suitable candidates and for applicants to assess their fit with the role and organization. Key components of a job description include the job title, a summary of the role\'s purpose, a list of tasks and responsibilities, necessary and preferred qualifications, and sometimes information about the working conditions and company culture.','Full-Time','2025-08-23 06:00:00.000000',325546,'Assistant Manager',4,2,3,NULL,NULL,NULL,NULL,NULL),(2,'A job description is a written document that details a specific job\'s duties, responsibilities, and required qualifications, serving as a crucial tool for employers to attract suitable candidates and for applicants to assess their fit with the role and organization. Key components of a job description include the job title, a summary of the role\'s purpose, a list of tasks and responsibilities, necessary and preferred qualifications, and sometimes information about the working conditions and company culture.','Full-Time','2025-08-30 06:00:00.000000',325546,'Computer Operator',6,2,4,NULL,NULL,NULL,NULL,NULL),(3,'A job description is a written document that details a specific job\'s duties, responsibilities, and required qualifications, serving as a crucial tool for employers to attract suitable candidates and for applicants to assess their fit with the role and organization. Key components of a job description include the job title, a summary of the role\'s purpose, a list of tasks and responsibilities, necessary and preferred qualifications, and sometimes information about the working conditions and company culture.','Full-Time','2025-08-28 06:00:00.000000',325546,'Manager',2,2,2,NULL,NULL,NULL,NULL,NULL),(4,'A job description is a written document that details a specific job\'s duties, responsibilities, and required qualifications, serving as a crucial tool for employers to attract suitable candidates and for applicants to assess their fit with the role and organization. Key components of a job description include the job title, a summary of the role\'s purpose, a list of tasks and responsibilities, necessary and preferred qualifications, and sometimes information about the working conditions and company culture.','Part-Time','2025-08-30 06:00:00.000000',325546,'Labour',3,3,9,NULL,NULL,NULL,NULL,NULL),(5,'A job description is a written document that details a specific job\'s duties, responsibilities, and required qualifications, serving as a crucial tool for employers to attract suitable candidates and for applicants to assess their fit with the role and organization. Key components of a job description include the job title, a summary of the role\'s purpose, a list of tasks and responsibilities, necessary and preferred qualifications, and sometimes information about the working conditions and company culture.','Full-Time','2025-08-16 06:00:00.000000',325546,'Electrician',8,3,6,NULL,NULL,NULL,NULL,NULL),(6,'A job description is a written document that details a specific job\'s duties, responsibilities, and required qualifications, serving as a crucial tool for employers to attract suitable candidates and for applicants to assess their fit with the role and organization. Key components of a job description include the job title, a summary of the role\'s purpose, a list of tasks and responsibilities, necessary and preferred qualifications, and sometimes information about the working conditions and company culture.','Full-Time','2025-08-29 06:00:00.000000',325546,'Assistant Officer',1,4,5,NULL,NULL,NULL,NULL,NULL),(7,'A job description is a written document that details a specific job\'s duties, responsibilities, and required qualifications, serving as a crucial tool for employers to attract suitable candidates and for applicants to assess their fit with the role and organization. Key components of a job description include the job title, a summary of the role\'s purpose, a list of tasks and responsibilities, necessary and preferred qualifications, and sometimes information about the working conditions and company culture.','Full-Time','2025-08-27 06:00:00.000000',325546,'Manager',7,4,10,NULL,NULL,NULL,NULL,NULL),(8,'Manager, Data Warehouse & Reporting is responsible for modernising data infrastructure to drive programme results. This role is a key player in designing and launching a new data warehouse and reporting platform. The manager will partner with stakeholders to turn data into actionable insights, directly impacting the success of 8.2 million clients in our Microfinance program.','Full-Time','2025-08-08 06:00:00.000000',500000,'Manager',1,2,5,'Festival Bonus, Contributory Provident Fund, Gratuity, Performance Bonus, Health and Life Insurance, Maternity/ Paternity Leave, Wellness Centre Facility, Day Care Facility, and others as per policy.\n\n','Bachelor\'s in CSE or any other relevant discipline from any recognised university/ Institution.','2025-11-30 06:00:00.000000','Minimum 3 years of working experience in data Warehouse & reporting technologies.','Design and develop a new data warehouse and reporting structure, overseeing its implementation, maintenance, and support to ensure data availability ensuring relevant compliance and guidelines.\nAssess existing systems, infrastructure, and data flows to develop a strategic framework for a complete system transformation.\nContinuously identify and implement internal process improvements like automating manual tasks and optimising data delivery for greater scalability.\nOrganise and analyse large, complex datasets to meet business needs.\nDesign, build, and optimise ETL (Extract, Transform, Load) pipelines for efficient and scalable data processing across various sources.\nBuild interactive dashboards and reports using BI tools (Power BI, Looker, etc.) that turn business requirements into actionable insights.\nActively participate in developing and delivering a new data platform by mapping data requirements from different stakeholders participating in relevant cross-functional projects and activities.\nRecommend and implement changes to boost team productivity and development.'),(9,'The Deputy Manager, Circular Economy will be responsible for designing, implementing and overseeing the business model of a plastic waste recycling factory. The role involves building sustainable revenue streams, building relationships with suppliers and buyers and ensuring efficient operations of the facility. The role requires both strategic thinking and technical know-how, with a strong focus on stakeholder engagement, private sector partnerships, data-driven monitoring, and scaling of circular economy pilots.','Full-Time','2025-09-04 06:00:00.000000',400000,'Deputy Manager',4,2,24,'Festival Bonus, Health and Life Insurance, and others as per policy.','Master’s degree in Business Development/Industrial Engineering/Environmental Science, or a related discipline from a reputed institutions.','2025-11-20 06:00:00.000000','Minimum 4 years demonstrated working experience in relevant field in value chain development/market linkage, or SME incubation or any related field. Field experience in working with municipalities, private sector actors, and the informal waste sector  Strong knowledge of plastic types (PET, HDPE, LDPE, PP, etc.) and recycling processes','Lead the design and execution of circular economy aspects of the plastic recycled products from the recycling facility, including waste segregation, recycling innovation, composting, and upcycling.'),(10,'The Senior Specialist, Knowledge Management will lead the design and implementation of systems for documentation, learning, and knowledge sharing within the BRAC Health Programme. The role focuses on producing high-quality knowledge products (reports, newsletters, case studies, briefs) to strengthen programme performance, donor engagement, and organizational visibility. The incumbent will also promote a culture of continuous learning by collaborating with cross-functional teams and ensuring evidence and lessons learned are effectively disseminated and applied.','Full-Time','2025-09-04 06:00:00.000000',20000000,'Senior Specialist, Knowledge Management, BRAC Health programme (BHP); (Contractual)',10,2,1,'Festival Bonus, Health and Life Insurance, Maternity/ Paternity Leave, Wellness Centre Facility, Day Care Facility, and others as per policy.','Bachelor’s degree in Public Health, Social Sciences, Development Studies, Business Administration, Journalism, or Information Management or any relevant discipline from a recognised university. Training in Knowledge Management, Communications, data analysis, research will add advantage.','2025-12-28 06:00:00.000000','Minimum of 5 years of experience in knowledge management and communications or any relevant area.','Identify, capture, and organize critical knowledge assets, including documents, best practices, lessons learned, and intellectual capital of BRAC Health Programme and undertake regular field visits for this purpose\nEstablish and maintain a knowledge management system for easy retrieval, ensuring information is organized, accessible, and up to date.\nEnsure systematic documentation and dissemination of evidence, lessons learned, and innovations across projects.\nProduce high-quality knowledge products such as annual reports, newsletters, change management documents, case studies, learning briefs, and donor communication materials.\nMaintain and regularly update the BHP website with written, audio-visual content, and an organised repository of technical resources.\nLiaise with BRAC MEAL department as well as central communications department to ensure compliance with BRAC learning documentation and communications guidelines.\nContribute to proposal development and donor reporting by ensuring effective documentation and knowledge management.\nCollaborate with the communications team to highlight BHP’s achievements and strengthen its visibility as a thought leader in health.'),(11,'To lead and oversee the full architectural design process—from concept to completion—delivering innovative, functional, sustainable, and regulation-compliant solutions that align with client goals and organizational values. The role ensures design excellence, safety, inclusivity, and climate resilience while integrating multidisciplinary inputs, optimizing resources, and enabling seamless execution. It also cultivates team development and collaboration, upholding strong documentation practices, effective stakeholder engagement, and timely project delivery.','Full-Time','2025-08-08 06:00:00.000000',5463213562453,'Deputy Chief Architect, Construction Department',12,2,3,'Festival Bonus, Contributory Provident Fund, Gratuity, Health and Life Insurance, Maternity/ Paternity Leave, Wellness Centre Facility, Day Care Facility and others as per policy.','Bachelor of Architecture from any recognized university/ institution. Masters will be preferred.','2025-11-20 06:00:00.000000','Minimum 15 years of work experience in architectural design and construction documentation. Registered member of IAB, with enlistment at RAJUK and other relevant regulatory authorities authorized to sign architectural drawings.','Liaise with client programmes and stakeholders to thoroughly understand project objectives, functional requirements, and design aspirations.\nCoordinate and manage design presentations and approvals, ensuring clear communication and continuous client satisfaction throughout the design cycle.\nLead the full design process from concept to construction, delivering innovative, functional, and contextually responsive design solutions.\nEnsure compliance with BNBC, PWD specifications, sustainability, and organizational standards.\nOversee the preparation of detailed, accurate construction drawings and documentation.'),(12,'Implement field operations strictly according to established guidelines; ensure timely and accurate data collection; and provide support to guarantee the production of high-quality seed.','Full-Time','2025-09-20 06:00:00.000000',500000,'Technical Assistant, Rice Research (BRAC Seed and Agro Enterprise)',3,8,3,'Health and Life Insurance, Festival Bonuses, Contributory Provident Fund, Gratuity and others','The candidate must hold a Diploma in Agriculture with a minimum CGPA of 2.50 or the equivalent of a second class /division, or comparable academic standing in all examinations from a recognized university.','2025-12-30 06:00:00.000000','N/A','Collect samples and prepare pollen slides for microscopic observation\nCarry out yield evaluation trials (e.g. OYT, AYT, and MLT) and conduct variety screening.\nSet up experimental hybrids, providing full support according to guidelines\nProduce all seed classes, including crossing seed (after emasculation & clipping), according to targets\nAssist in establishing Grow-Out Tests (GOT) and GDDM\nHelp in maintaining all germplasm\nRecruit, coordinate, and manage labor\nPrepare action plans; collect and update data; maintain field register including weather records\nPerform any other jobs as assigned by the management'),(13,'To lead and oversee the full architectural design process—from concept to completion—delivering innovative, functional, sustainable, and regulation-compliant solutions that align with client goals and organizational values. The role ensures design excellence, safety, inclusivity, and climate resilience while integrating multidisciplinary inputs, optimizing resources, and enabling seamless execution. It also cultivates team development and collaboration, upholding strong documentation practices, effective stakeholder engagement, and timely project delivery.','Full-Time','2025-09-26 06:00:00.000000',54356876354,'Deputy Chief Architect, Construction Department',10,8,19,'Festival Bonus, Contributory Provident Fund, Gratuity, Health and Life Insurance, Maternity/ Paternity Leave, Wellness Centre Facility, Day Care Facility and others as per policy.','Bachelor of Architecture from any recognized university/ institution. Masters will be preferred.','2026-01-10 06:00:00.000000','Minimum 15 years of work experience in architectural design and construction documentation. Registered member of IAB, with enlistment at RAJUK and other relevant regulatory authorities authorized to sign architectural drawings.','Liaise with client programmes and stakeholders to thoroughly understand project objectives, functional requirements, and design aspirations.\nCoordinate and manage design presentations and approvals, ensuring clear communication and continuous client satisfaction throughout the design cycle.\nLead the full design process from concept to construction, delivering innovative, functional, and contextually responsive design solutions.\nEnsure compliance with BNBC, PWD specifications, sustainability, and organizational standards.\nOversee the preparation of detailed, accurate construction drawings and documentation.\nMaintain comprehensive and organized records of all design-related materials, including drawings, specifications, reports, and project data, for reference and regulatory compliance.\nConduct site visits and surveys to assess context and constraints.\nProvide design support during construction, including site visits, inspections, and collaboration with the execution team to ensure adherence to design intent.\nIntegrate architectural and structural designs with MEP services.\nEnsure coordinated, buildable drawings for seamless execution.\nCollaborate with the project execution team to ensure designs are implemented correctly on-site.\nConduct site visits during construction to guide and ensure compliance with design intent.\nMonitor design-related costs, proactively incorporating value engineering without compromising quality.'),(14,'This position is responsible for developing high-quality proposals and concept notes, engaging donors and partners, ensuring grant compliance, and integrating lessons from ongoing projects to strengthen future designs. The role also supports programme improvements, financial and narrative reporting, MoUs, procurement, and compliance processes.','Full-Time','2025-07-08 06:00:00.000000',40000,'Senior Specialist, Fundraising and Partnership, BRAC Health Programme (BHP); (Contractual)',9,8,2,'Festival Bonus, Health and Life Insurance, Maternity/ Paternity Leave, Wellness Centre Facility, Day Care Facility, and others as per policy.','Master\'s degree in Public Health/ International Development/ Economics/ Development Studies or any relevant discipline from any recognised university/ institution.','2025-10-30 06:00:00.000000','Minimum of 5 years of experience in any relevant field. Work experience in Development sector will get preference.','Explore fundraising opportunities, regularly monitor donor websites and identify and inform donor opportunities matching relevant with BRAC Health Programme (BHP)\nSupport the end-to-end proposal development process: concept notes, technical and financial proposals, theories of change, frameworks, workplans, and budgets. Additionally, create and manage a database for BHP donors and projects.\nCoordinate with other relevant departments of BRAC such as finance, GRP, HRD, procurement and others during proposal writing and budget preparation to ensure timely submission and strategic positioning of proposals.\nDevelop and maintain database for programmatic knowledge pieces, one pagers and reports\nAssist in developing and negotiating contract/ MoU terms with donors on behalf of the programne');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `proficiency` varchar(255) DEFAULT NULL,
  `job_seeker_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgycdppk5xaeje70pbij0u3gqo` (`job_seeker_id`),
  CONSTRAINT `FKgycdppk5xaeje70pbij0u3gqo` FOREIGN KEY (`job_seeker_id`) REFERENCES `job_seeker` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'Bangla','Native',1),(2,'English','Basic',1),(3,'Bangla','',4),(4,'English','',4),(5,'Arabic','',4),(6,'Bangla','Fluent',5),(7,'English','Fluent',5),(8,'Arabic','Basic',5),(9,'Bangla','Fluent',6),(10,'English','Fluent',6),(11,'Arabic','Basic',6);
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Dhaka'),(2,'Faridpur'),(3,'Gazipur'),(4,'Gopalganj'),(5,'Jamalpur'),(6,'Kishoreganj'),(7,'Madaripur'),(8,'Manikganj'),(9,'Munshiganj'),(10,'Mymensingh'),(11,'Narayanganj'),(12,'Narsingdi'),(13,'Netrokona'),(14,'Rajbari'),(16,'Barishal'),(17,'Barguna'),(18,'Bhola'),(19,'Jhalokati'),(20,'Patuakhali'),(21,'Pirojpur'),(22,'Brahmanbaria'),(23,'Chandpur'),(24,'Chittagong'),(25,'Comilla'),(26,'Cox\'s Bazar');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refference`
--

DROP TABLE IF EXISTS `refference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refference` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contact` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `relation` varchar(255) DEFAULT NULL,
  `job_seeker_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcal5b3qm8xv3ktm0s25vv9f3g` (`job_seeker_id`),
  CONSTRAINT `FKcal5b3qm8xv3ktm0s25vv9f3g` FOREIGN KEY (`job_seeker_id`) REFERENCES `job_seeker` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refference`
--

LOCK TABLES `refference` WRITE;
/*!40000 ALTER TABLE `refference` DISABLE KEYS */;
INSERT INTO `refference` VALUES (1,'3254657','Muhammad Emran Hossain','Teacher',1),(2,'3254657','Mosaidul Islam','Consultant',1),(3,'3254657','Md. Emran Hossain','Teacher',4),(4,'3254657','Mosaidul Islam','Teacher',4),(5,'3254657','Tania Tusti','Supervisor',5),(6,'3254657','Sultana Parvin','Teacher',5),(7,'3254657','Md. Emran Hossain','Teacher',6),(8,'3254657','Md. Mosaidul Islam','Consultant',6);
/*!40000 ALTER TABLE `refference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `level` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job_seeker_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKihb0vpmr8t36tqu5rickv6f8r` (`job_seeker_id`),
  CONSTRAINT `FKihb0vpmr8t36tqu5rickv6f8r` FOREIGN KEY (`job_seeker_id`) REFERENCES `job_seeker` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'Expert','Communication',1),(2,'Intermediate','Teamwork',1),(3,'Expert','Time Management',1),(4,'Intermediate','Adaptability',1),(12,'','Customer service',4),(13,'','Teamwork',4),(14,'','Attention to detail',4),(15,'','Adaptability',4),(16,'','Communication',4),(17,'Expert','Customer service',5),(18,'Intermediate','Teamwork',5),(19,'Expert','Attention to detail',5),(20,'Expert','Adaptability',5),(21,'Expert','Communication',5),(22,'Intermediate','Teamwork and collaboration',6),(23,'Expert','Leadership and discipline',6),(24,'Intermediate','Problem-solving and strategy',6);
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summery`
--

DROP TABLE IF EXISTS `summery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blood_group` varchar(255) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `job_seeker_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe4xwxgt9h3i9fgybahdeju3gf` (`job_seeker_id`),
  CONSTRAINT `FKe4xwxgt9h3i9fgybahdeju3gf` FOREIGN KEY (`job_seeker_id`) REFERENCES `job_seeker` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summery`
--

LOCK TABLES `summery` WRITE;
/*!40000 ALTER TABLE `summery` DISABLE KEYS */;
INSERT INTO `summery` VALUES (2,'O+','Motivated and detail-oriented Java Developer fresher with a strong understanding of Java SE and Java EE.  I am seeking for an entry-level position where I can apply my programming skills and enthusiasm for technology to contribute to impact projects and enhance my development expertise.','Jamsed Ali Khan','75 kg','Lovely Begum','Bangladeshi','1232435676878','Islam','',1),(4,'O+',' Seeking an entry-level Java Developer position to apply my strong foundation in core Java principles and object-oriented programming to real-world applications. Eager to contribute my skills to a dynamic software development team while continuously enhancing my expertise and growing within a forward-thinking organization','Md. Abdul Jalil','6 feet','Salma Akter','Bangladeshi','1232435676878','Islam','75 kg',4),(5,'AB+','Seeking an entry-level Java Developer position to apply my strong foundation in core\nJava principles and object-oriented programming to real-world applications. Eager to\ncontribute my skills to a dynamic software development team while continuously\nenhancing my expertise and growing within a forward-thinking organization\n','Abdus Satter','5 feet','Komola Begum','Bangladeshi','1232435676878','Islam','60 kg',5),(8,'O+','An objective could highlight strong programming skills and a desire to contribute to innovative tech solutions in a software developer role.','Md. Lalmiya Khandoker','5 feet','Khadija Begum','Bangladeshi','1232435676878','Islam','60kg',6);
/*!40000 ALTER TABLE `summery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `is_log_out` bit(1) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj8rfw4x0wjjyibfqq566j4qng` (`user_id`),
  CONSTRAINT `FKj8rfw4x0wjjyibfqq566j4qng` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTY2MzA1NjYsImV4cCI6MTc1NjcxNjk2Nn0.i_eIFOP07Dp1XpRJHS4Z_OQnbhfcsD3EGmKHUrSMenU',1),(2,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTY2MzA2MDMsImV4cCI6MTc1NjcxNzAwM30._LWfGUY8wztAiTIGhv9Cl-N9_cOypKHbYGyLeeFROag',1),(3,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTY2MzA3MjksImV4cCI6MTc1NjcxNzEyOX0.jD_49QPy4wDCj84ryVVIxZM-d2d0XLyQ-nwAOsLXRo0',5),(4,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyZWphQGdtYWlsLmNvbSIsInJvbGUiOiJKT0JTRUVLRVIiLCJpYXQiOjE3NTY2MzA5NjgsImV4cCI6MTc1NjcxNzM2OH0.0fYcMX18pJJG3LBJ32zvdvw0YFURwmoNAXIABTtemrI',13),(5,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTY2MzEwMDcsImV4cCI6MTc1NjcxNzQwN30.-su_fCG5W0Y-7FqWhw5fFT7F0WEoiSv3g7G_CSfOKL8',5),(6,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlaWFzaW5AZ21haWwuY29tIiwicm9sZSI6IkVNUExPWUVSIiwiaWF0IjoxNzU2NjMxODAxLCJleHAiOjE3NTY3MTgyMDF9.FcxgGUEmKqBOP2SUe9GHlR7kSZmWEvoKWLj8rcE8D3s',14),(7,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJwYXJ2ZWpAZ21haWwuY29tIiwicm9sZSI6IkVNUExPWUVSIiwiaWF0IjoxNzU2NjMxOTI2LCJleHAiOjE3NTY3MTgzMjZ9.vxfVYWJPrzw_r9tDdmzbs3FkaHIhayFxggTU3_gjntE',16),(8,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWtpYkBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTY2MzIwNDAsImV4cCI6MTc1NjcxODQ0MH0.dEoAgET5lZlPSF1lHij4mOw1y1QbOhaLJDQ-gIST4kk',18),(9,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlaWFzaW5AZ21haWwuY29tIiwicm9sZSI6IkVNUExPWUVSIiwiaWF0IjoxNzU2NjMyMTIzLCJleHAiOjE3NTY3MTg1MjN9.i8fqWPsYlGj70MUUoXes2fDDds_YccE7TcgnYhlp7EM',14),(10,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJwYXJ2ZWpAZ21haWwuY29tIiwicm9sZSI6IkVNUExPWUVSIiwiaWF0IjoxNzU2NjMyMjcwLCJleHAiOjE3NTY3MTg2NzB9.PQenbIi_Fo10rsJXH9b-OKDzBlW6cGLimQjuHE8semA',16),(11,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlaWFzaW5AZ21haWwuY29tIiwicm9sZSI6IkVNUExPWUVSIiwiaWF0IjoxNzU2NjMyMzkxLCJleHAiOjE3NTY3MTg3OTF9.l1pEG2PNQF0KN8n75ep-p9GS-GidWX2ughOWWiKYmGA',14),(12,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTY2MzI0MTEsImV4cCI6MTc1NjcxODgxMX0.9ytCKfBtbYyseCbzDwomu0GWbneXkyI9qHSMjyHJv0Y',5),(13,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTY2MzcxODUsImV4cCI6MTc1NjcyMzU4NX0.zYUhecJgc18TIpMaxNTEIFeJNkxnA4IC7xLOTTL4404',5),(14,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU2NjQyMzUzLCJleHAiOjE3NTY3Mjg3NTN9.MrHMMIzGkvnlKBa9jPmgDXMEzCESp0eMxWIOikM3fJQ',11),(15,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYW1pbUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTY3MTM2OTEsImV4cCI6MTc1NjgwMDA5MX0.FvSV9J34y2fmjsTQGDZq4bAweQRT_L6NvGqWyV3hNx4',21),(16,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYW1pbUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTY3MTM3MjUsImV4cCI6MTc1NjgwMDEyNX0.z0B39DMABGdeL5nKhg6nVvlrAercdTUo6MJ3xfF9Z-k',21),(17,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTY3MTUzNjAsImV4cCI6MTc1NjgwMTc2MH0.hV_XX7htqqZv8t9FWlQaK2ipOhVZ4Q4rrCC091g_POo',5),(18,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU2NzE1NDQ5LCJleHAiOjE3NTY4MDE4NDl9.muT6ve9pISzPfNx8Qr0_clmut0zGt6nzvaOpRbwCpio',11),(19,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU2NzE2MDcyLCJleHAiOjE3NTY4MDI0NzJ9.zVazFlBYCJndOBAzryGwcsWEsLnQogg2leaSksnR6n4',11),(20,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU2NzE3MTk5LCJleHAiOjE3NTY4MDM1OTl9.2K8VXVTU0KwRkAzTlEic0TSN7lVl_Kz89Iwx-psK-8E',11),(21,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTY3MTcyNDcsImV4cCI6MTc1NjgwMzY0N30.1jUjZCkKkeRJV279g4N9XaNXulkgluqYGcJyJV5hfwU',5),(22,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU2NzE3Mjc5LCJleHAiOjE3NTY4MDM2Nzl9.MVoOmnYXHFy8BHac5dnAT_OjS1sNduoOt0kRo7zJ0wo',11),(23,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU2NzIwNTM2LCJleHAiOjE3NTY4MDY5MzZ9.cZen4siORv4g1agYzkiAQmKqg9FlSohi6yIux19LlaI',11),(24,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTY3MjA2NzQsImV4cCI6MTc1NjgwNzA3NH0.NHzw0UXUGEiDscKqf0eehcFlgUwmCE3b99BeK-KxBOY',5),(25,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU2NzIxMjMxLCJleHAiOjE3NTY4MDc2MzF9.-BkKXYE21iSV3212GDAxUwIAIZlTs5p6IweO_3uEaL0',11),(26,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTY3MjEyOTIsImV4cCI6MTc1NjgwNzY5Mn0.YdYSE-q1_Pl8XB0dzWz3jbdLq00a9LckQEbM5lCrEGg',5),(27,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU2ODA0MTA1LCJleHAiOjE3NTY4OTA1MDV9.Ns0FvErDsIuhURhrRCVKeqvkdOfoeDcSlqdPpwMyqXM',11),(28,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTY4MDY5OTQsImV4cCI6MTc1Njg5MzM5NH0.RmnbUOct8ySMfbpnqyB93yv1vZGwrOGbkTtdB3NSjwc',5),(29,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ4eXpAZ21haWwuY29tIiwicm9sZSI6IkVNUExPWUVSIiwiaWF0IjoxNzU2ODkwNzg1LCJleHAiOjE3NTY5NzcxODV9.itsj4aooKh_62Q0thenc38M6ZSoct2ktTVyvdFH8jQQ',23),(30,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYW1pbUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTY4OTA4MzAsImV4cCI6MTc1Njk3NzIzMH0.Ou72KLZl-kn0IJJzZwUVO17ea8LL6GFUSCmt92P8CiY',21),(31,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU2ODk0NjM4LCJleHAiOjE3NTY5ODEwMzh9.vO5C7cghR0jKZ1D_ttnqlbLelVQtDIvCqCNUkDUYPgc',11),(32,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU2ODk5NjQ1LCJleHAiOjE3NTY5ODYwNDV9.yIV1kjGClADKl7QCuxVPF6YZGyqYMHJj97WcDzSKIVw',11),(33,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU2ODk5ODkyLCJleHAiOjE3NTY5ODYyOTJ9.G6nbrzIYgsBwKtJuK4ZX-Fihc95388coidNtQVZ152Q',11),(34,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU2OTc1NjIyLCJleHAiOjE3NTcwNjIwMjJ9.0q78mFcnejcCoJeDtKSlPDvnIkaMoJhLGRds_NbJUwk',11),(35,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTY5NzU2NjksImV4cCI6MTc1NzA2MjA2OX0.yv4CjRNMEVuFBZw3cQZ1pXx-42A0t87HpUwXPeF4c3w',5),(36,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU2OTc3ODUyLCJleHAiOjE3NTcwNjQyNTJ9.RLYrN4W3kPu3vpfS0H_mfYZ7r3NGYgTyrrgv7IqjsdM',11),(37,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU2OTc4NzU1LCJleHAiOjE3NTcwNjUxNTV9.spa8kV7RjbqCOFEQftHS9pgGdQfV-kvSPXsSXGL7R_g',11),(38,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU3MzIzODcxLCJleHAiOjE3NTc0MTAyNzF9.dBgLcrwq1cIkr7AOTG-RHWjxC1WiHc_NXmoXaZPkhtw',11),(39,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTczMzI5NzcsImV4cCI6MTc1NzQxOTM3N30.SahiDb6xhn0FtVuiAttbbgcCgVwY-bLuB1jRkFQBh9w',1),(40,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTczMzI5NzcsImV4cCI6MTc1NzQxOTM3N30.SahiDb6xhn0FtVuiAttbbgcCgVwY-bLuB1jRkFQBh9w',1),(41,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTczMzI5NzcsImV4cCI6MTc1NzQxOTM3N30.SahiDb6xhn0FtVuiAttbbgcCgVwY-bLuB1jRkFQBh9w',1),(42,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTczMzMwOTUsImV4cCI6MTc1NzQxOTQ5NX0.PVmRKB7J64s79plhoJQDObF1P6wPDjTRBFsnwXS5Uaw',1),(43,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU3MzMzMTA4LCJleHAiOjE3NTc0MTk1MDh9.dHUW0wFWEakYDaNw9iSC36pfi39n_XWnljI4aKNNCdo',11),(44,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTczMzQ4MDIsImV4cCI6MTc1NzQyMTIwMn0._OJ8q309pM8aEWf2UjPoOSPcw1gZYUBhkpJpHBkA6Tg',5),(45,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU3MzM0OTMzLCJleHAiOjE3NTc0MjEzMzN9.oB9Vb5P3eXMYAYiHjusLZK6m1RYjDaUHQqqpvVxpZaY',11),(46,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTczMzUwMTUsImV4cCI6MTc1NzQyMTQxNX0.jX_2mkZp2me6X904ytwFjXVokYKA6zKZrQMzQwxnhrA',5),(47,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTczMzUxNTIsImV4cCI6MTc1NzQyMTU1Mn0.w-YSEdi70tEahM8bp0byV3SnHSOzUeE1m5pnIQpObYE',5),(48,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTczMzYzOTUsImV4cCI6MTc1NzQyMjc5NX0.9N3NMuqKMDgRkcvz74BvWpP96RWfRAK10QSdEbKSQNk',5),(49,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTczMzY3NjQsImV4cCI6MTc1NzQyMzE2NH0.HC2t85WG7rnyKnQwNUJdNe4-Hop8nTf1T9zQ6CUyJbI',1),(50,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTczMzY3ODgsImV4cCI6MTc1NzQyMzE4OH0.lAGfxNit3JFWDbSgG7IznJ_6FZIWJ4nT_3H94-p_1Q4',1),(51,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTczMzY5MDgsImV4cCI6MTc1NzQyMzMwOH0.GYpV8oUeF-7KuLFBtP05F57fO7I0_YcD_fWOnQescLQ',1),(52,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTc0MDg3MjYsImV4cCI6MTc1NzQ5NTEyNn0.TDe8y9szOw6lgo9xdsaFMVSdIKKcbWZSf35OX-AsVfs',1),(53,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTc0MDk2NjgsImV4cCI6MTc1NzQ5NjA2OH0.GXv5WRFK2baMmAE201nkwGbKkwgaRyeAuymZFfcp3L4',5),(54,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJlaWFzaW5AZ21haWwuY29tIiwicm9sZSI6IkVNUExPWUVSIiwiaWF0IjoxNzU3NDA5NzYzLCJleHAiOjE3NTc0OTYxNjN9.6uaWtDeTluVXYXM2sopolM921o00YomqGYT9Psv-MEk',14),(55,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTc0MTA0NjQsImV4cCI6MTc1NzQ5Njg2NH0.plzyjt2OVOZev6nfGUWzmwJT27PAghtyl8QCmMyp2n8',5),(56,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU3NDEwNzk0LCJleHAiOjE3NTc0OTcxOTR9.5GPfL4OEMsoNHEIc2d2wCooKCf66Lq_Z05dd4SRsZwQ',11),(57,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU3NDEzMjI5LCJleHAiOjE3NTc0OTk2Mjl9.uEDTJ2RIvXTRMbhCBM6ynRw0UGuqLq7ie7tJiPCN200',11),(58,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTc0MTM1NjMsImV4cCI6MTc1NzQ5OTk2M30.Z211LMSYJkQgo4SvEH0wAkv92xpaMdCbcS850Y5PY9k',5),(59,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYWRpYXJAZ21haWwuY29tIiwicm9sZSI6IkpPQlNFRUtFUiIsImlhdCI6MTc1NzQyMDc2MywiZXhwIjoxNzU3NTA3MTYzfQ.98Fs5YqjUv6HlzARgJLVSqjfQFkcZ0UWdCgTjnZ_x_E',12),(60,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYWRpYXJAZ21haWwuY29tIiwicm9sZSI6IkpPQlNFRUtFUiIsImlhdCI6MTc1NzQyMDgyNCwiZXhwIjoxNzU3NTA3MjI0fQ.c8VstsI5-3KQJw2Qfmt6uIso9Q-pQTp09DxC6hPe41Q',12),(61,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTc0MjA4NDYsImV4cCI6MTc1NzUwNzI0Nn0.5jzjftZZDbaFAUo7BRfNg9zU2Fqv0R2YOollWJcbhZU',5),(62,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYWRpYXJAZ21haWwuY29tIiwicm9sZSI6IkpPQlNFRUtFUiIsImlhdCI6MTc1NzQ5NjQ1NCwiZXhwIjoxNzU3NTgyODU0fQ.rzkY9L-qUMy5M_E7TCYAd9-ddXSyWFruUvQPWFcztYM',12),(63,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTc0OTY0OTcsImV4cCI6MTc1NzU4Mjg5N30.8FXKhcQaQdO3J-BgvVSIL5r-cNrM8aSJiTgFLkecsw4',5),(64,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTc0OTc0ODIsImV4cCI6MTc1NzU4Mzg4Mn0.hfCT7Y-kpQDkQYhNeWNQ7YTRA1Wzo4iV3ZAGu8ZEKDI',5),(65,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYWRpYXJAZ21haWwuY29tIiwicm9sZSI6IkpPQlNFRUtFUiIsImlhdCI6MTc1NzQ5NzU0MiwiZXhwIjoxNzU3NTgzOTQyfQ.4bWLAjKqwgFxExLASzHQAF82VJAOznhrwxjbybNIE7A',12),(66,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyZWphQGdtYWlsLmNvbSIsInJvbGUiOiJKT0JTRUVLRVIiLCJpYXQiOjE3NTc0OTgyNjIsImV4cCI6MTc1NzU4NDY2Mn0.RSmSe7Xv0gaFTOnSBbx02X_dfwgb_n6RrH2C8vsAqGE',13),(67,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTc0OTg4NjksImV4cCI6MTc1NzU4NTI2OX0.dij-j1ZcM_n2CL2hda2RUhLHo5e4LWXqlQVBiDst9_w',5),(68,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTc0OTkzOTcsImV4cCI6MTc1NzU4NTc5N30.xahOZqAdmcSiFemOYkJqqbHR38XqsM1uaPxyWbDJZD8',5),(69,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU3NDk5NDM3LCJleHAiOjE3NTc1ODU4Mzd9.V4xeTszdq77mlNKVGpHxe7WPe3keFC4FZcT95ok54_A',11),(70,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTc1MDA5MTQsImV4cCI6MTc1NzU4NzMxNH0.42PfEXpLRKfN2nbtdP-27qkUzNM-jZI20SSfwQHVqno',5),(71,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTc1MDExOTEsImV4cCI6MTc1NzU4NzU5MX0.KPQnWGgE3N2u79vWpMhjah8v3tOHt5zhFv7FpF8kifM',5),(72,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTc1OTQyMDgsImV4cCI6MTc1NzY4MDYwOH0.U1ANbKJZ6-4eomxWWcFA9dpHwXY7sIKQyi4f0PERdbw',5),(73,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTc5MzA4NTMsImV4cCI6MTc1ODAxNzI1M30.gSo7PXZavziHbG_eI6SWVCM4U2QpLnzRqEjwL4dsQfc',1),(74,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTc5MzExMzUsImV4cCI6MTc1ODAxNzUzNX0.Tj7wLX_C8I5k5KM2Xay8FbEFVs0MPhCd59o6LXrjaEo',5),(75,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU3OTMxMTgwLCJleHAiOjE3NTgwMTc1ODB9.AXiaTFnS5mR_VhCT_8LJCEyNbhN9ggK0Et77WP28-so',11),(76,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTc5MzEyMTYsImV4cCI6MTc1ODAxNzYxNn0.7e1IlZobJAiDaE0jrqXv-zLJRHbzhss5t6bcC-MyAPo',1),(77,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTc5MzEzMTUsImV4cCI6MTc1ODAxNzcxNX0.4SR254codf_nP_-4q3TKYFdrOTJfSv-B8xfQmv3iV84',5),(78,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTc5MzEzNjgsImV4cCI6MTc1ODAxNzc2OH0.k3tDqP1IBx56-j6WsFQ0X90Le-P30OIHjvofK4R2XGw',1),(79,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTc5MzUwMzUsImV4cCI6MTc1ODAyMTQzNX0.A0c1mqYlIui2I0YYwYDW7xalSDg7pRlBr2dzsTxppWc',1),(80,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTc5MzgyMzUsImV4cCI6MTc1ODAyNDYzNX0.6gR4rkTHqJ0ltNuFuxLg_GveC1gItVCcaqls14T5k2Q',1),(81,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTgwMTMxMzMsImV4cCI6MTc1ODA5OTUzM30.03kZBYiXa3Ohae9NOvKinpvVubqZvelHSePoTONzWpA',1),(82,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTgwMTM0OTMsImV4cCI6MTc1ODA5OTg5M30.B26eTRXLOfQ46H9bUfqpV4lulvjjhz0jzANUsF8D0Ho',5),(83,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTgwMTY1NTksImV4cCI6MTc1ODEwMjk1OX0.H-zptVLTR1fF44_yDDRU514Oaa9Pty38S3Rjvxhf3fo',1),(84,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTgwMTY3NzQsImV4cCI6MTc1ODEwMzE3NH0.HQKzd7BsL6a3uHfGP4wnDnRzjG-7AB_X97x-_q0h0vU',1),(85,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU4MDE3NjU0LCJleHAiOjE3NTgxMDQwNTR9.Sr1Y7mElp058jeP-yyZoYcLx_ZDIwip8pAoijwNjeUw',11),(86,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU4MDE5OTg5LCJleHAiOjE3NTgxMDYzODl9.5C6_BSgAg1abCVAchSlEHaTAyYp9fqJXuigvUhS_8Kw',11),(87,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU4MDIxNTM3LCJleHAiOjE3NTgxMDc5Mzd9.eeqHJifbyxFnfs_gEGcUZb7iYvWgdevnKJJEnIamszA',11),(88,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU4MTAwNTMzLCJleHAiOjE3NTgxODY5MzN9.-wLV_H451VYrtmoG6REShE7iMrj2UMy04x87kMfNyQQ',11),(89,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTgxMDEwNDMsImV4cCI6MTc1ODE4NzQ0M30.iGyUfufQVBRQ6KyrEbixYvx4JQsc2Rp8cxII0XqOy1M',1),(90,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJqaXR1c2FsbWFuQGdtYWlsLmNvbSIsInJvbGUiOiJKT0JTRUVLRVIiLCJpYXQiOjE3NTgxMDIxNjksImV4cCI6MTc1ODE4ODU2OX0.V21OHLRywYshfoHe2ZZkbHmx-IM5GGb7WmMTLsyrQqw',24),(91,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYWxtYTUzNEBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU4MTA1Njc3LCJleHAiOjE3NTgxOTIwNzd9.d5d_t9eWJ27zKpfWtpNergdSweV0iRune0N5gffH-gs',25),(92,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZTIzNEBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU4MTA2NjIwLCJleHAiOjE3NTgxOTMwMjB9.lxE0MJDGICgUeGh_Juka627CJvga9fDH3Rfmrk9dbOE',26),(93,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU4MTg3ODkyLCJleHAiOjE3NTgyNzQyOTJ9.a9v4EtIkYhnfY8sBjrCdJAquQZmcXU-XwZvCbVDSv2s',11),(94,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTgxOTA5NjIsImV4cCI6MTc1ODI3NzM2Mn0.EJVFqPuwyR1gaiB4YrxD3g1X0gTESJCI6NtW9V__TW0',1),(95,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTgxOTA5NzgsImV4cCI6MTc1ODI3NzM3OH0.e0UitioQJ8eQUq7isI4DSyWHhii7V_cpJxaw2oPH10Q',5),(96,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTgxOTM0MTQsImV4cCI6MTc1ODI3OTgxNH0.4v_yysI4AE1-6-3dQ2tSk59QI7IrdQEfGysgS-vCG18',5),(97,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTgxOTQyODcsImV4cCI6MTc1ODI4MDY4N30.lDfq1tnA1pyyAQgWIA0KWiAWFcq9JybIVqWNU2vqcZc',5),(98,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTgxOTQ2NjMsImV4cCI6MTc1ODI4MTA2M30.sw52HHjlNToL9V_lvvyblqfkhhoQ4kMc7Iu6rYGe13Q',5),(99,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJqaXR1c2FsbWFuQGdtYWlsLmNvbSIsInJvbGUiOiJKT0JTRUVLRVIiLCJpYXQiOjE3NTgxOTcyOTcsImV4cCI6MTc1ODI4MzY5N30.uQPmetzNftMGbMUFTptVx6an6jm3SXtkqpmmfSk05Ls',24),(100,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTgxOTczOTUsImV4cCI6MTc1ODI4Mzc5NX0.HUWlwr5A19P7WLfxFT3b6PmPWHU_0DmZLnWafeU62v0',5),(101,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZTIzNEBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU4MTk3NTEzLCJleHAiOjE3NTgyODM5MTN9.yzPp_m81MdhEMENiLnT7cVX7MCV8Ahn_0DrPhfnW_JU',26),(102,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTgxOTc1NjIsImV4cCI6MTc1ODI4Mzk2Mn0.7TmhJfZzh4svYzVkdIUYovssikD5bQ-H4dQPSLU_nd4',5),(103,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTgxOTc2MjgsImV4cCI6MTc1ODI4NDAyOH0.tPZtYsMPoOXGqoaotabFmtOy1BJ2Ke5egiiQMgLmgBQ',1),(104,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTgxOTc2MzMsImV4cCI6MTc1ODI4NDAzM30.d20JssFroEu1LsRPu2_gL0r2Ul89ENecaCJUIMYxAWk',1),(105,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZTIzNEBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU4MTk3NjgxLCJleHAiOjE3NTgyODQwODF9.ICMmg6FYaBwyCpeAdT18YU5oMMUhQ6yMifZAJ9BEhZw',26),(106,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTgxOTc3NTgsImV4cCI6MTc1ODI4NDE1OH0.yMNOTG7W5atjbj2MY8tL3u7lHXmLIqithBBoKqYXPEo',1),(107,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTgxOTc3OTcsImV4cCI6MTc1ODI4NDE5N30.cUGomKm9x-XY6ju56zvF_O_5vvunTA5O24jiT8AJi5c',5),(108,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZTIzNEBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU4MTk4ODg2LCJleHAiOjE3NTgyODUyODZ9.Wrpig_u3uhtagDxrxkZl_00pN7QBnDIdqCF370zQh_U',26),(109,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZTIzNEBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU4MTk5MDY2LCJleHAiOjE3NTgyODU0NjZ9.xL60eglsrwnVJIxGuYz_eXcUMZbi7VP0m_U-_sYjAXs',26),(110,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTgxOTkwODQsImV4cCI6MTc1ODI4NTQ4NH0.G5k6CJXGb_fvhyQpDZBvKT7DrOwPKdDRFrXzkPpxBZg',1),(111,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTgxOTkxMDYsImV4cCI6MTc1ODI4NTUwNn0.wAekQq-fn1F-tQBxhQ56xQPfYGfyIwqG7JlFoUjSZz0',5),(112,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZTIzNEBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU4MTk5MTk0LCJleHAiOjE3NTgyODU1OTR9.TMM3S6E9DV3j2oi3rKY2Ib1PJqh8WL1i0_uARJWtNt4',26),(113,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTgxOTkyNjEsImV4cCI6MTc1ODI4NTY2MX0.zZpsFu79kJRUTWZi8J4F7Z2d838WX2XZ4hkspLuN9Xw',5),(114,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZTIzNEBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU4MTk5MzA3LCJleHAiOjE3NTgyODU3MDd9.HYHLGjUj-WkWzP_T1xSqaJ3DENimd8hrqIY1w7DpxeU',26),(115,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTgxOTk2NTIsImV4cCI6MTc1ODI4NjA1Mn0._mv0g3KSKHBxVZiF3kPgKv9zMGURY3DhFT4kVgxpNhw',5),(116,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYWxtYTUzNEBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzU4MTk5ODIwLCJleHAiOjE3NTgyODYyMjB9.LfkUX3awONpRaXO4LuqGYMntpAVicacKQ6yLISEy8gE',25),(117,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTgxOTk4OTUsImV4cCI6MTc1ODI4NjI5NX0.-nHdsJEwi33i7gX5Edrl9Xh-5227DzG3DaHX3ynd4vA',5),(118,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJqaXR1c2FsbWFuQGdtYWlsLmNvbSIsInJvbGUiOiJKT0JTRUVLRVIiLCJpYXQiOjE3NTgyMDAzMDksImV4cCI6MTc1ODI4NjcwOX0.FzocN5rc1jng7KfHqfM-WgkE_zQ9FAalhjZm9nMSUlA',24),(119,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTgyMDAzNTIsImV4cCI6MTc1ODI4Njc1Mn0.FtqDJ2IqIgTwODJh2ja3eVl2pBbhEL4wcM3mdwRBVU4',1),(120,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTgyMDA0MDgsImV4cCI6MTc1ODI4NjgwOH0.IPGESQH3rRS593rjfXQFUK_ky1yUFESA_WYooosUl6s',5),(121,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTgzNTk2ODgsImV4cCI6MTc1ODQ0NjA4OH0.D6ZbSyOMZl0ViRWk0pxjDX5G1v4lEPG0aS49Gk4N3mM',1),(122,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYWxhbTU0M0BnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTgzNjMzMTksImV4cCI6MTc1ODQ0OTcxOX0.GldRMEKVr1aGlEDEyS-KcmcM0e6AQsjJ1pt8GynTU5k',27),(123,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYWxhbTU0M0BnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTgzNjMzNTgsImV4cCI6MTc1ODQ0OTc1OH0.9TOZNdpUEl9Zc2gFQG7yyikFFHdGyaht5-rAws_B9Fw',27),(124,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJqaXR1c2FsbWFuQGdtYWlsLmNvbSIsInJvbGUiOiJKT0JTRUVLRVIiLCJpYXQiOjE3NTgzNjQwODMsImV4cCI6MTc1ODQ1MDQ4M30.8ssgnj0nbNsWaIhxSQC_SfRBsUsQbCwjFKglpbCLLkk',24),(125,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJqaXR1c2FsbWFuQGdtYWlsLmNvbSIsInJvbGUiOiJKT0JTRUVLRVIiLCJpYXQiOjE3NTgzNjQxNzMsImV4cCI6MTc1ODQ1MDU3M30.8ozT6GOlPeIZjB49fKijXdTYFyMdkeR8ZruIj9AgK-E',24),(126,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYWxhbTU0M0BnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NTgzNjQyMjgsImV4cCI6MTc1ODQ1MDYyOH0.6OsGFTSd4Z2mr2R9vvy7bH29YcqnXwiRLrvAeuQpSPU',27),(127,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTgzNjQyNTAsImV4cCI6MTc1ODQ1MDY1MH0.pjQU3UNnBwKXsvBEWsvSZZvltYa6PVIcbe6pwfNQ6is',1),(128,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NTgzNjQ5NzQsImV4cCI6MTc1ODQ1MTM3NH0.X9RtefnYLszJsotOxtebY6pkSd0d57D63S8E5JX6TxY',1);
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training`
--

DROP TABLE IF EXISTS `training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `institute` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `job_seeker_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqy3im7gya864syc0set8mvwi5` (`job_seeker_id`),
  CONSTRAINT `FKqy3im7gya864syc0set8mvwi5` FOREIGN KEY (`job_seeker_id`) REFERENCES `job_seeker` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training`
--

LOCK TABLES `training` WRITE;
/*!40000 ALTER TABLE `training` DISABLE KEYS */;
INSERT INTO `training` VALUES (1,'','1 year','IsDB-BISEW','Java Programming',1),(2,'','1 year','IsDB-BISEW','Java Programming',4),(3,'','1 year','Ganosastho Adhidapter','Nursing',5),(4,'','6 months','World Vision Bangladesh','CESP Facilitator',5),(5,'','1 year','IsDB-BISEW','Java Programmer',6),(6,'','7 days','Jago Foundation','Soft Skill Training',6);
/*!40000 ALTER TABLE `training` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_lock` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role` enum('ADMIN','EMPLOYER','JOBSEEKER') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,_binary '','sathekhanom550@gmail.com',_binary '\0','dvgcbn','$2a$10$R5Dew/qQCJCHf3prvm7RjuapSmB5f.zS9VgTu1caQ/LZ9HesIKW2u','12343545','dvgcbn_d3956ff1-a8b3-4e6d-b9c8-215435b5def0','ADMIN'),(5,_binary '','sathe@gmail.com',_binary '\0','Sathe Khanom','$2a$10$gTbal9oVZlZrNDQRI7VzgeLRvEOkC30DtqpaJmsHZnnkVAJ.IVGwm','12342455','Sathe Khanom_c4896e07-561b-48a9-a2cf-8b2e1e66d496','EMPLOYER'),(11,_binary '','rahim@gmail.com',_binary '\0','Abdur Rahim','$2a$10$mipu2PLk5O7LEbEcuk0vpuaT33qU10iXFPU5s431se.xg.8/YP2ae','21432546','Abdur Rahim_aa1a4e5f-ee0c-4427-b186-a737c86f097d','JOBSEEKER'),(12,_binary '','sadiar@gmail.com',_binary '\0','Sadiar Rahman','$2a$10$MGgeOZLLVOuiWZKQpaJ5hOFMAlIb5I.2/EOGWHDI4QNbx6FBz4a9K','124354657','Sadiar Rahman_1d1aa08d-9749-4fdb-8bf9-bf5e32e1534a','JOBSEEKER'),(13,_binary '','reja@gmail.com',_binary '\0','Rejaul Karim','$2a$10$VYV/JF.4jk5wo8TYXK8dwu5Z8DlmHqKX.q7d6uSvw9uNuVeyouNqW','4546757868','Rejaul Karim_492b1176-e133-48c5-8079-936c86cbe798','JOBSEEKER'),(14,_binary '','eiasin@gmail.com',_binary '\0','Eiasin Prodhan','$2a$10$JJFFqr5t7NVIfQ468ObVJuWxtRhQ26iZbH5vbrrflocaZ9DmdLoFC','2143546','Eiasin Prodhan_81100d1f-e6cd-486e-b67a-c0f3a2c7adda','EMPLOYER'),(16,_binary '','parvej@gmail.com',_binary '\0','Parvej Ahmed','$2a$10$Qfjp/BTrd3ri.vyb2iky2ezMqDstuopCnBGleujkVxUKaR2/1.nAS','21434546','Parvej Ahmed_ad91c595-a547-4b4d-8dff-706e61de0b80','EMPLOYER'),(18,_binary '','rakib@gmail.com',_binary '\0','Rakib Hossain ','$2a$10$NAQR3kSMGbwJF4WXzrMQtOUuRFQEcs1VEGguACLIk72wkHkkIIZPe','243565676','Rakib Hossain _caf9e937-e853-445a-8324-d635aa46395d','EMPLOYER'),(21,_binary '','samim@gmail.com',_binary '\0','Shamim Ahmed','$2a$10$Z946FZAagXG9Cp2GMjOlH./xk/m0LI12vPQ9NTeMMBp4e7P67Z1Sa','2143546','Shamim Ahmed_ec6467b7-a4a8-4213-b43a-15922e51e15c','EMPLOYER'),(23,_binary '','xyz@gmail.com',_binary '\0','xcgfgfd','$2a$10$SXQPcOvr.wMtlZB4EFb.HOKTUlO/Wu3hiiYn/dWcIpIOXwgodrY.K','2465767','xcgfgfd_2605b51b-427b-425f-9652-3360e58f12e8','EMPLOYER'),(24,_binary '','jitusalman@gmail.com',_binary '\0','Salman Ahasan Jitu','$2a$10$vCs8NOnxBwCPZLAqTf5PWOLoEwZwIW5xTMVRoipTA5SQ9wHVDU/ry','01777702541','Salman Ahasan Jitu_04e67bca-be48-4093-bb77-d5fdba3f0fcf','JOBSEEKER'),(25,_binary '','salma534@gmail.com',_binary '\0','Salma Akter','$2a$10$pZ4yHT6SLhd8WGzHEO9HruS2zW8WwpbXyh4CHkUaRBY5gshahw0xO','01454543697','Salma Akter_eccaf2b6-545c-4336-97a9-dda9a6410856','JOBSEEKER'),(26,_binary '','sathe234@gmail.com',_binary '\0','Sathe Khanom','$2a$10$F.MsTu1k5X2k.T6AJoNSCeAiq7j1IhHVcyc3l.WH0Mwkd0okdP4c.','01788524563','Sathe Khanom_e79bfa98-26fe-4520-9a9f-4dc04fff3d65','JOBSEEKER'),(27,_binary '','salam543@gmail.com',_binary '\0','Abdus Salam','$2a$10$rWhd72/t3asG/LzKUmUcr.YHXqTVNkPQ96JEihgOGY4lgTpJWOLle','548721235646','Abdus Salam_e417ade1-067c-4736-b630-a00042d686fd','EMPLOYER');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_tokens`
--

DROP TABLE IF EXISTS `users_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_tokens` (
  `user_id` int NOT NULL,
  `tokens_id` bigint NOT NULL,
  UNIQUE KEY `UKf4rxms009ktbqt31o6p4y8vhw` (`tokens_id`),
  KEY `FK1xl95grn90nu35htsi9o5kbxw` (`user_id`),
  CONSTRAINT `FK1xl95grn90nu35htsi9o5kbxw` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK2b23nqo552bhfydxn9plx4vod` FOREIGN KEY (`tokens_id`) REFERENCES `token` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_tokens`
--

LOCK TABLES `users_tokens` WRITE;
/*!40000 ALTER TABLE `users_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_tokens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-20 17:59:47
