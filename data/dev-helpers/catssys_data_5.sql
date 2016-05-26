-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: localhost    Database: catssys
-- ------------------------------------------------------
-- Server version	5.7.12-0ubuntu1

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
-- Dumping data for table `cash_flow_type`
--

LOCK TABLES `cash_flow_type` WRITE;
/*!40000 ALTER TABLE `cash_flow_type` DISABLE KEYS */;
INSERT INTO `cash_flow_type` VALUES (1,'COMIDA','COMIDA',0),
(0, 'MENSALIDADE','Valor de entrada relativo à mensalidade paga por um aluno. Quando o valor for negativo indica que a mensalidade foi alterada ou removida. Este tipo de receita é inserida automaticamente por meio da funcionalidade de manipulação de mensalidades.', 1),(2,'DOAÇÕES','DOAÇÕES',1);
/*!40000 ALTER TABLE `cash_flow_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,NULL,'RECURSOS HUMANOS','glyphicon glyphicon-sunglasses','DESCRIÇÃO DE RECURSOS HUMANOS',1);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `monthly_balance`
--

LOCK TABLES `monthly_balance` WRITE;
/*!40000 ALTER TABLE `monthly_balance` DISABLE KEYS */;
INSERT INTO `monthly_balance` VALUES (1,'2015-06-01','2016-05-09',1000,900,900,500,0,''),(2,'2015-05-01','2016-05-09',825,963,799,852,0,''),(3,'2015-07-01','2016-05-09',654,456,654,456,0,''),(4,'2015-08-01','2016-05-09',987,436,852,698,0,''),(5,'2015-09-05','2016-05-09',963,147,753,159,0,''),(6,'2015-10-03','2016-05-09',856,698,849,458,0,''),(7,'2015-11-06','2016-05-09',489,863,789,963,0,''),(8,'2015-12-05','2016-05-09',895,412,777,888,0,''),(9,'2016-01-01','2016-05-09',666,555,555,444,0,''),(10,'2016-02-26','2016-05-09',998,889,966,775,0,''),(11,'2016-03-24','2016-05-09',369,456,154,452,0,''),(13,'2016-04-22','2016-05-09',111,50,111,50,0,'');
/*!40000 ALTER TABLE `monthly_balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cash_flow`
--

LOCK TABLES `cash_flow` WRITE;
/*!40000 ALTER TABLE `cash_flow` DISABLE KEYS */;
INSERT INTO `cash_flow` VALUES (1,1,1,1,'2015-06-09',500,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(2,1,2,1,'2015-06-07',900,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(3,1,1,2,'2015-05-09',852,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(4,1,2,2,'2015-05-09',799,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(5,1,1,3,'2015-07-09',456,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(6,1,2,3,'2015-07-09',654,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(7,1,2,4,'2015-08-09',852,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(8,1,1,4,'2015-08-12',698,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(9,1,1,5,'2015-09-09',159,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(10,1,2,5,'2015-09-09',753,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(11,1,1,6,'2015-10-09',458,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(12,1,2,6,'2015-10-09',849,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(13,1,1,7,'2015-11-09',963,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(14,1,2,7,'2015-11-09',789,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(15,1,1,8,'2015-12-09',888,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(16,1,2,8,'2015-12-09',777,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(17,1,1,9,'2016-01-09',444,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(18,1,2,9,'2016-01-09',555,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(19,1,1,10,'2016-02-09',775,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(20,1,2,10,'2016-02-09',966,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(21,1,1,11,'2016-03-09',452,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(22,1,2,11,'2016-03-09',154,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(23,1,1,12,'2016-05-09',123,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(24,1,2,12,'2016-05-21',321,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(25,1,1,13,'2016-04-09',50,'RECURSOS HUMANOS','RECURSOS HUMANOS'),(26,1,2,13,'2016-04-09',111,'RECURSOS HUMANOS','RECURSOS HUMANOS');
/*!40000 ALTER TABLE `cash_flow` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-09 21:33:14
