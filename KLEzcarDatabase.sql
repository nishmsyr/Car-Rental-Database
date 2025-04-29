CREATE DATABASE  IF NOT EXISTS `klezcar` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `klezcar`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: klezcar
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `car_license_plate` varchar(20) NOT NULL,
  `car_brand` varchar(100) NOT NULL,
  `car_model` varchar(100) NOT NULL,
  `car_seat_amount` int NOT NULL,
  PRIMARY KEY (`car_license_plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES ('ABF5678','Proton','Preve',5),('BCD1234','Proton','Exora',7),('BYZ5678','Honda','Jazz',5),('CDH8901','Perodua','Kancil',4),('DEF4321','Toyota','Avanza',7),('GHI1234','Honda','City',5),('JJK8901','Proton','X70',5),('JKL8901','Nissan','Almera',5),('KLM1234','Perodua','Bezza',5),('KOP4321','Perodua','Kelisa',5),('MNO4321','Suzuki','Swift',5),('MNP1234','Proton','Iriz',5),('MRS8901','Toyota','Vios',5),('PNQ4321','Perodua','Myvi',5),('STV8901','Perodua','Viva',5),('TIJ8901','Geely','Boyue',5),('VBC1242','Proton','Saga',5),('VFG5678','Perodua','Aruz',7),('VRW5678','Proton','Wira',5),('VZA4321','Chery','Tiggo',5),('WBA5678','Perodua','Axia',5),('WXY5678','Proton','Persona',5);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cust_id` varchar(12) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_phone_num` varchar(12) NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('000416132345','Aina Sofia','0172265098'),('000805022345','Diyana Roslan','0167017890'),('010211087890','Hafizah Ali','0151240776'),('010405065678','Azlan Fauzi','0181002343'),('020108116789','Zakuwan Nazurin','0119012349'),('020312093456','Andrew Fong','0196192342'),('020323128901','Nadzirah Idris','0129057266'),('030612013456','Akumaru Akumin','0196789012'),('030808064567','Zainal Abidin','0137504123'),('040430104567','Fandi Ahmad','0137890123'),('040720073456','Nicholas Jackson','0192376099'),('050209036789','Amri Yahya','0110028755'),('910715091234','Syafiq Hafiz','0173121298'),('920101141234','Nur Aisyah','0174416729'),('930501107890','Hafiz Rahman','0142345678'),('940508044567','Sharifah Aina','0137029851'),('940921034567','Liyana Jasmine','0139130982'),('950306056789','Cole Palmer','0119024487'),('950405122345','Muhammad Iqbal','0165678901'),('950520148901','Firdaus Ahmad','0123456789'),('950918071234','Arif Aiman','0178218654'),('960304045678','Syamer Kutty','0189030384'),('960707087890','Shafiqah Zainal','0161194403'),('960825133456','Ameer Hafeez','0199427604'),('970623061234','Yusof Osman','0174567890'),('970814028901','Amira Zainal','0121145320'),('980103112345','Rizal Ramli','0168025619'),('981115055678','Anis Fahmi','0187720303'),('990102085678','Faridah Ahmad','0188216493'),('990510109933','Ahmad Hakim','0123094480');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` varchar(10) NOT NULL,
  `payment_amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `cust_id` varchar(12) NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `cust_id` (`cust_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES ('1',100.50,'Credit Card','000416132345'),('10',180.50,'Debit Card','040430104567'),('11',95.75,'Cash','040720073456'),('12',175.00,'Credit Card','050209036789'),('13',225.50,'Debit Card','910715091234'),('14',300.75,'Cash','920101141234'),('15',125.25,'Credit Card','930501107890'),('16',80.00,'Cash','940508044567'),('17',210.50,'Credit Card','940921034567'),('18',400.00,'Debit Card','950306056789'),('19',170.75,'Cash','950405122345'),('2',200.00,'Debit Card','000805022345'),('20',50.00,'Credit Card','950520148901'),('21',310.25,'Cash','950918071234'),('22',85.50,'Credit Card','960304045678'),('23',240.00,'Debit Card','960707087890'),('24',190.75,'Cash','960825133456'),('25',105.00,'Credit Card','970623061234'),('26',60.00,'Cash','970814028901'),('27',310.75,'Credit Card','981115055678'),('28',90.50,'Debit Card','980103112345'),('29',260.00,'Cash','990102085678'),('3',150.75,'Cash','010211087890'),('30',175.50,'Credit Card','990510109933'),('31',150.00,'Cash','000416132345'),('32',210.75,'Credit Card','950405122345'),('33',305.00,'Debit Card','970814028901'),('34',185.00,'Cash','960304045678'),('35',100.00,'Credit Card','990510109933'),('36',140.50,'Debit Card','910715091234'),('37',110.00,'Cash','960707087890'),('38',270.25,'Credit Card','920101141234'),('39',200.00,'Debit Card','010211087890'),('4',300.00,'Credit Card','010405065678'),('40',95.00,'Cash','020323128901'),('5',50.25,'Cash','020108116789'),('6',120.00,'Credit Card','020312093456'),('7',90.00,'Debit Card','020323128901'),('8',250.00,'Cash','030612013456'),('9',400.00,'Credit Card','030808064567');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental` (
  `rental_id` varchar(10) NOT NULL,
  `rental_date` varchar(20) NOT NULL,
  `return_date` varchar(20) NOT NULL,
  `cust_id` varchar(12) NOT NULL,
  `staff_id` varchar(10) NOT NULL,
  `car_license_plate` varchar(20) NOT NULL,
  PRIMARY KEY (`rental_id`),
  KEY `cust_id` (`cust_id`),
  KEY `staff_id` (`staff_id`),
  KEY `car_license_plate` (`car_license_plate`),
  CONSTRAINT `rental_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE,
  CONSTRAINT `rental_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE,
  CONSTRAINT `rental_ibfk_3` FOREIGN KEY (`car_license_plate`) REFERENCES `car` (`car_license_plate`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

LOCK TABLES `rental` WRITE;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
INSERT INTO `rental` VALUES ('1','01-01-2025','05-01-2025','000416132345','3','ABF5678'),('10','10-01-2025','14-01-2025','040430104567','5','KOP4321'),('11','11-01-2025','15-01-2025','040720073456','1','MNO4321'),('12','12-01-2025','16-01-2025','050209036789','2','MNP1234'),('13','13-01-2025','17-01-2025','910715091234','3','MRS8901'),('14','14-01-2025','18-01-2025','920101141234','4','PNQ4321'),('15','15-01-2025','19-01-2025','930501107890','5','STV8901'),('16','16-01-2025','20-01-2025','940508044567','1','TIJ8901'),('17','17-01-2025','21-01-2025','940921034567','2','VBC1242'),('18','18-01-2025','22-01-2025','950306056789','3','VFG5678'),('19','19-01-2025','23-01-2025','950405122345','4','VRW5678'),('2','02-01-2025','06-01-2025','000805022345','2','BCD1234'),('20','20-01-2025','24-01-2025','950520148901','5','VZA4321'),('21','21-01-2025','25-01-2025','950918071234','1','WBA5678'),('22','22-01-2025','26-01-2025','960304045678','2','WXY5678'),('23','23-01-2025','27-01-2025','960707087890','3','ABF5678'),('24','24-01-2025','28-01-2025','960825133456','4','BCD1234'),('25','25-01-2025','29-01-2025','970623061234','5','BYZ5678'),('26','26-01-2025','30-01-2025','970814028901','1','CDH8901'),('27','27-01-2025','31-01-2025','980103112345','2','DEF4321'),('28','28-01-2025','01-02-2025','981115055678','3','GHI1234'),('29','29-01-2025','02-02-2025','990102085678','4','JJK8901'),('3','03-01-2025','07-01-2025','010211087890','3','BYZ5678'),('30','30-01-2025','03-02-2025','990510109933','5','JKL8901'),('31','31-01-2025','04-02-2025','000416132345','1','KLM1234'),('32','01-02-2025','05-02-2025','000805022345','2','KOP4321'),('33','02-02-2025','06-02-2025','010211087890','5','MNO4321'),('34','03-02-2025','07-02-2025','010405065678','4','MNP1234'),('35','04-02-2025','08-02-2025','020108116789','4','MRS8901'),('36','05-02-2025','09-02-2025','020312093456','1','PNQ4321'),('37','06-02-2025','10-02-2025','020323128901','4','STV8901'),('38','07-02-2025','11-02-2025','030612013456','3','TIJ8901'),('39','08-02-2025','12-02-2025','030808064567','2','VBC1242'),('4','04-01-2025','08-01-2025','010405065678','2','CDH8901'),('40','09-02-2025','13-02-2025','040430104567','5','VFG5678'),('5','05-01-2025','09-01-2025','020108116789','5','DEF4321'),('6','06-01-2025','10-01-2025','020312093456','3','GHI1234'),('7','07-01-2025','11-01-2025','020323128901','2','JJK8901'),('8','08-01-2025','12-01-2025','030612013456','3','JKL8901'),('9','09-01-2025','13-01-2025','030808064567','4','KLM1234');
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` varchar(10) NOT NULL,
  `staff_name` varchar(100) NOT NULL,
  `staff_phone_num` varchar(12) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('1','Ahmad Hafiz','0123456789'),('2','Nur Aisyah','0134567890'),('3','Hazim Danial','0175678901'),('4','Ravi Kumar','0166789012'),('5','Dominic Tan','0197890123');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-29 18:35:21
