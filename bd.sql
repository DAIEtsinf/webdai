-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dai
-- ------------------------------------------------------
-- Server version	5.5.46-0+deb8u1

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
-- Table structure for table `account_emailaddress`
--

DROP TABLE IF EXISTS `account_emailaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `account_emailaddress_e8701ad4` (`user_id`),
  CONSTRAINT `account_emailaddress_user_id_28998f677ea85946_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_emailaddress`
--

LOCK TABLES `account_emailaddress` WRITE;
/*!40000 ALTER TABLE `account_emailaddress` DISABLE KEYS */;
INSERT INTO `account_emailaddress` VALUES (1,'prietofontcuberta@gmail.com',1,1,1),(8,'prietofontcuberta@hotmail.com',1,1,25),(9,'joprfon@gmail.com',1,1,26),(10,'prietofontcuberta@tonto.com',0,1,27),(11,'prietofontcuberta@asdd.com',0,1,28),(12,'pasfdgg@asd.es',0,1,29),(13,'prietofontcuberta@gfgrfg.com',0,1,30),(14,'prietofontcuberta@ghrtht.com',0,1,31),(15,'prietofontcuberta@hhtyhrtj.com',0,1,32),(16,'prietofontcuberta@asdf.com',0,1,33),(17,'prietofontcuberta@hrthtrth.com',0,1,34),(18,'prietofontcuberta@print.com',0,1,35),(19,'prietofontcuberta@gmail.compresociallogin.com',0,1,36),(20,'prietofontcuberta@aaaa.com',0,1,37),(21,'prietofontcuberta@gmail.com1',0,1,38),(22,'prietofontcuberta@gmail.com21',0,1,39),(23,'prietofontcuberta@gmail.com12354',0,1,40),(24,'prietofontcuberta@gmail.com123456123456',0,1,41),(25,'prietofontcuberta@gmai.es',0,1,42),(26,'prietofontcuberta@gmail.com123456',0,1,43),(27,'prietofontcuberta@gmail.com1234567',0,1,44),(28,'prietofontcuberta@gmail.com12345671234567',0,1,45),(29,'prietofontcuberta@gmail.com123456712345671234567',0,1,46),(30,'prietofontcuberta@gmail.com147258',0,1,47),(31,'prietofontcuberta@inf.upv.es',0,1,48),(32,'prietofontcuberta@gmail.comprietofontcuberta',0,1,49),(33,'prietofontcuberta@gmail.comprietofontcubertaprietofontcuberta',0,1,50),(34,'prietofontcuberta@gmail.comprietofonre',0,1,51),(35,'prietofontcuberta@gmail.com987654',0,1,52),(36,'prietofontcube325425rta@inf.upv.es',0,1,53),(37,'prietofontcuberta@gmail.com98765432',0,1,54),(38,'accounts@inf.upv.es',0,1,56),(39,'prietofontcuberta@gmail.comprietofontcuberta2423565',0,1,57),(40,'prietofontcuberrgrehe@infaaa.upv.es',0,1,59),(41,'asdfsdg@ifn.upv.es',0,1,60),(42,'prietofontcuberta@gmail.comtyjtyjtyj',0,1,61);
/*!40000 ALTER TABLE `account_emailaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_emailconfirmation`
--

DROP TABLE IF EXISTS `account_emailconfirmation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `sent` datetime DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`),
  KEY `account_emailconfirmation_6f1edeac` (`email_address_id`),
  CONSTRAINT `acc_email_address_id_6074d37f93b32e90_fk_account_emailaddress_id` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_emailconfirmation`
--

LOCK TABLES `account_emailconfirmation` WRITE;
/*!40000 ALTER TABLE `account_emailconfirmation` DISABLE KEYS */;
INSERT INTO `account_emailconfirmation` VALUES (1,'2016-02-08 16:59:15','2016-02-08 16:59:15','qjiepuhzih88axqse0ns4fp9tjfsxfzkjeybvkv9z4wmxcugb2fim7v8h3xbbhp7',1),(2,'2016-02-08 17:02:49','2016-02-08 17:02:49','vqrclaxxvxnwr1s6iztmfgg18gvzvdp7htpy9agsrslsb8q7o1igh46up8ihnaz7',1),(9,'2016-02-09 20:55:07','2016-02-09 20:55:07','cltsorklrfvic2cy57sjvyasem4asmoi0u0evua4a0jyuitemoy8ba8wybmj3kkj',8),(10,'2016-02-10 10:43:57','2016-02-10 10:43:57','wkmblfekj1lijmfjflft2kaaqmirvcy3nbefw7wmkpqxbvsvx1abzsxkraigukmg',9),(11,'2016-02-27 00:29:35','2016-02-27 00:29:35','yfxtadkztrxoir5izjqlkbw47gwtcc1d4hyzn0ebb3fuaw7cwa2hbhiioqpburuw',10),(12,'2016-02-27 00:36:04','2016-02-27 00:36:04','ykdjbtoigogz4pqi8ss9ijea3cxrrzuzm91isqznmqmmkb8f8uk9mbrqrxipfctr',11),(13,'2016-02-27 00:38:33','2016-02-27 00:38:33','gx3ub2kqwgh71g6dfkljrm3k8eizeb2px1bxdnl81goungjm4muauqlpqqnkdlp2',12),(14,'2016-02-27 01:03:12','2016-02-27 01:03:12','zrpkigqmv86lxd5ubzjg76tpb0mygurtk9g90rgdlgjx4ndky5b8nf0eyo9oqvwt',13),(15,'2016-02-27 01:04:19','2016-02-27 01:04:19','pqqymdsu5cs0vewsbdtykysrhgu8rzql9kdf5b4ectr2kir5t1x6ygwbi6nyvcx9',14),(16,'2016-02-27 01:04:56','2016-02-27 01:04:56','pipaq6o4xihwzyrhdzzi1jtk9nclixnqyzfin78ai99j7k3wwnjvs6f5x42ty3nm',15),(17,'2016-02-27 01:07:01','2016-02-27 01:07:01','h8r3coofpd6t6ztl2i3fhejlf6braddnfznbuedcxtnf3gyl81kr1ph7mersyz4s',16),(18,'2016-02-27 01:08:00','2016-02-27 01:08:00','limc7sov1xupbokrs2fvfwiv3pymni9rfehdgixndwryj7dgf77yr7foyqupmvhm',17),(19,'2016-02-27 01:09:23','2016-02-27 01:09:23','wqdslkhidoddzzyjls1u9gdn05z35nnpcnndhcopwtxs2zstf3f1ry9vgkh181ld',18),(20,'2016-02-27 01:13:40','2016-02-27 01:13:41','fmaaieu5frurc9evdfbvkowskh3xnujc3ywiwsamvcotwywgxrbqtzmqz8adkxpg',19),(21,'2016-02-27 01:14:13','2016-02-27 01:14:13','8ricxubmla0r3aiwd6yuk6ke8vpftw7zv25xyfutmyeikofwdmauuialqnda7ywx',20),(22,'2016-03-03 17:09:02','2016-03-03 17:09:02','sgzeaqzftnwnf2xito8ed0x4tpfbjx6qm1suf9evr8nlg3ydyml5sapbhueqaoaq',21),(23,'2016-03-03 17:12:20','2016-03-03 17:12:20','plqw7ocdreysbwh2keyumd3bsvqqwqzpdbn2ua25grbellrzg8jrbkvfxelljiqm',22),(24,'2016-03-03 17:15:39','2016-03-03 17:15:39','u4wxjxi0r0khxdg9esshh0654sohzj26tfqmwgvmmvtwugmqnj3vzxmp9laxegxf',23),(25,'2016-03-03 17:16:12','2016-03-03 17:16:12','jukmsc84ihsm4kacyavz4uknwc1e47dqjcfyzxlwxsgpgc15ejoxdy2ir066xcmp',24),(26,'2016-03-03 17:20:52','2016-03-03 17:20:52','qli1jnmrjw1sqf7uxv4usf0ehenmagnz6pbrgb2rq4fal3dracaqewaahb0euuqz',25),(27,'2016-03-03 17:21:25','2016-03-03 17:21:25','tiagr4hzy7yedd76eepnif5zjgk3rvzbrpikfxacy3dqwyopnt0mow8qhcbrenm9',26),(28,'2016-03-03 17:26:31','2016-03-03 17:26:31','hfo8ujcp8fo0ef2vxgyy6vj9wxtrof1fewlazrghc0bb6mqbesiudeofjboglybe',27),(29,'2016-03-03 17:28:22','2016-03-03 17:28:22','ivgfovkn0nmkqyts41e2upskbkfasngbxgeygx9ds2szelag0f0uyqefu4uwrxnx',28),(30,'2016-03-03 17:32:20','2016-03-03 17:32:20','vpfkfk3trdzvtyemijglqbsuzzwwpdhb6jdosyc2hnxdvxzqe3pygzcxf0kelfcb',29),(31,'2016-03-03 17:34:21','2016-03-03 17:34:21','futbai59t5gzg2uodsfe3c9wq4d0rc43ve81ikhmn4ad8ooztxivmxe8wneiyhg0',30),(32,'2016-03-03 18:16:28','2016-03-03 18:16:28','6euus5n2rajffvqiotbhoq4nsnlkdm5jvcasoomicd440od11hy6rsqy2ho7mkel',31),(33,'2016-03-03 18:16:49','2016-03-03 18:16:49','v3pyp9stsait072w0pintt8k2dp7mhbqijti0xfmwmwtrc7hotxhuanexohumyk1',32),(34,'2016-03-03 18:17:03','2016-03-03 18:17:03','43yw8lzbfcwz3ueapqkugvrks3a36ljt2lopqcsrvigylsw3wfhqfns4chw2mjs5',33),(35,'2016-03-03 18:17:44','2016-03-03 18:17:44','yiinwc4nukqaeeacwaqnxar1fvr23vj09yorgb7rpuvlirwzjwokosqgscltrxeo',34),(36,'2016-03-03 18:18:16','2016-03-03 18:18:16','zbqmlchzrtvkdgmemqmi20xrjne2ygh3ot8v44bx8gsz3rxvxnghansvui2nyqr5',35),(37,'2016-03-03 18:19:19','2016-03-03 18:19:19','y7mmuq2jfeqlpp3dyk3m8jr31b1of1b1e8htevq1o1oumxzj0eywhebpr2rfg7jf',36),(38,'2016-03-03 18:31:01','2016-03-03 18:31:01','5xph7txbzglzni99t8c1888abhwjsvxf15ju00vrrvyilvxb8cd952gutjuohmfe',37),(39,'2016-03-03 18:35:24','2016-03-03 18:35:24','yxdbzszw1yidcjnm0h7phduundtzrqjxmagqx0djg856gwug0gocwsuqaijdphv8',38),(40,'2016-03-03 18:39:05','2016-03-03 18:39:05','rhvaqzz8gfnvzif25zqziqgb4mevqvih4e2jyojkjw1lwgvafu308v9gq2uqwxal',39),(41,'2016-03-03 18:46:38','2016-03-03 18:46:38','ji8o0zrqc9jtjkwmpocixsdbiko6lqo0ujwsviieihzc83bs8lfqxa8ysdrt75rv',40),(42,'2016-03-22 23:09:58','2016-03-22 23:09:58','8tf3lgh8fvdpibg1kivtyplo6ic68x8cknzj5gp9rmbxjb8tvhfwlaizm4tycmml',41),(43,'2016-03-22 23:58:43','2016-03-22 23:58:43','dllmcuzvtkrsnr3rjvacoil2hhxcye9ycwajuj6krfynbkrk81talfhyrk0tors9',42);
/*!40000 ALTER TABLE `account_emailconfirmation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_userprofile`
--

DROP TABLE IF EXISTS `accounts_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `direccion` varchar(250) NOT NULL,
  `telefono` int(10) unsigned,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `accounts_userprofile_user_id_8fecbc6caccf00d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_userprofile`
--

LOCK TABLES `accounts_userprofile` WRITE;
/*!40000 ALTER TABLE `accounts_userprofile` DISABLE KEYS */;
INSERT INTO `accounts_userprofile` VALUES (1,'profiles/admin/map_of_menorca.jpg',1,'',12);
/*!40000 ALTER TABLE `accounts_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_group_permission_group_id_29e966a6f56b6f87_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group__permission_id_47569da45b0522e4_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`),
  CONSTRAINT `auth__content_type_id_49d0430ba8335b16_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(22,'Can add area',8,'add_area'),(23,'Can change area',8,'change_area'),(24,'Can delete area',8,'delete_area'),(25,'Can add entrada',9,'add_entrada'),(26,'Can change entrada',9,'change_entrada'),(27,'Can delete entrada',9,'delete_entrada'),(28,'Can add frases_celebres',10,'add_frases_celebres'),(29,'Can change frases_celebres',10,'change_frases_celebres'),(30,'Can delete frases_celebres',10,'delete_frases_celebres'),(31,'Can add faq',11,'add_faq'),(32,'Can change faq',11,'change_faq'),(33,'Can delete faq',11,'delete_faq'),(34,'Can add user profile',12,'add_userprofile'),(35,'Can change user profile',12,'change_userprofile'),(36,'Can delete user profile',12,'delete_userprofile'),(37,'Can add site',13,'add_site'),(38,'Can change site',13,'change_site'),(39,'Can delete site',13,'delete_site'),(40,'Can add email address',14,'add_emailaddress'),(41,'Can change email address',14,'change_emailaddress'),(42,'Can delete email address',14,'delete_emailaddress'),(43,'Can add email confirmation',15,'add_emailconfirmation'),(44,'Can change email confirmation',15,'change_emailconfirmation'),(45,'Can delete email confirmation',15,'delete_emailconfirmation'),(46,'Can add social application',16,'add_socialapp'),(47,'Can change social application',16,'change_socialapp'),(48,'Can delete social application',16,'delete_socialapp'),(49,'Can add social account',17,'add_socialaccount'),(50,'Can change social account',17,'change_socialaccount'),(51,'Can delete social account',17,'delete_socialaccount'),(52,'Can add social application token',18,'add_socialtoken'),(53,'Can change social application token',18,'change_socialtoken'),(54,'Can delete social application token',18,'delete_socialtoken'),(61,'Can add evento',21,'add_evento'),(62,'Can change evento',21,'change_evento'),(63,'Can delete evento',21,'delete_evento'),(64,'Can add actividad',22,'add_actividad'),(65,'Can change actividad',22,'change_actividad'),(66,'Can delete actividad',22,'delete_actividad');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$lYctpyZipKF8$ncd1ON6UVh20UcM+F8Kaj/diUOubM1y+Pi4TBywRxIQ=','2016-04-26 14:59:19',1,'admin','JoseR','Prieto Fontcuberta','',1,1,'2015-08-08 19:50:56'),(25,'pbkdf2_sha256$20000$i6sBs4GnGYf3$xiynXDnm1wJavQSj7tc4fYeHNeCtxiyVB1/GQMablic=','2016-02-09 20:56:08',0,'prietofontcuberta','JoseR','','',0,1,'2016-02-09 20:55:07'),(26,'pbkdf2_sha256$20000$xHlAHbKxa8OF$YfjNH0g/IV/3XkONV1P/gO/OEmNwzNN4g/Zl3gdOsd8=',NULL,0,'joprfon','','','joprfon@gmail.com',0,1,'2016-02-10 10:43:56'),(27,'pbkdf2_sha256$20000$UTOHTbBd2U80$kHtVPkMAFyJJY6/oCAoeyXOJmzrOSjGrPFzHv1QvRcA=',NULL,0,'prietofontcuberta2','','','prietofontcuberta@tonto.com',0,1,'2016-02-27 00:29:35'),(28,'pbkdf2_sha256$20000$Pjvppxc2hTJP$0CmAJfcysayCW7xrkhh/a/9XtcwHt5s9mP2YMBqsk/M=',NULL,0,'prietofontcuberta3','','','prietofontcuberta@asdd.com',0,1,'2016-02-27 00:36:04'),(29,'pbkdf2_sha256$20000$KX59OpA4FmcS$sMj4fEmB91TAYzMqFqBBWJXHZiVkbHPW0P5GrSXJQ84=',NULL,0,'pasfdgg','','','pasfdgg@asd.es',0,1,'2016-02-27 00:38:33'),(30,'pbkdf2_sha256$20000$zXeC3tP4FoNQ$jWht2esZh1tM2KNlTItLjByutscet0sY+Vc1dLQsK/Q=',NULL,0,'prietofontcuberta4','','','prietofontcuberta@gfgrfg.com',0,1,'2016-02-27 01:03:12'),(31,'pbkdf2_sha256$20000$hYFnq54529fS$FeOmLqskueJTNQVm2TPPzTl93CpcGxV6otI9+vrwNIY=',NULL,0,'prietofontcuberta5','','','prietofontcuberta@ghrtht.com',0,1,'2016-02-27 01:04:19'),(32,'pbkdf2_sha256$20000$3p6P7dDWYrnK$Xrc1ga+aaQHdyzxoU+9CdAAT/systQfEGL2XdbbHFZM=',NULL,0,'prietofontcuberta6','','','prietofontcuberta@hhtyhrtj.com',0,1,'2016-02-27 01:04:56'),(33,'pbkdf2_sha256$20000$YZJH9sOjbt3N$Rv+RfVrWIbnpqwyOUp8pfordWpFFeWLXRFAF9nJ+SrQ=',NULL,0,'prietofontcuberta7','','','prietofontcuberta@asdf.com',0,1,'2016-02-27 01:07:01'),(34,'pbkdf2_sha256$20000$dRCK4OOIXT4e$eNidku9U2jIneIZfF9bZ/z+q/GjI3JeV/kgvtP7DaJI=',NULL,0,'prietofontcuberta8','','','prietofontcuberta@hrthtrth.com',0,1,'2016-02-27 01:07:59'),(35,'pbkdf2_sha256$20000$LYIyieowKqKx$H1QML2flIrTKSU/uAJdSmTtEaxunXl6D2+zxB14cVGg=',NULL,0,'prietofontcuberta9','','','prietofontcuberta@print.com',0,1,'2016-02-27 01:09:23'),(36,'pbkdf2_sha256$20000$x1K2LWGv2AMD$Stwg8UUez0qLVLP2gNhZg7N8bB/QKlRqsual4THqqmg=',NULL,0,'prietofontcuberta10','','','prietofontcuberta@gmail.compresociallogin.com',0,1,'2016-02-27 01:13:40'),(37,'pbkdf2_sha256$20000$TH6bONhp8UNX$LMTuxRMNETApi4naJyQAnr1sCFtK64+O+dJa15yRc6w=',NULL,0,'prietofontcuberta11','','','prietofontcuberta@aaaa.com',0,1,'2016-02-27 01:14:13'),(38,'pbkdf2_sha256$20000$m7fPGvOPs5lJ$lBKJkTAR6tDzR9t/DEXyYLwzwOnuk6nsTjxoN5hwckU=',NULL,0,'prietofontcuberta12','','','prietofontcuberta@gmail.com1',0,1,'2016-03-03 17:09:01'),(39,'pbkdf2_sha256$20000$MweN0KRZxbtO$+rj22QZPVo+SzY73YVgpmQegpuijBlctAnD0ZRnFCTg=',NULL,0,'prietofontcuberta13','','','prietofontcuberta@gmail.com21',0,1,'2016-03-03 17:12:19'),(40,'pbkdf2_sha256$20000$ipXEIRx19RWT$bFQ1LNa3/9WuXvV0LZzskRXbB4VN1KmPxI8e7M3xLJ8=',NULL,0,'prietofontcuberta14','','','prietofontcuberta@gmail.com12354',0,1,'2016-03-03 17:15:39'),(41,'pbkdf2_sha256$20000$MCZDuLzJfiA1$8/lDY7Kkgte2jvIbTDEyruEwAHSmK3Ph4ERuqITUOEQ=',NULL,0,'prietofontcuberta15','','','prietofontcuberta@gmail.com123456123456',0,1,'2016-03-03 17:16:12'),(42,'pbkdf2_sha256$20000$ew54Bv7B3aYc$8441LCpT9u3/ukksYNr8H+/jdzaj6lWEubFdK+R3ymQ=',NULL,0,'prietofontcuberta16','','','prietofontcuberta@gmai.es',0,1,'2016-03-03 17:20:52'),(43,'pbkdf2_sha256$20000$UBDQ8U05GCPp$ZaW8B53Tqyu37iiB17gE5sObSaJwQO3gCmH1wZL0rI8=',NULL,0,'prietofontcuberta17','','','prietofontcuberta@gmail.com123456',0,1,'2016-03-03 17:21:24'),(44,'pbkdf2_sha256$20000$HvAORzVPEoYv$D67HKUTPPbx8YF51BT+3xIe/5RKjzEvnKAwOkAfHl+0=',NULL,0,'prietofontcuberta18','','','prietofontcuberta@gmail.com1234567',0,1,'2016-03-03 17:26:30'),(45,'pbkdf2_sha256$20000$ajSJCefTJ8sk$LVKTtfI1UeDDssFJ7TlwFdAjaivQYsie62IF/7WJ9Lw=',NULL,0,'prietofontcuberta19','','','prietofontcuberta@gmail.com12345671234567',0,1,'2016-03-03 17:28:21'),(46,'pbkdf2_sha256$20000$EKPffU8KUqus$xX85nwQjAJNkrjygcG2fmuJHVbFIXPYkBJH7uDxaApg=',NULL,0,'prietofontcuberta20','','','prietofontcuberta@gmail.com123456712345671234567',0,1,'2016-03-03 17:32:20'),(47,'pbkdf2_sha256$20000$H3qaC1UvC8mr$H5++D+FLFNlUjwOV8XSUZbJi8Djm8/5kwZsYOS8FNHI=',NULL,0,'prietofontcuberta21','','','prietofontcuberta@gmail.com147258',0,1,'2016-03-03 17:34:21'),(48,'pbkdf2_sha256$20000$5rtPtJliHPFf$I2bJTt9iGQ/fNWhDDdFlcnSVLQqGJl290iVkxAv3U+g=',NULL,0,'prietofontcuberta22','','','prietofontcuberta@inf.upv.es',0,1,'2016-03-03 18:16:28'),(49,'pbkdf2_sha256$20000$ldjmOqN1KHty$90tXmp9M1u9EQO/fIbsGE5I2Fh1D7NT11NPwyz7uoZs=',NULL,0,'prietofontcuberta23','','','prietofontcuberta@gmail.comprietofontcuberta',0,1,'2016-03-03 18:16:49'),(50,'pbkdf2_sha256$20000$IXFL7HddSznZ$UZNtcyIHk1JRWpirhlhleqxLt2qNfdwDxLhKT8rP36s=',NULL,0,'prietofontcuberta24','','','prietofontcuberta@gmail.comprietofontcubertaprietofontcuberta',0,1,'2016-03-03 18:17:03'),(51,'pbkdf2_sha256$20000$qknwVzFcA2XF$QdJ0aADx7U0KGulLrKuIgv0N1fNM7yKDT+xOja1LyLQ=',NULL,0,'prietofontcuberta25','','','prietofontcuberta@gmail.comprietofonre',0,1,'2016-03-03 18:17:44'),(52,'pbkdf2_sha256$20000$lNre14LqW11T$x1/DtUnxJjZj2aHb1PPTMSUvTieaQzcbHDD6j5nWIrU=',NULL,0,'prietofontcuberta26','','','prietofontcuberta@gmail.com987654',0,1,'2016-03-03 18:18:15'),(53,'pbkdf2_sha256$20000$nbsfLmB6mveW$KxyTzP3P+JaC/ZzT2N2zMYE+RvVgUUq0wCfEdEPhHm8=',NULL,0,'prietofontcube325425rta','','','prietofontcube325425rta@inf.upv.es',0,1,'2016-03-03 18:19:19'),(54,'pbkdf2_sha256$20000$RgDXKtRGcm8K$ylFaDUBxXhGwmJeLHFOH7b3bLf5BfpY2bUUuQcmxjEo=',NULL,0,'prietofontcuberta27','','','prietofontcuberta@gmail.com98765432',0,1,'2016-03-03 18:31:01'),(55,'pbkdf2_sha256$20000$QBdvAKiN6Jhr$9LUCZOCEJ5YgQU0Iuu7EmMTqn4VGdkO1fxByzNTYItY=',NULL,0,'user','','',NULL,0,1,'2016-03-03 18:32:59'),(56,'pbkdf2_sha256$20000$euYybxSbgyyV$6Jzf21UQfzSNwmCGp2LNrQsnP2BkZdCMCk4+9xX/pGs=',NULL,0,'accounts','','','accounts@inf.upv.es',0,1,'2016-03-03 18:35:23'),(57,'pbkdf2_sha256$20000$YscreJJACMKL$JlwOzJI8Sj+texax/wa4a7BRHi3vgeFV7CeASMkDmvM=',NULL,0,'prietofontcuberta28','','','prietofontcuberta@gmail.comprietofontcuberta2423565',0,1,'2016-03-03 18:39:05'),(58,'pbkdf2_sha256$20000$Nn6ENXuMyBtK$UrRabAIa4VmLrxn8aP6mhmQxVL5XDv7m0v8g/10cQCk=',NULL,0,'user2','','','',0,1,'2016-03-03 18:44:17'),(59,'pbkdf2_sha256$20000$7BMFCl9HFGoj$Gvb5R1AvTbdUnyCnWmAdSbGlY6SKgNUFA5JS6DrhqD0=',NULL,0,'prietofontcuberrgrehe','','','prietofontcuberrgrehe@infaaa.upv.es',0,1,'2016-03-03 18:46:38'),(60,'pbkdf2_sha256$20000$MEmTgnxRIFsw$+4wM8gxwnOw8rDvlOMpK2XeANqwHk9NYjVER2faSrqE=',NULL,0,'asdfsdg','','','asdfsdg@ifn.upv.es',0,1,'2016-03-22 23:09:58'),(61,'pbkdf2_sha256$20000$W1UVagxIwzwQ$qmQkjMVnbCo3AlbFXpj6LwnXgkAYEOUXevbafpMzcn0=',NULL,0,'prietofontcuberta29','','','prietofontcuberta@gmail.comtyjtyjtyj',0,1,'2016-03-22 23:58:43');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_20d2bbb0c6a4d96f_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_bacd319c911e51e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_user_user_permissi_user_id_3e135173787424e0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_u_permission_id_7d81c12153600bc4_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_21dca783475f2aa0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_153f478207d468af_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (2,'2015-08-08 20:07:50','1','Desarrollo',1,'',9,1),(3,'2015-08-09 14:37:54','1','Jose ',1,'',12,1),(4,'2015-08-09 15:47:25','2',' ',3,'',12,1),(5,'2015-08-09 15:47:41','2','hjhjb',3,'',4,1),(6,'2015-08-10 00:21:40','1','Desarrollo',2,'Changed noticia.',9,1),(7,'2015-08-19 15:33:14','6','AreaDos',3,'',8,1),(8,'2015-08-19 15:50:59','7','Hiooo',3,'',8,1),(9,'2015-09-17 06:54:25','2','Club del videjuego',1,'',9,1),(10,'2015-09-17 12:23:03','3','kjij´pih',1,'',9,1),(11,'2016-01-23 18:59:27','6','Area53',3,'',8,1),(12,'2016-01-23 22:34:49','4','El titulo es el mejor del mundo',2,'Changed titulo, noticia and resumen.',9,1),(13,'2016-01-23 22:35:52','4','aaaaa',2,'Changed titulo.',9,1),(14,'2016-01-23 22:36:54','6','Este es mi titulo',3,'',9,1),(15,'2016-01-23 22:37:09','5','aaa',3,'',9,1),(16,'2016-01-23 22:37:09','4','aaaaa',3,'',9,1),(17,'2016-01-25 01:08:25','5','',3,'',4,1),(18,'2016-01-25 01:10:52','7','',3,'',4,1),(19,'2016-01-25 01:12:19','8','',3,'',4,1),(20,'2016-01-25 01:12:37','9','',3,'',4,1),(21,'2016-01-25 01:14:49','10','',3,'',4,1),(22,'2016-01-25 01:17:53','11','',3,'',4,1),(23,'2016-01-25 01:19:05','12','',3,'',4,1),(24,'2016-01-25 22:56:25','1','admin',2,'Changed photo.',12,1),(25,'2016-01-26 00:20:56','5','JoseR',3,'',4,1),(26,'2016-01-26 00:22:23','6','JNights',3,'',4,1),(27,'2016-01-26 00:47:58','7','',3,'',4,1),(28,'2016-01-26 00:50:35','8','',3,'',4,1),(29,'2016-01-26 01:03:22','1','admin',2,'Changed photo.',12,1),(30,'2016-01-26 01:38:25','10','12345',3,'',4,1),(31,'2016-01-26 01:38:25','2','AlbaT',3,'',4,1),(32,'2016-01-26 01:38:25','4','AlexAlex',3,'',4,1),(33,'2016-01-26 01:38:25','3','joprfon',3,'',4,1),(34,'2016-01-26 01:38:25','9','Jose_R2',3,'',4,1),(35,'2016-01-26 01:45:04','12','AlexAlex',3,'',4,1),(36,'2016-01-26 01:45:04','11','JNights',3,'',4,1),(37,'2016-01-26 18:06:50','8','Aregjjko',3,'',8,1),(38,'2016-01-26 20:43:49','28','jtyjtyj',3,'',9,1),(39,'2016-01-26 20:43:49','26','uykuykuy',3,'',9,1),(40,'2016-01-26 20:43:50','25','liuliul',3,'',9,1),(41,'2016-01-26 20:43:50','24','kyuk',3,'',9,1),(42,'2016-01-26 20:43:50','20','hjrtjrtyjj',3,'',9,1),(43,'2016-01-26 20:43:50','19','ñ.oiñoiñoiñoi´p',3,'',9,1),(44,'2016-01-26 20:43:50','18','kyuiuluiuil',3,'',9,1),(45,'2016-01-26 20:43:50','17','kyuiuluiuil',3,'',9,1),(46,'2016-01-26 20:43:50','16','kyuiuluiuil',3,'',9,1),(47,'2016-01-26 20:43:50','15','aaaaaaaarfgrhreehh',3,'',9,1),(48,'2016-01-26 20:43:50','14','aaaaaaaarfgrhreehh',3,'',9,1),(49,'2016-01-26 20:43:50','13','aaaaaaaarfgrhreehh',3,'',9,1),(50,'2016-01-26 20:43:50','9','bdfbfd',3,'',9,1),(51,'2016-01-27 18:35:30','1','admin',2,'Changed first_name and last_name.',4,1),(52,'2016-01-27 18:46:57','1','admin',2,'Changed photo.',12,1),(53,'2016-01-27 18:59:51','1','admin',2,'Changed photo.',12,1),(54,'2016-01-27 19:08:44','1','admin',2,'Changed photo.',12,1),(55,'2016-01-27 20:22:10','1','admin',2,'Changed photo.',12,1),(56,'2016-02-08 17:08:07','13','12345',3,'',4,1),(57,'2016-02-08 17:08:07','15','GipsyKing',3,'',4,1),(58,'2016-02-08 17:08:07','14','JNights',3,'',4,1),(59,'2016-02-08 17:08:07','16','joprfon',3,'',4,1),(60,'2016-02-08 17:08:07','17','jose',3,'',4,1),(61,'2016-02-08 17:13:14','18','prietofontcuberta',3,'',4,1),(62,'2016-02-08 17:14:35','19','prietofontcuberta',3,'',4,1),(63,'2016-02-08 19:38:46','20','prietofontcuberta',3,'',4,1),(64,'2016-02-08 19:38:46','21','prietofontcuberta2',3,'',4,1),(65,'2016-02-08 19:40:59','23','',3,'',4,1),(66,'2016-02-08 19:40:59','22','jose',3,'',4,1),(67,'2016-02-09 20:54:56','24','prietofontcuberta',3,'',4,1),(68,'2016-02-18 18:49:23','1','Evento object',1,'',21,1),(69,'2016-02-18 18:49:33','2','Evento object',1,'',21,1),(70,'2016-02-18 18:49:40','3','Evento object',1,'',21,1),(71,'2016-02-18 19:08:19','1','Charlas Android',1,'',22,1),(72,'2016-02-18 19:33:50','2','Monologo',1,'',22,1),(73,'2016-02-18 19:34:30','3','Bote de chuches',1,'',22,1),(74,'2016-02-18 19:35:00','4','Mercadillo',1,'',22,1),(75,'2016-02-18 19:35:58','5','Lanzamiento de huevos',1,'',22,1),(76,'2016-02-18 19:36:57','6','Premio al mejor algo',1,'',22,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_5a2c9fcb0c043134_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (14,'account','emailaddress'),(15,'account','emailconfirmation'),(12,'accounts','userprofile'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(13,'sites','site'),(17,'socialaccount','socialaccount'),(16,'socialaccount','socialapp'),(18,'socialaccount','socialtoken'),(22,'web','actividad'),(8,'web','area'),(9,'web','entrada'),(21,'web','evento'),(11,'web','faq'),(10,'web','frases_celebres');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-08-08 19:49:12'),(2,'auth','0001_initial','2015-08-08 19:49:15'),(3,'accounts','0001_initial','2015-08-08 19:49:16'),(4,'admin','0001_initial','2015-08-08 19:49:17'),(5,'contenttypes','0002_remove_content_type_name','2015-08-08 19:49:18'),(6,'auth','0002_alter_permission_name_max_length','2015-08-08 19:49:18'),(7,'auth','0003_alter_user_email_max_length','2015-08-08 19:49:18'),(8,'auth','0004_alter_user_username_opts','2015-08-08 19:49:18'),(9,'auth','0005_alter_user_last_login_null','2015-08-08 19:49:18'),(10,'auth','0006_require_contenttypes_0002','2015-08-08 19:49:18'),(11,'sessions','0001_initial','2015-08-08 19:49:19'),(12,'web','0001_initial','2015-08-08 19:49:20'),(13,'web','0002_auto_20150623_1658','2015-08-08 19:49:21'),(14,'web','0003_remove_area_pub_date','2015-08-08 19:49:21'),(15,'web','0004_auto_20150630_0248','2015-08-08 19:49:22'),(16,'web','0005_auto_20150711_1323','2015-08-08 19:49:22'),(17,'web','0006_auto_20160123_2152','2016-01-23 21:53:29'),(18,'web','0007_auto_20160123_2239','2016-01-23 22:39:58'),(19,'web','0008_auto_20160125_2229','2016-01-25 22:32:33'),(20,'accounts','0002_auto_20160125_2254','2016-01-25 22:54:54'),(21,'web','0009_auto_20160126_1902','2016-01-26 19:02:11'),(22,'web','0010_remove_entrada_imagen','2016-01-26 19:13:41'),(23,'accounts','0003_auto_20160127_2000','2016-01-27 20:00:08'),(24,'accounts','0003_auto_20160127_2111','2016-01-27 21:11:07'),(25,'account','0001_initial','2016-02-08 16:56:32'),(26,'account','0002_email_max_length','2016-02-08 16:56:32'),(27,'sites','0001_initial','2016-02-08 16:56:33'),(28,'socialaccount','0001_initial','2016-02-08 16:56:35'),(29,'socialaccount','0002_token_max_lengths','2016-02-08 16:56:36'),(30,'web','0011_auto_20160218_1022','2016-02-18 10:22:42'),(31,'web','0011_auto_20160218_1845','2016-02-18 18:45:45'),(32,'web','0012_auto_20160226_2353','2016-02-26 23:53:55');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7k00h0owsfvh3xza1o6qimmefzxgz3jh','YWJlYjY0YmQ0YzY0YTVlMjA1Y2Y5YjkzN2M0ZWUxZGM1ZDBlODI2Mjp7Il9zZXNzaW9uX2V4cGlyeSI6MTgxNDQwMCwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWxsYXV0aC5hY2NvdW50LmF1dGhfYmFja2VuZHMuQXV0aGVudGljYXRpb25CYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfbWVzc2FnZXMiOiJbW1wiX19qc29uX21lc3NhZ2VcIiwwLDI1LFwiU3VjY2Vzc2Z1bGx5IHNpZ25lZCBpbiBhcyBhZG1pbi5cIl1dIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWU5Y2I4ZjZiMTc3ZDkzM2FmMGQ0ZjQ4MGI0OTQyMzZkYzZlMDQ4ZiJ9','2016-05-17 14:59:19'),('9ccf9a7n0redomih1dxpod231vtaqpd8','OWJkMmIzMGJkN2RlNDdkNTQ1NDEzNDEwOTE4ZDJiMjYxMzEzY2JiODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2hhc2giOiJiOTRjNDQ3ZjIyZWRlNThhMjUwMzUyMmM0OTdkZjcwY2YzMDU0ODJkIn0=','2015-12-14 01:42:21'),('9wh0mbdydyb03b8zs0e6vunayi803tjb','NDZiNmIxMmQzYjQ0ZDhjMmQ5MmNmYWNhOGRjZmI1YmE1MTRkN2QxZTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg2ZGYzNjJjZDA0ZDEyMTJjYzNiOGYyMTNlOTRiZmM1YjY0YzVmZDEiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2015-09-03 13:33:28'),('b18oe0nx8b3relkoaosl2qgxigr1r3gl','YjFjZDQ1ZWQ4M2NhYTIwMzFiNWNiYWI0NTkwZDU4ZGU4M2VjMjA3OTp7Il9tZXNzYWdlcyI6IltbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJTdWNjZXNzZnVsbHkgc2lnbmVkIGluIGFzIGFkbWluLlwiXV0iLCJfYXV0aF91c2VyX2hhc2giOiJhZTljYjhmNmIxNzdkOTMzYWYwZDRmNDgwYjQ5NDIzNmRjNmUwNDhmIiwiX3Nlc3Npb25fZXhwaXJ5IjowLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImFsbGF1dGguYWNjb3VudC5hdXRoX2JhY2tlbmRzLkF1dGhlbnRpY2F0aW9uQmFja2VuZCJ9','2016-04-21 15:12:35'),('dtoqnadepm5is7i9gv183u65g8suu6zg','M2U1YTgzMTQ3ZDc4MWJjMzI4ODkxOGE4ODRlMTEyOGNmZDQzOGQxYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYmQ0ODU4YzY2ODk1NzJjNjlhNGU5YjgxNGZiNTI2NGU0YmVkODVmIn0=','2015-12-11 22:21:30'),('fa371dyoluikqj0pggh0zup11pt8w48n','MmRiOTM0MDM0NTQ0MGFkMmJhNmQ5Yzg3NTk5Njg1ZmM4MDM0NmZiNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTczMTkzNTBjMWVhZThmZjlkM2EyNWVlOWJlOWVmZGJhYjllOWU4MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2016-02-09 14:29:15'),('fxutrvbs7vffl79ss7grap6qq6k23pty','NDQ1OWE1ZDgzMzZlN2RiNDM3NjkyMzE1ZTBjZjBmNGI4NDQ1YWZjZTp7Il9tZXNzYWdlcyI6IltbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjAsXCJDb25maXJtYXRpb24gZS1tYWlsIHNlbnQgdG8gcHJpZXRvZm9udGN1YmVydGFAZ21haWwuY29tMTIzNDU2NzEyMzQ1NjcuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyMCxcIkNvbmZpcm1hdGlvbiBlLW1haWwgc2VudCB0byBwcmlldG9mb250Y3ViZXJ0YUBnbWFpbC5jb20xMjM0NTY3MTIzNDU2NzEyMzQ1NjcuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyMCxcIkNvbmZpcm1hdGlvbiBlLW1haWwgc2VudCB0byBwcmlldG9mb250Y3ViZXJ0YUBnbWFpbC5jb20xNDcyNTguXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyMCxcIkNvbmZpcm1hdGlvbiBlLW1haWwgc2VudCB0byBwcmlldG9mb250Y3ViZXJ0YUBpbmYudXB2LmVzLlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjAsXCJDb25maXJtYXRpb24gZS1tYWlsIHNlbnQgdG8gcHJpZXRvZm9udGN1YmVydGFAZ21haWwuY29tcHJpZXRvZm9udGN1YmVydGEuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyMCxcIkNvbmZpcm1hdGlvbiBlLW1haWwgc2VudCB0byBwcmlldG9mb250Y3ViZXJ0YUBnbWFpbC5jb21wcmlldG9mb250Y3ViZXJ0YXByaWV0b2ZvbnRjdWJlcnRhLlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjAsXCJDb25maXJtYXRpb24gZS1tYWlsIHNlbnQgdG8gcHJpZXRvZm9udGN1YmVydGFAZ21haWwuY29tcHJpZXRvZm9ucmUuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyMCxcIkNvbmZpcm1hdGlvbiBlLW1haWwgc2VudCB0byBwcmlldG9mb250Y3ViZXJ0YUBnbWFpbC5jb205ODc2NTQuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyMCxcIkNvbmZpcm1hdGlvbiBlLW1haWwgc2VudCB0byBwcmlldG9mb250Y3ViZTMyNTQyNXJ0YUBpbmYudXB2LmVzLlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjAsXCJDb25maXJtYXRpb24gZS1tYWlsIHNlbnQgdG8gcHJpZXRvZm9udGN1YmVydGFAZ21haWwuY29tOTg3NjU0MzIuXCJdLFtcIl9fanNvbl9tZXNzYWdlXCIsMCwyMCxcIkNvbmZpcm1hdGlvbiBlLW1haWwgc2VudCB0byBhY2NvdW50c0BpbmYudXB2LmVzLlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjAsXCJDb25maXJtYXRpb24gZS1tYWlsIHNlbnQgdG8gcHJpZXRvZm9udGN1YmVydGFAZ21haWwuY29tcHJpZXRvZm9udGN1YmVydGEyNDIzNTY1LlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjAsXCJDb25maXJtYXRpb24gZS1tYWlsIHNlbnQgdG8gcHJpZXRvZm9udGN1YmVycmdyZWhlQGluZmFhYS51cHYuZXMuXCJdXSIsImFjY291bnRfdXNlciI6IjFuIiwiYWNjb3VudF92ZXJpZmllZF9lbWFpbCI6bnVsbH0=','2016-03-17 18:46:38'),('h2yrm7tfpvzhtmeet1pf3d8wacpf62rb','M2ZhZDkwZGNjMGJlNzNmMDQ3ZDQwYTdhZjAxZjJjZTExMThiYTAwZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxNzMxOTM1MGMxZWFlOGZmOWQzYTI1ZWU5YmU5ZWZkYmFiOWU5ZTgwIn0=','2016-02-22 19:38:39'),('ik7pg54mi4k6uretqlj981nbndvllsb4','MzBjZjE0ZWM0ZjY0ZjZlZmYyMGQzZjVkNmJjYTUyYWJmY2Y5MGU5YTp7ImFjY291bnRfdmVyaWZpZWRfZW1haWwiOm51bGwsIl9tZXNzYWdlcyI6IltbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjUsXCJZb3UgaGF2ZSBzaWduZWQgb3V0LlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjAsXCJDb25maXJtYXRpb24gZS1tYWlsIHNlbnQgdG8gYXNkZnNkZ0BpZm4udXB2LmVzLlwiXSxbXCJfX2pzb25fbWVzc2FnZVwiLDAsMjAsXCJDb25maXJtYXRpb24gZS1tYWlsIHNlbnQgdG8gcHJpZXRvZm9udGN1YmVydGFAZ21haWwuY29tdHlqdHlqdHlqLlwiXV0iLCJhY2NvdW50X3VzZXIiOiIxcCJ9','2016-04-05 23:58:43'),('p99k3zwrutynicylpi7pszq4o29g4qr7','MWI4NzlkNzJhMWE3Mjc3NWNhMjk4OGE4ZDIzMDk3ZTVjNzA5OWY3ODp7Il9hdXRoX3VzZXJfaGFzaCI6ImFlOWNiOGY2YjE3N2Q5MzNhZjBkNGY0ODBiNDk0MjM2ZGM2ZTA0OGYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-02-23 20:54:48'),('ra1v6zsnq5v4bo3w7dgv5o3wqg74jz7b','MGQxMGU2MTJiZWRmYTI3MzA4OTA3NmM5YzAxZjk0OTUyYjVmZDg1Zjp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfaGFzaCI6IjAyYWQ1ODRlYTliZmE3NTI1OTkxODg2NTk3ZDBkOTRkZjI2ZGRhNzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2016-02-09 14:29:13'),('wgm5bosdgbkdvq11fvvkafq0g21nc72s','MDFlMzBmNzY0ODEwZDIxNzk1NmVhNjA1MGZhZmY4NWZjYThhNjM4MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjJiZDQ4NThjNjY4OTU3MmM2OWE0ZTliODE0ZmI1MjY0ZTRiZWQ4NWYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2015-10-01 12:29:39');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialaccount_socialaccount`
--

DROP TABLE IF EXISTS `socialaccount_socialaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) DEFAULT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `socialaccount_socialaccount_provider_6f2447d3aad0adae_uniq` (`provider`,`uid`),
  KEY `socialaccount_socialaccount_e8701ad4` (`user_id`),
  CONSTRAINT `socialaccount_socialacc_user_id_18cc03c6eb952c16_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialaccount_socialaccount`
--

LOCK TABLES `socialaccount_socialaccount` WRITE;
/*!40000 ALTER TABLE `socialaccount_socialaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialaccount_socialaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialaccount_socialapp`
--

DROP TABLE IF EXISTS `socialaccount_socialapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) DEFAULT NULL,
  `secret` varchar(191) DEFAULT NULL,
  `key` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialaccount_socialapp`
--

LOCK TABLES `socialaccount_socialapp` WRITE;
/*!40000 ALTER TABLE `socialaccount_socialapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialaccount_socialapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialaccount_socialapp_sites`
--

DROP TABLE IF EXISTS `socialaccount_socialapp_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialaccount_socialapp_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `socialapp_id` (`socialapp_id`,`site_id`),
  KEY `socialaccount_socialapp_sites_fe95b0a0` (`socialapp_id`),
  KEY `socialaccount_socialapp_sites_9365d6e7` (`site_id`),
  CONSTRAINT `socialaccount_sociala_site_id_6f24ba88532450f9_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `soci_socialapp_id_6653239d67cd70a9_fk_socialaccount_socialapp_id` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialaccount_socialapp_sites`
--

LOCK TABLES `socialaccount_socialapp_sites` WRITE;
/*!40000 ALTER TABLE `socialaccount_socialapp_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialaccount_socialapp_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialaccount_socialtoken`
--

DROP TABLE IF EXISTS `socialaccount_socialtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `socialaccount_socialtoken_app_id_24cccfacd8e10078_uniq` (`app_id`,`account_id`),
  KEY `socialaccount_socialtoken_8a089c2a` (`account_id`),
  KEY `socialaccount_socialtoken_f382adfe` (`app_id`),
  CONSTRAINT `socialacco_app_id_170541d3d5779a39_fk_socialaccount_socialapp_id` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`),
  CONSTRAINT `so_account_id_74bf3fc73c7d57ed_fk_socialaccount_socialaccount_id` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialaccount_socialtoken`
--

LOCK TABLES `socialaccount_socialtoken` WRITE;
/*!40000 ALTER TABLE `socialaccount_socialtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialaccount_socialtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_actividad`
--

DROP TABLE IF EXISTS `web_actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_actividad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `noticia` longtext NOT NULL,
  `resumen` longtext NOT NULL,
  `fecha` date NOT NULL,
  `id_evento_id` int(11) DEFAULT NULL,
  `id_usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_actividad_e054d7a2` (`id_evento_id`),
  KEY `web_actividad_76a74f43` (`id_usuario_id`),
  CONSTRAINT `web_actividad_id_evento_id_3d937ee927cd6884_fk_web_evento_id` FOREIGN KEY (`id_evento_id`) REFERENCES `web_evento` (`id`),
  CONSTRAINT `web_actividad_id_usuario_id_27c936db1516e06e_fk_auth_user_id` FOREIGN KEY (`id_usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_actividad`
--

LOCK TABLES `web_actividad` WRITE;
/*!40000 ALTER TABLE `web_actividad` DISABLE KEYS */;
INSERT INTO `web_actividad` VALUES (1,'Charlas Android','<p>Una charla interesante</p>\r\n','<p>Una charla siesta</p>\r\n','2016-02-18',1,1),(2,'Monologo','<p>Un monologo hrtnjtjtyj</p>\r\n\r\n<p>tyjtykjtyktytyjj</p>\r\n\r\n<p>rthjrtyj6ty</p>\r\n\r\n<p>rtgfjtyjtyj</p>\r\n','<p>Risas aseguradas</p>\r\n','2016-02-18',1,1),(3,'Bote de chuches','<p>Dulce dulce</p>\r\n','<p>Regalamos cafes, no chuches</p>\r\n','2016-02-18',2,26),(4,'Mercadillo','<p>adsfrfghreh</p>\r\n','<p>Compra de libros&nbsp;</p>\r\n','2016-02-18',2,26),(5,'Lanzamiento de huevos','<p>Se lanzan huevos caducados super ecologicos, no os preocupeis.&nbsp;</p>\r\n','<p>Si le dais al delegado, ganais</p>\r\n','2016-02-18',2,1),(6,'Premio al mejor algo','<p>aadasfdgfasdg</p>\r\n','<p>Se recogera el dia X en Y sitio</p>\r\n','2016-02-18',3,1),(7,'jytjtyjhj','<p>tyjtyjtyj</p>\r\n','<p>ytjtyjtyjty</p>\r\n','2016-02-27',1,1),(8,'Entrega 1','<p>asdsfqw</p>\r\n','<p>hrthrthrthrth&gt;<sub><sup><em>hrthrthtrh</em></sup></sub></p>\r\n','2016-02-27',3,1),(9,'hntnjrtyj','<p>jrtyjtyjjrtj</p>\r\n','<p>htrthrth</p>\r\n','2016-02-27',2,1);
/*!40000 ALTER TABLE `web_actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_area`
--

DROP TABLE IF EXISTS `web_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_area_nombre_5b684db10492fe90_uniq` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_area`
--

LOCK TABLES `web_area` WRITE;
/*!40000 ALTER TABLE `web_area` DISABLE KEYS */;
INSERT INTO `web_area` VALUES (4,'academicas'),(1,'Area'),(2,'Area51'),(3,'Cultural'),(7,'Desarrollo'),(5,'Social');
/*!40000 ALTER TABLE `web_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_entrada`
--

DROP TABLE IF EXISTS `web_entrada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_entrada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `noticia` longtext,
  `fecha` date NOT NULL,
  `id_area_id` int(11) NOT NULL,
  `id_usuario_id` int(11) NOT NULL,
  `resumen` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_entrada_e054d7a2` (`id_area_id`),
  KEY `web_entrada_76a74f43` (`id_usuario_id`),
  CONSTRAINT `web_entrada_id_area_id_481200a3f514908c_fk_web_area_id` FOREIGN KEY (`id_area_id`) REFERENCES `web_area` (`id`),
  CONSTRAINT `web_entrada_id_usuario_id_53ecce38b47ed95c_fk_auth_user_id` FOREIGN KEY (`id_usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_entrada`
--

LOCK TABLES `web_entrada` WRITE;
/*!40000 ALTER TABLE `web_entrada` DISABLE KEYS */;
INSERT INTO `web_entrada` VALUES (3,'kjij´pih','<p>uigoy</p>\r\n','2015-09-17',1,1,'<p>hiugl</p>\r\n'),(8,'aaaa','<p>aaaaaaa<img alt=\"\" src=\"/media/web/uploads/2015/09/17/bicisincarbono\" style=\"height:284px; width:480px\" /></p>\r\n','2016-01-23',5,1,'<p>aaaaaaaaaaaaassfasf</p>\r\n'),(10,'bdfbfd','<p>fdbdfb</p>\r\n','2016-01-23',1,1,'<p>fdbdfbdfb</p>\r\n'),(11,'jtty7jtyjy','<p>ytjtyjtyjtyj</p>\r\n','2016-02-27',3,1,'<p>yjtyjty</p>\r\n');
/*!40000 ALTER TABLE `web_entrada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_evento`
--

DROP TABLE IF EXISTS `web_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_evento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_evento`
--

LOCK TABLES `web_evento` WRITE;
/*!40000 ALTER TABLE `web_evento` DISABLE KEYS */;
INSERT INTO `web_evento` VALUES (1,'Eventos'),(2,'Actividades'),(3,'Entrega de premios');
/*!40000 ALTER TABLE `web_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_faq`
--

DROP TABLE IF EXISTS `web_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(300) NOT NULL,
  `respuesta` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_faq`
--

LOCK TABLES `web_faq` WRITE;
/*!40000 ALTER TABLE `web_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_frases_celebres`
--

DROP TABLE IF EXISTS `web_frases_celebres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_frases_celebres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frase` varchar(300) NOT NULL,
  `autor` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_frases_celebres`
--

LOCK TABLES `web_frases_celebres` WRITE;
/*!40000 ALTER TABLE `web_frases_celebres` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_frases_celebres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-05 22:16:19
