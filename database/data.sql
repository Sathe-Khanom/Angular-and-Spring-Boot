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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply`
--

LOCK TABLES `apply` WRITE;
/*!40000 ALTER TABLE `apply` DISABLE KEYS */;
INSERT INTO `apply` VALUES (1,2,1,1),(2,2,2,1),(3,2,2,1),(4,3,4,1),(5,2,1,1),(6,2,1,2),(7,2,3,2),(8,3,5,2),(9,4,6,3),(10,4,7,3),(11,3,5,3),(12,2,8,4),(13,2,8,6),(14,2,10,5),(15,8,12,4),(16,8,13,4),(17,3,4,4),(18,2,1,1),(19,2,2,1),(20,2,10,1),(21,2,1,1),(22,2,2,1),(23,2,1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_messages`
--

LOCK TABLES `contact_messages` WRITE;
/*!40000 ALTER TABLE `contact_messages` DISABLE KEYS */;
INSERT INTO `contact_messages` VALUES (1,'xyz@gmail.com','nice job..carry on..\nYour work is Exellent','Sathe'),(2,'jitusalman@gmail.com','\"May your journey ahead be as bright and beautiful as your smile. Best of luck!\"\n','Salman Ahasan Jitu'),(3,'sadiar@gmail.com','\"May every challenge you face bring you closer to achieving your dreams. Good luck!\"\n','Sadiar Rahman'),(4,'rahim@gmail.com','\"Sending you positive vibes and wishes\".\n','Abdur Rahim'),(5,'sdsf@gmail.com','ghnbn nmnmmmnbjghfdfsada','dfgf'),(6,'saa@yahoo.com','szfcdxgfjnbn cxxccvbmnkdsfaSs','dfghgj');
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
INSERT INTO `education` VALUES (1,'Dhaka','Dhaka College','Masters','3.10','2024',1),(3,'Dhaka','Dhaka College','Honors','2.48','2021',1),(5,'Dhaka','Dhaka College','HSC','3.18','2020',1),(6,'Dhaka','Dhaka College','SSC','3.18','2018',1),(14,'Dhaka','Mirpur Bangla College','Masters','2.48','2024',4),(16,'Dhaka','Dhaka College','Honors','3.18','2023',4),(18,'Dhaka','Dhaka College','HSC','4.18','2019',4),(20,'Dhaka','Mohammadpur Govt. High School','SSC','4.88','2017',4),(22,'Dhaka','Bodrunnesa Mahila College','Masters','3.18','2022',5),(24,'Dhaka','Bodrunnesa Mahila College','Honors','3.10','2021',5),(26,'Dhaka','SBSFM Govt. College','HSC','4.39','2017',5),(28,'Barishal','Nilkantho High School','SSC','4.70','2016',5),(30,'Dhaka','Eden Mahila College','Masters','3.09','2022',6),(32,'Dhaka','Eden Mahila College','Honors','2.48','2021',6),(34,'Dhaka','SBSFM Govt. College','HSC','4.42','2017',6),(36,'Barishal','Purba Satla High School','SSC','4.88','2014',6);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer`
--

LOCK TABLES `employer` WRITE;
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
INSERT INTO `employer` VALUES (1,'Dhaka, Bangladesh.','Dream Job Portal','www.dreamjob@gmail.com','Humayra Akter','sathekhanom550@gmail.com','Job Portal','njghdxhfx_f813dd4d-20ca-435f-a74a-a67316c0b46a.png',NULL,'12343545',1),(2,NULL,'ABM Company','www.abm@gmail.com','Sathe Khanom','sathe@gmail.com','Multi National','ABM_Company_f39e8b2f-5371-4140-8402-d91c6a819756.png',NULL,'12342455',5),(3,NULL,'Shikder Real State Limited','www.srsl@gmail.com','Eiasin Prodhan','eiasin@gmail.com','dfgfdh','Shikder_Real_State_Limited_0ab63c81-2da8-406c-99c1-4a89b131a11d.png',NULL,'2143546',14),(4,NULL,'BOM Company Limited','www.bom@gmail.com','Parvej Ahmed','parvej@gmail.com','cvgf','BOM_Company_Limited_d0ac6525-650c-44db-be76-d14595aa723c.png',NULL,'21434546',16),(5,NULL,'Currier Limited','www.currier@gmail.com','Rakib Hossain ','rakib@gmail.com','fghgfjh','Currier_Limited_4ea93da8-7fa8-487d-9d2a-a4b15e5ccb62.png',NULL,'243565676',18),(6,NULL,'CBS Textile','www.cbs@yahoo.com','Shamim Ahmed','samim@gmail.com','Textile','CBS_Textile_78badeb3-b953-4e9a-a6ca-1e8693761c79.png',NULL,'2143546',21),(8,NULL,'BRAC BANK LIMITED','www.bracbank@gmail.com','Abdus Salam','salam543@gmail.com','BANK','BRAC_BANK_LIMITED_da75f158-22bd-4324-b83c-83db2cc39b71.png',NULL,'548721235646',27),(9,'fsdfdsf','dssdfsdf','fsdfsdfds.dff',NULL,NULL,'IT','dssdfsdf_52017c5d-f142-4551-90b6-14da4073fe00.png',NULL,NULL,30),(10,'dfgdfgdf','sdgdsgfdgf','gdfgdfgdf','bbbbbbbb','bbbb@bb.bb','IT','sdgdsgfdgf_51453ba6-fcaa-44ba-b9c5-9afe408514c1.png',NULL,'545454545',31);
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
INSERT INTO `experience` VALUES (5,'Shapla Academy',NULL,'2017-01-01','Computer Operator','2020-12-31',4),(6,'Board Office',NULL,'2021-01-01','Computer Operator','2024-12-31',4),(7,'MidLand Kinder Garten',NULL,'2019-01-01','Assistant Teacher','2022-12-31',5),(8,'Medi Care Diagonstic Center',NULL,'2023-01-01','Nurse','2025-07-30',5),(9,'Shapla Academy',NULL,'2017-01-01','Assistant Teacher','2018-12-31',6),(10,'World Vision Bangladesh',NULL,'2019-01-01','CESP Facilitator','2024-12-31',6);
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
INSERT INTO `extracurricular` VALUES (1,'','fgfhgjhjkjgh','Leadership',1),(2,'','Participates in a weekly local litter clean-up initiative, contributing to environmental conservation efforts in the community.','',4),(3,'','Volunteer at local food shelters or community kitchens, helping those in need and giving back to the community.','',4),(4,'','Helps during charity fundraising events, including sponsored runs and bake sales, to support local causes and organisations.','',4),(5,'','Participates in a weekly local litter clean-up initiative, contributing to environmental conservation efforts in the community.','',5),(6,'','Volunteer at local food shelters or community kitchens, helping those in need and giving back to the community.','',5),(7,'','Helps during charity fundraising events, including sponsored runs and bake sales, to support local causes and organisations.','',5),(8,'','Participates in a weekly local litter clean-up initiative, contributing to environmental conservation efforts in the community.','',6),(9,'','Volunteer at local food shelters or community kitchens, helping those in need and giving back to the community.','',6),(10,'','Helps during charity fundraising events, including sponsored runs and bake sales, to support local causes and organisations.','',6);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_seeker`
--

LOCK TABLES `job_seeker` WRITE;
/*!40000 ALTER TABLE `job_seeker` DISABLE KEYS */;
INSERT INTO `job_seeker` VALUES (1,'Dhaka','2025-08-23','rahim@gmail.com','MALE','Abdur Rahim','21432546','Abdur_Rahim_ce47d1ab-d492-401c-940b-b84cc2750c1f',11),(2,'Cumilla','2025-08-02','sadiar@gmail.com','MALE','Sadiar Rahman','124354657','Sadiar_Rahman_c2c8c631-ff67-4711-a541-93870ac6d322',12),(3,'Rangpur','2025-08-23','reja@gmail.com','MALE','Rejaul Karim','4546757868','Rejaul_Karim_b15c39de-8bea-446c-8298-dd8a9f0e35cd',13),(4,'284/4, Tali Office Road , Dhaka-1209','2008-02-05','jitusalman@gmail.com','MALE','Salman Ahasan Jitu','01777702541','Salman_Ahasan_Jitu_cb29b0d0-dac5-4ae5-9d1d-fd0f1a10b216',24),(5,'23/3, Jhawchar Bazar, Hazaribagh, Dhaka-1209','1998-12-16','salma534@gmail.com','FEMALE','Salma Akter','01454543697','Salma_Akter_a608b7bb-f173-436c-8c7f-5cb24c33b0aa',25),(6,'28/GA/2, Sonatongor, Hazaribagh , Dhaka-1209','1998-11-19','sathe234@gmail.com','FEMALE','Sathe Khanom','01788524563','Sathe_Khanom_93019d4c-a0d8-46cb-8eda-ef9d91c2cfa6',26),(7,'hnmbcxgb','2025-10-22','fgfxg@gmail.com','Female','dfgfgg','214657789','dfgfgg_ad7ca1b3-30e4-4f4f-9d04-3e34a3aa7c15',29);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'A job description is a written document that details a specific job\'s duties, responsibilities, and required qualifications, serving as a crucial tool for employers to attract suitable candidates and for applicants to assess their fit with the role and organization. Key components of a job description include the job title, a summary of the role\'s purpose, a list of tasks and responsibilities, necessary and preferred qualifications, and sometimes information about the working conditions and company culture.','Full-Time','2025-08-23 06:00:00.000000',325546,'Assistant Manager',4,2,3,NULL,NULL,NULL,NULL,NULL),(2,'A job description is a written document that details a specific job\'s duties, responsibilities, and required qualifications, serving as a crucial tool for employers to attract suitable candidates and for applicants to assess their fit with the role and organization. Key components of a job description include the job title, a summary of the role\'s purpose, a list of tasks and responsibilities, necessary and preferred qualifications, and sometimes information about the working conditions and company culture.','Full-Time','2025-08-30 06:00:00.000000',325546,'Computer Operator',6,2,4,NULL,NULL,NULL,NULL,NULL),(3,'A job description is a written document that details a specific job\'s duties, responsibilities, and required qualifications, serving as a crucial tool for employers to attract suitable candidates and for applicants to assess their fit with the role and organization. Key components of a job description include the job title, a summary of the role\'s purpose, a list of tasks and responsibilities, necessary and preferred qualifications, and sometimes information about the working conditions and company culture.','Full-Time','2025-08-28 06:00:00.000000',325546,'Manager',2,2,2,NULL,NULL,NULL,NULL,NULL),(4,'A job description is a written document that details a specific job\'s duties, responsibilities, and required qualifications, serving as a crucial tool for employers to attract suitable candidates and for applicants to assess their fit with the role and organization. Key components of a job description include the job title, a summary of the role\'s purpose, a list of tasks and responsibilities, necessary and preferred qualifications, and sometimes information about the working conditions and company culture.','Part-Time','2025-08-30 06:00:00.000000',325546,'Labour',3,3,9,NULL,NULL,NULL,NULL,NULL),(5,'A job description is a written document that details a specific job\'s duties, responsibilities, and required qualifications, serving as a crucial tool for employers to attract suitable candidates and for applicants to assess their fit with the role and organization. Key components of a job description include the job title, a summary of the role\'s purpose, a list of tasks and responsibilities, necessary and preferred qualifications, and sometimes information about the working conditions and company culture.','Full-Time','2025-08-16 06:00:00.000000',325546,'Electrician',8,3,6,NULL,NULL,NULL,NULL,NULL),(6,'A job description is a written document that details a specific job\'s duties, responsibilities, and required qualifications, serving as a crucial tool for employers to attract suitable candidates and for applicants to assess their fit with the role and organization. Key components of a job description include the job title, a summary of the role\'s purpose, a list of tasks and responsibilities, necessary and preferred qualifications, and sometimes information about the working conditions and company culture.','Full-Time','2025-08-29 06:00:00.000000',325546,'Assistant Officer',1,4,5,NULL,NULL,NULL,NULL,NULL),(7,'A job description is a written document that details a specific job\'s duties, responsibilities, and required qualifications, serving as a crucial tool for employers to attract suitable candidates and for applicants to assess their fit with the role and organization. Key components of a job description include the job title, a summary of the role\'s purpose, a list of tasks and responsibilities, necessary and preferred qualifications, and sometimes information about the working conditions and company culture.','Full-Time','2025-08-27 06:00:00.000000',325546,'Manager',7,4,10,NULL,NULL,NULL,NULL,NULL),(8,'Manager, Data Warehouse & Reporting is responsible for modernising data infrastructure to drive programme results. This role is a key player in designing and launching a new data warehouse and reporting platform. The manager will partner with stakeholders to turn data into actionable insights, directly impacting the success of 8.2 million clients in our Microfinance program.','Full-Time','2025-08-08 06:00:00.000000',500000,'Manager',1,2,5,'Festival Bonus, Contributory Provident Fund, Gratuity, Performance Bonus, Health and Life Insurance, Maternity/ Paternity Leave, Wellness Centre Facility, Day Care Facility, and others as per policy.\n\n','Bachelor\'s in CSE or any other relevant discipline from any recognised university/ Institution.','2025-11-30 06:00:00.000000','Minimum 3 years of working experience in data Warehouse & reporting technologies.','Design and develop a new data warehouse and reporting structure, overseeing its implementation, maintenance, and support to ensure data availability ensuring relevant compliance and guidelines.\nAssess existing systems, infrastructure, and data flows to develop a strategic framework for a complete system transformation.\nContinuously identify and implement internal process improvements like automating manual tasks and optimising data delivery for greater scalability.\nOrganise and analyse large, complex datasets to meet business needs.\nDesign, build, and optimise ETL (Extract, Transform, Load) pipelines for efficient and scalable data processing across various sources.\nBuild interactive dashboards and reports using BI tools (Power BI, Looker, etc.) that turn business requirements into actionable insights.\nActively participate in developing and delivering a new data platform by mapping data requirements from different stakeholders participating in relevant cross-functional projects and activities.\nRecommend and implement changes to boost team productivity and development.'),(9,'The Deputy Manager, Circular Economy will be responsible for designing, implementing and overseeing the business model of a plastic waste recycling factory. The role involves building sustainable revenue streams, building relationships with suppliers and buyers and ensuring efficient operations of the facility. The role requires both strategic thinking and technical know-how, with a strong focus on stakeholder engagement, private sector partnerships, data-driven monitoring, and scaling of circular economy pilots.','Full-Time','2025-09-04 06:00:00.000000',400000,'Deputy Manager',4,2,24,'Festival Bonus, Health and Life Insurance, and others as per policy.','Master’s degree in Business Development/Industrial Engineering/Environmental Science, or a related discipline from a reputed institutions.','2025-11-20 06:00:00.000000','Minimum 4 years demonstrated working experience in relevant field in value chain development/market linkage, or SME incubation or any related field. Field experience in working with municipalities, private sector actors, and the informal waste sector  Strong knowledge of plastic types (PET, HDPE, LDPE, PP, etc.) and recycling processes','Lead the design and execution of circular economy aspects of the plastic recycled products from the recycling facility, including waste segregation, recycling innovation, composting, and upcycling.'),(10,'The Senior Specialist, Knowledge Management will lead the design and implementation of systems for documentation, learning, and knowledge sharing within the BRAC Health Programme. The role focuses on producing high-quality knowledge products (reports, newsletters, case studies, briefs) to strengthen programme performance, donor engagement, and organizational visibility. The incumbent will also promote a culture of continuous learning by collaborating with cross-functional teams and ensuring evidence and lessons learned are effectively disseminated and applied.','Full-Time','2025-09-04 06:00:00.000000',20000000,'Senior Specialist, Knowledge Management, BRAC Health programme (BHP); (Contractual)',10,2,1,'Festival Bonus, Health and Life Insurance, Maternity/ Paternity Leave, Wellness Centre Facility, Day Care Facility, and others as per policy.','Bachelor’s degree in Public Health, Social Sciences, Development Studies, Business Administration, Journalism, or Information Management or any relevant discipline from a recognised university. Training in Knowledge Management, Communications, data analysis, research will add advantage.','2025-12-28 06:00:00.000000','Minimum of 5 years of experience in knowledge management and communications or any relevant area.','Identify, capture, and organize critical knowledge assets, including documents, best practices, lessons learned, and intellectual capital of BRAC Health Programme and undertake regular field visits for this purpose\nEstablish and maintain a knowledge management system for easy retrieval, ensuring information is organized, accessible, and up to date.\nEnsure systematic documentation and dissemination of evidence, lessons learned, and innovations across projects.\nProduce high-quality knowledge products such as annual reports, newsletters, change management documents, case studies, learning briefs, and donor communication materials.\nMaintain and regularly update the BHP website with written, audio-visual content, and an organised repository of technical resources.\nLiaise with BRAC MEAL department as well as central communications department to ensure compliance with BRAC learning documentation and communications guidelines.\nContribute to proposal development and donor reporting by ensuring effective documentation and knowledge management.\nCollaborate with the communications team to highlight BHP’s achievements and strengthen its visibility as a thought leader in health.'),(11,'To lead and oversee the full architectural design process—from concept to completion—delivering innovative, functional, sustainable, and regulation-compliant solutions that align with client goals and organizational values. The role ensures design excellence, safety, inclusivity, and climate resilience while integrating multidisciplinary inputs, optimizing resources, and enabling seamless execution. It also cultivates team development and collaboration, upholding strong documentation practices, effective stakeholder engagement, and timely project delivery.','Full-Time','2025-08-08 06:00:00.000000',2343555,'Deputy Chief Architect, Construction Department',12,2,3,'Festival Bonus, Contributory Provident Fund, Gratuity, Health and Life Insurance, Maternity/ Paternity Leave, Wellness Centre Facility, Day Care Facility and others as per policy.','Bachelor of Architecture from any recognized university/ institution. Masters will be preferred.','2025-11-20 06:00:00.000000','Minimum 15 years of work experience in architectural design and construction documentation. Registered member of IAB, with enlistment at RAJUK and other relevant regulatory authorities authorized to sign architectural drawings.','Liaise with client programmes and stakeholders to thoroughly understand project objectives, functional requirements, and design aspirations.\nCoordinate and manage design presentations and approvals, ensuring clear communication and continuous client satisfaction throughout the design cycle.\nLead the full design process from concept to construction, delivering innovative, functional, and contextually responsive design solutions.\nEnsure compliance with BNBC, PWD specifications, sustainability, and organizational standards.\nOversee the preparation of detailed, accurate construction drawings and documentation.'),(12,'Implement field operations strictly according to established guidelines; ensure timely and accurate data collection; and provide support to guarantee the production of high-quality seed.','Full-Time','2025-09-20 06:00:00.000000',500000,'Technical Assistant, Rice Research (BRAC Seed and Agro Enterprise)',3,8,3,'Health and Life Insurance, Festival Bonuses, Contributory Provident Fund, Gratuity and others','The candidate must hold a Diploma in Agriculture with a minimum CGPA of 2.50 or the equivalent of a second class /division, or comparable academic standing in all examinations from a recognized university.','2025-12-30 06:00:00.000000','N/A','Collect samples and prepare pollen slides for microscopic observation\nCarry out yield evaluation trials (e.g. OYT, AYT, and MLT) and conduct variety screening.\nSet up experimental hybrids, providing full support according to guidelines\nProduce all seed classes, including crossing seed (after emasculation & clipping), according to targets\nAssist in establishing Grow-Out Tests (GOT) and GDDM\nHelp in maintaining all germplasm\nRecruit, coordinate, and manage labor\nPrepare action plans; collect and update data; maintain field register including weather records\nPerform any other jobs as assigned by the management'),(13,'To lead and oversee the full architectural design process—from concept to completion—delivering innovative, functional, sustainable, and regulation-compliant solutions that align with client goals and organizational values. The role ensures design excellence, safety, inclusivity, and climate resilience while integrating multidisciplinary inputs, optimizing resources, and enabling seamless execution. It also cultivates team development and collaboration, upholding strong documentation practices, effective stakeholder engagement, and timely project delivery.','Full-Time','2025-09-26 06:00:00.000000',54356876354,'Deputy Chief Architect, Construction Department',10,8,19,'Festival Bonus, Contributory Provident Fund, Gratuity, Health and Life Insurance, Maternity/ Paternity Leave, Wellness Centre Facility, Day Care Facility and others as per policy.','Bachelor of Architecture from any recognized university/ institution. Masters will be preferred.','2026-01-10 06:00:00.000000','Minimum 15 years of work experience in architectural design and construction documentation. Registered member of IAB, with enlistment at RAJUK and other relevant regulatory authorities authorized to sign architectural drawings.','Liaise with client programmes and stakeholders to thoroughly understand project objectives, functional requirements, and design aspirations.\nCoordinate and manage design presentations and approvals, ensuring clear communication and continuous client satisfaction throughout the design cycle.\nLead the full design process from concept to construction, delivering innovative, functional, and contextually responsive design solutions.\nEnsure compliance with BNBC, PWD specifications, sustainability, and organizational standards.\nOversee the preparation of detailed, accurate construction drawings and documentation.\nMaintain comprehensive and organized records of all design-related materials, including drawings, specifications, reports, and project data, for reference and regulatory compliance.\nConduct site visits and surveys to assess context and constraints.\nProvide design support during construction, including site visits, inspections, and collaboration with the execution team to ensure adherence to design intent.\nIntegrate architectural and structural designs with MEP services.\nEnsure coordinated, buildable drawings for seamless execution.\nCollaborate with the project execution team to ensure designs are implemented correctly on-site.\nConduct site visits during construction to guide and ensure compliance with design intent.\nMonitor design-related costs, proactively incorporating value engineering without compromising quality.'),(14,'This position is responsible for developing high-quality proposals and concept notes, engaging donors and partners, ensuring grant compliance, and integrating lessons from ongoing projects to strengthen future designs. The role also supports programme improvements, financial and narrative reporting, MoUs, procurement, and compliance processes.','Full-Time','2025-07-08 06:00:00.000000',40000,'Senior Specialist, Fundraising and Partnership, BRAC Health Programme (BHP); (Contractual)',9,8,2,'Festival Bonus, Health and Life Insurance, Maternity/ Paternity Leave, Wellness Centre Facility, Day Care Facility, and others as per policy.','Master\'s degree in Public Health/ International Development/ Economics/ Development Studies or any relevant discipline from any recognised university/ institution.','2025-10-30 06:00:00.000000','Minimum of 5 years of experience in any relevant field. Work experience in Development sector will get preference.','Explore fundraising opportunities, regularly monitor donor websites and identify and inform donor opportunities matching relevant with BRAC Health Programme (BHP)\nSupport the end-to-end proposal development process: concept notes, technical and financial proposals, theories of change, frameworks, workplans, and budgets. Additionally, create and manage a database for BHP donors and projects.\nCoordinate with other relevant departments of BRAC such as finance, GRP, HRD, procurement and others during proposal writing and budget preparation to ensure timely submission and strategic positioning of proposals.\nDevelop and maintain database for programmatic knowledge pieces, one pagers and reports\nAssist in developing and negotiating contract/ MoU terms with donors on behalf of the programne');
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
INSERT INTO `summery` VALUES (2,'O+','Motivated and detail-oriented Java Developer fresher with a strong understanding of Java SE and Java EE.  I am seeking for an entry-level position where I can apply my programming skills and enthusiasm for technology to contribute to impact projects and enhance my development expertise.','Jamsed Ali Khan','6 feet','Lovely Begum','Bangladeshi','1232435676878','Islam','75 kg',1),(4,'O+',' Seeking an entry-level Java Developer position to apply my strong foundation in core Java principles and object-oriented programming to real-world applications. Eager to contribute my skills to a dynamic software development team while continuously enhancing my expertise and growing within a forward-thinking organization','Md. Abdul Jalil','6 feet','Salma Akter','Bangladeshi','1232435676878','Islam','75 kg',4),(5,'AB+','Seeking an entry-level Java Developer position to apply my strong foundation in core\nJava principles and object-oriented programming to real-world applications. Eager to\ncontribute my skills to a dynamic software development team while continuously\nenhancing my expertise and growing within a forward-thinking organization\n','Abdus Satter','5 feet','Komola Begum','Bangladeshi','1232435676878','Islam','60 kg',5),(8,'O+','An objective could highlight strong programming skills and a desire to contribute to innovative tech solutions in a software developer role.','Md. Lalmiya Khandoker','5 feet','Khadija Begum','Bangladeshi','1232435676878','Islam','60kg',6);
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
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (235,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYwOTU0ODMxLCJleHAiOjE3NjEwNDEyMzF9.Ys_wjuD4BsEj8P4Q1sWATIm2RVwzV_ee9hpj4JtTtec',11),(236,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYwOTU0OTE5LCJleHAiOjE3NjEwNDEzMTl9.6gNXFyhiOL3kl-ydRNUCB92J3qlF015wnEizCyckqRg',11),(237,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYwOTU1MDQxLCJleHAiOjE3NjEwNDE0NDF9.Wtl0wbVRAQIB2IULKCy954sc5Wsh7o7a-09Ak3hf9o8',11),(238,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYwOTU2MzMwLCJleHAiOjE3NjEwNDI3MzB9.jXpAgBk_C5LKrSJ074exuNbvy5OYI-VPgaMjI17VYTI',11),(239,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYwOTU2NDY5LCJleHAiOjE3NjEwNDI4Njl9.R-uEwdcDFAI3r9AgP_OzM6_ZApXJ19uaCb8akn8qPQY',11),(240,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYwOTU2OTQzLCJleHAiOjE3NjEwNDMzNDN9.vvuwspSvbJ_yBhQfYjW0YIVo9nAEwhlKnQeSiqJbBeQ',11),(241,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYwOTYwMDQxLCJleHAiOjE3NjEwNDY0NDF9.Nbf0f_uR8cVD6vllSDW82eg9qKEXBE9gtYC06yfTza8',11),(242,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQyNjExLCJleHAiOjE3NjExMjkwMTF9.8t5i_kY60jul_ZWItOUnvujO5ABPta91xuS7m7typ4k',11),(243,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ0NjAxLCJleHAiOjE3NjExMzEwMDF9.mODusRIW58tWErAYSRsSsjVesx1XHJ501g8rw4Fiom0',11),(244,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ0NjU0LCJleHAiOjE3NjExMzEwNTR9.pDATy6KOX5xxL3pV-kFjeHCPaGH7XIGYJU7ydQOvJOw',11),(245,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ0NjU2LCJleHAiOjE3NjExMzEwNTZ9.e9-1TUUjTvaPO4uT57nkE8d1_3Xt7gu3Jss5f2Z3q44',11),(246,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ0NzAyLCJleHAiOjE3NjExMzExMDJ9.IG5fB3FAjRiTcycOIvzgydPWTXFl1aoFUQ5xS1n0ZMg',11),(247,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ0NzIyLCJleHAiOjE3NjExMzExMjJ9.RNIB1imwjtCmdTW6PiMbPXQCVPb8fougjUVU18D0auM',11),(248,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ0NzQ2LCJleHAiOjE3NjExMzExNDZ9.y3LKEhnG4PljzyuZWyafYqt4-zsqFF3-7X_wibNuIFg',11),(249,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ0Nzc1LCJleHAiOjE3NjExMzExNzV9.m2XmNJ_LHSWOEwbQsgMB4nhhANVzxCeFkWCWIcNj2XY',11),(250,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ0OTc2LCJleHAiOjE3NjExMzEzNzZ9.gMITjXpj30iNLML03bwzkToe8BYRtavA0PMkCXLE204',11),(251,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ1NDYwLCJleHAiOjE3NjExMzE4NjB9.orHq7z7SXw-l30b6165jFAm8aBgqItOi9di3QaEZtBM',11),(252,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NjEwNDU1MDIsImV4cCI6MTc2MTEzMTkwMn0.kjYoZgFI9xmaOsDSI-BUUo_P_jqxH_TjvbIz9Y7JKJs',5),(253,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ1ODkxLCJleHAiOjE3NjExMzIyOTF9.CK9Kt854yB9_IvOSmVTScDBQlch3BM19_q_PxLTI-fI',11),(254,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ2MDQ1LCJleHAiOjE3NjExMzI0NDV9.fqKBg1WZAyaBE1kDTaueyTvETP8Mh09D4LHA-ULm-1k',11),(255,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ2MTI2LCJleHAiOjE3NjExMzI1MjZ9.cnC44v_WyWf5g1h3WuuuQw9GZBzPZP833wdMS-721mI',11),(256,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ2MzU3LCJleHAiOjE3NjExMzI3NTd9.KEU6HDRYuxLRa5dm8M0VXbMwJ1OfM8fJ3g22W5Z23cg',11),(257,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ2NTQ3LCJleHAiOjE3NjExMzI5NDd9.Xk4NX7_VUeCyopZ4bn4O8o1_aLrfptlLnC41gv9MT-8',11),(258,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ2NjM2LCJleHAiOjE3NjExMzMwMzZ9.3jVYnkq8OcKtGzLIWeovJSsESk9gyzg-7JvT1sp3U9c',11),(259,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ2ODAxLCJleHAiOjE3NjExMzMyMDF9.PnYNWAZeSYwR46sHSzu_Z7DXDaGaT4ypzrEHvXtAWJ4',11),(260,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ2ODMyLCJleHAiOjE3NjExMzMyMzJ9.gO0qf6GlMhi3JiBLka2GN7GsbtLzxVNamvEy0VM3WKY',11),(261,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ3MDg3LCJleHAiOjE3NjExMzM0ODd9.UFVkDipjZ7E2dNaXQTytkuPYuBTYNDmwzTruurHUT9Y',11),(262,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ3MTUzLCJleHAiOjE3NjExMzM1NTN9.p0jb7zWSwv-r5TeG54-g7CBOvX356yv5OfR87g7H9ZM',11),(263,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ3MTc3LCJleHAiOjE3NjExMzM1Nzd9.3-jtQMLYR3YfiWIM9nEG_vigzAiFU34BiFDCzIfjOEI',11),(264,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ3ODg2LCJleHAiOjE3NjExMzQyODZ9.qP5HqO56aSZIlUrkLZny5utOHnwdHNGxgNO9TSsg8QM',11),(265,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NjEwNDg2NTksImV4cCI6MTc2MTEzNTA1OX0.31qxxF7k9asfkJ7Pjs07RYQ1DzyDw37xmZDVnnJ_HOQ',5),(266,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ4OTY4LCJleHAiOjE3NjExMzUzNjh9.XTCI0pyxm7BIBe4tq87pxEMhA-xXGyZkaCynD2fbYk4',11),(267,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDQ5NDA4LCJleHAiOjE3NjExMzU4MDh9.8_KJq6bvvyjxAq2684FFWUzuqWkpZBwqGX1LcSc3vqo',11),(268,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDUwMzIyLCJleHAiOjE3NjExMzY3MjJ9.eWTSVaGXXDQ1zOMErYFoOG_NKOo56uIy9kF1WLgLUyk',11),(269,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NjEwNTA2MjgsImV4cCI6MTc2MTEzNzAyOH0.KfXrYtb-9_wosWcgAP3CdNXsYkd--hhbX1ysz6CXs5k',5),(270,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMDUwNzMwLCJleHAiOjE3NjExMzcxMzB9.83L4JEwgSXwGUcmVt8GnugtrPZSCjMLuHAmmDvYWdgo',11),(271,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NjEwNTEyOTEsImV4cCI6MTc2MTEzNzY5MX0.CYa44CUtIx_cHDeYp3_zphT5LOYuX7IqshkrhZ4k4M4',5),(272,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMTI2MDk3LCJleHAiOjE3NjEyMTI0OTd9.kCRYPTWSSzFBdMGuw_KOEYRjDjnPFs3FXOqADaHYsRY',11),(273,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NjExMjY2NzQsImV4cCI6MTc2MTIxMzA3NH0.aWJC9vCJZKXDPk_fkEBNwIPzqlOXB_1CDV-eGo-HncA',5),(274,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NjExMjg3ODgsImV4cCI6MTc2MTIxNTE4OH0.aX4kuPV_aU1dMY2v6Ty1uDWl_k0s40rL-WIevg1oTkQ',5),(275,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NjExMzAxMjgsImV4cCI6MTc2MTIxNjUyOH0.RT_28WjZdPXhOMPJctCI7rN3dqlAJykB3iTldARMkJE',5),(276,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NjExMzM2MzEsImV4cCI6MTc2MTIyMDAzMX0.3aywj75kiDHCGSfSCAXCQZhRQ-AlhUPz8aa5Cpy7Fhc',1),(277,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NjExMzQwNzAsImV4cCI6MTc2MTIyMDQ3MH0.6ihrR6czyx55Ordc2U_tt235elyo0_rrIju_11tMZzg',1),(278,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZWtoYW5vbTU1MEBnbWFpbC5jb20iLCJyb2xlIjoiQURNSU4iLCJpYXQiOjE3NjExMzQ3ODMsImV4cCI6MTc2MTIyMTE4M30.ylveg3KdzgYrJyej7act41SoKcu77gpO3ySqD1YOoC8',1),(279,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMjEyODkxLCJleHAiOjE3NjEyOTkyOTF9.KXHq3M3DT5Xku44Pm0yaNDvb8dCGCct3HIlV80yxqLc',11),(280,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYWxtYTUzNEBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMjE0NzE5LCJleHAiOjE3NjEzMDExMTl9.lSLn4UbRLuLxPp4KUcWma_SZ-FMj-4KB7nKljNg-Tmg',25),(281,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NjEyMjA4OTIsImV4cCI6MTc2MTMwNzI5Mn0.Ii4vEV66Ll9d7_DANHvvDkeOFNGoUFQ3NDRmVK2NKds',5),(282,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYWxtYTUzNEBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMjIxMzc2LCJleHAiOjE3NjEzMDc3NzZ9.9dE6NLUGu__H6hNNL4Wq8TjXkzLYUK34PcA5H4Ye7rU',25),(283,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NjEzODQxNDIsImV4cCI6MTc2MTQ3MDU0Mn0.a9qvTGZVXAfqqCWVvAG9Q04qkSuRnCw_7oZ7IOseTEs',5),(284,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMzg0MTgxLCJleHAiOjE3NjE0NzA1ODF9.uRW59DrgDxxfQyoqHGU0wpTcCK1AZ-4VsdZBKI-7068',11),(285,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMzg1OTExLCJleHAiOjE3NjE0NzIzMTF9.u7F-PlGxEHiyit6CAEZP0kNB_XwR7RTz6H9Q4zNlPCE',11),(286,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NjEzODU5NDMsImV4cCI6MTc2MTQ3MjM0M30.tWUp0e96ryVAOKEao_5M8ImihxKeSK5UA3UG_FXd99E',5),(287,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMzg2MjIwLCJleHAiOjE3NjE0NzI2MjB9.W350szC8j75-udev3bQWLcdDC5EwjcGK71oFWZtBwnU',11),(288,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NjEzODY0MzgsImV4cCI6MTc2MTQ3MjgzOH0.eX8qd6NeBcyBAQzqAFxTKvC32KtwTtL32exFhs1R1x0',5),(289,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJyYWhpbUBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMzg2NTIwLCJleHAiOjE3NjE0NzI5MjB9.kuRDqEzu02U_iy0xd7Cp8Wx4jK165ebzW3RBsohCQHk',11),(290,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NjEzODY1NjAsImV4cCI6MTc2MTQ3Mjk2MH0.wyADbgBirscGKHgBNaTfVBCIFCfYLVksp81R_LuBHTs',5),(291,_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NjEzODY3NDEsImV4cCI6MTc2MTQ3MzE0MX0.LQFkcdVgoVmqZlaJCKPyC7Zoy4Tzk83eg7XDFOYdeVU',5),(292,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYWxtYTUzNEBnbWFpbC5jb20iLCJyb2xlIjoiSk9CU0VFS0VSIiwiaWF0IjoxNzYxMzg5MDgyLCJleHAiOjE3NjE0NzU0ODJ9.865io2X1r7O4aiQEH_1LbRj1dRFfV7S88ht427gQBoI',25),(293,_binary '\0','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzYXRoZUBnbWFpbC5jb20iLCJyb2xlIjoiRU1QTE9ZRVIiLCJpYXQiOjE3NjEzODkxMjEsImV4cCI6MTc2MTQ3NTUyMX0.jMVo6uDnkN2gIPN7Hw1VwkVb0C_NwAyvtbZx6RL45is',5);
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
INSERT INTO `training` VALUES (1,'fdsf  fsfsdfds fsd fds fsdfd','1 year','IsDB-BISEW','Java Programming',1),(2,'','1 year','IsDB-BISEW','Java Programming',4),(3,'','1 year','Ganosastho Adhidapter','Nursing',5),(4,'','6 months','World Vision Bangladesh','CESP Facilitator',5),(5,'','1 year','IsDB-BISEW','Java Programmer',6),(6,'','7 days','Jago Foundation','Soft Skill Training',6);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,_binary '','sathekhanom550@gmail.com',_binary '\0','dvgcbn','$2a$10$R5Dew/qQCJCHf3prvm7RjuapSmB5f.zS9VgTu1caQ/LZ9HesIKW2u','12343545','dvgcbn_d3956ff1-a8b3-4e6d-b9c8-215435b5def0','ADMIN'),(5,_binary '','sathe@gmail.com',_binary '\0','Sathe Khanom','$2a$10$gTbal9oVZlZrNDQRI7VzgeLRvEOkC30DtqpaJmsHZnnkVAJ.IVGwm','12342455','Sathe Khanom_c4896e07-561b-48a9-a2cf-8b2e1e66d496','EMPLOYER'),(11,_binary '','rahim@gmail.com',_binary '\0','Abdur Rahim','$2a$10$mipu2PLk5O7LEbEcuk0vpuaT33qU10iXFPU5s431se.xg.8/YP2ae','21432546','Abdur Rahim_aa1a4e5f-ee0c-4427-b186-a737c86f097d','JOBSEEKER'),(12,_binary '','sadiar@gmail.com',_binary '\0','Sadiar Rahman','$2a$10$MGgeOZLLVOuiWZKQpaJ5hOFMAlIb5I.2/EOGWHDI4QNbx6FBz4a9K','124354657','Sadiar Rahman_1d1aa08d-9749-4fdb-8bf9-bf5e32e1534a','JOBSEEKER'),(13,_binary '','reja@gmail.com',_binary '\0','Rejaul Karim','$2a$10$VYV/JF.4jk5wo8TYXK8dwu5Z8DlmHqKX.q7d6uSvw9uNuVeyouNqW','4546757868','Rejaul Karim_492b1176-e133-48c5-8079-936c86cbe798','JOBSEEKER'),(14,_binary '','eiasin@gmail.com',_binary '\0','Eiasin Prodhan','$2a$10$JJFFqr5t7NVIfQ468ObVJuWxtRhQ26iZbH5vbrrflocaZ9DmdLoFC','2143546','Eiasin Prodhan_81100d1f-e6cd-486e-b67a-c0f3a2c7adda','EMPLOYER'),(16,_binary '','parvej@gmail.com',_binary '\0','Parvej Ahmed','$2a$10$Qfjp/BTrd3ri.vyb2iky2ezMqDstuopCnBGleujkVxUKaR2/1.nAS','21434546','Parvej Ahmed_ad91c595-a547-4b4d-8dff-706e61de0b80','EMPLOYER'),(18,_binary '','rakib@gmail.com',_binary '\0','Rakib Hossain ','$2a$10$NAQR3kSMGbwJF4WXzrMQtOUuRFQEcs1VEGguACLIk72wkHkkIIZPe','243565676','Rakib Hossain _caf9e937-e853-445a-8324-d635aa46395d','EMPLOYER'),(21,_binary '','samim@gmail.com',_binary '\0','Shamim Ahmed','$2a$10$Z946FZAagXG9Cp2GMjOlH./xk/m0LI12vPQ9NTeMMBp4e7P67Z1Sa','2143546','Shamim Ahmed_ec6467b7-a4a8-4213-b43a-15922e51e15c','EMPLOYER'),(23,_binary '','xyz@gmail.com',_binary '\0','xcgfgfd','$2a$10$SXQPcOvr.wMtlZB4EFb.HOKTUlO/Wu3hiiYn/dWcIpIOXwgodrY.K','2465767','xcgfgfd_2605b51b-427b-425f-9652-3360e58f12e8','EMPLOYER'),(24,_binary '','jitusalman@gmail.com',_binary '\0','Salman Ahasan Jitu','$2a$10$vCs8NOnxBwCPZLAqTf5PWOLoEwZwIW5xTMVRoipTA5SQ9wHVDU/ry','01777702541','Salman Ahasan Jitu_04e67bca-be48-4093-bb77-d5fdba3f0fcf','JOBSEEKER'),(25,_binary '','salma534@gmail.com',_binary '\0','Salma Akter','$2a$10$pZ4yHT6SLhd8WGzHEO9HruS2zW8WwpbXyh4CHkUaRBY5gshahw0xO','01454543697','Salma Akter_eccaf2b6-545c-4336-97a9-dda9a6410856','JOBSEEKER'),(26,_binary '','sathe234@gmail.com',_binary '\0','Sathe Khanom','$2a$10$F.MsTu1k5X2k.T6AJoNSCeAiq7j1IhHVcyc3l.WH0Mwkd0okdP4c.','01788524563','Sathe Khanom_e79bfa98-26fe-4520-9a9f-4dc04fff3d65','JOBSEEKER'),(27,_binary '','salam543@gmail.com',_binary '\0','Abdus Salam','$2a$10$rWhd72/t3asG/LzKUmUcr.YHXqTVNkPQ96JEihgOGY4lgTpJWOLle','548721235646','Abdus Salam_e417ade1-067c-4736-b630-a00042d686fd','EMPLOYER'),(29,_binary '','fgfxg@gmail.com',_binary '\0','dfgfgg','$2a$10$nwxcdBSEzObNHYdgQoj5UO1Htqu04D.kGiKn1CLaghQO.B/MSgw1y','214657789','dfgfgg_78868cc2-0758-45d5-b935-dd1105efaaee','JOBSEEKER'),(30,_binary '','aaa@aa.aa',_binary '\0','sdfsdfsdfsdfsd','$2a$10$adg3K0YdxmJiWhUEUviwFeHu1ZIbFFg0rWkslUoY0x9NScn0NMVf2','6566','sdfsdfsdfsdfsd_b75ba8d6-1e13-48e0-b85d-f5ed085aca71','EMPLOYER'),(31,_binary '','bbbb@bb.bb',_binary '\0','bbbbbbbb','$2a$10$Ng5kr.faJzrDqkO8FiWbR.Klh815p7RSEhmUyWJdF/7hZrkIF0hHy','545454545','bbbbbbbb_2d38ca99-30f7-4b51-9826-88af3e1bd55c','EMPLOYER');
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

-- Dump completed on 2025-10-25 17:25:41
