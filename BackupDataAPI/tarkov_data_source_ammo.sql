-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tarkov_data_source
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `ammo`
--

DROP TABLE IF EXISTS `ammo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ammo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `armor_Damage` int DEFAULT NULL,
  `damage` int DEFAULT NULL,
  `caliber` varchar(17) DEFAULT NULL,
  `weight` decimal(5,3) DEFAULT NULL,
  `ammo_Type` varchar(9) DEFAULT NULL,
  `fragmentation_Chance` decimal(6,4) DEFAULT NULL,
  `ricochet_Chance` decimal(5,3) DEFAULT NULL,
  `heavy_Bleed_Modifier` decimal(4,2) DEFAULT NULL,
  `light_Bleed_Modifier` decimal(4,2) DEFAULT NULL,
  `tracer` varchar(5) DEFAULT NULL,
  `tracer_Color` varchar(11) DEFAULT NULL,
  `avg24h_Price` int DEFAULT NULL,
  `last_Low_Price` int DEFAULT NULL,
  `name` varchar(34) DEFAULT NULL,
  `short_Name` varchar(12) DEFAULT NULL,
  `image512px_Link` varchar(59) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ammo`
--

LOCK TABLES `ammo` WRITE;
/*!40000 ALTER TABLE `ammo` DISABLE KEYS */;
INSERT INTO `ammo` VALUES (1,65,51,'Caliber762x35',0.014,'bullet',0.1000,0.300,0.15,0.15,'false','red',0,0,'.300 Blackout AP','AP','https://assets.tarkov.dev/5fd20ff893a8961fc660a954-512.webp'),(2,36,60,'Caliber762x35',0.015,'bullet',0.3000,0.300,0.00,0.00,'false','red',404,91,'.300 Blackout BCP FMJ','BCP FMJ','https://assets.tarkov.dev/5fbe3ffdf8b6a877a729ea82-512.webp'),(3,40,54,'Caliber762x35',0.016,'bullet',0.2000,0.370,0.00,0.00,'true','red',1273,1000,'.300 Blackout M62 Tracer','M62','https://assets.tarkov.dev/619636be6db0f2477964e710-512.webp'),(4,25,72,'Caliber762x35',0.015,'bullet',0.2500,0.100,0.00,0.22,'false','red',832,333,'.300 Blackout V-Max','V-Max','https://assets.tarkov.dev/6196364158ef8c428c287d9f-512.webp'),(5,18,90,'Caliber762x35',0.015,'bullet',0.3500,0.100,0.20,0.00,'false','red',463,290,'.300 Whisper','Whisper','https://assets.tarkov.dev/6196365d58ef8c428c287da1-512.webp'),(6,89,115,'Caliber86x70',0.049,'bullet',0.1300,0.300,0.55,0.20,'false','red',0,0,'.338 Lapua Magnum AP','AP','https://assets.tarkov.dev/5fc382a9d724d907e2077dab-512.webp'),(7,83,122,'Caliber86x70',0.047,'bullet',0.2000,0.400,0.50,0.35,'false','red',0,0,'.338 Lapua Magnum FMJ','FMJ','https://assets.tarkov.dev/5fc275cf85fd526b824a571a-512.webp'),(8,55,196,'Caliber86x70',0.044,'bullet',0.5000,0.400,0.50,0.80,'false','red',0,0,'.338 Lapua Magnum TAC-X','TAC-X','https://assets.tarkov.dev/5fc382b6d6fa9c00c571bbc3-512.webp'),(9,70,142,'Caliber86x70',0.045,'bullet',0.6000,0.400,0.40,0.50,'false','red',1272,790,'.338 Lapua Magnum UCW','UCW','https://assets.tarkov.dev/5fc382c1016cce60e8341b20-512.webp'),(10,43,70,'Caliber9x33R',0.016,'bullet',0.0100,0.065,0.10,0.00,'false','red',605,589,'.357 Magnum FMJ','FMJ','https://assets.tarkov.dev/62330b3ed4dc74626d570b95-512.webp'),(11,20,99,'Caliber9x33R',0.016,'bullet',0.6000,0.025,0.30,0.40,'false','red',499,647,'.357 Magnum Hollow Point','HP','https://assets.tarkov.dev/62330bfadc5883093563729b-512.webp'),(12,28,88,'Caliber9x33R',0.016,'bullet',0.6000,0.055,0.25,0.25,'false','red',519,278,'.357 Magnum JHP','JHP','https://assets.tarkov.dev/62330c18744e5e31df12f516-512.webp'),(13,15,108,'Caliber9x33R',0.015,'bullet',0.2000,0.030,0.20,0.35,'false','red',237,100,'.357 Magnum Soft Point','SP','https://assets.tarkov.dev/62330c40bdd19b369e1e53d1-512.webp'),(14,60,90,'Caliber366TKM',0.019,'bullet',0.0100,0.065,0.10,0.00,'false','red',977,1040,'.366 TKM AP-M','AP-M','https://assets.tarkov.dev/5f0596629e22f464da6bbdd9-512.webp'),(15,40,73,'Caliber366TKM',0.010,'bullet',0.2000,0.100,0.20,0.00,'false','red',356,69,'.366 TKM EKO','EKO','https://assets.tarkov.dev/59e655cb86f77411dc52a77b-512.webp'),(16,48,98,'Caliber366TKM',0.016,'bullet',0.2500,0.065,0.25,0.20,'false','red',48,44,'.366 TKM FMJ','FMJ','https://assets.tarkov.dev/59e6542b86f77411dc52a77a-512.webp'),(17,38,110,'Caliber366TKM',0.016,'bullet',0.4500,0.050,0.10,0.30,'false','red',59,59,'.366 TKM Geksa','Geksa','https://assets.tarkov.dev/59e6658b86f77411d949b250-512.webp'),(18,48,70,'Caliber1143x23ACP',0.015,'bullet',0.0100,0.100,0.00,0.00,'false','red',0,0,'.45 ACP AP','AP','https://assets.tarkov.dev/5efb0cabfb3e451d70735af5-512.webp'),(19,30,105,'Caliber1143x23ACP',0.017,'bullet',0.5000,0.065,0.30,0.00,'false','red',0,190,'.45 ACP Hydra-Shok','HydraShok','https://assets.tarkov.dev/5efb0fc6aeb21837e749c801-512.webp'),(20,37,80,'Caliber1143x23ACP',0.015,'bullet',0.0100,0.065,0.00,0.00,'true','red',0,420,'.45 ACP Lasermatch FMJ','Lasermatch','https://assets.tarkov.dev/5efb0d4f4bc50b58e81710f3-512.webp'),(21,36,76,'Caliber1143x23ACP',0.015,'bullet',0.0100,0.065,0.00,0.00,'false','red',407,298,'.45 ACP Match FMJ','FMJ','https://assets.tarkov.dev/5e81f423763d9f754677bf2e-512.webp'),(22,12,137,'Caliber1143x23ACP',0.019,'bullet',1.0000,0.002,0.20,0.30,'false','red',3000,1500,'.45 ACP RIP','RIP','https://assets.tarkov.dev/5ea2a8e200685063ec28c05a-512.webp'),(23,60,115,'Caliber127x55',0.070,'bullet',0.3000,0.400,0.20,0.30,'false','red',2500,3499,'12.7x55mm PS12','PS12','https://assets.tarkov.dev/5cadf6ddae9215051e1c23b2-512.webp'),(24,22,165,'Caliber127x55',0.044,'bullet',0.7000,0.200,0.30,0.35,'false','red',665,330,'12.7x55mm PS12A','PS12A','https://assets.tarkov.dev/5cadf6e5ae921500113bb973-512.webp'),(25,57,102,'Caliber127x55',0.055,'bullet',0.3000,0.500,0.15,0.00,'false','red',4503,3677,'12.7x55mm PS12B','PS12B','https://assets.tarkov.dev/5cadf6eeae921500134b2799-512.webp'),(26,40,140,'Caliber12g',0.044,'bullet',0.2000,0.100,0.00,0.00,'false','red',353,53,'12/70 \"Poleva-3\" slug','Poleva-3','https://assets.tarkov.dev/5d6e6891a4b9361bd473feea-512.webp'),(27,50,150,'Caliber12g',0.048,'bullet',0.1500,0.100,0.05,0.00,'false','red',71,71,'12/70 \"Poleva-6u\" slug','Poleva-6u','https://assets.tarkov.dev/5d6e689ca4b9361bc8618956-512.webp'),(28,15,37,'Caliber12g',0.044,'buckshot',0.0000,0.000,0.00,0.00,'false','red',0,100,'12/70 5.25mm buckshot','5.25mm','https://assets.tarkov.dev/5d6e6772a4b936088465b17c-512.webp'),(29,26,35,'Caliber12g',0.048,'buckshot',0.0000,0.000,0.00,0.00,'false','red',42,42,'12/70 6.5mm Express buckshot','Express','https://assets.tarkov.dev/5d6e67fba4b9361bc73bc779-512.webp'),(30,26,39,'Caliber12g',0.050,'buckshot',0.0000,0.000,0.00,0.00,'false','red',32,25,'12/70 7mm buckshot','7mm','https://assets.tarkov.dev/560d5e524bdc2d25448b4571-512.webp'),(31,26,50,'Caliber12g',0.059,'buckshot',0.0000,0.000,0.10,0.20,'false','red',375,388,'12/70 8.5mm Magnum buckshot','Magnum','https://assets.tarkov.dev/5d6e6806a4b936088465b17e-512.webp'),(32,65,164,'Caliber12g',0.050,'bullet',0.0300,0.100,0.10,0.00,'false','red',0,0,'12/70 AP-20 armor-piercing slug','AP-20','https://assets.tarkov.dev/5d6e68a8a4b9360b6c0d54e2-512.webp'),(33,46,206,'Caliber12g',0.043,'bullet',0.3800,0.100,0.25,0.35,'false','red',0,0,'12/70 Copper Sabot Premier HP slug','CSP','https://assets.tarkov.dev/5d6e68b3a4b9361bca7e50b5-512.webp'),(34,65,85,'Caliber12g',0.050,'bullet',0.1000,0.100,0.15,0.00,'false','red',85,70,'12/70 Dual Sabot slug','DualSabot','https://assets.tarkov.dev/5d6e68dea4b9361bcc29e659-512.webp'),(35,26,25,'Caliber12g',0.040,'buckshot',0.0000,0.000,0.25,0.25,'false','red',462,478,'12/70 flechette','Flechette','https://assets.tarkov.dev/5d6e6911a4b9361bd5780d52-512.webp'),(36,50,183,'Caliber12g',0.026,'bullet',0.1000,0.100,0.00,0.00,'false','red',150,150,'12/70 FTX Custom Lite slug','FTX','https://assets.tarkov.dev/5d6e68e6a4b9361c140bcfe0-512.webp'),(37,48,190,'Caliber12g',0.055,'bullet',0.1200,0.100,0.10,0.00,'false','red',275,150,'12/70 Grizzly 40 slug','Grizzly 40','https://assets.tarkov.dev/5d6e6869a4b9361c140bcfde-512.webp'),(38,55,167,'Caliber12g',0.050,'bullet',0.2000,0.100,0.15,0.10,'false','red',58,58,'12/70 lead slug','Slug','https://assets.tarkov.dev/58820d1224597753c90aeb13-512.webp'),(39,57,197,'Caliber12g',0.055,'bullet',0.0500,0.100,0.15,0.00,'false','red',2500,2500,'12/70 makeshift .50 BMG slug','.50 BMG','https://assets.tarkov.dev/5d6e68c4a4b9361b93413f79-512.webp'),(40,11,265,'Caliber12g',0.040,'bullet',1.0000,0.010,0.25,0.40,'false','red',398,255,'12/70 RIP','RIP','https://assets.tarkov.dev/5c0d591486f7744c505b416f-512.webp'),(41,12,220,'Caliber12g',0.034,'bullet',0.3900,0.100,0.40,0.30,'false','red',0,0,'12/70 SuperFormance HP slug','SFormance','https://assets.tarkov.dev/5d6e68d1a4b93622fe60e845-512.webp'),(42,35,120,'Caliber20g',0.029,'bullet',0.2000,0.100,0.00,0.00,'false','red',50,49,'20/70 \"Poleva-3\" slug','Poleva-3','https://assets.tarkov.dev/5d6e6a53a4b9361bd473feec-512.webp'),(43,40,135,'Caliber20g',0.032,'bullet',0.1500,0.100,0.10,0.00,'false','red',68,68,'20/70 \"Poleva-6u\" slug','Poleva-6u','https://assets.tarkov.dev/5d6e6a42a4b9364f07165f52-512.webp'),(44,12,26,'Caliber20g',0.028,'buckshot',0.0000,0.000,0.00,0.00,'false','red',299,20,'20/70 5.6mm buckshot','5.6mm','https://assets.tarkov.dev/5d6e695fa4b936359b35d852-512.webp'),(45,13,22,'Caliber20g',0.032,'buckshot',0.0000,0.000,0.00,0.00,'false','red',30,31,'20/70 6.2mm buckshot','6.2mm','https://assets.tarkov.dev/5d6e69b9a4b9361bc8618958-512.webp'),(46,13,23,'Caliber20g',0.032,'buckshot',0.0000,0.000,0.00,0.00,'false','red',39,39,'20/70 7.3mm buckshot','7.3mm','https://assets.tarkov.dev/5d6e69c7a4b9360b6c0d54e4-512.webp'),(47,14,25,'Caliber20g',0.040,'buckshot',0.0000,0.000,0.00,0.00,'false','red',25,25,'20/70 7.5mm buckshot','7.5mm','https://assets.tarkov.dev/5a38ebd9c4a282000d722a5b-512.webp'),(48,13,198,'Caliber20g',0.029,'bullet',1.0000,0.100,0.30,0.20,'false','red',287,249,'20/70 Devastator slug','Devastator','https://assets.tarkov.dev/5d6e6a5fa4b93614ec501745-512.webp'),(49,42,154,'Caliber20g',0.034,'bullet',0.1000,0.100,0.30,0.00,'false','red',364,401,'20/70 Star slug','Star','https://assets.tarkov.dev/5d6e6a05a4b93618084f58d0-512.webp'),(50,75,192,'Caliber23x75',0.080,'bullet',0.2000,0.400,0.00,0.00,'false','red',1000,1000,'23x75mm \"Barrikada\" slug','Barrikada','https://assets.tarkov.dev/5e85aa1a988a8701445df1f5-512.webp'),(51,20,87,'Caliber23x75',0.080,'buckshot',0.0000,0.200,0.00,0.00,'false','red',1122,1500,'23x75mm \"Shrapnel-10\" buckshot','Shrap-10','https://assets.tarkov.dev/5e85a9a6eacf8c039e4e2ac1-512.webp'),(52,20,78,'Caliber23x75',0.080,'buckshot',0.0000,0.200,0.00,0.00,'false','red',399,499,'23x75mm \"Shrapnel-25\" buckshot','Shrap-25','https://assets.tarkov.dev/5f647f31b6238e5dd066e196-512.webp'),(53,0,0,'Caliber23x75',0.070,'flashbang',0.3000,0.400,0.00,0.00,'false','red',0,0,'23x75mm \"Zvezda\" flashbang round','Zvezda','https://assets.tarkov.dev/5e85a9f4add9fe03027d9bf1-512.webp'),(54,60,37,'Caliber26x75',0.070,'bullet',0.0000,1.000,0.00,0.00,'true','yellow',0,0,'26x75mm flare cartridge (Green)','Green','https://assets.tarkov.dev/62389aaba63f32501b1b444f-512.webp'),(55,60,37,'Caliber26x75',0.070,'bullet',0.0000,1.000,0.00,0.00,'true','yellow',0,0,'26x75mm flare cartridge (Red)','Red','https://assets.tarkov.dev/62389ba9a63f32501b1b4451-512.webp'),(56,60,37,'Caliber26x75',0.070,'bullet',0.0000,1.000,0.00,0.00,'true','yellow',21297,22122,'26x75mm flare cartridge (White)','Flare','https://assets.tarkov.dev/62389bc9423ed1685422dc57-512.webp'),(57,60,37,'Caliber26x75',0.070,'bullet',0.0000,1.000,0.00,0.00,'true','yellow',0,0,'26x75mm flare cartridge (Yellow)','Yellow','https://assets.tarkov.dev/62389be94d5d474bf712e709-512.webp'),(58,95,199,'Caliber30x29',0.350,'grenade',0.0000,0.000,0.00,0.00,'false','green',0,0,'30x29mm VOG-30','VOG-30','https://assets.tarkov.dev/5d70e500a4b9364de70d38ce-512.webp'),(59,39,65,'Caliber46x30',0.007,'bullet',0.5000,0.300,0.00,0.00,'false','red',173,110,'4.6x30mm Action SX','Action SX','https://assets.tarkov.dev/5ba26812d4351e003201fef1-512.webp'),(60,46,35,'Caliber46x30',0.007,'bullet',0.1000,0.600,0.00,0.00,'false','red',0,0,'4.6x30mm AP SX','AP SX','https://assets.tarkov.dev/5ba26835d4351e0035628ff5-512.webp'),(61,41,43,'Caliber46x30',0.007,'bullet',0.2000,0.400,0.00,0.00,'false','red',1432,1877,'4.6x30mm FMJ SX','FMJ SX','https://assets.tarkov.dev/5ba2678ad4351e44f824b344-512.webp'),(62,46,45,'Caliber46x30',0.010,'bullet',0.2000,0.500,0.00,0.00,'false','red',0,0,'4.6x30mm Subsonic SX','Subsonic SX','https://assets.tarkov.dev/5ba26844d4351e00334c9475-512.webp'),(63,68,0,'Caliber40mmRU',0.250,'grenade',0.0000,0.000,0.00,0.00,'false','red',16357,7600,'40mm VOG-25','40mm','https://assets.tarkov.dev/5656eb674bdc2d35148b457c-512.webp'),(64,95,199,'Caliber40x46',0.230,'grenade',0.0000,0.000,0.00,0.00,'false','green',0,100000,'40x46mm M381 (HE) grenade','M381','https://assets.tarkov.dev/5ede474b0c226a66f5402622-512.webp'),(65,95,199,'Caliber40x46',0.230,'grenade',0.0000,0.000,0.00,0.00,'false','green',40086,44000,'40x46mm M386 (HE) grenade','M386','https://assets.tarkov.dev/5ede475b549eed7c6d5c18fb-512.webp'),(66,95,199,'Caliber40x46',0.230,'grenade',0.0000,0.000,0.00,0.00,'false','green',52665,35555,'40x46mm M406 (HE) grenade','M406','https://assets.tarkov.dev/5ede4739e0350d05467f73e8-512.webp'),(67,95,199,'Caliber40x46',0.230,'grenade',0.0000,0.000,0.00,0.00,'false','green',0,0,'40x46mm M433 (HEDP) grenade','M433','https://assets.tarkov.dev/5f0c892565703e5c461894e9-512.webp'),(68,95,199,'Caliber40x46',0.230,'grenade',0.0000,0.000,0.00,0.00,'false','green',0,0,'40x46mm M441 (HE) grenade','M441','https://assets.tarkov.dev/5ede47405b097655935d7d16-512.webp'),(69,95,160,'Caliber40x46',0.120,'buckshot',0.0000,0.000,0.00,0.00,'false','green',6295,3200,'40x46mm M576 (MP-APERS) grenade','M576','https://assets.tarkov.dev/5ede475339ee016e8c534742-512.webp'),(70,50,52,'Caliber545x39',0.011,'bullet',0.0200,0.300,0.15,0.20,'false','red',0,0,'5.45x39mm 7N40','7N40','https://assets.tarkov.dev/61962b617c6c7b169525f168-512.webp'),(71,41,45,'Caliber545x39',0.010,'bullet',0.1600,0.360,0.00,0.00,'false','red',643,459,'5.45x39mm BP gs','BP','https://assets.tarkov.dev/56dfef82d2720bbd668b4567-512.webp'),(72,57,40,'Caliber545x39',0.010,'bullet',0.1700,0.380,0.00,0.00,'false','red',0,0,'5.45x39mm BS gs','BS','https://assets.tarkov.dev/56dff026d2720bb8668b4567-512.webp'),(73,35,42,'Caliber545x39',0.010,'bullet',0.1640,0.370,0.00,0.00,'true','tracerRed',0,0,'5.45x39mm BT gs','BT','https://assets.tarkov.dev/56dff061d2720bb5668b4567-512.webp'),(74,30,56,'Caliber545x39',0.010,'bullet',0.2500,0.260,0.00,0.00,'false','red',0,35,'5.45x39mm FMJ','FMJ','https://assets.tarkov.dev/56dff0bed2720bb0668b4567-512.webp'),(75,20,74,'Caliber545x39',0.010,'bullet',0.3500,0.200,0.15,0.15,'false','red',70,65,'5.45x39mm HP','HP','https://assets.tarkov.dev/56dff216d2720bbd668b4568-512.webp'),(76,38,44,'Caliber545x39',0.010,'bullet',0.1700,0.380,0.00,0.00,'false','red',346,350,'5.45x39mm PP gs','PP','https://assets.tarkov.dev/56dff2ced2720bb4668b4567-512.webp'),(77,55,37,'Caliber545x39',0.011,'bullet',0.0200,0.380,0.00,0.00,'false','red',0,0,'5.45x39mm PPBS gs \"Igolnik\"','PPBS','https://assets.tarkov.dev/5c0d5e4486f77478390952fe-512.webp'),(78,28,60,'Caliber545x39',0.010,'bullet',0.3000,0.040,0.00,0.00,'false','red',43,38,'5.45x39mm PRS gs','PRS','https://assets.tarkov.dev/56dff338d2720bbd668b4569-512.webp'),(79,35,48,'Caliber545x39',0.010,'bullet',0.4000,0.400,0.00,0.00,'false','red',173,245,'5.45x39mm PS gs','PS','https://assets.tarkov.dev/56dff3afd2720bba668b4567-512.webp'),(80,34,68,'Caliber545x39',0.010,'bullet',0.4500,0.150,0.10,0.10,'false','red',62,62,'5.45x39mm SP','SP','https://assets.tarkov.dev/56dff421d2720b5f5a8b4567-512.webp'),(81,38,57,'Caliber545x39',0.010,'bullet',0.1600,0.400,0.00,0.00,'true','tracerRed',39,30,'5.45x39mm T gs','T','https://assets.tarkov.dev/56dff4a2d2720bbd668b456a-512.webp'),(82,34,65,'Caliber545x39',0.010,'bullet',0.1000,0.400,0.00,0.00,'false','red',92,86,'5.45x39mm US gs','US','https://assets.tarkov.dev/56dff4ecd2720b5f5a8b4568-512.webp'),(83,33,54,'Caliber556x45NATO',0.012,'bullet',0.5000,0.260,0.00,0.00,'false','red',113,89,'5.56x45mm FMJ','FMJ','https://assets.tarkov.dev/59e6920f86f77411d82aa167-512.webp'),(84,22,79,'Caliber556x45NATO',0.012,'bullet',0.7000,0.200,0.15,0.15,'false','red',80,60,'5.56x45mm HP','HP','https://assets.tarkov.dev/59e6927d86f77411da468256-512.webp'),(85,37,53,'Caliber556x45NATO',0.012,'bullet',0.4000,0.400,0.00,0.00,'false','red',448,169,'5.56x45mm M855','M855','https://assets.tarkov.dev/54527a984bdc2d4e668b4567-512.webp'),(86,52,49,'Caliber556x45NATO',0.012,'bullet',0.3400,0.380,0.00,0.00,'false','red',0,0,'5.56x45mm M855A1','M855A1','https://assets.tarkov.dev/54527ac44bdc2d36668b4567-512.webp'),(87,34,59,'Caliber556x45NATO',0.012,'bullet',0.3280,0.380,0.00,0.00,'true','red',310,200,'5.56x45mm M856','M856','https://assets.tarkov.dev/59e68f6f86f7746c9f75e846-512.webp'),(88,52,54,'Caliber556x45NATO',0.012,'bullet',0.3280,0.380,0.00,0.00,'true','red',0,0,'5.56x45mm M856A1','M856A1','https://assets.tarkov.dev/59e6906286f7746c9f75e847-512.webp'),(89,58,42,'Caliber556x45NATO',0.012,'bullet',0.3200,0.360,0.00,0.00,'false','red',0,0,'5.56x45mm M995','M995','https://assets.tarkov.dev/59e690b686f7746c9f75e848-512.webp'),(90,32,63,'Caliber556x45NATO',0.012,'bullet',0.0300,0.100,0.00,0.00,'false','red',451,558,'5.56x45mm MK 255 Mod 0 (RRLP)','RRLP','https://assets.tarkov.dev/59e6918f86f7746c9f75e849-512.webp'),(91,35,69,'Caliber556x45NATO',0.012,'bullet',0.1500,0.100,0.10,0.10,'false','red',526,339,'5.56x45mm MK 318 Mod 0 (SOST)','SOST','https://assets.tarkov.dev/60194943740c5d77f6705eea-512.webp'),(92,64,38,'Caliber556x45NATO',0.013,'bullet',0.2000,0.480,0.00,0.00,'false','red',0,0,'5.56x45mm SSA AP','SSA AP','https://assets.tarkov.dev/601949593ae8f707c4608daa-512.webp'),(93,11,88,'Caliber556x45NATO',0.011,'bullet',0.9000,0.050,0.20,0.20,'false','red',187,144,'5.56x45mm Warmageddon','Warmage','https://assets.tarkov.dev/5c0d5ae286f7741e46554302-512.webp'),(94,41,58,'Caliber57x28',0.006,'bullet',0.2000,0.600,0.00,0.00,'true','red',1888,1888,'5.7x28mm L191','L191','https://assets.tarkov.dev/5cc80f53e4a949000e1ea4f8-512.webp'),(95,7,98,'Caliber57x28',0.006,'bullet',1.0000,0.050,0.15,0.15,'false','red',426,349,'5.7x28mm R37.F','R37.F','https://assets.tarkov.dev/5cc86832d7f00c000d3a6e6c-512.webp'),(96,14,81,'Caliber57x28',0.006,'bullet',0.7000,0.100,0.20,0.10,'false','red',761,399,'5.7x28mm R37.X','R37.X','https://assets.tarkov.dev/5cc86840d7f00c002412c56c-512.webp'),(97,37,54,'Caliber57x28',0.007,'bullet',0.2000,0.300,0.00,0.00,'false','red',0,0,'5.7x28mm SB193','SB193','https://assets.tarkov.dev/5cc80f67e4a949035e43bbba-512.webp'),(98,43,49,'Caliber57x28',0.006,'bullet',0.2000,0.600,0.00,0.00,'false','red',0,0,'5.7x28mm SS190','SS190','https://assets.tarkov.dev/5cc80f38e4a949001152b560-512.webp'),(99,22,62,'Caliber57x28',0.007,'bullet',0.5000,0.200,0.00,0.00,'false','red',899,800,'5.7x28mm SS197SR','SS197SR','https://assets.tarkov.dev/5cc80f8fe4a949033b0224a2-512.webp'),(100,15,74,'Caliber57x28',0.006,'bullet',0.8000,0.200,0.00,0.00,'false','red',1270,1400,'5.7x28mm SS198LF','SS198LF','https://assets.tarkov.dev/5cc80f79e4a949033c7343b2-512.webp'),(101,32,58,'Caliber762x25TT',0.010,'bullet',0.2500,0.065,0.00,0.00,'false','red',0,0,'7.62x25mm TT AKBS','AKBS','https://assets.tarkov.dev/5735fdcd2459776445391d61-512.webp'),(102,29,60,'Caliber762x25TT',0.010,'bullet',0.2500,0.065,0.00,0.00,'false','red',61,55,'7.62x25mm TT FMJ43','FMJ43','https://assets.tarkov.dev/5735ff5c245977640e39ba7e-512.webp'),(103,28,64,'Caliber762x25TT',0.010,'bullet',0.3500,0.050,0.10,0.15,'false','red',150,150,'7.62x25mm TT LRN','LRN','https://assets.tarkov.dev/573601b42459776410737435-512.webp'),(104,27,66,'Caliber762x25TT',0.010,'bullet',0.3500,0.050,0.10,0.15,'false','red',0,0,'7.62x25mm TT LRNPC','LRNPC','https://assets.tarkov.dev/573602322459776445391df1-512.webp'),(105,32,58,'Caliber762x25TT',0.010,'bullet',0.2500,0.065,0.00,0.00,'false','red',255,255,'7.62x25mm TT P gl','P','https://assets.tarkov.dev/5736026a245977644601dc61-512.webp'),(106,36,50,'Caliber762x25TT',0.010,'bullet',0.2000,0.100,0.00,0.00,'false','red',0,0,'7.62x25mm TT Pst gzh','Pst','https://assets.tarkov.dev/573603562459776430731618-512.webp'),(107,34,55,'Caliber762x25TT',0.010,'bullet',0.1660,0.100,0.00,0.00,'true','tracerRed',0,0,'7.62x25mm TT PT gzh','PT','https://assets.tarkov.dev/573603c924597764442bd9cb-512.webp'),(108,63,58,'Caliber762x39',0.010,'bullet',0.1200,0.315,0.00,0.00,'false','red',0,0,'7.62x39mm BP gzh','BP','https://assets.tarkov.dev/59e0d99486f7744a32234762-512.webp'),(109,35,87,'Caliber762x39',0.016,'bullet',0.2625,0.175,0.15,0.15,'false','red',800,1000,'7.62x39mm HP','HP','https://assets.tarkov.dev/59e4d3d286f774176a36250a-512.webp'),(110,76,47,'Caliber762x39',0.012,'bullet',0.0500,0.435,0.10,0.10,'false','red',0,0,'7.62x39mm MAI AP','MAI AP','https://assets.tarkov.dev/601aa3d2b2bcb34913271e6d-512.webp'),(111,52,57,'Caliber762x39',0.016,'bullet',0.2500,0.350,0.00,0.00,'false','red',166,144,'7.62x39mm PS gzh','PS','https://assets.tarkov.dev/5656d7c34bdc2d9d198b4587-512.webp'),(112,46,64,'Caliber762x39',0.010,'bullet',0.1200,0.350,0.00,0.00,'true','red',102,71,'7.62x39mm T-45M1 gzh','T-45M1','https://assets.tarkov.dev/59e4cf5286f7741778269d8a-512.webp'),(113,42,56,'Caliber762x39',0.010,'bullet',0.0750,0.358,0.00,0.00,'false','red',774,400,'7.62x39mm US gzh','US','https://assets.tarkov.dev/59e4d24686f7741776641ac7-512.webp'),(114,33,88,'Caliber762x51',0.022,'bullet',0.2500,0.200,0.00,0.00,'false','red',331,275,'7.62x51mm BCP FMJ','BCP FMJ','https://assets.tarkov.dev/5e023e53d4353e3302577c4c-512.webp'),(115,83,70,'Caliber762x51',0.024,'bullet',0.1300,0.300,0.00,0.00,'false','red',0,0,'7.62x51mm M61','M61','https://assets.tarkov.dev/5a6086ea4f39f99cd479502f-512.webp'),(116,75,79,'Caliber762x51',0.024,'bullet',0.1400,0.380,0.00,0.00,'true','green',0,0,'7.62x51mm M62 Tracer','M62','https://assets.tarkov.dev/5a608bf24f39f98ffc77720e-512.webp'),(117,66,80,'Caliber762x51',0.024,'bullet',0.1700,0.380,0.00,0.00,'false','red',2615,1900,'7.62x51mm M80','M80','https://assets.tarkov.dev/58dd3ad986f77403051cba8f-512.webp'),(118,85,67,'Caliber762x51',0.024,'bullet',0.1300,0.280,0.00,0.00,'false','red',0,0,'7.62x51mm M993','M993','https://assets.tarkov.dev/5efb0c1bd79ff02a1f5e68d9-512.webp'),(119,40,67,'Caliber762x51',0.023,'bullet',0.2000,0.500,0.00,0.00,'false','red',449,111,'7.62x51mm TCW SP','TCW SP','https://assets.tarkov.dev/5e023e6e34d52a55c3304f71-512.webp'),(120,20,107,'Caliber762x51',0.021,'bullet',0.7000,0.200,0.20,0.20,'false','red',999,500,'7.62x51mm Ultra Nosler','Ultra Nosler','https://assets.tarkov.dev/5e023e88277cce2b522ff2b1-512.webp'),(121,88,72,'Caliber762x54R',0.025,'bullet',0.0830,0.340,0.00,0.00,'false','red',0,0,'7.62x54mm R BS gs','BS','https://assets.tarkov.dev/5e023d48186a883be655e551-512.webp'),(122,87,78,'Caliber762x54R',0.024,'bullet',0.0810,0.265,0.00,0.00,'true','green',0,0,'7.62x54mm R BT gzh','BT','https://assets.tarkov.dev/5e023d34e8a400319a28ed44-512.webp'),(123,78,81,'Caliber762x54R',0.024,'bullet',0.1800,0.390,0.00,0.00,'false','red',337,307,'7.62x54mm R LPS gzh','LPS','https://assets.tarkov.dev/5887431f2459777e1612938f-512.webp'),(124,84,84,'Caliber762x54R',0.024,'bullet',0.0830,0.285,0.00,0.00,'false','red',1337,1333,'7.62x54mm R PS gzh','PS','https://assets.tarkov.dev/59e77a2386f7742ee578960a-512.webp'),(125,87,75,'Caliber762x54R',0.024,'bullet',0.0800,0.285,0.00,0.00,'false','red',0,0,'7.62x54mm R SNB gzh','SNB','https://assets.tarkov.dev/560d61e84bdc2da74d8b4571-512.webp'),(126,83,82,'Caliber762x54R',0.025,'bullet',0.1800,0.300,0.00,0.00,'true','green',445,258,'7.62x54mm R T-46M gzh','T-46M','https://assets.tarkov.dev/5e023cf8186a883be655e54f-512.webp'),(127,28,53,'Caliber9x18PM',0.010,'bullet',0.1700,0.095,0.10,0.15,'false','red',69,68,'9x18mm PM BZhT gzh','BZhT','https://assets.tarkov.dev/573718ba2459775a75491131-512.webp'),(128,16,50,'Caliber9x18PM',0.011,'bullet',0.2500,0.065,0.00,0.10,'false','red',21,13,'9x18mm PM P gzh','P','https://assets.tarkov.dev/573719762459775a626ccbc1-512.webp'),(129,30,40,'Caliber9x18PM',0.007,'bullet',0.1600,0.090,0.00,0.00,'false','red',580,599,'9x18mm PM PBM gzh','PBM','https://assets.tarkov.dev/573719df2459775a626ccbc2-512.webp'),(130,15,61,'Caliber9x18PM',0.009,'bullet',0.3500,0.050,0.00,0.15,'false','red',54,54,'9x18mm PM PPe gzh','PPe','https://assets.tarkov.dev/57371b192459775a9f58a5e0-512.webp'),(131,22,59,'Caliber9x18PM',0.010,'bullet',0.1660,0.100,0.00,0.15,'true','red',309,250,'9x18mm PM PPT gzh','PPT','https://assets.tarkov.dev/57371e4124597760ff7b25f1-512.webp'),(132,16,58,'Caliber9x18PM',0.011,'bullet',0.3000,0.005,0.00,0.15,'false','red',0,0,'9x18mm PM PRS gs','PRS','https://assets.tarkov.dev/57371eb62459776125652ac1-512.webp'),(133,16,55,'Caliber9x18PM',0.010,'bullet',0.2500,0.030,0.00,0.15,'false','red',157,30,'9x18mm PM PS gs PPO','PS PPO','https://assets.tarkov.dev/57371f2b24597761224311f1-512.webp'),(134,13,54,'Caliber9x18PM',0.008,'bullet',0.3500,0.065,0.00,0.15,'false','red',0,25,'9x18mm PM PSO gzh','PSO','https://assets.tarkov.dev/57371f8d24597761006c6a81-512.webp'),(135,26,50,'Caliber9x18PM',0.010,'bullet',0.2000,0.100,0.00,0.00,'false','red',0,55,'9x18mm PM Pst gzh','Pst','https://assets.tarkov.dev/5737201124597760fc4431f1-512.webp'),(136,5,69,'Caliber9x18PM',0.012,'bullet',0.4000,0.010,0.00,0.10,'false','red',422,250,'9x18mm PM PSV','PSV','https://assets.tarkov.dev/5737207f24597760ff7b25f2-512.webp'),(137,26,65,'Caliber9x18PM',0.011,'bullet',0.0200,0.050,0.00,0.00,'false','red',248,200,'9x18mm PM RG028 gzh','RG028','https://assets.tarkov.dev/573720e02459776143012541-512.webp'),(138,5,77,'Caliber9x18PM',0.011,'bullet',0.0200,0.050,0.10,0.25,'false','red',413,249,'9x18mm PM SP7 gzh','SP7','https://assets.tarkov.dev/57372140245977611f70ee91-512.webp'),(139,2,67,'Caliber9x18PM',0.009,'bullet',0.6000,0.050,0.10,0.15,'false','red',366,289,'9x18mm PM SP8 gzh','SP8','https://assets.tarkov.dev/5737218f245977612125ba51-512.webp'),(140,33,58,'Caliber9x18PM',0.009,'bullet',0.1700,0.075,0.00,0.00,'false','red',260,249,'9x18mm PMM PstM gzh','PstM','https://assets.tarkov.dev/57371aab2459775a77142f22-512.webp'),(141,48,52,'Caliber9x19PARA',0.009,'bullet',0.0500,0.200,0.00,0.00,'false','red',0,0,'9x19mm AP 6.3','AP 6.3','https://assets.tarkov.dev/5c925fa22e221601da359b7b-512.webp'),(142,33,58,'Caliber9x19PARA',0.006,'bullet',0.1500,0.050,0.00,0.00,'true','tracerGreen',85,75,'9x19mm Green Tracer','GT','https://assets.tarkov.dev/5c3df7d588a4501f290594e5-512.webp'),(143,38,70,'Caliber9x19PARA',0.015,'bullet',0.2500,0.065,0.20,0.20,'false','red',364,344,'9x19mm Luger CCI','Luger CCI','https://assets.tarkov.dev/5a3c16fe86f77452b62de32a-512.webp'),(144,55,52,'Caliber9x19PARA',0.009,'bullet',0.0500,0.200,0.00,0.00,'false','red',0,0,'9x19mm PBP gzh','PBP','https://assets.tarkov.dev/5efb0da7a29a85116f6ea05f-512.webp'),(145,32,59,'Caliber9x19PARA',0.010,'bullet',0.2500,0.065,0.00,0.00,'false','red',0,52,'9x19mm PSO gzh','PSO','https://assets.tarkov.dev/58864a4f2459770fcc257101-512.webp'),(146,33,54,'Caliber9x19PARA',0.005,'bullet',0.1500,0.050,0.00,0.00,'false','red',428,70,'9x19mm Pst gzh','Pst','https://assets.tarkov.dev/56d59d3ad2720bdb418b4577-512.webp'),(147,22,85,'Caliber9x19PARA',0.013,'bullet',0.1000,0.100,0.22,0.15,'false','red',632,499,'9x19mm QuakeMaker','QuakeMaker','https://assets.tarkov.dev/5efb0e16aeb21837e749c7ff-512.webp'),(148,11,102,'Caliber9x19PARA',0.013,'bullet',1.0000,0.002,0.10,0.30,'false','red',620,575,'9x19mm RIP','RIP','https://assets.tarkov.dev/5c0d56a986f774449d5de529-512.webp'),(149,47,63,'Caliber9x21',0.023,'bullet',0.2000,0.400,0.00,0.00,'true','red',1136,380,'9x21mm BT gzh','BT','https://assets.tarkov.dev/5a26ac0ec4a28200741e1e18-512.webp'),(150,44,65,'Caliber9x21',0.023,'bullet',0.3000,0.200,0.10,0.15,'false','red',466,499,'9x21mm P gzh','P','https://assets.tarkov.dev/5a26abfac4a28232980eabff-512.webp'),(151,63,80,'Caliber9x21',0.023,'bullet',0.3500,0.200,0.10,0.15,'false','red',239,215,'9x21mm PE gzh','PE','https://assets.tarkov.dev/5a26ac06c4a282000c5a90a8-512.webp'),(152,46,49,'Caliber9x21',0.023,'bullet',0.2000,0.400,0.00,0.00,'false','red',504,350,'9x21mm PS gzh','PS','https://assets.tarkov.dev/5a269f97c4a282000b151807-512.webp'),(153,68,60,'Caliber9x39',0.023,'bullet',0.1000,0.500,0.00,0.00,'false','red',0,0,'9x39mm BP gs','BP','https://assets.tarkov.dev/5c0d688c86f77413ae3407b2-512.webp'),(154,72,62,'Caliber9x39',0.024,'bullet',0.1000,0.480,0.12,0.10,'false','red',2211,1899,'9x39mm PAB-9 gs','PAB-9','https://assets.tarkov.dev/61962d879bb3d20b0946d385-512.webp'),(155,60,71,'Caliber9x39',0.023,'bullet',0.2000,0.400,0.10,0.00,'false','red',570,399,'9x39mm SP-5 gs','SP-5','https://assets.tarkov.dev/57a0dfb82459774d3078b56c-512.webp'),(156,60,58,'Caliber9x39',0.023,'bullet',0.1000,0.500,0.10,0.10,'false','red',0,0,'9x39mm SP-6 gs','SP-6','https://assets.tarkov.dev/57a0e5022459774d1673f889-512.webp'),(157,55,68,'Caliber9x39',0.023,'bullet',0.2000,0.400,0.20,0.10,'false','red',0,0,'9x39mm SPP gs','SPP','https://assets.tarkov.dev/5c0d668f86f7747ccb7f13b2-512.webp');
/*!40000 ALTER TABLE `ammo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-23  3:23:28
