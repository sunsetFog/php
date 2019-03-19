-- MySQL dump 10.13  Distrib 5.7.22, for linux-glibc2.12 (x86_64)
--
-- Host: localhost    Database: we7
-- ------------------------------------------------------
-- Server version	5.7.22-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ims_account`
--

DROP TABLE IF EXISTS `ims_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `hash` varchar(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `isconnect` tinyint(4) NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account`
--

LOCK TABLES `ims_account` WRITE;
/*!40000 ALTER TABLE `ims_account` DISABLE KEYS */;
INSERT INTO `ims_account` VALUES (1,1,'uRr8qvQV',1,0,0,0);
/*!40000 ALTER TABLE `ims_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_account_phoneapp`
--

DROP TABLE IF EXISTS `ims_account_phoneapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account_phoneapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account_phoneapp`
--

LOCK TABLES `ims_account_phoneapp` WRITE;
/*!40000 ALTER TABLE `ims_account_phoneapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_phoneapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_account_webapp`
--

DROP TABLE IF EXISTS `ims_account_webapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account_webapp` (
  `acid` int(11) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account_webapp`
--

LOCK TABLES `ims_account_webapp` WRITE;
/*!40000 ALTER TABLE `ims_account_webapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_webapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_account_wechats`
--

DROP TABLE IF EXISTS `ims_account_wechats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account_wechats` (
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(255) NOT NULL,
  `level` tinyint(4) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `country` varchar(10) NOT NULL,
  `province` varchar(3) NOT NULL,
  `city` varchar(15) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `subscribeurl` varchar(120) NOT NULL,
  `auth_refresh_token` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account_wechats`
--

LOCK TABLES `ims_account_wechats` WRITE;
/*!40000 ALTER TABLE `ims_account_wechats` DISABLE KEYS */;
INSERT INTO `ims_account_wechats` VALUES (1,1,'omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP','',1,'we7team','','','','','','','','',0,'','',1,'','');
/*!40000 ALTER TABLE `ims_account_wechats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_account_wxapp`
--

DROP TABLE IF EXISTS `ims_account_wxapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_account_wxapp` (
  `acid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `token` varchar(32) NOT NULL,
  `encodingaeskey` varchar(43) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `account` varchar(30) NOT NULL,
  `original` varchar(50) NOT NULL,
  `key` varchar(50) NOT NULL,
  `secret` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `appdomain` varchar(255) NOT NULL,
  PRIMARY KEY (`acid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_account_wxapp`
--

LOCK TABLES `ims_account_wxapp` WRITE;
/*!40000 ALTER TABLE `ims_account_wxapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_account_wxapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_article_category`
--

DROP TABLE IF EXISTS `ims_article_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_article_category`
--

LOCK TABLES `ims_article_category` WRITE;
/*!40000 ALTER TABLE `ims_article_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_article_news`
--

DROP TABLE IF EXISTS `ims_article_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_article_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_article_news`
--

LOCK TABLES `ims_article_news` WRITE;
/*!40000 ALTER TABLE `ims_article_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_article_notice`
--

DROP TABLE IF EXISTS `ims_article_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_article_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cateid` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_show_home` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `style` varchar(200) NOT NULL,
  `group` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `cateid` (`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_article_notice`
--

LOCK TABLES `ims_article_notice` WRITE;
/*!40000 ALTER TABLE `ims_article_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_article_unread_notice`
--

DROP TABLE IF EXISTS `ims_article_unread_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_article_unread_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `is_new` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `notice_id` (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_article_unread_notice`
--

LOCK TABLES `ims_article_unread_notice` WRITE;
/*!40000 ALTER TABLE `ims_article_unread_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_article_unread_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_attachment_group`
--

DROP TABLE IF EXISTS `ims_attachment_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_attachment_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_attachment_group`
--

LOCK TABLES `ims_attachment_group` WRITE;
/*!40000 ALTER TABLE `ims_attachment_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_attachment_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_basic_reply`
--

DROP TABLE IF EXISTS `ims_basic_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_basic_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_basic_reply`
--

LOCK TABLES `ims_basic_reply` WRITE;
/*!40000 ALTER TABLE `ims_basic_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_basic_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_business`
--

DROP TABLE IF EXISTS `ims_business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_business` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `weid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `dist` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lng` varchar(10) NOT NULL,
  `lat` varchar(10) NOT NULL,
  `industry1` varchar(10) NOT NULL,
  `industry2` varchar(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lat_lng` (`lng`,`lat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_business`
--

LOCK TABLES `ims_business` WRITE;
/*!40000 ALTER TABLE `ims_business` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_attachment`
--

DROP TABLE IF EXISTS `ims_core_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `module_upload_dir` varchar(100) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_attachment`
--

LOCK TABLES `ims_core_attachment` WRITE;
/*!40000 ALTER TABLE `ims_core_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_cache`
--

DROP TABLE IF EXISTS `ims_core_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_cache` (
  `key` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_cache`
--

LOCK TABLES `ims_core_cache` WRITE;
/*!40000 ALTER TABLE `ims_core_cache` DISABLE KEYS */;
INSERT INTO `ims_core_cache` VALUES ('we7:account_ticket','s:0:\"\";'),('we7:userbasefields','a:46:{s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:6:\"mobile\";s:12:\"手机号码\";s:5:\"email\";s:12:\"电子邮箱\";s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"gender\";s:6:\"性别\";s:5:\"birth\";s:6:\"生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:6:\"地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:6:\"reside\";s:9:\"居住地\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:8:\"password\";s:6:\"密码\";s:12:\"pay_password\";s:12:\"支付密码\";}'),('we7:usersfields','a:47:{s:8:\"realname\";s:12:\"真实姓名\";s:8:\"nickname\";s:6:\"昵称\";s:6:\"avatar\";s:6:\"头像\";s:2:\"qq\";s:5:\"QQ号\";s:6:\"mobile\";s:12:\"手机号码\";s:3:\"vip\";s:9:\"VIP级别\";s:6:\"gender\";s:6:\"性别\";s:9:\"birthyear\";s:12:\"出生生日\";s:13:\"constellation\";s:6:\"星座\";s:6:\"zodiac\";s:6:\"生肖\";s:9:\"telephone\";s:12:\"固定电话\";s:6:\"idcard\";s:12:\"证件号码\";s:9:\"studentid\";s:6:\"学号\";s:5:\"grade\";s:6:\"班级\";s:7:\"address\";s:12:\"邮寄地址\";s:7:\"zipcode\";s:6:\"邮编\";s:11:\"nationality\";s:6:\"国籍\";s:14:\"resideprovince\";s:12:\"居住地址\";s:14:\"graduateschool\";s:12:\"毕业学校\";s:7:\"company\";s:6:\"公司\";s:9:\"education\";s:6:\"学历\";s:10:\"occupation\";s:6:\"职业\";s:8:\"position\";s:6:\"职位\";s:7:\"revenue\";s:9:\"年收入\";s:15:\"affectivestatus\";s:12:\"情感状态\";s:10:\"lookingfor\";s:13:\" 交友目的\";s:9:\"bloodtype\";s:6:\"血型\";s:6:\"height\";s:6:\"身高\";s:6:\"weight\";s:6:\"体重\";s:6:\"alipay\";s:15:\"支付宝帐号\";s:3:\"msn\";s:3:\"MSN\";s:5:\"email\";s:12:\"电子邮箱\";s:6:\"taobao\";s:12:\"阿里旺旺\";s:4:\"site\";s:6:\"主页\";s:3:\"bio\";s:12:\"自我介绍\";s:8:\"interest\";s:12:\"兴趣爱好\";s:7:\"uniacid\";s:17:\"同一公众号id\";s:7:\"groupid\";s:8:\"分组id\";s:7:\"credit1\";s:6:\"积分\";s:7:\"credit2\";s:6:\"余额\";s:7:\"credit3\";s:19:\"预留积分类型3\";s:7:\"credit4\";s:19:\"预留积分类型4\";s:7:\"credit5\";s:19:\"预留积分类型5\";s:7:\"credit6\";s:19:\"预留积分类型6\";s:10:\"createtime\";s:12:\"加入时间\";s:8:\"password\";s:12:\"用户密码\";s:12:\"pay_password\";s:12:\"支付密码\";}'),('we7:setting','a:8:{s:9:\"copyright\";a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}s:8:\"authmode\";i:1;s:5:\"close\";a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}s:8:\"register\";a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}s:4:\"site\";s:0:\"\";s:7:\"cloudip\";a:2:{s:2:\"ip\";s:13:\"121.9.212.222\";s:6:\"expire\";i:1531122314;}s:10:\"module_ban\";a:0:{}s:14:\"module_upgrade\";a:0:{}}'),('we7:system_frame:%uid','a:12:{s:8:\"platform\";a:7:{s:5:\"title\";s:6:\"平台\";s:4:\"icon\";s:14:\"wi wi-platform\";s:3:\"url\";s:44:\"./index.php?c=account&a=display&do=platform&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:2;}s:7:\"account\";a:7:{s:5:\"title\";s:9:\"公众号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=home&a=welcome&do=platform&\";s:7:\"section\";a:4:{s:13:\"platform_plus\";a:2:{s:5:\"title\";s:12:\"增强功能\";s:4:\"menu\";a:6:{s:14:\"platform_reply\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"自动回复\";s:3:\"url\";s:31:\"./index.php?c=platform&a=reply&\";s:15:\"permission_name\";s:14:\"platform_reply\";s:4:\"icon\";s:11:\"wi wi-reply\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:13:\"platform_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"自定义菜单\";s:3:\"url\";s:38:\"./index.php?c=platform&a=menu&do=post&\";s:15:\"permission_name\";s:13:\"platform_menu\";s:4:\"icon\";s:16:\"wi wi-custommenu\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"platform_qr\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:22:\"二维码/转化链接\";s:3:\"url\";s:28:\"./index.php?c=platform&a=qr&\";s:15:\"permission_name\";s:11:\"platform_qr\";s:4:\"icon\";s:12:\"wi wi-qrcode\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:18:\"platform_mass_task\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"定时群发\";s:3:\"url\";s:30:\"./index.php?c=platform&a=mass&\";s:15:\"permission_name\";s:18:\"platform_mass_task\";s:4:\"icon\";s:13:\"wi wi-crontab\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:17:\"platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"素材/编辑器\";s:3:\"url\";s:34:\"./index.php?c=platform&a=material&\";s:15:\"permission_name\";s:17:\"platform_material\";s:4:\"icon\";s:12:\"wi wi-redact\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:2:{i:0;a:3:{s:5:\"title\";s:13:\"添加/编辑\";s:3:\"url\";s:39:\"./index.php?c=platform&a=material-post&\";s:15:\"permission_name\";s:13:\"material_post\";}i:1;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:24:\"platform_material_delete\";}}}s:13:\"platform_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\"微官网-文章\";s:3:\"url\";s:38:\"./index.php?c=site&a=multi&do=display&\";s:15:\"permission_name\";s:13:\"platform_site\";s:4:\"icon\";s:10:\"wi wi-home\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}}}s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:2:{s:7:\"mc_fans\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"粉丝管理\";s:3:\"url\";s:24:\"./index.php?c=mc&a=fans&\";s:15:\"permission_name\";s:7:\"mc_fans\";s:4:\"icon\";s:16:\"wi wi-fansmanage\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:3:{s:7:\"profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"参数配置\";s:3:\"url\";s:33:\"./index.php?c=profile&a=passport&\";s:15:\"permission_name\";s:15:\"profile_setting\";s:4:\"icon\";s:23:\"wi wi-parameter-setting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:7:\"payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:32:\"./index.php?c=profile&a=payment&\";s:15:\"permission_name\";s:19:\"profile_pay_setting\";s:4:\"icon\";s:17:\"wi wi-pay-setting\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"app_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:44:\"./index.php?c=profile&a=module-link-uniacid&\";s:15:\"permission_name\";s:31:\"profile_app_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:3;}s:5:\"wxapp\";a:7:{s:5:\"title\";s:9:\"小程序\";s:4:\"icon\";s:19:\"wi wi-small-routine\";s:3:\"url\";s:38:\"./index.php?c=wxapp&a=display&do=home&\";s:7:\"section\";a:3:{s:14:\"wxapp_entrance\";a:3:{s:5:\"title\";s:15:\"小程序入口\";s:4:\"menu\";a:1:{s:20:\"module_entrance_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"入口页面\";s:3:\"url\";s:36:\"./index.php?c=wxapp&a=entrance-link&\";s:15:\"permission_name\";s:19:\"wxapp_entrance_link\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}s:10:\"is_display\";b:1;}s:12:\"wxapp_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:13:\"wxapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:4:{s:17:\"wxapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:42:\"./index.php?c=wxapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:25:\"wxapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:13:\"wxapp_payment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"支付参数\";s:3:\"url\";s:30:\"./index.php?c=wxapp&a=payment&\";s:15:\"permission_name\";s:13:\"wxapp_payment\";s:4:\"icon\";s:16:\"wi wi-appsetting\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"上传微信审核\";s:3:\"url\";s:37:\"./index.php?c=wxapp&a=front-download&\";s:15:\"permission_name\";s:20:\"wxapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"wxapp_platform_material\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:0;s:5:\"title\";s:12:\"素材管理\";s:3:\"url\";N;s:15:\"permission_name\";s:23:\"wxapp_platform_material\";s:4:\"icon\";N;s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:1:{i:0;a:2:{s:5:\"title\";s:6:\"删除\";s:15:\"permission_name\";s:30:\"wxapp_platform_material_delete\";}}}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:4;}s:6:\"webapp\";a:7:{s:5:\"title\";s:2:\"PC\";s:4:\"icon\";s:8:\"wi wi-pc\";s:3:\"url\";s:39:\"./index.php?c=webapp&a=home&do=display&\";s:7:\"section\";a:3:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:2:\"mc\";a:2:{s:5:\"title\";s:6:\"粉丝\";s:4:\"menu\";a:1:{s:9:\"mc_member\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"会员管理\";s:3:\"url\";s:26:\"./index.php?c=mc&a=member&\";s:15:\"permission_name\";s:9:\"mc_member\";s:4:\"icon\";s:10:\"wi wi-fans\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"webapp\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:18:\"webapp_module_link\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"数据同步\";s:3:\"url\";s:43:\"./index.php?c=webapp&a=module-link-uniacid&\";s:15:\"permission_name\";s:26:\"webapp_module_link_uniacid\";s:4:\"icon\";s:18:\"wi wi-data-synchro\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:5;}s:8:\"phoneapp\";a:7:{s:5:\"title\";s:3:\"APP\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:41:\"./index.php?c=phoneapp&a=display&do=home&\";s:7:\"section\";a:2:{s:15:\"phoneapp_module\";a:3:{s:5:\"title\";s:6:\"应用\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}s:16:\"phoneapp_profile\";a:2:{s:5:\"title\";s:6:\"配置\";s:4:\"menu\";a:1:{s:14:\"front_download\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"下载APP\";s:3:\"url\";s:40:\"./index.php?c=phoneapp&a=front-download&\";s:15:\"permission_name\";s:23:\"phoneapp_front_download\";s:4:\"icon\";s:13:\"wi wi-examine\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:6;}s:5:\"xzapp\";a:7:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"icon\";s:18:\"wi wi-white-collar\";s:3:\"url\";s:38:\"./index.php?c=xzapp&a=home&do=display&\";s:7:\"section\";a:1:{s:15:\"platform_module\";a:3:{s:5:\"title\";s:12:\"应用模块\";s:4:\"menu\";a:0:{}s:10:\"is_display\";b:1;}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:7;}s:6:\"module\";a:7:{s:5:\"title\";s:6:\"应用\";s:4:\"icon\";s:11:\"wi wi-apply\";s:3:\"url\";s:31:\"./index.php?c=module&a=display&\";s:7:\"section\";a:0:{}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:8;}s:6:\"system\";a:7:{s:5:\"title\";s:6:\"系统\";s:4:\"icon\";s:13:\"wi wi-setting\";s:3:\"url\";s:39:\"./index.php?c=home&a=welcome&do=system&\";s:7:\"section\";a:10:{s:10:\"wxplatform\";a:2:{s:5:\"title\";s:9:\"公众号\";s:4:\"menu\";a:4:{s:14:\"system_account\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:16:\" 微信公众号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=1\";s:15:\"permission_name\";s:14:\"system_account\";s:4:\"icon\";s:12:\"wi wi-wechat\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"公众号管理设置\";s:15:\"permission_name\";s:21:\"system_account_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加公众号\";s:15:\"permission_name\";s:19:\"system_account_post\";}i:2;a:2:{s:5:\"title\";s:15:\"公众号停用\";s:15:\"permission_name\";s:19:\"system_account_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"公众号回收站\";s:15:\"permission_name\";s:22:\"system_account_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"公众号删除\";s:15:\"permission_name\";s:21:\"system_account_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"公众号恢复\";s:15:\"permission_name\";s:22:\"system_account_recover\";}}}s:13:\"system_module\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"公众号应用\";s:3:\"url\";s:60:\"./index.php?c=module&a=manage-system&support=account_support\";s:15:\"permission_name\";s:13:\"system_module\";s:4:\"icon\";s:14:\"wi wi-wx-apply\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_template\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微官网模板\";s:3:\"url\";s:32:\"./index.php?c=system&a=template&\";s:15:\"permission_name\";s:15:\"system_template\";s:4:\"icon\";s:17:\"wi wi-wx-template\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:15:\"system_platform\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:19:\" 微信开放平台\";s:3:\"url\";s:32:\"./index.php?c=system&a=platform&\";s:15:\"permission_name\";s:15:\"system_platform\";s:4:\"icon\";s:20:\"wi wi-exploitsetting\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"module\";a:2:{s:5:\"title\";s:9:\"小程序\";s:4:\"menu\";a:2:{s:12:\"system_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"微信小程序\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=4\";s:15:\"permission_name\";s:12:\"system_wxapp\";s:4:\"icon\";s:11:\"wi wi-wxapp\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:6:{i:0;a:2:{s:5:\"title\";s:21:\"小程序管理设置\";s:15:\"permission_name\";s:19:\"system_wxapp_manage\";}i:1;a:2:{s:5:\"title\";s:15:\"添加小程序\";s:15:\"permission_name\";s:17:\"system_wxapp_post\";}i:2;a:2:{s:5:\"title\";s:15:\"小程序停用\";s:15:\"permission_name\";s:17:\"system_wxapp_stop\";}i:3;a:2:{s:5:\"title\";s:18:\"小程序回收站\";s:15:\"permission_name\";s:20:\"system_wxapp_recycle\";}i:4;a:2:{s:5:\"title\";s:15:\"小程序删除\";s:15:\"permission_name\";s:19:\"system_wxapp_delete\";}i:5;a:2:{s:5:\"title\";s:15:\"小程序恢复\";s:15:\"permission_name\";s:20:\"system_wxapp_recover\";}}}s:19:\"system_module_wxapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"小程序应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=wxapp_support\";s:15:\"permission_name\";s:19:\"system_module_wxapp\";s:4:\"icon\";s:17:\"wi wi-wxapp-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:6:\"webapp\";a:2:{s:5:\"title\";s:2:\"PC\";s:4:\"menu\";a:2:{s:13:\"system_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:2:\"PC\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=5\";s:15:\"permission_name\";s:13:\"system_webapp\";s:4:\"icon\";s:8:\"wi wi-pc\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:20:\"system_module_webapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:8:\"PC应用\";s:3:\"url\";s:59:\"./index.php?c=module&a=manage-system&support=webapp_support\";s:15:\"permission_name\";s:20:\"system_module_webapp\";s:4:\"icon\";s:14:\"wi wi-pc-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:8:\"phoneapp\";a:2:{s:5:\"title\";s:3:\"APP\";s:4:\"menu\";a:2:{s:15:\"system_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:3:\"APP\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=6\";s:15:\"permission_name\";s:15:\"system_phoneapp\";s:4:\"icon\";s:9:\"wi wi-app\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:22:\"system_module_phoneapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"APP应用\";s:3:\"url\";s:61:\"./index.php?c=module&a=manage-system&support=phoneapp_support\";s:15:\"permission_name\";s:22:\"system_module_phoneapp\";s:4:\"icon\";s:15:\"wi wi-app-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"xzapp\";a:2:{s:5:\"title\";s:9:\"熊掌号\";s:4:\"menu\";a:2:{s:12:\"system_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"熊掌号\";s:3:\"url\";s:45:\"./index.php?c=account&a=manage&account_type=9\";s:15:\"permission_name\";s:12:\"system_xzapp\";s:4:\"icon\";s:8:\"wi wi-pc\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:0:{}}s:19:\"system_module_xzapp\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"熊掌号应用\";s:3:\"url\";s:58:\"./index.php?c=module&a=manage-system&support=xzapp_support\";s:15:\"permission_name\";s:19:\"system_module_xzapp\";s:4:\"icon\";s:14:\"wi wi-pc-apply\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:4:\"user\";a:2:{s:5:\"title\";s:13:\"帐户/用户\";s:4:\"menu\";a:2:{s:9:\"system_my\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"我的帐户\";s:3:\"url\";s:29:\"./index.php?c=user&a=profile&\";s:15:\"permission_name\";s:9:\"system_my\";s:4:\"icon\";s:10:\"wi wi-user\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:11:\"system_user\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"用户管理\";s:3:\"url\";s:29:\"./index.php?c=user&a=display&\";s:15:\"permission_name\";s:11:\"system_user\";s:4:\"icon\";s:16:\"wi wi-user-group\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:7:{i:0;a:2:{s:5:\"title\";s:12:\"编辑用户\";s:15:\"permission_name\";s:16:\"system_user_post\";}i:1;a:2:{s:5:\"title\";s:12:\"审核用户\";s:15:\"permission_name\";s:17:\"system_user_check\";}i:2;a:2:{s:5:\"title\";s:12:\"店员管理\";s:15:\"permission_name\";s:17:\"system_user_clerk\";}i:3;a:2:{s:5:\"title\";s:15:\"用户回收站\";s:15:\"permission_name\";s:19:\"system_user_recycle\";}i:4;a:2:{s:5:\"title\";s:18:\"用户属性设置\";s:15:\"permission_name\";s:18:\"system_user_fields\";}i:5;a:2:{s:5:\"title\";s:31:\"用户属性设置-编辑字段\";s:15:\"permission_name\";s:23:\"system_user_fields_post\";}i:6;a:2:{s:5:\"title\";s:18:\"用户注册设置\";s:15:\"permission_name\";s:23:\"system_user_registerset\";}}}}}s:10:\"permission\";a:2:{s:5:\"title\";s:12:\"权限管理\";s:4:\"menu\";a:2:{s:19:\"system_module_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"应用权限组\";s:3:\"url\";s:29:\"./index.php?c=module&a=group&\";s:15:\"permission_name\";s:19:\"system_module_group\";s:4:\"icon\";s:21:\"wi wi-appjurisdiction\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:21:\"添加应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_add\";}i:1;a:2:{s:5:\"title\";s:21:\"编辑应用权限组\";s:15:\"permission_name\";s:24:\"system_module_group_post\";}i:2;a:2:{s:5:\"title\";s:21:\"删除应用权限组\";s:15:\"permission_name\";s:23:\"system_module_group_del\";}}}s:17:\"system_user_group\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"用户权限组\";s:3:\"url\";s:27:\"./index.php?c=user&a=group&\";s:15:\"permission_name\";s:17:\"system_user_group\";s:4:\"icon\";s:22:\"wi wi-userjurisdiction\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";a:3:{i:0;a:2:{s:5:\"title\";s:15:\"添加用户组\";s:15:\"permission_name\";s:21:\"system_user_group_add\";}i:1;a:2:{s:5:\"title\";s:15:\"编辑用户组\";s:15:\"permission_name\";s:22:\"system_user_group_post\";}i:2;a:2:{s:5:\"title\";s:15:\"删除用户组\";s:15:\"permission_name\";s:21:\"system_user_group_del\";}}}}}s:7:\"article\";a:2:{s:5:\"title\";s:13:\"文章/公告\";s:4:\"menu\";a:2:{s:14:\"system_article\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"文章管理\";s:3:\"url\";s:29:\"./index.php?c=article&a=news&\";s:15:\"permission_name\";s:19:\"system_article_news\";s:4:\"icon\";s:13:\"wi wi-article\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_article_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"公告管理\";s:3:\"url\";s:31:\"./index.php?c=article&a=notice&\";s:15:\"permission_name\";s:21:\"system_article_notice\";s:4:\"icon\";s:12:\"wi wi-notice\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"message\";a:2:{s:5:\"title\";s:12:\"消息提醒\";s:4:\"menu\";a:1:{s:21:\"system_message_notice\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"消息提醒\";s:3:\"url\";s:31:\"./index.php?c=message&a=notice&\";s:15:\"permission_name\";s:21:\"system_message_notice\";s:4:\"icon\";s:10:\"wi wi-bell\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:5:\"cache\";a:2:{s:5:\"title\";s:6:\"缓存\";s:4:\"menu\";a:1:{s:26:\"system_setting_updatecache\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"更新缓存\";s:3:\"url\";s:35:\"./index.php?c=system&a=updatecache&\";s:15:\"permission_name\";s:26:\"system_setting_updatecache\";s:4:\"icon\";s:12:\"wi wi-update\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:9;}s:4:\"site\";a:8:{s:5:\"title\";s:6:\"站点\";s:4:\"icon\";s:17:\"wi wi-system-site\";s:3:\"url\";s:30:\"./index.php?c=cloud&a=upgrade&\";s:7:\"section\";a:5:{s:5:\"cloud\";a:2:{s:5:\"title\";s:9:\"云服务\";s:4:\"menu\";a:5:{s:14:\"system_profile\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统升级\";s:3:\"url\";s:30:\"./index.php?c=cloud&a=upgrade&\";s:15:\"permission_name\";s:20:\"system_cloud_upgrade\";s:4:\"icon\";s:11:\"wi wi-cache\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_cloud_register\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"注册站点\";s:3:\"url\";s:30:\"./index.php?c=cloud&a=profile&\";s:15:\"permission_name\";s:21:\"system_cloud_register\";s:4:\"icon\";s:18:\"wi wi-registersite\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_cloud_diagnose\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"云服务诊断\";s:3:\"url\";s:31:\"./index.php?c=cloud&a=diagnose&\";s:15:\"permission_name\";s:21:\"system_cloud_diagnose\";s:4:\"icon\";s:14:\"wi wi-diagnose\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:16:\"system_cloud_sms\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"短信管理\";s:3:\"url\";s:26:\"./index.php?c=cloud&a=sms&\";s:15:\"permission_name\";s:16:\"system_cloud_sms\";s:4:\"icon\";s:9:\"wi wi-sms\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:21:\"system_cloud_sms_sign\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"短信签名\";s:3:\"url\";s:31:\"./index.php?c=cloud&a=sms-sign&\";s:15:\"permission_name\";s:21:\"system_cloud_sms_sign\";s:4:\"icon\";s:14:\"wi wi-sms-sign\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"setting\";a:2:{s:5:\"title\";s:6:\"设置\";s:4:\"menu\";a:9:{s:19:\"system_setting_site\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"站点设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=site&\";s:15:\"permission_name\";s:19:\"system_setting_site\";s:4:\"icon\";s:18:\"wi wi-site-setting\";s:12:\"displayorder\";i:9;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_menu\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"菜单设置\";s:3:\"url\";s:28:\"./index.php?c=system&a=menu&\";s:15:\"permission_name\";s:19:\"system_setting_menu\";s:4:\"icon\";s:18:\"wi wi-menu-setting\";s:12:\"displayorder\";i:8;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_attachment\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"附件设置\";s:3:\"url\";s:34:\"./index.php?c=system&a=attachment&\";s:15:\"permission_name\";s:25:\"system_setting_attachment\";s:4:\"icon\";s:16:\"wi wi-attachment\";s:12:\"displayorder\";i:7;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_systeminfo\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"系统信息\";s:3:\"url\";s:34:\"./index.php?c=system&a=systeminfo&\";s:15:\"permission_name\";s:25:\"system_setting_systeminfo\";s:4:\"icon\";s:17:\"wi wi-system-info\";s:12:\"displayorder\";i:6;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_setting_logs\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"查看日志\";s:3:\"url\";s:28:\"./index.php?c=system&a=logs&\";s:15:\"permission_name\";s:19:\"system_setting_logs\";s:4:\"icon\";s:9:\"wi wi-log\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:26:\"system_setting_ipwhitelist\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:11:\"IP白名单\";s:3:\"url\";s:35:\"./index.php?c=system&a=ipwhitelist&\";s:15:\"permission_name\";s:26:\"system_setting_ipwhitelist\";s:4:\"icon\";s:8:\"wi wi-ip\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:28:\"system_setting_sensitiveword\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"过滤敏感词\";s:3:\"url\";s:37:\"./index.php?c=system&a=sensitiveword&\";s:15:\"permission_name\";s:28:\"system_setting_sensitiveword\";s:4:\"icon\";s:15:\"wi wi-sensitive\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:25:\"system_setting_thirdlogin\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:21:\"第三方登录配置\";s:3:\"url\";s:34:\"./index.php?c=system&a=thirdlogin&\";s:15:\"permission_name\";s:25:\"system_setting_thirdlogin\";s:4:\"icon\";s:16:\"wi wi-thirdlogin\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:20:\"system_setting_oauth\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:17:\"oauth全局设置\";s:3:\"url\";s:29:\"./index.php?c=system&a=oauth&\";s:15:\"permission_name\";s:20:\"system_setting_oauth\";s:4:\"icon\";s:11:\"wi wi-oauth\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"utility\";a:2:{s:5:\"title\";s:12:\"常用工具\";s:4:\"menu\";a:5:{s:24:\"system_utility_filecheck\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:18:\"系统文件校验\";s:3:\"url\";s:33:\"./index.php?c=system&a=filecheck&\";s:15:\"permission_name\";s:24:\"system_utility_filecheck\";s:4:\"icon\";s:10:\"wi wi-file\";s:12:\"displayorder\";i:5;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_optimize\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"性能优化\";s:3:\"url\";s:32:\"./index.php?c=system&a=optimize&\";s:15:\"permission_name\";s:23:\"system_utility_optimize\";s:4:\"icon\";s:14:\"wi wi-optimize\";s:12:\"displayorder\";i:4;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:23:\"system_utility_database\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:9:\"数据库\";s:3:\"url\";s:32:\"./index.php?c=system&a=database&\";s:15:\"permission_name\";s:23:\"system_utility_database\";s:4:\"icon\";s:9:\"wi wi-sql\";s:12:\"displayorder\";i:3;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:19:\"system_utility_scan\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"木马查杀\";s:3:\"url\";s:28:\"./index.php?c=system&a=scan&\";s:15:\"permission_name\";s:19:\"system_utility_scan\";s:4:\"icon\";s:12:\"wi wi-safety\";s:12:\"displayorder\";i:2;s:2:\"id\";N;s:14:\"sub_permission\";N;}s:18:\"system_utility_bom\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:15:\"检测文件BOM\";s:3:\"url\";s:27:\"./index.php?c=system&a=bom&\";s:15:\"permission_name\";s:18:\"system_utility_bom\";s:4:\"icon\";s:9:\"wi wi-bom\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:9:\"workorder\";a:2:{s:5:\"title\";s:12:\"工单系统\";s:4:\"menu\";a:1:{s:16:\"system_workorder\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"工单系统\";s:3:\"url\";s:44:\"./index.php?c=system&a=workorder&do=display&\";s:15:\"permission_name\";s:16:\"system_workorder\";s:4:\"icon\";s:17:\"wi wi-system-work\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}s:7:\"backjob\";a:2:{s:5:\"title\";s:12:\"后台任务\";s:4:\"menu\";a:1:{s:10:\"system_job\";a:9:{s:9:\"is_system\";i:1;s:10:\"is_display\";i:1;s:5:\"title\";s:12:\"后台任务\";s:3:\"url\";s:38:\"./index.php?c=system&a=job&do=display&\";s:15:\"permission_name\";s:10:\"system_job\";s:4:\"icon\";s:9:\"wi wi-job\";s:12:\"displayorder\";i:1;s:2:\"id\";N;s:14:\"sub_permission\";N;}}}}s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:10;}s:9:\"appmarket\";a:9:{s:5:\"title\";s:6:\"市场\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:15:\"http://s.we7.cc\";s:7:\"section\";a:0:{}s:5:\"blank\";b:1;s:7:\"founder\";b:1;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:11;}s:4:\"help\";a:8:{s:5:\"title\";s:12:\"系统帮助\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:29:\"./index.php?c=help&a=display&\";s:7:\"section\";a:0:{}s:5:\"blank\";b:0;s:9:\"is_system\";b:1;s:10:\"is_display\";b:1;s:12:\"displayorder\";i:12;}s:11:\"custom_help\";a:8:{s:5:\"title\";s:6:\"帮助\";s:4:\"icon\";s:12:\"wi wi-market\";s:3:\"url\";s:39:\"./index.php?c=help&a=display&do=custom&\";s:7:\"section\";a:0:{}s:5:\"blank\";b:0;s:10:\"is_display\";b:0;s:9:\"is_system\";b:1;s:12:\"displayorder\";i:13;}}'),('we7:module_receive_enable','a:0:{}'),('we7:user_modules:1','a:12:{i:0;s:8:\"yun_shop\";i:1;s:6:\"wxcard\";i:2;s:5:\"chats\";i:3;s:5:\"voice\";i:4;s:5:\"video\";i:5;s:6:\"images\";i:6;s:6:\"custom\";i:7;s:8:\"recharge\";i:8;s:7:\"userapi\";i:9;s:5:\"music\";i:10;s:4:\"news\";i:11;s:5:\"basic\";}'),('we7:module_info:yun_shop','a:30:{s:3:\"mid\";s:3:\"200\";s:4:\"name\";s:8:\"yun_shop\";s:4:\"type\";s:3:\"biz\";s:5:\"title\";s:9:\"芸商城\";s:7:\"version\";s:5:\"2.0.1\";s:7:\"ability\";s:9:\"芸商城\";s:11:\"description\";s:9:\"芸商城\";s:6:\"author\";s:6:\"芸众\";s:3:\"url\";s:24:\"http://www.yunzshop.com/\";s:8:\"settings\";s:1:\"1\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:1:{i:0;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"0\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:6:\"a:0:{}\";s:13:\"title_initial\";s:1:\"Y\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"1\";s:14:\"webapp_support\";s:1:\"0\";s:16:\"phoneapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:61:\"http://wx.kslselect.com/addons/yun_shop/icon.jpg?v=1531118749\";s:7:\"preview\";s:51:\"http://wx.kslselect.com/addons/yun_shop/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:15:\"account_support\";i:2;}'),('we7:module_setting:yun_shop:1','a:7:{s:2:\"id\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:6:\"module\";s:8:\"yun_shop\";s:7:\"enabled\";s:1:\"1\";s:8:\"settings\";s:0:\"\";s:8:\"shortcut\";s:1:\"0\";s:12:\"displayorder\";s:1:\"0\";}'),('we7:module_info:wxcard','a:30:{s:3:\"mid\";s:2:\"11\";s:4:\"name\";s:6:\"wxcard\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"微信卡券回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"微信卡券回复\";s:11:\"description\";s:18:\"微信卡券回复\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:16:\"phoneapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:59:\"http://wx.kslselect.com/addons/wxcard/icon.jpg?v=1531118749\";s:7:\"preview\";s:49:\"http://wx.kslselect.com/addons/wxcard/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:15:\"account_support\";i:2;}'),('we7:module_setting:wxcard:1','a:1:{s:6:\"module\";s:6:\"wxcard\";}'),('we7:module_info:chats','a:30:{s:3:\"mid\";s:2:\"10\";s:4:\"name\";s:5:\"chats\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"发送客服消息\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:77:\"公众号可以在粉丝最后发送消息的48小时内无限制发送消息\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:16:\"phoneapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"http://wx.kslselect.com/addons/chats/icon.jpg?v=1531118749\";s:7:\"preview\";s:48:\"http://wx.kslselect.com/addons/chats/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:15:\"account_support\";i:2;}'),('we7:module_setting:chats:1','a:1:{s:6:\"module\";s:5:\"chats\";}'),('we7:module_info:voice','a:30:{s:3:\"mid\";s:1:\"9\";s:4:\"name\";s:5:\"voice\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本语音回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供语音回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:16:\"phoneapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"http://wx.kslselect.com/addons/voice/icon.jpg?v=1531118749\";s:7:\"preview\";s:48:\"http://wx.kslselect.com/addons/voice/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:15:\"account_support\";i:2;}'),('we7:module_setting:voice:1','a:1:{s:6:\"module\";s:5:\"voice\";}'),('we7:module_info:video','a:30:{s:3:\"mid\";s:1:\"8\";s:4:\"name\";s:5:\"video\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本视频回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:16:\"phoneapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"http://wx.kslselect.com/addons/video/icon.jpg?v=1531118749\";s:7:\"preview\";s:48:\"http://wx.kslselect.com/addons/video/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:15:\"account_support\";i:2;}'),('we7:module_setting:video:1','a:1:{s:6:\"module\";s:5:\"video\";}'),('we7:module_info:images','a:30:{s:3:\"mid\";s:1:\"7\";s:4:\"name\";s:6:\"images\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本图片回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:18:\"提供图片回复\";s:11:\"description\";s:132:\"在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:16:\"phoneapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:59:\"http://wx.kslselect.com/addons/images/icon.jpg?v=1531118749\";s:7:\"preview\";s:49:\"http://wx.kslselect.com/addons/images/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:15:\"account_support\";i:2;}'),('we7:module_setting:images:1','a:1:{s:6:\"module\";s:6:\"images\";}'),('we7:module_info:custom','a:30:{s:3:\"mid\";s:1:\"6\";s:4:\"name\";s:6:\"custom\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:15:\"多客服转接\";s:7:\"version\";s:5:\"1.0.0\";s:7:\"ability\";s:36:\"用来接入腾讯的多客服系统\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:17:\"http://bbs.we7.cc\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";a:0:{}s:7:\"handles\";a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:16:\"phoneapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:59:\"http://wx.kslselect.com/addons/custom/icon.jpg?v=1531118749\";s:7:\"preview\";s:49:\"http://wx.kslselect.com/addons/custom/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:15:\"account_support\";i:2;}'),('we7:module_setting:custom:1','a:1:{s:6:\"module\";s:6:\"custom\";}'),('we7:module_info:recharge','a:30:{s:3:\"mid\";s:1:\"5\";s:4:\"name\";s:8:\"recharge\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"会员中心充值模块\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"提供会员充值功能\";s:11:\"description\";s:0:\"\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"0\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:16:\"phoneapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:61:\"http://wx.kslselect.com/addons/recharge/icon.jpg?v=1531118749\";s:7:\"preview\";s:51:\"http://wx.kslselect.com/addons/recharge/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:15:\"account_support\";i:2;}'),('we7:module_setting:recharge:1','a:1:{s:6:\"module\";s:8:\"recharge\";}'),('we7:module_info:userapi','a:30:{s:3:\"mid\";s:1:\"4\";s:4:\"name\";s:7:\"userapi\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:21:\"自定义接口回复\";s:7:\"version\";s:3:\"1.1\";s:7:\"ability\";s:33:\"更方便的第三方接口设置\";s:11:\"description\";s:141:\"自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:16:\"phoneapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:60:\"http://wx.kslselect.com/addons/userapi/icon.jpg?v=1531118749\";s:7:\"preview\";s:50:\"http://wx.kslselect.com/addons/userapi/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:15:\"account_support\";i:2;}'),('we7:module_setting:userapi:1','a:1:{s:6:\"module\";s:7:\"userapi\";}'),('we7:module_info:music','a:30:{s:3:\"mid\";s:1:\"3\";s:4:\"name\";s:5:\"music\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本音乐回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:39:\"提供语音、音乐等音频类回复\";s:11:\"description\";s:183:\"在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:16:\"phoneapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"http://wx.kslselect.com/addons/music/icon.jpg?v=1531118749\";s:7:\"preview\";s:48:\"http://wx.kslselect.com/addons/music/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:15:\"account_support\";i:2;}'),('we7:module_setting:music:1','a:1:{s:6:\"module\";s:5:\"music\";}'),('we7:module_info:news','a:30:{s:3:\"mid\";s:1:\"2\";s:4:\"name\";s:4:\"news\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:24:\"基本混合图文回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:33:\"为你提供生动的图文资讯\";s:11:\"description\";s:272:\"一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:16:\"phoneapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:57:\"http://wx.kslselect.com/addons/news/icon.jpg?v=1531118750\";s:7:\"preview\";s:47:\"http://wx.kslselect.com/addons/news/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:15:\"account_support\";i:2;}'),('we7:module_setting:news:1','a:1:{s:6:\"module\";s:4:\"news\";}'),('we7:module_info:basic','a:30:{s:3:\"mid\";s:1:\"1\";s:4:\"name\";s:5:\"basic\";s:4:\"type\";s:6:\"system\";s:5:\"title\";s:18:\"基本文字回复\";s:7:\"version\";s:3:\"1.0\";s:7:\"ability\";s:24:\"和您进行简单对话\";s:11:\"description\";s:201:\"一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.\";s:6:\"author\";s:13:\"WeEngine Team\";s:3:\"url\";s:18:\"http://www.we7.cc/\";s:8:\"settings\";s:1:\"0\";s:10:\"subscribes\";s:0:\"\";s:7:\"handles\";s:0:\"\";s:12:\"isrulefields\";s:1:\"1\";s:8:\"issystem\";s:1:\"1\";s:6:\"target\";s:1:\"0\";s:6:\"iscard\";s:1:\"0\";s:11:\"permissions\";s:0:\"\";s:13:\"title_initial\";s:0:\"\";s:13:\"wxapp_support\";s:1:\"1\";s:11:\"app_support\";s:1:\"2\";s:15:\"welcome_support\";s:1:\"0\";s:10:\"oauth_type\";s:1:\"0\";s:14:\"webapp_support\";s:1:\"0\";s:16:\"phoneapp_support\";s:1:\"0\";s:9:\"isdisplay\";i:1;s:4:\"logo\";s:58:\"http://wx.kslselect.com/addons/basic/icon.jpg?v=1531118750\";s:7:\"preview\";s:48:\"http://wx.kslselect.com/addons/basic/preview.jpg\";s:11:\"main_module\";b:0;s:11:\"plugin_list\";a:0:{}s:15:\"account_support\";i:2;}'),('we7:module_setting:basic:1','a:1:{s:6:\"module\";s:5:\"basic\";}'),('we7:unisetting:1','a:26:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";}'),('we7:uniaccount:1','a:35:{s:4:\"acid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"token\";s:32:\"omJNpZEhZeHj1ZxFECKkP48B5VFbk1HP\";s:14:\"encodingaeskey\";s:0:\"\";s:5:\"level\";s:1:\"1\";s:4:\"name\";s:7:\"we7team\";s:7:\"account\";s:0:\"\";s:8:\"original\";s:0:\"\";s:9:\"signature\";s:0:\"\";s:7:\"country\";s:0:\"\";s:8:\"province\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:10:\"lastupdate\";s:1:\"0\";s:3:\"key\";s:0:\"\";s:6:\"secret\";s:0:\"\";s:7:\"styleid\";s:1:\"1\";s:12:\"subscribeurl\";s:0:\"\";s:18:\"auth_refresh_token\";s:0:\"\";s:11:\"encrypt_key\";s:0:\"\";s:4:\"type\";s:1:\"1\";s:9:\"isconnect\";s:1:\"0\";s:9:\"isdeleted\";s:1:\"0\";s:7:\"endtime\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:9:\"starttime\";s:1:\"0\";s:6:\"groups\";a:1:{i:1;a:5:{s:7:\"groupid\";s:1:\"1\";s:7:\"uniacid\";s:1:\"1\";s:5:\"title\";s:15:\"默认会员组\";s:6:\"credit\";s:1:\"0\";s:9:\"isdefault\";s:1:\"1\";}}s:7:\"setting\";a:26:{s:7:\"uniacid\";s:1:\"1\";s:8:\"passport\";a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}s:5:\"oauth\";a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}s:11:\"jsauth_acid\";s:1:\"0\";s:2:\"uc\";a:1:{s:6:\"status\";i:0;}s:6:\"notify\";a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}s:11:\"creditnames\";a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}s:15:\"creditbehaviors\";a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}s:7:\"welcome\";s:0:\"\";s:7:\"default\";s:0:\"\";s:15:\"default_message\";s:0:\"\";s:7:\"payment\";a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}s:4:\"stat\";s:0:\"\";s:12:\"default_site\";s:1:\"1\";s:4:\"sync\";s:1:\"0\";s:8:\"recharge\";s:0:\"\";s:9:\"tplnotice\";s:0:\"\";s:10:\"grouplevel\";s:1:\"0\";s:8:\"mcplugin\";s:0:\"\";s:15:\"exchange_enable\";s:1:\"0\";s:11:\"coupon_type\";s:1:\"0\";s:7:\"menuset\";s:0:\"\";s:10:\"statistics\";s:0:\"\";s:11:\"bind_domain\";s:0:\"\";s:14:\"comment_status\";s:1:\"0\";s:13:\"reply_setting\";s:1:\"0\";}s:10:\"grouplevel\";s:1:\"0\";s:4:\"logo\";s:64:\"http://wx.kslselect.com/attachment/headimg_1.jpg?time=1531118751\";s:6:\"qrcode\";s:63:\"http://wx.kslselect.com/attachment/qrcode_1.jpg?time=1531118751\";s:9:\"switchurl\";s:51:\"./index.php?c=account&a=display&do=switch&uniacid=1\";s:3:\"sms\";i:0;s:7:\"setmeal\";a:5:{s:3:\"uid\";i:-1;s:8:\"username\";s:9:\"创始人\";s:9:\"timelimit\";s:9:\"未设置\";s:7:\"groupid\";s:2:\"-1\";s:9:\"groupname\";s:12:\"所有服务\";}}');
/*!40000 ALTER TABLE `ims_core_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_cron`
--

DROP TABLE IF EXISTS `ims_core_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_cron` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cloudid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `lastruntime` int(10) unsigned NOT NULL,
  `nextruntime` int(10) unsigned NOT NULL,
  `weekday` tinyint(3) NOT NULL,
  `day` tinyint(3) NOT NULL,
  `hour` tinyint(3) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `extra` varchar(5000) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `createtime` (`createtime`),
  KEY `nextruntime` (`nextruntime`),
  KEY `uniacid` (`uniacid`),
  KEY `cloudid` (`cloudid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_cron`
--

LOCK TABLES `ims_core_cron` WRITE;
/*!40000 ALTER TABLE `ims_core_cron` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_cron_record`
--

DROP TABLE IF EXISTS `ims_core_cron_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_cron_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `tid` (`tid`),
  KEY `module` (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_cron_record`
--

LOCK TABLES `ims_core_cron_record` WRITE;
/*!40000 ALTER TABLE `ims_core_cron_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_cron_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_job`
--

DROP TABLE IF EXISTS `ims_core_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `title` varchar(22) NOT NULL,
  `handled` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_job`
--

LOCK TABLES `ims_core_job` WRITE;
/*!40000 ALTER TABLE `ims_core_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_menu`
--

DROP TABLE IF EXISTS `ims_core_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `title` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `append_title` varchar(30) NOT NULL,
  `append_url` varchar(255) NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `is_display` tinyint(3) unsigned NOT NULL,
  `is_system` tinyint(3) unsigned NOT NULL,
  `permission_name` varchar(50) NOT NULL,
  `group_name` varchar(30) NOT NULL,
  `icon` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_menu`
--

LOCK TABLES `ims_core_menu` WRITE;
/*!40000 ALTER TABLE `ims_core_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_paylog`
--

DROP TABLE IF EXISTS `ims_core_paylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_paylog` (
  `plid` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `acid` int(10) NOT NULL,
  `openid` varchar(40) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `tid` varchar(128) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `tag` varchar(2000) NOT NULL,
  `is_usecard` tinyint(3) unsigned NOT NULL,
  `card_type` tinyint(3) unsigned NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `card_fee` decimal(10,2) unsigned NOT NULL,
  `encrypt_code` varchar(100) NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `idx_openid` (`openid`),
  KEY `idx_tid` (`tid`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_paylog`
--

LOCK TABLES `ims_core_paylog` WRITE;
/*!40000 ALTER TABLE `ims_core_paylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_paylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_performance`
--

DROP TABLE IF EXISTS `ims_core_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_performance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `runtime` varchar(10) NOT NULL,
  `runurl` varchar(512) NOT NULL,
  `runsql` varchar(512) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_performance`
--

LOCK TABLES `ims_core_performance` WRITE;
/*!40000 ALTER TABLE `ims_core_performance` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_queue`
--

DROP TABLE IF EXISTS `ims_core_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_queue` (
  `qid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `message` varchar(2000) NOT NULL,
  `params` varchar(1000) NOT NULL,
  `keyword` varchar(1000) NOT NULL,
  `response` varchar(2000) NOT NULL,
  `module` varchar(50) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `module` (`module`),
  KEY `dateline` (`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_queue`
--

LOCK TABLES `ims_core_queue` WRITE;
/*!40000 ALTER TABLE `ims_core_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_refundlog`
--

DROP TABLE IF EXISTS `ims_core_refundlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_refundlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `refund_uniontid` varchar(64) NOT NULL,
  `reason` varchar(80) NOT NULL,
  `uniontid` varchar(64) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refund_uniontid` (`refund_uniontid`),
  KEY `uniontid` (`uniontid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_refundlog`
--

LOCK TABLES `ims_core_refundlog` WRITE;
/*!40000 ALTER TABLE `ims_core_refundlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_refundlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_resource`
--

DROP TABLE IF EXISTS `ims_core_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_resource` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `trunk` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `acid` (`uniacid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_resource`
--

LOCK TABLES `ims_core_resource` WRITE;
/*!40000 ALTER TABLE `ims_core_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_sendsms_log`
--

DROP TABLE IF EXISTS `ims_core_sendsms_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_sendsms_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `createtime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_sendsms_log`
--

LOCK TABLES `ims_core_sendsms_log` WRITE;
/*!40000 ALTER TABLE `ims_core_sendsms_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_core_sendsms_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_sessions`
--

DROP TABLE IF EXISTS `ims_core_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_sessions` (
  `sid` char(32) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `data` varchar(5000) NOT NULL,
  `expiretime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_sessions`
--

LOCK TABLES `ims_core_sessions` WRITE;
/*!40000 ALTER TABLE `ims_core_sessions` DISABLE KEYS */;
INSERT INTO `ims_core_sessions` VALUES ('b12226b993c091f49522cb9fc8abc837',1,'183.48.27.76','',1526224412),('ce2277cfcb388bf2627848de8e998d04',1,'o78Z_vxd1HqxSQqZ1dvDc9bk03HI','openid|s:28:\"o78Z_vxd1HqxSQqZ1dvDc9bk03HI\";__reply_times|a:3:{s:7:\"content\";s:62:\"http://zilijr.com/app/index.php?i=3&c=entry&do=vip&m=fy_lesson\";s:4:\"date\";s:10:\"2018-05-03\";s:5:\"times\";i:1;}',1525361980),('1f2eeb3ee535ea73d242deca55704db6',1,'o78Z_v3hKJjmiVzHFMETlxGlmw7M','openid|s:28:\"o78Z_v3hKJjmiVzHFMETlxGlmw7M\";__reply_times|a:3:{s:7:\"content\";s:50:\"http://zilijr.com/app/index.php?i=3&c=entry&eid=82\";s:4:\"date\";s:10:\"2018-05-03\";s:5:\"times\";i:1;}',1525362020),('de226cbcbbc1c244d04c3a75ac6f60c5',1,'113.109.74.120','',1531982704);
/*!40000 ALTER TABLE `ims_core_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_core_settings`
--

DROP TABLE IF EXISTS `ims_core_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_core_settings` (
  `key` varchar(200) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_core_settings`
--

LOCK TABLES `ims_core_settings` WRITE;
/*!40000 ALTER TABLE `ims_core_settings` DISABLE KEYS */;
INSERT INTO `ims_core_settings` VALUES ('copyright','a:1:{s:6:\"slides\";a:3:{i:0;s:58:\"https://img.alicdn.com/tps/TB1pfG4IFXXXXc6XXXXXXXXXXXX.jpg\";i:1;s:58:\"https://img.alicdn.com/tps/TB1sXGYIFXXXXc5XpXXXXXXXXXX.jpg\";i:2;s:58:\"https://img.alicdn.com/tps/TB1h9xxIFXXXXbKXXXXXXXXXXXX.jpg\";}}'),('authmode','i:1;'),('close','a:2:{s:6:\"status\";s:1:\"0\";s:6:\"reason\";s:0:\"\";}'),('register','a:4:{s:4:\"open\";i:1;s:6:\"verify\";i:0;s:4:\"code\";i:1;s:7:\"groupid\";i:1;}'),('site','s:0:\"\";'),('cloudip','a:2:{s:2:\"ip\";s:13:\"121.9.212.222\";s:6:\"expire\";i:1531122314;}'),('module_ban','a:0:{}'),('module_upgrade','a:0:{}');
/*!40000 ALTER TABLE `ims_core_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_coupon_location`
--

DROP TABLE IF EXISTS `ims_coupon_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_coupon_location` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `province` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `district` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `photo_list` varchar(10000) NOT NULL,
  `avg_price` int(10) unsigned NOT NULL,
  `open_time` varchar(50) NOT NULL,
  `recommend` varchar(255) NOT NULL,
  `special` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `offset_type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_coupon_location`
--

LOCK TABLES `ims_coupon_location` WRITE;
/*!40000 ALTER TABLE `ims_coupon_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_coupon_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_cover_reply`
--

DROP TABLE IF EXISTS `ims_cover_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_cover_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `do` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_cover_reply`
--

LOCK TABLES `ims_cover_reply` WRITE;
/*!40000 ALTER TABLE `ims_cover_reply` DISABLE KEYS */;
INSERT INTO `ims_cover_reply` VALUES (1,1,0,7,'mc','','进入个人中心','','','./index.php?c=mc&a=home&i=1'),(2,1,1,8,'site','','进入首页','','','./index.php?c=home&i=1&t=1');
/*!40000 ALTER TABLE `ims_cover_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_cron_job`
--

DROP TABLE IF EXISTS `ims_cron_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_cron_job` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `return` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `runtime` double(8,2) NOT NULL,
  `cron_manager_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_cron_job`
--

LOCK TABLES `ims_cron_job` WRITE;
/*!40000 ALTER TABLE `ims_cron_job` DISABLE KEYS */;
INSERT INTO `ims_cron_job` VALUES (7,'Coupon-expire-notice','',0.00,24),(8,'Coupon-send','',0.00,24),(9,'Member-validity','',0.00,24),(10,'Limit-buy','',0.01,24),(11,'Coupon-expire-notice','',0.00,33),(12,'Coupon-send','',0.00,33),(13,'Member-validity','',0.00,33),(14,'Limit-buy','',0.02,33);
/*!40000 ALTER TABLE `ims_cron_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_cron_manager`
--

DROP TABLE IF EXISTS `ims_cron_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_cron_manager` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rundate` datetime NOT NULL,
  `runtime` double(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_cron_manager`
--

LOCK TABLES `ims_cron_manager` WRITE;
/*!40000 ALTER TABLE `ims_cron_manager` DISABLE KEYS */;
INSERT INTO `ims_cron_manager` VALUES (18,'2018-07-09 14:24:01',0.00),(19,'2018-07-09 14:25:01',0.00),(20,'2018-07-09 14:26:01',0.00),(21,'2018-07-09 14:27:01',0.00),(22,'2018-07-09 14:28:01',0.00),(23,'2018-07-09 14:29:02',0.00),(24,'2018-07-09 14:30:01',0.01),(25,'2018-07-09 14:31:01',0.00),(26,'2018-07-09 14:32:01',0.00),(27,'2018-07-09 14:34:02',0.00),(28,'2018-07-09 14:35:02',0.00),(29,'2018-07-09 14:36:01',0.00),(30,'2018-07-09 14:37:01',0.00),(31,'2018-07-09 14:38:01',0.00),(32,'2018-07-09 14:39:01',0.00),(33,'2018-07-09 14:40:02',0.02),(34,'2018-07-09 14:41:01',0.00),(35,'2018-07-09 14:42:01',0.00),(36,'2018-07-09 14:43:02',0.00),(37,'2018-07-09 14:44:01',0.00),(38,'2018-07-09 14:45:01',0.00),(39,'2018-07-09 14:46:01',0.00),(40,'2018-07-09 14:47:01',0.00);
/*!40000 ALTER TABLE `ims_cron_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_custom_reply`
--

DROP TABLE IF EXISTS `ims_custom_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_custom_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `start1` int(10) NOT NULL,
  `end1` int(10) NOT NULL,
  `start2` int(10) NOT NULL,
  `end2` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_custom_reply`
--

LOCK TABLES `ims_custom_reply` WRITE;
/*!40000 ALTER TABLE `ims_custom_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_custom_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_failed_jobs`
--

DROP TABLE IF EXISTS `ims_failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_failed_jobs`
--

LOCK TABLES `ims_failed_jobs` WRITE;
/*!40000 ALTER TABLE `ims_failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_images_reply`
--

DROP TABLE IF EXISTS `ims_images_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_images_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_images_reply`
--

LOCK TABLES `ims_images_reply` WRITE;
/*!40000 ALTER TABLE `ims_images_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_images_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_job`
--

DROP TABLE IF EXISTS `ims_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `payload` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `title` varchar(22) NOT NULL,
  `handled` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_job`
--

LOCK TABLES `ims_job` WRITE;
/*!40000 ALTER TABLE `ims_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_jobs`
--

DROP TABLE IF EXISTS `ims_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_jobs`
--

LOCK TABLES `ims_jobs` WRITE;
/*!40000 ALTER TABLE `ims_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_laravel_sms`
--

DROP TABLE IF EXISTS `ims_laravel_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_laravel_sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `temp_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `voice_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fail_times` mediumint(9) NOT NULL DEFAULT '0',
  `last_fail_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sent_time` int(10) unsigned NOT NULL DEFAULT '0',
  `result_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_laravel_sms`
--

LOCK TABLES `ims_laravel_sms` WRITE;
/*!40000 ALTER TABLE `ims_laravel_sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_laravel_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_cash_record`
--

DROP TABLE IF EXISTS `ims_mc_cash_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_cash_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `fee` decimal(10,2) unsigned NOT NULL,
  `final_fee` decimal(10,2) unsigned NOT NULL,
  `credit1` int(10) unsigned NOT NULL,
  `credit1_fee` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `cash` decimal(10,2) unsigned NOT NULL,
  `return_cash` decimal(10,2) unsigned NOT NULL,
  `final_cash` decimal(10,2) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `trade_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_cash_record`
--

LOCK TABLES `ims_mc_cash_record` WRITE;
/*!40000 ALTER TABLE `ims_mc_cash_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_cash_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_chats_record`
--

DROP TABLE IF EXISTS `ims_mc_chats_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_chats_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `flag` tinyint(3) unsigned NOT NULL,
  `openid` varchar(32) NOT NULL,
  `msgtype` varchar(15) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`),
  KEY `openid` (`openid`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_chats_record`
--

LOCK TABLES `ims_mc_chats_record` WRITE;
/*!40000 ALTER TABLE `ims_mc_chats_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_chats_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_credits_recharge`
--

DROP TABLE IF EXISTS `ims_mc_credits_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_credits_recharge` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `tid` varchar(64) NOT NULL,
  `transid` varchar(30) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `type` varchar(15) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `backtype` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid_uid` (`uniacid`,`uid`),
  KEY `idx_tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_credits_recharge`
--

LOCK TABLES `ims_mc_credits_recharge` WRITE;
/*!40000 ALTER TABLE `ims_mc_credits_recharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_credits_recharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_credits_record`
--

DROP TABLE IF EXISTS `ims_mc_credits_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_credits_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `uniacid` int(11) NOT NULL,
  `credittype` varchar(10) NOT NULL,
  `num` decimal(10,2) NOT NULL,
  `operator` int(10) unsigned NOT NULL,
  `module` varchar(30) NOT NULL,
  `clerk_id` int(10) unsigned NOT NULL,
  `store_id` int(10) unsigned NOT NULL,
  `clerk_type` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `remark` varchar(200) NOT NULL,
  `real_uniacid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_credits_record`
--

LOCK TABLES `ims_mc_credits_record` WRITE;
/*!40000 ALTER TABLE `ims_mc_credits_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_credits_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_fans_groups`
--

DROP TABLE IF EXISTS `ims_mc_fans_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_fans_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groups` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_fans_groups`
--

LOCK TABLES `ims_mc_fans_groups` WRITE;
/*!40000 ALTER TABLE `ims_mc_fans_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_fans_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_fans_tag_mapping`
--

DROP TABLE IF EXISTS `ims_mc_fans_tag_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_fans_tag_mapping` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fanid` int(11) unsigned NOT NULL,
  `tagid` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mapping` (`fanid`,`tagid`),
  KEY `fanid_index` (`fanid`),
  KEY `tagid_index` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_fans_tag_mapping`
--

LOCK TABLES `ims_mc_fans_tag_mapping` WRITE;
/*!40000 ALTER TABLE `ims_mc_fans_tag_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_fans_tag_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_groups`
--

DROP TABLE IF EXISTS `ims_mc_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_groups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `credit` int(10) unsigned NOT NULL,
  `isdefault` tinyint(4) NOT NULL,
  PRIMARY KEY (`groupid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_groups`
--

LOCK TABLES `ims_mc_groups` WRITE;
/*!40000 ALTER TABLE `ims_mc_groups` DISABLE KEYS */;
INSERT INTO `ims_mc_groups` VALUES (1,1,'默认会员组',0,1);
/*!40000 ALTER TABLE `ims_mc_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_handsel`
--

DROP TABLE IF EXISTS `ims_mc_handsel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_handsel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `touid` int(10) unsigned NOT NULL,
  `fromuid` varchar(32) NOT NULL,
  `module` varchar(30) NOT NULL,
  `sign` varchar(100) NOT NULL,
  `action` varchar(20) NOT NULL,
  `credit_value` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`touid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_handsel`
--

LOCK TABLES `ims_mc_handsel` WRITE;
/*!40000 ALTER TABLE `ims_mc_handsel` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_handsel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_mapping_fans`
--

DROP TABLE IF EXISTS `ims_mc_mapping_fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_mapping_fans` (
  `fanid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `acid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `groupid` varchar(30) NOT NULL,
  `salt` char(8) NOT NULL,
  `follow` tinyint(1) unsigned NOT NULL,
  `followtime` int(10) unsigned NOT NULL,
  `unfollowtime` int(10) unsigned NOT NULL,
  `tag` varchar(1000) NOT NULL,
  `updatetime` int(10) unsigned DEFAULT NULL,
  `unionid` varchar(64) NOT NULL,
  PRIMARY KEY (`fanid`),
  UNIQUE KEY `openid_2` (`openid`),
  KEY `acid` (`acid`),
  KEY `uniacid` (`uniacid`),
  KEY `nickname` (`nickname`),
  KEY `updatetime` (`updatetime`),
  KEY `uid` (`uid`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_mapping_fans`
--

LOCK TABLES `ims_mc_mapping_fans` WRITE;
/*!40000 ALTER TABLE `ims_mc_mapping_fans` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_mapping_fans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_mapping_ucenter`
--

DROP TABLE IF EXISTS `ims_mc_mapping_ucenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_mapping_ucenter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `centeruid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_mapping_ucenter`
--

LOCK TABLES `ims_mc_mapping_ucenter` WRITE;
/*!40000 ALTER TABLE `ims_mc_mapping_ucenter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_mapping_ucenter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_mass_record`
--

DROP TABLE IF EXISTS `ims_mc_mass_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_mass_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `fansnum` int(10) unsigned NOT NULL,
  `msgtype` varchar(10) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `group` int(10) NOT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `media_id` varchar(100) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `cron_id` int(10) unsigned NOT NULL,
  `sendtime` int(10) unsigned NOT NULL,
  `finalsendtime` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_mass_record`
--

LOCK TABLES `ims_mc_mass_record` WRITE;
/*!40000 ALTER TABLE `ims_mc_mass_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_mass_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_member_address`
--

DROP TABLE IF EXISTS `ims_mc_member_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_member_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(50) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `zipcode` varchar(6) NOT NULL,
  `province` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `address` varchar(512) NOT NULL,
  `isdefault` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uinacid` (`uniacid`),
  KEY `idx_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_member_address`
--

LOCK TABLES `ims_mc_member_address` WRITE;
/*!40000 ALTER TABLE `ims_mc_member_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_member_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_member_fields`
--

DROP TABLE IF EXISTS `ims_mc_member_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_member_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_fieldid` (`fieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_member_fields`
--

LOCK TABLES `ims_mc_member_fields` WRITE;
/*!40000 ALTER TABLE `ims_mc_member_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_member_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_member_property`
--

DROP TABLE IF EXISTS `ims_mc_member_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_member_property` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `property` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_member_property`
--

LOCK TABLES `ims_mc_member_property` WRITE;
/*!40000 ALTER TABLE `ims_mc_member_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_member_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_members`
--

DROP TABLE IF EXISTS `ims_mc_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `mobile` varchar(18) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(8) NOT NULL,
  `groupid` int(11) NOT NULL,
  `credit1` decimal(10,2) unsigned NOT NULL,
  `credit2` decimal(10,2) unsigned NOT NULL,
  `credit3` decimal(10,2) unsigned NOT NULL,
  `credit4` decimal(10,2) unsigned NOT NULL,
  `credit5` decimal(10,2) unsigned NOT NULL,
  `credit6` decimal(10,2) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `pay_password` varchar(30) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `groupid` (`groupid`),
  KEY `uniacid` (`uniacid`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_members`
--

LOCK TABLES `ims_mc_members` WRITE;
/*!40000 ALTER TABLE `ims_mc_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mc_oauth_fans`
--

DROP TABLE IF EXISTS `ims_mc_oauth_fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mc_oauth_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oauth_openid` varchar(50) NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_oauthopenid_acid` (`oauth_openid`,`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mc_oauth_fans`
--

LOCK TABLES `ims_mc_oauth_fans` WRITE;
/*!40000 ALTER TABLE `ims_mc_oauth_fans` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mc_oauth_fans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_menu_event`
--

DROP TABLE IF EXISTS `ims_menu_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_menu_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `picmd5` varchar(32) NOT NULL,
  `openid` varchar(128) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `picmd5` (`picmd5`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_menu_event`
--

LOCK TABLES `ims_menu_event` WRITE;
/*!40000 ALTER TABLE `ims_menu_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_menu_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_message_notice_log`
--

DROP TABLE IF EXISTS `ims_message_notice_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_message_notice_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `is_read` tinyint(3) NOT NULL,
  `uid` int(11) NOT NULL,
  `sign` varchar(22) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_message_notice_log`
--

LOCK TABLES `ims_message_notice_log` WRITE;
/*!40000 ALTER TABLE `ims_message_notice_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_message_notice_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_migrations`
--

DROP TABLE IF EXISTS `ims_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_migrations`
--

LOCK TABLES `ims_migrations` WRITE;
/*!40000 ALTER TABLE `ims_migrations` DISABLE KEYS */;
INSERT INTO `ims_migrations` VALUES (1,'2015_04_20_151900_create_uploads_table_zgldh',1),(2,'2015_12_21_111514_create_sms_table',1),(3,'2017_03_06_200815_create_ims_yz_goods_table',1),(4,'2017_03_06_200948_create_ims_yz_goods_param_table',1),(5,'2017_03_06_200953_create_ims_yz_goods_spec_table',1),(6,'2017_03_06_200959_create_ims_yz_goods_spec_item_table',1),(7,'2017_03_07_101149_create_ims_yz_member_cart_table',1),(8,'2017_03_07_101409_create_ims_yz_member_favorite_table',1),(9,'2017_03_07_101409_create_ims_yz_member_group_table',1),(10,'2017_03_07_101409_create_ims_yz_member_history_table',1),(11,'2017_03_07_101927_create_ims_yz_member_level_table',1),(12,'2017_03_07_104438_create_ims_yz_member_app_wechat_table',1),(13,'2017_03_07_104505_create_ims_yz_member_wechat_table',1),(14,'2017_03_07_104531_create_ims_yz_member_mini_app_table',1),(15,'2017_03_07_104650_create_ims_yz_account_open_config_table',1),(16,'2017_03_07_104720_create_ims_yz_member_qq_table',1),(17,'2017_03_07_104746_create_ims_yz_qq_config_table',1),(18,'2017_03_07_110235_create_ims_yz_member_table',1),(19,'2017_03_07_111409_create_ims_yz_category_table',1),(20,'2017_03_07_111521_create_ims_yz_brand_table',1),(21,'2017_03_07_111553_create_ims_yz_comment_table',1),(22,'2017_03_07_111632_create_ims_yz_goods_notices_table',1),(23,'2017_03_07_114208_create_ims_yz_member_unique_table',1),(24,'2017_03_07_121006_create_ims_yz_goods_share_table',1),(25,'2017_03_07_121308_create_ims_yz_goods_discount_table',1),(26,'2017_03_07_121324_create_ims_yz_goods_dispatch_table',1),(27,'2017_03_07_121334_create_ims_yz_dispatch_table',1),(28,'2017_03_07_125312_create_ims_yz_address_table',1),(29,'2017_03_07_125453_create_ims_yz_street_table',1),(30,'2017_03_07_165530_create_ims_yz_permission_table',1),(31,'2017_03_07_170917_create_ims_yz_role_table',1),(32,'2017_03_07_170931_create_ims_yz_user_role_table',1),(33,'2017_03_07_180547_create_ims_yz_goods_category_table',1),(34,'2017_03_07_224609_create_ims_yz_setting_table',1),(35,'2017_03_08_133637_create_ims_yz_member_relation_table',1),(36,'2017_03_08_142918_create_ims_yz_goods_sale_table',1),(37,'2017_03_08_151154_create_ims_yz_goods_option_table',1),(38,'2017_03_09_113554_create_ims_yz_sms_send_limit_table',1),(39,'2017_03_09_135930_create_ims_yz_menu_table',1),(40,'2017_03_09_152739_create_ims_yz_goods_privilege_table',1),(41,'2017_03_10_214956_create_ims_yz_dispatch_type_table',1),(42,'2017_03_10_215359_create_ims_yz_order_express_table',1),(43,'2017_03_10_215425_create_ims_yz_order_remark_table',1),(44,'2017_03_10_215716_create_ims_yz_order_table',1),(45,'2017_03_10_215727_create_ims_yz_order_goods_table',1),(46,'2017_03_10_215802_create_ims_yz_pay_type_table',1),(47,'2017_03_11_005752_create_ims_yz_options_table',1),(48,'2017_03_14_222459_create_ims_yz_order_operation_log_table',1),(49,'2017_03_15_154258_create_ims_yz_order_mapping_table',1),(50,'2017_03_17_172136_create_ims_yz_template_message_record_table',1),(51,'2017_03_17_172136_create_ims_yz_template_message_table',1),(52,'2017_03_28_152020_create_ims_yz_pay_access_log_table',1),(53,'2017_03_28_152122_create_ims_yz_pay_log_table',1),(54,'2017_03_28_152158_create_ims_yz_pay_refund_order_table',1),(55,'2017_03_28_152215_create_ims_yz_pay_request_data_table',1),(56,'2017_03_28_152224_create_ims_yz_pay_response_data_table',1),(57,'2017_03_28_203149_create_ims_yz_pay_order_table',1),(58,'2017_03_30_103633_create_ims_yz_member_income_table',1),(59,'2017_03_30_171219_create_ims_yz_withdraw_table',1),(60,'2017_04_06_145330_create_ims_yz_balance_recharge_table',1),(61,'2017_04_06_145357_create_ims_yz_balance_transfer_table',1),(62,'2017_04_07_163632_create_ims_yz_balance_table',1),(63,'2017_05_08_180345_create_ims_yz_order_address_table',1),(64,'2017_05_10_140639_add_ed_areaids_to_goods_sale_table',1),(65,'2017_05_10_164426_create_ims_yz_coupon_log_table',1),(66,'2017_05_10_164426_create_ims_yz_coupon_table',1),(67,'2017_05_10_164426_create_ims_yz_member_coupon_table',1),(68,'2017_05_10_170911_add_deleted_at_to_ims_yz_member_coupon',1),(69,'2017_05_10_183520_add_level_limit_to_ims_yz_coupon',1),(70,'2017_05_10_192431_create_ims_yz_order_pay_table',1),(71,'2017_05_10_223507_add_comment_add_type',1),(72,'2017_05_12_161241_create_ims_yz_pay_withdraw_order_table',1),(73,'2017_05_12_165251_delete_max_point_deduct_to_ims_yz_goods_sale_table',1),(74,'2017_05_12_170416_add_max_point_deduct_to_ims_yz_goods_sale_table',1),(75,'2017_05_13_174412_delete_point_to_ims_yz_goods_sale_table',1),(76,'2017_05_13_174655_add_point_to_ims_yz_goods_sale_table',1),(77,'2017_05_15_101443_add_delede_at_to_ims_yz_member_table',1),(78,'2017_05_15_181112_add_goods_market_price_order_goods_table',1),(79,'2017_05_15_181253_add_order_pay_id_to_yz_order_table',1),(80,'2017_05_16_125525_add_updated_at_to_ims_yz_member_unique_table',1),(81,'2017_05_18_104602_add_note_to_yz_order_address_table',1),(82,'2017_05_18_171828_create_ims_yz_return_express_table',1),(83,'2017_05_18_173923_create_ims_yz_resend_express_table',1),(84,'2017_05_24_105902_add_data_ims_yz_menu',1),(85,'2017_06_01_153820_add_data_to_yz_pay_type',1),(86,'2017_06_07_181046_change_enable_time_limit_to_goods_privilege_table',1),(87,'2017_06_07_181552_add_enable_time_limit_to_goods_privilege_table',1),(88,'2017_06_09_163600_add_menu_data_to_menu',1),(89,'2017_06_13_160452_create_jobs_table',1),(90,'2017_07_10_142350_add_order_sn_to_balance_transfer',1),(91,'2017_07_12_103441_add_ed_full_to_goods_sale',1),(92,'2017_07_14_120218_create_ims_yz_goods_coupon_table',1),(93,'2017_07_14_120255_create_ims_yz_goods_coupon_queue_table',1),(94,'2017_07_19_102348_add_servicetax_to_ims_yz_withdraw',1),(95,'2017_07_19_174939_add_is_virtual_to_yz_member_table',1),(96,'2017_07_20_114113_change_type_id_to_ims_yz_withdraw_table',1),(97,'2017_07_21_115131_add_data_to_pay_type',1),(98,'2017_07_25_150523_add_vip_price_to_order_goods',1),(99,'2017_08_01_170424_update_engine_innodb_to_mc_members',1),(100,'2017_08_02_095024_create_ims_yz_order_coupon_table',1),(101,'2017_08_02_095151_create_ims_yz_order_deduction_table',1),(102,'2017_08_02_095459_change_title_in_order_goods_table',1),(103,'2017_08_09_092854_update_field_type_to_yz_options',1),(104,'2017_08_10_100838_add_cloud_pay_to_pay_type_table',1),(105,'2017_08_15_144630_change_display_order_to_yz_category',1),(106,'2017_08_15_150915_add_cash_pay_to_pay_type_table',1),(107,'2017_08_16_144547_create_ims_yz_order_discount_table',1),(108,'2017_08_16_144558_create_ims_yz_order_goods_discount_table',1),(109,'2017_08_17_141207_create_ims_yz_order_goods_expansion_table',1),(110,'2017_08_23_172816_add_plugin_id_to_ims_yz_goods_table',1),(111,'2017_08_25_160823_create_ims_yz_goods_div_from_table',1),(112,'2017_09_04_133243_create_ims_yz_point_transfer_table',1),(113,'2017_09_05_163810_add_enabled_to_yz_options',1),(114,'2017_09_05_182552_add_app_to_pay_type_yangming_table',1),(115,'2017_09_13_144542_add_custom_and_validity_to_yzmember_table',1),(116,'2017_09_18_142739_update_field_content_to_yz_goods',1),(117,'2017_09_18_162356_create_ims_yz_admin_operation_log_table',1),(118,'2017_09_20_152105_add_member_form_to_ims_yz_member',1),(119,'2017_09_22_165036_restructure_to_yz_goods_coupon_table',1),(120,'2017_09_25_192336_add_field_to_yz_member',1),(121,'2017_09_26_161953_add_comment_id_to_order_goods_table',1),(122,'2017_09_27_104605_create_ims_yz_order_setting_table',1),(123,'2017_09_27_151108_update_field_to_yz_member',1),(124,'2017_09_29_160746_add_withdraw_mobile_to_yz_member',1),(125,'2017_09_29_172128_create_ims_yz_withdraw_set_log_table',1),(126,'2017_09_29_181923_change_dispatch_type',1),(127,'2017_10_10_153038_create_ims_cron_job_table',1),(128,'2017_10_10_153103_create_ims_cron_manager_table',1),(129,'2017_10_14_114327_add_plugin_id_to_order',1),(130,'2017_10_17_184012_add_payment_amount_to_order_goods_table',1),(131,'2017_10_17_190125_change_deduction_id_to_order_deduction',1),(132,'2017_10_17_194008_create_ims_yz_order_goods_deduction_table',1),(133,'2017_10_17_200205_create_ims_yz_deduction_table',1),(134,'2017_10_17_200951_create_ims_yz_virtual_coin_table',1),(135,'2017_10_17_220140_change_code_to_order_deduction',1),(136,'2017_10_19_134334_add_source_member_id_to_credit_log_table',1),(137,'2017_10_23_145507_add_uid_to_admin_log',1),(138,'2017_10_23_161225_create_ims_yz_member_bank_card_table',1),(139,'2017_10_24_140051_fix_order_pay_id',1),(140,'2017_10_24_221324_create_ims_yz_member_record_table',1),(141,'2017_10_25_114950_add_field_to_yz_member_bank_card_table',1),(142,'2017_10_26_100716_add_field_manual_type_to_yz_withdraw_table',1),(143,'2017_10_26_103244_add_field_wechat_to_yz_member_table',1),(144,'2017_11_01_135050_create_plugin_id_to_ims_yz_category_table',1),(145,'2017_11_03_102200_remake_pay_type',1),(146,'2017_11_09_150821_create_ims_yz_message_template_table',1),(147,'2017_11_10_154004_add_virtual_sales_to_ims_yz_goods_table',1),(148,'2017_11_13_162143_add_yunpay_to_yz_pay_type',1),(149,'2017_11_15_135050_create_uuid_to_ims_yz_member_wechat_table',1),(150,'2017_11_23_153451_create_ims_yz_point_love_set_table',1),(151,'2017_11_30_153224_update_text_yz_pay_type',1),(152,'2017_12_05_140051_insert_address',1),(153,'2017_12_06_085438_create_ims_yz_balance_recharge_activity_table',1),(154,'2017_12_07_113211_edit_address_and_street',1),(155,'2017_12_14_174340_add_is_push_to_yz_goods_sale_table',1),(156,'2017_12_15_145350_create_ims_yz_member_address_table',1),(157,'2017_12_15_154004_add_street_to_ims_yz_order_address',1),(158,'2017_12_27_154004_add_street_to_ims_yz_order_address1',1),(159,'2018_01_04_105037_create_failed_jobs_table',1),(160,'2018_01_15_151038_add_another_to_yz_pay_type_table',1),(161,'2018_01_18_154451_add_field_award_balance_to_yz_goods_sale',1),(162,'2018_01_30_111348_insert_address_130230_street',1),(163,'2018_01_30_113852_insert_address_140482_140483_street',1),(164,'2018_01_30_134719_insert_address_150703_street',1),(165,'2018_01_31_092957_insert_address_210184_street',1),(166,'2018_01_31_094651_insert_address_220625_street',1),(167,'2018_01_31_100306_insert_address_230100_street',1),(168,'2018_01_31_103912_insert_address_232700_street',1),(169,'2018_02_01_105009_insert_address_320300_street',1),(170,'2018_02_01_110102_insert_address_320500_street',1),(171,'2018_02_02_100007_insert_address_340000_street',1),(172,'2018_02_02_113445_insert_address_multiple_street',1),(173,'2018_02_06_171747_update_address_urban_districict_street',1),(174,'2018_02_08_093400_update_address_hong_kong',1),(175,'2018_02_08_103551_update_address_macao',1),(176,'2018_03_13_115937_update_field_poundage_rate_to_yz_withdraw',1),(177,'2018_04_09_152739_add_ims_yz_goods_privilege_table',1),(178,'2015_11_18_132512_add_polymorphic_columns_to_uploads',2),(179,'2018_02_26_111420_add_interests_rules_to_yz_member_level',2),(180,'2018_03_26_165632_create_yz_search_filtering_table',2),(181,'2018_03_28_154624_create_yz_goods_limitbuy_table',2),(182,'2018_03_29_170942_create_yz_goods_filtering_table',2),(183,'2018_04_10_141936_add_mark_to_yz_order',2),(184,'2018_04_23_103334_change_become_moneycount_to_member_relation_table',2),(185,'2018_04_25_100305_add_is_recommend_and_desc_to_yz_brand_table',2),(186,'2018_04_27_102921_create_yz_adv_table',2),(187,'2018_04_28_133828_create_ims_yz_goods_return_address_table',2),(188,'2018_05_07_150312_add_is_complex_to_yz_coupon',2),(189,'2018_05_10_093057_update_thumb_to_yz_goods_option',2),(190,'2018_05_14_140403_insert_address_511903_street',2),(191,'2018_05_17_104914_add_top_show_to_options_table',2),(192,'2018_05_19_172742_add_yz_openid_to_yz_member',2),(193,'2018_05_22_100539_create_yz_template_message_default_table',2),(194,'2018_05_22_115532_add_is_default_and_notice_type_to_message_template',2),(195,'2018_05_28_140403_delete_order_discount',2);
/*!40000 ALTER TABLE `ims_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_mobilenumber`
--

DROP TABLE IF EXISTS `ims_mobilenumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_mobilenumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(10) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_mobilenumber`
--

LOCK TABLES `ims_mobilenumber` WRITE;
/*!40000 ALTER TABLE `ims_mobilenumber` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_mobilenumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules`
--

DROP TABLE IF EXISTS `ims_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `version` varchar(15) NOT NULL,
  `ability` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `settings` tinyint(1) NOT NULL,
  `subscribes` varchar(500) NOT NULL,
  `handles` varchar(500) NOT NULL,
  `isrulefields` tinyint(1) NOT NULL,
  `issystem` tinyint(1) unsigned NOT NULL,
  `target` int(10) unsigned NOT NULL,
  `iscard` tinyint(3) unsigned NOT NULL,
  `permissions` varchar(5000) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `wxapp_support` tinyint(1) NOT NULL,
  `app_support` tinyint(1) NOT NULL,
  `welcome_support` int(2) NOT NULL,
  `oauth_type` tinyint(1) NOT NULL,
  `webapp_support` tinyint(1) NOT NULL,
  `phoneapp_support` tinyint(1) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules`
--

LOCK TABLES `ims_modules` WRITE;
/*!40000 ALTER TABLE `ims_modules` DISABLE KEYS */;
INSERT INTO `ims_modules` VALUES (1,'basic','system','基本文字回复','1.0','和您进行简单对话','一问一答得简单对话. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的回复内容.','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,2,0,0,0,0),(2,'news','system','基本混合图文回复','1.0','为你提供生动的图文资讯','一问一答得简单对话, 但是回复内容包括图片文字等更生动的媒体内容. 当访客的对话语句中包含指定关键字, 或对话语句完全等于特定关键字, 或符合某些特定的格式时. 系统自动应答设定好的图文回复内容.','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,2,0,0,0,0),(3,'music','system','基本音乐回复','1.0','提供语音、音乐等音频类回复','在回复规则中可选择具有语音、音乐等音频类的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝，实现一问一答得简单对话。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,2,0,0,0,0),(4,'userapi','system','自定义接口回复','1.1','更方便的第三方接口设置','自定义接口又称第三方接口，可以让开发者更方便的接入微擎系统，高效的与微信公众平台进行对接整合。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,2,0,0,0,0),(5,'recharge','system','会员中心充值模块','1.0','提供会员充值功能','','WeEngine Team','http://www.we7.cc/',0,'','',0,1,0,0,'','',1,2,0,0,0,0),(6,'custom','system','多客服转接','1.0.0','用来接入腾讯的多客服系统','','WeEngine Team','http://bbs.we7.cc',0,'a:0:{}','a:6:{i:0;s:5:\"image\";i:1;s:5:\"voice\";i:2;s:5:\"video\";i:3;s:8:\"location\";i:4;s:4:\"link\";i:5;s:4:\"text\";}',1,1,0,0,'','',1,2,0,0,0,0),(7,'images','system','基本图片回复','1.0','提供图片回复','在回复规则中可选择具有图片的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝图片。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,2,0,0,0,0),(8,'video','system','基本视频回复','1.0','提供图片回复','在回复规则中可选择具有视频的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝视频。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,2,0,0,0,0),(9,'voice','system','基本语音回复','1.0','提供语音回复','在回复规则中可选择具有语音的回复内容，并根据用户所设置的特定关键字精准的返回给粉丝语音。','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,2,0,0,0,0),(10,'chats','system','发送客服消息','1.0','公众号可以在粉丝最后发送消息的48小时内无限制发送消息','','WeEngine Team','http://www.we7.cc/',0,'','',0,1,0,0,'','',1,2,0,0,0,0),(11,'wxcard','system','微信卡券回复','1.0','微信卡券回复','微信卡券回复','WeEngine Team','http://www.we7.cc/',0,'','',1,1,0,0,'','',1,2,0,0,0,0),(200,'yun_shop','biz','芸商城','2.0.1','芸商城','芸商城','芸众','http://www.yunzshop.com/',1,'a:0:{}','a:1:{i:0;s:4:\"text\";}',0,0,0,0,'a:0:{}','Y',1,2,0,1,0,0);
/*!40000 ALTER TABLE `ims_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules_bindings`
--

DROP TABLE IF EXISTS `ims_modules_bindings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules_bindings` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) NOT NULL,
  `entry` varchar(30) NOT NULL,
  `call` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `do` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `direct` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `displayorder` tinyint(255) unsigned NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `idx_module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules_bindings`
--

LOCK TABLES `ims_modules_bindings` WRITE;
/*!40000 ALTER TABLE `ims_modules_bindings` DISABLE KEYS */;
INSERT INTO `ims_modules_bindings` VALUES (201,'yun_shop','cover','','商城入口','shop','',0,'','',0),(202,'yun_shop','menu','','商城管理','shop','',1,'','',0),(203,'yun_shop','menu','','会员管理','member','',1,'','',0),(204,'yun_shop','menu','','订单管理','order','',1,'','',0),(205,'yun_shop','menu','','财务管理','finance','',1,'','',0),(206,'yun_shop','menu','','插件中心','plugins','',1,'','',0),(207,'yun_shop','menu','','系统设置','system','',1,'','',0);
/*!40000 ALTER TABLE `ims_modules_bindings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules_plugin`
--

DROP TABLE IF EXISTS `ims_modules_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules_plugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `main_module` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `main_module` (`main_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules_plugin`
--

LOCK TABLES `ims_modules_plugin` WRITE;
/*!40000 ALTER TABLE `ims_modules_plugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_plugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules_rank`
--

DROP TABLE IF EXISTS `ims_modules_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `rank` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module_name` (`module_name`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules_rank`
--

LOCK TABLES `ims_modules_rank` WRITE;
/*!40000 ALTER TABLE `ims_modules_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_modules_recycle`
--

DROP TABLE IF EXISTS `ims_modules_recycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_modules_recycle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `modulename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `modulename` (`modulename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_modules_recycle`
--

LOCK TABLES `ims_modules_recycle` WRITE;
/*!40000 ALTER TABLE `ims_modules_recycle` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_modules_recycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_music_reply`
--

DROP TABLE IF EXISTS `ims_music_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_music_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `url` varchar(300) NOT NULL,
  `hqurl` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_music_reply`
--

LOCK TABLES `ims_music_reply` WRITE;
/*!40000 ALTER TABLE `ims_music_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_music_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_news_reply`
--

DROP TABLE IF EXISTS `ims_news_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_news_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `parent_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `content` mediumtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `media_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_news_reply`
--

LOCK TABLES `ims_news_reply` WRITE;
/*!40000 ALTER TABLE `ims_news_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_news_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_phoneapp_versions`
--

DROP TABLE IF EXISTS `ims_phoneapp_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_phoneapp_versions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `version` varchar(20) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `modules` text,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_phoneapp_versions`
--

LOCK TABLES `ims_phoneapp_versions` WRITE;
/*!40000 ALTER TABLE `ims_phoneapp_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_phoneapp_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_profile_fields`
--

DROP TABLE IF EXISTS `ims_profile_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_profile_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `unchangeable` tinyint(1) NOT NULL,
  `showinregister` tinyint(1) NOT NULL,
  `field_length` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_profile_fields`
--

LOCK TABLES `ims_profile_fields` WRITE;
/*!40000 ALTER TABLE `ims_profile_fields` DISABLE KEYS */;
INSERT INTO `ims_profile_fields` VALUES (1,'realname',1,'真实姓名','',0,1,1,1,0),(2,'nickname',1,'昵称','',1,1,0,1,0),(3,'avatar',1,'头像','',1,0,0,0,0),(4,'qq',1,'QQ号','',0,0,0,1,0),(5,'mobile',1,'手机号码','',0,0,0,0,0),(6,'vip',1,'VIP级别','',0,0,0,0,0),(7,'gender',1,'性别','',0,0,0,0,0),(8,'birthyear',1,'出生生日','',0,0,0,0,0),(9,'constellation',1,'星座','',0,0,0,0,0),(10,'zodiac',1,'生肖','',0,0,0,0,0),(11,'telephone',1,'固定电话','',0,0,0,0,0),(12,'idcard',1,'证件号码','',0,0,0,0,0),(13,'studentid',1,'学号','',0,0,0,0,0),(14,'grade',1,'班级','',0,0,0,0,0),(15,'address',1,'邮寄地址','',0,0,0,0,0),(16,'zipcode',1,'邮编','',0,0,0,0,0),(17,'nationality',1,'国籍','',0,0,0,0,0),(18,'resideprovince',1,'居住地址','',0,0,0,0,0),(19,'graduateschool',1,'毕业学校','',0,0,0,0,0),(20,'company',1,'公司','',0,0,0,0,0),(21,'education',1,'学历','',0,0,0,0,0),(22,'occupation',1,'职业','',0,0,0,0,0),(23,'position',1,'职位','',0,0,0,0,0),(24,'revenue',1,'年收入','',0,0,0,0,0),(25,'affectivestatus',1,'情感状态','',0,0,0,0,0),(26,'lookingfor',1,' 交友目的','',0,0,0,0,0),(27,'bloodtype',1,'血型','',0,0,0,0,0),(28,'height',1,'身高','',0,0,0,0,0),(29,'weight',1,'体重','',0,0,0,0,0),(30,'alipay',1,'支付宝帐号','',0,0,0,0,0),(31,'msn',1,'MSN','',0,0,0,0,0),(32,'email',1,'电子邮箱','',0,0,0,0,0),(33,'taobao',1,'阿里旺旺','',0,0,0,0,0),(34,'site',1,'主页','',0,0,0,0,0),(35,'bio',1,'自我介绍','',0,0,0,0,0),(36,'interest',1,'兴趣爱好','',0,0,0,0,0);
/*!40000 ALTER TABLE `ims_profile_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_qrcode`
--

DROP TABLE IF EXISTS `ims_qrcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_qrcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `extra` int(10) unsigned NOT NULL,
  `qrcid` bigint(20) NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `model` tinyint(1) unsigned NOT NULL,
  `ticket` varchar(250) NOT NULL,
  `url` varchar(256) NOT NULL,
  `expire` int(10) unsigned NOT NULL,
  `subnum` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_qrcid` (`qrcid`),
  KEY `uniacid` (`uniacid`),
  KEY `ticket` (`ticket`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_qrcode`
--

LOCK TABLES `ims_qrcode` WRITE;
/*!40000 ALTER TABLE `ims_qrcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_qrcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_qrcode_stat`
--

DROP TABLE IF EXISTS `ims_qrcode_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_qrcode_stat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `openid` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `qrcid` bigint(20) unsigned NOT NULL,
  `scene_str` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_qrcode_stat`
--

LOCK TABLES `ims_qrcode_stat` WRITE;
/*!40000 ALTER TABLE `ims_qrcode_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_qrcode_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_rule`
--

DROP TABLE IF EXISTS `ims_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `containtype` varchar(100) NOT NULL,
  `reply_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_rule`
--

LOCK TABLES `ims_rule` WRITE;
/*!40000 ALTER TABLE `ims_rule` DISABLE KEYS */;
INSERT INTO `ims_rule` VALUES (1,0,'城市天气','userapi',255,1,'',0),(2,0,'百度百科','userapi',255,1,'',0),(3,0,'即时翻译','userapi',255,1,'',0),(4,0,'今日老黄历','userapi',255,1,'',0),(5,0,'看新闻','userapi',255,1,'',0),(6,0,'快递查询','userapi',255,1,'',0),(7,1,'个人中心入口设置','cover',0,1,'',0),(8,1,'微擎团队入口设置','cover',0,1,'',0);
/*!40000 ALTER TABLE `ims_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_rule_keyword`
--

DROP TABLE IF EXISTS `ims_rule_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_rule_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_content` (`content`),
  KEY `rid` (`rid`),
  KEY `idx_rid` (`rid`),
  KEY `idx_uniacid_type_content` (`uniacid`,`type`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_rule_keyword`
--

LOCK TABLES `ims_rule_keyword` WRITE;
/*!40000 ALTER TABLE `ims_rule_keyword` DISABLE KEYS */;
INSERT INTO `ims_rule_keyword` VALUES (1,1,0,'userapi','^.+天气$',3,255,1),(2,2,0,'userapi','^百科.+$',3,255,1),(3,2,0,'userapi','^定义.+$',3,255,1),(4,3,0,'userapi','^@.+$',3,255,1),(5,4,0,'userapi','日历',1,255,1),(6,4,0,'userapi','万年历',1,255,1),(7,4,0,'userapi','黄历',1,255,1),(8,4,0,'userapi','几号',1,255,1),(9,5,0,'userapi','新闻',1,255,1),(10,6,0,'userapi','^(申通|圆通|中通|汇通|韵达|顺丰|EMS) *[a-z0-9]{1,}$',3,255,1),(11,7,1,'cover','个人中心',1,0,1),(12,8,1,'cover','首页',1,0,1);
/*!40000 ALTER TABLE `ims_rule_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_article`
--

DROP TABLE IF EXISTS `ims_site_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `iscommend` tinyint(1) NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `pcate` int(10) unsigned NOT NULL,
  `ccate` int(10) unsigned NOT NULL,
  `template` varchar(300) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `incontent` tinyint(1) NOT NULL,
  `source` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `click` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `credit` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_iscommend` (`iscommend`),
  KEY `idx_ishot` (`ishot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_article`
--

LOCK TABLES `ims_site_article` WRITE;
/*!40000 ALTER TABLE `ims_site_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_article_comment`
--

DROP TABLE IF EXISTS `ims_site_article_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_article_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `articleid` int(10) NOT NULL,
  `parentid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `content` text,
  `is_read` tinyint(1) NOT NULL,
  `iscomment` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `articleid` (`articleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_article_comment`
--

LOCK TABLES `ims_site_article_comment` WRITE;
/*!40000 ALTER TABLE `ims_site_article_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_article_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_category`
--

DROP TABLE IF EXISTS `ims_site_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `parentid` int(10) unsigned NOT NULL,
  `displayorder` tinyint(3) unsigned NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `icon` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `linkurl` varchar(500) NOT NULL,
  `ishomepage` tinyint(1) NOT NULL,
  `icontype` tinyint(1) unsigned NOT NULL,
  `css` varchar(500) NOT NULL,
  `multiid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_category`
--

LOCK TABLES `ims_site_category` WRITE;
/*!40000 ALTER TABLE `ims_site_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_multi`
--

DROP TABLE IF EXISTS `ims_site_multi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `site_info` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `bindhost` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `bindhost` (`bindhost`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_multi`
--

LOCK TABLES `ims_site_multi` WRITE;
/*!40000 ALTER TABLE `ims_site_multi` DISABLE KEYS */;
INSERT INTO `ims_site_multi` VALUES (1,1,'微擎团队',1,'',1,'');
/*!40000 ALTER TABLE `ims_site_multi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_nav`
--

DROP TABLE IF EXISTS `ims_site_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `section` tinyint(4) NOT NULL,
  `module` varchar(50) NOT NULL,
  `displayorder` smallint(5) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(500) NOT NULL,
  `css` varchar(1000) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `categoryid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_nav`
--

LOCK TABLES `ims_site_nav` WRITE;
/*!40000 ALTER TABLE `ims_site_nav` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_page`
--

DROP TABLE IF EXISTS `ims_site_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` longtext NOT NULL,
  `html` longtext NOT NULL,
  `multipage` longtext NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `goodnum` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_page`
--

LOCK TABLES `ims_site_page` WRITE;
/*!40000 ALTER TABLE `ims_site_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_slide`
--

DROP TABLE IF EXISTS `ims_site_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `displayorder` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `multiid` (`multiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_slide`
--

LOCK TABLES `ims_site_slide` WRITE;
/*!40000 ALTER TABLE `ims_site_slide` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_store_create_account`
--

DROP TABLE IF EXISTS `ims_site_store_create_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_store_create_account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `endtime` int(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_store_create_account`
--

LOCK TABLES `ims_site_store_create_account` WRITE;
/*!40000 ALTER TABLE `ims_site_store_create_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_create_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_store_goods`
--

DROP TABLE IF EXISTS `ims_site_store_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_store_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `title` varchar(100) NOT NULL,
  `module` varchar(50) NOT NULL,
  `account_num` int(10) NOT NULL,
  `wxapp_num` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `unit` varchar(15) NOT NULL,
  `slide` varchar(1000) NOT NULL,
  `category_id` int(10) NOT NULL,
  `title_initial` varchar(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `synopsis` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `module_group` int(10) NOT NULL,
  `api_num` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `module` (`module`),
  KEY `category_id` (`category_id`),
  KEY `price` (`price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_store_goods`
--

LOCK TABLES `ims_site_store_goods` WRITE;
/*!40000 ALTER TABLE `ims_site_store_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_store_order`
--

DROP TABLE IF EXISTS `ims_site_store_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_store_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` varchar(28) NOT NULL,
  `goodsid` int(10) NOT NULL,
  `duration` int(10) NOT NULL,
  `buyer` varchar(50) NOT NULL,
  `buyerid` int(10) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `changeprice` tinyint(1) NOT NULL,
  `createtime` int(10) NOT NULL,
  `uniacid` int(10) NOT NULL,
  `endtime` int(15) NOT NULL,
  `wxapp` int(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goodid` (`goodsid`),
  KEY `buyerid` (`buyerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_store_order`
--

LOCK TABLES `ims_site_store_order` WRITE;
/*!40000 ALTER TABLE `ims_site_store_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_store_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_styles`
--

DROP TABLE IF EXISTS `ims_site_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_styles`
--

LOCK TABLES `ims_site_styles` WRITE;
/*!40000 ALTER TABLE `ims_site_styles` DISABLE KEYS */;
INSERT INTO `ims_site_styles` VALUES (1,1,1,'微站默认模板_gC5C');
/*!40000 ALTER TABLE `ims_site_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_styles_vars`
--

DROP TABLE IF EXISTS `ims_site_styles_vars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_styles_vars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `templateid` int(10) unsigned NOT NULL,
  `styleid` int(10) unsigned NOT NULL,
  `variable` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_styles_vars`
--

LOCK TABLES `ims_site_styles_vars` WRITE;
/*!40000 ALTER TABLE `ims_site_styles_vars` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_site_styles_vars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_site_templates`
--

DROP TABLE IF EXISTS `ims_site_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `version` varchar(64) NOT NULL,
  `description` varchar(500) NOT NULL,
  `author` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `sections` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_site_templates`
--

LOCK TABLES `ims_site_templates` WRITE;
/*!40000 ALTER TABLE `ims_site_templates` DISABLE KEYS */;
INSERT INTO `ims_site_templates` VALUES (1,'default','微站默认模板','','由微擎提供默认微站模板套系','微擎团队','http://we7.cc','1',0);
/*!40000 ALTER TABLE `ims_site_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_fans`
--

DROP TABLE IF EXISTS `ims_stat_fans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `new` int(10) unsigned NOT NULL,
  `cancel` int(10) unsigned NOT NULL,
  `cumulate` int(10) NOT NULL,
  `date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`,`date`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_fans`
--

LOCK TABLES `ims_stat_fans` WRITE;
/*!40000 ALTER TABLE `ims_stat_fans` DISABLE KEYS */;
INSERT INTO `ims_stat_fans` VALUES (1,1,0,0,0,'20180502'),(2,1,0,0,0,'20180501'),(3,1,0,0,0,'20180430'),(4,1,0,0,0,'20180429'),(5,1,0,0,0,'20180428'),(6,1,0,0,0,'20180427'),(7,1,0,0,0,'20180426'),(8,1,0,0,0,'20180708'),(9,1,0,0,0,'20180707'),(10,1,0,0,0,'20180706'),(11,1,0,0,0,'20180705'),(12,1,0,0,0,'20180704'),(13,1,0,0,0,'20180703'),(14,1,0,0,0,'20180702');
/*!40000 ALTER TABLE `ims_stat_fans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_keyword`
--

DROP TABLE IF EXISTS `ims_stat_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` varchar(10) NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_keyword`
--

LOCK TABLES `ims_stat_keyword` WRITE;
/*!40000 ALTER TABLE `ims_stat_keyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_stat_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_msg_history`
--

DROP TABLE IF EXISTS `ims_stat_msg_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_msg_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `kid` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_msg_history`
--

LOCK TABLES `ims_stat_msg_history` WRITE;
/*!40000 ALTER TABLE `ims_stat_msg_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_stat_msg_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_rule`
--

DROP TABLE IF EXISTS `ims_stat_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_rule`
--

LOCK TABLES `ims_stat_rule` WRITE;
/*!40000 ALTER TABLE `ims_stat_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_stat_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_stat_visit`
--

DROP TABLE IF EXISTS `ims_stat_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_stat_visit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `module` varchar(100) NOT NULL,
  `count` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `module` (`module`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_stat_visit`
--

LOCK TABLES `ims_stat_visit` WRITE;
/*!40000 ALTER TABLE `ims_stat_visit` DISABLE KEYS */;
INSERT INTO `ims_stat_visit` VALUES (1,1,'we7_account',12,20180503,'web'),(2,1,'we7_api',2,20180503,'web');
/*!40000 ALTER TABLE `ims_stat_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_system_stat_visit`
--

DROP TABLE IF EXISTS `ims_system_stat_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_system_stat_visit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `modulename` varchar(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `displayorder` int(10) NOT NULL,
  `createtime` int(10) NOT NULL,
  `updatetime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_system_stat_visit`
--

LOCK TABLES `ims_system_stat_visit` WRITE;
/*!40000 ALTER TABLE `ims_system_stat_visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_system_stat_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account`
--

DROP TABLE IF EXISTS `ims_uni_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account` (
  `uniacid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `default_acid` int(10) unsigned NOT NULL,
  `rank` int(10) DEFAULT NULL,
  `title_initial` varchar(1) NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account`
--

LOCK TABLES `ims_uni_account` WRITE;
/*!40000 ALTER TABLE `ims_uni_account` DISABLE KEYS */;
INSERT INTO `ims_uni_account` VALUES (1,-1,'微擎团队','一个朝气蓬勃的团队',1,NULL,'W');
/*!40000 ALTER TABLE `ims_uni_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account_group`
--

DROP TABLE IF EXISTS `ims_uni_account_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `groupid` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account_group`
--

LOCK TABLES `ims_uni_account_group` WRITE;
/*!40000 ALTER TABLE `ims_uni_account_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account_menus`
--

DROP TABLE IF EXISTS `ims_uni_account_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `menuid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `sex` tinyint(3) unsigned NOT NULL,
  `group_id` int(10) NOT NULL,
  `client_platform_type` tinyint(3) unsigned NOT NULL,
  `area` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `isdeleted` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `menuid` (`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account_menus`
--

LOCK TABLES `ims_uni_account_menus` WRITE;
/*!40000 ALTER TABLE `ims_uni_account_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account_modules`
--

DROP TABLE IF EXISTS `ims_uni_account_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `module` varchar(50) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL,
  `settings` text NOT NULL,
  `shortcut` tinyint(1) unsigned NOT NULL,
  `displayorder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_module` (`module`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account_modules`
--

LOCK TABLES `ims_uni_account_modules` WRITE;
/*!40000 ALTER TABLE `ims_uni_account_modules` DISABLE KEYS */;
INSERT INTO `ims_uni_account_modules` VALUES (1,1,'yun_shop',1,'',0,0);
/*!40000 ALTER TABLE `ims_uni_account_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_account_users`
--

DROP TABLE IF EXISTS `ims_uni_account_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_account_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `role` varchar(255) NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_memberid` (`uid`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_account_users`
--

LOCK TABLES `ims_uni_account_users` WRITE;
/*!40000 ALTER TABLE `ims_uni_account_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_account_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_group`
--

DROP TABLE IF EXISTS `ims_uni_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `modules` text NOT NULL,
  `templates` varchar(5000) NOT NULL,
  `uniacid` int(10) unsigned NOT NULL,
  `owner_uid` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_group`
--

LOCK TABLES `ims_uni_group` WRITE;
/*!40000 ALTER TABLE `ims_uni_group` DISABLE KEYS */;
INSERT INTO `ims_uni_group` VALUES (1,'体验套餐服务','N;','N;',0,0);
/*!40000 ALTER TABLE `ims_uni_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_settings`
--

DROP TABLE IF EXISTS `ims_uni_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_settings` (
  `uniacid` int(10) unsigned NOT NULL,
  `passport` varchar(200) NOT NULL,
  `oauth` varchar(100) NOT NULL,
  `jsauth_acid` int(10) unsigned NOT NULL,
  `uc` varchar(500) NOT NULL,
  `notify` varchar(2000) NOT NULL,
  `creditnames` varchar(500) NOT NULL,
  `creditbehaviors` varchar(500) NOT NULL,
  `welcome` varchar(60) NOT NULL,
  `default` varchar(60) NOT NULL,
  `default_message` varchar(2000) NOT NULL,
  `payment` text NOT NULL,
  `stat` varchar(300) NOT NULL,
  `default_site` int(10) unsigned DEFAULT NULL,
  `sync` tinyint(3) unsigned NOT NULL,
  `recharge` varchar(500) NOT NULL,
  `tplnotice` varchar(1000) NOT NULL,
  `grouplevel` tinyint(3) unsigned NOT NULL,
  `mcplugin` varchar(500) NOT NULL,
  `exchange_enable` tinyint(3) unsigned NOT NULL,
  `coupon_type` tinyint(3) unsigned NOT NULL,
  `menuset` text NOT NULL,
  `statistics` varchar(100) NOT NULL,
  `bind_domain` varchar(200) NOT NULL,
  `comment_status` tinyint(1) NOT NULL,
  `reply_setting` tinyint(4) NOT NULL,
  PRIMARY KEY (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_settings`
--

LOCK TABLES `ims_uni_settings` WRITE;
/*!40000 ALTER TABLE `ims_uni_settings` DISABLE KEYS */;
INSERT INTO `ims_uni_settings` VALUES (1,'a:3:{s:8:\"focusreg\";i:0;s:4:\"item\";s:5:\"email\";s:4:\"type\";s:8:\"password\";}','a:2:{s:6:\"status\";s:1:\"0\";s:7:\"account\";s:1:\"0\";}',0,'a:1:{s:6:\"status\";i:0;}','a:1:{s:3:\"sms\";a:2:{s:7:\"balance\";i:0;s:9:\"signature\";s:0:\"\";}}','a:5:{s:7:\"credit1\";a:2:{s:5:\"title\";s:6:\"积分\";s:7:\"enabled\";i:1;}s:7:\"credit2\";a:2:{s:5:\"title\";s:6:\"余额\";s:7:\"enabled\";i:1;}s:7:\"credit3\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit4\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}s:7:\"credit5\";a:2:{s:5:\"title\";s:0:\"\";s:7:\"enabled\";i:0;}}','a:2:{s:8:\"activity\";s:7:\"credit1\";s:8:\"currency\";s:7:\"credit2\";}','','','','a:4:{s:6:\"credit\";a:1:{s:6:\"switch\";b:0;}s:6:\"alipay\";a:4:{s:6:\"switch\";b:0;s:7:\"account\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:6:\"secret\";s:0:\"\";}s:6:\"wechat\";a:5:{s:6:\"switch\";b:0;s:7:\"account\";b:0;s:7:\"signkey\";s:0:\"\";s:7:\"partner\";s:0:\"\";s:3:\"key\";s:0:\"\";}s:8:\"delivery\";a:1:{s:6:\"switch\";b:0;}}','',1,0,'','',0,'',0,0,'','','',0,0);
/*!40000 ALTER TABLE `ims_uni_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uni_verifycode`
--

DROP TABLE IF EXISTS `ims_uni_verifycode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uni_verifycode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `verifycode` varchar(6) NOT NULL,
  `total` tinyint(3) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uni_verifycode`
--

LOCK TABLES `ims_uni_verifycode` WRITE;
/*!40000 ALTER TABLE `ims_uni_verifycode` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uni_verifycode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_uploads`
--

DROP TABLE IF EXISTS `ims_uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_uploads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_uploads`
--

LOCK TABLES `ims_uploads` WRITE;
/*!40000 ALTER TABLE `ims_uploads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_userapi_cache`
--

DROP TABLE IF EXISTS `ims_userapi_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_userapi_cache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_userapi_cache`
--

LOCK TABLES `ims_userapi_cache` WRITE;
/*!40000 ALTER TABLE `ims_userapi_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_userapi_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_userapi_reply`
--

DROP TABLE IF EXISTS `ims_userapi_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_userapi_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `description` varchar(300) NOT NULL,
  `apiurl` varchar(300) NOT NULL,
  `token` varchar(32) NOT NULL,
  `default_text` varchar(100) NOT NULL,
  `cachetime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_userapi_reply`
--

LOCK TABLES `ims_userapi_reply` WRITE;
/*!40000 ALTER TABLE `ims_userapi_reply` DISABLE KEYS */;
INSERT INTO `ims_userapi_reply` VALUES (1,1,'\"城市名+天气\", 如: \"北京天气\"','weather.php','','',0),(2,2,'\"百科+查询内容\" 或 \"定义+查询内容\", 如: \"百科姚明\", \"定义自行车\"','baike.php','','',0),(3,3,'\"@查询内容(中文或英文)\"','translate.php','','',0),(4,4,'\"日历\", \"万年历\", \"黄历\"或\"几号\"','calendar.php','','',0),(5,5,'\"新闻\"','news.php','','',0),(6,6,'\"快递+单号\", 如: \"申通1200041125\"','express.php','','',0);
/*!40000 ALTER TABLE `ims_userapi_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users`
--

DROP TABLE IF EXISTS `ims_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` int(10) unsigned NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `joindate` int(10) unsigned NOT NULL,
  `joinip` varchar(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL,
  `lastip` varchar(15) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `owner_uid` int(10) NOT NULL,
  `founder_groupid` tinyint(4) NOT NULL,
  `register_type` tinyint(3) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `welcome_link` tinyint(4) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users`
--

LOCK TABLES `ims_users` WRITE;
/*!40000 ALTER TABLE `ims_users` DISABLE KEYS */;
INSERT INTO `ims_users` VALUES (1,0,'admin','781b94e25734b1ffa4e33d95424a8aed528b86fa','b064c0f7',0,0,1525357209,'',1531118677,'113.109.74.120','',0,0,0,0,0,'',0);
/*!40000 ALTER TABLE `ims_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_bind`
--

DROP TABLE IF EXISTS `ims_users_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_bind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `bind_sign` varchar(50) NOT NULL,
  `third_type` tinyint(4) NOT NULL,
  `third_nickname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `bind_sign` (`bind_sign`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_bind`
--

LOCK TABLES `ims_users_bind` WRITE;
/*!40000 ALTER TABLE `ims_users_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_bind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_failed_login`
--

DROP TABLE IF EXISTS `ims_users_failed_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_failed_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `username` varchar(32) NOT NULL,
  `count` tinyint(1) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip_username` (`ip`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_failed_login`
--

LOCK TABLES `ims_users_failed_login` WRITE;
/*!40000 ALTER TABLE `ims_users_failed_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_failed_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_founder_group`
--

DROP TABLE IF EXISTS `ims_users_founder_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_founder_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_founder_group`
--

LOCK TABLES `ims_users_founder_group` WRITE;
/*!40000 ALTER TABLE `ims_users_founder_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_founder_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_group`
--

DROP TABLE IF EXISTS `ims_users_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `package` varchar(5000) NOT NULL,
  `maxaccount` int(10) unsigned NOT NULL,
  `maxsubaccount` int(10) unsigned NOT NULL,
  `timelimit` int(10) unsigned NOT NULL,
  `maxwxapp` int(10) unsigned NOT NULL,
  `owner_uid` int(10) NOT NULL,
  `maxwebapp` int(10) NOT NULL,
  `maxphoneapp` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_group`
--

LOCK TABLES `ims_users_group` WRITE;
/*!40000 ALTER TABLE `ims_users_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_invitation`
--

DROP TABLE IF EXISTS `ims_users_invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_invitation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `fromuid` int(10) unsigned NOT NULL,
  `inviteuid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_invitation`
--

LOCK TABLES `ims_users_invitation` WRITE;
/*!40000 ALTER TABLE `ims_users_invitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_permission`
--

DROP TABLE IF EXISTS `ims_users_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(100) NOT NULL,
  `permission` varchar(10000) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_permission`
--

LOCK TABLES `ims_users_permission` WRITE;
/*!40000 ALTER TABLE `ims_users_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_users_profile`
--

DROP TABLE IF EXISTS `ims_users_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_users_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `edittime` int(10) NOT NULL,
  `realname` varchar(10) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `fakeid` varchar(30) NOT NULL,
  `vip` tinyint(3) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthyear` smallint(6) unsigned NOT NULL,
  `birthmonth` tinyint(3) unsigned NOT NULL,
  `birthday` tinyint(3) unsigned NOT NULL,
  `constellation` varchar(10) NOT NULL,
  `zodiac` varchar(5) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `idcard` varchar(30) NOT NULL,
  `studentid` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `resideprovince` varchar(30) NOT NULL,
  `residecity` varchar(30) NOT NULL,
  `residedist` varchar(30) NOT NULL,
  `graduateschool` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `education` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `revenue` varchar(10) NOT NULL,
  `affectivestatus` varchar(30) NOT NULL,
  `lookingfor` varchar(255) NOT NULL,
  `bloodtype` varchar(5) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` varchar(5) NOT NULL,
  `alipay` varchar(30) NOT NULL,
  `msn` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `taobao` varchar(30) NOT NULL,
  `site` varchar(30) NOT NULL,
  `bio` text NOT NULL,
  `interest` text NOT NULL,
  `workerid` varchar(64) NOT NULL,
  `is_send_mobile_status` tinyint(3) NOT NULL,
  `send_expire_status` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_users_profile`
--

LOCK TABLES `ims_users_profile` WRITE;
/*!40000 ALTER TABLE `ims_users_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_users_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_video_reply`
--

DROP TABLE IF EXISTS `ims_video_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_video_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_video_reply`
--

LOCK TABLES `ims_video_reply` WRITE;
/*!40000 ALTER TABLE `ims_video_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_video_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_voice_reply`
--

DROP TABLE IF EXISTS `ims_voice_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_voice_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(50) NOT NULL,
  `mediaid` varchar(255) NOT NULL,
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_voice_reply`
--

LOCK TABLES `ims_voice_reply` WRITE;
/*!40000 ALTER TABLE `ims_voice_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_voice_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wechat_attachment`
--

DROP TABLE IF EXISTS `ims_wechat_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wechat_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `acid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `media_id` varchar(255) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `model` varchar(25) NOT NULL,
  `tag` varchar(5000) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `module_upload_dir` varchar(100) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `media_id` (`media_id`),
  KEY `acid` (`acid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wechat_attachment`
--

LOCK TABLES `ims_wechat_attachment` WRITE;
/*!40000 ALTER TABLE `ims_wechat_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wechat_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wechat_news`
--

DROP TABLE IF EXISTS `ims_wechat_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wechat_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned DEFAULT NULL,
  `attach_id` int(10) unsigned NOT NULL,
  `thumb_media_id` varchar(60) NOT NULL,
  `thumb_url` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `digest` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_source_url` varchar(200) NOT NULL,
  `show_cover_pic` tinyint(3) unsigned NOT NULL,
  `url` varchar(200) NOT NULL,
  `displayorder` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `attach_id` (`attach_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wechat_news`
--

LOCK TABLES `ims_wechat_news` WRITE;
/*!40000 ALTER TABLE `ims_wechat_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wechat_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wxapp_general_analysis`
--

DROP TABLE IF EXISTS `ims_wxapp_general_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wxapp_general_analysis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `session_cnt` int(10) NOT NULL,
  `visit_pv` int(10) NOT NULL,
  `visit_uv` int(10) NOT NULL,
  `visit_uv_new` int(10) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `stay_time_uv` varchar(10) NOT NULL,
  `stay_time_session` varchar(10) NOT NULL,
  `visit_depth` varchar(10) NOT NULL,
  `ref_date` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uniacid` (`uniacid`),
  KEY `ref_date` (`ref_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wxapp_general_analysis`
--

LOCK TABLES `ims_wxapp_general_analysis` WRITE;
/*!40000 ALTER TABLE `ims_wxapp_general_analysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wxapp_general_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wxapp_versions`
--

DROP TABLE IF EXISTS `ims_wxapp_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wxapp_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `multiid` int(10) unsigned NOT NULL,
  `version` varchar(10) NOT NULL,
  `modules` varchar(1000) NOT NULL,
  `design_method` tinyint(1) NOT NULL,
  `template` int(10) NOT NULL,
  `redirect` varchar(300) NOT NULL,
  `quickmenu` varchar(2500) NOT NULL,
  `createtime` int(10) NOT NULL,
  `connection` varchar(1000) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` int(2) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `appjson` text NOT NULL,
  `default_appjson` text NOT NULL,
  `use_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `version` (`version`),
  KEY `uniacid` (`uniacid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wxapp_versions`
--

LOCK TABLES `ims_wxapp_versions` WRITE;
/*!40000 ALTER TABLE `ims_wxapp_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wxapp_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_wxcard_reply`
--

DROP TABLE IF EXISTS `ims_wxcard_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_wxcard_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `title` varchar(30) NOT NULL,
  `card_id` varchar(50) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `logo_url` varchar(255) NOT NULL,
  `success` varchar(255) NOT NULL,
  `error` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_wxcard_reply`
--

LOCK TABLES `ims_wxcard_reply` WRITE;
/*!40000 ALTER TABLE `ims_wxcard_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_wxcard_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_account_open_config`
--

DROP TABLE IF EXISTS `ims_yz_account_open_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_account_open_config` (
  `config_id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `app_key` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_secret` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_account_open_config`
--

LOCK TABLES `ims_yz_account_open_config` WRITE;
/*!40000 ALTER TABLE `ims_yz_account_open_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_account_open_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_address`
--

DROP TABLE IF EXISTS `ims_yz_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `areaname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=659004538 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_address`
--

LOCK TABLES `ims_yz_address` WRITE;
/*!40000 ALTER TABLE `ims_yz_address` DISABLE KEYS */;
INSERT INTO `ims_yz_address` VALUES (110000,'北京',0,1),(110100,'北京市',110000,2),(110101,'东城区',110100,3),(110102,'西城区',110100,3),(110105,'朝阳区',110100,3),(110106,'丰台区',110100,3),(110107,'石景山区',110100,3),(110108,'海淀区',110100,3),(110109,'门头沟区',110100,3),(110111,'房山区',110100,3),(110112,'通州区',110100,3),(110113,'顺义区',110100,3),(110114,'昌平区',110100,3),(110115,'大兴区',110100,3),(110116,'怀柔区',110100,3),(110117,'平谷区',110100,3),(110228,'密云县',110100,3),(110229,'延庆县',110100,3),(120000,'天津',0,1),(120100,'天津市',120000,2),(120101,'和平区',120100,3),(120102,'河东区',120100,3),(120103,'河西区',120100,3),(120104,'南开区',120100,3),(120105,'河北区',120100,3),(120106,'红桥区',120100,3),(120110,'东丽区',120100,3),(120111,'西青区',120100,3),(120112,'津南区',120100,3),(120113,'北辰区',120100,3),(120114,'武清区',120100,3),(120115,'宝坻区',120100,3),(120116,'滨海新区',120100,3),(120221,'宁河县',120100,3),(120223,'静海县',120100,3),(120225,'蓟县',120100,3),(130000,'河北省',0,1),(130100,'石家庄市',130000,2),(130102,'长安区',130100,3),(130103,'桥东区',130100,3),(130104,'桥西区',130100,3),(130105,'新华区',130100,3),(130107,'井陉矿区',130100,3),(130108,'裕华区',130100,3),(130121,'井陉县',130100,3),(130123,'正定县',130100,3),(130124,'栾城县',130100,3),(130125,'行唐县',130100,3),(130126,'灵寿县',130100,3),(130127,'高邑县',130100,3),(130128,'深泽县',130100,3),(130129,'赞皇县',130100,3),(130130,'无极县',130100,3),(130131,'平山县',130100,3),(130132,'元氏县',130100,3),(130133,'赵县',130100,3),(130181,'辛集市',130100,3),(130182,'藁城市',130100,3),(130183,'晋州市',130100,3),(130184,'新乐市',130100,3),(130185,'鹿泉市',130100,3),(130200,'唐山市',130000,2),(130202,'路南区',130200,3),(130203,'路北区',130200,3),(130204,'古冶区',130200,3),(130205,'开平区',130200,3),(130207,'丰南区',130200,3),(130208,'丰润区',130200,3),(130223,'滦县',130200,3),(130224,'滦南县',130200,3),(130225,'乐亭县',130200,3),(130227,'迁西县',130200,3),(130229,'玉田县',130200,3),(130230,'曹妃甸区',130200,3),(130281,'遵化市',130200,3),(130283,'迁安市',130200,3),(130300,'秦皇岛市',130000,2),(130302,'海港区',130300,3),(130303,'山海关区',130300,3),(130304,'北戴河区',130300,3),(130321,'青龙满族自治县',130300,3),(130322,'昌黎县',130300,3),(130323,'抚宁县',130300,3),(130324,'卢龙县',130300,3),(130400,'邯郸市',130000,2),(130402,'邯山区',130400,3),(130403,'丛台区',130400,3),(130404,'复兴区',130400,3),(130406,'峰峰矿区',130400,3),(130421,'邯郸县',130400,3),(130423,'临漳县',130400,3),(130424,'成安县',130400,3),(130425,'大名县',130400,3),(130426,'涉县',130400,3),(130427,'磁县',130400,3),(130428,'肥乡县',130400,3),(130429,'永年县',130400,3),(130430,'邱县',130400,3),(130431,'鸡泽县',130400,3),(130432,'广平县',130400,3),(130433,'馆陶县',130400,3),(130434,'魏县',130400,3),(130435,'曲周县',130400,3),(130481,'武安市',130400,3),(130500,'邢台市',130000,2),(130502,'桥东区',130500,3),(130503,'桥西区',130500,3),(130521,'邢台县',130500,3),(130522,'临城县',130500,3),(130523,'内丘县',130500,3),(130524,'柏乡县',130500,3),(130525,'隆尧县',130500,3),(130526,'任县',130500,3),(130527,'南和县',130500,3),(130528,'宁晋县',130500,3),(130529,'巨鹿县',130500,3),(130530,'新河县',130500,3),(130531,'广宗县',130500,3),(130532,'平乡县',130500,3),(130533,'威县',130500,3),(130534,'清河县',130500,3),(130535,'临西县',130500,3),(130581,'南宫市',130500,3),(130582,'沙河市',130500,3),(130600,'保定市',130000,2),(130602,'新市区',130600,3),(130603,'北市区',130600,3),(130604,'南市区',130600,3),(130621,'满城县',130600,3),(130622,'清苑县',130600,3),(130623,'涞水县',130600,3),(130624,'阜平县',130600,3),(130625,'徐水县',130600,3),(130626,'定兴县',130600,3),(130627,'唐县',130600,3),(130628,'高阳县',130600,3),(130629,'容城县',130600,3),(130630,'涞源县',130600,3),(130631,'望都县',130600,3),(130632,'安新县',130600,3),(130633,'易县',130600,3),(130634,'曲阳县',130600,3),(130635,'蠡县',130600,3),(130636,'顺平县',130600,3),(130637,'博野县',130600,3),(130638,'雄县',130600,3),(130681,'涿州市',130600,3),(130682,'定州市',130600,3),(130683,'安国市',130600,3),(130684,'高碑店市',130600,3),(130700,'张家口市',130000,2),(130702,'桥东区',130700,3),(130703,'桥西区',130700,3),(130705,'宣化区',130700,3),(130706,'下花园区',130700,3),(130721,'宣化县',130700,3),(130722,'张北县',130700,3),(130723,'康保县',130700,3),(130724,'沽源县',130700,3),(130725,'尚义县',130700,3),(130726,'蔚县',130700,3),(130727,'阳原县',130700,3),(130728,'怀安县',130700,3),(130729,'万全县',130700,3),(130730,'怀来县',130700,3),(130731,'涿鹿县',130700,3),(130732,'赤城县',130700,3),(130733,'崇礼县',130700,3),(130800,'承德市',130000,2),(130802,'双桥区',130800,3),(130803,'双滦区',130800,3),(130804,'鹰手营子矿区',130800,3),(130821,'承德县',130800,3),(130822,'兴隆县',130800,3),(130823,'平泉县',130800,3),(130824,'滦平县',130800,3),(130825,'隆化县',130800,3),(130826,'丰宁满族自治县',130800,3),(130827,'宽城满族自治县',130800,3),(130828,'围场满族蒙古族自治县',130800,3),(130900,'沧州市',130000,2),(130902,'新华区',130900,3),(130903,'运河区',130900,3),(130921,'沧县',130900,3),(130922,'青县',130900,3),(130923,'东光县',130900,3),(130924,'海兴县',130900,3),(130925,'盐山县',130900,3),(130926,'肃宁县',130900,3),(130927,'南皮县',130900,3),(130928,'吴桥县',130900,3),(130929,'献县',130900,3),(130930,'孟村回族自治县',130900,3),(130981,'泊头市',130900,3),(130982,'任丘市',130900,3),(130983,'黄骅市',130900,3),(130984,'河间市',130900,3),(131000,'廊坊市',130000,2),(131002,'安次区',131000,3),(131003,'广阳区',131000,3),(131022,'固安县',131000,3),(131023,'永清县',131000,3),(131024,'香河县',131000,3),(131025,'大城县',131000,3),(131026,'文安县',131000,3),(131028,'大厂回族自治县',131000,3),(131081,'霸州市',131000,3),(131082,'三河市',131000,3),(131100,'衡水市',130000,2),(131102,'桃城区',131100,3),(131121,'枣强县',131100,3),(131122,'武邑县',131100,3),(131123,'武强县',131100,3),(131124,'饶阳县',131100,3),(131125,'安平县',131100,3),(131126,'故城县',131100,3),(131127,'景县',131100,3),(131128,'阜城县',131100,3),(131181,'冀州市',131100,3),(131182,'深州市',131100,3),(140000,'山西省',0,1),(140100,'太原市',140000,2),(140105,'小店区',140100,3),(140106,'迎泽区',140100,3),(140107,'杏花岭区',140100,3),(140108,'尖草坪区',140100,3),(140109,'万柏林区',140100,3),(140110,'晋源区',140100,3),(140121,'清徐县',140100,3),(140122,'阳曲县',140100,3),(140123,'娄烦县',140100,3),(140181,'古交市',140100,3),(140200,'大同市',140000,2),(140202,'城区',140200,3),(140203,'矿区',140200,3),(140211,'南郊区',140200,3),(140212,'新荣区',140200,3),(140221,'阳高县',140200,3),(140222,'天镇县',140200,3),(140223,'广灵县',140200,3),(140224,'灵丘县',140200,3),(140225,'浑源县',140200,3),(140226,'左云县',140200,3),(140227,'大同县',140200,3),(140300,'阳泉市',140000,2),(140302,'城区',140300,3),(140303,'矿区',140300,3),(140311,'郊区',140300,3),(140321,'平定县',140300,3),(140322,'盂县',140300,3),(140400,'长治市',140000,2),(140421,'长治县',140400,3),(140423,'襄垣县',140400,3),(140424,'屯留县',140400,3),(140425,'平顺县',140400,3),(140426,'黎城县',140400,3),(140427,'壶关县',140400,3),(140428,'长子县',140400,3),(140429,'武乡县',140400,3),(140430,'沁县',140400,3),(140431,'沁源县',140400,3),(140481,'潞城市',140400,3),(140482,'城区',140400,3),(140483,'郊区',140400,3),(140500,'晋城市',140000,2),(140502,'城区',140500,3),(140521,'沁水县',140500,3),(140522,'阳城县',140500,3),(140524,'陵川县',140500,3),(140525,'泽州县',140500,3),(140581,'高平市',140500,3),(140600,'朔州市',140000,2),(140602,'朔城区',140600,3),(140603,'平鲁区',140600,3),(140621,'山阴县',140600,3),(140622,'应县',140600,3),(140623,'右玉县',140600,3),(140624,'怀仁县',140600,3),(140700,'晋中市',140000,2),(140702,'榆次区',140700,3),(140721,'榆社县',140700,3),(140722,'左权县',140700,3),(140723,'和顺县',140700,3),(140724,'昔阳县',140700,3),(140725,'寿阳县',140700,3),(140726,'太谷县',140700,3),(140727,'祁县',140700,3),(140728,'平遥县',140700,3),(140729,'灵石县',140700,3),(140781,'介休市',140700,3),(140800,'运城市',140000,2),(140802,'盐湖区',140800,3),(140821,'临猗县',140800,3),(140822,'万荣县',140800,3),(140823,'闻喜县',140800,3),(140824,'稷山县',140800,3),(140825,'新绛县',140800,3),(140826,'绛县',140800,3),(140827,'垣曲县',140800,3),(140828,'夏县',140800,3),(140829,'平陆县',140800,3),(140830,'芮城县',140800,3),(140881,'永济市',140800,3),(140882,'河津市',140800,3),(140900,'忻州市',140000,2),(140902,'忻府区',140900,3),(140921,'定襄县',140900,3),(140922,'五台县',140900,3),(140923,'代县',140900,3),(140924,'繁峙县',140900,3),(140925,'宁武县',140900,3),(140926,'静乐县',140900,3),(140927,'神池县',140900,3),(140928,'五寨县',140900,3),(140929,'岢岚县',140900,3),(140930,'河曲县',140900,3),(140931,'保德县',140900,3),(140932,'偏关县',140900,3),(140981,'原平市',140900,3),(141000,'临汾市',140000,2),(141002,'尧都区',141000,3),(141021,'曲沃县',141000,3),(141022,'翼城县',141000,3),(141023,'襄汾县',141000,3),(141024,'洪洞县',141000,3),(141025,'古县',141000,3),(141026,'安泽县',141000,3),(141027,'浮山县',141000,3),(141028,'吉县',141000,3),(141029,'乡宁县',141000,3),(141030,'大宁县',141000,3),(141031,'隰县',141000,3),(141032,'永和县',141000,3),(141033,'蒲县',141000,3),(141034,'汾西县',141000,3),(141081,'侯马市',141000,3),(141082,'霍州市',141000,3),(141100,'吕梁市',140000,2),(141102,'离石区',141100,3),(141121,'文水县',141100,3),(141122,'交城县',141100,3),(141123,'兴县',141100,3),(141124,'临县',141100,3),(141125,'柳林县',141100,3),(141126,'石楼县',141100,3),(141127,'岚县',141100,3),(141128,'方山县',141100,3),(141129,'中阳县',141100,3),(141130,'交口县',141100,3),(141181,'孝义市',141100,3),(141182,'汾阳市',141100,3),(150000,'内蒙古自治区',0,1),(150100,'呼和浩特市',150000,2),(150102,'新城区',150100,3),(150103,'回民区',150100,3),(150104,'玉泉区',150100,3),(150105,'赛罕区',150100,3),(150121,'土默特左旗',150100,3),(150122,'托克托县',150100,3),(150123,'和林格尔县',150100,3),(150124,'清水河县',150100,3),(150125,'武川县',150100,3),(150200,'包头市',150000,2),(150202,'东河区',150200,3),(150203,'昆都仑区',150200,3),(150204,'青山区',150200,3),(150205,'石拐区',150200,3),(150206,'白云鄂博矿区',150200,3),(150207,'九原区',150200,3),(150221,'土默特右旗',150200,3),(150222,'固阳县',150200,3),(150223,'达尔罕茂明安联合旗',150200,3),(150300,'乌海市',150000,2),(150302,'海勃湾区',150300,3),(150303,'海南区',150300,3),(150304,'乌达区',150300,3),(150400,'赤峰市',150000,2),(150402,'红山区',150400,3),(150403,'元宝山区',150400,3),(150404,'松山区',150400,3),(150421,'阿鲁科尔沁旗',150400,3),(150422,'巴林左旗',150400,3),(150423,'巴林右旗',150400,3),(150424,'林西县',150400,3),(150425,'克什克腾旗',150400,3),(150426,'翁牛特旗',150400,3),(150428,'喀喇沁旗',150400,3),(150429,'宁城县',150400,3),(150430,'敖汉旗',150400,3),(150500,'通辽市',150000,2),(150502,'科尔沁区',150500,3),(150521,'科尔沁左翼中旗',150500,3),(150522,'科尔沁左翼后旗',150500,3),(150523,'开鲁县',150500,3),(150524,'库伦旗',150500,3),(150525,'奈曼旗',150500,3),(150526,'扎鲁特旗',150500,3),(150581,'霍林郭勒市',150500,3),(150600,'鄂尔多斯市',150000,2),(150602,'东胜区',150600,3),(150621,'达拉特旗',150600,3),(150622,'准格尔旗',150600,3),(150623,'鄂托克前旗',150600,3),(150624,'鄂托克旗',150600,3),(150625,'杭锦旗',150600,3),(150626,'乌审旗',150600,3),(150627,'伊金霍洛旗',150600,3),(150700,'呼伦贝尔市',150000,2),(150702,'海拉尔区',150700,3),(150703,'扎赉诺尔区',150700,3),(150721,'阿荣旗',150700,3),(150722,'莫力达瓦达斡尔族自治旗',150700,3),(150723,'鄂伦春自治旗',150700,3),(150724,'鄂温克族自治旗',150700,3),(150725,'陈巴尔虎旗',150700,3),(150726,'新巴尔虎左旗',150700,3),(150727,'新巴尔虎右旗',150700,3),(150781,'满洲里市',150700,3),(150782,'牙克石市',150700,3),(150783,'扎兰屯市',150700,3),(150784,'额尔古纳市',150700,3),(150785,'根河市',150700,3),(150800,'巴彦淖尔市',150000,2),(150802,'临河区',150800,3),(150821,'五原县',150800,3),(150822,'磴口县',150800,3),(150823,'乌拉特前旗',150800,3),(150824,'乌拉特中旗',150800,3),(150825,'乌拉特后旗',150800,3),(150826,'杭锦后旗',150800,3),(150900,'乌兰察布市',150000,2),(150902,'集宁区',150900,3),(150921,'卓资县',150900,3),(150922,'化德县',150900,3),(150923,'商都县',150900,3),(150924,'兴和县',150900,3),(150925,'凉城县',150900,3),(150926,'察哈尔右翼前旗',150900,3),(150927,'察哈尔右翼中旗',150900,3),(150928,'察哈尔右翼后旗',150900,3),(150929,'四子王旗',150900,3),(150981,'丰镇市',150900,3),(152200,'兴安盟',150000,2),(152201,'乌兰浩特市',152200,3),(152202,'阿尔山市',152200,3),(152221,'科尔沁右翼前旗',152200,3),(152222,'科尔沁右翼中旗',152200,3),(152223,'扎赉特旗',152200,3),(152224,'突泉县',152200,3),(152500,'锡林郭勒盟',150000,2),(152501,'二连浩特市',152500,3),(152502,'锡林浩特市',152500,3),(152522,'阿巴嘎旗',152500,3),(152523,'苏尼特左旗',152500,3),(152524,'苏尼特右旗',152500,3),(152525,'东乌珠穆沁旗',152500,3),(152526,'西乌珠穆沁旗',152500,3),(152527,'太仆寺旗',152500,3),(152528,'镶黄旗',152500,3),(152529,'正镶白旗',152500,3),(152530,'正蓝旗',152500,3),(152531,'多伦县',152500,3),(152900,'阿拉善盟',150000,2),(152921,'阿拉善左旗',152900,3),(152922,'阿拉善右旗',152900,3),(152923,'额济纳旗',152900,3),(210000,'辽宁省',0,1),(210100,'沈阳市',210000,2),(210102,'和平区',210100,3),(210103,'沈河区',210100,3),(210104,'大东区',210100,3),(210105,'皇姑区',210100,3),(210106,'铁西区',210100,3),(210111,'苏家屯区',210100,3),(210112,'东陵区',210100,3),(210114,'于洪区',210100,3),(210122,'辽中县',210100,3),(210123,'康平县',210100,3),(210124,'法库县',210100,3),(210181,'新民市',210100,3),(210184,'沈北新区',210100,3),(210200,'大连市',210000,2),(210202,'中山区',210200,3),(210203,'西岗区',210200,3),(210204,'沙河口区',210200,3),(210211,'甘井子区',210200,3),(210212,'旅顺口区',210200,3),(210213,'金州区',210200,3),(210224,'长海县',210200,3),(210281,'瓦房店市',210200,3),(210282,'普兰店市',210200,3),(210283,'庄河市',210200,3),(210300,'鞍山市',210000,2),(210302,'铁东区',210300,3),(210303,'铁西区',210300,3),(210304,'立山区',210300,3),(210311,'千山区',210300,3),(210321,'台安县',210300,3),(210323,'岫岩满族自治县',210300,3),(210381,'海城市',210300,3),(210400,'抚顺市',210000,2),(210402,'新抚区',210400,3),(210403,'东洲区',210400,3),(210404,'望花区',210400,3),(210411,'顺城区',210400,3),(210421,'抚顺县',210400,3),(210422,'新宾满族自治县',210400,3),(210423,'清原满族自治县',210400,3),(210500,'本溪市',210000,2),(210502,'平山区',210500,3),(210503,'溪湖区',210500,3),(210504,'明山区',210500,3),(210505,'南芬区',210500,3),(210521,'本溪满族自治县',210500,3),(210522,'桓仁满族自治县',210500,3),(210600,'丹东市',210000,2),(210602,'元宝区',210600,3),(210603,'振兴区',210600,3),(210604,'振安区',210600,3),(210624,'宽甸满族自治县',210600,3),(210681,'东港市',210600,3),(210682,'凤城市',210600,3),(210700,'锦州市',210000,2),(210702,'古塔区',210700,3),(210703,'凌河区',210700,3),(210711,'太和区',210700,3),(210726,'黑山县',210700,3),(210727,'义县',210700,3),(210781,'凌海市',210700,3),(210782,'北镇市',210700,3),(210800,'营口市',210000,2),(210802,'站前区',210800,3),(210803,'西市区',210800,3),(210804,'鲅鱼圈区',210800,3),(210811,'老边区',210800,3),(210881,'盖州市',210800,3),(210882,'大石桥市',210800,3),(210900,'阜新市',210000,2),(210902,'海州区',210900,3),(210903,'新邱区',210900,3),(210904,'太平区',210900,3),(210905,'清河门区',210900,3),(210911,'细河区',210900,3),(210921,'阜新蒙古族自治县',210900,3),(210922,'彰武县',210900,3),(211000,'辽阳市',210000,2),(211002,'白塔区',211000,3),(211003,'文圣区',211000,3),(211004,'宏伟区',211000,3),(211005,'弓长岭区',211000,3),(211011,'太子河区',211000,3),(211021,'辽阳县',211000,3),(211081,'灯塔市',211000,3),(211100,'盘锦市',210000,2),(211102,'双台子区',211100,3),(211103,'兴隆台区',211100,3),(211121,'大洼县',211100,3),(211122,'盘山县',211100,3),(211200,'铁岭市',210000,2),(211202,'银州区',211200,3),(211204,'清河区',211200,3),(211221,'铁岭县',211200,3),(211223,'西丰县',211200,3),(211224,'昌图县',211200,3),(211281,'调兵山市',211200,3),(211282,'开原市',211200,3),(211300,'朝阳市',210000,2),(211302,'双塔区',211300,3),(211303,'龙城区',211300,3),(211321,'朝阳县',211300,3),(211322,'建平县',211300,3),(211324,'喀喇沁左翼蒙古族自治县',211300,3),(211381,'北票市',211300,3),(211382,'凌源市',211300,3),(211400,'葫芦岛市',210000,2),(211402,'连山区',211400,3),(211403,'龙港区',211400,3),(211404,'南票区',211400,3),(211421,'绥中县',211400,3),(211422,'建昌县',211400,3),(211481,'兴城市',211400,3),(220000,'吉林省',0,1),(220100,'长春市',220000,2),(220102,'南关区',220100,3),(220103,'宽城区',220100,3),(220104,'朝阳区',220100,3),(220105,'二道区',220100,3),(220106,'绿园区',220100,3),(220112,'双阳区',220100,3),(220122,'农安县',220100,3),(220181,'九台市',220100,3),(220182,'榆树市',220100,3),(220183,'德惠市',220100,3),(220200,'吉林市',220000,2),(220202,'昌邑区',220200,3),(220203,'龙潭区',220200,3),(220204,'船营区',220200,3),(220211,'丰满区',220200,3),(220221,'永吉县',220200,3),(220281,'蛟河市',220200,3),(220282,'桦甸市',220200,3),(220283,'舒兰市',220200,3),(220284,'磐石市',220200,3),(220300,'四平市',220000,2),(220302,'铁西区',220300,3),(220303,'铁东区',220300,3),(220322,'梨树县',220300,3),(220323,'伊通满族自治县',220300,3),(220381,'公主岭市',220300,3),(220382,'双辽市',220300,3),(220400,'辽源市',220000,2),(220402,'龙山区',220400,3),(220403,'西安区',220400,3),(220421,'东丰县',220400,3),(220422,'东辽县',220400,3),(220500,'通化市',220000,2),(220502,'东昌区',220500,3),(220503,'二道江区',220500,3),(220521,'通化县',220500,3),(220523,'辉南县',220500,3),(220524,'柳河县',220500,3),(220581,'梅河口市',220500,3),(220582,'集安市',220500,3),(220600,'白山市',220000,2),(220602,'浑江区',220600,3),(220621,'抚松县',220600,3),(220622,'靖宇县',220600,3),(220623,'长白朝鲜族自治县',220600,3),(220625,'江源区',220600,3),(220681,'临江市',220600,3),(220700,'松原市',220000,2),(220702,'宁江区',220700,3),(220721,'前郭尔罗斯蒙古族自治县',220700,3),(220722,'长岭县',220700,3),(220723,'乾安县',220700,3),(220724,'扶余市',220700,3),(220800,'白城市',220000,2),(220802,'洮北区',220800,3),(220821,'镇赉县',220800,3),(220822,'通榆县',220800,3),(220881,'洮南市',220800,3),(220882,'大安市',220800,3),(222400,'延边朝鲜族自治州',220000,2),(222401,'延吉市',222400,3),(222402,'图们市',222400,3),(222403,'敦化市',222400,3),(222404,'珲春市',222400,3),(222405,'龙井市',222400,3),(222406,'和龙市',222400,3),(222424,'汪清县',222400,3),(222426,'安图县',222400,3),(230000,'黑龙江省',0,1),(230100,'哈尔滨市',230000,2),(230102,'道里区',230100,3),(230103,'南岗区',230100,3),(230104,'道外区',230100,3),(230106,'香坊区',230100,3),(230108,'平房区',230100,3),(230109,'松北区',230100,3),(230111,'呼兰区',230100,3),(230123,'依兰县',230100,3),(230124,'方正县',230100,3),(230125,'宾县',230100,3),(230126,'巴彦县',230100,3),(230127,'木兰县',230100,3),(230128,'通河县',230100,3),(230129,'延寿县',230100,3),(230181,'阿城区',230100,3),(230182,'双城市',230100,3),(230183,'尚志市',230100,3),(230184,'五常市',230100,3),(230200,'齐齐哈尔市',230000,2),(230202,'龙沙区',230200,3),(230203,'建华区',230200,3),(230204,'铁锋区',230200,3),(230205,'昂昂溪区',230200,3),(230206,'富拉尔基区',230200,3),(230207,'碾子山区',230200,3),(230208,'梅里斯达斡尔族区',230200,3),(230221,'龙江县',230200,3),(230223,'依安县',230200,3),(230224,'泰来县',230200,3),(230225,'甘南县',230200,3),(230227,'富裕县',230200,3),(230229,'克山县',230200,3),(230230,'克东县',230200,3),(230231,'拜泉县',230200,3),(230281,'讷河市',230200,3),(230300,'鸡西市',230000,2),(230302,'鸡冠区',230300,3),(230303,'恒山区',230300,3),(230304,'滴道区',230300,3),(230305,'梨树区',230300,3),(230306,'城子河区',230300,3),(230307,'麻山区',230300,3),(230321,'鸡东县',230300,3),(230381,'虎林市',230300,3),(230382,'密山市',230300,3),(230400,'鹤岗市',230000,2),(230402,'向阳区',230400,3),(230403,'工农区',230400,3),(230404,'南山区',230400,3),(230405,'兴安区',230400,3),(230406,'东山区',230400,3),(230407,'兴山区',230400,3),(230421,'萝北县',230400,3),(230422,'绥滨县',230400,3),(230500,'双鸭山市',230000,2),(230502,'尖山区',230500,3),(230503,'岭东区',230500,3),(230505,'四方台区',230500,3),(230506,'宝山区',230500,3),(230521,'集贤县',230500,3),(230522,'友谊县',230500,3),(230523,'宝清县',230500,3),(230524,'饶河县',230500,3),(230600,'大庆市',230000,2),(230602,'萨尔图区',230600,3),(230603,'龙凤区',230600,3),(230604,'让胡路区',230600,3),(230605,'红岗区',230600,3),(230606,'大同区',230600,3),(230621,'肇州县',230600,3),(230622,'肇源县',230600,3),(230623,'林甸县',230600,3),(230624,'杜尔伯特蒙古族自治县',230600,3),(230700,'伊春市',230000,2),(230702,'伊春区',230700,3),(230703,'南岔区',230700,3),(230704,'友好区',230700,3),(230705,'西林区',230700,3),(230706,'翠峦区',230700,3),(230707,'新青区',230700,3),(230708,'美溪区',230700,3),(230709,'金山屯区',230700,3),(230710,'五营区',230700,3),(230711,'乌马河区',230700,3),(230712,'汤旺河区',230700,3),(230713,'带岭区',230700,3),(230714,'乌伊岭区',230700,3),(230715,'红星区',230700,3),(230716,'上甘岭区',230700,3),(230722,'嘉荫县',230700,3),(230781,'铁力市',230700,3),(230800,'佳木斯市',230000,2),(230803,'向阳区',230800,3),(230804,'前进区',230800,3),(230805,'东风区',230800,3),(230811,'郊区',230800,3),(230822,'桦南县',230800,3),(230826,'桦川县',230800,3),(230828,'汤原县',230800,3),(230833,'抚远县',230800,3),(230881,'同江市',230800,3),(230882,'富锦市',230800,3),(230900,'七台河市',230000,2),(230902,'新兴区',230900,3),(230903,'桃山区',230900,3),(230904,'茄子河区',230900,3),(230921,'勃利县',230900,3),(231000,'牡丹江市',230000,2),(231002,'东安区',231000,3),(231003,'阳明区',231000,3),(231004,'爱民区',231000,3),(231005,'西安区',231000,3),(231024,'东宁县',231000,3),(231025,'林口县',231000,3),(231081,'绥芬河市',231000,3),(231083,'海林市',231000,3),(231084,'宁安市',231000,3),(231085,'穆棱市',231000,3),(231100,'黑河市',230000,2),(231102,'爱辉区',231100,3),(231121,'嫩江县',231100,3),(231123,'逊克县',231100,3),(231124,'孙吴县',231100,3),(231181,'北安市',231100,3),(231182,'五大连池市',231100,3),(231200,'绥化市',230000,2),(231202,'北林区',231200,3),(231221,'望奎县',231200,3),(231222,'兰西县',231200,3),(231223,'青冈县',231200,3),(231224,'庆安县',231200,3),(231225,'明水县',231200,3),(231226,'绥棱县',231200,3),(231281,'安达市',231200,3),(231282,'肇东市',231200,3),(231283,'海伦市',231200,3),(232700,'大兴安岭地区',230000,2),(232702,'松岭区',232700,3),(232703,'新林区',232700,3),(232704,'呼中区',232700,3),(232721,'呼玛县',232700,3),(232722,'塔河县',232700,3),(232723,'漠河县',232700,3),(232724,'加格达奇区',232700,3),(310000,'上海',0,1),(310100,'上海市',310000,2),(310101,'黄浦区',310100,3),(310104,'徐汇区',310100,3),(310105,'长宁区',310100,3),(310106,'静安区',310100,3),(310107,'普陀区',310100,3),(310108,'闸北区',310100,3),(310109,'虹口区',310100,3),(310110,'杨浦区',310100,3),(310112,'闵行区',310100,3),(310113,'宝山区',310100,3),(310114,'嘉定区',310100,3),(310115,'浦东新区',310100,3),(310116,'金山区',310100,3),(310117,'松江区',310100,3),(310118,'青浦区',310100,3),(310120,'奉贤区',310100,3),(310230,'崇明县',310100,3),(320000,'江苏省',0,1),(320100,'南京市',320000,2),(320102,'玄武区',320100,3),(320104,'秦淮区',320100,3),(320105,'建邺区',320100,3),(320106,'鼓楼区',320100,3),(320111,'浦口区',320100,3),(320113,'栖霞区',320100,3),(320114,'雨花台区',320100,3),(320115,'江宁区',320100,3),(320116,'六合区',320100,3),(320124,'溧水区',320100,3),(320125,'高淳区',320100,3),(320200,'无锡市',320000,2),(320202,'崇安区',320200,3),(320203,'南长区',320200,3),(320204,'北塘区',320200,3),(320205,'锡山区',320200,3),(320206,'惠山区',320200,3),(320211,'滨湖区',320200,3),(320214,'新吴区',320200,3),(320281,'江阴市',320200,3),(320282,'宜兴市',320200,3),(320300,'徐州市',320000,2),(320302,'鼓楼区',320300,3),(320303,'云龙区',320300,3),(320305,'贾汪区',320300,3),(320311,'泉山区',320300,3),(320321,'丰县',320300,3),(320322,'沛县',320300,3),(320323,'铜山区',320300,3),(320324,'睢宁县',320300,3),(320381,'新沂市',320300,3),(320382,'邳州市',320300,3),(320400,'常州市',320000,2),(320402,'天宁区',320400,3),(320404,'钟楼区',320400,3),(320405,'戚墅堰区',320400,3),(320411,'新北区',320400,3),(320412,'武进区',320400,3),(320481,'溧阳市',320400,3),(320482,'金坛市',320400,3),(320500,'苏州市',320000,2),(320505,'虎丘区',320500,3),(320506,'吴中区',320500,3),(320507,'相城区',320500,3),(320508,'姑苏区',320500,3),(320581,'常熟市',320500,3),(320582,'张家港市',320500,3),(320583,'昆山市',320500,3),(320584,'吴江区',320500,3),(320585,'太仓市',320500,3),(320600,'南通市',320000,2),(320602,'崇川区',320600,3),(320611,'港闸区',320600,3),(320612,'通州区',320600,3),(320621,'海安县',320600,3),(320623,'如东县',320600,3),(320681,'启东市',320600,3),(320682,'如皋市',320600,3),(320684,'海门市',320600,3),(320700,'连云港市',320000,2),(320703,'连云区',320700,3),(320705,'新浦区',320700,3),(320706,'海州区',320700,3),(320721,'赣榆县',320700,3),(320722,'东海县',320700,3),(320723,'灌云县',320700,3),(320724,'灌南县',320700,3),(320800,'淮安市',320000,2),(320802,'清河区',320800,3),(320803,'淮安区',320800,3),(320804,'淮阴区',320800,3),(320811,'清浦区',320800,3),(320826,'涟水县',320800,3),(320829,'洪泽县',320800,3),(320830,'盱眙县',320800,3),(320831,'金湖县',320800,3),(320900,'盐城市',320000,2),(320902,'亭湖区',320900,3),(320903,'盐都区',320900,3),(320921,'响水县',320900,3),(320922,'滨海县',320900,3),(320923,'阜宁县',320900,3),(320924,'射阳县',320900,3),(320925,'建湖县',320900,3),(320981,'东台市',320900,3),(320982,'大丰市',320900,3),(321000,'扬州市',320000,2),(321002,'广陵区',321000,3),(321003,'邗江区',321000,3),(321023,'宝应县',321000,3),(321081,'仪征市',321000,3),(321084,'高邮市',321000,3),(321088,'江都区',321000,3),(321100,'镇江市',320000,2),(321102,'京口区',321100,3),(321111,'润州区',321100,3),(321112,'丹徒区',321100,3),(321181,'丹阳市',321100,3),(321182,'扬中市',321100,3),(321183,'句容市',321100,3),(321200,'泰州市',320000,2),(321202,'海陵区',321200,3),(321203,'高港区',321200,3),(321281,'兴化市',321200,3),(321282,'靖江市',321200,3),(321283,'泰兴市',321200,3),(321284,'姜堰区',321200,3),(321300,'宿迁市',320000,2),(321302,'宿城区',321300,3),(321311,'宿豫区',321300,3),(321322,'沭阳县',321300,3),(321323,'泗阳县',321300,3),(321324,'泗洪县',321300,3),(330000,'浙江省',0,1),(330100,'杭州市',330000,2),(330102,'上城区',330100,3),(330103,'下城区',330100,3),(330104,'江干区',330100,3),(330105,'拱墅区',330100,3),(330106,'西湖区',330100,3),(330108,'滨江区',330100,3),(330109,'萧山区',330100,3),(330110,'余杭区',330100,3),(330122,'桐庐县',330100,3),(330127,'淳安县',330100,3),(330182,'建德市',330100,3),(330183,'富阳市',330100,3),(330185,'临安市',330100,3),(330200,'宁波市',330000,2),(330203,'海曙区',330200,3),(330204,'江东区',330200,3),(330205,'江北区',330200,3),(330206,'北仑区',330200,3),(330211,'镇海区',330200,3),(330212,'鄞州区',330200,3),(330225,'象山县',330200,3),(330226,'宁海县',330200,3),(330281,'余姚市',330200,3),(330282,'慈溪市',330200,3),(330283,'奉化市',330200,3),(330300,'温州市',330000,2),(330302,'鹿城区',330300,3),(330303,'龙湾区',330300,3),(330304,'瓯海区',330300,3),(330322,'洞头县',330300,3),(330324,'永嘉县',330300,3),(330326,'平阳县',330300,3),(330327,'苍南县',330300,3),(330328,'文成县',330300,3),(330329,'泰顺县',330300,3),(330381,'瑞安市',330300,3),(330382,'乐清市',330300,3),(330400,'嘉兴市',330000,2),(330402,'南湖区',330400,3),(330411,'秀洲区',330400,3),(330421,'嘉善县',330400,3),(330424,'海盐县',330400,3),(330481,'海宁市',330400,3),(330482,'平湖市',330400,3),(330483,'桐乡市',330400,3),(330500,'湖州市',330000,2),(330502,'吴兴区',330500,3),(330503,'南浔区',330500,3),(330521,'德清县',330500,3),(330522,'长兴县',330500,3),(330523,'安吉县',330500,3),(330600,'绍兴市',330000,2),(330602,'越城区',330600,3),(330621,'绍兴县',330600,3),(330624,'新昌县',330600,3),(330681,'诸暨市',330600,3),(330682,'上虞市',330600,3),(330683,'嵊州市',330600,3),(330700,'金华市',330000,2),(330702,'婺城区',330700,3),(330703,'金东区',330700,3),(330723,'武义县',330700,3),(330726,'浦江县',330700,3),(330727,'磐安县',330700,3),(330781,'兰溪市',330700,3),(330782,'义乌市',330700,3),(330783,'东阳市',330700,3),(330784,'永康市',330700,3),(330800,'衢州市',330000,2),(330802,'柯城区',330800,3),(330803,'衢江区',330800,3),(330822,'常山县',330800,3),(330824,'开化县',330800,3),(330825,'龙游县',330800,3),(330881,'江山市',330800,3),(330900,'舟山市',330000,2),(330902,'定海区',330900,3),(330903,'普陀区',330900,3),(330921,'岱山县',330900,3),(330922,'嵊泗县',330900,3),(331000,'台州市',330000,2),(331002,'椒江区',331000,3),(331003,'黄岩区',331000,3),(331004,'路桥区',331000,3),(331021,'玉环县',331000,3),(331022,'三门县',331000,3),(331023,'天台县',331000,3),(331024,'仙居县',331000,3),(331081,'温岭市',331000,3),(331082,'临海市',331000,3),(331100,'丽水市',330000,2),(331102,'莲都区',331100,3),(331121,'青田县',331100,3),(331122,'缙云县',331100,3),(331123,'遂昌县',331100,3),(331124,'松阳县',331100,3),(331125,'云和县',331100,3),(331126,'庆元县',331100,3),(331127,'景宁畲族自治县',331100,3),(331181,'龙泉市',331100,3),(340000,'安徽省',0,1),(340100,'合肥市',340000,2),(340102,'瑶海区',340100,3),(340103,'庐阳区',340100,3),(340104,'蜀山区',340100,3),(340111,'包河区',340100,3),(340121,'长丰县',340100,3),(340122,'肥东县',340100,3),(340123,'肥西县',340100,3),(340200,'芜湖市',340000,2),(340202,'镜湖区',340200,3),(340203,'弋江区',340200,3),(340207,'鸠江区',340200,3),(340208,'三山区',340200,3),(340221,'芜湖县',340200,3),(340222,'繁昌县',340200,3),(340223,'南陵县',340200,3),(340300,'蚌埠市',340000,2),(340302,'龙子湖区',340300,3),(340303,'蚌山区',340300,3),(340304,'禹会区',340300,3),(340311,'淮上区',340300,3),(340321,'怀远县',340300,3),(340322,'五河县',340300,3),(340323,'固镇县',340300,3),(340400,'淮南市',340000,2),(340402,'大通区',340400,3),(340403,'田家庵区',340400,3),(340404,'谢家集区',340400,3),(340405,'八公山区',340400,3),(340406,'潘集区',340400,3),(340421,'凤台县',340400,3),(340500,'马鞍山市',340000,2),(340503,'花山区',340500,3),(340504,'雨山区',340500,3),(340506,'博望区',340500,3),(340521,'当涂县',340500,3),(340600,'淮北市',340000,2),(340602,'杜集区',340600,3),(340603,'相山区',340600,3),(340604,'烈山区',340600,3),(340621,'濉溪县',340600,3),(340700,'铜陵市',340000,2),(340702,'铜官山区',340700,3),(340703,'狮子山区',340700,3),(340711,'郊区',340700,3),(340721,'铜陵县',340700,3),(340800,'安庆市',340000,2),(340802,'迎江区',340800,3),(340803,'大观区',340800,3),(340811,'宜秀区',340800,3),(340822,'怀宁县',340800,3),(340823,'枞阳县',340800,3),(340824,'潜山县',340800,3),(340825,'太湖县',340800,3),(340826,'宿松县',340800,3),(340827,'望江县',340800,3),(340828,'岳西县',340800,3),(340881,'桐城市',340800,3),(341000,'黄山市',340000,2),(341002,'屯溪区',341000,3),(341003,'黄山区',341000,3),(341004,'徽州区',341000,3),(341021,'歙县',341000,3),(341022,'休宁县',341000,3),(341023,'黟县',341000,3),(341024,'祁门县',341000,3),(341100,'滁州市',340000,2),(341102,'琅琊区',341100,3),(341103,'南谯区',341100,3),(341122,'来安县',341100,3),(341124,'全椒县',341100,3),(341125,'定远县',341100,3),(341126,'凤阳县',341100,3),(341181,'天长市',341100,3),(341182,'明光市',341100,3),(341200,'阜阳市',340000,2),(341202,'颍州区',341200,3),(341203,'颍东区',341200,3),(341204,'颍泉区',341200,3),(341221,'临泉县',341200,3),(341222,'太和县',341200,3),(341225,'阜南县',341200,3),(341226,'颍上县',341200,3),(341282,'界首市',341200,3),(341300,'宿州市',340000,2),(341302,'埇桥区',341300,3),(341321,'砀山县',341300,3),(341322,'萧县',341300,3),(341323,'灵璧县',341300,3),(341324,'泗县',341300,3),(341400,'巢湖市',340100,3),(341421,'庐江县',340100,3),(341422,'无为县',340200,3),(341423,'含山县',340500,3),(341424,'和县',340500,3),(341500,'六安市',340000,2),(341502,'金安区',341500,3),(341503,'裕安区',341500,3),(341521,'寿县',341500,3),(341522,'霍邱县',341500,3),(341523,'舒城县',341500,3),(341524,'金寨县',341500,3),(341525,'霍山县',341500,3),(341600,'亳州市',340000,2),(341602,'谯城区',341600,3),(341621,'涡阳县',341600,3),(341622,'蒙城县',341600,3),(341623,'利辛县',341600,3),(341700,'池州市',340000,2),(341702,'贵池区',341700,3),(341721,'东至县',341700,3),(341722,'石台县',341700,3),(341723,'青阳县',341700,3),(341800,'宣城市',340000,2),(341802,'宣州区',341800,3),(341821,'郎溪县',341800,3),(341822,'广德县',341800,3),(341823,'泾县',341800,3),(341824,'绩溪县',341800,3),(341825,'旌德县',341800,3),(341881,'宁国市',341800,3),(350000,'福建省',0,1),(350100,'福州市',350000,2),(350102,'鼓楼区',350100,3),(350103,'台江区',350100,3),(350104,'仓山区',350100,3),(350105,'马尾区',350100,3),(350111,'晋安区',350100,3),(350121,'闽侯县',350100,3),(350122,'连江县',350100,3),(350123,'罗源县',350100,3),(350124,'闽清县',350100,3),(350125,'永泰县',350100,3),(350128,'平潭县',350100,3),(350181,'福清市',350100,3),(350182,'长乐市',350100,3),(350200,'厦门市',350000,2),(350203,'思明区',350200,3),(350205,'海沧区',350200,3),(350206,'湖里区',350200,3),(350211,'集美区',350200,3),(350212,'同安区',350200,3),(350213,'翔安区',350200,3),(350300,'莆田市',350000,2),(350302,'城厢区',350300,3),(350303,'涵江区',350300,3),(350304,'荔城区',350300,3),(350305,'秀屿区',350300,3),(350322,'仙游县',350300,3),(350400,'三明市',350000,2),(350402,'梅列区',350400,3),(350403,'三元区',350400,3),(350421,'明溪县',350400,3),(350423,'清流县',350400,3),(350424,'宁化县',350400,3),(350425,'大田县',350400,3),(350426,'尤溪县',350400,3),(350427,'沙县',350400,3),(350428,'将乐县',350400,3),(350429,'泰宁县',350400,3),(350430,'建宁县',350400,3),(350481,'永安市',350400,3),(350500,'泉州市',350000,2),(350502,'鲤城区',350500,3),(350503,'丰泽区',350500,3),(350504,'洛江区',350500,3),(350505,'泉港区',350500,3),(350521,'惠安县',350500,3),(350524,'安溪县',350500,3),(350525,'永春县',350500,3),(350526,'德化县',350500,3),(350527,'金门县',350500,3),(350581,'石狮市',350500,3),(350582,'晋江市',350500,3),(350583,'南安市',350500,3),(350600,'漳州市',350000,2),(350602,'芗城区',350600,3),(350603,'龙文区',350600,3),(350622,'云霄县',350600,3),(350623,'漳浦县',350600,3),(350624,'诏安县',350600,3),(350625,'长泰县',350600,3),(350626,'东山县',350600,3),(350627,'南靖县',350600,3),(350628,'平和县',350600,3),(350629,'华安县',350600,3),(350681,'龙海市',350600,3),(350700,'南平市',350000,2),(350702,'延平区',350700,3),(350721,'顺昌县',350700,3),(350722,'浦城县',350700,3),(350723,'光泽县',350700,3),(350724,'松溪县',350700,3),(350725,'政和县',350700,3),(350781,'邵武市',350700,3),(350782,'武夷山市',350700,3),(350783,'建瓯市',350700,3),(350784,'建阳市',350700,3),(350800,'龙岩市',350000,2),(350802,'新罗区',350800,3),(350821,'长汀县',350800,3),(350822,'永定县',350800,3),(350823,'上杭县',350800,3),(350824,'武平县',350800,3),(350825,'连城县',350800,3),(350881,'漳平市',350800,3),(350900,'宁德市',350000,2),(350902,'蕉城区',350900,3),(350921,'霞浦县',350900,3),(350922,'古田县',350900,3),(350923,'屏南县',350900,3),(350924,'寿宁县',350900,3),(350925,'周宁县',350900,3),(350926,'柘荣县',350900,3),(350981,'福安市',350900,3),(350982,'福鼎市',350900,3),(360000,'江西省',0,1),(360100,'南昌市',360000,2),(360102,'东湖区',360100,3),(360103,'西湖区',360100,3),(360104,'青云谱区',360100,3),(360105,'湾里区',360100,3),(360111,'青山湖区',360100,3),(360121,'南昌县',360100,3),(360122,'新建县',360100,3),(360123,'安义县',360100,3),(360124,'进贤县',360100,3),(360200,'景德镇市',360000,2),(360202,'昌江区',360200,3),(360203,'珠山区',360200,3),(360222,'浮梁县',360200,3),(360281,'乐平市',360200,3),(360300,'萍乡市',360000,2),(360302,'安源区',360300,3),(360313,'湘东区',360300,3),(360321,'莲花县',360300,3),(360322,'上栗县',360300,3),(360323,'芦溪县',360300,3),(360400,'九江市',360000,2),(360402,'庐山区',360400,3),(360403,'浔阳区',360400,3),(360421,'九江县',360400,3),(360423,'武宁县',360400,3),(360424,'修水县',360400,3),(360425,'永修县',360400,3),(360426,'德安县',360400,3),(360427,'星子县',360400,3),(360428,'都昌县',360400,3),(360429,'湖口县',360400,3),(360430,'彭泽县',360400,3),(360481,'瑞昌市',360400,3),(360483,'共青城市',360400,3),(360500,'新余市',360000,2),(360502,'渝水区',360500,3),(360521,'分宜县',360500,3),(360600,'鹰潭市',360000,2),(360602,'月湖区',360600,3),(360622,'余江县',360600,3),(360681,'贵溪市',360600,3),(360700,'赣州市',360000,2),(360702,'章贡区',360700,3),(360721,'赣县',360700,3),(360722,'信丰县',360700,3),(360723,'大余县',360700,3),(360724,'上犹县',360700,3),(360725,'崇义县',360700,3),(360726,'安远县',360700,3),(360727,'龙南县',360700,3),(360728,'定南县',360700,3),(360729,'全南县',360700,3),(360730,'宁都县',360700,3),(360731,'于都县',360700,3),(360732,'兴国县',360700,3),(360733,'会昌县',360700,3),(360734,'寻乌县',360700,3),(360735,'石城县',360700,3),(360781,'瑞金市',360700,3),(360782,'南康市',360700,3),(360800,'吉安市',360000,2),(360802,'吉州区',360800,3),(360803,'青原区',360800,3),(360821,'吉安县',360800,3),(360822,'吉水县',360800,3),(360823,'峡江县',360800,3),(360824,'新干县',360800,3),(360825,'永丰县',360800,3),(360826,'泰和县',360800,3),(360827,'遂川县',360800,3),(360828,'万安县',360800,3),(360829,'安福县',360800,3),(360830,'永新县',360800,3),(360881,'井冈山市',360800,3),(360900,'宜春市',360000,2),(360902,'袁州区',360900,3),(360921,'奉新县',360900,3),(360922,'万载县',360900,3),(360923,'上高县',360900,3),(360924,'宜丰县',360900,3),(360925,'靖安县',360900,3),(360926,'铜鼓县',360900,3),(360981,'丰城市',360900,3),(360982,'樟树市',360900,3),(360983,'高安市',360900,3),(361000,'抚州市',360000,2),(361002,'临川区',361000,3),(361021,'南城县',361000,3),(361022,'黎川县',361000,3),(361023,'南丰县',361000,3),(361024,'崇仁县',361000,3),(361025,'乐安县',361000,3),(361026,'宜黄县',361000,3),(361027,'金溪县',361000,3),(361028,'资溪县',361000,3),(361029,'东乡县',361000,3),(361030,'广昌县',361000,3),(361100,'上饶市',360000,2),(361102,'信州区',361100,3),(361121,'上饶县',361100,3),(361122,'广丰县',361100,3),(361123,'玉山县',361100,3),(361124,'铅山县',361100,3),(361125,'横峰县',361100,3),(361126,'弋阳县',361100,3),(361127,'余干县',361100,3),(361128,'鄱阳县',361100,3),(361129,'万年县',361100,3),(361130,'婺源县',361100,3),(361181,'德兴市',361100,3),(370000,'山东省',0,1),(370100,'济南市',370000,2),(370102,'历下区',370100,3),(370103,'市中区',370100,3),(370104,'槐荫区',370100,3),(370105,'天桥区',370100,3),(370112,'历城区',370100,3),(370113,'长清区',370100,3),(370124,'平阴县',370100,3),(370125,'济阳县',370100,3),(370126,'商河县',370100,3),(370181,'章丘市',370100,3),(370200,'青岛市',370000,2),(370202,'市南区',370200,3),(370203,'市北区',370200,3),(370211,'黄岛区',370200,3),(370212,'崂山区',370200,3),(370213,'李沧区',370200,3),(370214,'城阳区',370200,3),(370281,'胶州市',370200,3),(370282,'即墨市',370200,3),(370283,'平度市',370200,3),(370285,'莱西市',370200,3),(370300,'淄博市',370000,2),(370302,'淄川区',370300,3),(370303,'张店区',370300,3),(370304,'博山区',370300,3),(370305,'临淄区',370300,3),(370306,'周村区',370300,3),(370321,'桓台县',370300,3),(370322,'高青县',370300,3),(370323,'沂源县',370300,3),(370400,'枣庄市',370000,2),(370402,'市中区',370400,3),(370403,'薛城区',370400,3),(370404,'峄城区',370400,3),(370405,'台儿庄区',370400,3),(370406,'山亭区',370400,3),(370481,'滕州市',370400,3),(370500,'东营市',370000,2),(370502,'东营区',370500,3),(370503,'河口区',370500,3),(370521,'垦利县',370500,3),(370522,'利津县',370500,3),(370523,'广饶县',370500,3),(370600,'烟台市',370000,2),(370602,'芝罘区',370600,3),(370611,'福山区',370600,3),(370612,'牟平区',370600,3),(370613,'莱山区',370600,3),(370634,'长岛县',370600,3),(370681,'龙口市',370600,3),(370682,'莱阳市',370600,3),(370683,'莱州市',370600,3),(370684,'蓬莱市',370600,3),(370685,'招远市',370600,3),(370686,'栖霞市',370600,3),(370687,'海阳市',370600,3),(370700,'潍坊市',370000,2),(370702,'潍城区',370700,3),(370703,'寒亭区',370700,3),(370704,'坊子区',370700,3),(370705,'奎文区',370700,3),(370724,'临朐县',370700,3),(370725,'昌乐县',370700,3),(370781,'青州市',370700,3),(370782,'诸城市',370700,3),(370783,'寿光市',370700,3),(370784,'安丘市',370700,3),(370785,'高密市',370700,3),(370786,'昌邑市',370700,3),(370800,'济宁市',370000,2),(370802,'市中区',370800,3),(370811,'任城区',370800,3),(370826,'微山县',370800,3),(370827,'鱼台县',370800,3),(370828,'金乡县',370800,3),(370829,'嘉祥县',370800,3),(370830,'汶上县',370800,3),(370831,'泗水县',370800,3),(370832,'梁山县',370800,3),(370881,'曲阜市',370800,3),(370882,'兖州市',370800,3),(370883,'邹城市',370800,3),(370900,'泰安市',370000,2),(370902,'泰山区',370900,3),(370903,'岱岳区',370900,3),(370921,'宁阳县',370900,3),(370923,'东平县',370900,3),(370982,'新泰市',370900,3),(370983,'肥城市',370900,3),(371000,'威海市',370000,2),(371002,'环翠区',371000,3),(371081,'文登市',371000,3),(371082,'荣成市',371000,3),(371083,'乳山市',371000,3),(371100,'日照市',370000,2),(371102,'东港区',371100,3),(371103,'岚山区',371100,3),(371121,'五莲县',371100,3),(371122,'莒县',371100,3),(371200,'莱芜市',370000,2),(371202,'莱城区',371200,3),(371203,'钢城区',371200,3),(371300,'临沂市',370000,2),(371302,'兰山区',371300,3),(371311,'罗庄区',371300,3),(371312,'河东区',371300,3),(371321,'沂南县',371300,3),(371322,'郯城县',371300,3),(371323,'沂水县',371300,3),(371324,'苍山县',371300,3),(371325,'费县',371300,3),(371326,'平邑县',371300,3),(371327,'莒南县',371300,3),(371328,'蒙阴县',371300,3),(371329,'临沭县',371300,3),(371400,'德州市',370000,2),(371402,'德城区',371400,3),(371421,'陵县',371400,3),(371422,'宁津县',371400,3),(371423,'庆云县',371400,3),(371424,'临邑县',371400,3),(371425,'齐河县',371400,3),(371426,'平原县',371400,3),(371427,'夏津县',371400,3),(371428,'武城县',371400,3),(371481,'乐陵市',371400,3),(371482,'禹城市',371400,3),(371500,'聊城市',370000,2),(371502,'东昌府区',371500,3),(371521,'阳谷县',371500,3),(371522,'莘县',371500,3),(371523,'茌平县',371500,3),(371524,'东阿县',371500,3),(371525,'冠县',371500,3),(371526,'高唐县',371500,3),(371581,'临清市',371500,3),(371600,'滨州市',370000,2),(371602,'滨城区',371600,3),(371621,'惠民县',371600,3),(371622,'阳信县',371600,3),(371623,'无棣县',371600,3),(371624,'沾化县',371600,3),(371625,'博兴县',371600,3),(371626,'邹平县',371600,3),(371700,'菏泽市',370000,2),(371702,'牡丹区',371700,3),(371721,'曹县',371700,3),(371722,'单县',371700,3),(371723,'成武县',371700,3),(371724,'巨野县',371700,3),(371725,'郓城县',371700,3),(371726,'鄄城县',371700,3),(371727,'定陶县',371700,3),(371728,'东明县',371700,3),(410000,'河南省',0,1),(410100,'郑州市',410000,2),(410102,'中原区',410100,3),(410103,'二七区',410100,3),(410104,'管城回族区',410100,3),(410105,'金水区',410100,3),(410106,'上街区',410100,3),(410108,'惠济区',410100,3),(410122,'中牟县',410100,3),(410181,'巩义市',410100,3),(410182,'荥阳市',410100,3),(410183,'新密市',410100,3),(410184,'新郑市',410100,3),(410185,'登封市',410100,3),(410200,'开封市',410000,2),(410202,'龙亭区',410200,3),(410203,'顺河回族区',410200,3),(410204,'鼓楼区',410200,3),(410205,'禹王台区',410200,3),(410211,'金明区',410200,3),(410221,'杞县',410200,3),(410222,'通许县',410200,3),(410223,'尉氏县',410200,3),(410224,'开封县',410200,3),(410225,'兰考县',410200,3),(410300,'洛阳市',410000,2),(410302,'老城区',410300,3),(410303,'西工区',410300,3),(410304,'瀍河回族区',410300,3),(410305,'涧西区',410300,3),(410306,'吉利区',410300,3),(410307,'洛龙区',410300,3),(410322,'孟津县',410300,3),(410323,'新安县',410300,3),(410324,'栾川县',410300,3),(410325,'嵩县',410300,3),(410326,'汝阳县',410300,3),(410327,'宜阳县',410300,3),(410328,'洛宁县',410300,3),(410329,'伊川县',410300,3),(410381,'偃师市',410300,3),(410400,'平顶山市',410000,2),(410402,'新华区',410400,3),(410403,'卫东区',410400,3),(410404,'石龙区',410400,3),(410411,'湛河区',410400,3),(410421,'宝丰县',410400,3),(410422,'叶县',410400,3),(410423,'鲁山县',410400,3),(410425,'郏县',410400,3),(410481,'舞钢市',410400,3),(410482,'汝州市',410400,3),(410500,'安阳市',410000,2),(410502,'文峰区',410500,3),(410503,'北关区',410500,3),(410505,'殷都区',410500,3),(410506,'龙安区',410500,3),(410522,'安阳县',410500,3),(410523,'汤阴县',410500,3),(410526,'滑县',410500,3),(410527,'内黄县',410500,3),(410581,'林州市',410500,3),(410600,'鹤壁市',410000,2),(410602,'鹤山区',410600,3),(410603,'山城区',410600,3),(410611,'淇滨区',410600,3),(410621,'浚县',410600,3),(410622,'淇县',410600,3),(410700,'新乡市',410000,2),(410702,'红旗区',410700,3),(410703,'卫滨区',410700,3),(410704,'凤泉区',410700,3),(410711,'牧野区',410700,3),(410721,'新乡县',410700,3),(410724,'获嘉县',410700,3),(410725,'原阳县',410700,3),(410726,'延津县',410700,3),(410727,'封丘县',410700,3),(410728,'长垣县',410700,3),(410781,'卫辉市',410700,3),(410782,'辉县市',410700,3),(410800,'焦作市',410000,2),(410802,'解放区',410800,3),(410803,'中站区',410800,3),(410804,'马村区',410800,3),(410811,'山阳区',410800,3),(410821,'修武县',410800,3),(410822,'博爱县',410800,3),(410823,'武陟县',410800,3),(410825,'温县',410800,3),(410881,'济源市',410000,2),(410882,'沁阳市',410800,3),(410883,'孟州市',410800,3),(410900,'濮阳市',410000,2),(410902,'华龙区',410900,3),(410922,'清丰县',410900,3),(410923,'南乐县',410900,3),(410926,'范县',410900,3),(410927,'台前县',410900,3),(410928,'濮阳县',410900,3),(411000,'许昌市',410000,2),(411002,'魏都区',411000,3),(411023,'许昌县',411000,3),(411024,'鄢陵县',411000,3),(411025,'襄城县',411000,3),(411081,'禹州市',411000,3),(411082,'长葛市',411000,3),(411100,'漯河市',410000,2),(411102,'源汇区',411100,3),(411103,'郾城区',411100,3),(411104,'召陵区',411100,3),(411121,'舞阳县',411100,3),(411122,'临颍县',411100,3),(411200,'三门峡市',410000,2),(411202,'湖滨区',411200,3),(411221,'渑池县',411200,3),(411222,'陕县',411200,3),(411224,'卢氏县',411200,3),(411281,'义马市',411200,3),(411282,'灵宝市',411200,3),(411300,'南阳市',410000,2),(411302,'宛城区',411300,3),(411303,'卧龙区',411300,3),(411321,'南召县',411300,3),(411322,'方城县',411300,3),(411323,'西峡县',411300,3),(411324,'镇平县',411300,3),(411325,'内乡县',411300,3),(411326,'淅川县',411300,3),(411327,'社旗县',411300,3),(411328,'唐河县',411300,3),(411329,'新野县',411300,3),(411330,'桐柏县',411300,3),(411381,'邓州市',411300,3),(411400,'商丘市',410000,2),(411402,'梁园区',411400,3),(411403,'睢阳区',411400,3),(411421,'民权县',411400,3),(411422,'睢县',411400,3),(411423,'宁陵县',411400,3),(411424,'柘城县',411400,3),(411425,'虞城县',411400,3),(411426,'夏邑县',411400,3),(411481,'永城市',411400,3),(411500,'信阳市',410000,2),(411502,'浉河区',411500,3),(411503,'平桥区',411500,3),(411521,'罗山县',411500,3),(411522,'光山县',411500,3),(411523,'新县',411500,3),(411524,'商城县',411500,3),(411525,'固始县',411500,3),(411526,'潢川县',411500,3),(411527,'淮滨县',411500,3),(411528,'息县',411500,3),(411600,'周口市',410000,2),(411602,'川汇区',411600,3),(411621,'扶沟县',411600,3),(411622,'西华县',411600,3),(411623,'商水县',411600,3),(411624,'沈丘县',411600,3),(411625,'郸城县',411600,3),(411626,'淮阳县',411600,3),(411627,'太康县',411600,3),(411628,'鹿邑县',411600,3),(411681,'项城市',411600,3),(411700,'驻马店市',410000,2),(411702,'驿城区',411700,3),(411721,'西平县',411700,3),(411722,'上蔡县',411700,3),(411723,'平舆县',411700,3),(411724,'正阳县',411700,3),(411725,'确山县',411700,3),(411726,'泌阳县',411700,3),(411727,'汝南县',411700,3),(411728,'遂平县',411700,3),(411729,'新蔡县',411700,3),(420000,'湖北省',0,1),(420100,'武汉市',420000,2),(420102,'江岸区',420100,3),(420103,'江汉区',420100,3),(420104,'硚口区',420100,3),(420105,'汉阳区',420100,3),(420106,'武昌区',420100,3),(420107,'青山区',420100,3),(420111,'洪山区',420100,3),(420112,'东西湖区',420100,3),(420113,'汉南区',420100,3),(420114,'蔡甸区',420100,3),(420115,'江夏区',420100,3),(420116,'黄陂区',420100,3),(420117,'新洲区',420100,3),(420200,'黄石市',420000,2),(420202,'黄石港区',420200,3),(420203,'西塞山区',420200,3),(420204,'下陆区',420200,3),(420205,'铁山区',420200,3),(420222,'阳新县',420200,3),(420281,'大冶市',420200,3),(420300,'十堰市',420000,2),(420302,'茅箭区',420300,3),(420303,'张湾区',420300,3),(420321,'郧县',420300,3),(420322,'郧西县',420300,3),(420323,'竹山县',420300,3),(420324,'竹溪县',420300,3),(420325,'房县',420300,3),(420381,'丹江口市',420300,3),(420500,'宜昌市',420000,2),(420502,'西陵区',420500,3),(420503,'伍家岗区',420500,3),(420504,'点军区',420500,3),(420505,'猇亭区',420500,3),(420506,'夷陵区',420500,3),(420525,'远安县',420500,3),(420526,'兴山县',420500,3),(420527,'秭归县',420500,3),(420528,'长阳土家族自治县',420500,3),(420529,'五峰土家族自治县',420500,3),(420581,'宜都市',420500,3),(420582,'当阳市',420500,3),(420583,'枝江市',420500,3),(420600,'襄阳市',420000,2),(420602,'襄城区',420600,3),(420606,'樊城区',420600,3),(420607,'襄州区',420600,3),(420624,'南漳县',420600,3),(420625,'谷城县',420600,3),(420626,'保康县',420600,3),(420682,'老河口市',420600,3),(420683,'枣阳市',420600,3),(420684,'宜城市',420600,3),(420700,'鄂州市',420000,2),(420702,'梁子湖区',420700,3),(420703,'华容区',420700,3),(420704,'鄂城区',420700,3),(420800,'荆门市',420000,2),(420802,'东宝区',420800,3),(420804,'掇刀区',420800,3),(420821,'京山县',420800,3),(420822,'沙洋县',420800,3),(420881,'钟祥市',420800,3),(420900,'孝感市',420000,2),(420902,'孝南区',420900,3),(420921,'孝昌县',420900,3),(420922,'大悟县',420900,3),(420923,'云梦县',420900,3),(420981,'应城市',420900,3),(420982,'安陆市',420900,3),(420984,'汉川市',420900,3),(421000,'荆州市',420000,2),(421002,'沙市区',421000,3),(421003,'荆州区',421000,3),(421022,'公安县',421000,3),(421023,'监利县',421000,3),(421024,'江陵县',421000,3),(421081,'石首市',421000,3),(421083,'洪湖市',421000,3),(421087,'松滋市',421000,3),(421100,'黄冈市',420000,2),(421102,'黄州区',421100,3),(421121,'团风县',421100,3),(421122,'红安县',421100,3),(421123,'罗田县',421100,3),(421124,'英山县',421100,3),(421125,'浠水县',421100,3),(421126,'蕲春县',421100,3),(421127,'黄梅县',421100,3),(421181,'麻城市',421100,3),(421182,'武穴市',421100,3),(421200,'咸宁市',420000,2),(421202,'咸安区',421200,3),(421221,'嘉鱼县',421200,3),(421222,'通城县',421200,3),(421223,'崇阳县',421200,3),(421224,'通山县',421200,3),(421281,'赤壁市',421200,3),(421300,'随州市',420000,2),(421302,'曾都区',421300,3),(421321,'随县',421300,3),(421381,'广水市',421300,3),(422800,'恩施土家族苗族自治州',420000,2),(422801,'恩施市',422800,3),(422802,'利川市',422800,3),(422822,'建始县',422800,3),(422823,'巴东县',422800,3),(422825,'宣恩县',422800,3),(422826,'咸丰县',422800,3),(422827,'来凤县',422800,3),(422828,'鹤峰县',422800,3),(429004,'仙桃市',420000,2),(429005,'潜江市',420000,2),(429006,'天门市',420000,2),(429021,'神农架林区',420000,2),(430000,'湖南省',0,1),(430100,'长沙市',430000,2),(430102,'芙蓉区',430100,3),(430103,'天心区',430100,3),(430104,'岳麓区',430100,3),(430105,'开福区',430100,3),(430111,'雨花区',430100,3),(430121,'长沙县',430100,3),(430122,'望城区',430100,3),(430124,'宁乡县',430100,3),(430181,'浏阳市',430100,3),(430200,'株洲市',430000,2),(430202,'荷塘区',430200,3),(430203,'芦淞区',430200,3),(430204,'石峰区',430200,3),(430211,'天元区',430200,3),(430221,'株洲县',430200,3),(430223,'攸县',430200,3),(430224,'茶陵县',430200,3),(430225,'炎陵县',430200,3),(430281,'醴陵市',430200,3),(430300,'湘潭市',430000,2),(430302,'雨湖区',430300,3),(430304,'岳塘区',430300,3),(430321,'湘潭县',430300,3),(430381,'湘乡市',430300,3),(430382,'韶山市',430300,3),(430400,'衡阳市',430000,2),(430405,'珠晖区',430400,3),(430406,'雁峰区',430400,3),(430407,'石鼓区',430400,3),(430408,'蒸湘区',430400,3),(430412,'南岳区',430400,3),(430421,'衡阳县',430400,3),(430422,'衡南县',430400,3),(430423,'衡山县',430400,3),(430424,'衡东县',430400,3),(430426,'祁东县',430400,3),(430481,'耒阳市',430400,3),(430482,'常宁市',430400,3),(430500,'邵阳市',430000,2),(430502,'双清区',430500,3),(430503,'大祥区',430500,3),(430511,'北塔区',430500,3),(430521,'邵东县',430500,3),(430522,'新邵县',430500,3),(430523,'邵阳县',430500,3),(430524,'隆回县',430500,3),(430525,'洞口县',430500,3),(430527,'绥宁县',430500,3),(430528,'新宁县',430500,3),(430529,'城步苗族自治县',430500,3),(430581,'武冈市',430500,3),(430600,'岳阳市',430000,2),(430602,'岳阳楼区',430600,3),(430603,'云溪区',430600,3),(430611,'君山区',430600,3),(430621,'岳阳县',430600,3),(430623,'华容县',430600,3),(430624,'湘阴县',430600,3),(430626,'平江县',430600,3),(430681,'汨罗市',430600,3),(430682,'临湘市',430600,3),(430700,'常德市',430000,2),(430702,'武陵区',430700,3),(430703,'鼎城区',430700,3),(430721,'安乡县',430700,3),(430722,'汉寿县',430700,3),(430723,'澧县',430700,3),(430724,'临澧县',430700,3),(430725,'桃源县',430700,3),(430726,'石门县',430700,3),(430781,'津市市',430700,3),(430800,'张家界市',430000,2),(430802,'永定区',430800,3),(430811,'武陵源区',430800,3),(430821,'慈利县',430800,3),(430822,'桑植县',430800,3),(430900,'益阳市',430000,2),(430902,'资阳区',430900,3),(430903,'赫山区',430900,3),(430921,'南县',430900,3),(430922,'桃江县',430900,3),(430923,'安化县',430900,3),(430981,'沅江市',430900,3),(431000,'郴州市',430000,2),(431002,'北湖区',431000,3),(431003,'苏仙区',431000,3),(431021,'桂阳县',431000,3),(431022,'宜章县',431000,3),(431023,'永兴县',431000,3),(431024,'嘉禾县',431000,3),(431025,'临武县',431000,3),(431026,'汝城县',431000,3),(431027,'桂东县',431000,3),(431028,'安仁县',431000,3),(431081,'资兴市',431000,3),(431100,'永州市',430000,2),(431102,'零陵区',431100,3),(431103,'冷水滩区',431100,3),(431121,'祁阳县',431100,3),(431122,'东安县',431100,3),(431123,'双牌县',431100,3),(431124,'道县',431100,3),(431125,'江永县',431100,3),(431126,'宁远县',431100,3),(431127,'蓝山县',431100,3),(431128,'新田县',431100,3),(431129,'江华瑶族自治县',431100,3),(431200,'怀化市',430000,2),(431202,'鹤城区',431200,3),(431221,'中方县',431200,3),(431222,'沅陵县',431200,3),(431223,'辰溪县',431200,3),(431224,'溆浦县',431200,3),(431225,'会同县',431200,3),(431226,'麻阳苗族自治县',431200,3),(431227,'新晃侗族自治县',431200,3),(431228,'芷江侗族自治县',431200,3),(431229,'靖州苗族侗族自治县',431200,3),(431230,'通道侗族自治县',431200,3),(431281,'洪江市',431200,3),(431300,'娄底市',430000,2),(431302,'娄星区',431300,3),(431321,'双峰县',431300,3),(431322,'新化县',431300,3),(431381,'冷水江市',431300,3),(431382,'涟源市',431300,3),(433100,'湘西土家族苗族自治州',430000,2),(433101,'吉首市',433100,3),(433122,'泸溪县',433100,3),(433123,'凤凰县',433100,3),(433124,'花垣县',433100,3),(433125,'保靖县',433100,3),(433126,'古丈县',433100,3),(433127,'永顺县',433100,3),(433130,'龙山县',433100,3),(440000,'广东省',0,1),(440100,'广州市',440000,2),(440103,'荔湾区',440100,3),(440104,'越秀区',440100,3),(440105,'海珠区',440100,3),(440106,'天河区',440100,3),(440111,'白云区',440100,3),(440112,'黄埔区',440100,3),(440113,'番禺区',440100,3),(440114,'花都区',440100,3),(440115,'南沙区',440100,3),(440116,'萝岗区',440100,3),(440183,'增城市',440100,3),(440184,'从化市',440100,3),(440200,'韶关市',440000,2),(440203,'武江区',440200,3),(440204,'浈江区',440200,3),(440205,'曲江区',440200,3),(440222,'始兴县',440200,3),(440224,'仁化县',440200,3),(440229,'翁源县',440200,3),(440232,'乳源瑶族自治县',440200,3),(440233,'新丰县',440200,3),(440281,'乐昌市',440200,3),(440282,'南雄市',440200,3),(440300,'深圳市',440000,2),(440303,'罗湖区',440300,3),(440304,'福田区',440300,3),(440305,'南山区',440300,3),(440306,'宝安区',440300,3),(440307,'龙岗区',440300,3),(440308,'盐田区',440300,3),(440320,'光明新区',440300,3),(440321,'坪山新区',440300,3),(440322,'大鹏新区',440300,3),(440323,'龙华新区',440300,3),(440400,'珠海市',440000,2),(440402,'香洲区',440400,3),(440403,'斗门区',440400,3),(440404,'金湾区',440400,3),(440500,'汕头市',440000,2),(440507,'龙湖区',440500,3),(440511,'金平区',440500,3),(440512,'濠江区',440500,3),(440513,'潮阳区',440500,3),(440514,'潮南区',440500,3),(440515,'澄海区',440500,3),(440523,'南澳县',440500,3),(440600,'佛山市',440000,2),(440604,'禅城区',440600,3),(440605,'南海区',440600,3),(440606,'顺德区',440600,3),(440607,'三水区',440600,3),(440608,'高明区',440600,3),(440700,'江门市',440000,2),(440703,'蓬江区',440700,3),(440704,'江海区',440700,3),(440705,'新会区',440700,3),(440781,'台山市',440700,3),(440783,'开平市',440700,3),(440784,'鹤山市',440700,3),(440785,'恩平市',440700,3),(440800,'湛江市',440000,2),(440802,'赤坎区',440800,3),(440803,'霞山区',440800,3),(440804,'坡头区',440800,3),(440811,'麻章区',440800,3),(440823,'遂溪县',440800,3),(440825,'徐闻县',440800,3),(440881,'廉江市',440800,3),(440882,'雷州市',440800,3),(440883,'吴川市',440800,3),(440900,'茂名市',440000,2),(440902,'茂南区',440900,3),(440903,'茂港区',440900,3),(440923,'电白县',440900,3),(440981,'高州市',440900,3),(440982,'化州市',440900,3),(440983,'信宜市',440900,3),(441200,'肇庆市',440000,2),(441202,'端州区',441200,3),(441203,'鼎湖区',441200,3),(441223,'广宁县',441200,3),(441224,'怀集县',441200,3),(441225,'封开县',441200,3),(441226,'德庆县',441200,3),(441283,'高要市',441200,3),(441284,'四会市',441200,3),(441300,'惠州市',440000,2),(441302,'惠城区',441300,3),(441303,'惠阳区',441300,3),(441322,'博罗县',441300,3),(441323,'惠东县',441300,3),(441324,'龙门县',441300,3),(441400,'梅州市',440000,2),(441402,'梅江区',441400,3),(441421,'梅县',441400,3),(441422,'大埔县',441400,3),(441423,'丰顺县',441400,3),(441424,'五华县',441400,3),(441426,'平远县',441400,3),(441427,'蕉岭县',441400,3),(441481,'兴宁市',441400,3),(441500,'汕尾市',440000,2),(441502,'城区',441500,3),(441521,'海丰县',441500,3),(441523,'陆河县',441500,3),(441581,'陆丰市',441500,3),(441600,'河源市',440000,2),(441602,'源城区',441600,3),(441621,'紫金县',441600,3),(441622,'龙川县',441600,3),(441623,'连平县',441600,3),(441624,'和平县',441600,3),(441625,'东源县',441600,3),(441700,'阳江市',440000,2),(441702,'江城区',441700,3),(441721,'阳西县',441700,3),(441723,'阳东县',441700,3),(441781,'阳春市',441700,3),(441800,'清远市',440000,2),(441802,'清城区',441800,3),(441821,'佛冈县',441800,3),(441823,'阳山县',441800,3),(441825,'连山壮族瑶族自治县',441800,3),(441826,'连南瑶族自治县',441800,3),(441827,'清新区',441800,3),(441881,'英德市',441800,3),(441882,'连州市',441800,3),(441900,'东莞市',440000,2),(442000,'中山市',440000,2),(442101,'东沙群岛',440000,2),(445100,'潮州市',440000,2),(445102,'湘桥区',445100,3),(445121,'潮安区',445100,3),(445122,'饶平县',445100,3),(445200,'揭阳市',440000,2),(445202,'榕城区',445200,3),(445221,'揭东区',445200,3),(445222,'揭西县',445200,3),(445224,'惠来县',445200,3),(445281,'普宁市',445200,3),(445300,'云浮市',440000,2),(445302,'云城区',445300,3),(445321,'新兴县',445300,3),(445322,'郁南县',445300,3),(445323,'云安县',445300,3),(445381,'罗定市',445300,3),(450000,'广西壮族自治区',0,1),(450100,'南宁市',450000,2),(450102,'兴宁区',450100,3),(450103,'青秀区',450100,3),(450105,'江南区',450100,3),(450107,'西乡塘区',450100,3),(450108,'良庆区',450100,3),(450109,'邕宁区',450100,3),(450122,'武鸣县',450100,3),(450123,'隆安县',450100,3),(450124,'马山县',450100,3),(450125,'上林县',450100,3),(450126,'宾阳县',450100,3),(450127,'横县',450100,3),(450200,'柳州市',450000,2),(450202,'城中区',450200,3),(450203,'鱼峰区',450200,3),(450204,'柳南区',450200,3),(450205,'柳北区',450200,3),(450221,'柳江县',450200,3),(450222,'柳城县',450200,3),(450223,'鹿寨县',450200,3),(450224,'融安县',450200,3),(450225,'融水苗族自治县',450200,3),(450226,'三江侗族自治县',450200,3),(450300,'桂林市',450000,2),(450302,'秀峰区',450300,3),(450303,'叠彩区',450300,3),(450304,'象山区',450300,3),(450305,'七星区',450300,3),(450311,'雁山区',450300,3),(450321,'阳朔县',450300,3),(450322,'临桂区',450300,3),(450323,'灵川县',450300,3),(450324,'全州县',450300,3),(450325,'兴安县',450300,3),(450326,'永福县',450300,3),(450327,'灌阳县',450300,3),(450328,'龙胜各族自治县',450300,3),(450329,'资源县',450300,3),(450330,'平乐县',450300,3),(450331,'荔浦县',450300,3),(450332,'恭城瑶族自治县',450300,3),(450400,'梧州市',450000,2),(450403,'万秀区',450400,3),(450405,'长洲区',450400,3),(450406,'龙圩区',450400,3),(450421,'苍梧县',450400,3),(450422,'藤县',450400,3),(450423,'蒙山县',450400,3),(450481,'岑溪市',450400,3),(450500,'北海市',450000,2),(450502,'海城区',450500,3),(450503,'银海区',450500,3),(450512,'铁山港区',450500,3),(450521,'合浦县',450500,3),(450600,'防城港市',450000,2),(450602,'港口区',450600,3),(450603,'防城区',450600,3),(450621,'上思县',450600,3),(450681,'东兴市',450600,3),(450700,'钦州市',450000,2),(450702,'钦南区',450700,3),(450703,'钦北区',450700,3),(450721,'灵山县',450700,3),(450722,'浦北县',450700,3),(450800,'贵港市',450000,2),(450802,'港北区',450800,3),(450803,'港南区',450800,3),(450804,'覃塘区',450800,3),(450821,'平南县',450800,3),(450881,'桂平市',450800,3),(450900,'玉林市',450000,2),(450902,'玉州区',450900,3),(450903,'福绵区',450900,3),(450921,'容县',450900,3),(450922,'陆川县',450900,3),(450923,'博白县',450900,3),(450924,'兴业县',450900,3),(450981,'北流市',450900,3),(451000,'百色市',450000,2),(451002,'右江区',451000,3),(451021,'田阳县',451000,3),(451022,'田东县',451000,3),(451023,'平果县',451000,3),(451024,'德保县',451000,3),(451025,'靖西县',451000,3),(451026,'那坡县',451000,3),(451027,'凌云县',451000,3),(451028,'乐业县',451000,3),(451029,'田林县',451000,3),(451030,'西林县',451000,3),(451031,'隆林各族自治县',451000,3),(451100,'贺州市',450000,2),(451102,'八步区',451100,3),(451119,'平桂管理区',451100,3),(451121,'昭平县',451100,3),(451122,'钟山县',451100,3),(451123,'富川瑶族自治县',451100,3),(451200,'河池市',450000,2),(451202,'金城江区',451200,3),(451221,'南丹县',451200,3),(451222,'天峨县',451200,3),(451223,'凤山县',451200,3),(451224,'东兰县',451200,3),(451225,'罗城仫佬族自治县',451200,3),(451226,'环江毛南族自治县',451200,3),(451227,'巴马瑶族自治县',451200,3),(451228,'都安瑶族自治县',451200,3),(451229,'大化瑶族自治县',451200,3),(451281,'宜州市',451200,3),(451300,'来宾市',450000,2),(451302,'兴宾区',451300,3),(451321,'忻城县',451300,3),(451322,'象州县',451300,3),(451323,'武宣县',451300,3),(451324,'金秀瑶族自治县',451300,3),(451381,'合山市',451300,3),(451400,'崇左市',450000,2),(451402,'江州区',451400,3),(451421,'扶绥县',451400,3),(451422,'宁明县',451400,3),(451423,'龙州县',451400,3),(451424,'大新县',451400,3),(451425,'天等县',451400,3),(451481,'凭祥市',451400,3),(460000,'海南省',0,1),(460100,'海口市',460000,2),(460105,'秀英区',460100,3),(460106,'龙华区',460100,3),(460107,'琼山区',460100,3),(460108,'美兰区',460100,3),(460200,'三亚市',460000,2),(460300,'三沙市',460000,2),(469001,'五指山市',460000,2),(469002,'琼海市',460000,2),(469003,'儋州市',460000,2),(469005,'文昌市',460000,2),(469006,'万宁市',460000,2),(469007,'东方市',460000,2),(469025,'定安县',460000,2),(469026,'屯昌县',460000,2),(469027,'澄迈县',460000,2),(469028,'临高县',460000,2),(469030,'白沙黎族自治县',460000,2),(469031,'昌江黎族自治县',460000,2),(469033,'乐东黎族自治县',460000,2),(469034,'陵水黎族自治县',460000,2),(469035,'保亭黎族苗族自治县',460000,2),(469036,'琼中黎族苗族自治县',460000,2),(500000,'重庆',0,1),(500100,'重庆市',500000,2),(500101,'万州区',500100,3),(500102,'涪陵区',500100,3),(500103,'渝中区',500100,3),(500104,'大渡口区',500100,3),(500105,'江北区',500100,3),(500106,'沙坪坝区',500100,3),(500107,'九龙坡区',500100,3),(500108,'南岸区',500100,3),(500109,'北碚区',500100,3),(500112,'渝北区',500100,3),(500113,'巴南区',500100,3),(500114,'黔江区',500100,3),(500115,'长寿区',500100,3),(500222,'綦江区',500100,3),(500223,'潼南县',500100,3),(500224,'铜梁县',500100,3),(500225,'大足区',500100,3),(500226,'荣昌县',500100,3),(500227,'璧山县',500100,3),(500228,'梁平县',500100,3),(500229,'城口县',500100,3),(500230,'丰都县',500100,3),(500231,'垫江县',500100,3),(500232,'武隆县',500100,3),(500233,'忠县',500100,3),(500234,'开县',500100,3),(500235,'云阳县',500100,3),(500236,'奉节县',500100,3),(500237,'巫山县',500100,3),(500238,'巫溪县',500100,3),(500240,'石柱土家族自治县',500100,3),(500241,'秀山土家族苗族自治县',500100,3),(500242,'酉阳土家族苗族自治县',500100,3),(500243,'彭水苗族土家族自治县',500100,3),(500381,'江津区',500100,3),(500382,'合川区',500100,3),(500383,'永川区',500100,3),(500384,'南川区',500100,3),(510000,'四川省',0,1),(510100,'成都市',510000,2),(510104,'锦江区',510100,3),(510105,'青羊区',510100,3),(510106,'金牛区',510100,3),(510107,'武侯区',510100,3),(510108,'成华区',510100,3),(510112,'龙泉驿区',510100,3),(510113,'青白江区',510100,3),(510114,'新都区',510100,3),(510115,'温江区',510100,3),(510121,'金堂县',510100,3),(510122,'双流县',510100,3),(510124,'郫县',510100,3),(510129,'大邑县',510100,3),(510131,'蒲江县',510100,3),(510132,'新津县',510100,3),(510181,'都江堰市',510100,3),(510182,'彭州市',510100,3),(510183,'邛崃市',510100,3),(510184,'崇州市',510100,3),(510300,'自贡市',510000,2),(510302,'自流井区',510300,3),(510303,'贡井区',510300,3),(510304,'大安区',510300,3),(510311,'沿滩区',510300,3),(510321,'荣县',510300,3),(510322,'富顺县',510300,3),(510400,'攀枝花市',510000,2),(510402,'东区',510400,3),(510403,'西区',510400,3),(510411,'仁和区',510400,3),(510421,'米易县',510400,3),(510422,'盐边县',510400,3),(510500,'泸州市',510000,2),(510502,'江阳区',510500,3),(510503,'纳溪区',510500,3),(510504,'龙马潭区',510500,3),(510521,'泸县',510500,3),(510522,'合江县',510500,3),(510524,'叙永县',510500,3),(510525,'古蔺县',510500,3),(510600,'德阳市',510000,2),(510603,'旌阳区',510600,3),(510623,'中江县',510600,3),(510626,'罗江县',510600,3),(510681,'广汉市',510600,3),(510682,'什邡市',510600,3),(510683,'绵竹市',510600,3),(510700,'绵阳市',510000,2),(510703,'涪城区',510700,3),(510704,'游仙区',510700,3),(510722,'三台县',510700,3),(510723,'盐亭县',510700,3),(510724,'安县',510700,3),(510725,'梓潼县',510700,3),(510726,'北川羌族自治县',510700,3),(510727,'平武县',510700,3),(510781,'江油市',510700,3),(510800,'广元市',510000,2),(510802,'利州区',510800,3),(510811,'昭化区',510800,3),(510812,'朝天区',510800,3),(510821,'旺苍县',510800,3),(510822,'青川县',510800,3),(510823,'剑阁县',510800,3),(510824,'苍溪县',510800,3),(510900,'遂宁市',510000,2),(510903,'船山区',510900,3),(510904,'安居区',510900,3),(510921,'蓬溪县',510900,3),(510922,'射洪县',510900,3),(510923,'大英县',510900,3),(511000,'内江市',510000,2),(511002,'市中区',511000,3),(511011,'东兴区',511000,3),(511024,'威远县',511000,3),(511025,'资中县',511000,3),(511028,'隆昌县',511000,3),(511100,'乐山市',510000,2),(511102,'市中区',511100,3),(511111,'沙湾区',511100,3),(511112,'五通桥区',511100,3),(511113,'金口河区',511100,3),(511123,'犍为县',511100,3),(511124,'井研县',511100,3),(511126,'夹江县',511100,3),(511129,'沐川县',511100,3),(511132,'峨边彝族自治县',511100,3),(511133,'马边彝族自治县',511100,3),(511181,'峨眉山市',511100,3),(511300,'南充市',510000,2),(511302,'顺庆区',511300,3),(511303,'高坪区',511300,3),(511304,'嘉陵区',511300,3),(511321,'南部县',511300,3),(511322,'营山县',511300,3),(511323,'蓬安县',511300,3),(511324,'仪陇县',511300,3),(511325,'西充县',511300,3),(511381,'阆中市',511300,3),(511400,'眉山市',510000,2),(511402,'东坡区',511400,3),(511421,'仁寿县',511400,3),(511422,'彭山县',511400,3),(511423,'洪雅县',511400,3),(511424,'丹棱县',511400,3),(511425,'青神县',511400,3),(511500,'宜宾市',510000,2),(511502,'翠屏区',511500,3),(511521,'宜宾县',511500,3),(511522,'南溪区',511500,3),(511523,'江安县',511500,3),(511524,'长宁县',511500,3),(511525,'高县',511500,3),(511526,'珙县',511500,3),(511527,'筠连县',511500,3),(511528,'兴文县',511500,3),(511529,'屏山县',511500,3),(511600,'广安市',510000,2),(511602,'广安区',511600,3),(511603,'前锋区',511600,3),(511621,'岳池县',511600,3),(511622,'武胜县',511600,3),(511623,'邻水县',511600,3),(511681,'华蓥市',511600,3),(511700,'达州市',510000,2),(511702,'通川区',511700,3),(511721,'达川区',511700,3),(511722,'宣汉县',511700,3),(511723,'开江县',511700,3),(511724,'大竹县',511700,3),(511725,'渠县',511700,3),(511781,'万源市',511700,3),(511800,'雅安市',510000,2),(511802,'雨城区',511800,3),(511821,'名山区',511800,3),(511822,'荥经县',511800,3),(511823,'汉源县',511800,3),(511824,'石棉县',511800,3),(511825,'天全县',511800,3),(511826,'芦山县',511800,3),(511827,'宝兴县',511800,3),(511900,'巴中市',510000,2),(511902,'巴州区',511900,3),(511903,'恩阳区',511900,3),(511921,'通江县',511900,3),(511922,'南江县',511900,3),(511923,'平昌县',511900,3),(512000,'资阳市',510000,2),(512002,'雁江区',512000,3),(512021,'安岳县',512000,3),(512022,'乐至县',512000,3),(512081,'简阳市',512000,3),(513200,'阿坝藏族羌族自治州',510000,2),(513221,'汶川县',513200,3),(513222,'理县',513200,3),(513223,'茂县',513200,3),(513224,'松潘县',513200,3),(513225,'九寨沟县',513200,3),(513226,'金川县',513200,3),(513227,'小金县',513200,3),(513228,'黑水县',513200,3),(513229,'马尔康县',513200,3),(513230,'壤塘县',513200,3),(513231,'阿坝县',513200,3),(513232,'若尔盖县',513200,3),(513233,'红原县',513200,3),(513300,'甘孜藏族自治州',510000,2),(513321,'康定县',513300,3),(513322,'泸定县',513300,3),(513323,'丹巴县',513300,3),(513324,'九龙县',513300,3),(513325,'雅江县',513300,3),(513326,'道孚县',513300,3),(513327,'炉霍县',513300,3),(513328,'甘孜县',513300,3),(513329,'新龙县',513300,3),(513330,'德格县',513300,3),(513331,'白玉县',513300,3),(513332,'石渠县',513300,3),(513333,'色达县',513300,3),(513334,'理塘县',513300,3),(513335,'巴塘县',513300,3),(513336,'乡城县',513300,3),(513337,'稻城县',513300,3),(513338,'得荣县',513300,3),(513400,'凉山彝族自治州',510000,2),(513401,'西昌市',513400,3),(513422,'木里藏族自治县',513400,3),(513423,'盐源县',513400,3),(513424,'德昌县',513400,3),(513425,'会理县',513400,3),(513426,'会东县',513400,3),(513427,'宁南县',513400,3),(513428,'普格县',513400,3),(513429,'布拖县',513400,3),(513430,'金阳县',513400,3),(513431,'昭觉县',513400,3),(513432,'喜德县',513400,3),(513433,'冕宁县',513400,3),(513434,'越西县',513400,3),(513435,'甘洛县',513400,3),(513436,'美姑县',513400,3),(513437,'雷波县',513400,3),(520000,'贵州省',0,1),(520100,'贵阳市',520000,2),(520102,'南明区',520100,3),(520103,'云岩区',520100,3),(520111,'花溪区',520100,3),(520112,'乌当区',520100,3),(520113,'白云区',520100,3),(520121,'开阳县',520100,3),(520122,'息烽县',520100,3),(520123,'修文县',520100,3),(520151,'观山湖区',520100,3),(520181,'清镇市',520100,3),(520200,'六盘水市',520000,2),(520201,'钟山区',520200,3),(520203,'六枝特区',520200,3),(520221,'水城县',520200,3),(520222,'盘县',520200,3),(520300,'遵义市',520000,2),(520302,'红花岗区',520300,3),(520303,'汇川区',520300,3),(520321,'遵义县',520300,3),(520322,'桐梓县',520300,3),(520323,'绥阳县',520300,3),(520324,'正安县',520300,3),(520325,'道真仡佬族苗族自治县',520300,3),(520326,'务川仡佬族苗族自治县',520300,3),(520327,'凤冈县',520300,3),(520328,'湄潭县',520300,3),(520329,'余庆县',520300,3),(520330,'习水县',520300,3),(520381,'赤水市',520300,3),(520382,'仁怀市',520300,3),(520400,'安顺市',520000,2),(520402,'西秀区',520400,3),(520421,'平坝县',520400,3),(520422,'普定县',520400,3),(520423,'镇宁布依族苗族自治县',520400,3),(520424,'关岭布依族苗族自治县',520400,3),(520425,'紫云苗族布依族自治县',520400,3),(522200,'铜仁市',520000,2),(522201,'碧江区',522200,3),(522222,'江口县',522200,3),(522223,'玉屏侗族自治县',522200,3),(522224,'石阡县',522200,3),(522225,'思南县',522200,3),(522226,'印江土家族苗族自治县',522200,3),(522227,'德江县',522200,3),(522228,'沿河土家族自治县',522200,3),(522229,'松桃苗族自治县',522200,3),(522230,'万山区',522200,3),(522300,'黔西南布依族苗族自治州',520000,2),(522301,'兴义市',522300,3),(522322,'兴仁县',522300,3),(522323,'普安县',522300,3),(522324,'晴隆县',522300,3),(522325,'贞丰县',522300,3),(522326,'望谟县',522300,3),(522327,'册亨县',522300,3),(522328,'安龙县',522300,3),(522400,'毕节市',520000,2),(522401,'七星关区',522400,3),(522422,'大方县',522400,3),(522423,'黔西县',522400,3),(522424,'金沙县',522400,3),(522425,'织金县',522400,3),(522426,'纳雍县',522400,3),(522427,'威宁彝族回族苗族自治县',522400,3),(522428,'赫章县',522400,3),(522600,'黔东南苗族侗族自治州',520000,2),(522601,'凯里市',522600,3),(522622,'黄平县',522600,3),(522623,'施秉县',522600,3),(522624,'三穗县',522600,3),(522625,'镇远县',522600,3),(522626,'岑巩县',522600,3),(522627,'天柱县',522600,3),(522628,'锦屏县',522600,3),(522629,'剑河县',522600,3),(522630,'台江县',522600,3),(522631,'黎平县',522600,3),(522632,'榕江县',522600,3),(522633,'从江县',522600,3),(522634,'雷山县',522600,3),(522635,'麻江县',522600,3),(522636,'丹寨县',522600,3),(522700,'黔南布依族苗族自治州',520000,2),(522701,'都匀市',522700,3),(522702,'福泉市',522700,3),(522722,'荔波县',522700,3),(522723,'贵定县',522700,3),(522725,'瓮安县',522700,3),(522726,'独山县',522700,3),(522727,'平塘县',522700,3),(522728,'罗甸县',522700,3),(522729,'长顺县',522700,3),(522730,'龙里县',522700,3),(522731,'惠水县',522700,3),(522732,'三都水族自治县',522700,3),(530000,'云南省',0,1),(530100,'昆明市',530000,2),(530102,'五华区',530100,3),(530103,'盘龙区',530100,3),(530111,'官渡区',530100,3),(530112,'西山区',530100,3),(530113,'东川区',530100,3),(530121,'呈贡区',530100,3),(530122,'晋宁县',530100,3),(530124,'富民县',530100,3),(530125,'宜良县',530100,3),(530126,'石林彝族自治县',530100,3),(530127,'嵩明县',530100,3),(530128,'禄劝彝族苗族自治县',530100,3),(530129,'寻甸回族彝族自治县',530100,3),(530181,'安宁市',530100,3),(530300,'曲靖市',530000,2),(530302,'麒麟区',530300,3),(530321,'马龙县',530300,3),(530322,'陆良县',530300,3),(530323,'师宗县',530300,3),(530324,'罗平县',530300,3),(530325,'富源县',530300,3),(530326,'会泽县',530300,3),(530328,'沾益县',530300,3),(530381,'宣威市',530300,3),(530400,'玉溪市',530000,2),(530402,'红塔区',530400,3),(530421,'江川县',530400,3),(530422,'澄江县',530400,3),(530423,'通海县',530400,3),(530424,'华宁县',530400,3),(530425,'易门县',530400,3),(530426,'峨山彝族自治县',530400,3),(530427,'新平彝族傣族自治县',530400,3),(530428,'元江哈尼族彝族傣族自治县',530400,3),(530500,'保山市',530000,2),(530502,'隆阳区',530500,3),(530521,'施甸县',530500,3),(530522,'腾冲县',530500,3),(530523,'龙陵县',530500,3),(530524,'昌宁县',530500,3),(530600,'昭通市',530000,2),(530602,'昭阳区',530600,3),(530621,'鲁甸县',530600,3),(530622,'巧家县',530600,3),(530623,'盐津县',530600,3),(530624,'大关县',530600,3),(530625,'永善县',530600,3),(530626,'绥江县',530600,3),(530627,'镇雄县',530600,3),(530628,'彝良县',530600,3),(530629,'威信县',530600,3),(530630,'水富县',530600,3),(530700,'丽江市',530000,2),(530702,'古城区',530700,3),(530721,'玉龙纳西族自治县',530700,3),(530722,'永胜县',530700,3),(530723,'华坪县',530700,3),(530724,'宁蒗彝族自治县',530700,3),(530800,'普洱市',530000,2),(530802,'思茅区',530800,3),(530821,'宁洱哈尼族彝族自治县',530800,3),(530822,'墨江哈尼族自治县',530800,3),(530823,'景东彝族自治县',530800,3),(530824,'景谷傣族彝族自治县',530800,3),(530825,'镇沅彝族哈尼族拉祜族自治县',530800,3),(530826,'江城哈尼族彝族自治县',530800,3),(530827,'孟连傣族拉祜族佤族自治县',530800,3),(530828,'澜沧拉祜族自治县',530800,3),(530829,'西盟佤族自治县',530800,3),(530900,'临沧市',530000,2),(530902,'临翔区',530900,3),(530921,'凤庆县',530900,3),(530922,'云县',530900,3),(530923,'永德县',530900,3),(530924,'镇康县',530900,3),(530925,'双江拉祜族佤族布朗族傣族自治县',530900,3),(530926,'耿马傣族佤族自治县',530900,3),(530927,'沧源佤族自治县',530900,3),(532300,'楚雄彝族自治州',530000,2),(532301,'楚雄市',532300,3),(532322,'双柏县',532300,3),(532323,'牟定县',532300,3),(532324,'南华县',532300,3),(532325,'姚安县',532300,3),(532326,'大姚县',532300,3),(532327,'永仁县',532300,3),(532328,'元谋县',532300,3),(532329,'武定县',532300,3),(532331,'禄丰县',532300,3),(532500,'红河哈尼族彝族自治州',530000,2),(532501,'个旧市',532500,3),(532502,'开远市',532500,3),(532522,'蒙自市',532500,3),(532523,'屏边苗族自治县',532500,3),(532524,'建水县',532500,3),(532525,'石屏县',532500,3),(532526,'弥勒市',532500,3),(532527,'泸西县',532500,3),(532528,'元阳县',532500,3),(532529,'红河县',532500,3),(532530,'金平苗族瑶族傣族自治县',532500,3),(532531,'绿春县',532500,3),(532532,'河口瑶族自治县',532500,3),(532600,'文山壮族苗族自治州',530000,2),(532621,'文山市',532600,3),(532622,'砚山县',532600,3),(532623,'西畴县',532600,3),(532624,'麻栗坡县',532600,3),(532625,'马关县',532600,3),(532626,'丘北县',532600,3),(532627,'广南县',532600,3),(532628,'富宁县',532600,3),(532800,'西双版纳傣族自治州',530000,2),(532801,'景洪市',532800,3),(532822,'勐海县',532800,3),(532823,'勐腊县',532800,3),(532900,'大理白族自治州',530000,2),(532901,'大理市',532900,3),(532922,'漾濞彝族自治县',532900,3),(532923,'祥云县',532900,3),(532924,'宾川县',532900,3),(532925,'弥渡县',532900,3),(532926,'南涧彝族自治县',532900,3),(532927,'巍山彝族回族自治县',532900,3),(532928,'永平县',532900,3),(532929,'云龙县',532900,3),(532930,'洱源县',532900,3),(532931,'剑川县',532900,3),(532932,'鹤庆县',532900,3),(533100,'德宏傣族景颇族自治州',530000,2),(533102,'瑞丽市',533100,3),(533103,'芒市',533100,3),(533122,'梁河县',533100,3),(533123,'盈江县',533100,3),(533124,'陇川县',533100,3),(533300,'怒江傈僳族自治州',530000,2),(533321,'泸水县',533300,3),(533323,'福贡县',533300,3),(533324,'贡山独龙族怒族自治县',533300,3),(533325,'兰坪白族普米族自治县',533300,3),(533400,'迪庆藏族自治州',530000,2),(533421,'香格里拉县',533400,3),(533422,'德钦县',533400,3),(533423,'维西傈僳族自治县',533400,3),(540000,'西藏自治区',0,1),(540100,'拉萨市',540000,2),(540102,'城关区',540100,3),(540121,'林周县',540100,3),(540122,'当雄县',540100,3),(540123,'尼木县',540100,3),(540124,'曲水县',540100,3),(540125,'堆龙德庆县',540100,3),(540126,'达孜县',540100,3),(540127,'墨竹工卡县',540100,3),(542100,'昌都地区',540000,2),(542121,'昌都县',542100,3),(542122,'江达县',542100,3),(542123,'贡觉县',542100,3),(542124,'类乌齐县',542100,3),(542125,'丁青县',542100,3),(542126,'察雅县',542100,3),(542127,'八宿县',542100,3),(542128,'左贡县',542100,3),(542129,'芒康县',542100,3),(542132,'洛隆县',542100,3),(542133,'边坝县',542100,3),(542200,'山南地区',540000,2),(542221,'乃东县',542200,3),(542222,'扎囊县',542200,3),(542223,'贡嘎县',542200,3),(542224,'桑日县',542200,3),(542225,'琼结县',542200,3),(542226,'曲松县',542200,3),(542227,'措美县',542200,3),(542228,'洛扎县',542200,3),(542229,'加查县',542200,3),(542231,'隆子县',542200,3),(542232,'错那县',542200,3),(542233,'浪卡子县',542200,3),(542300,'日喀则地区',540000,2),(542301,'日喀则市',542300,3),(542322,'南木林县',542300,3),(542323,'江孜县',542300,3),(542324,'定日县',542300,3),(542325,'萨迦县',542300,3),(542326,'拉孜县',542300,3),(542327,'昂仁县',542300,3),(542328,'谢通门县',542300,3),(542329,'白朗县',542300,3),(542330,'仁布县',542300,3),(542331,'康马县',542300,3),(542332,'定结县',542300,3),(542333,'仲巴县',542300,3),(542334,'亚东县',542300,3),(542335,'吉隆县',542300,3),(542336,'聂拉木县',542300,3),(542337,'萨嘎县',542300,3),(542338,'岗巴县',542300,3),(542400,'那曲地区',540000,2),(542421,'那曲县',542400,3),(542422,'嘉黎县',542400,3),(542423,'比如县',542400,3),(542424,'聂荣县',542400,3),(542425,'安多县',542400,3),(542426,'申扎县',542400,3),(542427,'索县',542400,3),(542428,'班戈县',542400,3),(542429,'巴青县',542400,3),(542430,'尼玛县',542400,3),(542432,'双湖县',542400,3),(542500,'阿里地区',540000,2),(542521,'普兰县',542500,3),(542522,'札达县',542500,3),(542523,'噶尔县',542500,3),(542524,'日土县',542500,3),(542525,'革吉县',542500,3),(542526,'改则县',542500,3),(542527,'措勤县',542500,3),(542600,'林芝地区',540000,2),(542621,'林芝县',542600,3),(542622,'工布江达县',542600,3),(542623,'米林县',542600,3),(542624,'墨脱县',542600,3),(542625,'波密县',542600,3),(542626,'察隅县',542600,3),(542627,'朗县',542600,3),(610000,'陕西省',0,1),(610100,'西安市',610000,2),(610102,'新城区',610100,3),(610103,'碑林区',610100,3),(610104,'莲湖区',610100,3),(610111,'灞桥区',610100,3),(610112,'未央区',610100,3),(610113,'雁塔区',610100,3),(610114,'阎良区',610100,3),(610115,'临潼区',610100,3),(610116,'长安区',610100,3),(610122,'蓝田县',610100,3),(610124,'周至县',610100,3),(610125,'户县',610100,3),(610126,'高陵县',610100,3),(610200,'铜川市',610000,2),(610202,'王益区',610200,3),(610203,'印台区',610200,3),(610204,'耀州区',610200,3),(610222,'宜君县',610200,3),(610300,'宝鸡市',610000,2),(610302,'渭滨区',610300,3),(610303,'金台区',610300,3),(610304,'陈仓区',610300,3),(610322,'凤翔县',610300,3),(610323,'岐山县',610300,3),(610324,'扶风县',610300,3),(610326,'眉县',610300,3),(610327,'陇县',610300,3),(610328,'千阳县',610300,3),(610329,'麟游县',610300,3),(610330,'凤县',610300,3),(610331,'太白县',610300,3),(610400,'咸阳市',610000,2),(610402,'秦都区',610400,3),(610403,'杨陵区',610400,3),(610404,'渭城区',610400,3),(610422,'三原县',610400,3),(610423,'泾阳县',610400,3),(610424,'乾县',610400,3),(610425,'礼泉县',610400,3),(610426,'永寿县',610400,3),(610427,'彬县',610400,3),(610428,'长武县',610400,3),(610429,'旬邑县',610400,3),(610430,'淳化县',610400,3),(610431,'武功县',610400,3),(610481,'兴平市',610400,3),(610500,'渭南市',610000,2),(610502,'临渭区',610500,3),(610521,'华县',610500,3),(610522,'潼关县',610500,3),(610523,'大荔县',610500,3),(610524,'合阳县',610500,3),(610525,'澄城县',610500,3),(610526,'蒲城县',610500,3),(610527,'白水县',610500,3),(610528,'富平县',610500,3),(610581,'韩城市',610500,3),(610582,'华阴市',610500,3),(610600,'延安市',610000,2),(610602,'宝塔区',610600,3),(610621,'延长县',610600,3),(610622,'延川县',610600,3),(610623,'子长县',610600,3),(610624,'安塞县',610600,3),(610625,'志丹县',610600,3),(610626,'吴起县',610600,3),(610627,'甘泉县',610600,3),(610628,'富县',610600,3),(610629,'洛川县',610600,3),(610630,'宜川县',610600,3),(610631,'黄龙县',610600,3),(610632,'黄陵县',610600,3),(610700,'汉中市',610000,2),(610702,'汉台区',610700,3),(610721,'南郑县',610700,3),(610722,'城固县',610700,3),(610723,'洋县',610700,3),(610724,'西乡县',610700,3),(610725,'勉县',610700,3),(610726,'宁强县',610700,3),(610727,'略阳县',610700,3),(610728,'镇巴县',610700,3),(610729,'留坝县',610700,3),(610730,'佛坪县',610700,3),(610800,'榆林市',610000,2),(610802,'榆阳区',610800,3),(610821,'神木县',610800,3),(610822,'府谷县',610800,3),(610823,'横山县',610800,3),(610824,'靖边县',610800,3),(610825,'定边县',610800,3),(610826,'绥德县',610800,3),(610827,'米脂县',610800,3),(610828,'佳县',610800,3),(610829,'吴堡县',610800,3),(610830,'清涧县',610800,3),(610831,'子洲县',610800,3),(610900,'安康市',610000,2),(610902,'汉滨区',610900,3),(610921,'汉阴县',610900,3),(610922,'石泉县',610900,3),(610923,'宁陕县',610900,3),(610924,'紫阳县',610900,3),(610925,'岚皋县',610900,3),(610926,'平利县',610900,3),(610927,'镇坪县',610900,3),(610928,'旬阳县',610900,3),(610929,'白河县',610900,3),(611000,'商洛市',610000,2),(611002,'商州区',611000,3),(611021,'洛南县',611000,3),(611022,'丹凤县',611000,3),(611023,'商南县',611000,3),(611024,'山阳县',611000,3),(611025,'镇安县',611000,3),(611026,'柞水县',611000,3),(620000,'甘肃省',0,1),(620100,'兰州市',620000,2),(620102,'城关区',620100,3),(620103,'七里河区',620100,3),(620104,'西固区',620100,3),(620105,'安宁区',620100,3),(620111,'红古区',620100,3),(620121,'永登县',620100,3),(620122,'皋兰县',620100,3),(620123,'榆中县',620100,3),(620200,'嘉峪关市',620000,2),(620300,'金昌市',620000,2),(620302,'金川区',620300,3),(620321,'永昌县',620300,3),(620400,'白银市',620000,2),(620402,'白银区',620400,3),(620403,'平川区',620400,3),(620421,'靖远县',620400,3),(620422,'会宁县',620400,3),(620423,'景泰县',620400,3),(620500,'天水市',620000,2),(620502,'秦州区',620500,3),(620503,'麦积区',620500,3),(620521,'清水县',620500,3),(620522,'秦安县',620500,3),(620523,'甘谷县',620500,3),(620524,'武山县',620500,3),(620525,'张家川回族自治县',620500,3),(620600,'武威市',620000,2),(620602,'凉州区',620600,3),(620621,'民勤县',620600,3),(620622,'古浪县',620600,3),(620623,'天祝藏族自治县',620600,3),(620700,'张掖市',620000,2),(620702,'甘州区',620700,3),(620721,'肃南裕固族自治县',620700,3),(620722,'民乐县',620700,3),(620723,'临泽县',620700,3),(620724,'高台县',620700,3),(620725,'山丹县',620700,3),(620800,'平凉市',620000,2),(620802,'崆峒区',620800,3),(620821,'泾川县',620800,3),(620822,'灵台县',620800,3),(620823,'崇信县',620800,3),(620824,'华亭县',620800,3),(620825,'庄浪县',620800,3),(620826,'静宁县',620800,3),(620900,'酒泉市',620000,2),(620902,'肃州区',620900,3),(620921,'金塔县',620900,3),(620922,'瓜州县',620900,3),(620923,'肃北蒙古族自治县',620900,3),(620924,'阿克塞哈萨克族自治县',620900,3),(620981,'玉门市',620900,3),(620982,'敦煌市',620900,3),(621000,'庆阳市',620000,2),(621002,'西峰区',621000,3),(621021,'庆城县',621000,3),(621022,'环县',621000,3),(621023,'华池县',621000,3),(621024,'合水县',621000,3),(621025,'正宁县',621000,3),(621026,'宁县',621000,3),(621027,'镇原县',621000,3),(621100,'定西市',620000,2),(621102,'安定区',621100,3),(621121,'通渭县',621100,3),(621122,'陇西县',621100,3),(621123,'渭源县',621100,3),(621124,'临洮县',621100,3),(621125,'漳县',621100,3),(621126,'岷县',621100,3),(621200,'陇南市',620000,2),(621202,'武都区',621200,3),(621221,'成县',621200,3),(621222,'文县',621200,3),(621223,'宕昌县',621200,3),(621224,'康县',621200,3),(621225,'西和县',621200,3),(621226,'礼县',621200,3),(621227,'徽县',621200,3),(621228,'两当县',621200,3),(622900,'临夏回族自治州',620000,2),(622901,'临夏市',622900,3),(622921,'临夏县',622900,3),(622922,'康乐县',622900,3),(622923,'永靖县',622900,3),(622924,'广河县',622900,3),(622925,'和政县',622900,3),(622926,'东乡族自治县',622900,3),(622927,'积石山保安族东乡族撒拉族自治县',622900,3),(623000,'甘南藏族自治州',620000,2),(623001,'合作市',623000,3),(623021,'临潭县',623000,3),(623022,'卓尼县',623000,3),(623023,'舟曲县',623000,3),(623024,'迭部县',623000,3),(623025,'玛曲县',623000,3),(623026,'碌曲县',623000,3),(623027,'夏河县',623000,3),(630000,'青海省',0,1),(630100,'西宁市',630000,2),(630102,'城东区',630100,3),(630103,'城中区',630100,3),(630104,'城西区',630100,3),(630105,'城北区',630100,3),(630121,'大通回族土族自治县',630100,3),(630122,'湟中县',630100,3),(630123,'湟源县',630100,3),(632100,'海东市',630000,2),(632121,'平安县',632100,3),(632122,'民和回族土族自治县',632100,3),(632123,'乐都区',632100,3),(632126,'互助土族自治县',632100,3),(632127,'化隆回族自治县',632100,3),(632128,'循化撒拉族自治县',632100,3),(632200,'海北藏族自治州',630000,2),(632221,'门源回族自治县',632200,3),(632222,'祁连县',632200,3),(632223,'海晏县',632200,3),(632224,'刚察县',632200,3),(632300,'黄南藏族自治州',630000,2),(632321,'同仁县',632300,3),(632322,'尖扎县',632300,3),(632323,'泽库县',632300,3),(632324,'河南蒙古族自治县',632300,3),(632500,'海南藏族自治州',630000,2),(632521,'共和县',632500,3),(632522,'同德县',632500,3),(632523,'贵德县',632500,3),(632524,'兴海县',632500,3),(632525,'贵南县',632500,3),(632600,'果洛藏族自治州',630000,2),(632621,'玛沁县',632600,3),(632622,'班玛县',632600,3),(632623,'甘德县',632600,3),(632624,'达日县',632600,3),(632625,'久治县',632600,3),(632626,'玛多县',632600,3),(632700,'玉树藏族自治州',630000,2),(632721,'玉树市',632700,3),(632722,'杂多县',632700,3),(632723,'称多县',632700,3),(632724,'治多县',632700,3),(632725,'囊谦县',632700,3),(632726,'曲麻莱县',632700,3),(632800,'海西蒙古族藏族自治州',630000,2),(632801,'格尔木市',632800,3),(632802,'德令哈市',632800,3),(632821,'乌兰县',632800,3),(632822,'都兰县',632800,3),(632823,'天峻县',632800,3),(640000,'宁夏回族自治区',0,1),(640100,'银川市',640000,2),(640104,'兴庆区',640100,3),(640105,'西夏区',640100,3),(640106,'金凤区',640100,3),(640121,'永宁县',640100,3),(640122,'贺兰县',640100,3),(640181,'灵武市',640100,3),(640200,'石嘴山市',640000,2),(640202,'大武口区',640200,3),(640205,'惠农区',640200,3),(640221,'平罗县',640200,3),(640300,'吴忠市',640000,2),(640302,'利通区',640300,3),(640303,'红寺堡区',640300,3),(640323,'盐池县',640300,3),(640324,'同心县',640300,3),(640381,'青铜峡市',640300,3),(640400,'固原市',640000,2),(640402,'原州区',640400,3),(640422,'西吉县',640400,3),(640423,'隆德县',640400,3),(640424,'泾源县',640400,3),(640425,'彭阳县',640400,3),(640500,'中卫市',640000,2),(640502,'沙坡头区',640500,3),(640521,'中宁县',640500,3),(640522,'海原县',640500,3),(650000,'新疆维吾尔自治区',0,1),(650100,'乌鲁木齐市',650000,2),(650102,'天山区',650100,3),(650103,'沙依巴克区',650100,3),(650104,'新市区',650100,3),(650105,'水磨沟区',650100,3),(650106,'头屯河区',650100,3),(650107,'达坂城区',650100,3),(650109,'米东区',650100,3),(650121,'乌鲁木齐县',650100,3),(650200,'克拉玛依市',650000,2),(650202,'独山子区',650200,3),(650203,'克拉玛依区',650200,3),(650204,'白碱滩区',650200,3),(650205,'乌尔禾区',650200,3),(652100,'吐鲁番地区',650000,2),(652101,'吐鲁番市',652100,3),(652122,'鄯善县',652100,3),(652123,'托克逊县',652100,3),(652200,'哈密地区',650000,2),(652201,'哈密市',652200,3),(652222,'巴里坤哈萨克自治县',652200,3),(652223,'伊吾县',652200,3),(652300,'昌吉回族自治州',650000,2),(652301,'昌吉市',652300,3),(652302,'阜康市',652300,3),(652323,'呼图壁县',652300,3),(652324,'玛纳斯县',652300,3),(652325,'奇台县',652300,3),(652327,'吉木萨尔县',652300,3),(652328,'木垒哈萨克自治县',652300,3),(652700,'博尔塔拉蒙古自治州',650000,2),(652701,'博乐市',652700,3),(652702,'阿拉山口市',652700,3),(652722,'精河县',652700,3),(652723,'温泉县',652700,3),(652800,'巴音郭楞蒙古自治州',650000,2),(652801,'库尔勒市',652800,3),(652822,'轮台县',652800,3),(652823,'尉犁县',652800,3),(652824,'若羌县',652800,3),(652825,'且末县',652800,3),(652826,'焉耆回族自治县',652800,3),(652827,'和静县',652800,3),(652828,'和硕县',652800,3),(652829,'博湖县',652800,3),(652900,'阿克苏地区',650000,2),(652901,'阿克苏市',652900,3),(652922,'温宿县',652900,3),(652923,'库车县',652900,3),(652924,'沙雅县',652900,3),(652925,'新和县',652900,3),(652926,'拜城县',652900,3),(652927,'乌什县',652900,3),(652928,'阿瓦提县',652900,3),(652929,'柯坪县',652900,3),(653000,'克孜勒苏柯尔克孜自治州',650000,2),(653001,'阿图什市',653000,3),(653022,'阿克陶县',653000,3),(653023,'阿合奇县',653000,3),(653024,'乌恰县',653000,3),(653100,'喀什地区',650000,2),(653101,'喀什市',653100,3),(653121,'疏附县',653100,3),(653122,'疏勒县',653100,3),(653123,'英吉沙县',653100,3),(653124,'泽普县',653100,3),(653125,'莎车县',653100,3),(653126,'叶城县',653100,3),(653127,'麦盖提县',653100,3),(653128,'岳普湖县',653100,3),(653129,'伽师县',653100,3),(653130,'巴楚县',653100,3),(653131,'塔什库尔干塔吉克自治县',653100,3),(653200,'和田地区',650000,2),(653201,'和田市',653200,3),(653221,'和田县',653200,3),(653222,'墨玉县',653200,3),(653223,'皮山县',653200,3),(653224,'洛浦县',653200,3),(653225,'策勒县',653200,3),(653226,'于田县',653200,3),(653227,'民丰县',653200,3),(654000,'伊犁哈萨克自治州',650000,2),(654002,'伊宁市',654000,3),(654003,'奎屯市',654000,3),(654021,'伊宁县',654000,3),(654022,'察布查尔锡伯自治县',654000,3),(654023,'霍城县',654000,3),(654024,'巩留县',654000,3),(654025,'新源县',654000,3),(654026,'昭苏县',654000,3),(654027,'特克斯县',654000,3),(654028,'尼勒克县',654000,3),(654200,'塔城地区',650000,2),(654201,'塔城市',654200,3),(654202,'乌苏市',654200,3),(654221,'额敏县',654200,3),(654223,'沙湾县',654200,3),(654224,'托里县',654200,3),(654225,'裕民县',654200,3),(654226,'和布克赛尔蒙古自治县',654200,3),(654300,'阿勒泰地区',650000,2),(654301,'阿勒泰市',654300,3),(654321,'布尔津县',654300,3),(654322,'富蕴县',654300,3),(654323,'福海县',654300,3),(654324,'哈巴河县',654300,3),(654325,'青河县',654300,3),(654326,'吉木乃县',654300,3),(659001,'石河子市',650000,2),(659002,'阿拉尔市',650000,2),(659003,'图木舒克市',650000,2),(659004,'五家渠市',650000,2),(710000,'台湾',0,1),(710100,'台北市',710000,2),(710101,'中正区',710100,3),(710102,'大同区',710100,3),(710103,'中山区',710100,3),(710104,'松山区',710100,3),(710105,'大安区',710100,3),(710106,'万华区',710100,3),(710107,'信义区',710100,3),(710108,'士林区',710100,3),(710109,'北投区',710100,3),(710110,'内湖区',710100,3),(710111,'南港区',710100,3),(710112,'文山区',710100,3),(710200,'高雄市',710000,2),(710201,'新兴区',710200,3),(710202,'前金区',710200,3),(710203,'芩雅区',710200,3),(710204,'盐埕区',710200,3),(710205,'鼓山区',710200,3),(710206,'旗津区',710200,3),(710207,'前镇区',710200,3),(710208,'三民区',710200,3),(710209,'左营区',710200,3),(710210,'楠梓区',710200,3),(710211,'小港区',710200,3),(710241,'苓雅区',710200,3),(710242,'仁武区',710200,3),(710243,'大社区',710200,3),(710244,'冈山区',710200,3),(710245,'路竹区',710200,3),(710246,'阿莲区',710200,3),(710247,'田寮区',710200,3),(710248,'燕巢区',710200,3),(710249,'桥头区',710200,3),(710250,'梓官区',710200,3),(710251,'弥陀区',710200,3),(710252,'永安区',710200,3),(710253,'湖内区',710200,3),(710254,'凤山区',710200,3),(710255,'大寮区',710200,3),(710256,'林园区',710200,3),(710257,'鸟松区',710200,3),(710258,'大树区',710200,3),(710259,'旗山区',710200,3),(710260,'美浓区',710200,3),(710261,'六龟区',710200,3),(710262,'内门区',710200,3),(710263,'杉林区',710200,3),(710264,'甲仙区',710200,3),(710265,'桃源区',710200,3),(710266,'那玛夏区',710200,3),(710267,'茂林区',710200,3),(710268,'茄萣区',710200,3),(710300,'台南市',710000,2),(710301,'中西区',710300,3),(710302,'东区',710300,3),(710303,'南区',710300,3),(710304,'北区',710300,3),(710305,'安平区',710300,3),(710306,'安南区',710300,3),(710339,'永康区',710300,3),(710340,'归仁区',710300,3),(710341,'新化区',710300,3),(710342,'左镇区',710300,3),(710343,'玉井区',710300,3),(710344,'楠西区',710300,3),(710345,'南化区',710300,3),(710346,'仁德区',710300,3),(710347,'关庙区',710300,3),(710348,'龙崎区',710300,3),(710349,'官田区',710300,3),(710350,'麻豆区',710300,3),(710351,'佳里区',710300,3),(710352,'西港区',710300,3),(710353,'七股区',710300,3),(710354,'将军区',710300,3),(710355,'学甲区',710300,3),(710356,'北门区',710300,3),(710357,'新营区',710300,3),(710358,'后壁区',710300,3),(710359,'白河区',710300,3),(710360,'东山区',710300,3),(710361,'六甲区',710300,3),(710362,'下营区',710300,3),(710363,'柳营区',710300,3),(710364,'盐水区',710300,3),(710365,'善化区',710300,3),(710366,'大内区',710300,3),(710367,'山上区',710300,3),(710368,'新市区',710300,3),(710369,'安定区',710300,3),(710400,'台中市',710000,2),(710401,'中区',710400,3),(710402,'东区',710400,3),(710403,'南区',710400,3),(710404,'西区',710400,3),(710405,'北区',710400,3),(710406,'北屯区',710400,3),(710407,'西屯区',710400,3),(710408,'南屯区',710400,3),(710431,'太平区',710400,3),(710432,'大里区',710400,3),(710433,'雾峰区',710400,3),(710434,'乌日区',710400,3),(710435,'丰原区',710400,3),(710436,'后里区',710400,3),(710437,'石冈区',710400,3),(710438,'东势区',710400,3),(710439,'和平区',710400,3),(710440,'新社区',710400,3),(710441,'潭子区',710400,3),(710442,'大雅区',710400,3),(710443,'神冈区',710400,3),(710444,'大肚区',710400,3),(710445,'沙鹿区',710400,3),(710446,'龙井区',710400,3),(710447,'梧栖区',710400,3),(710448,'清水区',710400,3),(710449,'大甲区',710400,3),(710450,'外埔区',710400,3),(710451,'大安区',710400,3),(710500,'金门县',710000,2),(710507,'金沙镇',710500,3),(710508,'金湖镇',710500,3),(710509,'金宁乡',710500,3),(710510,'金城镇',710500,3),(710511,'烈屿乡',710500,3),(710512,'乌坵乡',710500,3),(710600,'南投县',710000,2),(710614,'南投市',710600,3),(710615,'中寮乡',710600,3),(710616,'草屯镇',710600,3),(710617,'国姓乡',710600,3),(710618,'埔里镇',710600,3),(710619,'仁爱乡',710600,3),(710620,'名间乡',710600,3),(710621,'集集镇',710600,3),(710622,'水里乡',710600,3),(710623,'鱼池乡',710600,3),(710624,'信义乡',710600,3),(710625,'竹山镇',710600,3),(710626,'鹿谷乡',710600,3),(710700,'基隆市',710000,2),(710701,'仁爱区',710700,3),(710702,'信义区',710700,3),(710703,'中正区',710700,3),(710704,'中山区',710700,3),(710705,'安乐区',710700,3),(710706,'暖暖区',710700,3),(710707,'七堵区',710700,3),(710800,'新竹市',710000,2),(710801,'东区',710800,3),(710802,'北区',710800,3),(710803,'香山区',710800,3),(710900,'嘉义市',710000,2),(710901,'东区',710900,3),(710902,'西区',710900,3),(711100,'新北市',710000,2),(711130,'万里区',711100,3),(711131,'金山区',711100,3),(711132,'板桥区',711100,3),(711133,'汐止区',711100,3),(711134,'深坑区',711100,3),(711135,'石碇区',711100,3),(711136,'瑞芳区',711100,3),(711137,'平溪区',711100,3),(711138,'双溪区',711100,3),(711139,'贡寮区',711100,3),(711140,'新店区',711100,3),(711141,'坪林区',711100,3),(711142,'乌来区',711100,3),(711143,'永和区',711100,3),(711144,'中和区',711100,3),(711145,'土城区',711100,3),(711146,'三峡区',711100,3),(711147,'树林区',711100,3),(711148,'莺歌区',711100,3),(711149,'三重区',711100,3),(711150,'新庄区',711100,3),(711151,'泰山区',711100,3),(711152,'林口区',711100,3),(711153,'芦洲区',711100,3),(711154,'五股区',711100,3),(711155,'八里区',711100,3),(711156,'淡水区',711100,3),(711157,'三芝区',711100,3),(711158,'石门区',711100,3),(711200,'宜兰县',710000,2),(711214,'宜兰市',711200,3),(711215,'头城镇',711200,3),(711216,'礁溪乡',711200,3),(711217,'壮围乡',711200,3),(711218,'员山乡',711200,3),(711219,'罗东镇',711200,3),(711220,'三星乡',711200,3),(711221,'大同乡',711200,3),(711222,'五结乡',711200,3),(711223,'冬山乡',711200,3),(711224,'苏澳镇',711200,3),(711225,'南澳乡',711200,3),(711226,'钓鱼台',711200,3),(711300,'新竹县',710000,2),(711314,'竹北市',711300,3),(711315,'湖口乡',711300,3),(711316,'新丰乡',711300,3),(711317,'新埔镇',711300,3),(711318,'关西镇',711300,3),(711319,'芎林乡',711300,3),(711320,'宝山乡',711300,3),(711321,'竹东镇',711300,3),(711322,'五峰乡',711300,3),(711323,'横山乡',711300,3),(711324,'尖石乡',711300,3),(711325,'北埔乡',711300,3),(711326,'峨眉乡',711300,3),(711400,'桃园县',710000,2),(711414,'中坜市',711400,3),(711415,'平镇市',711400,3),(711416,'龙潭乡',711400,3),(711417,'杨梅市',711400,3),(711418,'新屋乡',711400,3),(711419,'观音乡',711400,3),(711420,'桃园市',711400,3),(711421,'龟山乡',711400,3),(711422,'八德市',711400,3),(711423,'大溪镇',711400,3),(711424,'复兴乡',711400,3),(711425,'大园乡',711400,3),(711426,'芦竹乡',711400,3),(711500,'苗栗县',710000,2),(711519,'竹南镇',711500,3),(711520,'头份镇',711500,3),(711521,'三湾乡',711500,3),(711522,'南庄乡',711500,3),(711523,'狮潭乡',711500,3),(711524,'后龙镇',711500,3),(711525,'通霄镇',711500,3),(711526,'苑里镇',711500,3),(711527,'苗栗市',711500,3),(711528,'造桥乡',711500,3),(711529,'头屋乡',711500,3),(711530,'公馆乡',711500,3),(711531,'大湖乡',711500,3),(711532,'泰安乡',711500,3),(711533,'铜锣乡',711500,3),(711534,'三义乡',711500,3),(711535,'西湖乡',711500,3),(711536,'卓兰镇',711500,3),(711700,'彰化县',710000,2),(711727,'彰化市',711700,3),(711728,'芬园乡',711700,3),(711729,'花坛乡',711700,3),(711730,'秀水乡',711700,3),(711731,'鹿港镇',711700,3),(711732,'福兴乡',711700,3),(711733,'线西乡',711700,3),(711734,'和美镇',711700,3),(711735,'伸港乡',711700,3),(711736,'员林镇',711700,3),(711737,'社头乡',711700,3),(711738,'永靖乡',711700,3),(711739,'埔心乡',711700,3),(711740,'溪湖镇',711700,3),(711741,'大村乡',711700,3),(711742,'埔盐乡',711700,3),(711743,'田中镇',711700,3),(711744,'北斗镇',711700,3),(711745,'田尾乡',711700,3),(711746,'埤头乡',711700,3),(711747,'溪州乡',711700,3),(711748,'竹塘乡',711700,3),(711749,'二林镇',711700,3),(711750,'大城乡',711700,3),(711751,'芳苑乡',711700,3),(711752,'二水乡',711700,3),(711900,'嘉义县',710000,2),(711919,'番路乡',711900,3),(711920,'梅山乡',711900,3),(711921,'竹崎乡',711900,3),(711922,'阿里山乡',711900,3),(711923,'中埔乡',711900,3),(711924,'大埔乡',711900,3),(711925,'水上乡',711900,3),(711926,'鹿草乡',711900,3),(711927,'太保市',711900,3),(711928,'朴子市',711900,3),(711929,'东石乡',711900,3),(711930,'六脚乡',711900,3),(711931,'新港乡',711900,3),(711932,'民雄乡',711900,3),(711933,'大林镇',711900,3),(711934,'溪口乡',711900,3),(711935,'义竹乡',711900,3),(711936,'布袋镇',711900,3),(712100,'云林县',710000,2),(712121,'斗南镇',712100,3),(712122,'大埤乡',712100,3),(712123,'虎尾镇',712100,3),(712124,'土库镇',712100,3),(712125,'褒忠乡',712100,3),(712126,'东势乡',712100,3),(712127,'台西乡',712100,3),(712128,'仑背乡',712100,3),(712129,'麦寮乡',712100,3),(712130,'斗六市',712100,3),(712131,'林内乡',712100,3),(712132,'古坑乡',712100,3),(712133,'莿桐乡',712100,3),(712134,'西螺镇',712100,3),(712135,'二仑乡',712100,3),(712136,'北港镇',712100,3),(712137,'水林乡',712100,3),(712138,'口湖乡',712100,3),(712139,'四湖乡',712100,3),(712140,'元长乡',712100,3),(712400,'屏东县',710000,2),(712434,'屏东市',712400,3),(712435,'三地门乡',712400,3),(712436,'雾台乡',712400,3),(712437,'玛家乡',712400,3),(712438,'九如乡',712400,3),(712439,'里港乡',712400,3),(712440,'高树乡',712400,3),(712441,'盐埔乡',712400,3),(712442,'长治乡',712400,3),(712443,'麟洛乡',712400,3),(712444,'竹田乡',712400,3),(712445,'内埔乡',712400,3),(712446,'万丹乡',712400,3),(712447,'潮州镇',712400,3),(712448,'泰武乡',712400,3),(712449,'来义乡',712400,3),(712450,'万峦乡',712400,3),(712451,'崁顶乡',712400,3),(712452,'新埤乡',712400,3),(712453,'南州乡',712400,3),(712454,'林边乡',712400,3),(712455,'东港镇',712400,3),(712456,'琉球乡',712400,3),(712457,'佳冬乡',712400,3),(712458,'新园乡',712400,3),(712459,'枋寮乡',712400,3),(712460,'枋山乡',712400,3),(712461,'春日乡',712400,3),(712462,'狮子乡',712400,3),(712463,'车城乡',712400,3),(712464,'牡丹乡',712400,3),(712465,'恒春镇',712400,3),(712466,'满州乡',712400,3),(712500,'台东县',710000,2),(712517,'台东市',712500,3),(712518,'绿岛乡',712500,3),(712519,'兰屿乡',712500,3),(712520,'延平乡',712500,3),(712521,'卑南乡',712500,3),(712522,'鹿野乡',712500,3),(712523,'关山镇',712500,3),(712524,'海端乡',712500,3),(712525,'池上乡',712500,3),(712526,'东河乡',712500,3),(712527,'成功镇',712500,3),(712528,'长滨乡',712500,3),(712529,'金峰乡',712500,3),(712530,'大武乡',712500,3),(712531,'达仁乡',712500,3),(712532,'太麻里乡',712500,3),(712600,'花莲县',710000,2),(712615,'花莲市',712600,3),(712616,'新城乡',712600,3),(712617,'太鲁阁',712600,3),(712618,'秀林乡',712600,3),(712619,'吉安乡',712600,3),(712620,'寿丰乡',712600,3),(712621,'凤林镇',712600,3),(712622,'光复乡',712600,3),(712623,'丰滨乡',712600,3),(712624,'瑞穗乡',712600,3),(712625,'万荣乡',712600,3),(712626,'玉里镇',712600,3),(712627,'卓溪乡',712600,3),(712628,'富里乡',712600,3),(712700,'澎湖县',710000,2),(712707,'马公市',712700,3),(712708,'西屿乡',712700,3),(712709,'望安乡',712700,3),(712710,'七美乡',712700,3),(712711,'白沙乡',712700,3),(712712,'湖西乡',712700,3),(712800,'连江县',710000,2),(712805,'南竿乡',712800,3),(712806,'北竿乡',712800,3),(712807,'莒光乡',712800,3),(712808,'东引乡',712800,3),(810000,'香港特别行政区',0,1),(810100,'香港岛',659004536,3),(810101,'中西区',810100,3),(810102,'湾仔',810100,3),(810103,'东区',810100,3),(810104,'南区',810100,3),(810200,'九龙',659004536,3),(810201,'九龙城区',810200,3),(810202,'油尖旺区',810200,3),(810203,'深水埗区',810200,3),(810204,'黄大仙区',810200,3),(810205,'观塘区',810200,3),(810300,'新界',659004536,3),(810301,'北区',810300,3),(810302,'大埔区',810300,3),(810303,'沙田区',810300,3),(810304,'西贡区',810300,3),(810305,'元朗区',810300,3),(810306,'屯门区',810300,3),(810307,'荃湾区',810300,3),(810308,'葵青区',810300,3),(810309,'离岛区',810300,3),(820000,'澳门特别行政区',0,1),(820100,'澳门半岛',659004537,3),(820200,'离岛',659004537,3),(659004504,'金海湖新区',522400,3),(659004505,'东沙群岛',442101,3),(659004506,'三亚市',460200,3),(659004507,'三沙市',460300,3),(659004508,'五指山市',469001,3),(659004509,'琼海市',469002,3),(659004510,'儋州市',469003,3),(659004511,'文昌市',469005,3),(659004512,'万宁市',469006,3),(659004513,'东方市',469007,3),(659004514,'定安县',469025,3),(659004515,'屯昌县',469026,3),(659004516,'澄迈县',469027,3),(659004517,'临高县',469028,3),(659004518,'白沙黎族自治县',469030,3),(659004519,'昌江黎族自治县',469031,3),(659004520,'乐东黎族自治县',469033,3),(659004521,'陵水黎族自治县',469034,3),(659004522,'保亭黎族苗族自治县',469035,3),(659004523,'琼中黎族苗族自治县',469036,3),(659004524,'东莞市',441900,3),(659004525,'中山市',442000,3),(659004526,'济源市',410881,3),(659004527,'仙桃市',429004,3),(659004528,'潜江市',429005,3),(659004529,'天门市',429006,3),(659004530,'神农架林区',429021,3),(659004531,'嘉峪关市',620200,3),(659004532,'石河子市',659001,3),(659004533,'阿拉尔市',659002,3),(659004534,'图木舒克市',659003,3),(659004535,'五家渠市',659004,3),(659004536,'香港特别行政区',810000,2),(659004537,'澳门特别行政区',820000,2);
/*!40000 ALTER TABLE `ims_yz_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_admin_operation_log`
--

DROP TABLE IF EXISTS `ims_yz_admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_uid` int(11) DEFAULT NULL COMMENT '管理员',
  `table_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '表名',
  `table_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '表名',
  `before` text COLLATE utf8mb4_unicode_ci COMMENT '改变前',
  `after` text COLLATE utf8mb4_unicode_ci COMMENT '改变后',
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '操作者ip',
  `before_identify` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '修改前标识',
  `after_identify` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改后标识',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_admin_operation_log`
--

LOCK TABLES `ims_yz_admin_operation_log` WRITE;
/*!40000 ALTER TABLE `ims_yz_admin_operation_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_adv`
--

DROP TABLE IF EXISTS `ims_yz_adv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_adv` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `advs` text COLLATE utf8mb4_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_adv`
--

LOCK TABLES `ims_yz_adv` WRITE;
/*!40000 ALTER TABLE `ims_yz_adv` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_adv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_balance`
--

DROP TABLE IF EXISTS `ims_yz_balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_balance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `old_money` decimal(14,2) DEFAULT NULL,
  `change_money` decimal(14,2) NOT NULL,
  `new_money` decimal(14,2) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `service_type` tinyint(11) NOT NULL,
  `serial_number` varchar(45) NOT NULL DEFAULT '',
  `operator` int(11) NOT NULL,
  `operator_id` varchar(45) NOT NULL DEFAULT '',
  `remark` varchar(200) NOT NULL DEFAULT '',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_balance`
--

LOCK TABLES `ims_yz_balance` WRITE;
/*!40000 ALTER TABLE `ims_yz_balance` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_balance_recharge`
--

DROP TABLE IF EXISTS `ims_yz_balance_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_balance_recharge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `old_money` decimal(14,2) DEFAULT NULL,
  `money` decimal(14,2) DEFAULT NULL,
  `new_money` decimal(14,2) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `ordersn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_balance_recharge`
--

LOCK TABLES `ims_yz_balance_recharge` WRITE;
/*!40000 ALTER TABLE `ims_yz_balance_recharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_balance_recharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_balance_recharge_activity`
--

DROP TABLE IF EXISTS `ims_yz_balance_recharge_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_balance_recharge_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `partake_count` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_balance_recharge_activity`
--

LOCK TABLES `ims_yz_balance_recharge_activity` WRITE;
/*!40000 ALTER TABLE `ims_yz_balance_recharge_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_balance_recharge_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_balance_transfer`
--

DROP TABLE IF EXISTS `ims_yz_balance_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_balance_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `transferor` int(11) DEFAULT NULL,
  `recipient` int(11) DEFAULT NULL,
  `money` decimal(14,2) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `updated_at` int(11) NOT NULL,
  `order_sn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_balance_transfer`
--

LOCK TABLES `ims_yz_balance_transfer` WRITE;
/*!40000 ALTER TABLE `ims_yz_balance_transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_balance_transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_brand`
--

DROP TABLE IF EXISTS `ims_yz_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `desc` text COLLATE utf8mb4_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `is_recommend` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_brand`
--

LOCK TABLES `ims_yz_brand` WRITE;
/*!40000 ALTER TABLE `ims_yz_brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_category`
--

DROP TABLE IF EXISTS `ims_yz_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_order` int(11) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  `is_home` tinyint(1) DEFAULT '0',
  `adv_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `adv_url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `level` tinyint(1) DEFAULT '0',
  `advimg_pc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `advurl_pc` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `plugin_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_parentid` (`parent_id`),
  KEY `idx_displayorder` (`display_order`),
  KEY `idx_enabled` (`enabled`),
  KEY `idx_ishome` (`is_home`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_category`
--

LOCK TABLES `ims_yz_category` WRITE;
/*!40000 ALTER TABLE `ims_yz_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_comment`
--

DROP TABLE IF EXISTS `ims_yz_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) DEFAULT '0',
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) DEFAULT '0',
  `nick_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `head_img_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `level` tinyint(1) DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `comment_id` int(11) DEFAULT '0',
  `reply_id` int(11) DEFAULT '0',
  `reply_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(3) DEFAULT '1',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_orderid` (`order_id`),
  KEY `idx_goodsid` (`goods_id`),
  KEY `idx_openid` (`uid`),
  KEY `idx_createtime` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_comment`
--

LOCK TABLES `ims_yz_comment` WRITE;
/*!40000 ALTER TABLE `ims_yz_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_coupon`
--

DROP TABLE IF EXISTS `ims_yz_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `cat_id` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `get_type` tinyint(3) DEFAULT '0',
  `level_limit` int(11) NOT NULL DEFAULT '0',
  `get_max` int(11) DEFAULT '0',
  `use_type` tinyint(3) unsigned DEFAULT '0',
  `return_type` tinyint(3) DEFAULT '0',
  `bgcolor` varchar(255) DEFAULT '',
  `enough` int(11) NOT NULL DEFAULT '0',
  `coupon_type` tinyint(3) DEFAULT '0',
  `time_limit` tinyint(3) DEFAULT '0',
  `time_days` int(11) DEFAULT '0',
  `time_start` int(11) DEFAULT '0',
  `time_end` int(11) DEFAULT '0',
  `coupon_method` tinyint(4) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT '0.00',
  `deduct` decimal(10,2) DEFAULT '0.00',
  `back_type` tinyint(3) DEFAULT '0',
  `back_money` varchar(50) DEFAULT '',
  `back_credit` varchar(50) DEFAULT '',
  `back_redpack` varchar(50) DEFAULT '',
  `back_when` tinyint(3) DEFAULT '0',
  `thumb` varchar(255) DEFAULT '',
  `desc` text,
  `total` int(11) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `money` decimal(10,2) DEFAULT '0.00',
  `resp_desc` text,
  `resp_thumb` varchar(255) DEFAULT '',
  `resp_title` varchar(255) DEFAULT '',
  `resp_url` varchar(255) DEFAULT '',
  `credit` int(11) DEFAULT '0',
  `usecredit2` tinyint(3) DEFAULT '0',
  `remark` varchar(1000) DEFAULT '',
  `descnoset` tinyint(3) DEFAULT '0',
  `display_order` int(11) DEFAULT '0',
  `supplier_uid` int(11) DEFAULT '0',
  `getcashier` tinyint(1) NOT NULL DEFAULT '0',
  `cashiersids` text,
  `cashiersnames` text,
  `category_ids` text,
  `categorynames` text,
  `goods_names` text,
  `goods_ids` text,
  `storeids` text,
  `storenames` text,
  `getstore` tinyint(1) NOT NULL DEFAULT '0',
  `getsupplier` tinyint(1) DEFAULT '0',
  `supplierids` text,
  `suppliernames` text,
  `createtime` int(11) DEFAULT '0',
  `created_at` int(10) unsigned DEFAULT NULL,
  `updated_at` int(10) unsigned DEFAULT NULL,
  `deleted_at` int(10) unsigned DEFAULT NULL,
  `is_complex` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_catid` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_coupon`
--

LOCK TABLES `ims_yz_coupon` WRITE;
/*!40000 ALTER TABLE `ims_yz_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_coupon_category`
--

DROP TABLE IF EXISTS `ims_yz_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_coupon_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `display_order` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_displayorder` (`display_order`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_coupon_category`
--

LOCK TABLES `ims_yz_coupon_category` WRITE;
/*!40000 ALTER TABLE `ims_yz_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_coupon_log`
--

DROP TABLE IF EXISTS `ims_yz_coupon_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_coupon_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `logno` varchar(255) DEFAULT '',
  `member_id` varchar(255) DEFAULT '',
  `couponid` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `paystatus` tinyint(3) DEFAULT '0',
  `creditstatus` tinyint(3) DEFAULT '0',
  `createtime` int(11) DEFAULT '0',
  `paytype` tinyint(3) DEFAULT '0',
  `getfrom` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_couponid` (`couponid`),
  KEY `idx_status` (`status`),
  KEY `idx_paystatus` (`paystatus`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_getfrom` (`getfrom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_coupon_log`
--

LOCK TABLES `ims_yz_coupon_log` WRITE;
/*!40000 ALTER TABLE `ims_yz_coupon_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_coupon_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_deduction`
--

DROP TABLE IF EXISTS `ims_yz_deduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_deduction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '抵扣名称',
  `enable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '抵扣开启',
  `created_at` int(11) DEFAULT NULL,
  `update_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_deduction`
--

LOCK TABLES `ims_yz_deduction` WRITE;
/*!40000 ALTER TABLE `ims_yz_deduction` DISABLE KEYS */;
INSERT INTO `ims_yz_deduction` VALUES (1,'love',1,NULL,NULL,NULL),(2,'point',1,NULL,NULL,NULL),(3,'coin',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ims_yz_deduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_dispatch`
--

DROP TABLE IF EXISTS `ims_yz_dispatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_dispatch` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `dispatch_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '配送模板名称',
  `display_order` int(11) DEFAULT NULL COMMENT '排序',
  `enabled` tinyint(3) DEFAULT NULL COMMENT '是否显示（1：是；0：否）',
  `is_default` tinyint(3) DEFAULT NULL COMMENT '是否默认模板（1：是；0：否）',
  `calculate_type` tinyint(3) DEFAULT NULL COMMENT '计费方式',
  `areas` text COLLATE utf8mb4_unicode_ci COMMENT '配送区域',
  `first_weight` int(11) DEFAULT NULL COMMENT '首重克数',
  `another_weight` int(11) DEFAULT NULL COMMENT '续重克数',
  `first_weight_price` decimal(14,2) DEFAULT NULL COMMENT '首重价格',
  `another_weight_price` decimal(14,2) DEFAULT NULL COMMENT '续重价格',
  `first_piece` int(11) DEFAULT NULL COMMENT '首件个数',
  `another_piece` int(11) DEFAULT NULL COMMENT '续件个数',
  `first_piece_price` int(11) DEFAULT NULL COMMENT '首件价格',
  `another_piece_price` int(11) DEFAULT NULL COMMENT '续件价格',
  `weight_data` longtext COLLATE utf8mb4_unicode_ci COMMENT '按重量计费数据',
  `piece_data` longtext COLLATE utf8mb4_unicode_ci COMMENT '按数量计费数据',
  `is_plugin` tinyint(3) DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_dispatch`
--

LOCK TABLES `ims_yz_dispatch` WRITE;
/*!40000 ALTER TABLE `ims_yz_dispatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_dispatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_dispatch_type`
--

DROP TABLE IF EXISTS `ims_yz_dispatch_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_dispatch_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `plugin` int(11) NOT NULL,
  `need_send` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_dispatch_type`
--

LOCK TABLES `ims_yz_dispatch_type` WRITE;
/*!40000 ALTER TABLE `ims_yz_dispatch_type` DISABLE KEYS */;
INSERT INTO `ims_yz_dispatch_type` VALUES (1,'快递',0,1),(2,'门店自提',0,0),(3,'门店配送',0,1);
/*!40000 ALTER TABLE `ims_yz_dispatch_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods`
--

DROP TABLE IF EXISTS `ims_yz_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `brand_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `display_order` int(11) DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `thumb_url` text,
  `sku` varchar(5) DEFAULT '',
  `description` varchar(1000) DEFAULT '',
  `content` longtext,
  `goods_sn` varchar(50) DEFAULT '',
  `product_sn` varchar(50) DEFAULT '',
  `market_price` decimal(14,2) DEFAULT '0.00',
  `price` decimal(14,2) NOT NULL DEFAULT '0.00',
  `cost_price` decimal(14,2) DEFAULT '0.00',
  `stock` int(10) NOT NULL DEFAULT '0',
  `reduce_stock_method` int(11) DEFAULT '0',
  `show_sales` int(11) DEFAULT '0',
  `real_sales` int(11) DEFAULT '0',
  `weight` decimal(10,2) DEFAULT '0.00',
  `has_option` int(11) DEFAULT '0',
  `is_new` tinyint(1) DEFAULT '0',
  `is_hot` tinyint(1) DEFAULT '0',
  `is_discount` tinyint(1) DEFAULT '0',
  `is_recommand` tinyint(1) DEFAULT '0',
  `is_comment` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `comment_num` int(11) NOT NULL DEFAULT '0',
  `is_plugin` int(11) NOT NULL DEFAULT '0',
  `plugin_id` int(11) NOT NULL DEFAULT '0',
  `virtual_sales` int(11) DEFAULT '0',
  PRIMARY KEY (`id`,`is_deleted`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_isnew` (`is_new`),
  KEY `idx_ishot` (`is_hot`),
  KEY `idx_isdiscount` (`is_discount`),
  KEY `idx_isrecommand` (`is_recommand`),
  KEY `idx_iscomment` (`is_comment`),
  KEY `idx_deleted` (`is_deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods`
--

LOCK TABLES `ims_yz_goods` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_area`
--

DROP TABLE IF EXISTS `ims_yz_goods_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_goodid` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品与商品区域插件关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_area`
--

LOCK TABLES `ims_yz_goods_area` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_bonus`
--

DROP TABLE IF EXISTS `ims_yz_goods_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_bonus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `bonus_money` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_good_id` (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品与分红关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_bonus`
--

LOCK TABLES `ims_yz_goods_bonus` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_bonus` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_category`
--

DROP TABLE IF EXISTS `ims_yz_goods_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `category_ids` varchar(255) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_category`
--

LOCK TABLES `ims_yz_goods_category` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_coupon`
--

DROP TABLE IF EXISTS `ims_yz_goods_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `is_give` tinyint(1) DEFAULT NULL,
  `coupon` text COLLATE utf8mb4_unicode_ci,
  `send_type` tinyint(1) DEFAULT NULL COMMENT '发送时间',
  `send_num` int(11) DEFAULT NULL COMMENT '发放次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_coupon`
--

LOCK TABLES `ims_yz_goods_coupon` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_coupon_queue`
--

DROP TABLE IF EXISTS `ims_yz_goods_coupon_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_coupon_queue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `uid` int(11) DEFAULT NULL COMMENT '会员ID',
  `coupon_id` int(11) DEFAULT NULL COMMENT '优惠券ID',
  `send_num` int(11) DEFAULT NULL COMMENT '发放数量',
  `end_send_num` int(11) DEFAULT NULL COMMENT '已发放',
  `status` int(11) DEFAULT NULL COMMENT '状态 0 ：未完成 1：已完成',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_coupon_queue`
--

LOCK TABLES `ims_yz_goods_coupon_queue` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_coupon_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_coupon_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_discount`
--

DROP TABLE IF EXISTS `ims_yz_goods_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `level_discount_type` tinyint(1) NOT NULL,
  `discount_method` tinyint(1) NOT NULL,
  `level_id` int(11) NOT NULL,
  `discount_value` decimal(14,2) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_goodid` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_discount`
--

LOCK TABLES `ims_yz_goods_discount` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_discount_detail`
--

DROP TABLE IF EXISTS `ims_yz_goods_discount_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_discount_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_id` int(11) NOT NULL,
  `level_id` int(11) DEFAULT NULL,
  `discount` decimal(3,2) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_discountid` (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品折扣与商品折扣明细关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_discount_detail`
--

LOCK TABLES `ims_yz_goods_discount_detail` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_discount_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_discount_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_dispatch`
--

DROP TABLE IF EXISTS `ims_yz_goods_dispatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_dispatch` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `dispatch_type` tinyint(1) NOT NULL DEFAULT '1',
  `dispatch_price` int(11) DEFAULT '0',
  `dispatch_id` int(11) DEFAULT NULL,
  `is_cod` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_good_id` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_dispatch`
--

LOCK TABLES `ims_yz_goods_dispatch` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_dispatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_dispatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_div_from`
--

DROP TABLE IF EXISTS `ims_yz_goods_div_from`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_div_from` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_div_from`
--

LOCK TABLES `ims_yz_goods_div_from` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_div_from` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_div_from` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_diyform`
--

DROP TABLE IF EXISTS `ims_yz_goods_diyform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_diyform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_id` int(11) NOT NULL,
  `diyform_id` int(11) DEFAULT NULL,
  `diyform_enable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_goodid` (`good_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品与自定义表单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_diyform`
--

LOCK TABLES `ims_yz_goods_diyform` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_diyform` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_diyform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_filtering`
--

DROP TABLE IF EXISTS `ims_yz_goods_filtering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_filtering` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT '0',
  `filtering_id` int(11) DEFAULT '0' COMMENT '过滤id',
  PRIMARY KEY (`id`),
  KEY `idx_goods` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_filtering`
--

LOCK TABLES `ims_yz_goods_filtering` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_filtering` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_filtering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_level_returns`
--

DROP TABLE IF EXISTS `ims_yz_goods_level_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_level_returns` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `good_return_id` int(11) NOT NULL,
  `level_type` tinyint(3) NOT NULL DEFAULT '1',
  `level_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_good_return_id` (`good_return_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品等级返现规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_level_returns`
--

LOCK TABLES `ims_yz_goods_level_returns` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_level_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_level_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_limitbuy`
--

DROP TABLE IF EXISTS `ims_yz_goods_limitbuy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_limitbuy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_limitbuy`
--

LOCK TABLES `ims_yz_goods_limitbuy` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_limitbuy` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_limitbuy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_notices`
--

DROP TABLE IF EXISTS `ims_yz_goods_notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_notices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_good_id` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_notices`
--

LOCK TABLES `ims_yz_goods_notices` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_notices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_option`
--

DROP TABLE IF EXISTS `ims_yz_goods_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `goods_id` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT '0.00',
  `market_price` decimal(10,2) DEFAULT '0.00',
  `cost_price` decimal(10,2) DEFAULT '0.00',
  `stock` int(11) DEFAULT '0',
  `weight` decimal(10,2) DEFAULT '0.00',
  `display_order` int(11) DEFAULT '0',
  `specs` text,
  `skuId` varchar(255) DEFAULT '',
  `goods_sn` varchar(255) DEFAULT '',
  `product_sn` varchar(255) DEFAULT '',
  `virtual` int(11) DEFAULT '0',
  `red_price` varchar(50) DEFAULT '',
  `created_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_goodsid` (`goods_id`),
  KEY `idx_displayorder` (`display_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_option`
--

LOCK TABLES `ims_yz_goods_option` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_param`
--

DROP TABLE IF EXISTS `ims_yz_goods_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `goods_id` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT NULL,
  `value` text,
  `displayorder` int(11) DEFAULT '0',
  `updated_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_goodsid` (`goods_id`),
  KEY `idx_displayorder` (`displayorder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_param`
--

LOCK TABLES `ims_yz_goods_param` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_privilege`
--

DROP TABLE IF EXISTS `ims_yz_goods_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_privilege` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `show_levels` text COLLATE utf8mb4_unicode_ci,
  `show_groups` text COLLATE utf8mb4_unicode_ci,
  `buy_levels` text COLLATE utf8mb4_unicode_ci,
  `buy_groups` text COLLATE utf8mb4_unicode_ci,
  `once_buy_limit` int(11) DEFAULT '0',
  `total_buy_limit` int(11) DEFAULT '0',
  `time_begin_limit` int(11) DEFAULT NULL,
  `time_end_limit` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `enable_time_limit` tinyint(4) DEFAULT '0',
  `day_buy_limit` int(11) DEFAULT '0',
  `week_buy_limit` int(11) DEFAULT '0',
  `month_buy_limit` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_goodid` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_privilege`
--

LOCK TABLES `ims_yz_goods_privilege` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_privilege` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_return`
--

DROP TABLE IF EXISTS `ims_yz_goods_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_return` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `good_id` int(11) NOT NULL,
  `is_level_return` tinyint(3) NOT NULL DEFAULT '0',
  `level_return_type` tinyint(3) NOT NULL DEFAULT '1',
  `is_order_return` tinyint(3) NOT NULL DEFAULT '0',
  `is_queue_return` tinyint(3) NOT NULL DEFAULT '0',
  `add_pool_amount` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_good_id` (`good_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品与全返关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_return`
--

LOCK TABLES `ims_yz_goods_return` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_return_address`
--

DROP TABLE IF EXISTS `ims_yz_goods_return_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_return_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `address_name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` int(11) NOT NULL,
  `province_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  `city_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(11) NOT NULL,
  `district_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_id` int(11) DEFAULT NULL,
  `street_name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugins_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `supplier_id` int(11) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_return_address`
--

LOCK TABLES `ims_yz_goods_return_address` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_return_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_return_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_sale`
--

DROP TABLE IF EXISTS `ims_yz_goods_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_sale` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `max_balance_deduct` int(11) DEFAULT '0',
  `is_sendfree` int(11) DEFAULT '0',
  `ed_num` int(11) DEFAULT '0',
  `ed_money` int(11) DEFAULT '0',
  `ed_areas` text COLLATE utf8mb4_unicode_ci,
  `ed_areaids` text COLLATE utf8mb4_unicode_ci,
  `bonus` int(11) DEFAULT '0',
  `max_point_deduct` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ed_full` decimal(10,2) DEFAULT '0.00',
  `ed_reduction` decimal(10,2) DEFAULT '0.00',
  `is_push` tinyint(4) NOT NULL DEFAULT '0',
  `push_goods_ids` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `award_balance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_good_id` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_sale`
--

LOCK TABLES `ims_yz_goods_sale` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_share`
--

DROP TABLE IF EXISTS `ims_yz_goods_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `need_follow` tinyint(1) DEFAULT NULL,
  `no_follow_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `follow_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `share_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `share_thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `share_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_goodid` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_share`
--

LOCK TABLES `ims_yz_goods_share` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_share` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_spec`
--

DROP TABLE IF EXISTS `ims_yz_goods_spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `goods_id` int(11) DEFAULT '0',
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `display_type` tinyint(3) DEFAULT '0',
  `content` text,
  `display_order` int(11) DEFAULT '0',
  `propId` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_goodsid` (`goods_id`),
  KEY `idx_displayorder` (`display_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_spec`
--

LOCK TABLES `ims_yz_goods_spec` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_spec` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_spec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_goods_spec_item`
--

DROP TABLE IF EXISTS `ims_yz_goods_spec_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_goods_spec_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `specid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `show` int(11) DEFAULT '0',
  `display_order` int(11) DEFAULT '0',
  `valueId` varchar(255) DEFAULT NULL,
  `virtual` int(11) DEFAULT '0',
  `created_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_specid` (`specid`),
  KEY `idx_show` (`show`),
  KEY `idx_displayorder` (`display_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_goods_spec_item`
--

LOCK TABLES `ims_yz_goods_spec_item` WRITE;
/*!40000 ALTER TABLE `ims_yz_goods_spec_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_goods_spec_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_member`
--

DROP TABLE IF EXISTS `ims_yz_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_member` (
  `member_id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `level_id` int(11) NOT NULL DEFAULT '0',
  `inviter` int(11) DEFAULT '0',
  `is_black` tinyint(1) NOT NULL DEFAULT '0',
  `province_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `city_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `area_name` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0',
  `area` int(11) DEFAULT '0',
  `address` text COLLATE utf8mb4_unicode_ci,
  `referralsn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `is_agent` tinyint(1) DEFAULT '0',
  `alipayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alipay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT '0',
  `child_time` int(11) DEFAULT '0',
  `agent_time` int(11) DEFAULT '0',
  `apply_time` int(11) DEFAULT '0',
  `relation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `custom_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validity` int(11) DEFAULT NULL COMMENT '等级有效期',
  `member_form` text COLLATE utf8mb4_unicode_ci,
  `pay_password` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salt` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdraw_mobile` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `wechat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yz_openid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  KEY `idx_member_id` (`member_id`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_member`
--

LOCK TABLES `ims_yz_member` WRITE;
/*!40000 ALTER TABLE `ims_yz_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_member_address`
--

DROP TABLE IF EXISTS `ims_yz_member_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_member_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uinacid` (`uniacid`),
  KEY `idx_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_member_address`
--

LOCK TABLES `ims_yz_member_address` WRITE;
/*!40000 ALTER TABLE `ims_yz_member_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_member_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_member_app_wechat`
--

DROP TABLE IF EXISTS `ims_yz_member_app_wechat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_member_app_wechat` (
  `app_wechat_id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `openid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`app_wechat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_member_app_wechat`
--

LOCK TABLES `ims_yz_member_app_wechat` WRITE;
/*!40000 ALTER TABLE `ims_yz_member_app_wechat` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_member_app_wechat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_member_bank_card`
--

DROP TABLE IF EXISTS `ims_yz_member_bank_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_member_bank_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `member_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bank_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bank_card` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_default` tinyint(1) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `bank_province` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_city` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_branch` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_member_bank_card`
--

LOCK TABLES `ims_yz_member_bank_card` WRITE;
/*!40000 ALTER TABLE `ims_yz_member_bank_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_member_bank_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_member_cart`
--

DROP TABLE IF EXISTS `ims_yz_member_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_member_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_member_cart`
--

LOCK TABLES `ims_yz_member_cart` WRITE;
/*!40000 ALTER TABLE `ims_yz_member_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_member_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_member_coupon`
--

DROP TABLE IF EXISTS `ims_yz_member_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_member_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `uid` varchar(255) DEFAULT '',
  `coupon_id` int(11) DEFAULT '0',
  `get_type` tinyint(3) DEFAULT '0',
  `used` int(11) DEFAULT '0',
  `use_time` int(11) DEFAULT '0',
  `get_time` int(11) DEFAULT '0',
  `send_uid` int(11) DEFAULT '0',
  `order_sn` varchar(255) DEFAULT '',
  `back` tinyint(3) DEFAULT '0',
  `back_time` int(11) DEFAULT '0',
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_couponid` (`coupon_id`),
  KEY `idx_gettype` (`get_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_member_coupon`
--

LOCK TABLES `ims_yz_member_coupon` WRITE;
/*!40000 ALTER TABLE `ims_yz_member_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_member_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_member_favorite`
--

DROP TABLE IF EXISTS `ims_yz_member_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_member_favorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_member_favorite`
--

LOCK TABLES `ims_yz_member_favorite` WRITE;
/*!40000 ALTER TABLE `ims_yz_member_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_member_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_member_group`
--

DROP TABLE IF EXISTS `ims_yz_member_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_member_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `group_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `is_default` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_member_group`
--

LOCK TABLES `ims_yz_member_group` WRITE;
/*!40000 ALTER TABLE `ims_yz_member_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_member_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_member_history`
--

DROP TABLE IF EXISTS `ims_yz_member_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_member_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_member_history`
--

LOCK TABLES `ims_yz_member_history` WRITE;
/*!40000 ALTER TABLE `ims_yz_member_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_member_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_member_income`
--

DROP TABLE IF EXISTS `ims_yz_member_income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_member_income` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `incometable_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `incometable_id` int(11) DEFAULT NULL,
  `type_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `pay_status` tinyint(3) NOT NULL DEFAULT '0',
  `detail` text COLLATE utf8mb4_unicode_ci,
  `create_month` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_member_income`
--

LOCK TABLES `ims_yz_member_income` WRITE;
/*!40000 ALTER TABLE `ims_yz_member_income` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_member_income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_member_level`
--

DROP TABLE IF EXISTS `ims_yz_member_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_member_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `level_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_money` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_count` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `discount` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `is_default` int(11) DEFAULT '0',
  `validity` int(11) DEFAULT NULL COMMENT '等级有效期',
  `freight_reduction` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '运费减免',
  `interests_rules` text COLLATE utf8mb4_unicode_ci COMMENT '会员权益细则',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_member_level`
--

LOCK TABLES `ims_yz_member_level` WRITE;
/*!40000 ALTER TABLE `ims_yz_member_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_member_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_member_mini_app`
--

DROP TABLE IF EXISTS `ims_yz_member_mini_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_member_mini_app` (
  `mini_app_id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `openid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`mini_app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_member_mini_app`
--

LOCK TABLES `ims_yz_member_mini_app` WRITE;
/*!40000 ALTER TABLE `ims_yz_member_mini_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_member_mini_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_member_qq`
--

DROP TABLE IF EXISTS `ims_yz_member_qq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_member_qq` (
  `qq_id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `figureurl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `figureurl_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `figureurl_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `figureurl_qq_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `figureurl_qq_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `is_yellow_year_vip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `vip` int(11) NOT NULL DEFAULT '0',
  `yellow_vip_level` tinyint(1) NOT NULL DEFAULT '0',
  `level` tinyint(1) NOT NULL DEFAULT '0',
  `is_yellow_vip` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`qq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_member_qq`
--

LOCK TABLES `ims_yz_member_qq` WRITE;
/*!40000 ALTER TABLE `ims_yz_member_qq` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_member_qq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_member_record`
--

DROP TABLE IF EXISTS `ims_yz_member_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_member_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_member_record`
--

LOCK TABLES `ims_yz_member_record` WRITE;
/*!40000 ALTER TABLE `ims_yz_member_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_member_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_member_relation`
--

DROP TABLE IF EXISTS `ims_yz_member_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_member_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `become` tinyint(1) NOT NULL DEFAULT '0',
  `become_order` tinyint(1) NOT NULL DEFAULT '0',
  `become_child` tinyint(1) NOT NULL DEFAULT '0',
  `become_ordercount` int(11) DEFAULT '0',
  `become_moneycount` decimal(15,2) DEFAULT '0.00',
  `become_goods_id` int(11) DEFAULT '0',
  `become_info` tinyint(1) NOT NULL DEFAULT '1',
  `become_check` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_member_relation`
--

LOCK TABLES `ims_yz_member_relation` WRITE;
/*!40000 ALTER TABLE `ims_yz_member_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_member_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_member_unique`
--

DROP TABLE IF EXISTS `ims_yz_member_unique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_member_unique` (
  `unique_id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `unionid` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`unique_id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_unionid` (`unionid`),
  KEY `idx_member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_member_unique`
--

LOCK TABLES `ims_yz_member_unique` WRITE;
/*!40000 ALTER TABLE `ims_yz_member_unique` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_member_unique` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_member_wechat`
--

DROP TABLE IF EXISTS `ims_yz_member_wechat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_member_wechat` (
  `wechat_id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `openid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` int(11) DEFAULT NULL,
  `uuid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`wechat_id`),
  KEY `idx_member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_member_wechat`
--

LOCK TABLES `ims_yz_member_wechat` WRITE;
/*!40000 ALTER TABLE `ims_yz_member_wechat` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_member_wechat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_menu`
--

DROP TABLE IF EXISTS `ims_yz_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url_params` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `permit` tinyint(1) NOT NULL DEFAULT '0',
  `menu` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_menu`
--

LOCK TABLES `ims_yz_menu` WRITE;
/*!40000 ALTER TABLE `ims_yz_menu` DISABLE KEYS */;
INSERT INTO `ims_yz_menu` VALUES (1,'系统管理','system','','',1,1,'fa-asterisk',0,1,1,1490172379,1491790782,NULL),(2,'菜单管理','menu','menu.index','',0,0,'fa-align-justify',1,0,1,1490172436,1490172436,NULL),(3,'创建菜单','menu.add','menu.add','',0,0,'fa-plus',2,0,1,1490172477,1490172477,NULL),(4,'修改菜单','menu.edit','menu.edit','',0,0,'fa-edit',2,0,1,1490172528,1490172528,NULL),(5,'删除菜单','menu.delete','menu.delete','',0,0,'fa-remove',2,0,1,1490172576,1490172576,NULL),(6,'商品管理','goods','','',1,1,'fa-outdent',0,2,1,1490181906,1491790770,NULL),(7,'品牌管理','goods.brand','goods.brand.index','',1,1,'fa-briefcase',6,3,1,1490181968,1491794806,NULL),(8,'创建品牌','goods.brand.add','goods.brand.add','',1,1,'fa-plus',7,0,1,1490182024,1492129584,NULL),(9,'修改品牌','goods.brand.edit','goods.brand.edit','',1,0,'fa-edit',7,2,1,1490182066,1492130384,NULL),(10,'删除品牌','goods.brand.delete','goods.brand.deleted-brand','',1,0,'fa-remove',7,3,1,1490182114,1492130396,NULL),(11,'商品分类','goods.category','goods.category.index','',1,1,'fa-sitemap',6,2,1,1490182203,1491794744,NULL),(12,'创建分类','goods.category.add','goods.category.add-category','',1,1,'fa-plus',11,0,1,1490182203,1492129680,NULL),(13,'修改分类','goods.category.edit','goods.category.edit-category','',1,0,'fa-edit',11,2,1,1490182203,1492129756,NULL),(14,'删除分类','goods.category.delete','goods.category.deleted-category','',1,0,'fa-sliders',11,3,1,0,1492130370,NULL),(15,'评论管理','comment','goods.comment.index','',1,1,'fa-columns',6,5,1,0,1491794656,NULL),(16,'创建评论','goods.comment.add','goods.comment.add-comment','',1,1,'fa-plus',15,0,1,1490182203,1490599752,NULL),(17,'修改评论','goods.comment.edit','goods.comment.updated','',1,0,'fa-edit',15,0,1,1490182203,1492130416,NULL),(18,'删除评论','goods.comment.delete','goods.comment.deleted','',1,0,'fa-circle-o',15,0,1,0,1492130453,NULL),(19,'回复评论','goods.comment.reply','goods.comment.reply','',1,0,'fa-circle-o',15,0,1,0,1492130469,NULL),(20,'商城设置','Setting','setting.shop.shop','',1,1,'fa-cog',1,0,1,1490410074,1490410496,NULL),(21,'基础设置','setting.shop.index','setting.shop.index','',0,0,'fa-sliders',20,0,1,1490411291,1492425368,NULL),(22,'分享引导设置','setting.shop.share','setting.shop.share','',1,1,'fa-sliders',20,5,1,1490411371,1491963442,NULL),(23,'消息提醒设置','setting.shop.notice','setting.shop.notice','',1,1,'fa-sliders',20,6,1,1490412887,1491794955,NULL),(24,'交易设置','setting.shop.trade','setting.shop.trade','',1,1,'fa-sliders',20,0,1,1490412921,1490755443,NULL),(25,'支付方式','setting.shop.pay','setting.shop.pay','',1,1,'fa-sliders',20,0,1,1490412947,1490755461,NULL),(26,'短信设置','setting.shop.sms','setting.shop.sms','',1,1,'fa-sliders',20,0,1,1490412969,1492049625,1492049625),(27,'商品发布','goods.goods','goods.goods.index','',1,1,'fa-sliders',6,0,1,1490422819,1492087957,NULL),(28,'订单管理','order','order.list','',1,1,'fa-list',0,4,1,1490607478,1491793900,NULL),(29,'全部订单','order.list','order.list','',1,1,'fa-sliders',28,0,1,1490607665,1490607665,NULL),(30,'角色管理','role','user.role.index','',1,1,'fa-user',1,0,1,1490620449,1490620449,NULL),(31,'添加角色','user.role.store','user.role.store','',1,1,'fa-plus',30,0,1,1490620540,1492129560,NULL),(32,'修改角色','user.role.update','user.role.update','',1,0,'fa-pencil-square-o',30,0,1,1490620730,1492129772,NULL),(33,'删除角色','user.role.destory','user.role.destory','',1,0,'fa-remove',30,0,1,1490620828,1492129786,NULL),(34,'操作员','user.user.index','user.user.index','',1,1,'fa-list-ul',1,0,1,1490621121,1490621121,NULL),(35,'添加操作员','user.user.store','user.user.store','',1,1,'fa-plus',34,0,1,1490621173,1492088023,NULL),(36,'修改操作员','user.user.update','user.user.update','',1,0,'fa-edit',34,0,1,1490621232,1492129799,NULL),(37,'删除操作员','user.user.destroy','user.user.destroy','',1,0,'fa-remove',34,0,1,1490621499,1492129814,NULL),(38,'会员管理','user','','',1,1,'fa-users',0,3,1,1490683165,1491793920,NULL),(39,'全部会员','user_all','member.member.index','',1,1,'fa-user',38,0,1,1490683467,1490683467,NULL),(40,'会员关系设置','user_relation','member.member-relation.index','',1,1,'fa-sliders',100,0,1,1490683533,1492477734,NULL),(42,'文章营销','article','','',1,1,'fa-sliders',41,0,1,1490700042,1490749374,1490749374),(43,'基础设置','article.set','plugin.article.admin.set','',1,1,'fa-sliders',42,0,1,1490700108,1490749369,1490749369),(44,'文章管理','article.list','plugin.article.admin.article','',1,1,'fa-sliders',42,0,1,1490700168,1490749363,1490749363),(45,'文章分类','article.category','plugin.article.admin.category','',1,1,'fa-sliders',42,0,1,1490700208,1490749358,1490749358),(46,'文章采集','article.collect','plugin.article.admin.article.collect','',1,1,'fa-sliders',42,0,1,1490700282,1490749350,1490749350),(47,'会员等级','member.member-level.index','member.member-level.index','',1,1,'fa-group',38,0,1,1490781929,1490781929,NULL),(48,'添加会员等级','member.member-level.store','member.member-level.store','',1,1,'fa-plus',47,0,1,1490782606,1492129573,NULL),(49,'编辑会员等级','member.member-level.update','member.member-level.update','',1,0,'fa-edit',47,0,1,1490782802,1490782802,NULL),(50,'删除会员等级','member.memberlevel.destroy','member.member-level.destroy','',1,0,'fa-remove',47,0,1,1490782855,1490783864,NULL),(51,'会员分组','member.member-group.index','member.member-group.index','',1,1,'fa-group',38,0,1,1490783444,1490783444,NULL),(52,'添加会员分组','member.member-group.store','member.member-group.store','',1,1,'fa-plus',51,0,1,1490783552,1492129528,NULL),(53,'修改会员分组','member.member-group.update','member.member-group.update','',1,0,'fa-pencil-square-o',51,0,1,1490783596,1490783596,NULL),(54,'删除会员分组','member.member-group.destroy','member.member-group.destroy','',1,0,'fa-remove',51,0,1,1490783643,1490783643,NULL),(55,'配送模板','goods.dispatch','goods.dispatch','',1,1,'fa-sliders',6,4,1,1490868383,1491794822,NULL),(56,'模板管理','goods.dispatch.index','goods.dispatch.index','',1,1,'fa-sliders',55,0,1,1490868425,1490868425,NULL),(57,'添加模板','goods.dispatch.add','goods.dispatch.add','',1,1,'fa-sliders',55,0,1,1490868459,1490868459,NULL),(58,'财务管理','finance','','',1,1,'fa-sliders',0,5,1,1490943530,1492130499,NULL),(59,'提现设置','withdraw','finance.withdraw.set','',1,1,'fa-sliders',58,0,1,1490943603,1490943603,NULL),(60,'余额基础设置','balance.set','finance.balance','',1,1,'fa-sliders',91,0,1,1490943653,1492129381,NULL),(61,'用户余额管理','finance.balance.member','finance.balance.member','',1,1,'fa-sliders',91,0,1,1491039625,1492129407,NULL),(62,'余额充值记录','finance.balance.rechargeRecord','finance.balance.rechargeRecord','',1,1,'fa-sliders',91,0,1,1491039706,1492129480,NULL),(63,'余额转让记录','finance.balance.tansferRecord','finance.balance.transferRecord','',1,1,'fa-sliders',91,0,1,1491124776,1492129504,NULL),(64,'余额充值','finance.balance.recharge','finance.balance.recharge','',1,0,'fa-sliders',58,0,0,1491375327,1492046650,NULL),(65,'test提现设置','test.withdraw','finance.withdraw.set','',1,1,'fa-sliders',58,0,1,1491616100,1491616118,1491616118),(66,'提现记录','finance.withdraw','finance.withdraw','',1,1,'fa-sliders',58,0,1,1491616318,1491616354,NULL),(78,'资格申请','agent_apply','member.member-relation.apply','',1,1,'fa-sliders',100,0,1,1491981655,1492477754,NULL),(79,'插件管理','plugins-manage','plugins.get-plugin-data','',1,1,'fa-circle-o',1,0,1,1491987643,1492130529,NULL),(80,'积分基础设置','point','finance.point-set','',1,1,'fa-circle-o',58,0,1,1492004143,1492004174,1492004174),(81,'积分','finance.point','','',1,1,'fa-circle-o',58,0,1,1492004231,1492004231,NULL),(82,'积分基础设置','point.set','finance.point-set','',1,1,'fa-circle-o',81,0,1,1492004268,1492004268,NULL),(83,'会员积分','point.member','finance.point-member','',1,1,'fa-circle-o',81,0,1,1492004318,1492004318,NULL),(84,'积分明细','point.log','finance.point-log','',1,1,'fa-circle-o',81,0,1,1492004354,1492004354,NULL),(85,'余额明细','finance.balance.balanceDetail','finance.balance-records.index','',1,1,'fa-file-text',91,0,1,1492046618,1525358248,NULL),(86,'待支付订单','order.list.waitPay','order.list.waitPay','',1,1,'fa-circle-o',28,1,1,1492049766,1492050985,NULL),(87,'待发货订单','order.list.waitSend','order.list.waitSend','',1,1,'fa-circle-o',28,2,1,1492050639,1492051011,NULL),(88,'待收货订单','order.list.waitReceive','order.list.waitReceive','',1,1,'fa-circle-o',28,3,1,1492050693,1492051034,NULL),(89,'已完成订单','order.list.completed','order.list.completed','',1,1,'fa-circle-o',28,5,1,1492050737,1492439034,NULL),(91,'余额管理','balance','balance','',1,1,'fa-circle-o',58,0,1,1492129346,1492129346,NULL),(92,'待审核提现','withdraw-status-wait-audit','finance.withdraw','&search[status]=0',1,1,'fa-circle-o',66,0,1,1492149299,1492150356,NULL),(93,'待打款提现','withdraw-status-wait-pay','finance.withdraw','&search[status]=1',1,1,'fa-circle-o',66,0,1,1492150423,1492150701,NULL),(94,'已打款提现','withdraw-status-pay','finance.withdraw','&search[status]=2',1,1,'fa-circle-o',66,0,1,1492150485,1492150485,NULL),(95,'已到账提现','withdraw-status-arrival','finance.withdraw','&search[status]=3',1,1,'fa-circle-o',66,0,1,1492150586,1492150753,NULL),(96,'无效提现','withdraw-status-invalid','finance.withdraw','&search[status]=-1',1,1,'fa-circle-o',66,0,1,1492150645,1492150736,NULL),(97,'退换货订单','refund','order.list.refund','',1,1,'fa-circle-o',28,6,1,1492170755,1492439021,NULL),(98,'已退款','order.list.refunded','order.list.refunded','',1,1,'fa-circle-o',28,7,1,1492438967,1492438967,NULL),(99,'已关闭订单','order.list.cancelled','order.list.cancelled','',1,1,'fa-circle-o',28,5,1,1492439282,1492439282,NULL),(100,'会员关系','relation','','',1,1,'fa-circle-o',38,0,1,1492477575,1492477575,NULL),(101,'优惠券管理','coupon','coupon.coupon.index','',1,1,'fa-circle-o',6,6,1,1492504682,1492504850,NULL),(102,'优惠券列表','coupon.coupon.index','coupon.coupon.index','',1,1,'fa-circle-o',101,1,1,1492504792,1492504918,NULL),(103,'创建优惠券','coupon.coupon.create','coupon.coupon.create','',1,1,'fa-circle-o',101,2,1,1492504909,1492504909,NULL),(104,'基础设置','relation_base','member.member-relation.base','',1,1,'fa-circle-o',100,0,1,1493215708,1493216284,NULL),(105,'领取发放记录','coupon.coupon.log','coupon.coupon.log','',1,1,'fa-users',101,3,1,1493358531,1493358531,NULL),(106,'商城入口','shop_entry','setting.shop.entry','',1,1,'fa-hand-o-right',1,0,1,1493696556,1493704237,NULL),(107,'仅退款','refund.list.refundMoney','refund.list.refundMoney','',1,1,'fa-circle-o',97,2,1,1493967747,1493985887,NULL),(108,'退货退款','refund.list.returnGoods','refund.list.returnGoods','',1,1,'fa-circle-o',97,3,1,1493967852,1493985904,NULL),(109,'换货','refund.list.exchangeGoods','refund.list.exchangeGoods','',1,1,'fa-circle-o',97,4,1,1493967934,1493985857,NULL),(110,'全部','refund.list.refund','refund.list.refund','',1,1,'fa-circle-o',97,1,1,1493967747,1493985887,NULL),(111,'编辑商品','goods.goods.edit','goods.goods.edit','',1,0,'fa-circle-o',27,0,1,1495521115,1525358248,NULL),(112,'添加商品','goods.goods.create','goods.goods.create','',1,0,'fa-circle-o',27,0,1,1495522464,1525358248,NULL),(113,'删除商品','goods.goods.destroy','goods.goods.destroy','',1,0,'fa-circle-o',27,0,1,1495522603,1525358248,NULL),(114,'复制商品','goods.goods.copy','goods.goods.copy','',1,0,'fa-circle-o',27,0,1,1495523880,1525358248,NULL),(115,'编辑优惠券','coupon.coupon.edit','coupon.coupon.edit','id',1,0,'fa-circle-o',102,0,1,1495530444,1495530444,NULL),(116,'删除优惠券','coupon.coupon.destory','coupon.coupon.destory','id',1,0,'fa-circle-o',102,0,1,1495530493,1495530493,NULL);
/*!40000 ALTER TABLE `ims_yz_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_message_template`
--

DROP TABLE IF EXISTS `ims_yz_message_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_message_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `template_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first` text COLLATE utf8mb4_unicode_ci,
  `first_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `remark_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `notice_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_message_template`
--

LOCK TABLES `ims_yz_message_template` WRITE;
/*!40000 ALTER TABLE `ims_yz_message_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_message_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_options`
--

DROP TABLE IF EXISTS `ims_yz_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` text COLLATE utf8mb4_unicode_ci,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `top_show` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_options`
--

LOCK TABLES `ims_yz_options` WRITE;
/*!40000 ALTER TABLE `ims_yz_options` DISABLE KEYS */;
INSERT INTO `ims_yz_options` VALUES (1,'test-plugins','true',1,0,0),(2,'plugins-market','true',1,0,0),(3,'market_source',NULL,1,0,0),(4,'key',NULL,1,0,0),(5,'plugins-market','true',0,1,0);
/*!40000 ALTER TABLE `ims_yz_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_order`
--

DROP TABLE IF EXISTS `ims_yz_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `uid` int(10) NOT NULL DEFAULT '0',
  `order_sn` varchar(23) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_total` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_time` int(10) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  `is_member_deleted` tinyint(3) NOT NULL DEFAULT '0',
  `finish_time` int(11) NOT NULL DEFAULT '0',
  `pay_time` int(11) NOT NULL DEFAULT '0',
  `send_time` int(11) NOT NULL DEFAULT '0',
  `cancel_time` int(11) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  `deleted_at` int(11) NOT NULL DEFAULT '0',
  `cancel_pay_time` int(11) NOT NULL DEFAULT '0',
  `cancel_send_time` int(11) NOT NULL DEFAULT '0',
  `dispatch_type_id` tinyint(3) NOT NULL DEFAULT '0',
  `dispatch_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_type_id` tinyint(3) NOT NULL DEFAULT '0',
  `order_goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deduction_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `refund_id` int(11) NOT NULL DEFAULT '0',
  `is_plugin` int(11) NOT NULL DEFAULT '0',
  `change_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `change_dispatch_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `comment_status` tinyint(2) NOT NULL DEFAULT '0',
  `order_pay_id` varchar(23) NOT NULL DEFAULT '',
  `is_virtual` tinyint(4) NOT NULL DEFAULT '0',
  `plugin_id` int(11) NOT NULL DEFAULT '0',
  `mark` varchar(100) DEFAULT '' COMMENT '柜子标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_order`
--

LOCK TABLES `ims_yz_order` WRITE;
/*!40000 ALTER TABLE `ims_yz_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_order_address`
--

DROP TABLE IF EXISTS `ims_yz_order_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_order_address` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL DEFAULT '0',
  `mobile` varchar(20) NOT NULL DEFAULT '',
  `realname` varchar(50) NOT NULL DEFAULT '',
  `updated_at` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `province_id` int(11) NOT NULL DEFAULT '0' COMMENT '省id',
  `city_id` int(11) NOT NULL DEFAULT '0' COMMENT '市id',
  `district_id` int(11) NOT NULL DEFAULT '0' COMMENT '区id',
  `note` text,
  `street_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_order_address`
--

LOCK TABLES `ims_yz_order_address` WRITE;
/*!40000 ALTER TABLE `ims_yz_order_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_order_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_order_change_log`
--

DROP TABLE IF EXISTS `ims_yz_order_change_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_order_change_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `username` varchar(50) NOT NULL DEFAULT '',
  `old_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `new_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `change_price` decimal(10,2) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `change_dispatch_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_order_change_log`
--

LOCK TABLES `ims_yz_order_change_log` WRITE;
/*!40000 ALTER TABLE `ims_yz_order_change_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_order_change_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_order_coupon`
--

DROP TABLE IF EXISTS `ims_yz_order_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_order_coupon` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `member_coupon_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `updated_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_order_coupon`
--

LOCK TABLES `ims_yz_order_coupon` WRITE;
/*!40000 ALTER TABLE `ims_yz_order_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_order_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_order_deduction`
--

DROP TABLE IF EXISTS `ims_yz_order_deduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_order_deduction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '抵扣名称',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '抵扣金额',
  `coin` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '抵扣数值',
  `updated_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_order_deduction`
--

LOCK TABLES `ims_yz_order_deduction` WRITE;
/*!40000 ALTER TABLE `ims_yz_order_deduction` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_order_deduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_order_discount`
--

DROP TABLE IF EXISTS `ims_yz_order_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_order_discount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL,
  `discount_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '折扣代码',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `is_indirect` tinyint(1) NOT NULL DEFAULT '0' COMMENT '间接计算出',
  `updated_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_order_discount`
--

LOCK TABLES `ims_yz_order_discount` WRITE;
/*!40000 ALTER TABLE `ims_yz_order_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_order_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_order_express`
--

DROP TABLE IF EXISTS `ims_yz_order_express`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_order_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `express_company_name` varchar(50) NOT NULL DEFAULT '0',
  `express_sn` varchar(50) NOT NULL DEFAULT '0',
  `express_code` varchar(20) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  `deleted_at` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_order_express`
--

LOCK TABLES `ims_yz_order_express` WRITE;
/*!40000 ALTER TABLE `ims_yz_order_express` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_order_express` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_order_goods`
--

DROP TABLE IF EXISTS `ims_yz_order_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_order_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `pay_sn` varchar(23) NOT NULL DEFAULT '',
  `total` int(11) NOT NULL DEFAULT '1',
  `create_at` int(11) NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_sn` varchar(50) NOT NULL DEFAULT '',
  `uid` int(10) NOT NULL DEFAULT '0',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_option_id` int(11) NOT NULL DEFAULT '0',
  `goods_option_title` varchar(50) NOT NULL DEFAULT '',
  `product_sn` varchar(23) NOT NULL DEFAULT '',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `discount_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `comment_status` tinyint(3) NOT NULL DEFAULT '0',
  `change_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `goods_market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_cost_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `vip_price` decimal(10,2) DEFAULT '0.00',
  `coupon_price` decimal(10,2) DEFAULT '0.00',
  `payment_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deduction_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_order_goods`
--

LOCK TABLES `ims_yz_order_goods` WRITE;
/*!40000 ALTER TABLE `ims_yz_order_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_order_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_order_goods_change_log`
--

DROP TABLE IF EXISTS `ims_yz_order_goods_change_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_order_goods_change_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_change_log_id` int(11) DEFAULT NULL,
  `order_goods_id` int(11) NOT NULL,
  `old_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `new_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `change_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_order_goods_change_log`
--

LOCK TABLES `ims_yz_order_goods_change_log` WRITE;
/*!40000 ALTER TABLE `ims_yz_order_goods_change_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_order_goods_change_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_order_goods_deduction`
--

DROP TABLE IF EXISTS `ims_yz_order_goods_deduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_order_goods_deduction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL,
  `order_goods_id` int(11) DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '抵扣名称',
  `usable_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '抵扣金额',
  `usable_coin` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '抵扣数值',
  `updated_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `used_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '抵扣数值',
  `used_coin` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '抵扣金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_order_goods_deduction`
--

LOCK TABLES `ims_yz_order_goods_deduction` WRITE;
/*!40000 ALTER TABLE `ims_yz_order_goods_deduction` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_order_goods_deduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_order_goods_discount`
--

DROP TABLE IF EXISTS `ims_yz_order_goods_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_order_goods_discount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `order_goods_id` int(11) NOT NULL,
  `discount_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '折扣代码',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `is_indirect` tinyint(1) NOT NULL DEFAULT '0' COMMENT '间接计算出',
  `updated_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_order_goods_discount`
--

LOCK TABLES `ims_yz_order_goods_discount` WRITE;
/*!40000 ALTER TABLE `ims_yz_order_goods_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_order_goods_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_order_goods_expansion`
--

DROP TABLE IF EXISTS `ims_yz_order_goods_expansion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_order_goods_expansion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_goods_id` int(11) NOT NULL,
  `plugin_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_order_goods_expansion`
--

LOCK TABLES `ims_yz_order_goods_expansion` WRITE;
/*!40000 ALTER TABLE `ims_yz_order_goods_expansion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_order_goods_expansion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_order_mapping`
--

DROP TABLE IF EXISTS `ims_yz_order_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_order_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_order_id` int(11) NOT NULL,
  `new_order_id` int(11) NOT NULL,
  `old_openid` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_member_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_order_mapping`
--

LOCK TABLES `ims_yz_order_mapping` WRITE;
/*!40000 ALTER TABLE `ims_yz_order_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_order_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_order_operation_log`
--

DROP TABLE IF EXISTS `ims_yz_order_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_order_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT '0',
  `before_operation_status` tinyint(1) DEFAULT '0',
  `after_operation_status` tinyint(1) DEFAULT '0',
  `operator` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `operation_time` int(11) DEFAULT '0',
  `created_at` int(11) DEFAULT '0',
  `updated_at` int(11) DEFAULT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_order_operation_log`
--

LOCK TABLES `ims_yz_order_operation_log` WRITE;
/*!40000 ALTER TABLE `ims_yz_order_operation_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_order_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_order_pay`
--

DROP TABLE IF EXISTS `ims_yz_order_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_order_pay` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pay_sn` varchar(23) NOT NULL DEFAULT '',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `pay_type_id` tinyint(3) NOT NULL DEFAULT '0',
  `pay_time` int(11) NOT NULL DEFAULT '0',
  `refund_time` int(11) NOT NULL DEFAULT '0',
  `order_ids` varchar(500) NOT NULL DEFAULT '',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `uid` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_order_pay`
--

LOCK TABLES `ims_yz_order_pay` WRITE;
/*!40000 ALTER TABLE `ims_yz_order_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_order_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_order_refund`
--

DROP TABLE IF EXISTS `ims_yz_order_refund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_order_refund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `refund_sn` varchar(255) NOT NULL,
  `refund_type` tinyint(1) DEFAULT '0',
  `status` tinyint(3) DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `images` text NOT NULL,
  `content` text NOT NULL,
  `create_time` int(11) DEFAULT '0',
  `reply` text,
  `reject_reason` text,
  `refund_way_type` tinyint(3) DEFAULT '0',
  `apply_price` decimal(10,2) DEFAULT '0.00',
  `order_price` decimal(10,2) DEFAULT '0.00',
  `refund_proof_imgs` text,
  `refund_time` int(11) DEFAULT '0',
  `refund_address` text,
  `remark` text,
  `operate_time` int(11) DEFAULT '0',
  `send_time` int(11) DEFAULT '0',
  `return_time` int(11) DEFAULT '0',
  `end_time` int(11) DEFAULT '0',
  `alipay_batch_sn` varchar(255) DEFAULT '',
  `updated_at` int(11) DEFAULT NULL,
  `created_at` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_create_time` (`create_time`),
  KEY `idx_shop_id` (`uniacid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_order_refund`
--

LOCK TABLES `ims_yz_order_refund` WRITE;
/*!40000 ALTER TABLE `ims_yz_order_refund` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_order_refund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_order_remark`
--

DROP TABLE IF EXISTS `ims_yz_order_remark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_order_remark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `remark` char(255) NOT NULL,
  `updated_at` int(11) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `deleted_at` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_order_remark`
--

LOCK TABLES `ims_yz_order_remark` WRITE;
/*!40000 ALTER TABLE `ims_yz_order_remark` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_order_remark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_order_setting`
--

DROP TABLE IF EXISTS `ims_yz_order_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_order_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_order_setting`
--

LOCK TABLES `ims_yz_order_setting` WRITE;
/*!40000 ALTER TABLE `ims_yz_order_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_order_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_pay_access_log`
--

DROP TABLE IF EXISTS `ims_yz_pay_access_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_pay_access_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(135) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_pay_access_log`
--

LOCK TABLES `ims_yz_pay_access_log` WRITE;
/*!40000 ALTER TABLE `ims_yz_pay_access_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_pay_access_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_pay_log`
--

DROP TABLE IF EXISTS `ims_yz_pay_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_pay_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `third_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `price` decimal(14,2) NOT NULL,
  `operation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(135) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(13) NOT NULL DEFAULT '0',
  `updated_at` int(13) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_pay_log`
--

LOCK TABLES `ims_yz_pay_log` WRITE;
/*!40000 ALTER TABLE `ims_yz_pay_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_pay_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_pay_order`
--

DROP TABLE IF EXISTS `ims_yz_pay_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_pay_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `int_order_no` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `out_order_no` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `trade_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(14,2) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `third_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`),
  KEY `idx_member_id` (`member_id`),
  KEY `idx_order_no` (`out_order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_pay_order`
--

LOCK TABLES `ims_yz_pay_order` WRITE;
/*!40000 ALTER TABLE `ims_yz_pay_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_pay_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_pay_refund_order`
--

DROP TABLE IF EXISTS `ims_yz_pay_refund_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_pay_refund_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `int_order_no` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `out_order_no` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `trade_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `price` decimal(14,2) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_pay_refund_order`
--

LOCK TABLES `ims_yz_pay_refund_order` WRITE;
/*!40000 ALTER TABLE `ims_yz_pay_refund_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_pay_refund_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_pay_request_data`
--

DROP TABLE IF EXISTS `ims_yz_pay_request_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_pay_request_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `out_order_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `third_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_pay_request_data`
--

LOCK TABLES `ims_yz_pay_request_data` WRITE;
/*!40000 ALTER TABLE `ims_yz_pay_request_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_pay_request_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_pay_response_data`
--

DROP TABLE IF EXISTS `ims_yz_pay_response_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_pay_response_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `out_order_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `third_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_pay_response_data`
--

LOCK TABLES `ims_yz_pay_response_data` WRITE;
/*!40000 ALTER TABLE `ims_yz_pay_response_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_pay_response_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_pay_type`
--

DROP TABLE IF EXISTS `ims_yz_pay_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_pay_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `plugin_id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `setting_key` varchar(255) DEFAULT NULL,
  `need_password` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_pay_type`
--

LOCK TABLES `ims_yz_pay_type` WRITE;
/*!40000 ALTER TABLE `ims_yz_pay_type` DISABLE KEYS */;
INSERT INTO `ims_yz_pay_type` VALUES (0,'未支付',0,'unPay',0,'',1505785687,NULL,NULL,'',0),(1,'微信',0,'wechatPay',2,'元',1505785687,NULL,NULL,'shop.pay.weixin',0),(2,'支付宝',0,'alipay',2,'元',1505785687,NULL,NULL,'shop.pay.alipay',0),(3,'余额',0,'balance',1,'元',1505785687,NULL,NULL,'shop.pay.credit',1),(4,'金币',0,'gold',1,'金币',1505785687,NULL,NULL,'',0),(5,'后台',0,'backend',1,'元',1505785688,NULL,NULL,'',0),(6,'微信',0,'cloudPayWechat',2,'元',1505785688,NULL,NULL,'plugin.cloud_pay_set',0),(7,'支付宝',0,'cloudPayAlipay',2,'元',1505785688,NULL,NULL,'',0),(8,'现金',0,'cashPay',1,'元',1505785688,NULL,NULL,'',0),(9,'微信',0,'wechatApp',2,'元',1505785688,NULL,NULL,'shop_app.pay.weixin',0),(10,'支付宝',0,'alipayApp',2,'元',NULL,NULL,NULL,'shop_app.pay.alipay',0),(11,'门店',0,'store',1,'元',NULL,NULL,NULL,'',0),(12,'微信支付-YZ',0,'yunPayWechat',2,'元',1505785687,NULL,NULL,'plugin.yun_pay_set',0),(14,'找人代付',0,'anotherPay',2,'元',1505785687,NULL,NULL,'shop.pay.another',0);
/*!40000 ALTER TABLE `ims_yz_pay_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_pay_withdraw_order`
--

DROP TABLE IF EXISTS `ims_yz_pay_withdraw_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_pay_withdraw_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `int_order_no` varchar(32) DEFAULT NULL,
  `out_order_no` varchar(32) NOT NULL DEFAULT '',
  `trade_no` varchar(255) DEFAULT NULL,
  `price` decimal(14,2) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL,
  `created_at` int(13) NOT NULL DEFAULT '0',
  `updated_at` int(13) NOT NULL DEFAULT '0',
  `deleted_at` int(13) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付提现单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_pay_withdraw_order`
--

LOCK TABLES `ims_yz_pay_withdraw_order` WRITE;
/*!40000 ALTER TABLE `ims_yz_pay_withdraw_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_pay_withdraw_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_permission`
--

DROP TABLE IF EXISTS `ims_yz_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `item_id` int(11) NOT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_permission`
--

LOCK TABLES `ims_yz_permission` WRITE;
/*!40000 ALTER TABLE `ims_yz_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_plugin_article`
--

DROP TABLE IF EXISTS `ims_yz_plugin_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_plugin_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `desc` text,
  `thumb` text,
  `content` longtext NOT NULL,
  `virtual_created_at` int(11) DEFAULT NULL,
  `author` varchar(20) NOT NULL DEFAULT '',
  `virtual_read_num` int(11) DEFAULT NULL,
  `read_num` int(11) NOT NULL DEFAULT '0',
  `virtual_like_num` int(11) DEFAULT NULL,
  `like_num` int(11) NOT NULL DEFAULT '0',
  `link` varchar(255) DEFAULT NULL,
  `per_person_per_day` int(11) DEFAULT NULL,
  `total_per_person` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `bonus_total` int(11) DEFAULT NULL,
  `bonus_total_now` int(11) DEFAULT NULL,
  `no_copy_url` tinyint(1) DEFAULT NULL,
  `no_share` tinyint(1) DEFAULT NULL,
  `no_share_to_friend` tinyint(1) DEFAULT NULL,
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `report_enabled` tinyint(1) DEFAULT NULL,
  `advs_type` tinyint(1) DEFAULT NULL,
  `advs_title` varchar(255) DEFAULT NULL,
  `advs_title_footer` varchar(255) DEFAULT NULL,
  `advs_link` varchar(255) DEFAULT NULL,
  `advs` text,
  `state` tinyint(1) DEFAULT NULL,
  `state_wechat` tinyint(1) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_plugin_article`
--

LOCK TABLES `ims_yz_plugin_article` WRITE;
/*!40000 ALTER TABLE `ims_yz_plugin_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_plugin_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_plugin_article_category`
--

DROP TABLE IF EXISTS `ims_yz_plugin_article_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_plugin_article_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `member_level_limit` int(11) DEFAULT NULL,
  `commission_level_limit` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_plugin_article_category`
--

LOCK TABLES `ims_yz_plugin_article_category` WRITE;
/*!40000 ALTER TABLE `ims_yz_plugin_article_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_plugin_article_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_plugin_article_log`
--

DROP TABLE IF EXISTS `ims_yz_plugin_article_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_plugin_article_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `read_num` int(11) DEFAULT NULL,
  `like_num` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `uniacid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_plugin_article_log`
--

LOCK TABLES `ims_yz_plugin_article_log` WRITE;
/*!40000 ALTER TABLE `ims_yz_plugin_article_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_plugin_article_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_plugin_article_report`
--

DROP TABLE IF EXISTS `ims_yz_plugin_article_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_plugin_article_report` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_plugin_article_report`
--

LOCK TABLES `ims_yz_plugin_article_report` WRITE;
/*!40000 ALTER TABLE `ims_yz_plugin_article_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_plugin_article_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_plugin_article_share`
--

DROP TABLE IF EXISTS `ims_yz_plugin_article_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_plugin_article_share` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `share_uid` int(11) DEFAULT NULL,
  `click_uid` int(11) DEFAULT NULL,
  `click_time` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `credit` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_plugin_article_share`
--

LOCK TABLES `ims_yz_plugin_article_share` WRITE;
/*!40000 ALTER TABLE `ims_yz_plugin_article_share` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_plugin_article_share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_plugin_goods_assistant`
--

DROP TABLE IF EXISTS `ims_yz_plugin_goods_assistant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_plugin_goods_assistant` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL,
  `itemid` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_plugin_goods_assistant`
--

LOCK TABLES `ims_yz_plugin_goods_assistant` WRITE;
/*!40000 ALTER TABLE `ims_yz_plugin_goods_assistant` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_plugin_goods_assistant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_point_log`
--

DROP TABLE IF EXISTS `ims_yz_point_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_point_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `member_id` int(11) NOT NULL DEFAULT '0',
  `point` decimal(10,2) NOT NULL DEFAULT '0.00',
  `point_income_type` tinyint(2) NOT NULL DEFAULT '0',
  `point_mode` tinyint(5) NOT NULL DEFAULT '0',
  `before_point` decimal(10,2) NOT NULL DEFAULT '0.00',
  `after_point` decimal(10,2) NOT NULL DEFAULT '0.00',
  `remark` varchar(255) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `deleted_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_point_log`
--

LOCK TABLES `ims_yz_point_log` WRITE;
/*!40000 ALTER TABLE `ims_yz_point_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_point_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_point_love_set`
--

DROP TABLE IF EXISTS `ims_yz_point_love_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_point_love_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL COMMENT '所属公众号',
  `member_id` int(11) NOT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` int(11) NOT NULL,
  `updated_at` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_point_love_set`
--

LOCK TABLES `ims_yz_point_love_set` WRITE;
/*!40000 ALTER TABLE `ims_yz_point_love_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_point_love_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_point_transfer`
--

DROP TABLE IF EXISTS `ims_yz_point_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_point_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uniacid` int(11) DEFAULT NULL COMMENT '公众号ID',
  `transferor` int(11) DEFAULT NULL COMMENT '转让者',
  `recipient` int(11) DEFAULT NULL COMMENT '被转让者',
  `value` decimal(14,2) DEFAULT NULL COMMENT '转让值',
  `created_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '-1失败，1成功',
  `updated_at` int(11) NOT NULL,
  `order_sn` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_point_transfer`
--

LOCK TABLES `ims_yz_point_transfer` WRITE;
/*!40000 ALTER TABLE `ims_yz_point_transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_point_transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_qq_config`
--

DROP TABLE IF EXISTS `ims_yz_qq_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_qq_config` (
  `config_id` int(11) NOT NULL,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `app_key` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_secret` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_qq_config`
--

LOCK TABLES `ims_yz_qq_config` WRITE;
/*!40000 ALTER TABLE `ims_yz_qq_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_qq_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_resend_express`
--

DROP TABLE IF EXISTS `ims_yz_resend_express`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_resend_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refund_id` int(11) NOT NULL DEFAULT '0',
  `express_company_name` varchar(50) NOT NULL DEFAULT '0',
  `express_sn` varchar(50) NOT NULL DEFAULT '0',
  `express_code` varchar(20) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  `deleted_at` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`refund_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_resend_express`
--

LOCK TABLES `ims_yz_resend_express` WRITE;
/*!40000 ALTER TABLE `ims_yz_resend_express` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_resend_express` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_return_express`
--

DROP TABLE IF EXISTS `ims_yz_return_express`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_return_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refund_id` int(11) NOT NULL DEFAULT '0',
  `express_company_name` varchar(50) NOT NULL DEFAULT '0',
  `express_sn` varchar(50) NOT NULL DEFAULT '0',
  `express_code` varchar(20) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`refund_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_return_express`
--

LOCK TABLES `ims_yz_return_express` WRITE;
/*!40000 ALTER TABLE `ims_yz_return_express` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_return_express` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_role`
--

DROP TABLE IF EXISTS `ims_yz_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  `deleted_at` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_role`
--

LOCK TABLES `ims_yz_role` WRITE;
/*!40000 ALTER TABLE `ims_yz_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_search_filtering`
--

DROP TABLE IF EXISTS `ims_yz_search_filtering`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_search_filtering` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '过滤名称',
  `parent_id` int(11) DEFAULT '0',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '值',
  `grade` int(11) NOT NULL DEFAULT '0' COMMENT '等级',
  `is_show` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_uniacid` (`uniacid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_search_filtering`
--

LOCK TABLES `ims_yz_search_filtering` WRITE;
/*!40000 ALTER TABLE `ims_yz_search_filtering` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_search_filtering` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_setting`
--

DROP TABLE IF EXISTS `ims_yz_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shop',
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_setting`
--

LOCK TABLES `ims_yz_setting` WRITE;
/*!40000 ALTER TABLE `ims_yz_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_slide`
--

DROP TABLE IF EXISTS `ims_yz_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_slide` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `slide_name` varchar(100) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `display_order` int(11) DEFAULT '0',
  `enabled` tinyint(3) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_slide`
--

LOCK TABLES `ims_yz_slide` WRITE;
/*!40000 ALTER TABLE `ims_yz_slide` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_sms_send_limit`
--

DROP TABLE IF EXISTS `ims_yz_sms_send_limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_sms_send_limit` (
  `sms_id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` tinyint(1) NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  `deleted_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`sms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_sms_send_limit`
--

LOCK TABLES `ims_yz_sms_send_limit` WRITE;
/*!40000 ALTER TABLE `ims_yz_sms_send_limit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_sms_send_limit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_street`
--

DROP TABLE IF EXISTS `ims_yz_street`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_street` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `areaname` varchar(255) DEFAULT NULL,
  `parentid` int(10) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=654328016 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_street`
--

LOCK TABLES `ims_yz_street` WRITE;
/*!40000 ALTER TABLE `ims_yz_street` DISABLE KEYS */;
INSERT INTO `ims_yz_street` VALUES (451228212,'三只羊乡',451228,4),(451228213,'龙湾乡',451228,4),(451228214,'菁盛乡',451228,4),(451228217,'加贵乡',451228,4),(451228218,'拉仁乡',451228,4),(451228219,'九渡乡',451228,4),(451229100,'大化镇',451229,4),(451229101,'都阳镇',451229,4),(451229102,'岩滩镇',451229,4),(451229200,'共和乡',451229,4),(451229201,'贡川乡',451229,4),(451229202,'百马乡',451229,4),(451229203,'古河乡',451229,4),(451229204,'古文乡',451229,4),(451229205,'江南乡',451229,4),(451229206,'羌圩乡',451229,4),(451229207,'乙圩乡',451229,4),(451229208,'北景乡',451229,4),(451229210,'板升乡',451229,4),(451229211,'七百弄乡',451229,4),(451229213,'雅龙乡',451229,4),(451229214,'六也乡',451229,4),(451281100,'庆远镇',451281,4),(451281101,'三岔镇',451281,4),(451281102,'洛西镇',451281,4),(451281103,'怀远镇',451281,4),(451281104,'德胜镇',451281,4),(451281105,'石别镇',451281,4),(451281106,'北山镇',451281,4),(451281200,'祥贝乡',451281,4),(451281201,'刘三姐乡',451281,4),(451281203,'屏南乡',451281,4),(451281204,'洛东乡',451281,4),(451281207,'福龙瑶族乡',451281,4),(451281208,'北牙瑶族乡',451281,4),(451281210,'同德乡',451281,4),(451281211,'安马乡',451281,4),(451281213,'龙头乡',451281,4),(451302001,'城东街道',451302,4),(451302002,'城北街道',451302,4),(451302003,'河西街道',451302,4),(451302004,'八一街道',451302,4),(451302101,'凤凰镇',451302,4),(451302102,'良江镇',451302,4),(451302103,'小平阳镇',451302,4),(451302104,'迁江镇',451302,4),(451302105,'石陵镇',451302,4),(451302106,'平阳镇',451302,4),(451302107,'蒙村镇',451302,4),(451302201,'三五乡',451302,4),(451302202,'五山乡',451302,4),(451302203,'陶邓乡',451302,4),(451302204,'桥巩乡',451302,4),(451302205,'良塘乡',451302,4),(451302206,'七洞乡',451302,4),(451302209,'城厢乡',451302,4),(451302211,'寺山乡',451302,4),(451302212,'石牙乡',451302,4),(451302213,'南泗乡',451302,4),(451302214,'高安乡',451302,4),(451302215,'大湾乡',451302,4),(451302216,'正龙乡',451302,4),(451302401,'红河农场',451302,4),(451302402,'来华投资区',451302,4),(451321100,'城关镇',451321,4),(451321101,'大塘镇',451321,4),(451321102,'思练镇',451321,4),(451321103,'红渡镇',451321,4),(451321104,'古蓬镇',451321,4),(451321201,'马泗乡',451321,4),(451321202,'欧洞乡',451321,4),(451321203,'安东乡',451321,4),(451321204,'果遂乡',451321,4),(451321205,'新圩乡',451321,4),(451321206,'遂意乡',451321,4),(451321207,'北更乡',451321,4),(451322100,'象州镇',451322,4),(451322101,'石龙镇',451322,4),(451322102,'运江镇',451322,4),(451322103,'寺村镇',451322,4),(451322104,'中平镇',451322,4),(451322105,'罗秀镇',451322,4),(451322106,'大乐镇',451322,4),(451322200,'马坪乡',451322,4),(451322201,'妙皇乡',451322,4),(451322202,'百丈乡',451322,4),(451322203,'水晶乡',451322,4),(451323100,'武宣镇',451323,4),(451323101,'桐岭镇',451323,4),(451323102,'通挽镇',451323,4),(451323103,'东乡镇',451323,4),(451323104,'三里镇',451323,4),(451323105,'二塘镇',451323,4),(451323106,'黄茆镇',451323,4),(451323201,'禄新乡',451323,4),(451323202,'思灵乡',451323,4),(451323204,'金鸡乡',451323,4),(451323401,'黔江农场',451323,4),(451324100,'金秀镇',451324,4),(451324101,'桐木镇',451324,4),(451324102,'头排镇',451324,4),(451324200,'三角乡',451324,4),(451324201,'忠良乡',451324,4),(451324202,'罗香乡',451324,4),(451324203,'长垌乡',451324,4),(451324204,'大樟乡',451324,4),(451324205,'六巷乡',451324,4),(451324207,'三江乡',451324,4),(451381100,'岭南镇',451381,4),(451381200,'北泗乡',451381,4),(451381201,'河里乡',451381,4),(451402001,'太平街道',451402,4),(451402002,'江南街道',451402,4),(451402003,'石景林街道',451402,4),(451402101,'新和镇',451402,4),(451402102,'濑湍镇',451402,4),(451402103,'江州镇',451402,4),(451402104,'左州镇',451402,4),(451402105,'那隆镇',451402,4),(451402106,'驮卢镇',451402,4),(451402201,'罗白乡',451402,4),(451402202,'板利乡',451402,4),(451402400,'新和华侨农场',451402,4),(451402401,'左江华侨农场',451402,4),(451421100,'新宁镇',451421,4),(451421101,'渠黎镇',451421,4),(451421102,'渠旧镇',451421,4),(451421103,'柳桥镇',451421,4),(451421104,'东门镇',451421,4),(451421105,'山圩镇',451421,4),(451421106,'中东镇',451421,4),(451421107,'东罗镇',451421,4),(451421201,'龙头乡',451421,4),(451421202,'岜盆乡',451421,4),(451421203,'昌平乡',451421,4),(451421400,'广西农垦国有山圩农场',451421,4),(451422100,'城中镇',451422,4),(451422101,'爱店镇',451422,4),(451422102,'明江镇',451422,4),(451422103,'海渊镇',451422,4),(451422201,'亭亮乡',451422,4),(451422202,'寨安乡',451422,4),(451422203,'峙浪乡',451422,4),(451422204,'东安乡',451422,4),(451422205,'板棍乡',451422,4),(451422206,'北江乡',451422,4),(451422207,'桐棉乡',451422,4),(451422208,'那堪乡',451422,4),(451422209,'那楠乡',451422,4),(451422401,'国营宁明华侨农场',451422,4),(451422402,'国营天西华侨农场',451422,4),(451423100,'龙州镇',451423,4),(451423101,'下冻镇',451423,4),(451423102,'水口镇',451423,4),(451423103,'金龙镇',451423,4),(451423104,'响水镇',451423,4),(451423201,'八角乡',451423,4),(451423202,'上降乡',451423,4),(451423203,'彬桥乡',451423,4),(451423204,'上龙乡',451423,4),(451423205,'武德乡',451423,4),(451423206,'逐卜乡',451423,4),(451423207,'上金乡',451423,4),(451424100,'桃城镇',451424,4),(451424101,'全茗镇',451424,4),(451424102,'雷平镇',451424,4),(451424103,'硕龙镇',451424,4),(451424104,'下雷镇',451424,4),(451424200,'五山乡',451424,4),(451424201,'龙门乡',451424,4),(451424202,'昌明乡',451424,4),(451424203,'福隆乡',451424,4),(451424204,'那岭乡',451424,4),(451424205,'恩城乡',451424,4),(451424206,'榄圩乡',451424,4),(451424207,'宝圩乡',451424,4),(451424208,'堪圩乡',451424,4),(451424400,'国营桃城华侨农场',451424,4),(451425100,'天等镇',451425,4),(451425101,'龙茗镇',451425,4),(451425102,'进结镇',451425,4),(451425103,'向都镇',451425,4),(451425104,'东平镇',451425,4),(451425200,'都康乡',451425,4),(451425201,'宁干乡',451425,4),(451425202,'驮堪乡',451425,4),(451425203,'福新乡',451425,4),(451425205,'进远乡',451425,4),(451425206,'上映乡',451425,4),(451425207,'把荷乡',451425,4),(451425208,'小山乡',451425,4),(451481100,'凭祥镇',451481,4),(451481101,'友谊镇',451481,4),(451481102,'上石镇',451481,4),(451481103,'夏石镇',451481,4),(451481400,'广西凭祥综合保税区',451481,4),(460105001,'秀英街道',460105,4),(460105002,'海秀街道',460105,4),(460105100,'长流镇',460105,4),(460105101,'西秀镇',460105,4),(460105102,'海秀镇',460105,4),(460105103,'石山镇',460105,4),(460105104,'永兴镇',460105,4),(460105105,'东山镇',460105,4),(460106001,'中山街道',460106,4),(460106002,'滨海街道',460106,4),(460106003,'金贸街道',460106,4),(460106004,'大同街道',460106,4),(460106005,'海垦街道',460106,4),(460106006,'金宇街道',460106,4),(460106100,'城西镇',460106,4),(460106101,'龙桥镇',460106,4),(460106102,'新坡镇',460106,4),(460106103,'遵谭镇',460106,4),(460106104,'龙泉镇',460106,4),(460107001,'国兴街道',460107,4),(460107002,'府城街道',460107,4),(460107003,'滨江街道',460107,4),(460107004,'凤翔街道',460107,4),(460107101,'龙塘镇',460107,4),(460107102,'云龙镇',460107,4),(460107103,'红旗镇',460107,4),(460107104,'三门坡镇',460107,4),(460107105,'大坡镇',460107,4),(460107106,'甲子镇',460107,4),(460107107,'旧州镇',460107,4),(460107400,'国营红明农场',460107,4),(460107401,'国营东昌农场',460107,4),(460107500,'省岭脚热带作物场',460107,4),(460107501,'省长昌煤矿',460107,4),(460108001,'海府街道',460108,4),(460108002,'蓝天街道',460108,4),(460108003,'博爱街道',460108,4),(460108004,'海甸街道',460108,4),(460108005,'人民路街道',460108,4),(460108006,'白龙街道',460108,4),(460108007,'和平南街道',460108,4),(460108008,'白沙街道',460108,4),(460108009,'新埠街道',460108,4),(460108101,'灵山镇',460108,4),(460108102,'演丰镇',460108,4),(460108103,'三江镇',460108,4),(460108104,'大致坡镇',460108,4),(460108400,'国营桂林洋农场',460108,4),(460108401,'国营三江农场',460108,4),(460108500,'罗牛山农场',460108,4),(500101001,'高笋塘街道',500101,4),(500101017,'太白街道',500101,4),(500101018,'牌楼街道',500101,4),(500101019,'双河口街道',500101,4),(500101020,'龙都街道',500101,4),(500101021,'周家坝街道',500101,4),(500101022,'沙河街道',500101,4),(500101023,'钟鼓楼街道',500101,4),(500101024,'百安坝街道',500101,4),(500101025,'五桥街道',500101,4),(500101026,'陈家坝街道',500101,4),(500101109,'小周镇',500101,4),(500101110,'大周镇',500101,4),(500101123,'新乡镇',500101,4),(500101132,'孙家镇',500101,4),(500101134,'高峰镇',500101,4),(500101135,'龙沙镇',500101,4),(500101136,'响水镇',500101,4),(500101137,'武陵镇',500101,4),(500101138,'瀼渡镇',500101,4),(500101139,'甘宁镇',500101,4),(500101140,'天城镇',500101,4),(500101141,'熊家镇',500101,4),(500101142,'高梁镇',500101,4),(500101143,'李河镇',500101,4),(500101144,'分水镇',500101,4),(500101145,'余家镇',500101,4),(500101146,'后山镇',500101,4),(500101147,'弹子镇',500101,4),(500101148,'长岭镇',500101,4),(500101149,'新田镇',500101,4),(500101150,'白羊镇',500101,4),(500101151,'龙驹镇',500101,4),(500101152,'走马镇',500101,4),(500101153,'罗田镇',500101,4),(500101154,'太龙镇',500101,4),(500101155,'长滩镇',500101,4),(500101156,'太安镇',500101,4),(500101157,'白土镇',500101,4),(500101158,'郭村镇',500101,4),(500101201,'柱山乡',500101,4),(500101212,'铁峰乡',500101,4),(500101225,'溪口乡',500101,4),(500101226,'长坪乡',500101,4),(500101227,'燕山乡',500101,4),(500101234,'梨树乡',500101,4),(500101237,'普子乡',500101,4),(500101238,'地宝土家族乡',500101,4),(500101239,'恒合土家族乡',500101,4),(500101244,'黄柏乡',500101,4),(500101245,'九池乡',500101,4),(500101247,'茨竹乡',500101,4),(500102006,'敦仁街道',500102,4),(500102007,'崇义街道',500102,4),(500102008,'荔枝街道',500102,4),(500102009,'江北街道',500102,4),(500102010,'江东街道',500102,4),(500102011,'李渡街道',500102,4),(500102012,'龙桥街道',500102,4),(500102013,'白涛街道',500102,4),(500102103,'南沱镇',500102,4),(500102107,'青羊镇',500102,4),(500102118,'百胜镇',500102,4),(500102119,'珍溪镇',500102,4),(500102120,'清溪镇',500102,4),(500102121,'焦石镇',500102,4),(500102122,'马武镇',500102,4),(500102123,'龙潭镇',500102,4),(500102124,'蔺市镇',500102,4),(500102125,'新妙镇',500102,4),(500102126,'石沱镇',500102,4),(500102127,'义和镇',500102,4),(500102204,'罗云乡',500102,4),(500102206,'大木乡',500102,4),(500102208,'武陵山乡',500102,4),(500102216,'大顺乡',500102,4),(500102217,'增福乡',500102,4),(500102222,'同乐乡',500102,4),(500103001,'七星岗街道',500103,4),(500103003,'解放碑街道',500103,4),(500103004,'两路口街道',500103,4),(500103005,'上清寺街道',500103,4),(500103007,'菜园坝街道',500103,4),(500103008,'南纪门街道',500103,4),(500103009,'望龙门街道',500103,4),(500103010,'朝天门街道',500103,4),(500103011,'大溪沟街道',500103,4),(500103012,'大坪街道',500103,4),(500103013,'化龙桥街道',500103,4),(500103014,'石油路街道',500103,4),(500104001,'新山村街道',500104,4),(500104002,'跃进村街道',500104,4),(500104003,'九宫庙街道',500104,4),(500104004,'茄子溪街道',500104,4),(500104005,'春晖路街道',500104,4),(500104101,'八桥镇',500104,4),(500104102,'建胜镇',500104,4),(500104103,'跳磴镇',500104,4),(500105001,'华新街街道',500105,4),(500105002,'江北城街道',500105,4),(500105003,'石马河街道',500105,4),(500105004,'大石坝街道',500105,4),(500105005,'寸滩街道',500105,4),(500105006,'观音桥街道',500105,4),(500105007,'五里店街道',500105,4),(500105008,'郭家沱街道',500105,4),(500105009,'铁山坪街道',500105,4),(500105100,'鱼嘴镇人民政府',500105,4),(500105101,'复盛镇人民政府',500105,4),(500105102,'五宝镇人民政府',500105,4),(500106001,'小龙坎街道',500106,4),(500106002,'沙坪坝街道',500106,4),(500106003,'渝碚路街道',500106,4),(500106004,'磁器口街道',500106,4),(500106005,'童家桥街道',500106,4),(500106006,'石井坡街道',500106,4),(500106007,'詹家溪街道',500106,4),(500106008,'井口街道',500106,4),(500106009,'歌乐山街道',500106,4),(500106010,'山洞街道',500106,4),(500106011,'新桥街道',500106,4),(500106012,'天星桥街道',500106,4),(500106013,'土湾街道',500106,4),(500106014,'覃家岗街道',500106,4),(500106015,'陈家桥街道',500106,4),(500106016,'虎溪街道',500106,4),(500106017,'西永街道',500106,4),(500106018,'联芳街道',500106,4),(500106102,'井口镇',500106,4),(500106103,'歌乐山镇',500106,4),(500106104,'青木关镇',500106,4),(500106105,'凤凰镇',500106,4),(500106106,'回龙坝镇',500106,4),(500106108,'曾家镇',500106,4),(500106111,'土主镇',500106,4),(500106112,'中梁镇',500106,4),(500107001,'杨家坪街道',500107,4),(500107002,'黄桷坪街道',500107,4),(500107003,'谢家湾街道',500107,4),(500107004,'石坪桥街道',500107,4),(500107005,'石桥铺街道',500107,4),(500107006,'中梁山街道',500107,4),(500107007,'渝州路街道',500107,4),(500107100,'九龙镇',500107,4),(500107102,'华岩镇',500107,4),(500107103,'含谷镇',500107,4),(500107104,'金凤镇',500107,4),(500107105,'白市驿镇',500107,4),(500107106,'走马镇',500107,4),(500107107,'石板镇',500107,4),(500107108,'巴福镇',500107,4),(500107109,'陶家镇',500107,4),(500107110,'西彭镇',500107,4),(500107111,'铜罐驿镇',500107,4),(500108001,'铜元局街道',500108,4),(500108002,'花园路街道',500108,4),(500108003,'南坪街道',500108,4),(500108004,'海棠溪街道',500108,4),(500108005,'龙门浩街道',500108,4),(500108006,'弹子石街道',500108,4),(500108007,'南山街道',500108,4),(500108008,'天文街道',500108,4),(500108101,'南坪镇',500108,4),(500108102,'涂山镇',500108,4),(500108103,'鸡冠石镇',500108,4),(500108105,'峡口镇',500108,4),(500108106,'长生桥镇',500108,4),(500108107,'迎龙镇',500108,4),(500108108,'广阳镇',500108,4),(500109001,'天生街道',500109,4),(500109002,'朝阳街道',500109,4),(500109003,'北温泉街道',500109,4),(500109004,'东阳街道',500109,4),(500109005,'龙凤桥街道',500109,4),(500109101,'歇马镇',500109,4),(500109102,'澄江镇',500109,4),(500109103,'蔡家岗镇',500109,4),(500109104,'童家溪镇',500109,4),(500109105,'天府镇',500109,4),(500109108,'施家梁镇',500109,4),(500109109,'水土镇',500109,4),(500109110,'静观镇',500109,4),(500109111,'柳荫镇',500109,4),(500109112,'复兴镇',500109,4),(500109113,'三圣镇',500109,4),(500109116,'金刀峡镇',500109,4),(500112002,'双龙湖街道',500112,4),(500112004,'回兴街道',500112,4),(500112007,'鸳鸯街道',500112,4),(500112008,'翠云街道',500112,4),(500112009,'人和街道',500112,4),(500112010,'天宫殿街道',500112,4),(500112011,'龙溪街道',500112,4),(500112012,'龙山街道',500112,4),(500112013,'龙塔街道',500112,4),(500112014,'大竹林街道',500112,4),(500112015,'悦来街道',500112,4),(500112016,'两路街道',500112,4),(500112017,'双凤桥街道',500112,4),(500112018,'王家街道',500112,4),(500112019,'礼嘉街道',500112,4),(500112129,'玉峰山镇',500112,4),(500112131,'龙兴镇',500112,4),(500112133,'统景镇',500112,4),(500112135,'大湾镇',500112,4),(500112138,'兴隆镇',500112,4),(500112139,'木耳镇',500112,4),(500112140,'茨竹镇',500112,4),(500112141,'古路镇',500112,4),(500112142,'石船镇',500112,4),(500112143,'大盛镇',500112,4),(500112144,'洛碛镇',500112,4),(500113003,'龙洲湾街道',500113,4),(500113004,'鱼洞街道',500113,4),(500113005,'花溪街道',500113,4),(500113006,'李家沱街道',500113,4),(500113007,'南泉街道',500113,4),(500113008,'一品街道',500113,4),(500113009,'南彭街道',500113,4),(500113010,'惠民街道',500113,4),(500113103,'界石镇',500113,4),(500113107,'安澜镇',500113,4),(500113108,'跳石镇',500113,4),(500113109,'木洞镇',500113,4),(500113110,'双河口镇',500113,4),(500113111,'麻柳嘴镇',500113,4),(500113112,'丰盛镇',500113,4),(500113113,'二圣镇',500113,4),(500113114,'东泉镇',500113,4),(500113115,'姜家镇',500113,4),(500113116,'天星寺镇',500113,4),(500113117,'接龙镇',500113,4),(500113118,'石滩镇',500113,4),(500113119,'石龙镇',500113,4),(500114001,'城东街道',500114,4),(500114002,'城南街道',500114,4),(500114003,'城西街道',500114,4),(500114004,'正阳街道',500114,4),(500114005,'舟白街道',500114,4),(500114006,'冯家街道',500114,4),(500114105,'阿蓬江镇',500114,4),(500114106,'石会镇',500114,4),(500114107,'黑溪镇',500114,4),(500114108,'黄溪镇',500114,4),(500114109,'黎水镇',500114,4),(500114110,'金溪镇',500114,4),(500114111,'马喇镇',500114,4),(500114112,'濯水镇',500114,4),(500114113,'石家镇',500114,4),(500114114,'鹅池镇',500114,4),(500114117,'小南海镇',500114,4),(500114119,'邻鄂镇',500114,4),(500114245,'中塘乡',500114,4),(500114246,'蓬东乡',500114,4),(500114247,'沙坝乡',500114,4),(500114248,'白石乡',500114,4),(500114249,'杉岭乡',500114,4),(500114250,'太极乡',500114,4),(500114251,'水田乡',500114,4),(500114252,'白土乡',500114,4),(500114253,'金洞乡',500114,4),(500114254,'五里乡',500114,4),(500114255,'水市乡',500114,4),(500114256,'新华乡',500114,4),(500115001,'凤城街道',500115,4),(500115002,'晏家街道',500115,4),(500115003,'江南街道',500115,4),(500115004,'渡舟街道',500115,4),(500115123,'邻封镇',500115,4),(500115124,'但渡镇',500115,4),(500115125,'云集镇',500115,4),(500115126,'长寿湖镇',500115,4),(500115127,'双龙镇',500115,4),(500115128,'龙河镇',500115,4),(500115129,'石堰镇',500115,4),(500115130,'云台镇',500115,4),(500115131,'海棠镇',500115,4),(500115132,'葛兰镇',500115,4),(500115133,'新市镇',500115,4),(500115135,'八颗镇',500115,4),(500115136,'洪湖镇',500115,4),(500115137,'万顺镇',500115,4),(500223001,'桂林街道',500223,4),(500223002,'梓潼街道',500223,4),(500223101,'上和镇',500223,4),(500223102,'龙形镇',500223,4),(500223103,'古溪镇',500223,4),(500223104,'宝龙镇',500223,4),(500223107,'玉溪镇',500223,4),(500223108,'米心镇',500223,4),(500223109,'群力镇',500223,4),(500223110,'双江镇',500223,4),(500223112,'花岩镇',500223,4),(500223113,'柏梓镇',500223,4),(500223114,'崇龛镇',500223,4),(500223115,'塘坝镇',500223,4),(500223116,'新胜镇',500223,4),(500223117,'太安镇',500223,4),(500223119,'小渡镇',500223,4),(500223120,'卧佛镇',500223,4),(500223121,'五桂镇',500223,4),(500223122,'田家镇',500223,4),(500223123,'别口镇',500223,4),(500223124,'寿桥镇',500223,4),(500224001,'巴川街道',500224,4),(500224002,'东城街道',500224,4),(500224003,'南城街道',500224,4),(500224101,'土桥镇',500224,4),(500224103,'二坪镇',500224,4),(500224104,'水口镇',500224,4),(500224105,'安居镇',500224,4),(500224106,'白羊镇',500224,4),(500224107,'平滩镇',500224,4),(500224110,'石鱼镇',500224,4),(500224111,'福果镇',500224,4),(500224113,'维新镇',500224,4),(500224114,'高楼镇',500224,4),(500224115,'大庙镇',500224,4),(500224116,'围龙镇',500224,4),(500224117,'华兴镇',500224,4),(500224120,'永嘉镇',500224,4),(500224121,'安溪镇',500224,4),(500224122,'西河镇',500224,4),(500224124,'太平镇',500224,4),(500224125,'旧县镇',500224,4),(500224126,'虎峰镇',500224,4),(500224127,'少云镇',500224,4),(500224128,'蒲吕镇',500224,4),(500224129,'侣俸镇',500224,4),(500224130,'小林镇',500224,4),(500224131,'双山镇',500224,4),(500224132,'庆隆镇',500224,4),(500226001,'昌元街道',500226,4),(500226002,'昌洲街道',500226,4),(500226003,'广顺街道',500226,4),(500226004,'双河街道',500226,4),(500226005,'安富街道',500226,4),(500226006,'峰高街道',500226,4),(500226103,'直升镇',500226,4),(500226104,'路孔镇',500226,4),(500226106,'清江镇',500226,4),(500226107,'仁义镇',500226,4),(500226108,'河包镇',500226,4),(500226109,'古昌镇',500226,4),(500226110,'吴家镇',500226,4),(500226111,'观胜镇',500226,4),(500226112,'铜鼓镇',500226,4),(500226113,'清流镇',500226,4),(500226114,'盘龙镇',500226,4),(500226115,'远觉镇',500226,4),(500226117,'清升镇',500226,4),(500226118,'荣隆镇',500226,4),(500226119,'龙集镇',500226,4),(500227001,'璧城街道',500227,4),(500227003,'璧泉街道',500227,4),(500227004,'青杠街道',500227,4),(500227005,'来凤街道',500227,4),(500227006,'丁家街道',500227,4),(500227007,'大路街道',500227,4),(500227100,'八塘镇',500227,4),(500227101,'七塘镇',500227,4),(500227103,'河边镇',500227,4),(500227104,'福禄镇',500227,4),(500227105,'大兴镇',500227,4),(500227106,'正兴镇',500227,4),(500227108,'广普镇',500227,4),(500227109,'三合镇',500227,4),(500227110,'健龙镇',500227,4),(500228001,'梁平县梁山街道',500228,4),(500228002,'梁平县双桂街道',500228,4),(500228101,'仁贤镇',500228,4),(500228102,'礼让镇',500228,4),(500228103,'云龙镇',500228,4),(500228104,'屏锦镇',500228,4),(500228106,'袁驿镇',500228,4),(500228107,'新盛镇',500228,4),(500228108,'福禄镇',500228,4),(500228109,'金带镇',500228,4),(500228110,'聚奎镇',500228,4),(500228111,'明达镇',500228,4),(500228112,'荫平镇',500228,4),(500228113,'和林镇',500228,4),(500228114,'回龙镇',500228,4),(500228115,'碧山镇',500228,4),(500228116,'虎城镇',500228,4),(500228117,'七星镇',500228,4),(500228118,'龙门镇',500228,4),(500228119,'文化镇',500228,4),(500228120,'合兴镇',500228,4),(500228121,'石安镇',500228,4),(500228122,'柏家镇',500228,4),(500228123,'大观镇',500228,4),(500228124,'竹山镇',500228,4),(500228125,'蟠龙镇',500228,4),(500228200,'安胜乡',500228,4),(500228201,'铁门乡',500228,4),(500228202,'龙胜乡',500228,4),(500228203,'复平乡',500228,4),(500228205,'紫照乡',500228,4),(500228206,'城北乡',500228,4),(500228207,'曲水乡',500228,4),(500228400,'梁平县农场',500228,4),(500228401,'梁平县双桂工业园区',500228,4),(500229001,'葛城街道',500229,4),(500229002,'复兴街道',500229,4),(500229102,'巴山镇',500229,4),(500229103,'坪坝镇',500229,4),(500229104,'庙坝镇',500229,4),(500229105,'明通镇',500229,4),(500229106,'修齐镇',500229,4),(500229107,'高观镇',500229,4),(500229108,'高燕镇',500229,4),(500229201,'龙田乡',500229,4),(500229202,'北屏乡',500229,4),(500229204,'高楠乡',500229,4),(500229205,'左岚乡',500229,4),(500229208,'沿河乡',500229,4),(500229210,'双河乡',500229,4),(500229211,'蓼子乡',500229,4),(500229212,'鸡鸣乡',500229,4),(500229213,'咸宜乡',500229,4),(500229214,'周溪乡',500229,4),(500229216,'明中乡',500229,4),(500229217,'治平乡',500229,4),(500229219,'岚天乡',500229,4),(500229220,'厚坪乡',500229,4),(500229221,'河鱼乡',500229,4),(500229223,'东安乡',500229,4),(500230001,'三合街道',500230,4),(500230002,'名山街道',500230,4),(500230101,'虎威镇',500230,4),(500230102,'社坛镇',500230,4),(500230103,'三元镇',500230,4),(500230104,'许明寺镇',500230,4),(500230105,'董家镇',500230,4),(500230106,'树人镇',500230,4),(500230107,'十直镇',500230,4),(500230109,'高家镇',500230,4),(500230110,'兴义镇',500230,4),(500230111,'双路镇',500230,4),(500230112,'江池镇',500230,4),(500230113,'龙河镇',500230,4),(500230114,'武平镇',500230,4),(500230115,'包鸾镇',500230,4),(500230116,'湛普镇',500230,4),(500230118,'南天湖镇',500230,4),(500230119,'保合镇',500230,4),(500230120,'兴龙镇',500230,4),(500230121,'仁沙镇',500230,4),(500230122,'龙孔镇',500230,4),(500230123,'暨龙镇',500230,4),(500230124,'双龙镇',500230,4),(500230125,'仙女湖镇',500230,4),(500230202,'青龙乡',500230,4),(500230206,'太平坝乡',500230,4),(500230207,'都督乡',500230,4),(500230209,'栗子乡',500230,4),(500230210,'三建乡',500230,4),(500231100,'桂溪镇',500231,4),(500231101,'新民镇',500231,4),(500231102,'沙坪镇',500231,4),(500231103,'周嘉镇',500231,4),(500231104,'普顺镇',500231,4),(500231105,'永安镇',500231,4),(500231106,'高安镇',500231,4),(500231107,'高峰镇',500231,4),(500231108,'五洞镇',500231,4),(500231109,'澄溪镇',500231,4),(500231110,'太平镇',500231,4),(500231111,'鹤游镇',500231,4),(500231112,'坪山镇',500231,4),(500231113,'砚台镇',500231,4),(500231114,'曹回镇',500231,4),(500231115,'杠家镇',500231,4),(500231116,'包家镇',500231,4),(500231117,'白家镇',500231,4),(500231118,'永平镇',500231,4),(500231119,'三溪镇',500231,4),(500231120,'裴兴镇',500231,4),(500231201,'长龙乡',500231,4),(500231202,'沙河乡',500231,4),(500231204,'大石乡',500231,4),(500231205,'黄沙乡',500231,4),(500232100,'巷口镇',500232,4),(500232101,'火炉镇',500232,4),(500232102,'白马镇',500232,4),(500232103,'鸭江镇',500232,4),(500232104,'长坝镇',500232,4),(500232105,'江口镇',500232,4),(500232106,'平桥镇',500232,4),(500232107,'羊角镇',500232,4),(500232108,'仙女山镇',500232,4),(500232109,'桐梓镇',500232,4),(500232110,'土坎镇',500232,4),(500232111,'和顺镇',500232,4),(500232200,'凤来乡',500232,4),(500232202,'庙垭乡',500232,4),(500232203,'石桥苗族土家族乡',500232,4),(500232204,'双河乡',500232,4),(500232205,'黄莺乡',500232,4),(500232206,'沧沟乡',500232,4),(500232207,'文复苗族土家族乡',500232,4),(500232208,'土地乡',500232,4),(500232209,'白云乡',500232,4),(500232210,'后坪苗族土家族乡',500232,4),(500232211,'浩口苗族仡佬族乡',500232,4),(500232212,'接龙乡',500232,4),(500232213,'赵家乡',500232,4),(500232214,'铁矿乡',500232,4),(500233100,'忠州镇',500233,4),(500233101,'新生镇',500233,4),(500233102,'任家镇',500233,4),(500233103,'乌杨镇',500233,4),(500233104,'洋渡镇',500233,4),(500233105,'东溪镇',500233,4),(500233106,'复兴镇',500233,4),(500233107,'石宝镇',500233,4),(500233108,'汝溪镇',500233,4),(500233109,'野鹤镇',500233,4),(500233110,'官坝镇',500233,4),(500233111,'石黄镇',500233,4),(500233112,'马灌镇',500233,4),(500233113,'金鸡镇',500233,4),(500233114,'新立镇',500233,4),(500233115,'双桂镇',500233,4),(500233116,'拔山镇',500233,4),(500233117,'花桥镇',500233,4),(500233118,'永丰镇',500233,4),(500233119,'三汇镇',500233,4),(500233120,'白石镇',500233,4),(500233122,'黄金镇',500233,4),(500233201,'善广乡',500233,4),(500233203,'石子乡',500233,4),(500233204,'磨子土家族乡',500233,4),(500233206,'涂井乡',500233,4),(500233208,'金声乡',500233,4),(500233210,'兴峰乡',500233,4),(500234002,'镇东街道',500234,4),(500234003,'丰乐街道',500234,4),(500234004,'白鹤街道',500234,4),(500234005,'汉丰街道',500234,4),(500234006,'文峰街道',500234,4),(500234007,'云枫街道',500234,4),(500234008,'赵家街道',500234,4),(500234103,'郭家镇',500234,4),(500234106,'温泉镇',500234,4),(500234107,'铁桥镇',500234,4),(500234112,'南雅镇',500234,4),(500234114,'和谦镇',500234,4),(500234116,'镇安镇',500234,4),(500234118,'竹溪镇',500234,4),(500234119,'渠口镇',500234,4),(500234120,'厚坝镇',500234,4),(500234122,'高桥镇',500234,4),(500234127,'义和镇',500234,4),(500234128,'大进镇',500234,4),(500234129,'长沙镇',500234,4),(500234130,'临江镇',500234,4),(500234132,'敦好镇',500234,4),(500234133,'中和镇',500234,4),(500234134,'岳溪镇',500234,4),(500234135,'南门镇',500234,4),(500234136,'河堰镇',500234,4),(500234137,'九龙山镇',500234,4),(500234138,'白桥镇',500234,4),(500234139,'天和镇',500234,4),(500234140,'金峰镇',500234,4),(500234141,'谭家镇',500234,4),(500234142,'巫山镇',500234,4),(500234143,'大德镇',500234,4),(500234202,'白泉乡',500234,4),(500234203,'关面乡',500234,4),(500234204,'满月乡',500234,4),(500234211,'五通乡',500234,4),(500234215,'麻柳乡',500234,4),(500234216,'紫水乡',500234,4),(500234225,'三汇口乡',500234,4),(500235001,'双江街道',500235,4),(500235002,'青龙街道',500235,4),(500235003,'人和街道',500235,4),(500235004,'盘龙街道',500235,4),(500235105,'龙角镇',500235,4),(500235107,'故陵镇',500235,4),(500235108,'红狮镇',500235,4),(500235115,'路阳镇',500235,4),(500235116,'农坝镇',500235,4),(500235118,'渠马镇',500235,4),(500235121,'黄石镇',500235,4),(500235122,'巴阳镇',500235,4),(500235123,'沙市镇',500235,4),(500235124,'鱼泉镇',500235,4),(500235125,'凤鸣镇',500235,4),(500235127,'宝坪镇',500235,4),(500235128,'南溪镇',500235,4),(500235129,'双土镇',500235,4),(500235130,'桑坪镇',500235,4),(500235131,'江口镇',500235,4),(500235132,'高阳镇',500235,4),(500235133,'平安镇',500235,4),(500235135,'云阳镇',500235,4),(500235136,'云安镇',500235,4),(500235137,'栖霞镇',500235,4),(500235138,'双龙镇',500235,4),(500235139,'泥溪镇',500235,4),(500235140,'票草镇',500235,4),(500235141,'养鹿镇',500235,4),(500235142,'水口镇',500235,4),(500235143,'堰坪镇',500235,4),(500235144,'龙洞镇',500235,4),(500235145,'后叶镇',500235,4),(500235208,'外郎乡',500235,4),(500235210,'耀灵乡',500235,4),(500235215,'新津乡',500235,4),(500235216,'普安乡',500235,4),(500235218,'洞鹿乡',500235,4),(500235219,'石门乡',500235,4),(500235220,'大阳乡',500235,4),(500235239,'上坝乡',500235,4),(500235242,'清水土家族自治乡',500235,4),(500236116,'永安镇',500236,4),(500236117,'白帝镇',500236,4),(500236118,'草堂镇',500236,4),(500236119,'汾河镇',500236,4),(500236120,'康乐镇',500236,4),(500236121,'大树镇',500236,4),(500236122,'竹园镇',500236,4),(500236123,'公平镇',500236,4),(500236124,'朱衣镇',500236,4),(500236125,'甲高镇',500236,4),(500236126,'羊市镇',500236,4),(500236127,'吐祥镇',500236,4),(500236128,'兴隆镇',500236,4),(500236129,'青龙镇',500236,4),(500236130,'新民镇',500236,4),(500236131,'永乐镇',500236,4),(500236132,'安坪镇',500236,4),(500236133,'五马镇',500236,4),(500236134,'青莲镇',500236,4),(500236265,'岩湾乡',500236,4),(500236266,'平安乡',500236,4),(500236267,'红土乡',500236,4),(500236269,'石岗乡',500236,4),(500236270,'康坪乡',500236,4),(500236272,'太和土家族乡',500236,4),(500236274,'鹤峰乡',500236,4),(500236275,'冯坪乡',500236,4),(500236276,'长安土家族乡',500236,4),(500236277,'龙桥土家族乡',500236,4),(500236278,'云雾土家族乡',500236,4),(500236400,'白帝城风景区管理委员会',500236,4),(500237001,'高唐街道',500237,4),(500237002,'龙门街道',500237,4),(500237101,'庙宇镇',500237,4),(500237102,'大昌镇',500237,4),(500237103,'福田镇',500237,4),(500237104,'龙溪镇',500237,4),(500237105,'双龙镇',500237,4),(500237106,'官阳镇',500237,4),(500237107,'骡坪镇',500237,4),(500237108,'抱龙镇',500237,4),(500237109,'官渡镇',500237,4),(500237110,'铜鼓镇',500237,4),(500237111,'巫峡镇',500237,4),(500237200,'红椿乡',500237,4),(500237207,'两坪乡',500237,4),(500237208,'曲尺乡',500237,4),(500237210,'建坪乡',500237,4),(500237211,'大溪乡',500237,4),(500237214,'金坪乡',500237,4),(500237216,'平河乡',500237,4),(500237219,'当阳乡',500237,4),(500237222,'竹贤乡',500237,4),(500237225,'三溪乡',500237,4),(500237227,'培石乡',500237,4),(500237229,'笃坪乡',500237,4),(500237231,'邓家乡',500237,4),(500238001,'宁河街道',500238,4),(500238002,'柏杨街道',500238,4),(500238100,'城厢镇',500238,4),(500238101,'凤凰镇',500238,4),(500238102,'宁厂镇',500238,4),(500238103,'上磺镇',500238,4),(500238104,'古路镇',500238,4),(500238105,'文峰镇',500238,4),(500238106,'徐家镇',500238,4),(500238107,'白鹿镇',500238,4),(500238108,'尖山镇',500238,4),(500238109,'下堡镇',500238,4),(500238110,'峰灵镇',500238,4),(500238111,'塘坊镇',500238,4),(500238112,'朝阳镇',500238,4),(500238113,'田坝镇',500238,4),(500238114,'通城镇',500238,4),(500238204,'胜利乡',500238,4),(500238205,'菱角乡',500238,4),(500238207,'大河乡',500238,4),(500238208,'天星乡',500238,4),(500238210,'长桂乡',500238,4),(500238212,'蒲莲乡',500238,4),(500238226,'鱼鳞乡',500238,4),(500238227,'乌龙乡',500238,4),(500238234,'中岗乡',500238,4),(500238237,'花台乡',500238,4),(500238239,'兰英乡',500238,4),(500238240,'双阳乡',500238,4),(500238242,'中梁乡',500238,4),(500238243,'天元乡',500238,4),(500238245,'土城乡',500238,4),(500238400,'红池坝经济开发区',500238,4),(500240100,'南宾镇',500240,4),(500240101,'西沱镇',500240,4),(500240102,'下路镇',500240,4),(500240103,'悦崃镇',500240,4),(500240104,'临溪镇',500240,4),(500240105,'黄水镇',500240,4),(500240106,'马武镇',500240,4),(500240107,'沙子镇',500240,4),(500240108,'王场镇',500240,4),(500240109,'沿溪镇',500240,4),(500240110,'龙沙镇',500240,4),(500240111,'鱼池镇',500240,4),(500240112,'三河镇',500240,4),(500240113,'大歇镇',500240,4),(500240114,'桥头镇',500240,4),(500240115,'万朝镇',500240,4),(500240116,'冷水镇',500240,4),(500240203,'黎场乡',500240,4),(500240204,'三星乡',500240,4),(500240205,'六塘乡',500240,4),(500240207,'三益乡',500240,4),(500240208,'王家乡',500240,4),(500240209,'河嘴乡',500240,4),(500240210,'石家乡',500240,4),(500240212,'枫木乡',500240,4),(500240213,'中益乡',500240,4),(500240214,'洗新乡',500240,4),(500240215,'黄鹤乡',500240,4),(500240216,'龙潭乡',500240,4),(500240217,'新乐乡',500240,4),(500240218,'金铃乡',500240,4),(500240219,'金竹乡',500240,4),(500241001,'中和街道',500241,4),(500241002,'乌杨街道',500241,4),(500241003,'平凯街道',500241,4),(500241102,'清溪场镇',500241,4),(500241103,'隘口镇',500241,4),(500241104,'溶溪镇',500241,4),(500241105,'官庄镇',500241,4),(500241106,'龙池镇',500241,4),(500241107,'石堤镇',500241,4),(500241108,'峨溶镇',500241,4),(500241109,'洪安镇',500241,4),(500241110,'雅江镇',500241,4),(500241111,'石耶镇',500241,4),(500241112,'梅江镇',500241,4),(500241113,'兰桥镇',500241,4),(500241114,'膏田镇',500241,4),(500241115,'溪口镇',500241,4),(500241116,'妙泉镇',500241,4),(500241117,'宋农镇',500241,4),(500241118,'里仁镇',500241,4),(500241119,'钟灵镇',500241,4),(500241201,'孝溪乡',500241,4),(500241207,'海洋乡',500241,4),(500241208,'大溪乡',500241,4),(500241211,'涌洞乡',500241,4),(500241214,'中平乡',500241,4),(500241215,'岑溪乡',500241,4),(500242100,'桃花源镇',500242,4),(500242101,'龙潭镇',500242,4),(500242102,'麻旺镇',500242,4),(500242103,'酉酬镇',500242,4),(500242104,'大溪镇',500242,4),(500242105,'兴隆镇',500242,4),(500242106,'黑水镇',500242,4),(500242107,'丁市镇',500242,4),(500242108,'龚滩镇',500242,4),(500242109,'李溪镇',500242,4),(500242110,'泔溪镇',500242,4),(500242111,'酉水河镇',500242,4),(500242112,'苍岭镇',500242,4),(500242113,'小河镇',500242,4),(500242114,'板溪镇',500242,4),(500242200,'涂市乡',500242,4),(500242202,'铜鼓乡',500242,4),(500242204,'可大乡',500242,4),(500242205,'偏柏乡',500242,4),(500242206,'五福乡',500242,4),(500242207,'木叶乡',500242,4),(500242208,'毛坝乡',500242,4),(500242209,'花田乡',500242,4),(500242210,'后坪乡',500242,4),(500242211,'天馆乡',500242,4),(500242212,'宜居乡',500242,4),(500242213,'万木乡',500242,4),(500242214,'两罾乡',500242,4),(500242215,'板桥乡',500242,4),(500242216,'官清乡',500242,4),(500242217,'南腰界乡',500242,4),(500242218,'车田乡',500242,4),(500242219,'腴地乡',500242,4),(500242220,'清泉乡',500242,4),(500242221,'庙溪乡',500242,4),(500242222,'浪坪乡',500242,4),(500242223,'双泉乡',500242,4),(500242224,'楠木乡',500242,4),(500243001,'汉葭街道',500243,4),(500243002,'绍庆街道',500243,4),(500243003,'靛水街道',500243,4),(500243101,'保家镇',500243,4),(500243102,'郁山镇',500243,4),(500243103,'高谷镇',500243,4),(500243104,'桑柘镇',500243,4),(500243105,'鹿角镇',500243,4),(500243106,'黄家镇',500243,4),(500243107,'普子镇',500243,4),(500243108,'龙射镇',500243,4),(500243109,'连湖镇',500243,4),(500243110,'万足镇',500243,4),(500243111,'平安镇',500243,4),(500243112,'长生镇',500243,4),(500243113,'新田镇',500243,4),(500243114,'鞍子镇',500243,4),(500243201,'岩东乡',500243,4),(500243202,'鹿鸣乡',500243,4),(500243204,'棣棠乡',500243,4),(500243205,'太原乡',500243,4),(500243206,'三义乡',500243,4),(500243207,'联合乡',500243,4),(500243208,'石柳乡',500243,4),(500243209,'龙溪乡',500243,4),(500243210,'走马乡',500243,4),(500243211,'芦塘乡',500243,4),(500243213,'乔梓乡',500243,4),(500243216,'梅子垭乡',500243,4),(500243217,'诸佛乡',500243,4),(500243218,'小厂乡',500243,4),(500243219,'桐楼乡',500243,4),(500243222,'善感乡',500243,4),(500243223,'双龙乡',500243,4),(500243224,'石盘乡',500243,4),(500243225,'大垭乡',500243,4),(500243226,'润溪乡',500243,4),(500243227,'朗溪乡',500243,4),(500243228,'龙塘乡',500243,4),(510104020,'督院街街道',510104,4),(510104021,'盐市口街道',510104,4),(510104022,'春熙路街道',510104,4),(510104023,'书院街街道',510104,4),(510104024,'合江亭街道',510104,4),(510104025,'水井坊街道',510104,4),(510104026,'牛市口街道',510104,4),(510104027,'龙舟路街道',510104,4),(510104028,'双桂路街道',510104,4),(510104029,'莲新街道',510104,4),(510104030,'沙河街道',510104,4),(510104031,'东光街道',510104,4),(510104032,'狮子山街道',510104,4),(510104035,'成龙路街道',510104,4),(510104036,'柳江街道',510104,4),(510104037,'三圣街道',510104,4),(510105001,'太升路街道',510105,4),(510105002,'草市街街道',510105,4),(510105003,'西御河街道',510105,4),(510105004,'汪家拐街道',510105,4),(510105005,'少城街道',510105,4),(510105006,'新华西路街道',510105,4),(510105007,'草堂街道',510105,4),(510105008,'府南街道',510105,4),(510105009,'光华街道',510105,4),(510105010,'东坡街道',510105,4),(510105011,'金沙街道',510105,4),(510105012,'黄田坝街道',510105,4),(510105013,'苏坡街道',510105,4),(510105014,'文家街道',510105,4),(510106024,'西安路街道',510106,4),(510106025,'西华街道',510106,4),(510106026,'人民北路街道',510106,4),(510106027,'荷花池街道',510106,4),(510106030,'驷马桥街道',510106,4),(510106031,'茶店子街道',510106,4),(510106032,'抚琴街道',510106,4),(510106035,'九里堤街道',510106,4),(510106036,'五块石街道',510106,4),(510106037,'黄忠街道',510106,4),(510106038,'营门口街道',510106,4),(510106040,'金泉街道',510106,4),(510106041,'沙河源街道',510106,4),(510106042,'天回镇街道',510106,4),(510106043,'凤凰山街道',510106,4),(510107001,'浆洗街街道',510107,4),(510107004,'望江路街道',510107,4),(510107005,'玉林街道',510107,4),(510107006,'跳伞塔街道',510107,4),(510107007,'火车南站街道',510107,4),(510107008,'双楠街道',510107,4),(510107009,'晋阳街道',510107,4),(510107010,'红牌楼街道',510107,4),(510107011,'簇桥街道',510107,4),(510107012,'机投桥街道',510107,4),(510107013,'金花桥街道',510107,4),(510107014,'簇锦街道',510107,4),(510107015,'华兴街道',510107,4),(510107061,'芳草街道',510107,4),(510107062,'肖家河街道',510107,4),(510107063,'石羊场街道',510107,4),(510107064,'桂溪街道',510107,4),(510108002,'猛追湾街道',510108,4),(510108004,'双桥子街道',510108,4),(510108005,'建设路街道',510108,4),(510108006,'府青路街道',510108,4),(510108007,'二仙桥街道',510108,4),(510108008,'跳蹬河街道',510108,4),(510108009,'新鸿路街道',510108,4),(510108010,'双水碾街道',510108,4),(510108011,'万年场街道',510108,4),(510108012,'桃蹊路街道',510108,4),(510108013,'圣灯街道',510108,4),(510108014,'保和街道',510108,4),(510108015,'青龙街道',510108,4),(510108016,'龙潭街道',510108,4),(510112001,'龙泉街道',510112,4),(510112002,'大面街道',510112,4),(510112003,'十陵街道',510112,4),(510112004,'同安街道',510112,4),(510112102,'洛带镇',510112,4),(510112104,'西河镇',510112,4),(510112108,'洪安镇',510112,4),(510112109,'柏合镇',510112,4),(510112110,'茶店镇',510112,4),(510112111,'黄土镇',510112,4),(510112115,'山泉镇',510112,4),(510112200,'万兴乡',510112,4),(510113001,'红阳街道',510113,4),(510113002,'大弯街道',510113,4),(510113102,'弥牟镇',510113,4),(510113103,'大同镇',510113,4),(510113104,'城厢镇',510113,4),(510113105,'祥福镇',510113,4),(510113106,'姚渡镇',510113,4),(510113108,'清泉镇',510113,4),(510113110,'龙王镇',510113,4),(510113202,'福洪乡',510113,4),(510113203,'人和乡',510113,4),(510114001,'大丰街道',510114,4),(510114003,'三河街道',510114,4),(510114100,'新都镇',510114,4),(510114102,'石板滩镇',510114,4),(510114103,'新繁镇',510114,4),(510114104,'新民镇',510114,4),(510114106,'泰兴镇',510114,4),(510114108,'斑竹园镇',510114,4),(510114109,'清流镇',510114,4),(510114111,'马家镇',510114,4),(510114112,'龙桥镇',510114,4),(510114114,'木兰镇',510114,4),(510114116,'军屯镇',510114,4),(510115001,'柳城街道',510115,4),(510115002,'公平街道',510115,4),(510115003,'涌泉街道',510115,4),(510115004,'天府街道',510115,4),(510115101,'和盛镇',510115,4),(510115102,'永盛镇',510115,4),(510115103,'金马镇',510115,4),(510115104,'永宁镇',510115,4),(510115105,'万春镇',510115,4),(510115106,'寿安镇',510115,4),(510121001,'赵镇街道',510121,4),(510121101,'三星镇',510121,4),(510121102,'清江镇',510121,4),(510121103,'官仓镇',510121,4),(510121104,'淮口镇',510121,4),(510121105,'白果镇',510121,4),(510121106,'五凤镇',510121,4),(510121108,'高板镇',510121,4),(510121109,'三溪镇',510121,4),(510121110,'福兴镇',510121,4),(510121111,'金龙镇',510121,4),(510121112,'赵家镇',510121,4),(510121113,'竹篙镇',510121,4),(510121114,'广兴镇',510121,4),(510121115,'隆盛镇',510121,4),(510121116,'转龙镇',510121,4),(510121117,'土桥镇',510121,4),(510121118,'云合镇',510121,4),(510121119,'又新镇',510121,4),(510121200,'栖贤乡',510121,4),(510121203,'平桥乡',510121,4),(510122001,'东升街道',510122,4),(510122002,'西航港街道',510122,4),(510122003,'华阳镇街道',510122,4),(510122004,'中和街道',510122,4),(510122005,'九江街道',510122,4),(510122006,'黄甲街道',510122,4),(510122007,'公兴街道',510122,4),(510122101,'太平镇',510122,4),(510122102,'永兴镇',510122,4),(510122106,'籍田镇',510122,4),(510122107,'正兴镇',510122,4),(510122108,'彭镇',510122,4),(510122109,'大林镇',510122,4),(510122110,'煎茶镇',510122,4),(510122111,'黄龙溪镇',510122,4),(510122112,'永安镇',510122,4),(510122115,'黄水镇',510122,4),(510122116,'金桥镇',510122,4),(510122119,'胜利镇',510122,4),(510122120,'新兴镇',510122,4),(510122121,'兴隆镇',510122,4),(510122122,'万安镇',510122,4),(510122123,'白沙镇',510122,4),(510122124,'三星镇',510122,4),(510122125,'合江镇',510122,4),(510124001,'郫筒街道',510124,4),(510124019,'合作街道',510124,4),(510124101,'团结镇',510124,4),(510124102,'犀浦镇',510124,4),(510124103,'花园镇',510124,4),(510124104,'唐昌镇',510124,4),(510124105,'安德镇',510124,4),(510124106,'三道堰镇',510124,4),(510124107,'安靖镇',510124,4),(510124108,'红光镇',510124,4),(510124110,'新民场镇',510124,4),(510124112,'德源镇',510124,4),(510124115,'友爱镇',510124,4),(510124117,'古城镇',510124,4),(510124118,'唐元镇',510124,4),(510129100,'晋原镇',510129,4),(510129101,'王泗镇',510129,4),(510129103,'新场镇',510129,4),(510129104,'悦来镇',510129,4),(510129105,'安仁镇',510129,4),(510129106,'出江镇',510129,4),(510129107,'花水湾镇',510129,4),(510129108,'西岭镇',510129,4),(510129109,'斜源镇',510129,4),(510129110,'董场镇',510129,4),(510129111,'韩场镇',510129,4),(510129112,'三岔镇',510129,4),(510129113,'上安镇',510129,4),(510129114,'苏家镇',510129,4),(510129115,'青霞镇',510129,4),(510129116,'沙渠镇',510129,4),(510129118,'蔡场镇',510129,4),(510129202,'雾山乡',510129,4),(510129203,'金星乡',510129,4),(510129205,'鹤鸣乡',510129,4),(510131100,'鹤山镇',510131,4),(510131101,'大塘镇',510131,4),(510131102,'寿安镇',510131,4),(510131103,'朝阳湖镇',510131,4),(510131104,'西来镇',510131,4),(510131105,'大兴镇',510131,4),(510131106,'甘溪镇',510131,4),(510131107,'成佳镇',510131,4),(510131200,'复兴乡',510131,4),(510131201,'光明乡',510131,4),(510131202,'白云乡',510131,4),(510131203,'长秋乡',510131,4),(510132100,'五津镇',510132,4),(510132101,'花桥镇',510132,4),(510132102,'花源镇',510132,4),(510132103,'金华镇',510132,4),(510132104,'普兴镇',510132,4),(510132105,'兴义镇',510132,4),(510132106,'新平镇',510132,4),(510132107,'方兴镇',510132,4),(510132108,'安西镇',510132,4),(510132109,'永商镇',510132,4),(510132110,'邓双镇',510132,4),(510132202,'文井乡',510132,4),(510181001,'滨江街道',510181,4),(510181100,'灌口镇',510181,4),(510181101,'幸福镇',510181,4),(510181102,'蒲阳镇',510181,4),(510181103,'聚源镇',510181,4),(510181104,'崇义镇',510181,4),(510181105,'天马镇',510181,4),(510181106,'石羊镇',510181,4),(510181107,'柳街镇',510181,4),(510181108,'玉堂镇',510181,4),(510181109,'中兴镇',510181,4),(510181110,'青城山镇',510181,4),(510181111,'龙池镇',510181,4),(510181112,'胥家镇',510181,4),(510181113,'安龙镇',510181,4),(510181114,'大观镇',510181,4),(510181115,'紫坪铺镇',510181,4),(510181116,'翠月湖镇',510181,4),(510181202,'向峨乡',510181,4),(510181211,'虹口乡',510181,4),(510182100,'天彭镇',510182,4),(510182101,'龙门山镇',510182,4),(510182102,'新兴镇',510182,4),(510182103,'丽春镇',510182,4),(510182104,'九尺镇',510182,4),(510182105,'蒙阳镇',510182,4),(510182106,'通济镇',510182,4),(510182107,'丹景山镇',510182,4),(510182108,'隆丰镇',510182,4),(510182109,'敖平镇',510182,4),(510182110,'磁峰镇',510182,4),(510182111,'桂花镇',510182,4),(510182113,'军乐镇',510182,4),(510182114,'三界镇',510182,4),(510182116,'小渔洞镇',510182,4),(510182118,'红岩镇',510182,4),(510182120,'升平镇',510182,4),(510182121,'白鹿镇',510182,4),(510182123,'葛仙山镇',510182,4),(510182126,'致和镇',510182,4),(510183100,'临邛镇',510183,4),(510183101,'羊安镇',510183,4),(510183102,'牟礼镇',510183,4),(510183103,'桑园镇',510183,4),(510183104,'平乐镇',510183,4),(510183105,'夹关镇',510183,4),(510183106,'火井镇',510183,4),(510183107,'水口镇',510183,4),(510183108,'固驿镇',510183,4),(510183109,'冉义镇',510183,4),(510183110,'回龙镇',510183,4),(510183111,'高埂镇',510183,4),(510183112,'前进镇',510183,4),(510183113,'高何镇',510183,4),(510183115,'临济镇',510183,4),(510183116,'卧龙镇',510183,4),(510183118,'天台山镇',510183,4),(510183120,'宝林镇',510183,4),(510183201,'茶园乡',510183,4),(510183206,'道佐乡',510183,4),(510183209,'油榨乡',510183,4),(510183211,'南宝乡',510183,4),(510183212,'大同乡',510183,4),(510183214,'孔明乡',510183,4),(510184001,'崇阳街道',510184,4),(510184101,'三江镇',510184,4),(510184102,'江源镇',510184,4),(510184103,'羊马镇',510184,4),(510184104,'廖家镇',510184,4),(510184105,'元通镇',510184,4),(510184106,'观胜镇',510184,4),(510184107,'怀远镇',510184,4),(510184108,'三郎镇',510184,4),(510184109,'街子镇',510184,4),(510184110,'文井江镇',510184,4),(510184111,'王场镇',510184,4),(510184112,'白头镇',510184,4),(510184113,'道明镇',510184,4),(510184114,'隆兴镇',510184,4),(510184116,'大划镇',510184,4),(510184117,'崇平镇',510184,4),(510184118,'梓潼镇',510184,4),(510184119,'桤泉镇',510184,4),(510184201,'锦江乡',510184,4),(510184202,'公议乡',510184,4),(510184206,'鸡冠山乡',510184,4),(510184208,'济协乡',510184,4),(510184209,'燎原乡',510184,4),(510184211,'集贤乡',510184,4),(510302001,'五星街街道',510302,4),(510302002,'东兴寺街道',510302,4),(510302003,'新街街道',510302,4),(510302004,'郭家坳街街道',510302,4),(510302005,'丹桂街道',510302,4),(510302006,'学苑街道',510302,4),(510302101,'仲权镇',510302,4),(510302102,'舒坪镇',510302,4),(510302103,'荣边镇',510302,4),(510302201,'红旗乡',510302,4),(510302202,'高峰乡',510302,4),(510302203,'农团乡',510302,4),(510302204,'漆树乡',510302,4),(510303001,'筱溪街道',510303,4),(510303002,'贡井街道',510303,4),(510303100,'艾叶镇',510303,4),(510303101,'建设镇',510303,4),(510303102,'长土镇',510303,4),(510303104,'龙潭镇',510303,4),(510303105,'桥头镇',510303,4),(510303106,'五宝镇',510303,4),(510303107,'莲花镇',510303,4),(510303108,'成佳镇',510303,4),(510303109,'白庙镇',510303,4),(510303200,'章佳乡',510303,4),(510303201,'牛尾乡',510303,4),(510304001,'大安街道',510304,4),(510304002,'龙井街道',510304,4),(510304003,'马冲口街道',510304,4),(510304004,'凉高山街道',510304,4),(510304100,'大山铺镇',510304,4),(510304102,'团结镇',510304,4),(510304103,'三多寨镇',510304,4),(510304104,'何市镇',510304,4),(510304105,'新店镇',510304,4),(510304106,'新民镇',510304,4),(510304107,'牛佛镇',510304,4),(510304108,'庙坝镇',510304,4),(510304109,'回龙镇',510304,4),(510304204,'永嘉乡',510304,4),(510304205,'和平乡',510304,4),(510304207,'凤凰乡',510304,4),(510311100,'沿滩镇',510311,4),(510311101,'卫坪镇',510311,4),(510311102,'兴隆镇',510311,4),(510311105,'富全镇',510311,4),(510311106,'永安镇',510311,4),(510311107,'联络镇',510311,4),(510311108,'邓关镇',510311,4),(510311109,'王井镇',510311,4),(510311110,'黄市镇',510311,4),(510311111,'瓦市镇',510311,4),(510311112,'仙市镇',510311,4),(510311203,'刘山乡',510311,4),(510311204,'九洪乡',510311,4),(510321100,'旭阳镇',510321,4),(510321102,'双石镇',510321,4),(510321103,'望佳镇',510321,4),(510321107,'鼎新镇',510321,4),(510321110,'乐德镇',510321,4),(510321111,'过水镇',510321,4),(510321112,'古文镇',510321,4),(510321113,'河口镇',510321,4),(510321114,'新桥镇',510321,4),(510321115,'正紫镇',510321,4),(510321116,'度佳镇',510321,4),(510321117,'东佳镇',510321,4),(510321118,'长山镇',510321,4),(510321119,'保华镇',510321,4),(510321120,'留佳镇',510321,4),(510321121,'来牟镇',510321,4),(510321122,'双古镇',510321,4),(510321123,'观山镇',510321,4),(510321124,'高山镇',510321,4),(510321125,'东兴镇',510321,4),(510321126,'铁厂镇',510321,4),(510321202,'金花乡',510321,4),(510321203,'雷音乡',510321,4),(510321204,'古佳乡',510321,4),(510321205,'于佳乡',510321,4),(510321206,'复兴乡',510321,4),(510321207,'墨林乡',510321,4),(510322100,'富世镇',510322,4),(510322101,'东湖镇',510322,4),(510322102,'琵琶镇',510322,4),(510322103,'狮市镇',510322,4),(510322104,'骑龙镇',510322,4),(510322107,'互助镇',510322,4),(510322111,'代寺镇',510322,4),(510322112,'中石镇',510322,4),(510322113,'童寺镇',510322,4),(510322114,'古佛镇',510322,4),(510322115,'永年镇',510322,4),(510322116,'彭庙镇',510322,4),(510322117,'兜山镇',510322,4),(510322118,'板桥镇',510322,4),(510322119,'福善镇',510322,4),(510322120,'李桥镇',510322,4),(510322121,'赵化镇',510322,4),(510322122,'安溪镇',510322,4),(510322123,'万寿镇',510322,4),(510322124,'飞龙镇',510322,4),(510322125,'怀德镇',510322,4),(510322126,'长滩镇',510322,4),(510322200,'龙万乡',510322,4),(510322201,'宝庆乡',510322,4),(510322202,'富和乡',510322,4),(510322203,'石道乡',510322,4),(510402001,'大渡口街道',510402,4),(510402002,'炳草岗街道',510402,4),(510402003,'南山街道',510402,4),(510402004,'向阳村街道',510402,4),(510402005,'弄弄坪街道',510402,4),(510402006,'枣子坪街道',510402,4),(510402007,'长寿路街道',510402,4),(510402008,'密地街道',510402,4),(510402009,'瓜子坪街道',510402,4),(510402100,'银江镇',510402,4),(510403001,'清香坪街道',510403,4),(510403002,'玉泉街道',510403,4),(510403003,'河门口街道',510403,4),(510403004,'陶家渡街道',510403,4),(510403005,'摩梭河街道',510403,4),(510403006,'大宝鼎街道',510403,4),(510403100,'格里坪镇',510403,4),(510411001,'大河中路街道',510411,4),(510411100,'仁和镇',510411,4),(510411101,'平地镇',510411,4),(510411102,'大田镇',510411,4),(510411103,'福田镇',510411,4),(510411104,'同德镇',510411,4),(510411105,'金江镇',510411,4),(510411106,'布德镇',510411,4),(510411107,'前进镇',510411,4),(510411200,'大龙潭彝族乡',510411,4),(510411201,'啊喇彝族乡',510411,4),(510411202,'总发乡',510411,4),(510411203,'太平乡',510411,4),(510411204,'务本乡',510411,4),(510411205,'中坝乡',510411,4),(510421100,'攀莲镇',510421,4),(510421101,'丙谷镇',510421,4),(510421102,'得石镇',510421,4),(510421103,'撒莲镇',510421,4),(510421104,'垭口镇',510421,4),(510421105,'白马镇',510421,4),(510421106,'普威镇',510421,4),(510421200,'草场乡',510421,4),(510421201,'湾丘彝族乡',510421,4),(510421202,'白坡彝族乡',510421,4),(510421203,'麻陇彝族乡',510421,4),(510421204,'新山傈僳族乡',510421,4),(510422100,'桐子林镇',510422,4),(510422101,'红格镇',510422,4),(510422102,'渔门镇',510422,4),(510422103,'永兴镇',510422,4),(510422200,'益民乡',510422,4),(510422201,'新九乡',510422,4),(510422202,'和爱彝族乡',510422,4),(510422203,'红果彝族乡',510422,4),(510422204,'鳡鱼彝族乡',510422,4),(510422205,'共和乡',510422,4),(510422206,'国胜乡',510422,4),(510422207,'红宝苗族彝族乡',510422,4),(510422208,'惠民乡',510422,4),(510422209,'箐河傈僳族乡',510422,4),(510422210,'温泉彝族乡',510422,4),(510422211,'格萨拉彝族乡',510422,4),(510502001,'南城街道',510502,4),(510502002,'北城街道',510502,4),(510502003,'大山坪街道',510502,4),(510502004,'邻玉街道',510502,4),(510502005,'蓝田街道',510502,4),(510502006,'茜草街道',510502,4),(510502007,'华阳街道',510502,4),(510502008,'张坝景区办事处',510502,4),(510502102,'泰安镇',510502,4),(510502103,'黄舣镇',510502,4),(510502104,'弥陀镇',510502,4),(510502105,'况场镇',510502,4),(510502106,'通滩镇',510502,4),(510502107,'江北镇',510502,4),(510502108,'方山镇',510502,4),(510502109,'丹林镇',510502,4),(510502110,'分水岭镇',510502,4),(510502111,'石寨镇',510502,4),(510502400,'高新技术开发区',510502,4),(510502401,'酒业集中发展区',510502,4),(510502402,'轻工业园区',510502,4),(510503001,'安富街道',510503,4),(510503002,'永宁街道',510503,4),(510503100,'大渡口镇',510503,4),(510503101,'护国镇',510503,4),(510503102,'打古镇',510503,4),(510503103,'上马镇',510503,4),(510503104,'合面镇',510503,4),(510503105,'棉花坡镇',510503,4),(510503106,'丰乐镇',510503,4),(510503107,'白节镇',510503,4),(510503108,'天仙镇',510503,4),(510503109,'新乐镇',510503,4),(510503110,'渠坝镇',510503,4),(510503111,'龙车镇',510503,4),(510503400,'泸州化工园区',510503,4),(510504001,'小市街道',510504,4),(510504002,'高坝街道',510504,4),(510504003,'红星街道',510504,4),(510504004,'莲花池街道',510504,4),(510504100,'罗汉镇',510504,4),(510504101,'鱼塘镇',510504,4),(510504102,'石洞镇',510504,4),(510504103,'胡市镇',510504,4),(510504104,'特兴镇',510504,4),(510504105,'安宁镇',510504,4),(510504106,'双加镇',510504,4),(510504200,'金龙乡',510504,4),(510504201,'长安乡',510504,4),(510521100,'福集镇',510521,4),(510521101,'嘉明镇',510521,4),(510521102,'喻寺镇',510521,4),(510521103,'得胜镇',510521,4),(510521105,'牛滩镇',510521,4),(510521106,'兆雅镇',510521,4),(510521107,'玄滩镇',510521,4),(510521108,'太伏镇',510521,4),(510521109,'云龙镇',510521,4),(510521110,'石桥镇',510521,4),(510521111,'毗卢镇',510521,4),(510521112,'奇峰镇',510521,4),(510521113,'潮河镇',510521,4),(510521114,'云锦镇',510521,4),(510521115,'立石镇',510521,4),(510521116,'百和镇',510521,4),(510521117,'天兴镇',510521,4),(510521118,'方洞镇',510521,4),(510521123,'海潮镇',510521,4),(510521400,'泸县城西工业园区',510521,4),(510521401,'泸县城北工业园区',510521,4),(510522100,'合江镇',510522,4),(510522101,'望龙镇',510522,4),(510522102,'白沙镇',510522,4),(510522103,'佛荫镇',510522,4),(510522104,'先市镇',510522,4),(510522105,'尧坝镇',510522,4),(510522106,'九支镇',510522,4),(510522107,'五通镇',510522,4),(510522108,'凤鸣镇',510522,4),(510522109,'榕山镇',510522,4),(510522110,'白鹿镇',510522,4),(510522111,'甘雨镇',510522,4),(510522112,'福宝镇',510522,4),(510522113,'先滩镇',510522,4),(510522114,'自怀镇',510522,4),(510522115,'大桥镇',510522,4),(510522116,'车辋镇',510522,4),(510522200,'密溪乡',510522,4),(510522201,'白米乡',510522,4),(510522202,'焦滩乡',510522,4),(510522203,'参宝乡',510522,4),(510522206,'二里乡',510522,4),(510522208,'实录乡',510522,4),(510522209,'虎头乡',510522,4),(510522210,'榕右乡',510522,4),(510522212,'南滩乡',510522,4),(510522213,'石龙乡',510522,4),(510522400,'合江县临港工业园区',510522,4),(510524100,'叙永镇',510524,4),(510524101,'江门镇',510524,4),(510524102,'马岭镇',510524,4),(510524103,'天池镇',510524,4),(510524104,'水尾镇',510524,4),(510524105,'两河镇',510524,4),(510524106,'落卜镇',510524,4),(510524107,'后山镇',510524,4),(510524108,'分水镇',510524,4),(510524109,'摩尼镇',510524,4),(510524110,'赤水镇',510524,4),(510524200,'向林乡',510524,4),(510524201,'大石乡',510524,4),(510524202,'兴隆乡',510524,4),(510524203,'龙凤乡',510524,4),(510524204,'震东乡',510524,4),(510524206,'黄坭乡',510524,4),(510524207,'营山乡',510524,4),(510524208,'麻城乡',510524,4),(510524209,'观兴乡',510524,4),(510524210,'合乐苗族乡',510524,4),(510524211,'白腊苗族乡',510524,4),(510524212,'枧槽苗族乡',510524,4),(510524213,'水潦彝族乡',510524,4),(510524214,'石坝彝族乡',510524,4),(510525100,'古蔺镇',510525,4),(510525101,'龙山镇',510525,4),(510525102,'永乐镇',510525,4),(510525103,'太平镇',510525,4),(510525104,'二郎镇',510525,4),(510525105,'大村镇',510525,4),(510525106,'石宝镇',510525,4),(510525107,'丹桂镇',510525,4),(510525108,'水口镇',510525,4),(510525109,'观文镇',510525,4),(510525110,'双沙镇',510525,4),(510525111,'德耀镇',510525,4),(510525201,'护家乡',510525,4),(510525202,'鱼化乡',510525,4),(510525203,'石屏乡',510525,4),(510525204,'东新乡',510525,4),(510525205,'土城乡',510525,4),(510525206,'金星乡',510525,4),(510525207,'白泥乡',510525,4),(510525208,'椒园乡',510525,4),(510525209,'马嘶苗族乡',510525,4),(510525211,'马蹄乡',510525,4),(510525212,'箭竹苗族乡',510525,4),(510525214,'大寨苗族乡',510525,4),(510525215,'桂花乡',510525,4),(510525216,'黄荆乡',510525,4),(510603001,'旌阳街道',510603,4),(510603002,'城南街道',510603,4),(510603003,'城北街道',510603,4),(510603004,'旌东街道',510603,4),(510603005,'工农街道',510603,4),(510603006,'八角井街道',510603,4),(510603100,'黄许镇',510603,4),(510603101,'孝泉镇',510603,4),(510603103,'柏隆镇',510603,4),(510603104,'孝感镇',510603,4),(510603105,'天元镇',510603,4),(510603107,'扬嘉镇',510603,4),(510603108,'德新镇',510603,4),(510603110,'双东镇',510603,4),(510603111,'新中镇',510603,4),(510603117,'和新镇',510603,4),(510603201,'东湖乡',510603,4),(510623100,'凯江镇',510623,4),(510623101,'南华镇',510623,4),(510623102,'回龙镇',510623,4),(510623103,'通济镇',510623,4),(510623104,'永太镇',510623,4),(510623105,'黄鹿镇',510623,4),(510623106,'集凤镇',510623,4),(510623107,'富兴镇',510623,4),(510623108,'辑庆镇',510623,4),(510623109,'兴隆镇',510623,4),(510623110,'龙台镇',510623,4),(510623111,'永安镇',510623,4),(510623112,'双龙镇',510623,4),(510623113,'玉兴镇',510623,4),(510623114,'永兴镇',510623,4),(510623115,'悦来镇',510623,4),(510623116,'继光镇',510623,4),(510623117,'仓山镇',510623,4),(510623118,'广福镇',510623,4),(510623119,'会龙镇',510623,4),(510623120,'万福镇',510623,4),(510623121,'普兴镇',510623,4),(510623122,'联合镇',510623,4),(510623123,'冯店镇',510623,4),(510623124,'积金镇',510623,4),(510623125,'太安镇',510623,4),(510623127,'杰兴镇',510623,4),(510623130,'南山镇',510623,4),(510623132,'东北镇',510623,4),(510623200,'古店乡',510623,4),(510623201,'青市乡',510623,4),(510623203,'瓦店乡',510623,4),(510623204,'石泉乡',510623,4),(510623206,'柏树乡',510623,4),(510623207,'白果乡',510623,4),(510623208,'清河乡',510623,4),(510623209,'高店乡',510623,4),(510623210,'石笋乡',510623,4),(510623211,'太平乡',510623,4),(510623212,'民主乡',510623,4),(510623214,'永丰乡',510623,4),(510623216,'元兴乡',510623,4),(510623218,'通山乡',510623,4),(510623219,'石龙乡',510623,4),(510623221,'合兴乡',510623,4),(510626100,'万安镇',510626,4),(510626101,'鄢家镇',510626,4),(510626102,'金山镇',510626,4),(510626103,'略坪镇',510626,4),(510626104,'御营镇',510626,4),(510626105,'慧觉镇',510626,4),(510626106,'调元镇',510626,4),(510626107,'新盛镇',510626,4),(510626108,'蟠龙镇',510626,4),(510626113,'白马关镇',510626,4),(510681100,'雒城镇',510681,4),(510681101,'三水镇',510681,4),(510681102,'连山镇',510681,4),(510681103,'高坪镇',510681,4),(510681104,'南兴镇',510681,4),(510681105,'向阳镇',510681,4),(510681106,'小汉镇',510681,4),(510681107,'金轮镇',510681,4),(510681108,'新丰镇',510681,4),(510681109,'兴隆镇',510681,4),(510681112,'和兴镇',510681,4),(510681113,'松林镇',510681,4),(510681114,'金鱼镇',510681,4),(510681115,'新平镇',510681,4),(510681116,'南丰镇',510681,4),(510681119,'西高镇',510681,4),(510681200,'北外乡',510681,4),(510681202,'西外乡',510681,4),(510682001,'方亭街道',510682,4),(510682002,'皂角街道',510682,4),(510682101,'元石镇',510682,4),(510682103,'回澜镇',510682,4),(510682105,'洛水镇',510682,4),(510682106,'禾丰镇',510682,4),(510682107,'双盛镇',510682,4),(510682108,'马祖镇',510682,4),(510682109,'隐丰镇',510682,4),(510682110,'马井镇',510682,4),(510682111,'蓥华镇',510682,4),(510682113,'南泉镇',510682,4),(510682116,'湔氐镇',510682,4),(510682118,'红白镇',510682,4),(510682119,'冰川镇',510682,4),(510682120,'师古镇',510682,4),(510683100,'剑南镇',510683,4),(510683101,'东北镇',510683,4),(510683102,'西南镇',510683,4),(510683103,'兴隆镇',510683,4),(510683104,'九龙镇',510683,4),(510683105,'遵道镇',510683,4),(510683106,'汉旺镇',510683,4),(510683108,'拱星镇',510683,4),(510683109,'土门镇',510683,4),(510683110,'广济镇',510683,4),(510683111,'金花镇',510683,4),(510683112,'玉泉镇',510683,4),(510683113,'板桥镇',510683,4),(510683115,'新市镇',510683,4),(510683116,'孝德镇',510683,4),(510683119,'富新镇',510683,4),(510683121,'齐天镇',510683,4),(510683122,'什地镇',510683,4),(510683123,'绵远镇',510683,4),(510683124,'清平镇',510683,4),(510683201,'天池乡',510683,4),(510683400,'四川绵竹经济开发区',510683,4),(510703001,'城厢街道',510703,4),(510703002,'城北街道',510703,4),(510703003,'工区街道',510703,4),(510703004,'南山街道',510703,4),(510703005,'朝阳街道',510703,4),(510703006,'高新街道',510703,4),(510703007,'城南街道',510703,4),(510703008,'金家林街道',510703,4),(510703009,'科创园街道',510703,4),(510703100,'丰谷镇',510703,4),(510703101,'关帝镇',510703,4),(510703102,'塘汛镇',510703,4),(510703103,'青义镇',510703,4),(510703104,'龙门镇',510703,4),(510703105,'石塘镇',510703,4),(510703106,'吴家镇',510703,4),(510703107,'杨家镇',510703,4),(510703108,'金峰镇',510703,4),(510703109,'玉皇镇',510703,4),(510703110,'新皂镇',510703,4),(510703111,'河边镇',510703,4),(510703112,'磨家镇',510703,4),(510703113,'永兴镇',510703,4),(510703200,'城郊乡',510703,4),(510703201,'石洞乡',510703,4),(510704001,'涪江街道',510704,4),(510704003,'富乐街道',510704,4),(510704006,'春雷街道',510704,4),(510704007,'松林街道',510704,4),(510704008,'华丰街道',510704,4),(510704100,'游仙镇',510704,4),(510704101,'石马镇',510704,4),(510704102,'新桥镇',510704,4),(510704103,'小枧沟镇',510704,4),(510704104,'魏城镇',510704,4),(510704105,'沉抗镇',510704,4),(510704106,'忠兴镇',510704,4),(510704107,'柏林镇',510704,4),(510704108,'徐家镇',510704,4),(510704109,'石板镇',510704,4),(510704110,'刘家镇',510704,4),(510704111,'玉河镇',510704,4),(510704112,'松垭镇',510704,4),(510704200,'白蝉乡',510704,4),(510704201,'观太乡',510704,4),(510704202,'建华乡',510704,4),(510704203,'云凤乡',510704,4),(510704204,'东林乡',510704,4),(510704205,'太平乡',510704,4),(510704206,'梓棉乡',510704,4),(510704207,'朝真乡',510704,4),(510704208,'东宣乡',510704,4),(510704209,'街子乡',510704,4),(510704210,'凤凰乡',510704,4),(510704400,'四川省新华劳动教育管理所',510704,4),(510722100,'北坝镇',510722,4),(510722101,'潼川镇',510722,4),(510722102,'东塔镇',510722,4),(510722103,'百顷镇',510722,4),(510722104,'塔山镇',510722,4),(510722105,'柳池镇',510722,4),(510722106,'龙树镇',510722,4),(510722107,'石安镇',510722,4),(510722108,'富顺镇',510722,4),(510722109,'三元镇',510722,4),(510722110,'秋林镇',510722,4),(510722111,'永新镇',510722,4),(510722112,'新德镇',510722,4),(510722113,'新生镇',510722,4),(510722114,'鲁班镇',510722,4),(510722115,'景福镇',510722,4),(510722116,'紫河镇',510722,4),(510722117,'安居镇',510722,4),(510722118,'观桥镇',510722,4),(510722119,'郪江镇',510722,4),(510722120,'中新镇',510722,4),(510722121,'古井镇',510722,4),(510722122,'万安镇',510722,4),(510722123,'西平镇',510722,4),(510722124,'八洞镇',510722,4),(510722125,'凯河镇',510722,4),(510722126,'乐安镇',510722,4),(510722127,'建平镇',510722,4),(510722128,'前锋镇',510722,4),(510722129,'建设镇',510722,4),(510722130,'光辉镇',510722,4),(510722131,'中太镇',510722,4),(510722132,'金石镇',510722,4),(510722133,'新鲁镇',510722,4),(510722134,'黎曙镇',510722,4),(510722135,'刘营镇',510722,4),(510722136,'灵兴镇',510722,4),(510722137,'芦溪镇',510722,4),(510722138,'立新镇',510722,4),(510722139,'花园镇',510722,4),(510722140,'永明镇',510722,4),(510722200,'高堰乡',510722,4),(510722201,'忠孝乡',510722,4),(510722202,'双胜乡',510722,4),(510722203,'金鼓乡',510722,4),(510722204,'断石乡',510722,4),(510722205,'玉林乡',510722,4),(510722206,'乐加乡',510722,4),(510722207,'曙光乡',510722,4),(510722208,'建中乡',510722,4),(510722209,'宝泉乡',510722,4),(510722210,'广利乡',510722,4),(510722211,'协和乡',510722,4),(510722212,'双乐乡',510722,4),(510722213,'菊河乡',510722,4),(510722214,'幸福乡',510722,4),(510722215,'下新乡',510722,4),(510722216,'进都乡',510722,4),(510722217,'上新乡',510722,4),(510722218,'老马乡',510722,4),(510722219,'里程乡',510722,4),(510722220,'争胜乡',510722,4),(510722221,'云同乡',510722,4),(510723100,'云溪镇',510723,4),(510723101,'玉龙镇',510723,4),(510723102,'富驿镇',510723,4),(510723103,'金孔镇',510723,4),(510723104,'两河镇',510723,4),(510723105,'黄甸镇',510723,4),(510723106,'柏梓镇',510723,4),(510723107,'八角镇',510723,4),(510723108,'黑坪镇',510723,4),(510723109,'高灯镇',510723,4),(510723110,'金鸡镇',510723,4),(510723111,'安家镇',510723,4),(510723112,'林农镇',510723,4),(510723113,'巨龙镇',510723,4),(510723200,'龙泉乡',510723,4),(510723201,'折弓乡',510723,4),(510723202,'麻秧乡',510723,4),(510723203,'三元乡',510723,4),(510723204,'五龙乡',510723,4),(510723205,'茶亭乡',510723,4),(510723206,'金安乡',510723,4),(510723207,'洗泽乡',510723,4),(510723208,'毛公乡',510723,4),(510723209,'冯河乡',510723,4),(510723210,'石牛庙乡',510723,4),(510723211,'大兴回族乡',510723,4),(510723212,'宗海乡',510723,4),(510723213,'两岔河乡',510723,4),(510723214,'剑河乡',510723,4),(510723215,'来龙乡',510723,4),(510723216,'永泰乡',510723,4),(510723217,'黄溪乡',510723,4),(510723218,'榉溪乡',510723,4),(510723219,'双碑乡',510723,4),(510723220,'林山乡',510723,4),(510723221,'新农乡',510723,4),(510724101,'桑枣镇',510724,4),(510724102,'花荄镇',510724,4),(510724103,'黄土镇',510724,4),(510724104,'塔水镇',510724,4),(510724105,'秀水镇',510724,4),(510724106,'河清镇',510724,4),(510724108,'界牌镇',510724,4),(510724109,'永河镇',510724,4),(510724110,'雎水镇',510724,4),(510724111,'清泉镇',510724,4),(510724112,'宝林镇',510724,4),(510724113,'沸水镇',510724,4),(510724114,'晓坝镇',510724,4),(510724115,'乐兴镇',510724,4),(510724116,'千佛镇',510724,4),(510724201,'兴仁乡',510724,4),(510724202,'高川乡',510724,4),(510724203,'迎新乡',510724,4),(510725100,'文昌镇',510725,4),(510725101,'长卿镇',510725,4),(510725102,'许州镇',510725,4),(510725103,'黎雅镇',510725,4),(510725104,'白云镇',510725,4),(510725105,'卧龙镇',510725,4),(510725106,'观义镇',510725,4),(510725107,'玛瑙镇',510725,4),(510725108,'石牛镇',510725,4),(510725109,'自强镇',510725,4),(510725110,'仁和镇',510725,4),(510725200,'东石乡',510725,4),(510725201,'三泉乡',510725,4),(510725202,'宏仁乡',510725,4),(510725203,'小垭乡',510725,4),(510725204,'演武乡',510725,4),(510725205,'仙峰乡',510725,4),(510725206,'双板乡',510725,4),(510725207,'豢龙乡',510725,4),(510725208,'双峰乡',510725,4),(510725209,'交泰乡',510725,4),(510725210,'金龙场乡',510725,4),(510725211,'石台乡',510725,4),(510725212,'仙鹅乡',510725,4),(510725213,'马鸣乡',510725,4),(510725214,'马迎乡',510725,4),(510725215,'二洞乡',510725,4),(510725216,'建兴乡',510725,4),(510725217,'宝石乡',510725,4),(510725218,'定远乡',510725,4),(510725219,'大新乡',510725,4),(510725220,'文兴乡',510725,4),(510726100,'曲山镇',510726,4),(510726101,'擂鼓镇',510726,4),(510726102,'通口镇',510726,4),(510726103,'永昌镇',510726,4),(510726104,'安昌镇',510726,4),(510726105,'永安镇',510726,4),(510726200,'香泉乡',510726,4),(510726201,'陈家坝乡',510726,4),(510726202,'桂溪乡',510726,4),(510726203,'贯岭乡',510726,4),(510726204,'禹里乡',510726,4),(510726205,'漩坪乡',510726,4),(510726206,'白坭乡',510726,4),(510726207,'小坝乡',510726,4),(510726208,'片口乡',510726,4),(510726209,'开坪乡',510726,4),(510726210,'坝底乡',510726,4),(510726211,'白什乡',510726,4),(510726212,'青片乡',510726,4),(510726213,'都坝乡',510726,4),(510726214,'桃龙藏族乡',510726,4),(510726215,'墩上乡',510726,4),(510726216,'马槽乡',510726,4),(510727100,'龙安镇',510727,4),(510727101,'古城镇',510727,4),(510727102,'南坝镇',510727,4),(510727103,'响岩镇',510727,4),(510727104,'平通镇',510727,4),(510727105,'豆叩镇',510727,4),(510727106,'大印镇',510727,4),(510727107,'大桥镇',510727,4),(510727108,'水晶镇',510727,4),(510727200,'高村乡',510727,4),(510727201,'水田羌族乡',510727,4),(510727202,'坝子乡',510727,4),(510727203,'水观乡',510727,4),(510727204,'平南羌族乡',510727,4),(510727205,'徐塘羌族乡',510727,4),(510727206,'锁江羌族乡',510727,4),(510727207,'土城藏族乡',510727,4),(510727208,'旧堡羌族乡',510727,4),(510727209,'阔达藏族乡',510727,4),(510727210,'黄羊关藏族乡',510727,4),(510727211,'虎牙藏族乡',510727,4),(510727212,'泗耳藏族乡',510727,4),(510727213,'白马藏族乡',510727,4),(510727214,'木座藏族乡',510727,4),(510727215,'木皮藏族乡',510727,4),(510781001,'长城办事处',510781,4),(510781002,'武都长钢街道',510781,4),(510781003,'含增长钢街道',510781,4),(510781004,'华坪街道',510781,4),(510781100,'中坝镇',510781,4),(510781101,'太平镇',510781,4),(510781102,'三合镇',510781,4),(510781103,'含增镇',510781,4),(510781104,'青莲镇',510781,4),(510781105,'彰明镇',510781,4),(510781106,'龙凤镇',510781,4),(510781107,'武都镇',510781,4),(510781108,'大康镇',510781,4),(510781109,'新安镇',510781,4),(510781110,'战旗镇',510781,4),(510781111,'双河镇',510781,4),(510781112,'永胜镇',510781,4),(510781113,'小溪坝镇',510781,4),(510781114,'河口镇',510781,4),(510781115,'重华镇',510781,4),(510781116,'厚坝镇',510781,4),(510781117,'二郎庙镇',510781,4),(510781118,'马角镇',510781,4),(510781119,'雁门镇',510781,4),(510781120,'九岭镇',510781,4),(510781200,'八一乡',510781,4),(510781201,'方水乡',510781,4),(510781202,'西屏乡',510781,4),(510781203,'香水乡',510781,4),(510781204,'大堰乡',510781,4),(510781205,'东兴乡',510781,4),(510781207,'义新乡',510781,4),(510781208,'贯山乡',510781,4),(510781209,'新兴乡',510781,4),(510781210,'新春乡',510781,4),(510781211,'东安乡',510781,4),(510781212,'铜星乡',510781,4),(510781213,'文胜乡',510781,4),(510781214,'重兴乡',510781,4),(510781215,'云集乡',510781,4),(510781216,'石元乡',510781,4),(510781217,'敬元乡',510781,4),(510781218,'六合乡',510781,4),(510781219,'枫顺乡',510781,4),(510802001,'东坝街道',510802,4),(510802002,'嘉陵街道',510802,4),(510802003,'河西街道',510802,4),(510802004,'雪峰街道',510802,4),(510802005,'南河街道',510802,4),(510802006,'上西街道',510802,4),(510802007,'回龙河街道',510802,4),(510802008,'杨家岩街道',510802,4),(510802100,'荣山镇',510802,4),(510802101,'大石镇',510802,4),(510802102,'盘龙镇',510802,4),(510802103,'宝轮镇',510802,4),(510802104,'赤化镇',510802,4),(510802105,'三堆镇',510802,4),(510802106,'工农镇',510802,4),(510802200,'白朝乡',510802,4),(510802201,'金洞乡',510802,4),(510802202,'龙潭乡',510802,4),(510802405,'袁家坝办事处',510802,4),(510802407,'下西街道',510802,4),(510811100,'元坝镇',510811,4),(510811101,'卫子镇',510811,4),(510811102,'王家镇',510811,4),(510811103,'磨滩镇',510811,4),(510811104,'柏林沟镇',510811,4),(510811105,'太公镇',510811,4),(510811106,'虎跳镇',510811,4),(510811107,'红岩镇',510811,4),(510811108,'昭化镇',510811,4),(510811200,'晋贤乡',510811,4),(510811201,'文村乡',510811,4),(510811202,'清水乡',510811,4),(510811203,'张家乡',510811,4),(510811204,'香溪乡',510811,4),(510811205,'青牛乡',510811,4),(510811206,'陈江乡',510811,4),(510811207,'丁家乡',510811,4),(510811208,'黄龙乡',510811,4),(510811209,'石井铺乡',510811,4),(510811210,'白果乡',510811,4),(510811211,'梅树乡',510811,4),(510811212,'明觉乡',510811,4),(510811213,'射箭乡',510811,4),(510811214,'朝阳乡',510811,4),(510811215,'大朝乡',510811,4),(510811216,'沙坝乡',510811,4),(510811217,'柳桥乡',510811,4),(510811218,'紫云乡',510811,4),(510811400,'拣银岩社区街道',510811,4),(510812100,'朝天镇',510812,4),(510812101,'大滩镇',510812,4),(510812102,'羊木镇',510812,4),(510812103,'曾家镇',510812,4),(510812104,'中子镇',510812,4),(510812105,'沙河镇',510812,4),(510812200,'陈家乡',510812,4),(510812201,'小安乡',510812,4),(510812202,'鱼洞乡',510812,4),(510812203,'东溪河乡',510812,4),(510812204,'花石乡',510812,4),(510812205,'蒲家乡',510812,4),(510812206,'西北乡',510812,4),(510812207,'宣河乡',510812,4),(510812208,'转斗乡',510812,4),(510812209,'青林乡',510812,4),(510812210,'平溪乡',510812,4),(510812211,'两河口乡',510812,4),(510812212,'李家乡',510812,4),(510812213,'汪家乡',510812,4),(510812214,'麻柳乡',510812,4),(510812215,'临溪乡',510812,4),(510812216,'文安乡',510812,4),(510812217,'马家坝乡',510812,4),(510812218,'柏杨乡',510812,4),(510821100,'东河镇',510821,4),(510821101,'嘉川镇',510821,4),(510821102,'木门镇',510821,4),(510821103,'白水镇',510821,4),(510821104,'尚武镇',510821,4),(510821105,'张华镇',510821,4),(510821106,'黄洋镇',510821,4),(510821107,'普济镇',510821,4),(510821108,'三江镇',510821,4),(510821109,'金溪镇',510821,4),(510821110,'五权镇',510821,4),(510821111,'高阳镇',510821,4),(510821112,'双汇镇',510821,4),(510821113,'英萃镇',510821,4),(510821114,'国华镇',510821,4),(510821200,'龙凤乡',510821,4),(510821201,'大河乡',510821,4),(510821202,'九龙乡',510821,4),(510821203,'万家乡',510821,4),(510821204,'燕子乡',510821,4),(510821205,'水磨乡',510821,4),(510821206,'鼓城乡',510821,4),(510821207,'檬子乡',510821,4),(510821208,'福庆乡',510821,4),(510821209,'枣林乡',510821,4),(510821210,'麻英乡',510821,4),(510821211,'柳溪乡',510821,4),(510821212,'农建乡',510821,4),(510821213,'化龙乡',510821,4),(510821214,'大两乡',510821,4),(510821215,'万山乡',510821,4),(510821216,'正源乡',510821,4),(510821217,'天星乡',510821,4),(510821218,'盐河乡',510821,4),(510821219,'大德乡',510821,4),(510821400,'静乐寺管理办公室',510821,4),(510821401,'陈家岭管理办公室',510821,4),(510821402,'磨岩管理办公室',510821,4),(510822100,'乔庄镇',510822,4),(510822101,'青溪镇',510822,4),(510822102,'房石镇',510822,4),(510822103,'关庄镇',510822,4),(510822104,'凉水镇',510822,4),(510822105,'竹园镇',510822,4),(510822106,'木鱼镇',510822,4),(510822107,'沙州镇',510822,4),(510822108,'姚渡镇',510822,4),(510822200,'黄坪乡',510822,4),(510822201,'瓦砾乡',510822,4),(510822202,'孔溪乡',510822,4),(510822203,'茶坝乡',510822,4),(510822204,'大坝乡',510822,4),(510822205,'桥楼乡',510822,4),(510822206,'三锅乡',510822,4),(510822207,'蒿溪回族乡',510822,4),(510822208,'乐安寺乡',510822,4),(510822209,'前进乡',510822,4),(510822210,'曲河乡',510822,4),(510822211,'马公乡',510822,4),(510822212,'石坝乡',510822,4),(510822213,'红光乡',510822,4),(510822214,'苏河乡',510822,4),(510822215,'茅坝乡',510822,4),(510822216,'大院回族乡',510822,4),(510822217,'楼子乡',510822,4),(510822218,'金子山乡',510822,4),(510822219,'马鹿乡',510822,4),(510822220,'七佛乡',510822,4),(510822221,'建峰乡',510822,4),(510822222,'白家乡',510822,4),(510822223,'板桥乡',510822,4),(510822224,'骑马乡',510822,4),(510822225,'观音店乡',510822,4),(510822227,'营盘乡',510822,4),(510822400,'唐家河国家级自然保护区',510822,4),(510823100,'普安镇',510823,4),(510823101,'龙源镇',510823,4),(510823102,'城北镇',510823,4),(510823103,'盐店镇',510823,4),(510823104,'柳沟镇',510823,4),(510823105,'武连镇',510823,4),(510823106,'东宝镇',510823,4),(510823107,'开封镇',510823,4),(510823108,'元山镇',510823,4),(510823109,'演圣镇',510823,4),(510823110,'王河镇',510823,4),(510823111,'公兴镇',510823,4),(510823112,'金仙镇',510823,4),(510823113,'香沉镇',510823,4),(510823114,'白龙镇',510823,4),(510823115,'鹤龄镇',510823,4),(510823116,'杨村镇',510823,4),(510823117,'羊岭镇',510823,4),(510823118,'江口镇',510823,4),(510823119,'木马镇',510823,4),(510823120,'剑门关镇',510823,4),(510823121,'汉阳镇',510823,4),(510823122,'下寺镇',510823,4),(510823200,'江石乡',510823,4),(510823201,'田家乡',510823,4),(510823202,'闻溪乡',510823,4),(510823203,'姚家乡',510823,4),(510823204,'北庙乡',510823,4),(510823205,'西庙乡',510823,4),(510823206,'义兴乡',510823,4),(510823207,'毛坝乡',510823,4),(510823208,'凉山乡',510823,4),(510823209,'垂泉乡',510823,4),(510823210,'秀钟乡',510823,4),(510823211,'正兴乡',510823,4),(510823212,'马灯乡',510823,4),(510823213,'高池乡',510823,4),(510823214,'碗泉乡',510823,4),(510823215,'迎水乡',510823,4),(510823216,'国光乡',510823,4),(510823217,'柘坝乡',510823,4),(510823218,'公店乡',510823,4),(510823219,'吼狮乡',510823,4),(510823220,'长岭乡',510823,4),(510823221,'涂山乡',510823,4),(510823222,'圈龙乡',510823,4),(510823223,'碑垭乡',510823,4),(510823224,'广坪乡',510823,4),(510823225,'禾丰乡',510823,4),(510823226,'店子乡',510823,4),(510823227,'摇铃乡',510823,4),(510823228,'樵店乡',510823,4),(510823229,'锦屏乡',510823,4),(510823230,'柏垭乡',510823,4),(510823231,'高观乡',510823,4),(510823232,'张王乡',510823,4),(510823233,'上寺乡',510823,4),(510824100,'陵江镇',510824,4),(510824102,'云峰镇',510824,4),(510824104,'东青镇',510824,4),(510824105,'白桥镇',510824,4),(510824106,'八庙镇',510824,4),(510824107,'五龙镇',510824,4),(510824108,'永宁镇',510824,4),(510824109,'鸳溪镇',510824,4),(510824110,'三川镇',510824,4),(510824111,'龙王镇',510824,4),(510824112,'元坝镇',510824,4),(510824113,'唤马镇',510824,4),(510824114,'歧坪镇',510824,4),(510824115,'白驿镇',510824,4),(510824116,'漓江镇',510824,4),(510824117,'文昌镇',510824,4),(510824118,'岳东镇',510824,4),(510824119,'石马镇',510824,4),(510824120,'运山镇',510824,4),(510824121,'东溪镇',510824,4),(510824122,'高坡镇',510824,4),(510824123,'龙山镇',510824,4),(510824202,'禅林乡',510824,4),(510824204,'亭子乡',510824,4),(510824208,'白鹤乡',510824,4),(510824209,'浙水乡',510824,4),(510824210,'雍河乡',510824,4),(510824212,'新观乡',510824,4),(510824214,'中土乡',510824,4),(510824216,'石门乡',510824,4),(510824223,'月山乡',510824,4),(510824226,'白山乡',510824,4),(510824228,'彭店乡',510824,4),(510824229,'桥溪乡',510824,4),(510824232,'龙洞乡',510824,4),(510824233,'黄猫乡',510824,4),(510824234,'石灶乡',510824,4),(510824238,'河地乡',510824,4),(510824240,'双河乡',510824,4),(510824400,'苍溪九龙山自然保护区管理处',510824,4),(510824401,'苍溪县三溪口森林经营所',510824,4),(510824402,'苍溪县良种场',510824,4),(510903001,'南津路街道',510903,4),(510903002,'凯旋路街道',510903,4),(510903003,'高升街街道',510903,4),(510903004,'镇江寺街道',510903,4),(510903005,'育才路街道',510903,4),(510903006,'介福路街道',510903,4),(510903007,'嘉禾街道',510903,4),(510903008,'广德街道',510903,4),(510903009,'富源路街道',510903,4),(510903010,'龙坪街道',510903,4),(510903011,'灵泉街道',510903,4),(510903012,'慈音街道',510903,4),(510903013,'九莲街道',510903,4),(510903014,'南强街道',510903,4),(510903100,'龙凤镇',510903,4),(510903101,'仁里镇',510903,4),(510903102,'复桥镇',510903,4),(510903103,'永兴镇',510903,4),(510903104,'河沙镇',510903,4),(510903105,'新桥镇',510903,4),(510903106,'桂花镇',510903,4),(510903200,'西宁乡',510903,4),(510903201,'老池乡',510903,4),(510903202,'保升乡',510903,4),(510903203,'唐家乡',510903,4),(510903204,'北固乡',510903,4),(510903400,'养身谷办事处',510903,4),(510903401,'河东二期办事处',510903,4),(510903402,'清河工作办公室',510903,4),(510903403,'金盆工作办公室',510903,4),(510904001,'柔刚街道',510904,4),(510904002,'凤凰街道',510904,4),(510904100,'安居镇',510904,4),(510904101,'东禅镇',510904,4),(510904102,'分水镇',510904,4),(510904103,'石洞镇',510904,4),(510904104,'拦江镇',510904,4),(510904105,'保石镇',510904,4),(510904106,'白马镇',510904,4),(510904107,'中兴镇',510904,4),(510904108,'横山镇',510904,4),(510904109,'会龙镇',510904,4),(510904110,'三家镇',510904,4),(510904111,'玉丰镇',510904,4),(510904112,'西眉镇',510904,4),(510904113,'磨溪镇',510904,4),(510904200,'聚贤乡',510904,4),(510904201,'莲花乡',510904,4),(510904202,'观音乡',510904,4),(510904203,'步云乡',510904,4),(510904204,'常理乡',510904,4),(510904205,'大安乡',510904,4),(510904206,'马家乡',510904,4),(510921100,'赤城镇',510921,4),(510921101,'新会镇',510921,4),(510921102,'文井镇',510921,4),(510921103,'明月镇',510921,4),(510921104,'常乐镇',510921,4),(510921105,'天福镇',510921,4),(510921106,'红江镇',510921,4),(510921107,'宝梵镇',510921,4),(510921108,'大石镇',510921,4),(510921109,'吉祥镇',510921,4),(510921110,'鸣凤镇',510921,4),(510921111,'任隆镇',510921,4),(510921112,'三凤镇',510921,4),(510921113,'高坪镇',510921,4),(510921114,'蓬南镇',510921,4),(510921115,'群利镇',510921,4),(510921200,'下东乡',510921,4),(510921201,'新星乡',510921,4),(510921202,'罗戈乡',510921,4),(510921203,'板桥乡',510921,4),(510921204,'槐花乡',510921,4),(510921205,'吉星乡',510921,4),(510921206,'黄泥乡',510921,4),(510921207,'荷叶乡',510921,4),(510921208,'金龙乡',510921,4),(510921209,'农兴乡',510921,4),(510921210,'新胜乡',510921,4),(510921211,'回水乡',510921,4),(510921212,'群力乡',510921,4),(510921213,'高升乡',510921,4),(510921214,'金桥乡',510921,4),(510921400,'城南新区',510921,4),(510921401,'上游工业园管理委员会',510921,4),(510922001,'子昂街道',510922,4),(510922002,'平安街道',510922,4),(510922100,'太和镇',510922,4),(510922101,'大榆镇',510922,4),(510922102,'广兴镇',510922,4),(510922103,'金华镇',510922,4),(510922104,'沱牌镇',510922,4),(510922105,'太乙镇',510922,4),(510922106,'金家镇',510922,4),(510922107,'复兴镇',510922,4),(510922108,'天仙镇',510922,4),(510922109,'仁和镇',510922,4),(510922110,'青岗镇',510922,4),(510922111,'洋溪镇',510922,4),(510922112,'香山镇',510922,4),(510922113,'明星镇',510922,4),(510922114,'涪西镇',510922,4),(510922115,'陈古镇',510922,4),(510922116,'凤来镇',510922,4),(510922117,'潼射镇',510922,4),(510922118,'曹碑镇',510922,4),(510922119,'官升镇',510922,4),(510922200,'瞿河乡',510922,4),(510922201,'伏河乡',510922,4),(510922202,'青堤乡',510922,4),(510922203,'双溪乡',510922,4),(510922204,'文升乡',510922,4),(510922205,'万林乡',510922,4),(510922206,'太兴乡',510922,4),(510922207,'东岳乡',510922,4),(510922208,'金鹤乡',510922,4),(510922209,'玉太乡',510922,4),(510923100,'蓬莱镇',510923,4),(510923101,'隆盛镇',510923,4),(510923102,'回马镇',510923,4),(510923103,'天保镇',510923,4),(510923104,'河边镇',510923,4),(510923105,'卓筒井镇',510923,4),(510923106,'玉峰镇',510923,4),(510923107,'象山镇',510923,4),(510923200,'通仙乡',510923,4),(510923201,'金元乡',510923,4),(510923202,'智水乡',510923,4),(511002001,'城东街道',511002,4),(511002002,'城南街道',511002,4),(511002003,'城西街道',511002,4),(511002004,'玉溪街道',511002,4),(511002005,'牌楼街道',511002,4),(511002006,'壕子口街道',511002,4),(511002100,'白马镇',511002,4),(511002101,'史家镇',511002,4),(511002102,'凌家镇',511002,4),(511002103,'朝阳镇',511002,4),(511002104,'永安镇',511002,4),(511002105,'全安镇',511002,4),(511002106,'靖民镇',511002,4),(511002107,'乐贤镇',511002,4),(511002200,'沱江乡',511002,4),(511002201,'交通乡',511002,4),(511002202,'四合乡',511002,4),(511002203,'凤鸣乡',511002,4),(511002204,'伏龙乡',511002,4),(511002205,'龚家乡',511002,4),(511002400,'经济开发区',511002,4),(511011001,'东兴街道',511011,4),(511011002,'西林街道',511011,4),(511011003,'新江街道',511011,4),(511011100,'田家镇',511011,4),(511011101,'郭北镇',511011,4),(511011102,'高梁镇',511011,4),(511011103,'白合镇',511011,4),(511011104,'顺河镇',511011,4),(511011105,'胜利镇',511011,4),(511011106,'高桥镇',511011,4),(511011107,'双才镇',511011,4),(511011108,'小河口镇',511011,4),(511011109,'杨家镇',511011,4),(511011110,'椑木镇',511011,4),(511011111,'石子镇',511011,4),(511011200,'太安乡',511011,4),(511011201,'苏家乡',511011,4),(511011202,'富溪乡',511011,4),(511011203,'同福乡',511011,4),(511011204,'椑南乡',511011,4),(511011205,'永东乡',511011,4),(511011206,'永福乡',511011,4),(511011207,'新店乡',511011,4),(511011208,'双桥乡',511011,4),(511011209,'平坦乡',511011,4),(511011210,'中山乡',511011,4),(511011211,'大治乡',511011,4),(511011212,'柳桥乡',511011,4),(511011213,'三烈乡',511011,4),(511024100,'严陵镇',511024,4),(511024101,'铺子湾镇',511024,4),(511024102,'新店镇',511024,4),(511024103,'向义镇',511024,4),(511024104,'界牌镇',511024,4),(511024105,'龙会镇',511024,4),(511024106,'高石镇',511024,4),(511024107,'东联镇',511024,4),(511024108,'靖和镇',511024,4),(511024109,'镇西镇',511024,4),(511024110,'庆卫镇',511024,4),(511024111,'山王镇',511024,4),(511024112,'黄荆沟镇',511024,4),(511024113,'观英滩镇',511024,4),(511024114,'新场镇',511024,4),(511024115,'连界镇',511024,4),(511024116,'越溪镇',511024,4),(511024117,'两河镇',511024,4),(511024118,'碗厂镇',511024,4),(511024119,'小河镇',511024,4),(511025100,'重龙镇',511025,4),(511025101,'甘露镇',511025,4),(511025102,'归德镇',511025,4),(511025103,'鱼溪镇',511025,4),(511025104,'金李井镇',511025,4),(511025105,'铁佛镇',511025,4),(511025106,'球溪镇',511025,4),(511025107,'顺河场镇',511025,4),(511025108,'龙结镇',511025,4),(511025109,'罗泉镇',511025,4),(511025110,'发轮镇',511025,4),(511025111,'兴隆街镇',511025,4),(511025112,'银山镇',511025,4),(511025113,'宋家镇',511025,4),(511025114,'太平镇',511025,4),(511025115,'骝马镇',511025,4),(511025116,'水南镇',511025,4),(511025117,'苏家湾镇',511025,4),(511025118,'新桥镇',511025,4),(511025119,'明心寺镇',511025,4),(511025120,'双河镇',511025,4),(511025121,'公民镇',511025,4),(511025122,'龙江镇',511025,4),(511025123,'双龙镇',511025,4),(511025124,'高楼镇',511025,4),(511025125,'陈家镇',511025,4),(511025126,'配龙镇',511025,4),(511025127,'走马镇',511025,4),(511025128,'孟塘镇',511025,4),(511025129,'马鞍镇',511025,4),(511025130,'狮子镇',511025,4),(511025200,'板栗桠乡',511025,4),(511025201,'龙山乡',511025,4),(511028001,'古湖街道',511028,4),(511028100,'金鹅镇',511028,4),(511028101,'山川镇',511028,4),(511028102,'响石镇',511028,4),(511028103,'圣灯镇',511028,4),(511028104,'黄家镇',511028,4),(511028105,'双凤镇',511028,4),(511028106,'龙市镇',511028,4),(511028107,'迎祥镇',511028,4),(511028108,'界市镇',511028,4),(511028109,'石碾镇',511028,4),(511028110,'周兴镇',511028,4),(511028111,'渔箭镇',511028,4),(511028112,'石燕桥镇',511028,4),(511028113,'李市镇',511028,4),(511028114,'胡家镇',511028,4),(511028115,'云顶镇',511028,4),(511028200,'桂花井乡',511028,4),(511028201,'普润乡',511028,4),(511102001,'张公桥街道',511102,4),(511102002,'泊水街街道',511102,4),(511102003,'上河街街道',511102,4),(511102004,'大佛街道',511102,4),(511102005,'肖坝街道',511102,4),(511102006,'通江街道',511102,4),(511102007,'柏杨街道',511102,4),(511102101,'牟子镇',511102,4),(511102102,'土主镇',511102,4),(511102103,'白马镇',511102,4),(511102104,'茅桥镇',511102,4),(511102105,'青平镇',511102,4),(511102106,'苏稽镇',511102,4),(511102107,'水口镇',511102,4),(511102108,'安谷镇',511102,4),(511102109,'棉竹镇',511102,4),(511102110,'全福镇',511102,4),(511102111,'童家镇',511102,4),(511102112,'九峰镇',511102,4),(511102113,'罗汉镇',511102,4),(511102114,'临江镇',511102,4),(511102115,'车子镇',511102,4),(511102200,'悦来乡',511102,4),(511102201,'关庙乡',511102,4),(511102202,'石龙乡',511102,4),(511102203,'剑峰乡',511102,4),(511102204,'凌云乡',511102,4),(511102205,'迎阳乡',511102,4),(511102206,'九龙乡',511102,4),(511102207,'普仁乡',511102,4),(511102208,'平兴乡',511102,4),(511102209,'杨湾乡',511102,4),(511111100,'沙湾镇',511111,4),(511111101,'嘉农镇',511111,4),(511111102,'太平镇',511111,4),(511111103,'福禄镇',511111,4),(511111104,'牛石镇',511111,4),(511111105,'龚嘴镇',511111,4),(511111106,'葫芦镇',511111,4),(511111107,'踏水镇',511111,4),(511111200,'谭坝乡',511111,4),(511111201,'轸溪乡',511111,4),(511111202,'范店乡',511111,4),(511111203,'铜茨乡',511111,4),(511111204,'碧山乡',511111,4),(511111400,'沫江办事处',511111,4),(511112100,'竹根镇',511112,4),(511112101,'牛华镇',511112,4),(511112102,'杨柳镇',511112,4),(511112103,'桥沟镇',511112,4),(511112104,'金粟镇',511112,4),(511112105,'金山镇',511112,4),(511112106,'辉山镇',511112,4),(511112107,'西坝镇',511112,4),(511112108,'冠英镇',511112,4),(511112109,'蔡金镇',511112,4),(511112110,'石麟镇',511112,4),(511112200,'新云乡',511112,4),(511113100,'永和镇',511113,4),(511113101,'金河镇',511113,4),(511113200,'和平彝族乡',511113,4),(511113201,'共安彝族乡',511113,4),(511113202,'吉星乡',511113,4),(511113203,'永胜乡',511113,4),(511123100,'玉津镇',511123,4),(511123101,'孝姑镇',511123,4),(511123102,'石溪镇',511123,4),(511123103,'清溪镇',511123,4),(511123104,'新民镇',511123,4),(511123105,'罗城镇',511123,4),(511123106,'芭沟镇',511123,4),(511123107,'龙孔镇',511123,4),(511123108,'定文镇',511123,4),(511123109,'敖家镇',511123,4),(511123110,'金石井镇',511123,4),(511123111,'泉水镇',511123,4),(511123200,'双溪乡',511123,4),(511123201,'九井乡',511123,4),(511123202,'同兴乡',511123,4),(511123203,'榨鼓乡',511123,4),(511123204,'铁炉乡',511123,4),(511123205,'大兴乡',511123,4),(511123206,'南阳乡',511123,4),(511123207,'纪家乡',511123,4),(511123208,'新盛乡',511123,4),(511123209,'寿保乡',511123,4),(511123210,'舞雩乡',511123,4),(511123211,'下渡乡',511123,4),(511123212,'玉屏乡',511123,4),(511123213,'岷东乡',511123,4),(511123214,'塘坝乡',511123,4),(511123215,'马庙乡',511123,4),(511123216,'公平乡',511123,4),(511123217,'伏龙乡',511123,4),(511124100,'研城镇',511124,4),(511124101,'马踏镇',511124,4),(511124102,'竹园镇',511124,4),(511124103,'研经镇',511124,4),(511124104,'周坡镇',511124,4),(511124105,'千佛镇',511124,4),(511124106,'王村镇',511124,4),(511124107,'三江镇',511124,4),(511124108,'东林镇',511124,4),(511124109,'磨池镇',511124,4),(511124200,'集益乡',511124,4),(511124201,'纯复乡',511124,4),(511124202,'三教乡',511124,4),(511124203,'高滩乡',511124,4),(511124204,'宝五乡',511124,4),(511124205,'四合乡',511124,4),(511124206,'黄钵乡',511124,4),(511124207,'胜泉乡',511124,4),(511124208,'门坎乡',511124,4),(511124209,'石牛乡',511124,4),(511124210,'高凤乡',511124,4),(511124211,'金峰乡',511124,4),(511124212,'分全乡',511124,4),(511124213,'镇阳乡',511124,4),(511124214,'天云乡',511124,4),(511124215,'乌抛乡',511124,4),(511124216,'大佛乡',511124,4),(511126100,'焉城镇',511126,4),(511126101,'黄土镇',511126,4),(511126102,'甘江镇',511126,4),(511126103,'界牌镇',511126,4),(511126104,'中兴镇',511126,4),(511126105,'三洞镇',511126,4),(511126106,'吴场镇',511126,4),(511126107,'木城镇',511126,4),(511126108,'华头镇',511126,4),(511126109,'甘霖镇',511126,4),(511126110,'新场镇',511126,4),(511126200,'顺河乡',511126,4),(511126201,'马村乡',511126,4),(511126202,'土门乡',511126,4),(511126203,'青州乡',511126,4),(511126204,'梧凤乡',511126,4),(511126205,'永青乡',511126,4),(511126206,'迎江乡',511126,4),(511126207,'龙沱乡',511126,4),(511126208,'南安乡',511126,4),(511126209,'歇马乡',511126,4),(511126210,'麻柳乡',511126,4),(511129100,'沐溪镇',511129,4),(511129101,'永福镇',511129,4),(511129102,'大楠镇',511129,4),(511129103,'箭板镇',511129,4),(511129104,'舟坝镇',511129,4),(511129105,'黄丹镇',511129,4),(511129106,'利店镇',511129,4),(511129200,'建和乡',511129,4),(511129201,'幸福乡',511129,4),(511129202,'新凡乡',511129,4),(511129203,'富和乡',511129,4),(511129204,'炭库乡',511129,4),(511129205,'底堡乡',511129,4),(511129206,'杨村乡',511129,4),(511129207,'高笋乡',511129,4),(511129208,'茨竹乡',511129,4),(511129209,'海云乡',511129,4),(511129210,'武圣乡',511129,4),(511129211,'凤村乡',511129,4),(511129400,'五马坪监狱',511129,4),(511132100,'沙坪镇',511132,4),(511132101,'大堡镇',511132,4),(511132102,'毛坪镇',511132,4),(511132103,'五渡镇',511132,4),(511132104,'新林镇',511132,4),(511132105,'黑竹沟镇',511132,4),(511132200,'红花乡',511132,4),(511132201,'宜坪乡',511132,4),(511132202,'杨村乡',511132,4),(511132203,'白杨乡',511132,4),(511132204,'觉莫乡',511132,4),(511132205,'万坪乡',511132,4),(511132206,'杨河乡',511132,4),(511132207,'共和乡',511132,4),(511132208,'新场乡',511132,4),(511132209,'平等乡',511132,4),(511132210,'哈曲乡',511132,4),(511132211,'金岩乡',511132,4),(511132212,'勒乌乡',511132,4),(511133100,'民建镇',511133,4),(511133101,'荣丁镇',511133,4),(511133200,'劳动乡',511133,4),(511133201,'建设乡',511133,4),(511133203,'石梁乡',511133,4),(511133204,'荍坝乡',511133,4),(511133206,'民主乡',511133,4),(511133207,'老河坝乡',511133,4),(511133208,'下溪乡',511133,4),(511133209,'雪口山乡',511133,4),(511133210,'镇江庙乡',511133,4),(511133211,'大竹堡乡',511133,4),(511133213,'苏坝乡',511133,4),(511133214,'烟峰乡',511133,4),(511133215,'袁家溪乡',511133,4),(511133216,'沙腔乡',511133,4),(511133217,'三河口乡',511133,4),(511133221,'梅子坝乡',511133,4),(511133223,'高卓营乡',511133,4),(511133226,'永红乡',511133,4),(511181100,'绥山镇',511181,4),(511181101,'高桥镇',511181,4),(511181102,'罗目镇',511181,4),(511181103,'九里镇',511181,4),(511181104,'龙池镇',511181,4),(511181105,'乐都镇',511181,4),(511181106,'符溪镇',511181,4),(511181107,'峨山镇',511181,4),(511181108,'双福镇',511181,4),(511181109,'桂花桥镇',511181,4),(511181110,'大为镇',511181,4),(511181111,'胜利镇',511181,4),(511181200,'龙门乡',511181,4),(511181201,'川主乡',511181,4),(511181202,'沙溪乡',511181,4),(511181203,'新平乡',511181,4),(511181204,'普兴乡',511181,4),(511181205,'黄湾乡',511181,4),(511181400,'东方电气集团峨嵋半导体材料有限公司',511181,4),(511181401,'四川川投峨眉铁合金（集团）有限责任公司',511181,4),(511181402,'四川省食品药品学校',511181,4),(511181403,'五二五厂',511181,4),(511181404,'西南交大峨眉校区',511181,4),(511302001,'中城街道',511302,4),(511302002,'北城街道',511302,4),(511302003,'西城街道',511302,4),(511302004,'东南街道',511302,4),(511302005,'舞凤街道',511302,4),(511302006,'新建街道',511302,4),(511302007,'华凤街道',511302,4),(511302008,'和平路街道',511302,4),(511302009,'潆溪街道',511302,4),(511302010,'荆溪街道',511302,4),(511302104,'共兴镇',511302,4),(511302105,'金台镇',511302,4),(511302106,'芦溪镇',511302,4),(511302107,'李家镇',511302,4),(511302108,'双桥镇',511302,4),(511302110,'搬罾镇',511302,4),(511302200,'新复乡',511302,4),(511302201,'同仁乡',511302,4),(511302204,'大林乡',511302,4),(511302205,'梵殿乡',511302,4),(511302206,'顺河乡',511302,4),(511302207,'灯台乡',511302,4),(511302208,'辉景乡',511302,4),(511302209,'龙桂乡',511302,4),(511302210,'永丰乡',511302,4),(511302211,'桂花乡',511302,4),(511302212,'凤山乡',511302,4),(511302213,'渔溪乡',511302,4),(511302401,'潆华工业集中区',511302,4),(511303001,'白塔街道',511303,4),(511303002,'清溪街道',511303,4),(511303003,'小龙街道',511303,4),(511303004,'龙门街道',511303,4),(511303005,'青莲街道',511303,4),(511303006,'都京街道',511303,4),(511303007,'青松街道',511303,4),(511303103,'江陵镇',511303,4),(511303104,'擦耳镇',511303,4),(511303105,'老君镇',511303,4),(511303106,'东观镇',511303,4),(511303107,'长乐镇',511303,4),(511303108,'胜观镇',511303,4),(511303109,'永安镇',511303,4),(511303110,'阙家镇',511303,4),(511303111,'石圭镇',511303,4),(511303112,'青居镇',511303,4),(511303115,'会龙镇',511303,4),(511303116,'螺溪镇',511303,4),(511303201,'走马乡',511303,4),(511303202,'喻家乡',511303,4),(511303203,'马家乡',511303,4),(511303204,'黄溪乡',511303,4),(511303205,'万家乡',511303,4),(511303207,'御史乡',511303,4),(511303208,'隆兴乡',511303,4),(511303209,'斑竹乡',511303,4),(511303210,'鄢家乡',511303,4),(511303211,'佛门乡',511303,4),(511303212,'溪头乡',511303,4),(511303215,'凤凰乡',511303,4),(511303218,'南江乡',511303,4),(511304001,'火花街道',511304,4),(511304002,'凤垭街道',511304,4),(511304003,'都尉街道',511304,4),(511304004,'文峰街道',511304,4),(511304101,'曲水镇',511304,4),(511304102,'李渡镇',511304,4),(511304103,'吉安镇',511304,4),(511304104,'龙岭镇',511304,4),(511304105,'金凤镇',511304,4),(511304106,'安福镇',511304,4),(511304107,'安平镇',511304,4),(511304108,'世阳镇',511304,4),(511304109,'大通镇',511304,4),(511304110,'一立镇',511304,4),(511304111,'龙蟠镇',511304,4),(511304112,'里坝镇',511304,4),(511304113,'集凤镇',511304,4),(511304114,'金宝镇',511304,4),(511304115,'三会镇',511304,4),(511304116,'西兴镇',511304,4),(511304117,'双桂镇',511304,4),(511304119,'七宝寺镇',511304,4),(511304120,'龙泉镇',511304,4),(511304201,'河西乡',511304,4),(511304202,'移山乡',511304,4),(511304203,'木老乡',511304,4),(511304205,'新场乡',511304,4),(511304207,'土门乡',511304,4),(511304208,'临江乡',511304,4),(511304209,'双店乡',511304,4),(511304211,'白家乡',511304,4),(511304212,'华兴乡',511304,4),(511304213,'大同乡',511304,4),(511304215,'盐溪乡',511304,4),(511304216,'桥龙乡',511304,4),(511304218,'天星乡',511304,4),(511304219,'大观乡',511304,4),(511304220,'大兴乡',511304,4),(511304221,'新庙乡',511304,4),(511304222,'桃园乡',511304,4),(511304223,'太和乡',511304,4),(511304226,'积善乡',511304,4),(511304228,'石楼乡',511304,4),(511304229,'礼乐乡',511304,4),(511304230,'花园乡',511304,4),(511321001,'滨江街道',511321,4),(511321002,'蜀北街道',511321,4),(511321100,'南隆镇',511321,4),(511321101,'河东镇',511321,4),(511321102,'老鸦镇',511321,4),(511321103,'永定镇',511321,4),(511321104,'碑院镇',511321,4),(511321105,'谢河镇',511321,4),(511321106,'盘龙镇',511321,4),(511321107,'铁佛塘镇',511321,4),(511321108,'石河镇',511321,4),(511321109,'王家镇',511321,4),(511321110,'富利镇',511321,4),(511321111,'楠木镇',511321,4),(511321112,'长坪镇',511321,4),(511321113,'东坝镇',511321,4),(511321114,'河坝镇',511321,4),(511321115,'定水镇',511321,4),(511321116,'大王镇',511321,4),(511321117,'黄金镇',511321,4),(511321118,'流马镇',511321,4),(511321119,'建兴镇',511321,4),(511321120,'三官镇',511321,4),(511321121,'伏虎镇',511321,4),(511321122,'双佛镇',511321,4),(511321123,'花罐镇',511321,4),(511321124,'大桥镇',511321,4),(511321125,'大河镇',511321,4),(511321126,'万年镇',511321,4),(511321127,'升钟镇',511321,4),(511321128,'升水镇',511321,4),(511321129,'大坪镇',511321,4),(511321130,'神坝镇',511321,4),(511321200,'碾盘乡',511321,4),(511321201,'火峰乡',511321,4),(511321202,'群龙乡',511321,4),(511321204,'大富乡',511321,4),(511321206,'碧龙乡',511321,4),(511321208,'三清乡',511321,4),(511321209,'中心乡',511321,4),(511321210,'五灵乡',511321,4),(511321211,'平桥乡',511321,4),(511321212,'梅家乡',511321,4),(511321213,'龙庙乡',511321,4),(511321214,'马王乡',511321,4),(511321215,'大堰乡',511321,4),(511321216,'窑场乡',511321,4),(511321217,'太华乡',511321,4),(511321218,'兴盛乡',511321,4),(511321220,'寒坡乡',511321,4),(511321222,'肖家乡',511321,4),(511321225,'四龙乡',511321,4),(511321226,'碾垭乡',511321,4),(511321227,'千秋乡',511321,4),(511321228,'玉镇乡',511321,4),(511321229,'小元乡',511321,4),(511321230,'柳驿乡',511321,4),(511321231,'石泉乡',511321,4),(511321232,'雄狮乡',511321,4),(511321233,'宏观乡',511321,4),(511321234,'永庆乡',511321,4),(511321235,'永红乡',511321,4),(511321236,'柳树乡',511321,4),(511321237,'保城乡',511321,4),(511321238,'双峰乡',511321,4),(511321239,'皂角乡',511321,4),(511321240,'丘垭乡',511321,4),(511321241,'光中乡',511321,4),(511321242,'铁鞭乡',511321,4),(511321243,'太霞乡',511321,4),(511321244,'店垭乡',511321,4),(511321245,'桐坪乡',511321,4),(511321246,'西河乡',511321,4),(511321401,'工业园区',511321,4),(511322100,'朗池镇',511322,4),(511322101,'渌井镇',511322,4),(511322102,'东升镇',511322,4),(511322103,'骆市镇',511322,4),(511322104,'黄渡镇',511322,4),(511322105,'小桥镇',511322,4),(511322106,'灵鹫镇',511322,4),(511322107,'老林镇',511322,4),(511322108,'木垭镇',511322,4),(511322109,'消水镇',511322,4),(511322110,'双流镇',511322,4),(511322111,'绿水镇',511322,4),(511322112,'三兴镇',511322,4),(511322113,'蓼叶镇',511322,4),(511322114,'新店镇',511322,4),(511322115,'回龙镇',511322,4),(511322116,'星火镇',511322,4),(511322117,'西桥镇',511322,4),(511322118,'城南镇',511322,4),(511322201,'济川乡',511322,4),(511322202,'茶盘乡',511322,4),(511322204,'双溪乡',511322,4),(511322206,'带河乡',511322,4),(511322207,'四喜乡',511322,4),(511322210,'玲珑乡',511322,4),(511322211,'涌泉乡',511322,4),(511322212,'木顶乡',511322,4),(511322213,'清源乡',511322,4),(511322214,'龙伏乡',511322,4),(511322215,'双林乡',511322,4),(511322216,'明德乡',511322,4),(511322217,'普岭乡',511322,4),(511322218,'三元乡',511322,4),(511322219,'太蓬乡',511322,4),(511322221,'柏林乡',511322,4),(511322222,'孔雀乡',511322,4),(511322223,'合兴乡',511322,4),(511322224,'六合乡',511322,4),(511322225,'悦中乡',511322,4),(511322227,'高码乡',511322,4),(511322228,'安固乡',511322,4),(511322230,'大庙乡',511322,4),(511322231,'通天乡',511322,4),(511322232,'安化乡',511322,4),(511322233,'法堂乡',511322,4),(511322234,'增产乡',511322,4),(511322236,'丰产乡',511322,4),(511322237,'清水乡',511322,4),(511322238,'青山乡',511322,4),(511322239,'福源乡',511322,4),(511322240,'柏坪乡',511322,4),(511322241,'七涧乡',511322,4),(511322243,'凉风乡',511322,4),(511323101,'锦屏镇',511323,4),(511323102,'巨龙镇',511323,4),(511323103,'正源镇',511323,4),(511323104,'龙云镇',511323,4),(511323105,'金溪镇',511323,4),(511323106,'徐家镇',511323,4),(511323107,'河舒镇',511323,4),(511323108,'利溪镇',511323,4),(511323109,'龙蚕镇',511323,4),(511323110,'杨家镇',511323,4),(511323111,'罗家镇',511323,4),(511323112,'福德镇',511323,4),(511323113,'银汉镇',511323,4),(511323114,'兴旺镇',511323,4),(511323115,'相如镇',511323,4),(511323201,'高庙乡',511323,4),(511323202,'群乐乡',511323,4),(511323203,'长梁乡',511323,4),(511323204,'两路乡',511323,4),(511323205,'睦坝乡',511323,4),(511323207,'石梁乡',511323,4),(511323208,'平头乡',511323,4),(511323209,'鲜店乡',511323,4),(511323211,'茶亭乡',511323,4),(511323212,'诸家乡',511323,4),(511323214,'骑龙乡',511323,4),(511323215,'金甲乡',511323,4),(511323217,'新园乡',511323,4),(511323218,'三坝乡',511323,4),(511323220,'碧溪乡',511323,4),(511323221,'柳滩乡',511323,4),(511323222,'石孔乡',511323,4),(511323223,'开元乡',511323,4),(511323225,'新河乡',511323,4),(511323226,'南燕乡',511323,4),(511323227,'天成乡',511323,4),(511323228,'海田乡',511323,4),(511323229,'济渡乡',511323,4),(511323230,'凤石乡',511323,4),(511324100,'金城镇',511324,4),(511324101,'新政镇',511324,4),(511324102,'马鞍镇',511324,4),(511324103,'永乐镇',511324,4),(511324104,'日兴镇',511324,4),(511324105,'土门镇',511324,4),(511324106,'复兴镇',511324,4),(511324107,'观紫镇',511324,4),(511324108,'先锋镇',511324,4),(511324109,'三蛟镇',511324,4),(511324110,'回春镇',511324,4),(511324111,'柳垭镇',511324,4),(511324112,'义路镇',511324,4),(511324113,'立山镇',511324,4),(511324114,'三河镇',511324,4),(511324115,'瓦子镇',511324,4),(511324116,'大寅镇',511324,4),(511324117,'二道镇',511324,4),(511324118,'赛金镇',511324,4),(511324119,'丁字桥镇',511324,4),(511324120,'大仪镇',511324,4),(511324121,'张公镇',511324,4),(511324122,'五福镇',511324,4),(511324123,'周河镇',511324,4),(511324124,'杨桥镇',511324,4),(511324125,'保平镇',511324,4),(511324126,'文星镇',511324,4),(511324127,'双胜镇',511324,4),(511324128,'度门镇',511324,4),(511324200,'老木乡',511324,4),(511324201,'檬垭乡',511324,4),(511324202,'铜鼓乡',511324,4),(511324205,'中坝乡',511324,4),(511324206,'双盘乡',511324,4),(511324207,'凤仪乡',511324,4),(511324208,'双庆乡',511324,4),(511324209,'大风乡',511324,4),(511324210,'福临乡',511324,4),(511324212,'来仪乡',511324,4),(511324213,'碧泉乡',511324,4),(511324214,'乐兴乡',511324,4),(511324216,'石佛乡',511324,4),(511324217,'思德乡',511324,4),(511324218,'秋垭乡',511324,4),(511324219,'大罗乡',511324,4),(511324220,'义门乡',511324,4),(511324221,'合作乡',511324,4),(511324225,'龙桥乡',511324,4),(511324226,'板桥乡',511324,4),(511324227,'永光乡',511324,4),(511324228,'炬光乡',511324,4),(511324229,'九龙乡',511324,4),(511324230,'芭蕉乡',511324,4),(511324231,'灯塔乡',511324,4),(511324232,'武棚乡',511324,4),(511324241,'柴井乡',511324,4),(511324242,'光华乡',511324,4),(511325100,'晋城镇',511325,4),(511325101,'太平镇',511325,4),(511325102,'大全镇',511325,4),(511325103,'仙林镇',511325,4),(511325104,'古楼镇',511325,4),(511325105,'义兴镇',511325,4),(511325106,'关文镇',511325,4),(511325107,'凤鸣镇',511325,4),(511325108,'青狮镇',511325,4),(511325109,'槐树镇',511325,4),(511325110,'鸣龙镇',511325,4),(511325111,'双凤镇',511325,4),(511325112,'高院镇',511325,4),(511325113,'仁和镇',511325,4),(511325114,'多扶镇',511325,4),(511325202,'常林乡',511325,4),(511325203,'占山乡',511325,4),(511325204,'莲池乡',511325,4),(511325205,'宏桥乡',511325,4),(511325207,'金泉乡',511325,4),(511325208,'华光乡',511325,4),(511325209,'金源乡',511325,4),(511325210,'岱林乡',511325,4),(511325211,'李桥乡',511325,4),(511325212,'中岭乡',511325,4),(511325213,'西碾乡',511325,4),(511325214,'紫岩乡',511325,4),(511325215,'复安乡',511325,4),(511325216,'观凤乡',511325,4),(511325217,'青龙乡',511325,4),(511325218,'双洛乡',511325,4),(511325219,'义和乡',511325,4),(511325221,'中南乡',511325,4),(511325222,'双江乡',511325,4),(511325223,'凤和乡',511325,4),(511325224,'东岱乡',511325,4),(511325225,'同德乡',511325,4),(511325226,'祥龙乡',511325,4),(511325227,'车龙乡',511325,4),(511325228,'扶君乡',511325,4),(511325229,'东太乡',511325,4),(511325230,'永清乡',511325,4),(511325231,'金山乡',511325,4),(511325232,'罐垭乡',511325,4),(511381001,'保宁街道',511381,4),(511381003,'沙溪街道',511381,4),(511381004,'七里街道',511381,4),(511381005,'江南街道',511381,4),(511381103,'彭城镇',511381,4),(511381104,'双龙镇',511381,4),(511381105,'柏垭镇',511381,4),(511381106,'飞凤镇',511381,4),(511381107,'思依镇',511381,4),(511381108,'文成镇',511381,4),(511381109,'二龙镇',511381,4),(511381110,'石滩镇',511381,4),(511381111,'老观镇',511381,4),(511381112,'龙泉镇',511381,4),(511381113,'千佛镇',511381,4),(511381114,'望垭镇',511381,4),(511381115,'河溪镇',511381,4),(511381116,'妙高镇',511381,4),(511381117,'洪山镇',511381,4),(511381118,'石龙镇',511381,4),(511381119,'宝马镇',511381,4),(511381120,'水观镇',511381,4),(511381121,'金垭镇',511381,4),(511381122,'玉台镇',511381,4),(511381123,'裕华镇',511381,4),(511381201,'垭口乡',511381,4),(511381202,'治平乡',511381,4),(511381208,'天宫乡',511381,4),(511381209,'天林乡',511381,4),(511381210,'枣碧乡',511381,4),(511381211,'北门乡',511381,4),(511381212,'桥楼乡',511381,4),(511381213,'河楼乡',511381,4),(511381215,'木兰乡',511381,4),(511381216,'东兴乡',511381,4),(511381217,'清泉乡',511381,4),(511381219,'博树回族乡',511381,4),(511381221,'凉水乡',511381,4),(511381224,'解元乡',511381,4),(511381225,'西山乡',511381,4),(511381226,'方山乡',511381,4),(511381232,'金子乡',511381,4),(511381233,'三庙乡',511381,4),(511381234,'峰占乡',511381,4),(511381235,'鹤峰乡',511381,4),(511381239,'金城乡',511381,4),(511381241,'五马乡',511381,4),(511381243,'朱镇乡',511381,4),(511381245,'宝台乡',511381,4),(511381247,'福星乡',511381,4),(511402001,'通惠街道',511402,4),(511402002,'大石桥街道',511402,4),(511402003,'苏祠街道',511402,4),(511402100,'白马镇',511402,4),(511402101,'象耳镇',511402,4),(511402102,'太和镇',511402,4),(511402103,'悦兴镇',511402,4),(511402104,'尚义镇',511402,4),(511402105,'多悦镇',511402,4),(511402106,'秦家镇',511402,4),(511402107,'万胜镇',511402,4),(511402108,'崇仁镇',511402,4),(511402109,'思蒙镇',511402,4),(511402110,'修文镇',511402,4),(511402112,'松江镇',511402,4),(511402113,'崇礼镇',511402,4),(511402114,'富牛镇',511402,4),(511402115,'永寿镇',511402,4),(511402204,'三苏乡',511402,4),(511402205,'广济乡',511402,4),(511402206,'盘鳌乡',511402,4),(511402210,'土地乡',511402,4),(511402211,'复盛乡',511402,4),(511402212,'复兴乡',511402,4),(511402213,'金花乡',511402,4),(511402214,'柳圣乡',511402,4),(511421102,'文宫镇',511421,4),(511421112,'禾加镇',511421,4),(511421116,'龙马镇',511421,4),(511421117,'方加镇',511421,4),(511421123,'文林镇',511421,4),(511421124,'大化镇',511421,4),(511421125,'高家镇',511421,4),(511421126,'中农镇',511421,4),(511421127,'禄加镇',511421,4),(511421128,'宝飞镇',511421,4),(511421129,'彰加镇',511421,4),(511421130,'慈航镇',511421,4),(511421131,'汪洋镇',511421,4),(511421132,'钟祥镇',511421,4),(511421133,'始建镇',511421,4),(511421134,'满井镇',511421,4),(511421135,'富加镇',511421,4),(511421136,'龙正镇',511421,4),(511421137,'黑龙滩镇',511421,4),(511421138,'清水镇',511421,4),(511421139,'视高镇',511421,4),(511421140,'北斗镇',511421,4),(511421141,'兴盛镇',511421,4),(511421142,'观寺镇',511421,4),(511421200,'虞丞乡',511421,4),(511421203,'青岗乡',511421,4),(511421209,'古佛乡',511421,4),(511421210,'板燕乡',511421,4),(511421218,'石咀乡',511421,4),(511421219,'藕塘乡',511421,4),(511421222,'玉龙乡',511421,4),(511421232,'合兴乡',511421,4),(511421239,'促进乡',511421,4),(511421251,'鸭池乡',511421,4),(511421254,'双堡乡',511421,4),(511421258,'河口乡',511421,4),(511421259,'板桥乡',511421,4),(511421268,'元通乡',511421,4),(511421269,'向家乡',511421,4),(511421276,'里仁乡',511421,4),(511421281,'兆嘉乡',511421,4),(511421287,'宝马乡',511421,4),(511421288,'珠嘉乡',511421,4),(511421289,'鳌陵乡',511421,4),(511421291,'中岗乡',511421,4),(511421292,'龙桥乡',511421,4),(511421293,'曲江乡',511421,4),(511421294,'城堰乡',511421,4),(511421295,'谢安乡',511421,4),(511421296,'新店乡',511421,4),(511421297,'天峨乡',511421,4),(511421298,'识经乡',511421,4),(511421299,'凤陵乡',511421,4),(511421300,'涂加乡',511421,4),(511421301,'四公乡',511421,4),(511421302,'松峰乡',511421,4),(511421303,'曹家乡',511421,4),(511421304,'景贤乡',511421,4),(511421305,'农旺乡',511421,4),(511421306,'洪峰乡',511421,4),(511422101,'青龙镇',511422,4),(511422103,'公义镇',511422,4),(511422105,'观音镇',511422,4),(511422107,'彭溪镇',511422,4),(511422108,'黄丰镇',511422,4),(511422110,'谢家镇',511422,4),(511422111,'牧马镇',511422,4),(511422112,'凤鸣镇',511422,4),(511422113,'江口镇',511422,4),(511422205,'保胜乡',511422,4),(511422211,'义和乡',511422,4),(511422212,'武阳乡',511422,4),(511422213,'锦江乡',511422,4),(511423101,'止戈镇',511423,4),(511423102,'三宝镇',511423,4),(511423108,'花溪镇',511423,4),(511423112,'洪川镇',511423,4),(511423113,'余坪镇',511423,4),(511423114,'槽渔滩镇',511423,4),(511423115,'中保镇',511423,4),(511423116,'东岳镇',511423,4),(511423117,'柳江镇',511423,4),(511423118,'高庙镇',511423,4),(511423119,'瓦屋山镇',511423,4),(511423200,'中山乡',511423,4),(511423201,'将军乡',511423,4),(511423205,'汉王乡',511423,4),(511423212,'桃源乡',511423,4),(511424102,'仁美镇',511424,4),(511424105,'丹棱镇',511424,4),(511424106,'杨场镇',511424,4),(511424107,'双桥镇',511424,4),(511424108,'张场镇',511424,4),(511424200,'石桥乡',511424,4),(511424204,'顺龙乡',511424,4),(511425102,'汉阳镇',511425,4),(511425105,'河坝子镇',511425,4),(511425106,'南城镇',511425,4),(511425107,'青城镇',511425,4),(511425108,'瑞峰镇',511425,4),(511425109,'黑龙镇',511425,4),(511425110,'西龙镇',511425,4),(511425205,'高台乡',511425,4),(511425217,'白果乡',511425,4),(511425218,'罗波乡',511425,4),(511502001,'北城街道',511502,4),(511502002,'东城街道',511502,4),(511502003,'南城街道',511502,4),(511502004,'西城街道',511502,4),(511502005,'南岸街道',511502,4),(511502006,'西郊街道',511502,4),(511502007,'安阜街道',511502,4),(511502008,'白沙湾街道',511502,4),(511502009,'赵场街道',511502,4),(511502010,'象鼻街道',511502,4),(511502011,'沙坪街道',511502,4),(511502100,'南广镇',511502,4),(511502101,'李庄镇',511502,4),(511502102,'菜坝镇',511502,4),(511502104,'金坪镇',511502,4),(511502106,'高店镇',511502,4),(511502108,'牟坪镇',511502,4),(511502109,'李端镇',511502,4),(511502110,'邱场镇',511502,4),(511502111,'宗场镇',511502,4),(511502200,'宋家乡',511502,4),(511502201,'明威乡',511502,4),(511502202,'凉姜乡',511502,4),(511502204,'思坡乡',511502,4),(511521100,'柏溪镇',511521,4),(511521101,'喜捷镇',511521,4),(511521102,'观音镇',511521,4),(511521103,'横江镇',511521,4),(511521104,'永兴镇',511521,4),(511521105,'白花镇',511521,4),(511521106,'柳嘉镇',511521,4),(511521107,'泥溪镇',511521,4),(511521108,'蕨溪镇',511521,4),(511521109,'商州镇',511521,4),(511521110,'高场镇',511521,4),(511521111,'安边镇',511521,4),(511521112,'双龙镇',511521,4),(511521113,'李场镇',511521,4),(511521114,'合什镇',511521,4),(511521115,'古罗镇',511521,4),(511521116,'孔滩镇',511521,4),(511521117,'复龙镇',511521,4),(511521118,'普安镇',511521,4),(511521200,'古柏乡',511521,4),(511521201,'王场乡',511521,4),(511521202,'双谊乡',511521,4),(511521203,'隆兴乡',511521,4),(511521204,'泥南乡',511521,4),(511521205,'龙池乡',511521,4),(511521209,'凤仪乡',511521,4),(511523100,'江安镇',511523,4),(511523101,'红桥镇',511523,4),(511523102,'桐梓镇',511523,4),(511523103,'井口镇',511523,4),(511523104,'怡乐镇',511523,4),(511523105,'留耕镇',511523,4),(511523106,'底蓬镇',511523,4),(511523108,'五矿镇',511523,4),(511523109,'迎安镇',511523,4),(511523110,'夕佳山镇',511523,4),(511523111,'水清镇',511523,4),(511523112,'铁清镇',511523,4),(511523113,'四面山镇',511523,4),(511523114,'大井镇',511523,4),(511523115,'阳春镇',511523,4),(511523200,'大妙乡',511523,4),(511523203,'蟠龙乡',511523,4),(511523205,'仁和乡',511523,4),(511524100,'长宁镇',511524,4),(511524101,'梅硐镇',511524,4),(511524102,'双河镇',511524,4),(511524103,'硐底镇',511524,4),(511524104,'花滩镇',511524,4),(511524105,'竹海镇',511524,4),(511524106,'老翁镇',511524,4),(511524107,'古河镇',511524,4),(511524108,'下长镇',511524,4),(511524110,'龙头镇',511524,4),(511524200,'铜锣乡',511524,4),(511524201,'桃坪乡',511524,4),(511524203,'铜鼓乡',511524,4),(511524204,'井江乡',511524,4),(511524205,'三元乡',511524,4),(511524206,'开佛乡',511524,4),(511524207,'富兴乡',511524,4),(511524208,'梅白乡',511524,4),(511525100,'文江镇',511525,4),(511525101,'庆符镇',511525,4),(511525102,'沙河镇',511525,4),(511525103,'嘉乐镇',511525,4),(511525104,'大窝镇',511525,4),(511525105,'罗场镇',511525,4),(511525106,'蕉村镇',511525,4),(511525107,'可久镇',511525,4),(511525108,'来复镇',511525,4),(511525109,'月江镇',511525,4),(511525110,'胜天镇',511525,4),(511525111,'复兴镇',511525,4),(511525203,'趱滩乡',511525,4),(511525204,'羊田乡',511525,4),(511525205,'落润乡',511525,4),(511525206,'潆溪乡',511525,4),(511525207,'庆岭乡',511525,4),(511525208,'双河乡',511525,4),(511525210,'四烈乡',511525,4),(511526100,'珙泉镇',511526,4),(511526101,'巡场镇',511526,4),(511526102,'孝儿镇',511526,4),(511526103,'底洞镇',511526,4),(511526104,'上罗镇',511526,4),(511526105,'洛表镇',511526,4),(511526106,'洛亥镇',511526,4),(511526107,'王家镇',511526,4),(511526200,'恒丰乡',511526,4),(511526202,'沐滩乡',511526,4),(511526203,'仁义乡',511526,4),(511526205,'玉和苗族乡',511526,4),(511526207,'下罗乡',511526,4),(511526209,'罗渡苗族乡',511526,4),(511526210,'曹营乡',511526,4),(511526211,'石碑乡',511526,4),(511526212,'观斗苗族乡',511526,4),(511527100,'筠连镇',511527,4),(511527101,'腾达镇',511527,4),(511527102,'巡司镇',511527,4),(511527103,'双腾镇',511527,4),(511527104,'沐爱镇',511527,4),(511527105,'维新镇',511527,4),(511527107,'镇舟镇',511527,4),(511527108,'蒿坝镇',511527,4),(511527109,'大雪山镇',511527,4),(511527200,'武德乡',511527,4),(511527202,'塘坝乡',511527,4),(511527203,'龙镇乡',511527,4),(511527204,'孔雀乡',511527,4),(511527205,'乐义乡',511527,4),(511527206,'高坎乡',511527,4),(511527208,'团林苗族乡',511527,4),(511527209,'联合苗族乡',511527,4),(511527210,'高坪苗族乡',511527,4),(511528100,'古宋镇',511528,4),(511528101,'僰王山镇',511528,4),(511528103,'共乐镇',511528,4),(511528105,'莲花镇',511528,4),(511528107,'九丝城镇',511528,4),(511528108,'石海镇',511528,4),(511528109,'太平镇',511528,4),(511528110,'周家镇',511528,4),(511528111,'五星镇',511528,4),(511528200,'大坝苗族乡',511528,4),(511528201,'毓秀苗族乡',511528,4),(511528202,'玉屏乡',511528,4),(511528205,'大河苗族乡',511528,4),(511528206,'麒麟苗族乡',511528,4),(511528207,'仙峰苗族乡',511528,4),(511529100,'锦屏镇',511529,4),(511529101,'新市镇',511529,4),(511529102,'中都镇',511529,4),(511529103,'龙华镇',511529,4),(511529104,'大乘镇',511529,4),(511529106,'富荣镇',511529,4),(511529107,'新安镇',511529,4),(511529109,'书楼镇',511529,4),(511529110,'屏山镇',511529,4),(511529203,'鸭池乡',511529,4),(511529204,'龙溪乡',511529,4),(511529205,'太平乡',511529,4),(511529208,'夏溪乡',511529,4),(511529210,'屏边彝族乡',511529,4),(511529211,'清平彝族乡',511529,4),(511602001,'浓洄街道',511602,4),(511602002,'北辰街道',511602,4),(511602004,'广福街道',511602,4),(511602005,'万盛街道',511602,4),(511602006,'中桥街道',511602,4),(511602100,'枣山镇',511602,4),(511602101,'官盛镇',511602,4),(511602102,'协兴镇',511602,4),(511602103,'浓溪镇',511602,4),(511602104,'悦来镇',511602,4),(511602105,'兴平镇',511602,4),(511602106,'井河镇',511602,4),(511602107,'花桥镇',511602,4),(511602108,'龙台镇',511602,4),(511602109,'肖溪镇',511602,4),(511602110,'恒升镇',511602,4),(511602111,'石笋镇',511602,4),(511602112,'白市镇',511602,4),(511602113,'大安镇',511602,4),(511602200,'穿石乡',511602,4),(511602201,'广门乡',511602,4),(511602202,'广罗乡',511602,4),(511602203,'方坪乡',511602,4),(511602204,'化龙乡',511602,4),(511602205,'大龙乡',511602,4),(511602206,'崇望乡',511602,4),(511602207,'龙安乡',511602,4),(511602208,'彭家乡',511602,4),(511602209,'杨坪乡',511602,4),(511602210,'郑山乡',511602,4),(511602211,'蒲莲乡',511602,4),(511602212,'大有乡',511602,4),(511602213,'消河乡',511602,4),(511602214,'东岳乡',511602,4),(511602215,'苏溪乡',511602,4),(511602216,'白马乡',511602,4),(511621100,'九龙镇',511621,4),(511621101,'花园镇',511621,4),(511621102,'坪滩镇',511621,4),(511621103,'龙孔镇',511621,4),(511621104,'镇裕镇',511621,4),(511621105,'白庙镇',511621,4),(511621106,'酉溪镇',511621,4),(511621107,'同兴镇',511621,4),(511621108,'兴隆镇',511621,4),(511621109,'秦溪镇',511621,4),(511621110,'顾县镇',511621,4),(511621111,'苟角镇',511621,4),(511621112,'天平镇',511621,4),(511621113,'石垭镇',511621,4),(511621114,'乔家镇',511621,4),(511621115,'罗渡镇',511621,4),(511621116,'裕民镇',511621,4),(511621117,'中和镇',511621,4),(511621118,'新场镇',511621,4),(511621119,'普安镇',511621,4),(511621120,'赛龙镇',511621,4),(511621121,'临溪镇',511621,4),(511621200,'朝阳乡',511621,4),(511621201,'北城乡',511621,4),(511621202,'镇龙乡',511621,4),(511621203,'粽粑乡',511621,4),(511621205,'排楼乡',511621,4),(511621206,'西板乡',511621,4),(511621207,'嘉陵乡',511621,4),(511621208,'石鼓乡',511621,4),(511621209,'平安乡',511621,4),(511621210,'恐龙乡',511621,4),(511621211,'团结乡',511621,4),(511621212,'黄龙乡',511621,4),(511621213,'双鄢乡',511621,4),(511621214,'东板乡',511621,4),(511621215,'长田乡',511621,4),(511621216,'鱼峰乡',511621,4),(511621218,'大石乡',511621,4),(511621219,'花板乡',511621,4),(511621220,'大佛乡',511621,4),(511621222,'齐福乡',511621,4),(511621223,'伏龙乡',511621,4),(511622100,'沿口镇',511622,4),(511622101,'中心镇',511622,4),(511622102,'烈面镇',511622,4),(511622103,'飞龙镇',511622,4),(511622104,'乐善镇',511622,4),(511622105,'万善镇',511622,4),(511622106,'龙女镇',511622,4),(511622107,'三溪镇',511622,4),(511622108,'赛马镇',511622,4),(511622109,'胜利镇',511622,4),(511622110,'金牛镇',511622,4),(511622111,'清平镇',511622,4),(511622112,'街子镇',511622,4),(511622113,'万隆镇',511622,4),(511622114,'礼安镇',511622,4),(511622115,'华封镇',511622,4),(511622200,'鸣钟乡',511622,4),(511622201,'真静乡',511622,4),(511622202,'猛山乡',511622,4),(511622203,'双星乡',511622,4),(511622204,'龙庭乡',511622,4),(511622205,'石盘乡',511622,4),(511622207,'旧县乡',511622,4),(511622208,'鼓匠乡',511622,4),(511622209,'白坪乡',511622,4),(511622210,'永胜乡',511622,4),(511622211,'新学乡',511622,4),(511622212,'宝箴塞乡',511622,4),(511622213,'金光乡',511622,4),(511622214,'八一乡',511622,4),(511622215,'高石乡',511622,4),(511623100,'鼎屏镇',511623,4),(511623101,'城北镇',511623,4),(511623102,'城南镇',511623,4),(511623103,'柑子镇',511623,4),(511623104,'龙安镇',511623,4),(511623105,'观音桥镇',511623,4),(511623106,'牟家镇',511623,4),(511623107,'合流镇',511623,4),(511623108,'坛同镇',511623,4),(511623109,'高滩镇',511623,4),(511623110,'九龙镇',511623,4),(511623111,'御临镇',511623,4),(511623112,'袁市镇',511623,4),(511623113,'丰禾镇',511623,4),(511623114,'八耳镇',511623,4),(511623115,'石永镇',511623,4),(511623116,'兴仁镇',511623,4),(511623117,'王家镇',511623,4),(511623200,'太和乡',511623,4),(511623201,'新镇乡',511623,4),(511623202,'冷家乡',511623,4),(511623203,'长安乡',511623,4),(511623204,'西天乡',511623,4),(511623205,'梁板乡',511623,4),(511623206,'甘坝乡',511623,4),(511623207,'四海乡',511623,4),(511623208,'九峰乡',511623,4),(511623209,'椿木乡',511623,4),(511623210,'华蓥乡',511623,4),(511623211,'子中乡',511623,4),(511623212,'风垭乡',511623,4),(511623213,'黎家乡',511623,4),(511623214,'龙桥乡',511623,4),(511623215,'关河乡',511623,4),(511623216,'两河乡',511623,4),(511623217,'长滩乡',511623,4),(511623218,'凉山乡',511623,4),(511623219,'复盛乡',511623,4),(511623220,'古路乡',511623,4),(511623221,'荆坪乡',511623,4),(511623222,'柳塘乡',511623,4),(511623223,'石滓乡',511623,4),(511623224,'护邻乡',511623,4),(511623225,'同石乡',511623,4),(511623226,'三古乡',511623,4),(511681001,'双河街道',511681,4),(511681002,'古桥街道',511681,4),(511681003,'华龙街道',511681,4),(511681101,'天池镇',511681,4),(511681102,'禄市镇',511681,4),(511681103,'永兴镇',511681,4),(511681104,'明月镇',511681,4),(511681105,'阳和镇',511681,4),(511681106,'高兴镇',511681,4),(511681107,'观音溪镇',511681,4),(511681108,'溪口镇',511681,4),(511681109,'庆华镇',511681,4),(511681200,'红岩乡',511681,4),(511702001,'东城街道',511702,4),(511702002,'西城街道',511702,4),(511702003,'朝阳街道',511702,4),(511702100,'西外镇',511702,4),(511702101,'北外镇',511702,4),(511702102,'罗江镇',511702,4),(511702103,'蒲家镇',511702,4),(511702104,'复兴镇',511702,4),(511702105,'双龙镇',511702,4),(511702106,'魏兴镇',511702,4),(511702107,'江陵镇',511702,4),(511702108,'碑庙镇',511702,4),(511702200,'盘石乡',511702,4),(511702201,'东岳乡',511702,4),(511702202,'新村乡',511702,4),(511702203,'檬双乡',511702,4),(511702204,'龙滩乡',511702,4),(511702205,'梓桐乡',511702,4),(511702206,'北山乡',511702,4),(511702207,'金石乡',511702,4),(511702208,'安云乡',511702,4),(511702209,'青宁乡',511702,4),(511703001,'三里坪街道',511721,4),(511703002,'翠屏街道',511721,4),(511703100,'亭子镇',511721,4),(511703101,'福善镇',511721,4),(511703102,'麻柳镇',511721,4),(511703103,'檀木镇',511721,4),(511703104,'大树镇',511721,4),(511703105,'南岳镇',511721,4),(511703106,'万家镇',511721,4),(511703107,'景市镇',511721,4),(511703108,'百节镇',511721,4),(511703109,'赵家镇',511721,4),(511703110,'河市镇',511721,4),(511703111,'石板镇',511721,4),(511703112,'金垭镇',511721,4),(511703113,'渡市镇',511721,4),(511703114,'管村镇',511721,4),(511703115,'石梯镇',511721,4),(511703116,'石桥镇',511721,4),(511703117,'堡子镇',511721,4),(511703200,'大风乡',511721,4),(511703201,'江阳乡',511721,4),(511703202,'东兴乡',511721,4),(511703203,'安仁乡',511721,4),(511703204,'葫芦乡',511721,4),(511703205,'大滩乡',511721,4),(511703206,'花红乡',511721,4),(511703207,'黄庭乡',511721,4),(511703208,'黄都乡',511721,4),(511703209,'平滩乡',511721,4),(511703210,'碑高乡',511721,4),(511703211,'马家乡',511721,4),(511703212,'木子乡',511721,4),(511703213,'双庙乡',511721,4),(511703214,'斌郎乡',511721,4),(511703215,'幺塘乡',511721,4),(511703216,'陈家乡',511721,4),(511703217,'龙会乡',511721,4),(511703218,'罐子乡',511721,4),(511703219,'申家乡',511721,4),(511703220,'草兴乡',511721,4),(511703221,'木头乡',511721,4),(511703222,'金檀乡',511721,4),(511703223,'大堰乡',511721,4),(511703224,'赵固乡',511721,4),(511703225,'九岭乡',511721,4),(511703226,'桥湾乡',511721,4),(511703227,'五四乡',511721,4),(511703228,'银铁乡',511721,4),(511703229,'沿河乡',511721,4),(511703230,'香隆乡',511721,4),(511703231,'永进乡',511721,4),(511703232,'洛车乡',511721,4),(511703233,'道让乡',511721,4),(511703234,'虎让乡',511721,4),(511703235,'米城乡',511721,4),(511722100,'东乡镇',511722,4),(511722101,'君塘镇',511722,4),(511722102,'清溪镇',511722,4),(511722103,'普光镇',511722,4),(511722104,'天生镇',511722,4),(511722105,'柏树镇',511722,4),(511722106,'芭蕉镇',511722,4),(511722107,'南坝镇',511722,4),(511722108,'五宝镇',511722,4),(511722109,'峰城镇',511722,4),(511722110,'土黄镇',511722,4),(511722111,'华景镇',511722,4),(511722112,'樊哙镇',511722,4),(511722113,'新华镇',511722,4),(511722114,'黄金镇',511722,4),(511722115,'胡家镇',511722,4),(511722116,'毛坝镇',511722,4),(511722117,'双河镇',511722,4),(511722118,'大成镇',511722,4),(511722119,'土主镇',511722,4),(511722120,'下八镇',511722,4),(511722200,'明月乡',511722,4),(511722201,'红岭乡',511722,4),(511722202,'柳池乡',511722,4),(511722203,'三河乡',511722,4),(511722204,'老君乡',511722,4),(511722205,'黄石乡',511722,4),(511722206,'七里乡',511722,4),(511722207,'庙安乡',511722,4),(511722208,'天宝乡',511722,4),(511722209,'东林乡',511722,4),(511722211,'凉风乡',511722,4),(511722212,'上峡乡',511722,4),(511722213,'塔河乡',511722,4),(511722214,'茶河乡',511722,4),(511722215,'天台乡',511722,4),(511722216,'观山乡',511722,4),(511722217,'南坪乡',511722,4),(511722218,'凤林乡',511722,4),(511722219,'桃花乡',511722,4),(511722220,'白马乡',511722,4),(511722221,'漆碑乡',511722,4),(511722222,'三墩土家族乡',511722,4),(511722223,'漆树土家族乡',511722,4),(511722224,'龙泉土家族乡',511722,4),(511722225,'渡口土家族乡',511722,4),(511722226,'石铁乡',511722,4),(511722227,'厂溪乡',511722,4),(511722228,'红峰乡',511722,4),(511722229,'凤鸣乡',511722,4),(511722230,'花池乡',511722,4),(511722232,'庆云乡',511722,4),(511722233,'马渡乡',511722,4),(511722234,'隘口乡',511722,4),(511723100,'新宁镇',511723,4),(511723101,'普安镇',511723,4),(511723102,'回龙镇',511723,4),(511723103,'天师镇',511723,4),(511723104,'永兴镇',511723,4),(511723105,'讲治镇',511723,4),(511723106,'甘棠镇',511723,4),(511723107,'任市镇',511723,4),(511723108,'广福镇',511723,4),(511723109,'长岭镇',511723,4),(511723200,'长田乡',511723,4),(511723201,'骑龙乡',511723,4),(511723202,'新太乡',511723,4),(511723203,'灵岩乡',511723,4),(511723204,'沙坝场乡',511723,4),(511723205,'梅家乡',511723,4),(511723206,'宝石乡',511723,4),(511723207,'靖安乡',511723,4),(511723208,'新街乡',511723,4),(511723209,'拔妙乡',511723,4),(511724100,'竹阳镇',511724,4),(511724101,'乌木镇',511724,4),(511724102,'团坝镇',511724,4),(511724103,'杨家镇',511724,4),(511724104,'清河镇',511724,4),(511724105,'柏林镇',511724,4),(511724106,'石河镇',511724,4),(511724107,'双拱镇',511724,4),(511724108,'石桥铺镇',511724,4),(511724109,'观音镇',511724,4),(511724110,'周家镇',511724,4),(511724111,'石子镇',511724,4),(511724112,'文星镇',511724,4),(511724113,'妈妈镇',511724,4),(511724114,'高穴镇',511724,4),(511724115,'欧家镇',511724,4),(511724116,'庙坝镇',511724,4),(511724117,'清水镇',511724,4),(511724200,'城西乡',511724,4),(511724201,'竹北乡',511724,4),(511724202,'东柳乡',511724,4),(511724203,'朝阳乡',511724,4),(511724204,'人和乡',511724,4),(511724205,'中华乡',511724,4),(511724206,'黄家乡',511724,4),(511724207,'柏家乡',511724,4),(511724208,'李家乡',511724,4),(511724209,'月华乡',511724,4),(511724210,'二郎乡',511724,4),(511724211,'蒲包乡',511724,4),(511724212,'永胜乡',511724,4),(511724213,'新生乡',511724,4),(511724214,'安吉乡',511724,4),(511724215,'白坝乡',511724,4),(511724216,'双溪乡',511724,4),(511724217,'高明乡',511724,4),(511724218,'八渡乡',511724,4),(511724219,'中和乡',511724,4),(511724220,'杨通乡',511724,4),(511724221,'天城乡',511724,4),(511724222,'四合乡',511724,4),(511724223,'张家乡',511724,4),(511724224,'童家乡',511724,4),(511724225,'神合乡',511724,4),(511724226,'金鸡乡',511724,4),(511724227,'黄滩乡',511724,4),(511724228,'牌坊乡',511724,4),(511724229,'姚市乡',511724,4),(511724230,'莲印乡',511724,4),(511724231,'川主乡',511724,4),(511725100,'渠江镇',511725,4),(511725101,'天星镇',511725,4),(511725102,'临巴镇',511725,4),(511725103,'土溪镇',511725,4),(511725104,'三汇镇',511725,4),(511725105,'文崇镇',511725,4),(511725106,'涌兴镇',511725,4),(511725107,'贵福镇',511725,4),(511725108,'岩峰镇',511725,4),(511725109,'静边镇',511725,4),(511725110,'清溪场镇',511725,4),(511725111,'宝城镇',511725,4),(511725112,'有庆镇',511725,4),(511725113,'鲜渡镇',511725,4),(511725114,'琅琊镇',511725,4),(511725200,'渠南乡',511725,4),(511725201,'渠北乡',511725,4),(511725202,'青龙乡',511725,4),(511725203,'板桥乡',511725,4),(511725204,'锡溪乡',511725,4),(511725205,'龙潭乡',511725,4),(511725206,'河东乡',511725,4),(511725207,'李馥乡',511725,4),(511725208,'青神乡',511725,4),(511725209,'流溪乡',511725,4),(511725210,'东安乡',511725,4),(511725211,'汇东乡',511725,4),(511725212,'汇南乡',511725,4),(511725213,'汇北乡',511725,4),(511725214,'丰乐乡',511725,4),(511725215,'报恩乡',511725,4),(511725216,'安北乡',511725,4),(511725217,'平安乡',511725,4),(511725218,'千佛乡',511725,4),(511725219,'柏水乡',511725,4),(511725220,'大义乡',511725,4),(511725221,'义和乡',511725,4),(511725222,'水口乡',511725,4),(511725223,'三板乡',511725,4),(511725224,'巨光乡',511725,4),(511725225,'蔡和乡',511725,4),(511725226,'鹤林乡',511725,4),(511725227,'白兔乡',511725,4),(511725228,'青丝乡',511725,4),(511725229,'万寿乡',511725,4),(511725230,'射洪乡',511725,4),(511725231,'望江乡',511725,4),(511725232,'和乐乡',511725,4),(511725233,'龙凤乡',511725,4),(511725234,'新市乡',511725,4),(511725235,'宋家乡',511725,4),(511725236,'拱市乡',511725,4),(511725237,'中滩乡',511725,4),(511725238,'屏西乡',511725,4),(511725239,'定远乡',511725,4),(511725240,'嘉禾乡',511725,4),(511725241,'李渡乡',511725,4),(511725242,'望溪乡',511725,4),(511725243,'双土乡',511725,4),(511725244,'卷硐乡',511725,4),(511781100,'太平镇',511781,4),(511781101,'青花镇',511781,4),(511781102,'旧院镇',511781,4),(511781103,'罗文镇',511781,4),(511781104,'河口镇',511781,4),(511781105,'草坝镇',511781,4),(511781106,'竹峪镇',511781,4),(511781107,'大竹镇',511781,4),(511781108,'黄钟镇',511781,4),(511781109,'官渡镇',511781,4),(511781110,'白沙镇',511781,4),(511781111,'沙滩镇',511781,4),(511781200,'茶垭乡',511781,4),(511781201,'长石乡',511781,4),(511781202,'白羊乡',511781,4),(511781203,'铁矿乡',511781,4),(511781204,'固军乡',511781,4),(511781205,'井溪乡',511781,4),(511781206,'堰塘乡',511781,4),(511781207,'蜂桶乡',511781,4),(511781208,'花楼乡',511781,4),(511781209,'长坝乡',511781,4),(511781210,'曾家乡',511781,4),(511781211,'大沙乡',511781,4),(511781212,'秦河乡',511781,4),(511781213,'庙垭乡',511781,4),(511781214,'鹰背乡',511781,4),(511781215,'石窝乡',511781,4),(511781216,'玉带乡',511781,4),(511781217,'新店乡',511781,4),(511781218,'魏家乡',511781,4),(511781219,'柳黄乡',511781,4),(511781220,'溪口乡',511781,4),(511781221,'永宁乡',511781,4),(511781222,'虹桥乡',511781,4),(511781223,'康乐乡',511781,4),(511781224,'白果乡',511781,4),(511781225,'钟亭乡',511781,4),(511781226,'庙子乡',511781,4),(511781228,'紫溪乡',511781,4),(511781229,'庙坡乡',511781,4),(511781230,'梨树乡',511781,4),(511781231,'皮窝乡',511781,4),(511781232,'丝罗乡',511781,4),(511781233,'罐坝乡',511781,4),(511781234,'石人乡',511781,4),(511781235,'赵塘乡',511781,4),(511781236,'中坪乡',511781,4),(511781237,'八台乡',511781,4),(511781238,'花萼乡',511781,4),(511781239,'曹家乡',511781,4),(511781240,'石塘乡',511781,4),(511802001,'东城街道',511802,4),(511802002,'西城街道',511802,4),(511802003,'河北街道',511802,4),(511802004,'青江街道',511802,4),(511802100,'北郊镇',511802,4),(511802101,'草坝镇',511802,4),(511802102,'合江镇',511802,4),(511802103,'大兴镇',511802,4),(511802104,'对岩镇',511802,4),(511802105,'沙坪镇',511802,4),(511802106,'中里镇',511802,4),(511802107,'上里镇',511802,4),(511802108,'严桥镇',511802,4),(511802109,'晏场镇',511802,4),(511802110,'多营镇',511802,4),(511802111,'碧峰峡镇',511802,4),(511802200,'南郊乡',511802,4),(511802201,'八步乡',511802,4),(511802202,'观化乡',511802,4),(511802203,'孔坪乡',511802,4),(511802204,'凤鸣乡',511802,4),(511802205,'望鱼乡',511802,4),(511822100,'严道镇',511822,4),(511822101,'花滩镇',511822,4),(511822102,'龙苍沟镇',511822,4),(511822200,'六合乡',511822,4),(511822201,'烈太乡',511822,4),(511822202,'安靖乡',511822,4),(511822203,'民建彝族乡',511822,4),(511822204,'烈士乡',511822,4),(511822205,'荥河乡',511822,4),(511822206,'新建乡',511822,4),(511822207,'泗坪乡',511822,4),(511822208,'新庙乡',511822,4),(511822209,'三合乡',511822,4),(511822210,'大田坝乡',511822,4),(511822211,'天凤乡',511822,4),(511822212,'宝峰彝族乡',511822,4),(511822213,'新添乡',511822,4),(511822214,'附城乡',511822,4),(511822215,'五宪乡',511822,4),(511822216,'烟竹乡',511822,4),(511822217,'青龙乡',511822,4),(511823100,'富林镇',511823,4),(511823101,'九襄镇',511823,4),(511823102,'乌斯河镇',511823,4),(511823103,'宜东镇',511823,4),(511823104,'富庄镇',511823,4),(511823105,'清溪镇',511823,4),(511823106,'大树镇',511823,4),(511823107,'皇木镇',511823,4),(511823108,'唐家镇',511823,4),(511823109,'富泉镇',511823,4),(511823200,'大田乡',511823,4),(511823203,'河西乡',511823,4),(511823205,'前域乡',511823,4),(511823206,'后域乡',511823,4),(511823209,'富乡乡',511823,4),(511823210,'梨园乡',511823,4),(511823211,'三交乡',511823,4),(511823212,'双溪乡',511823,4),(511823213,'西溪乡',511823,4),(511823218,'安乐乡',511823,4),(511823219,'万里乡',511823,4),(511823220,'马烈乡',511823,4),(511823224,'河南乡',511823,4),(511823225,'晒经乡',511823,4),(511823226,'料林乡',511823,4),(511823227,'小堡藏族彝族乡',511823,4),(511823228,'片马彝族乡',511823,4),(511823229,'坭美彝族乡',511823,4),(511823230,'永利彝族乡',511823,4),(511823231,'顺河彝族乡',511823,4),(511824001,'棉城街道',511824,4),(511824100,'新棉镇',511824,4),(511824200,'安顺彝族乡',511824,4),(511824201,'先锋藏族乡',511824,4),(511824202,'蟹螺藏族乡',511824,4),(511824203,'永和乡',511824,4),(511824204,'回隆彝族乡',511824,4),(511824205,'擦罗彝族乡',511824,4),(511824206,'栗子坪彝族乡',511824,4),(511824207,'美罗乡',511824,4),(511824208,'迎政乡',511824,4),(511824209,'宰羊乡',511824,4),(511824210,'丰乐乡',511824,4),(511824211,'新民藏族彝族乡',511824,4),(511824212,'挖角彝族藏族乡',511824,4),(511824213,'田湾彝族乡',511824,4),(511824214,'草科藏族乡',511824,4),(511825100,'城厢镇',511825,4),(511825101,'始阳镇',511825,4),(511825200,'小河乡',511825,4),(511825201,'思经乡',511825,4),(511825202,'鱼泉乡',511825,4),(511825203,'紫石乡',511825,4),(511825204,'两路乡',511825,4),(511825205,'大坪乡',511825,4),(511825206,'乐英乡',511825,4),(511825207,'多功乡',511825,4),(511825208,'仁义乡',511825,4),(511825209,'老场乡',511825,4),(511825210,'新华乡',511825,4),(511825211,'新场乡',511825,4),(511825212,'兴业乡',511825,4),(511826100,'芦阳镇',511826,4),(511826101,'飞仙关镇',511826,4),(511826102,'双石镇',511826,4),(511826103,'太平镇',511826,4),(511826104,'大川镇',511826,4),(511826200,'思延乡',511826,4),(511826201,'清仁乡',511826,4),(511826202,'龙门乡',511826,4),(511826203,'宝盛乡',511826,4),(511827100,'穆坪镇',511827,4),(511827101,'灵关镇',511827,4),(511827102,'陇东镇',511827,4),(511827201,'蜂蛹寨乡',511827,4),(511827202,'硗碛乡',511827,4),(511827203,'永富乡',511827,4),(511827204,'明礼乡',511827,4),(511827205,'五龙乡',511827,4),(511827206,'大溪乡',511827,4),(511902001,'东城街道',511902,4),(511902002,'西城街道',511902,4),(511902003,'回风街道',511902,4),(511902004,'江北街道',511902,4),(511902005,'宕梁街道',511902,4),(511902006,'玉堂街道',511902,4),(511902100,'大茅坪镇',511902,4),(511902101,'清江镇',511902,4),(511902102,'兴文镇',511902,4),(511902103,'水宁寺镇',511902,4),(511902104,'化成镇',511902,4),(511902105,'曾口镇',511902,4),(511902106,'梁永镇',511902,4),(511902107,'三江镇',511902,4),(511902108,'鼎山镇',511902,4),(511902109,'大罗镇',511902,4),(511902122,'枣林镇',511902,4),(511902200,'平梁乡',511902,4),(511902201,'光辉乡',511902,4),(511902202,'花溪乡',511902,4),(511902203,'大和乡',511902,4),(511902204,'白庙乡',511902,4),(511902205,'关渡乡',511902,4),(511902206,'凌云乡',511902,4),(511902207,'寺岭乡',511902,4),(511902208,'梓桐庙乡',511902,4),(511902209,'金碑乡',511902,4),(511902210,'羊凤乡',511902,4),(511902211,'凤溪乡',511902,4),(511902212,'龙背乡',511902,4),(511921100,'诺江镇',511921,4),(511921101,'民胜镇',511921,4),(511921102,'火炬镇',511921,4),(511921103,'广纳镇',511921,4),(511921104,'铁佛镇',511921,4),(511921105,'麻石镇',511921,4),(511921106,'至诚镇',511921,4),(511921107,'洪口镇',511921,4),(511921108,'沙溪镇',511921,4),(511921109,'瓦室镇',511921,4),(511921110,'永安镇',511921,4),(511921111,'铁溪镇',511921,4),(511921112,'涪阳镇',511921,4),(511921113,'诺水河镇',511921,4),(511921200,'杨柏乡',511921,4),(511921201,'大兴乡',511921,4),(511921202,'东山乡',511921,4),(511921203,'三溪乡',511921,4),(511921204,'双泉乡',511921,4),(511921205,'文峰乡',511921,4),(511921206,'春在乡',511921,4),(511921207,'三合乡',511921,4),(511921208,'云昙乡',511921,4),(511921209,'唱歌乡',511921,4),(511921210,'芝苞乡',511921,4),(511921211,'龙凤场乡',511921,4),(511921212,'董溪乡',511921,4),(511921213,'澌波乡',511921,4),(511921214,'松溪乡',511921,4),(511921215,'九层乡',511921,4),(511921216,'胜利乡',511921,4),(511921217,'板凳乡',511921,4),(511921218,'文胜乡',511921,4),(511921219,'兴隆乡',511921,4),(511921220,'毛裕乡',511921,4),(511921221,'泥溪乡',511921,4),(511921222,'烟溪乡',511921,4),(511921223,'沙坪乡',511921,4),(511921224,'朱元乡',511921,4),(511921225,'长坪乡',511921,4),(511921226,'两河口乡',511921,4),(511921227,'空山乡',511921,4),(511921228,'青浴乡',511921,4),(511921229,'板桥口乡',511921,4),(511921230,'铁厂乡',511921,4),(511921231,'新场乡',511921,4),(511921232,'陈河乡',511921,4),(511921233,'草池乡',511921,4),(511921234,'回林乡',511921,4),(511922100,'南江镇',511922,4),(511922101,'沙河镇',511922,4),(511922102,'乐坝镇',511922,4),(511922103,'长赤镇',511922,4),(511922104,'正直镇',511922,4),(511922105,'大河镇',511922,4),(511922106,'光雾山镇',511922,4),(511922107,'东榆镇',511922,4),(511922108,'下两镇',511922,4),(511922109,'赶场镇',511922,4),(511922110,'杨坝镇',511922,4),(511922200,'赤溪乡',511922,4),(511922201,'燕山乡',511922,4),(511922202,'八庙乡',511922,4),(511922203,'高塔乡',511922,4),(511922204,'团结乡',511922,4),(511922205,'红光乡',511922,4),(511922206,'傅家乡',511922,4),(511922207,'红四乡',511922,4),(511922208,'天池乡',511922,4),(511922209,'侯家乡',511922,4),(511922210,'双桂乡',511922,4),(511922211,'凤仪乡',511922,4),(511922212,'朱公乡',511922,4),(511922213,'黑潭乡',511922,4),(511922214,'和平乡',511922,4),(511922215,'双流乡',511922,4),(511922216,'元潭乡',511922,4),(511922217,'高桥乡',511922,4),(511922218,'平岗乡',511922,4),(511922219,'仁和乡',511922,4),(511922220,'石滩乡',511922,4),(511922221,'关门乡',511922,4),(511922222,'兴马乡',511922,4),(511922223,'北极乡',511922,4),(511922224,'关路乡',511922,4),(511922225,'关田乡',511922,4),(511922226,'红岩乡',511922,4),(511922227,'桥亭乡',511922,4),(511922228,'贵民乡',511922,4),(511922229,'沙坝乡',511922,4),(511922230,'柳湾乡',511922,4),(511922231,'汇滩乡',511922,4),(511922232,'上两乡',511922,4),(511922233,'关坝乡',511922,4),(511922234,'寨坡乡',511922,4),(511922235,'坪河乡',511922,4),(511922236,'流坝乡',511922,4),(511923001,'同州街道',511923,4),(511923100,'江口镇',511923,4),(511923101,'响滩镇',511923,4),(511923102,'西兴镇',511923,4),(511923103,'佛楼镇',511923,4),(511923104,'白衣镇',511923,4),(511923105,'涵水镇',511923,4),(511923106,'岳家镇',511923,4),(511923107,'兰草镇',511923,4),(511923108,'驷马镇',511923,4),(511923109,'坦溪镇',511923,4),(511923110,'元山镇',511923,4),(511923111,'云台镇',511923,4),(511923112,'邱家镇',511923,4),(511923113,'笔山镇',511923,4),(511923114,'镇龙镇',511923,4),(511923115,'得胜镇',511923,4),(511923116,'鹿鸣镇',511923,4),(511923200,'青云乡',511923,4),(511923201,'元石乡',511923,4),(511923202,'六门乡',511923,4),(511923203,'大寨乡',511923,4),(511923204,'龙岗乡',511923,4),(511923205,'土兴乡',511923,4),(511923206,'板庙乡',511923,4),(511923207,'泥龙乡',511923,4),(511923208,'岩口乡',511923,4),(511923209,'望京乡',511923,4),(511923210,'喜神乡',511923,4),(511923211,'土垭乡',511923,4),(511923212,'石垭乡',511923,4),(511923213,'青凤乡',511923,4),(511923214,'澌岸乡',511923,4),(511923215,'马鞍乡',511923,4),(511923216,'五木乡',511923,4),(511923217,'灵山乡',511923,4),(511923218,'界牌乡',511923,4),(511923219,'粉壁乡',511923,4),(511923220,'澌滩乡',511923,4),(511923221,'高峰乡',511923,4),(511923222,'南风乡',511923,4),(511923223,'福申乡',511923,4),(511923224,'双鹿乡',511923,4),(511923225,'黑水乡',511923,4),(512002001,'莲花街道',512002,4),(512002002,'三贤祠街道',512002,4),(512002003,'资溪街道',512002,4),(512002004,'狮子山街道',512002,4),(512002100,'雁江镇',512002,4),(512002101,'松涛镇',512002,4),(512002102,'宝台镇',512002,4),(512002103,'临江镇',512002,4),(512002104,'保和镇',512002,4),(512002105,'老君镇',512002,4),(512002106,'中和镇',512002,4),(512002107,'丹山镇',512002,4),(512002108,'小院镇',512002,4),(512002109,'堪嘉镇',512002,4),(512002110,'伍隍镇',512002,4),(512002111,'石岭镇',512002,4),(512002112,'东峰镇',512002,4),(512002113,'南津镇',512002,4),(512002114,'忠义镇',512002,4),(512002115,'碑记镇',512002,4),(512002116,'丰裕镇',512002,4),(512002117,'迎接镇',512002,4),(512002118,'祥符镇',512002,4),(512002200,'新场乡',512002,4),(512002201,'回龙乡',512002,4),(512002202,'清水乡',512002,4),(512002400,'四川大堰劳动教养管理所',512002,4),(512021100,'岳阳镇',512021,4),(512021101,'鸳大镇',512021,4),(512021102,'石桥铺镇',512021,4),(512021103,'通贤镇',512021,4),(512021104,'龙台镇',512021,4),(512021105,'姚市镇',512021,4),(512021106,'林凤镇',512021,4),(512021107,'毛家镇',512021,4),(512021108,'永清镇',512021,4),(512021109,'永顺镇',512021,4),(512021110,'石羊镇',512021,4),(512021111,'两板桥镇',512021,4),(512021112,'护龙镇',512021,4),(512021113,'李家镇',512021,4),(512021114,'元坝镇',512021,4),(512021115,'兴隆镇',512021,4),(512021116,'天林镇',512021,4),(512021117,'镇子镇',512021,4),(512021118,'文化镇',512021,4),(512021119,'周礼镇',512021,4),(512021120,'驯龙镇',512021,4),(512021121,'华严镇',512021,4),(512021200,'城北乡',512021,4),(512021201,'城西乡',512021,4),(512021202,'思贤乡',512021,4),(512021203,'石鼓乡',512021,4),(512021204,'八庙乡',512021,4),(512021205,'来凤乡',512021,4),(512021206,'天马乡',512021,4),(512021207,'人和乡',512021,4),(512021208,'长河源乡',512021,4),(512021209,'团结乡',512021,4),(512021210,'悦来乡',512021,4),(512021211,'白水乡',512021,4),(512021212,'云峰乡',512021,4),(512021213,'岳新乡',512021,4),(512021214,'偏岩乡',512021,4),(512021215,'东胜乡',512021,4),(512021216,'坪河乡',512021,4),(512021217,'乾龙乡',512021,4),(512021218,'高升乡',512021,4),(512021219,'横庙乡',512021,4),(512021220,'瑞云乡',512021,4),(512021221,'白塔寺乡',512021,4),(512021222,'双龙街乡',512021,4),(512021223,'顶新乡',512021,4),(512021224,'和平乡',512021,4),(512021225,'高屋乡',512021,4),(512021226,'忠义乡',512021,4),(512021227,'合义乡',512021,4),(512021228,'努力乡',512021,4),(512021229,'护建乡',512021,4),(512021230,'清流乡',512021,4),(512021231,'共和乡',512021,4),(512021232,'天宝乡',512021,4),(512021233,'协和乡',512021,4),(512021234,'鱼龙乡',512021,4),(512021235,'建华乡',512021,4),(512021236,'大平乡',512021,4),(512021237,'九龙乡',512021,4),(512021238,'岳源乡',512021,4),(512021239,'龙桥乡',512021,4),(512021240,'千佛乡',512021,4),(512021241,'拱桥乡',512021,4),(512021242,'宝华乡',512021,4),(512021243,'南薰乡',512021,4),(512021244,'自治乡',512021,4),(512021245,'大埝乡',512021,4),(512021246,'朝阳乡',512021,4),(512022100,'天池镇',512022,4),(512022101,'石佛镇',512022,4),(512022102,'回澜镇',512022,4),(512022103,'石湍镇',512022,4),(512022104,'童家镇',512022,4),(512022105,'宝林镇',512022,4),(512022106,'大佛镇',512022,4),(512022107,'良安镇',512022,4),(512022108,'金顺镇',512022,4),(512022109,'中和场镇',512022,4),(512022110,'劳动镇',512022,4),(512022111,'中天镇',512022,4),(512022112,'佛星镇',512022,4),(512022113,'蟠龙镇',512022,4),(512022114,'东山镇',512022,4),(512022115,'通旅镇',512022,4),(512022116,'高寺镇',512022,4),(512022200,'龙溪乡',512022,4),(512022201,'全胜乡',512022,4),(512022202,'孔雀乡',512022,4),(512022203,'龙门乡',512022,4),(512022204,'双河场乡',512022,4),(512022205,'放生乡',512022,4),(512022206,'盛池乡',512022,4),(512022207,'凉水乡',512022,4),(512081100,'简城镇',512081,4),(512081101,'石桥镇',512081,4),(512081102,'新市镇',512081,4),(512081103,'石盘镇',512081,4),(512081104,'东溪镇',512081,4),(512081105,'平泉镇',512081,4),(512081106,'禾丰镇',512081,4),(512081107,'云龙镇',512081,4),(512081108,'三星镇',512081,4),(512081109,'养马镇',512081,4),(512081110,'贾家镇',512081,4),(512081111,'石板凳镇',512081,4),(512081112,'三岔镇',512081,4),(512081113,'镇金镇',512081,4),(512081114,'石钟镇',512081,4),(512081115,'施家镇',512081,4),(512081116,'三合镇',512081,4),(512081117,'平武镇',512081,4),(512081118,'金马镇',512081,4),(512081119,'踏水镇',512081,4),(512081120,'江源镇',512081,4),(512081121,'涌泉镇',512081,4),(512081122,'芦葭镇',512081,4),(512081123,'草池镇',512081,4),(512081124,'太平桥镇',512081,4),(512081125,'青龙镇',512081,4),(512081200,'老君井乡',512081,4),(512081201,'福田乡',512081,4),(512081202,'宏缘乡',512081,4),(512081203,'周家乡',512081,4),(512081204,'平窝乡',512081,4),(512081205,'武庙乡',512081,4),(512081206,'高明乡',512081,4),(512081207,'玉成乡',512081,4),(512081208,'丹景乡',512081,4),(512081209,'望水乡',512081,4),(512081210,'清风乡',512081,4),(512081211,'董家埂乡',512081,4),(512081212,'五星乡',512081,4),(512081213,'飞龙乡',512081,4),(512081214,'灵仙乡',512081,4),(512081215,'五指乡',512081,4),(512081216,'新民乡',512081,4),(512081217,'新星乡',512081,4),(512081218,'同合乡',512081,4),(512081219,'老龙乡',512081,4),(512081220,'壮溪乡',512081,4),(512081221,'海螺乡',512081,4),(512081222,'坛罐乡',512081,4),(512081223,'雷家乡',512081,4),(512081224,'安乐乡',512081,4),(512081225,'普安乡',512081,4),(512081226,'平息乡',512081,4),(512081227,'五合乡',512081,4),(512081228,'永宁乡',512081,4),(513221100,'威州镇',513221,4),(513221101,'绵虒镇',513221,4),(513221102,'映秀镇',513221,4),(513221103,'卧龙镇',513221,4),(513221105,'水磨镇',513221,4),(513221106,'漩口镇',513221,4),(513221107,'三江镇',513221,4),(513221200,'龙溪乡',513221,4),(513221201,'克枯乡',513221,4),(513221202,'雁门乡',513221,4),(513221203,'草坡乡',513221,4),(513221204,'银杏乡',513221,4),(513221205,'耿达乡',513221,4),(513222100,'杂谷脑镇',513222,4),(513222101,'米亚罗镇',513222,4),(513222102,'古尔沟镇',513222,4),(513222103,'薛城镇',513222,4),(513222200,'夹壁乡',513222,4),(513222201,'朴头乡',513222,4),(513222202,'甘堡乡',513222,4),(513222203,'蒲溪乡',513222,4),(513222204,'上孟乡',513222,4),(513222205,'下孟乡',513222,4),(513222206,'木卡乡',513222,4),(513222207,'通化乡',513222,4),(513222208,'桃坪乡',513222,4),(513223100,'凤仪镇',513223,4),(513223101,'南新镇',513223,4),(513223102,'叠溪镇',513223,4),(513223201,'渭门乡',513223,4),(513223202,'永和乡',513223,4),(513223203,'沟口乡',513223,4),(513223204,'光明乡',513223,4),(513223205,'富顺乡',513223,4),(513223206,'土门乡',513223,4),(513223207,'东兴乡',513223,4),(513223208,'黑虎乡',513223,4),(513223209,'飞虹乡',513223,4),(513223210,'回龙乡',513223,4),(513223211,'三龙乡',513223,4),(513223212,'白溪乡',513223,4),(513223213,'洼底乡',513223,4),(513223214,'石大关乡',513223,4),(513223215,'太平乡',513223,4),(513223216,'松坪沟乡',513223,4),(513223217,'曲谷乡',513223,4),(513223218,'雅都乡',513223,4),(513224100,'进安镇',513224,4),(513224101,'川主寺镇',513224,4),(513224200,'进安回族乡',513224,4),(513224201,'十里回族乡',513224,4),(513224202,'青云乡',513224,4),(513224203,'安宏乡',513224,4),(513224204,'大寨乡',513224,4),(513224205,'牟尼乡',513224,4),(513224206,'镇江关乡',513224,4),(513224207,'镇坪乡',513224,4),(513224208,'岷江乡',513224,4),(513224209,'大姓乡',513224,4),(513224210,'白羊乡',513224,4),(513224211,'红土乡',513224,4),(513224212,'红扎乡',513224,4),(513224213,'小姓乡',513224,4),(513224214,'燕云乡',513224,4),(513224215,'山巴乡',513224,4),(513224216,'水晶乡',513224,4),(513224217,'小河乡',513224,4),(513224218,'施家堡乡',513224,4),(513224219,'黄龙乡',513224,4),(513224220,'上八寨乡',513224,4),(513224221,'下八寨乡',513224,4),(513224222,'草原乡',513224,4),(513224401,'松潘林业局',513224,4),(513225100,'永乐镇',513225,4),(513225101,'漳扎镇',513225,4),(513225200,'永丰乡',513225,4),(513225201,'永和乡',513225,4),(513225202,'安乐乡',513225,4),(513225203,'白河乡',513225,4),(513225204,'双河乡',513225,4),(513225205,'保华乡',513225,4),(513225206,'罗依乡',513225,4),(513225207,'勿角乡',513225,4),(513225208,'马家乡',513225,4),(513225209,'郭元乡',513225,4),(513225210,'草地乡',513225,4),(513225211,'陵江乡',513225,4),(513225212,'黑河乡',513225,4),(513225213,'玉瓦乡',513225,4),(513225214,'大录乡',513225,4),(513225400,'九寨沟国营牧场',513225,4),(513225401,'九寨沟风景名胜管理局',513225,4),(513226100,'金川镇',513226,4),(513226101,'观音桥镇',513226,4),(513226200,'沙耳乡',513226,4),(513226201,'庆宁乡',513226,4),(513226202,'咯尔乡',513226,4),(513226203,'勒乌乡',513226,4),(513226204,'万林乡',513226,4),(513226205,'河东乡',513226,4),(513226206,'河西乡',513226,4),(513226207,'集沐乡',513226,4),(513226208,'撒瓦脚乡',513226,4),(513226209,'卡拉足乡',513226,4),(513226210,'俄热乡',513226,4),(513226211,'太阳河乡',513226,4),(513226212,'二嘎里乡',513226,4),(513226213,'阿科里乡',513226,4),(513226214,'安宁乡',513226,4),(513226215,'卡撒乡',513226,4),(513226216,'曾达乡',513226,4),(513226217,'独松乡',513226,4),(513226218,'马尔邦乡',513226,4),(513226219,'马奈乡',513226,4),(513226220,'毛日乡',513226,4),(513227100,'美兴镇',513227,4),(513227101,'日隆镇',513227,4),(513227200,'老营乡',513227,4),(513227201,'崇德乡',513227,4),(513227202,'新桥乡',513227,4),(513227203,'美沃乡',513227,4),(513227204,'沙龙乡',513227,4),(513227205,'宅垄乡',513227,4),(513227206,'新格乡',513227,4),(513227207,'达维乡',513227,4),(513227208,'日尔乡',513227,4),(513227209,'结斯乡',513227,4),(513227210,'沃日乡',513227,4),(513227211,'木坡乡',513227,4),(513227212,'两河乡',513227,4),(513227213,'抚边乡',513227,4),(513227214,'八角乡',513227,4),(513227215,'双柏乡',513227,4),(513227216,'窝底乡',513227,4),(513227217,'汗牛乡',513227,4),(513227218,'潘安乡',513227,4),(513228100,'芦花镇',513228,4),(513228101,'卡龙镇',513228,4),(513228200,'沙石多乡',513228,4),(513228201,'红岩乡',513228,4),(513228202,'麻窝乡',513228,4),(513228203,'双溜索乡',513228,4),(513228204,'瓦钵梁子乡',513228,4),(513228205,'色尔古乡',513228,4),(513228206,'石碉楼乡',513228,4),(513228207,'龙坝乡',513228,4),(513228208,'洛多乡',513228,4),(513228209,'木苏乡',513228,4),(513228210,'维古乡',513228,4),(513228211,'知木林乡',513228,4),(513228212,'扎窝乡',513228,4),(513228213,'晴朗乡',513228,4),(513228214,'慈坝乡',513228,4),(513229100,'马尔康镇',513229,4),(513229101,'卓克基镇',513229,4),(513229102,'松岗镇',513229,4),(513229200,'梭磨乡',513229,4),(513229201,'白湾乡',513229,4),(513229202,'党坝乡',513229,4),(513229203,'木尔宗乡',513229,4),(513229204,'脚木足乡',513229,4),(513229205,'沙尔宗乡',513229,4),(513229206,'龙尔甲乡',513229,4),(513229207,'大藏乡',513229,4),(513229208,'康山乡',513229,4),(513229209,'草登乡',513229,4),(513229210,'日部乡',513229,4),(513230100,'壤柯镇',513230,4),(513230200,'蒲西乡',513230,4),(513230201,'宗科乡',513230,4),(513230202,'石里乡',513230,4),(513230203,'吾伊乡',513230,4),(513230204,'岗木达乡',513230,4),(513230205,'上杜柯乡',513230,4),(513230206,'茸木达乡',513230,4),(513230207,'南木达乡',513230,4),(513230208,'尕多乡',513230,4),(513230209,'中壤塘乡',513230,4),(513230210,'上壤塘乡',513230,4),(513231100,'阿坝镇',513231,4),(513231200,'哇尔玛乡',513231,4),(513231201,'麦昆乡',513231,4),(513231202,'河支乡',513231,4),(513231203,'龙藏乡',513231,4),(513231204,'求吉玛乡',513231,4),(513231205,'甲尔多乡',513231,4),(513231206,'各莫乡',513231,4),(513231207,'德格乡',513231,4),(513231208,'四洼乡',513231,4),(513231209,'安斗乡',513231,4),(513231210,'柯河乡',513231,4),(513231211,'垮沙乡',513231,4),(513231212,'安羌乡',513231,4),(513231213,'查理乡',513231,4),(513231214,'茸安乡',513231,4),(513231215,'洛尔达乡',513231,4),(513231216,'麦尔玛乡',513231,4),(513231217,'贾洛乡',513231,4),(513231400,'若柯河农场',513231,4),(513231401,'贾柯河牧场',513231,4),(513232100,'达扎寺镇',513232,4),(513232101,'唐克镇',513232,4),(513232200,'班佑乡',513232,4),(513232201,'阿西乡',513232,4),(513232203,'辖曼乡',513232,4),(513232204,'红星乡',513232,4),(513232205,'麦溪乡',513232,4),(513232206,'嫩哇乡',513232,4),(513232207,'冻列乡',513232,4),(513232208,'崇尔乡',513232,4),(513232209,'热尔乡',513232,4),(513232210,'占哇乡',513232,4),(513232211,'降扎乡',513232,4),(513232212,'巴西乡',513232,4),(513232213,'阿西茸乡',513232,4),(513232214,'求吉乡',513232,4),(513232215,'包座乡',513232,4),(513232400,'白河牧场',513232,4),(513232401,'辖曼牧场',513232,4),(513233100,'邛溪镇',513233,4),(513233101,'刷经寺镇',513233,4),(513233102,'瓦切镇',513233,4),(513233200,'安曲乡',513233,4),(513233201,'龙日乡',513233,4),(513233202,'江茸乡',513233,4),(513233203,'查尔玛乡',513233,4),(513233205,'阿木乡',513233,4),(513233206,'壤口乡',513233,4),(513233207,'麦洼乡',513233,4),(513233208,'色地乡',513233,4),(513321100,'炉城镇',513321,4),(513321101,'姑咱镇',513321,4),(513321102,'新都桥镇',513321,4),(513321201,'雅拉乡',513321,4),(513321202,'时济乡',513321,4),(513321203,'前溪乡',513321,4),(513321204,'舍联乡',513321,4),(513321205,'麦崩乡',513321,4),(513321206,'三合乡',513321,4),(513321207,'金汤乡',513321,4),(513321208,'捧塔乡',513321,4),(513321209,'沙德乡',513321,4),(513321210,'贡嘎山乡',513321,4),(513321211,'普沙绒乡',513321,4),(513321212,'吉居乡',513321,4),(513321213,'瓦泽乡',513321,4),(513321214,'呷巴乡',513321,4),(513321215,'甲根坝乡',513321,4),(513321216,'朋布西乡',513321,4),(513321217,'塔公乡',513321,4),(513321218,'孔玉乡',513321,4),(513322100,'泸桥镇',513322,4),(513322101,'冷碛镇',513322,4),(513322102,'兴隆镇',513322,4),(513322103,'磨西镇',513322,4),(513322200,'岚安乡',513322,4),(513322201,'烹坝乡',513322,4),(513322202,'田坝乡',513322,4),(513322203,'杵坭乡',513322,4),(513322204,'加郡乡',513322,4),(513322205,'德威乡',513322,4),(513322206,'新兴乡',513322,4),(513322207,'得妥乡',513322,4),(513323100,'章谷镇',513323,4),(513323101,'巴底镇',513323,4),(513323201,'巴旺乡',513323,4),(513323202,'聂呷乡',513323,4),(513323203,'革什扎乡',513323,4),(513323204,'边耳乡',513323,4),(513323205,'丹东乡',513323,4),(513323206,'东谷乡',513323,4),(513323207,'水子乡',513323,4),(513323208,'格宗乡',513323,4),(513323209,'梭坡乡',513323,4),(513323210,'中路乡',513323,4),(513323211,'岳扎乡',513323,4),(513323212,'半扇门乡',513323,4),(513323213,'太平桥乡',513323,4),(513324100,'呷尔镇',513324,4),(513324101,'烟袋镇',513324,4),(513324200,'汤古乡',513324,4),(513324201,'斜卡乡',513324,4),(513324202,'三岩龙乡',513324,4),(513324203,'上团乡',513324,4),(513324204,'八窝龙乡',513324,4),(513324205,'乃渠乡',513324,4),(513324206,'乌拉溪乡',513324,4),(513324208,'魁多乡',513324,4),(513324209,'子耳彝族乡',513324,4),(513324210,'三垭彝族乡',513324,4),(513324211,'俄尔彝族乡',513324,4),(513324212,'小金彝族乡',513324,4),(513324213,'朵洛彝族乡',513324,4),(513324214,'踏卡彝族乡',513324,4),(513324215,'湾坝彝族乡',513324,4),(513324216,'洪坝乡',513324,4),(513325100,'河口镇',513325,4),(513325200,'呷拉乡',513325,4),(513325201,'八角楼乡',513325,4),(513325202,'普巴绒乡',513325,4),(513325203,'祝桑乡',513325,4),(513325204,'米龙乡',513325,4),(513325205,'八衣绒乡',513325,4),(513325206,'波斯河乡',513325,4),(513325207,'恶古乡',513325,4),(513325208,'牙衣河乡',513325,4),(513325209,'西俄洛乡',513325,4),(513325210,'麻郎错乡',513325,4),(513325211,'德差乡',513325,4),(513325212,'红龙乡',513325,4),(513325213,'柯拉乡',513325,4),(513325214,'瓦多乡',513325,4),(513325215,'木绒乡',513325,4),(513326100,'鲜水镇',513326,4),(513326101,'八美镇',513326,4),(513326200,'格西乡',513326,4),(513326201,'麻孜乡',513326,4),(513326202,'孔色乡',513326,4),(513326203,'葛卡乡',513326,4),(513326204,'亚卓乡',513326,4),(513326205,'仲尼乡',513326,4),(513326206,'红顶乡',513326,4),(513326207,'扎拖乡',513326,4),(513326208,'下拖乡',513326,4),(513326209,'瓦日乡',513326,4),(513326210,'木茹乡',513326,4),(513326211,'甲斯孔乡',513326,4),(513326212,'甲宗乡',513326,4),(513326213,'七美乡',513326,4),(513326214,'银恩乡',513326,4),(513326215,'维它乡',513326,4),(513326216,'龙灯乡',513326,4),(513326217,'协德乡',513326,4),(513326218,'色卡乡',513326,4),(513326219,'沙冲乡',513326,4),(513327100,'新都镇',513327,4),(513327200,'泥巴乡',513327,4),(513327201,'雅德乡',513327,4),(513327202,'洛秋乡',513327,4),(513327203,'斯木乡',513327,4),(513327204,'宜木乡',513327,4),(513327205,'仁达乡',513327,4),(513327206,'朱倭乡',513327,4),(513327207,'旦都乡',513327,4),(513327208,'充古乡',513327,4),(513327209,'更知乡',513327,4),(513327210,'卡娘乡',513327,4),(513327211,'宗塔乡',513327,4),(513327212,'宗麦乡',513327,4),(513327213,'上罗柯马乡',513327,4),(513327214,'下罗柯马乡',513327,4),(513328100,'甘孜镇',513328,4),(513328200,'呷拉乡',513328,4),(513328201,'色西底乡',513328,4),(513328202,'南多乡',513328,4),(513328203,'生康乡',513328,4),(513328204,'贡隆乡',513328,4),(513328205,'扎科乡',513328,4),(513328206,'来马乡',513328,4),(513328207,'昔色乡',513328,4),(513328208,'卡攻乡',513328,4),(513328209,'仁果乡',513328,4),(513328210,'拖坝乡',513328,4),(513328211,'斯俄乡',513328,4),(513328212,'庭卡乡',513328,4),(513328213,'下雄乡',513328,4),(513328214,'四通达乡',513328,4),(513328215,'夺多乡',513328,4),(513328216,'泥柯乡',513328,4),(513328217,'茶扎乡',513328,4),(513328218,'大德乡',513328,4),(513328219,'卡龙乡',513328,4),(513328220,'查龙乡',513328,4),(513329100,'如龙镇',513329,4),(513329200,'沙堆乡',513329,4),(513329201,'乐安乡',513329,4),(513329202,'大盖乡',513329,4),(513329203,'绕鲁乡',513329,4),(513329204,'色威乡',513329,4),(513329205,'甲拉西乡',513329,4),(513329206,'拉日马乡',513329,4),(513329207,'博美乡',513329,4),(513329208,'尤拉西乡',513329,4),(513329209,'子拖西乡',513329,4),(513329210,'和平乡',513329,4),(513329211,'洛古乡',513329,4),(513329212,'雄龙西乡',513329,4),(513329213,'麻日乡',513329,4),(513329214,'通宵乡',513329,4),(513329215,'友谊乡',513329,4),(513329216,'皮擦乡',513329,4),(513329217,'银多乡',513329,4),(513330100,'更庆镇',513330,4),(513330200,'达马乡',513330,4),(513330201,'普马乡',513330,4),(513330202,'岳巴乡',513330,4),(513330203,'八帮乡',513330,4),(513330204,'龚垭乡',513330,4),(513330205,'白垭乡',513330,4),(513330206,'汪布顶乡',513330,4),(513330207,'柯洛洞乡',513330,4),(513330208,'卡松渡乡',513330,4),(513330209,'俄南乡',513330,4),(513330210,'竹庆乡',513330,4),(513330211,'俄支乡',513330,4),(513330212,'马尼干戈乡',513330,4),(513330213,'玉隆乡',513330,4),(513330214,'错阿乡',513330,4),(513330215,'中扎科乡',513330,4),(513330216,'然姑乡',513330,4),(513330217,'窝公乡',513330,4),(513330218,'温拖乡',513330,4),(513330219,'年古乡',513330,4),(513330220,'浪多乡',513330,4),(513330221,'阿须乡',513330,4),(513330222,'打滚乡',513330,4),(513330223,'亚丁乡',513330,4),(513330224,'所巴乡',513330,4),(513331100,'建设镇',513331,4),(513331101,'阿察镇',513331,4),(513331200,'金沙乡',513331,4),(513331201,'绒盖乡',513331,4),(513331202,'章都乡',513331,4),(513331203,'麻绒乡',513331,4),(513331204,'河坡乡',513331,4),(513331205,'热加乡',513331,4),(513331206,'登龙乡',513331,4),(513331207,'赠科乡',513331,4),(513331209,'麻邛乡',513331,4),(513331210,'辽西乡',513331,4),(513331211,'纳塔乡',513331,4),(513331212,'安孜乡',513331,4),(513331213,'盖玉乡',513331,4),(513331214,'沙马乡',513331,4),(513331215,'山岩乡',513331,4),(513332100,'尼呷镇',513332,4),(513332101,'洛须镇',513332,4),(513332102,'色须镇',513332,4),(513332200,'真达乡',513332,4),(513332201,'奔达乡',513332,4),(513332202,'正科乡',513332,4),(513332203,'麻呷乡',513332,4),(513332204,'德荣马乡',513332,4),(513332206,'长沙贡马乡',513332,4),(513332207,'呷衣乡',513332,4),(513332208,'格孟乡',513332,4),(513332209,'蒙宜乡',513332,4),(513332210,'新荣乡',513332,4),(513332211,'宜牛乡',513332,4),(513332212,'虾扎乡',513332,4),(513332213,'起坞乡',513332,4),(513332214,'阿日扎乡',513332,4),(513332215,'长须贡马乡',513332,4),(513332216,'长沙干马乡',513332,4),(513332217,'长须干马乡',513332,4),(513332218,'温波乡',513332,4),(513332219,'瓦须乡',513332,4),(513333100,'色柯镇',513333,4),(513333101,'翁达镇',513333,4),(513333200,'泥朵乡',513333,4),(513333201,'克戈乡',513333,4),(513333202,'然充乡',513333,4),(513333203,'康勒乡',513333,4),(513333204,'大章乡',513333,4),(513333205,'大则乡',513333,4),(513333206,'亚龙乡',513333,4),(513333207,'塔子乡',513333,4),(513333208,'年龙乡',513333,4),(513333209,'洛若乡',513333,4),(513333210,'霍西乡',513333,4),(513333211,'旭日乡',513333,4),(513333212,'杨各乡',513333,4),(513333213,'甲学乡',513333,4),(513333214,'歌乐沱乡',513333,4),(513334100,'高城镇',513334,4),(513334200,'君坝乡',513334,4),(513334201,'哈依乡',513334,4),(513334202,'觉吾乡',513334,4),(513334203,'莫坝乡',513334,4),(513334204,'亚火乡',513334,4),(513334205,'绒坝乡',513334,4),(513334206,'呷柯乡',513334,4),(513334207,'奔戈乡',513334,4),(513334208,'村戈乡',513334,4),(513334209,'禾尼乡',513334,4),(513334210,'曲登乡',513334,4),(513334211,'喇嘛垭乡',513334,4),(513334212,'章纳乡',513334,4),(513334213,'上木拉乡',513334,4),(513334214,'下木拉乡',513334,4),(513334215,'中木拉乡',513334,4),(513334216,'雄坝乡',513334,4),(513334217,'甲洼乡',513334,4),(513334218,'藏坝乡',513334,4),(513334219,'格木乡',513334,4),(513334220,'拉波乡',513334,4),(513334221,'麦洼乡',513334,4),(513334222,'德巫乡',513334,4),(513335100,'夏邛镇',513335,4),(513335200,'拉哇乡',513335,4),(513335201,'党巴乡',513335,4),(513335202,'竹巴龙乡',513335,4),(513335203,'中心绒乡',513335,4),(513335204,'苏哇龙乡',513335,4),(513335205,'昌波乡',513335,4),(513335206,'地巫乡',513335,4),(513335207,'中咱乡',513335,4),(513335208,'亚日贡乡',513335,4),(513335209,'波密乡',513335,4),(513335210,'莫多乡',513335,4),(513335211,'松多乡',513335,4),(513335212,'波戈溪乡',513335,4),(513335213,'甲英乡',513335,4),(513335214,'措拉乡',513335,4),(513335215,'茶洛乡',513335,4),(513335216,'列衣乡',513335,4),(513335217,'德达乡',513335,4),(513336100,'香巴拉镇',513336,4),(513336200,'尼斯乡',513336,4),(513336201,'沙贡乡',513336,4),(513336202,'水洼乡',513336,4),(513336203,'青德乡',513336,4),(513336204,'青麦乡',513336,4),(513336205,'然乌乡',513336,4),(513336206,'洞松乡',513336,4),(513336207,'热打乡',513336,4),(513336208,'定波乡',513336,4),(513336209,'正斗乡',513336,4),(513336210,'白依乡',513336,4),(513337100,'金珠镇',513337,4),(513337101,'香格里拉镇',513337,4),(513337200,'桑堆乡',513337,4),(513337201,'省母乡',513337,4),(513337202,'傍河乡',513337,4),(513337203,'色拉乡',513337,4),(513337204,'巨龙乡',513337,4),(513337205,'邓波乡',513337,4),(513337206,'木拉乡',513337,4),(513337207,'赤土乡',513337,4),(513337209,'蒙自乡',513337,4),(513337210,'各卡乡',513337,4),(513337211,'吉呷乡',513337,4),(513337212,'俄牙同乡',513337,4),(513338100,'松麦镇',513338,4),(513338101,'瓦卡镇',513338,4),(513338200,'斯闸乡',513338,4),(513338201,'徐龙乡',513338,4),(513338202,'日龙乡',513338,4),(513338203,'曲雅贡乡',513338,4),(513338204,'奔都乡',513338,4),(513338205,'八日乡',513338,4),(513338206,'古学乡',513338,4),(513338208,'贡波乡',513338,4),(513338209,'白松乡',513338,4),(513338210,'茨巫乡',513338,4),(513401001,'北城街道',513401,4),(513401002,'西城街道',513401,4),(513401003,'东城街道',513401,4),(513401004,'长安街道',513401,4),(513401005,'新村街道',513401,4),(513401006,'长宁街道',513401,4),(513401100,'马道镇',513401,4),(513401101,'礼州镇',513401,4),(513401102,'安宁镇',513401,4),(513401103,'川兴镇',513401,4),(513401104,'黄联关镇',513401,4),(513401105,'佑君镇',513401,4),(513401106,'太和镇',513401,4),(513401107,'安哈镇',513401,4),(513401200,'西郊乡',513401,4),(513401201,'高枧乡',513401,4),(513401202,'小庙乡',513401,4),(513401203,'四合乡',513401,4),(513401204,'月华乡',513401,4),(513401205,'兴胜乡',513401,4),(513401206,'琅环乡',513401,4),(513401207,'民胜乡',513401,4),(513401208,'西乡乡',513401,4),(513401209,'樟木箐乡',513401,4),(513401210,'响水乡',513401,4),(513401211,'开元乡',513401,4),(513401212,'大兴乡',513401,4),(513401213,'海南乡',513401,4),(513401214,'大箐乡',513401,4),(513401215,'经久乡',513401,4),(513401216,'西溪乡',513401,4),(513401217,'黄水乡',513401,4),(513401218,'洛古波乡',513401,4),(513401219,'裕隆回族乡',513401,4),(513401220,'高草回族乡',513401,4),(513401221,'中坝乡',513401,4),(513401222,'阿七乡',513401,4),(513401223,'荞地乡',513401,4),(513401224,'磨盘乡',513401,4),(513401225,'巴汝乡',513401,4),(513401226,'银厂乡',513401,4),(513401227,'白马乡',513401,4),(513401228,'马鞍山乡',513401,4),(513422100,'乔瓦镇',513422,4),(513422101,'瓦厂镇',513422,4),(513422102,'茶布朗镇',513422,4),(513422201,'博科乡',513422,4),(513422202,'宁朗乡',513422,4),(513422203,'依吉乡',513422,4),(513422204,'俄亚纳西族乡',513422,4),(513422205,'水洛乡',513422,4),(513422206,'牦牛坪乡',513422,4),(513422207,'屋脚蒙古族乡',513422,4),(513422208,'项脚蒙古族乡',513422,4),(513422209,'李子坪乡',513422,4),(513422210,'列瓦乡',513422,4),(513422211,'芽祖乡',513422,4),(513422212,'下麦地乡',513422,4),(513422213,'西秋乡',513422,4),(513422214,'克尔乡',513422,4),(513422215,'白碉苗族乡',513422,4),(513422216,'三桷桠乡',513422,4),(513422217,'倮波乡',513422,4),(513422218,'卡拉乡',513422,4),(513422219,'后所乡',513422,4),(513422220,'沙湾乡',513422,4),(513422222,'固增苗族乡',513422,4),(513422223,'麦日乡',513422,4),(513422224,'东朗乡',513422,4),(513422225,'唐央乡',513422,4),(513422226,'博窝乡',513422,4),(513422227,'麦地龙乡',513422,4),(513423100,'盐井镇',513423,4),(513423101,'卫城镇',513423,4),(513423102,'梅雨镇',513423,4),(513423103,'白乌镇',513423,4),(513423104,'树河镇',513423,4),(513423105,'黄草镇',513423,4),(513423106,'平川镇',513423,4),(513423107,'泸沽湖镇',513423,4),(513423200,'双河乡',513423,4),(513423201,'干海乡',513423,4),(513423202,'下海乡',513423,4),(513423203,'棉桠乡',513423,4),(513423204,'甘塘乡',513423,4),(513423205,'马鹿乡',513423,4),(513423206,'藤桥乡',513423,4),(513423207,'田湾乡',513423,4),(513423208,'德石乡',513423,4),(513423209,'大河乡',513423,4),(513423210,'盐塘乡',513423,4),(513423211,'巫木乡',513423,4),(513423212,'大草乡',513423,4),(513423213,'博大乡',513423,4),(513423214,'金河乡',513423,4),(513423215,'右所乡',513423,4),(513423216,'巴折乡',513423,4),(513423217,'阿萨乡',513423,4),(513423218,'长柏乡',513423,4),(513423219,'桃子乡',513423,4),(513423220,'盖租乡',513423,4),(513423221,'前所乡',513423,4),(513423222,'沃底乡',513423,4),(513423223,'大坡蒙古族乡',513423,4),(513423224,'洼里乡',513423,4),(513423225,'梅子坪乡',513423,4),(513424100,'德州镇',513424,4),(513424101,'永郎镇',513424,4),(513424102,'乐跃镇',513424,4),(513424103,'麻栗镇',513424,4),(513424201,'阿月乡',513424,4),(513424202,'王所乡',513424,4),(513424203,'六所乡',513424,4),(513424204,'巴洞乡',513424,4),(513424205,'宽裕乡',513424,4),(513424206,'茨达乡',513424,4),(513424207,'小高乡',513424,4),(513424208,'锦川乡',513424,4),(513424209,'老碾乡',513424,4),(513424210,'大湾乡',513424,4),(513424211,'马安乡',513424,4),(513424212,'铁炉乡',513424,4),(513424213,'前山乡',513424,4),(513424214,'大山乡',513424,4),(513424215,'大六槽乡',513424,4),(513424216,'热河乡',513424,4),(513424217,'南山傈僳族乡',513424,4),(513424218,'金沙傈僳族乡',513424,4),(513425100,'城关镇',513425,4),(513425101,'鹿厂镇',513425,4),(513425102,'黎溪镇',513425,4),(513425103,'通安镇',513425,4),(513425104,'太平镇',513425,4),(513425105,'益门镇',513425,4),(513425106,'绿水镇',513425,4),(513425107,'新发镇',513425,4),(513425108,'云甸镇',513425,4),(513425200,'果元乡',513425,4),(513425201,'南阁乡',513425,4),(513425202,'内东乡',513425,4),(513425203,'老街乡',513425,4),(513425204,'外北乡',513425,4),(513425205,'彰冠乡',513425,4),(513425206,'爱民乡',513425,4),(513425207,'爱国乡',513425,4),(513425208,'凤营乡',513425,4),(513425209,'白鸡乡',513425,4),(513425210,'矮郎乡',513425,4),(513425211,'小黑箐乡',513425,4),(513425212,'河口乡',513425,4),(513425213,'中厂乡',513425,4),(513425214,'关河乡',513425,4),(513425215,'鱼乍乡',513425,4),(513425217,'黎洪乡',513425,4),(513425218,'金雨乡',513425,4),(513425219,'树堡乡',513425,4),(513425220,'江竹乡',513425,4),(513425221,'新安傣族乡',513425,4),(513425222,'普隆乡',513425,4),(513425223,'竹箐乡',513425,4),(513425225,'杨家坝乡',513425,4),(513425226,'江普乡',513425,4),(513425227,'木古乡',513425,4),(513425228,'富乐乡',513425,4),(513425229,'海潮乡',513425,4),(513425230,'芭蕉乡',513425,4),(513425231,'横山乡',513425,4),(513425232,'马宗乡',513425,4),(513425233,'法坪乡',513425,4),(513425234,'槽元乡',513425,4),(513425235,'黄柏乡',513425,4),(513425237,'仓田乡',513425,4),(513425238,'白果湾乡',513425,4),(513425239,'下村乡',513425,4),(513425240,'龙泉乡',513425,4),(513425241,'六华乡',513425,4),(513425242,'三地乡',513425,4),(513425243,'六民乡',513425,4),(513426100,'会东镇',513426,4),(513426101,'铅锌镇',513426,4),(513426102,'堵格镇',513426,4),(513426103,'姜州镇',513426,4),(513426104,'乌东德镇',513426,4),(513426105,'淌塘镇',513426,4),(513426200,'小岔河乡',513426,4),(513426201,'撒者邑乡',513426,4),(513426202,'新云乡',513426,4),(513426203,'长新乡',513426,4),(513426209,'小坝乡',513426,4),(513426210,'火石乡',513426,4),(513426211,'铁柳乡',513426,4),(513426212,'龙树乡',513426,4),(513426213,'可河乡',513426,4),(513426214,'嘎吉乡',513426,4),(513426215,'柏岩乡',513426,4),(513426216,'海坝乡',513426,4),(513426221,'岩坝乡',513426,4),(513426223,'新田乡',513426,4),(513426224,'江西街乡',513426,4),(513426225,'岔河乡',513426,4),(513426226,'双堰乡',513426,4),(513426227,'发箐乡',513426,4),(513426228,'铁厂沟乡',513426,4),(513426229,'新街乡',513426,4),(513426230,'马龙乡',513426,4),(513426231,'新龙乡',513426,4),(513426232,'红岩乡',513426,4),(513426233,'红果乡',513426,4),(513426234,'鲁吉乡',513426,4),(513426235,'溜姑乡',513426,4),(513426236,'大崇乡',513426,4),(513426237,'黑嘎乡',513426,4),(513426238,'文箐乡',513426,4),(513426239,'野牛坪乡',513426,4),(513426240,'松坪乡',513426,4),(513426241,'新山乡',513426,4),(513426242,'小街乡',513426,4),(513426243,'老口乡',513426,4),(513426244,'干海子乡',513426,4),(513426245,'黄坪乡',513426,4),(513426246,'野租乡',513426,4),(513426247,'拉马乡',513426,4),(513426248,'鲁南乡',513426,4),(513426249,'雪山乡',513426,4),(513426250,'柏杉乡',513426,4),(513427100,'披砂镇',513427,4),(513427101,'松新镇',513427,4),(513427102,'竹寿镇',513427,4),(513427103,'华弹镇',513427,4),(513427104,'白鹤滩镇',513427,4),(513427105,'葫芦口镇',513427,4),(513427200,'景星乡',513427,4),(513427201,'俱乐乡',513427,4),(513427202,'新村乡',513427,4),(513427203,'幸福乡',513427,4),(513427204,'海子乡',513427,4),(513427205,'六铁乡',513427,4),(513427206,'新建乡',513427,4),(513427207,'稻谷乡',513427,4),(513427208,'新华乡',513427,4),(513427209,'石梨乡',513427,4),(513427210,'松林乡',513427,4),(513427211,'杉树乡',513427,4),(513427212,'梁子乡',513427,4),(513427213,'大同乡',513427,4),(513427214,'西瑶乡',513427,4),(513427215,'红星乡',513427,4),(513427216,'骑骡沟乡',513427,4),(513427217,'倮格乡',513427,4),(513427218,'跑马乡',513427,4),(513428100,'普基镇',513428,4),(513428101,'荞窝镇',513428,4),(513428102,'螺髻山镇',513428,4),(513428200,'永安乡',513428,4),(513428201,'向阳乡',513428,4),(513428202,'文坪乡',513428,4),(513428203,'黎安乡',513428,4),(513428204,'花山乡',513428,4),(513428205,'东山乡',513428,4),(513428206,'大坪乡',513428,4),(513428207,'辉隆乡',513428,4),(513428208,'洛乌沟乡',513428,4),(513428209,'雨水乡',513428,4),(513428210,'甘天地乡',513428,4),(513428211,'洛乌乡',513428,4),(513428212,'孟甘乡',513428,4),(513428213,'特兹乡',513428,4),(513428214,'吉乐乡',513428,4),(513428215,'特口乡',513428,4),(513428216,'耶底乡',513428,4),(513428217,'夹铁乡',513428,4),(513428218,'瓦洛乡',513428,4),(513428219,'哈力洛乡',513428,4),(513428220,'菜子乡',513428,4),(513428221,'祝联乡',513428,4),(513428222,'刘家坪乡',513428,4),(513428223,'月吾乡',513428,4),(513428224,'特补乡',513428,4),(513428225,'五道箐乡',513428,4),(513428226,'特尔果乡',513428,4),(513428227,'大槽乡',513428,4),(513428228,'马洪乡',513428,4),(513428229,'洛甘乡',513428,4),(513428230,'红莫依达乡',513428,4),(513429100,'特木里镇',513429,4),(513429101,'龙潭镇',513429,4),(513429102,'拖觉镇',513429,4),(513429200,'木尔乡',513429,4),(513429201,'九都乡',513429,4),(513429202,'拉达乡',513429,4),(513429203,'乌科乡',513429,4),(513429204,'沙洛乡',513429,4),(513429205,'洛古乡',513429,4),(513429206,'补尔乡',513429,4),(513429207,'觉撒乡',513429,4),(513429208,'美撒乡',513429,4),(513429209,'拉果乡',513429,4),(513429210,'乌依乡',513429,4),(513429211,'浪珠乡',513429,4),(513429212,'包谷坪乡',513429,4),(513429213,'合井乡',513429,4),(513429214,'罗家坪乡',513429,4),(513429215,'牛角湾乡',513429,4),(513429216,'补洛乡',513429,4),(513429217,'火烈乡',513429,4),(513429218,'乐安乡',513429,4),(513429219,'四棵乡',513429,4),(513429220,'地洛乡',513429,4),(513429221,'俄里坪乡',513429,4),(513429222,'瓦都乡',513429,4),(513429223,'采哈乡',513429,4),(513429224,'委只洛乡',513429,4),(513429225,'联补乡',513429,4),(513429226,'基只乡',513429,4),(513430100,'天地坝镇',513430,4),(513430101,'派来镇',513430,4),(513430102,'芦稿镇',513430,4),(513430103,'对坪镇',513430,4),(513430200,'桃坪乡',513430,4),(513430201,'热水河乡',513430,4),(513430202,'马依足乡',513430,4),(513430203,'红峰乡',513430,4),(513430204,'尔觉西乡',513430,4),(513430205,'热柯觉乡',513430,4),(513430206,'甲依乡',513430,4),(513430207,'木府乡',513430,4),(513430208,'寨子乡',513430,4),(513430209,'则祖乡',513430,4),(513430210,'基觉乡',513430,4),(513430211,'小银木乡',513430,4),(513430212,'春江乡',513430,4),(513430213,'红联乡',513430,4),(513430214,'青松乡',513430,4),(513430215,'放马坪乡',513430,4),(513430216,'梗堡乡',513430,4),(513430217,'山江乡',513430,4),(513430218,'洛觉乡',513430,4),(513430219,'向岭乡',513430,4),(513430220,'谷德乡',513430,4),(513430221,'高峰乡',513430,4),(513430222,'老寨子乡',513430,4),(513430223,'德溪乡',513430,4),(513430224,'南瓦乡',513430,4),(513430225,'依莫合乡',513430,4),(513430226,'土沟乡',513430,4),(513430227,'丙底乡',513430,4),(513430228,'依达乡',513430,4),(513430229,'丝窝乡',513430,4),(513431100,'新城镇',513431,4),(513431200,'城北乡',513431,4),(513431201,'树坪乡',513431,4),(513431202,'谷曲乡',513431,4),(513431203,'达洛乡',513431,4),(513431204,'龙恩乡',513431,4),(513431205,'美甘乡',513431,4),(513431206,'四开乡',513431,4),(513431207,'大坝乡',513431,4),(513431208,'地莫乡',513431,4),(513431209,'柳且乡',513431,4),(513431210,'博洛乡',513431,4),(513431211,'库莫乡',513431,4),(513431212,'解放乡',513431,4),(513431213,'三岗乡',513431,4),(513431214,'洒拉地坡乡',513431,4),(513431215,'三岔河乡',513431,4),(513431216,'尼地乡',513431,4),(513431217,'碗厂乡',513431,4),(513431218,'普诗乡',513431,4),(513431219,'玛增依乌乡',513431,4),(513431220,'塘且乡',513431,4),(513431221,'久特洛古乡',513431,4),(513431222,'齿可波西乡',513431,4),(513431223,'特口甲谷乡',513431,4),(513431224,'竹核乡',513431,4),(513431225,'阿并洛古乡',513431,4),(513431226,'格吾乡',513431,4),(513431227,'特布洛乡',513431,4),(513431228,'庆恒乡',513431,4),(513431229,'拉一木乡',513431,4),(513431230,'色底乡',513431,4),(513431231,'补约乡',513431,4),(513431232,'比尔乡',513431,4),(513431233,'库依乡',513431,4),(513431234,'金曲乡',513431,4),(513431235,'宜牧地乡',513431,4),(513431236,'波洛乡',513431,4),(513431237,'央摩租乡',513431,4),(513431238,'则普乡',513431,4),(513431239,'永乐乡',513431,4),(513431240,'且莫乡',513431,4),(513431241,'甘多洛古乡',513431,4),(513431242,'支尔莫乡',513431,4),(513431243,'龙沟乡',513431,4),(513431244,'日哈乡',513431,4),(513431245,'哈甘乡',513431,4),(513432100,'光明镇',513432,4),(513432101,'冕山镇',513432,4),(513432102,'红莫镇',513432,4),(513432103,'两河口镇',513432,4),(513432104,'米市镇',513432,4),(513432105,'洛哈镇',513432,4),(513432106,'尼波镇',513432,4),(513432200,'拉克乡',513432,4),(513432201,'则约乡',513432,4),(513432202,'贺波洛乡',513432,4),(513432203,'鲁基乡',513432,4),(513432204,'李子乡',513432,4),(513432205,'北山乡',513432,4),(513432206,'西河乡',513432,4),(513432207,'东河乡',513432,4),(513432208,'且拖乡',513432,4),(513432209,'博洛拉达乡',513432,4),(513432210,'沙马拉达乡',513432,4),(513432211,'巴久乡',513432,4),(513432212,'洛莫乡',513432,4),(513432213,'依洛乡',513432,4),(513432214,'热柯依达乡',513432,4),(513432215,'额尼乡',513432,4),(513432216,'乐武乡',513432,4),(513433100,'城厢镇',513433,4),(513433101,'漫水湾镇',513433,4),(513433102,'大桥镇',513433,4),(513433103,'复兴镇',513433,4),(513433104,'泸沽镇',513433,4),(513433105,'沙坝镇',513433,4),(513433106,'彝海镇',513433,4),(513433107,'石龙镇',513433,4),(513433108,'回龙镇',513433,4),(513433200,'回坪乡',513433,4),(513433202,'哈哈乡',513433,4),(513433203,'森荣乡',513433,4),(513433204,'林里乡',513433,4),(513433206,'铁厂乡',513433,4),(513433207,'河边乡',513433,4),(513433208,'河里乡',513433,4),(513433209,'冶勒乡',513433,4),(513433210,'拖乌乡',513433,4),(513433212,'曹古乡',513433,4),(513433213,'惠安乡',513433,4),(513433214,'后山乡',513433,4),(513433215,'宏模乡',513433,4),(513433216,'先锋乡',513433,4),(513433217,'泽远乡',513433,4),(513433218,'里庄乡',513433,4),(513433219,'金林乡',513433,4),(513433220,'腊窝乡',513433,4),(513433221,'联合乡',513433,4),(513433222,'麦地沟乡',513433,4),(513433223,'锦屏乡',513433,4),(513433224,'南河乡',513433,4),(513433225,'青纳乡',513433,4),(513433226,'和爱藏族乡',513433,4),(513433227,'棉沙湾乡',513433,4),(513433228,'马头乡',513433,4),(513433229,'窝堡乡',513433,4),(513433230,'新兴乡',513433,4),(513433231,'健美乡',513433,4),(513434100,'越城镇',513434,4),(513434101,'中所镇',513434,4),(513434102,'新民镇',513434,4),(513434103,'乃托镇',513434,4),(513434104,'普雄镇',513434,4),(513434200,'新乡乡',513434,4),(513434201,'马拖乡',513434,4),(513434202,'大瑞乡',513434,4),(513434203,'南箐乡',513434,4),(513434204,'丁山乡',513434,4),(513434205,'大花乡',513434,4),(513434206,'河东乡',513434,4),(513434207,'西山乡',513434,4),(513434208,'板桥乡',513434,4),(513434209,'瓦岩乡',513434,4),(513434210,'大屯乡',513434,4),(513434211,'保安藏族乡',513434,4),(513434212,'白果乡',513434,4),(513434213,'梅花乡',513434,4),(513434214,'拉普乡',513434,4),(513434215,'铁西乡',513434,4),(513434216,'尔觉乡',513434,4),(513434217,'四甘普乡',513434,4),(513434218,'贡莫乡',513434,4),(513434219,'拉白乡',513434,4),(513434220,'乐青地乡',513434,4),(513434221,'德吉乡',513434,4),(513434222,'依洛地坝乡',513434,4),(513434223,'尔赛乡',513434,4),(513434224,'古二乡',513434,4),(513434225,'竹阿觉乡',513434,4),(513434226,'保石乡',513434,4),(513434227,'五里箐乡',513434,4),(513434228,'书古乡',513434,4),(513434229,'瓦普莫乡',513434,4),(513434230,'申果乡',513434,4),(513434231,'瓦曲觉乡',513434,4),(513434232,'申普乡',513434,4),(513434233,'瓦曲乃乌乡',513434,4),(513434234,'瓦里觉乡',513434,4),(513434235,'拉吉乡',513434,4),(513435100,'新市坝镇',513435,4),(513435101,'田坝镇',513435,4),(513435102,'海棠镇',513435,4),(513435103,'吉米镇',513435,4),(513435104,'斯觉镇',513435,4),(513435105,'普昌镇',513435,4),(513435106,'玉田镇',513435,4),(513435200,'前进乡',513435,4),(513435201,'胜利乡',513435,4),(513435202,'新茶乡',513435,4),(513435203,'两河乡',513435,4),(513435204,'里克乡',513435,4),(513435205,'尼尔觉乡',513435,4),(513435206,'拉莫乡',513435,4),(513435207,'波波乡',513435,4),(513435208,'阿嘎乡',513435,4),(513435209,'阿尔乡',513435,4),(513435210,'石海乡',513435,4),(513435211,'团结乡',513435,4),(513435212,'嘎日乡',513435,4),(513435213,'则拉乡',513435,4),(513435214,'坪坝乡',513435,4),(513435215,'蓼坪乡',513435,4),(513435216,'阿兹觉乡',513435,4),(513435217,'乌史大桥乡',513435,4),(513435218,'黑马乡',513435,4),(513435219,'沙岱乡',513435,4),(513435220,'苏雄乡',513435,4),(513436100,'巴普镇',513436,4),(513436200,'觉洛乡',513436,4),(513436201,'井叶特西乡',513436,4),(513436202,'合姑洛乡',513436,4),(513436203,'巴古乡',513436,4),(513436204,'农作乡',513436,4),(513436205,'佐戈依达乡',513436,4),(513436206,'子威乡',513436,4),(513436207,'依洛拉达乡',513436,4),(513436208,'典补乡',513436,4),(513436209,'哈洛乡',513436,4),(513436210,'牛牛坝乡',513436,4),(513436211,'尔合乡',513436,4),(513436212,'竹库乡',513436,4),(513436213,'候古莫乡',513436,4),(513436214,'候播乃拖乡',513436,4),(513436215,'采红乡',513436,4),(513436216,'苏洛乡',513436,4),(513436217,'九口乡',513436,4),(513436218,'洛俄依甘乡',513436,4),(513436219,'拉木阿觉乡',513436,4),(513436220,'洛莫依达乡',513436,4),(513436221,'柳洪乡',513436,4),(513436222,'乐约乡',513436,4),(513436223,'尔其乡',513436,4),(513436224,'瓦古乡',513436,4),(513436225,'峨曲古乡',513436,4),(513436226,'炳途乡',513436,4),(513436227,'拖木乡',513436,4),(513436228,'尼哈乡',513436,4),(513436229,'龙门乡',513436,4),(513436230,'依果觉乡',513436,4),(513436231,'洒库乡',513436,4),(513436232,'瓦西乡',513436,4),(513436233,'树窝乡',513436,4),(513436234,'龙窝乡',513436,4),(513437100,'锦城镇',513437,4),(513437101,'西宁镇',513437,4),(513437102,'汶水镇',513437,4),(513437103,'黄琅镇',513437,4),(513437200,'南田乡',513437,4),(513437201,'海湾乡',513437,4),(513437202,'杉树堡乡',513437,4),(513437203,'箐口乡',513437,4),(513437204,'帕哈乡',513437,4),(513437205,'永盛乡',513437,4),(513437206,'溪洛米乡',513437,4),(513437207,'白铁坝乡',513437,4),(513437208,'顺河乡',513437,4),(513437209,'渡口乡',513437,4),(513437210,'回龙场乡',513437,4),(513437211,'马湖乡',513437,4),(513437212,'中田乡',513437,4),(513437213,'谷米乡',513437,4),(513437214,'柑子乡',513437,4),(513437215,'双河口乡',513437,4),(513437216,'罗山溪乡',513437,4),(513437217,'桂花乡',513437,4),(513437218,'烂坝子乡',513437,4),(513437219,'沙沱乡',513437,4),(513437220,'山棱岗乡',513437,4),(513437221,'长河乡',513437,4),(513437222,'谷堆乡',513437,4),(513437223,'八寨乡',513437,4),(513437224,'拉咪乡',513437,4),(513437225,'松树乡',513437,4),(513437226,'曲依乡',513437,4),(513437227,'千万贯乡',513437,4),(513437228,'五官乡',513437,4),(513437229,'上田坝乡',513437,4),(513437230,'大坪子乡',513437,4),(513437231,'簸箕梁子乡',513437,4),(513437232,'小沟乡',513437,4),(513437233,'莫红乡',513437,4),(513437234,'克觉乡',513437,4),(513437235,'坪头乡',513437,4),(513437236,'雷池乡',513437,4),(513437237,'巴姑乡',513437,4),(513437238,'咪姑乡',513437,4),(513437239,'一车乡',513437,4),(513437240,'斯古溪乡',513437,4),(513437241,'卡哈洛乡',513437,4),(513437242,'元宝山乡',513437,4),(513437243,'大岩洞乡',513437,4),(513437244,'岩脚乡',513437,4),(520102200,'后巢乡',520102,4),(520102201,'云关乡',520102,4),(520102202,'小碧布依族苗族乡',520102,4),(520102203,'永乐乡',520102,4),(520102400,'新华社区服务中心',520102,4),(520102401,'西湖社区服务中心',520102,4),(520102402,'水口寺社区服务中心',520102,4),(520102403,'大南社区服务中心',520102,4),(520102404,'中南社区服务中心',520102,4),(520102405,'市府社区服务中心',520102,4),(520102406,'河滨社区服务中心',520102,4),(520102407,'遵义社区服务中心',520102,4),(520102408,'兴关社区服务中心',520102,4),(520102409,'沙冲社区服务中心',520102,4),(520102410,'沙南社区服务中心',520102,4),(520102411,'太慈社区服务中心',520102,4),(520102412,'花果园社区服务中心',520102,4),(520102413,'油榨社区服务中心',520102,4),(520102414,'中曹司社区服务中心',520102,4),(520102415,'二戈寨社区服务中心',520102,4),(520102416,'见龙社区服务中心',520102,4),(520102417,'龙洞社区服务中心',520102,4),(520103100,'黔灵镇',520103,4),(520103400,'中华社区服务中心',520103,4),(520103401,'中环社区服务中心',520103,4),(520103402,'中东社区服务中心',520103,4),(520103403,'东山社区服务中心',520103,4),(520103404,'延中社区服务中心',520103,4),(520103405,'市西社区服务中心',520103,4),(520103406,'威清社区服务中心',520103,4),(520103407,'普陀社区服务中心',520103,4),(520103408,'北京路社区服务中心',520103,4),(520103409,'栖霞社区服务中心',520103,4),(520103410,'黔东社区服务中心',520103,4),(520103411,'宅吉社区服务中心',520103,4),(520103412,'省府社区服务中心',520103,4),(520103413,'金狮社区服务中心',520103,4),(520103414,'中天社区服务中心',520103,4),(520103415,'贵乌社区服务中心',520103,4),(520103416,'头桥社区服务中心',520103,4),(520103417,'金龙社区服务中心',520103,4),(520103418,'圣泉社区服务中心',520103,4),(520103419,'三桥社区服务中心',520103,4),(520103420,'金关社区服务中心',520103,4),(520103421,'蔡关社区服务中心',520103,4),(520103422,'荷塘社区服务中心',520103,4),(520103423,'普天社区服务中心',520103,4),(520103424,'金鸭社区服务中心',520103,4),(520103425,'金惠社区服务中心',520103,4),(520111101,'青岩镇',520111,4),(520111102,'石板镇',520111,4),(520111103,'党武镇',520111,4),(520111104,'麦坪镇',520111,4),(520111105,'燕楼镇',520111,4),(520111201,'孟关苗族布依族乡',520111,4),(520111204,'湖潮苗族布依族乡',520111,4),(520111205,'久安乡',520111,4),(520111207,'高坡苗族乡',520111,4),(520111208,'黔陶布依族苗族乡',520111,4),(520111209,'马铃布依族苗族乡',520111,4),(520111400,'羊艾农场',520111,4),(520111401,'阳光社区服务中心',520111,4),(520111402,'贵筑社区服务中心',520111,4),(520111403,'溪北社区服务中心',520111,4),(520111404,'清溪社区服务中心',520111,4),(520111405,'明珠社区服务中心',520111,4),(520111406,'兴隆社区服务中心',520111,4),(520111407,'瑞华社区服务中心',520111,4),(520111408,'清浦社区服务中心',520111,4),(520111409,'黔江社区服务中心',520111,4),(520111410,'平桥社区服务中心',520111,4),(520111411,'航天社区服务中心',520111,4),(520111412,'航空社区服务中心',520111,4),(520111413,'金欣社区服务中心',520111,4),(520111414,'黄河社区服务中心',520111,4),(520111415,'三江社区服务中心',520111,4),(520111416,'小孟社区服务中心',520111,4),(520111417,'金竹社区服务中心',520111,4),(520111418,'花孟社区服务中心',520111,4),(520112101,'东风镇',520112,4),(520112102,'水田镇',520112,4),(520112103,'羊昌镇',520112,4),(520112105,'下坝镇',520112,4),(520112106,'新场镇',520112,4),(520112107,'百宜镇',520112,4),(520112203,'新堡布依族乡',520112,4),(520112206,'偏坡布依族乡',520112,4),(520112400,'贵阳市三江农场',520112,4),(520112401,'顺新社区服务中心',520112,4),(520112402,'新天社区服务中心',520112,4),(520112403,'创新社区服务中心',520112,4),(520112404,'振新社区服务中心',520112,4),(520112405,'高新社区服务中心',520112,4),(520113100,'艳山红镇',520113,4),(520113101,'麦架镇',520113,4),(520113102,'沙文镇',520113,4),(520113200,'都拉布依族乡',520113,4),(520113201,'牛场布依族乡',520113,4),(520113400,'红云社区服务中心',520113,4),(520113401,'大山洞社区服务中心',520113,4),(520113402,'艳山红社区服务中心',520113,4),(520113403,'铝兴社区服务中心',520113,4),(520113404,'白沙关社区服务中心',520113,4),(520113405,'都新社区服务中心',520113,4),(520121100,'城关镇',520121,4),(520121101,'双流镇',520121,4),(520121102,'金中镇',520121,4),(520121103,'冯三镇',520121,4),(520121104,'楠木渡镇',520121,4),(520121105,'龙岗镇',520121,4),(520121106,'永温镇',520121,4),(520121107,'花梨镇',520121,4),(520121200,'南龙乡',520121,4),(520121202,'宅吉乡',520121,4),(520121204,'龙水乡',520121,4),(520121205,'米坪乡',520121,4),(520121206,'禾丰乡',520121,4),(520121207,'南江乡',520121,4),(520121208,'高寨乡',520121,4),(520121209,'毛云乡',520121,4),(520121401,'紫兴社区服务中心',520121,4),(520121402,'南山社区服务中心',520121,4),(520122100,'永靖镇',520122,4),(520122101,'温泉镇',520122,4),(520122102,'九庄镇',520122,4),(520122103,'小寨坝镇',520122,4),(520122104,'西山镇',520122,4),(520122105,'养龙司镇',520122,4),(520122106,'石硐镇',520122,4),(520122200,'青山苗族乡',520122,4),(520122204,'鹿窝乡',520122,4),(520122205,'流长乡',520122,4),(520122400,'新华社区服务中心',520122,4),(520123100,'龙场镇',520123,4),(520123101,'扎佐镇',520123,4),(520123102,'久长镇',520123,4),(520123103,'六广镇',520123,4),(520123104,'六屯镇',520123,4),(520123105,'洒坪镇',520123,4),(520123106,'六桶镇',520123,4),(520123200,'谷堡乡',520123,4),(520123202,'小箐乡',520123,4),(520123204,'大石布依族乡',520123,4),(520123400,'龙岗社区服务中心',520123,4),(520181100,'红枫湖镇',520181,4),(520181101,'站街镇',520181,4),(520181102,'卫城镇',520181,4),(520181103,'新店镇',520181,4),(520181201,'麦格苗族布依族乡',520181,4),(520181202,'暗流乡',520181,4),(520181203,'王庄布依族苗族乡',520181,4),(520181204,'流长苗族乡',520181,4),(520181205,'犁倭乡',520181,4),(520181400,'新岭社区服务中心',520181,4),(520181401,'红塔社区服务中心',520181,4),(520181402,'巢凤社区服务中心',520181,4),(520181403,'百花社区服务中心',520181,4),(520181405,'红新社区服务中心',520181,4),(520201001,'黄土坡街道',520201,4),(520201002,'荷城街道',520201,4),(520201003,'凤凰街道',520201,4),(520201004,'德坞街道',520201,4),(520201005,'荷泉街道',520201,4),(520201006,'红岩街道',520201,4),(520201007,'杨柳街道',520201,4),(520201101,'大河镇',520201,4),(520201102,'汪家寨镇',520201,4),(520201103,'大湾镇',520201,4),(520201200,'月照彝族回族苗族乡',520201,4),(520201201,'双戛彝族乡',520201,4),(520203100,'平寨镇',520203,4),(520203101,'郎岱镇',520203,4),(520203102,'岩脚镇',520203,4),(520203103,'木岗镇',520203,4),(520203104,'大用镇',520203,4),(520203200,'新窑乡',520203,4),(520203201,'落别布依族彝族乡',520203,4),(520203202,'折溪彝族乡',520203,4),(520203203,'牛场苗族彝族乡',520203,4),(520203204,'新场乡',520203,4),(520203205,'中寨苗族彝族布依族乡',520203,4),(520203206,'堕却乡',520203,4),(520203207,'箐口彝族仡佬族布依族乡',520203,4),(520203208,'洒志彝族布依族苗族乡',520203,4),(520203209,'毛口布依族苗族乡',520203,4),(520203210,'龙场乡',520203,4),(520203211,'新华乡',520203,4),(520203212,'梭戛苗族彝族回族乡',520203,4),(520203213,'陇脚布依族乡',520203,4),(520221100,'滥坝镇',520221,4),(520221101,'老鹰山镇',520221,4),(520221102,'比德镇',520221,4),(520221103,'化乐镇',520221,4),(520221104,'蟠龙镇',520221,4),(520221105,'阿戛镇',520221,4),(520221106,'勺米镇',520221,4),(520221107,'玉舍镇',520221,4),(520221108,'都格镇',520221,4),(520221109,'发耳镇',520221,4),(520221110,'鸡场镇',520221,4),(520221111,'木果镇',520221,4),(520221112,'保华镇',520221,4),(520221200,'董地苗族彝族乡',520221,4),(520221201,'陡箐苗族彝族乡',520221,4),(520221204,'南开苗族彝族乡',520221,4),(520221205,'青林苗族彝族乡',520221,4),(520221207,'金盆苗族彝族乡',520221,4),(520221209,'发箐苗族彝族乡',520221,4),(520221213,'纸厂彝族乡',520221,4),(520221214,'坪寨彝族乡',520221,4),(520221218,'龙场苗族白族彝族乡',520221,4),(520221219,'营盘苗族彝族白族乡',520221,4),(520221220,'顺场苗族彝族布依族乡',520221,4),(520221221,'花戛苗族布依族彝族乡',520221,4),(520221222,'杨梅彝族苗族回族乡',520221,4),(520221223,'新街彝族苗族布依族乡',520221,4),(520221224,'野钟苗族彝族布依族乡',520221,4),(520221225,'果布戛彝族苗族布依族乡',520221,4),(520221226,'米箩布依族苗族彝族乡',520221,4),(520221228,'盐井乡',520221,4),(520221230,'猴场苗族布依族乡',520221,4),(520221231,'红岩布依族彝族苗族乡',520221,4),(520222001,'亦资街道',520222,4),(520222002,'翰林街道',520222,4),(520222003,'两河街道',520222,4),(520222100,'红果镇',520222,4),(520222101,'城关镇',520222,4),(520222102,'板桥镇',520222,4),(520222103,'水塘镇',520222,4),(520222104,'民主镇',520222,4),(520222105,'大山镇',520222,4),(520222106,'保田镇',520222,4),(520222107,'老厂镇',520222,4),(520222108,'玛依镇',520222,4),(520222109,'石桥镇',520222,4),(520222110,'平关镇',520222,4),(520222111,'响水镇',520222,4),(520222112,'火铺镇',520222,4),(520222113,'乐民镇',520222,4),(520222114,'西冲镇',520222,4),(520222115,'断江镇',520222,4),(520222116,'盘江镇',520222,4),(520222117,'柏果镇',520222,4),(520222118,'洒基镇',520222,4),(520222119,'刘官镇',520222,4),(520222120,'滑石镇',520222,4),(520222121,'新民镇',520222,4),(520222122,'珠东镇',520222,4),(520222200,'忠义乡',520222,4),(520222202,'普田回族乡',520222,4),(520222206,'鸡场坪彝族乡',520222,4),(520222207,'松河彝族乡',520222,4),(520222208,'坪地彝族乡',520222,4),(520222209,'四格彝族乡',520222,4),(520222210,'淤泥彝族乡',520222,4),(520222211,'普古彝族苗族乡',520222,4),(520222212,'旧营白族彝族苗族乡',520222,4),(520222213,'羊场布依族白族苗族乡',520222,4),(520222214,'保基苗族彝族乡',520222,4),(520222215,'英武乡',520222,4),(520222216,'马场彝族苗族乡',520222,4),(520302001,'老城街道',520302,4),(520302002,'万里路街道',520302,4),(520302003,'中华路街道',520302,4),(520302004,'南门关街道',520302,4),(520302005,'延安路街道',520302,4),(520302006,'舟水桥街道',520302,4),(520302007,'中山路街道',520302,4),(520302008,'北京路街道',520302,4),(520302100,'长征镇',520302,4),(520302101,'巷口镇',520302,4),(520302102,'南关镇',520302,4),(520302103,'忠庄镇',520302,4),(520302104,'海龙镇',520302,4),(520302105,'深溪镇',520302,4),(520302106,'金鼎山镇',520302,4),(520302107,'新蒲镇',520302,4),(520303001,'上海路街道',520303,4),(520303002,'洗马路街道',520303,4),(520303003,'大连路街道',520303,4),(520303100,'高桥镇',520303,4),(520303101,'董公寺镇',520303,4),(520303102,'团泽镇',520303,4),(520303103,'高坪镇',520303,4),(520303104,'板桥镇',520303,4),(520303105,'泗渡镇',520303,4),(520321100,'南白镇',520321,4),(520321101,'龙坑镇',520321,4),(520321102,'三岔镇',520321,4),(520321103,'苟江镇',520321,4),(520321104,'三合镇',520321,4),(520321105,'乌江镇',520321,4),(520321106,'虾子镇',520321,4),(520321107,'三渡镇',520321,4),(520321108,'新舟镇',520321,4),(520321109,'永乐镇',520321,4),(520321110,'龙坪镇',520321,4),(520321111,'喇叭镇',520321,4),(520321112,'团溪镇',520321,4),(520321113,'铁厂镇',520321,4),(520321114,'西坪镇',520321,4),(520321115,'尚嵇镇',520321,4),(520321116,'茅栗镇',520321,4),(520321117,'新民镇',520321,4),(520321118,'鸭溪镇',520321,4),(520321119,'石板镇',520321,4),(520321120,'乐山镇',520321,4),(520321121,'枫香镇',520321,4),(520321122,'泮水镇',520321,4),(520321123,'马蹄镇',520321,4),(520321124,'沙湾镇',520321,4),(520321125,'松林镇',520321,4),(520321126,'毛石镇',520321,4),(520321127,'山盆镇',520321,4),(520321128,'芝麻镇',520321,4),(520321200,'平正仡佬族乡',520321,4),(520321201,'洪关苗族乡',520321,4),(520322100,'娄山关镇',520322,4),(520322101,'楚米镇',520322,4),(520322102,'新站镇',520322,4),(520322103,'松坎镇',520322,4),(520322104,'高桥镇',520322,4),(520322105,'水坝塘镇',520322,4),(520322106,'官仓镇',520322,4),(520322107,'花秋镇',520322,4),(520322108,'羊磴镇',520322,4),(520322109,'九坝镇',520322,4),(520322110,'大河镇',520322,4),(520322111,'夜郎镇',520322,4),(520322112,'木瓜镇',520322,4),(520322113,'坡渡镇',520322,4),(520322114,'燎原镇',520322,4),(520322115,'狮溪镇',520322,4),(520322116,'茅石镇',520322,4),(520322117,'尧龙山镇',520322,4),(520322201,'风水乡',520322,4),(520322202,'容光乡',520322,4),(520322203,'小水乡',520322,4),(520322205,'黄莲乡',520322,4),(520322206,'芭蕉乡',520322,4),(520322207,'马鬃苗族乡',520322,4),(520323100,'洋川镇',520323,4),(520323101,'郑场镇',520323,4),(520323102,'旺草镇',520323,4),(520323103,'蒲场镇',520323,4),(520323104,'风华镇',520323,4),(520323105,'茅垭镇',520323,4),(520323106,'枧坝镇',520323,4),(520323107,'宽阔镇',520323,4),(520323108,'黄杨镇',520323,4),(520323109,'青杠塘镇',520323,4),(520323110,'太白镇',520323,4),(520323111,'温泉镇',520323,4),(520323200,'大路槽乡',520323,4),(520323201,'小关乡',520323,4),(520323202,'坪乐乡',520323,4),(520324100,'凤仪镇',520324,4),(520324101,'瑞溪镇',520324,4),(520324102,'和溪镇',520324,4),(520324103,'安场镇',520324,4),(520324104,'土坪镇',520324,4),(520324105,'流渡镇',520324,4),(520324106,'格林镇',520324,4),(520324107,'新州镇',520324,4),(520324108,'庙塘镇',520324,4),(520324109,'小雅镇',520324,4),(520324110,'中观镇',520324,4),(520324200,'碧峰乡',520324,4),(520324201,'乐俭乡',520324,4),(520324202,'谢坝仡佬族苗族乡',520324,4),(520324203,'市坪苗族仡佬族乡',520324,4),(520324204,'俭坪乡',520324,4),(520324205,'杨兴乡',520324,4),(520324206,'桴㯊乡',520324,4),(520324207,'班竹乡',520324,4),(520325100,'玉溪镇',520325,4),(520325101,'三江镇',520325,4),(520325102,'隆兴镇',520325,4),(520325103,'旧城镇',520325,4),(520325104,'忠信镇',520325,4),(520325105,'洛龙镇',520325,4),(520325106,'阳溪镇',520325,4),(520325107,'三桥镇',520325,4),(520325108,'大磏镇',520325,4),(520325109,'平模镇',520325,4),(520325200,'上坝土家族乡',520325,4),(520325201,'棕坪乡',520325,4),(520325202,'桃源乡',520325,4),(520325203,'河口乡',520325,4),(520326100,'都濡镇',520326,4),(520326101,'丰乐镇',520326,4),(520326102,'黄都镇',520326,4),(520326103,'涪洋镇',520326,4),(520326104,'镇南镇',520326,4),(520326105,'砚山镇',520326,4),(520326106,'浞水镇',520326,4),(520326107,'茅天镇',520326,4),(520326108,'柏村镇',520326,4),(520326109,'大坪镇',520326,4),(520326200,'泥高乡',520326,4),(520326201,'分水乡',520326,4),(520326202,'蕉坝乡',520326,4),(520326203,'红丝乡',520326,4),(520326204,'石朝乡',520326,4),(520327100,'龙泉镇',520327,4),(520327101,'进化镇',520327,4),(520327102,'琊川镇',520327,4),(520327103,'蜂岩镇',520327,4),(520327104,'永和镇',520327,4),(520327105,'花坪镇',520327,4),(520327106,'绥阳镇',520327,4),(520327107,'土溪镇',520327,4),(520327108,'永安镇',520327,4),(520327200,'何坝乡',520327,4),(520327201,'天桥乡',520327,4),(520327202,'王寨乡',520327,4),(520327203,'石径乡',520327,4),(520327204,'新建乡',520327,4),(520328001,'茶城街道',520328,4),(520328002,'湄江街道',520328,4),(520328003,'桃花江街道',520328,4),(520328101,'永兴镇',520328,4),(520328102,'复兴镇',520328,4),(520328103,'马山镇',520328,4),(520328104,'鱼泉镇',520328,4),(520328105,'黄家坝镇',520328,4),(520328106,'高台镇',520328,4),(520328107,'茅坪镇',520328,4),(520328108,'兴隆镇',520328,4),(520328109,'新南镇',520328,4),(520328110,'石莲镇',520328,4),(520328200,'西河乡',520328,4),(520328201,'洗马乡',520328,4),(520328204,'抄乐乡',520328,4),(520328205,'天城乡',520328,4),(520329100,'白泥镇',520329,4),(520329101,'小腮镇',520329,4),(520329102,'龙溪镇',520329,4),(520329103,'构皮滩镇',520329,4),(520329104,'大乌江镇',520329,4),(520329105,'敖溪镇',520329,4),(520329106,'龙家镇',520329,4),(520329107,'松烟镇',520329,4),(520329108,'关兴镇',520329,4),(520329200,'花山苗族乡',520329,4),(520330100,'东皇镇',520330,4),(520330101,'土城镇',520330,4),(520330102,'同民镇',520330,4),(520330103,'醒民镇',520330,4),(520330104,'隆兴镇',520330,4),(520330105,'习酒镇',520330,4),(520330106,'回龙镇',520330,4),(520330107,'桑木镇',520330,4),(520330108,'永安镇',520330,4),(520330109,'良村镇',520330,4),(520330110,'温水镇',520330,4),(520330111,'仙源镇',520330,4),(520330112,'官店镇',520330,4),(520330113,'寨坝镇',520330,4),(520330200,'民化乡',520330,4),(520330201,'二郎乡',520330,4),(520330202,'二里乡',520330,4),(520330203,'三岔河乡',520330,4),(520330204,'大坡乡',520330,4),(520330205,'双龙乡',520330,4),(520330206,'桃林乡',520330,4),(520330207,'坭坝乡',520330,4),(520330208,'程寨乡',520330,4),(520381001,'市中街道',520381,4),(520381002,'文华街道',520381,4),(520381003,'金华街道',520381,4),(520381100,'天台镇',520381,4),(520381101,'复兴镇',520381,4),(520381102,'大同镇',520381,4),(520381103,'旺隆镇',520381,4),(520381104,'葫市镇',520381,4),(520381105,'元厚镇',520381,4),(520381106,'官渡镇',520381,4),(520381107,'长期镇',520381,4),(520381108,'长沙镇',520381,4),(520381200,'两河口乡',520381,4),(520381201,'丙安乡',520381,4),(520381202,'宝源乡',520381,4),(520381203,'石堡乡',520381,4),(520381204,'白云乡',520381,4),(520382001,'盐津街道',520382,4),(520382002,'中枢街道',520382,4),(520382003,'苍龙街道',520382,4),(520382100,'茅台镇',520382,4),(520382101,'坛厂镇',520382,4),(520382102,'长岗镇',520382,4),(520382103,'鲁班镇',520382,4),(520382104,'五马镇',520382,4),(520382105,'茅坝镇',520382,4),(520382106,'九仓镇',520382,4),(520382107,'喜头镇',520382,4),(520382108,'大坝镇',520382,4),(520382109,'三合镇',520382,4),(520382110,'合马镇',520382,4),(520382111,'二合镇',520382,4),(520382200,'龙井乡',520382,4),(520382201,'后山苗族布依族乡',520382,4),(520382202,'学孔乡',520382,4),(520382203,'高大坪乡',520382,4),(520382204,'火石岗乡',520382,4),(520382205,'沙滩乡',520382,4),(520402001,'南街街道',520402,4),(520402002,'东街街道',520402,4),(520402003,'西街街道',520402,4),(520402004,'北街街道',520402,4),(520402005,'东关街道',520402,4),(520402006,'华西街道',520402,4),(520402007,'西航街道',520402,4),(520402100,'宋旗镇',520402,4),(520402101,'幺铺镇',520402,4),(520402102,'宁谷镇',520402,4),(520402103,'龙宫镇',520402,4),(520402104,'双堡镇',520402,4),(520402105,'大西桥镇',520402,4),(520402106,'七眼桥镇',520402,4),(520402107,'蔡官镇',520402,4),(520402108,'轿子山镇',520402,4),(520402109,'旧州镇',520402,4),(520402200,'新场布依族苗族乡',520402,4),(520402201,'岩腊苗族布依族乡',520402,4),(520402202,'鸡场布依族苗族乡',520402,4),(520402203,'杨武布依族苗族乡',520402,4),(520402204,'东屯乡',520402,4),(520402205,'黄腊布依族苗族乡',520402,4),(520402206,'刘官乡',520402,4),(520421001,'安平街道',520421,4),(520421002,'鼓楼街道',520421,4),(520421101,'白云镇',520421,4),(520421102,'高峰镇',520421,4),(520421103,'天龙镇',520421,4),(520421104,'夏云镇',520421,4),(520421105,'马场镇',520421,4),(520421106,'乐平镇',520421,4),(520421107,'齐伯镇',520421,4),(520421202,'十字回族苗族乡',520421,4),(520421203,'羊昌布依族苗族乡',520421,4),(520422100,'城关镇',520422,4),(520422101,'马官镇',520422,4),(520422102,'化处镇',520422,4),(520422103,'马场镇',520422,4),(520422104,'白岩镇',520422,4),(520422200,'龙场乡',520422,4),(520422201,'鸡场坡乡',520422,4),(520422202,'坪上苗族彝族布依族乡',520422,4),(520422203,'补郎苗族乡',520422,4),(520422204,'猴场苗族仡佬族乡',520422,4),(520422205,'猫洞苗族仡佬族乡',520422,4),(520423100,'城关镇',520423,4),(520423101,'丁旗镇',520423,4),(520423102,'黄果树镇',520423,4),(520423103,'江龙镇',520423,4),(520423104,'大山镇',520423,4),(520423105,'马厂镇',520423,4),(520423106,'六马镇',520423,4),(520423107,'良田镇',520423,4),(520423201,'扁担山乡',520423,4),(520423202,'募役乡',520423,4),(520423204,'沙子乡',520423,4),(520423205,'朵卜陇乡',520423,4),(520423206,'革利乡',520423,4),(520423207,'本寨乡',520423,4),(520423210,'简嘎乡',520423,4),(520423211,'打帮乡',520423,4),(520424001,'关索街道',520424,4),(520424002,'顶云街道',520424,4),(520424101,'花江镇',520424,4),(520424102,'永宁镇',520424,4),(520424103,'岗乌镇',520424,4),(520424104,'上关镇',520424,4),(520424105,'坡贡镇',520424,4),(520424106,'断桥镇',520424,4),(520424107,'白水镇',520424,4),(520424108,'新铺镇',520424,4),(520424109,'沙营镇',520424,4),(520424200,'八德乡',520424,4),(520424202,'普利乡',520424,4),(520424203,'板贵乡',520424,4),(520425100,'松山镇',520425,4),(520425101,'水塘镇',520425,4),(520425102,'猴场镇',520425,4),(520425103,'猫营镇',520425,4),(520425104,'板当镇',520425,4),(520425200,'白石岩乡',520425,4),(520425201,'宗地乡',520425,4),(520425202,'大营乡',520425,4),(520425203,'四大寨乡',520425,4),(520425204,'坝羊乡',520425,4),(520425205,'火花乡',520425,4),(520425206,'达帮乡',520425,4),(522301001,'黄草街道',522301,4),(522301002,'兴泰街道',522301,4),(522301003,'桔山街道',522301,4),(522301004,'丰都街道',522301,4),(522301005,'坪东街道',522301,4),(522301006,'木贾街道',522301,4),(522301007,'下五屯街道',522301,4),(522301008,'万峰林街道',522301,4),(522301100,'敬南镇',522301,4),(522301101,'泥凼镇',522301,4),(522301102,'南盘江镇',522301,4),(522301103,'捧乍镇',522301,4),(522301104,'鲁布格镇',522301,4),(522301105,'三江口镇',522301,4),(522301106,'乌沙镇',522301,4),(522301107,'白碗窑镇',522301,4),(522301108,'马岭镇',522301,4),(522301109,'威舍镇',522301,4),(522301110,'清水河镇',522301,4),(522301111,'顶效镇',522301,4),(522301112,'郑屯镇',522301,4),(522301113,'万屯镇',522301,4),(522301114,'鲁屯镇',522301,4),(522301115,'仓更镇',522301,4),(522301116,'七舍镇',522301,4),(522301200,'则戎乡',522301,4),(522301201,'沧江乡',522301,4),(522301202,'洛万乡',522301,4),(522301203,'猪场坪乡',522301,4),(522301204,'雄武乡',522301,4),(522322001,'东湖街道',522322,4),(522322002,'城南街道',522322,4),(522322003,'真武山街道',522322,4),(522322004,'城北街道',522322,4),(522322101,'屯脚镇',522322,4),(522322102,'巴铃镇',522322,4),(522322103,'百德镇',522322,4),(522322104,'雨樟镇',522322,4),(522322105,'潘家庄镇',522322,4),(522322106,'回龙镇',522322,4),(522322107,'下山镇',522322,4),(522322108,'新龙场镇',522322,4),(522322200,'大山乡',522322,4),(522322201,'新马场乡',522322,4),(522322203,'李关乡',522322,4),(522322204,'田湾乡',522322,4),(522322205,'鲁础营乡',522322,4),(522322206,'民建乡',522322,4),(522323100,'盘水镇',522323,4),(522323101,'龙吟镇',522323,4),(522323102,'罐子窑镇',522323,4),(522323103,'江西坡镇',522323,4),(522323104,'三板桥镇',522323,4),(522323105,'地瓜镇',522323,4),(522323106,'青山镇',522323,4),(522323107,'楼下镇',522323,4),(522323200,'白沙乡',522323,4),(522323201,'高棉乡',522323,4),(522323202,'窝沿乡',522323,4),(522323203,'罗汉乡',522323,4),(522323204,'新店乡',522323,4),(522323205,'雪浦乡',522323,4),(522324100,'莲城镇',522324,4),(522324101,'沙子镇',522324,4),(522324102,'碧痕镇',522324,4),(522324103,'大厂镇',522324,4),(522324104,'鸡场镇',522324,4),(522324105,'花贡镇',522324,4),(522324106,'中营镇',522324,4),(522324107,'光照镇',522324,4),(522324200,'长流乡',522324,4),(522324201,'大田乡',522324,4),(522324202,'马场乡',522324,4),(522324204,'紫马乡',522324,4),(522324205,'安谷乡',522324,4),(522324206,'三宝彝族乡',522324,4),(522325100,'珉谷镇',522325,4),(522325101,'龙场镇',522325,4),(522325102,'者相镇',522325,4),(522325103,'北盘江镇',522325,4),(522325104,'白层镇',522325,4),(522325105,'鲁贡镇',522325,4),(522325200,'连环乡',522325,4),(522325201,'挽澜乡',522325,4),(522325202,'小屯乡',522325,4),(522325203,'长田乡',522325,4),(522325204,'平街乡',522325,4),(522325205,'鲁容乡',522325,4),(522325206,'沙坪乡',522325,4),(522326001,'王母街道',522326,4),(522326002,'平洞街道',522326,4),(522326101,'乐元镇',522326,4),(522326102,'打易镇',522326,4),(522326103,'乐旺镇',522326,4),(522326104,'桑郎镇',522326,4),(522326105,'纳夜镇',522326,4),(522326106,'新屯镇',522326,4),(522326107,'石屯镇',522326,4),(522326108,'蔗香镇',522326,4),(522326109,'郊纳镇',522326,4),(522326110,'大观镇',522326,4),(522326200,'坎边乡',522326,4),(522326201,'岜饶乡',522326,4),(522326205,'昂武乡',522326,4),(522326206,'油迈乡',522326,4),(522326207,'麻山乡',522326,4),(522326208,'打尖乡',522326,4),(522327100,'者楼镇',522327,4),(522327101,'坡妹镇',522327,4),(522327102,'冗渡镇',522327,4),(522327103,'丫他镇',522327,4),(522327104,'巧马镇',522327,4),(522327105,'秧坝镇',522327,4),(522327106,'双江镇',522327,4),(522327107,'岩架镇',522327,4),(522327108,'八渡镇',522327,4),(522327200,'庆坪乡',522327,4),(522327201,'达央乡',522327,4),(522327202,'威旁乡',522327,4),(522327203,'弼佑乡',522327,4),(522327204,'百口乡',522327,4),(522328001,'招堤办事处',522328,4),(522328002,'栖凤办事处',522328,4),(522328101,'龙广镇',522328,4),(522328102,'德卧镇',522328,4),(522328103,'万峰湖镇',522328,4),(522328104,'木咱镇',522328,4),(522328105,'洒雨镇',522328,4),(522328106,'普坪镇',522328,4),(522328107,'龙山镇',522328,4),(522328108,'戈塘镇',522328,4),(522328109,'兴隆镇',522328,4),(522328110,'新桥镇',522328,4),(522328200,'海子乡',522328,4),(522328201,'笃山乡',522328,4),(522328202,'平乐乡',522328,4),(522328203,'钱相乡',522328,4),(522328204,'坡脚乡',522328,4),(522601001,'城西街道',522601,4),(522601002,'大十字街道',522601,4),(522601003,'西门街道',522601,4),(522601004,'洗马河街道',522601,4),(522601005,'湾溪街道',522601,4),(522601006,'鸭塘街道',522601,4),(522601007,'开怀街道',522601,4),(522601100,'三棵树镇',522601,4),(522601101,'舟溪镇',522601,4),(522601103,'旁海镇',522601,4),(522601104,'湾水镇',522601,4),(522601105,'炉山镇',522601,4),(522601106,'万潮镇',522601,4),(522601107,'龙场镇',522601,4),(522601200,'凯棠乡',522601,4),(522601201,'大风洞乡',522601,4),(522622100,'新州镇',522622,4),(522622101,'旧州镇',522622,4),(522622102,'重安镇',522622,4),(522622103,'谷陇镇',522622,4),(522622104,'平溪镇',522622,4),(522622105,'野洞河镇',522622,4),(522622106,'浪洞镇',522622,4),(522622107,'上塘镇',522622,4),(522622203,'一碗水乡',522622,4),(522622204,'纸房乡',522622,4),(522622206,'翁坪乡',522622,4),(522623100,'城关镇',522623,4),(522623101,'杨柳塘镇',522623,4),(522623102,'双井镇',522623,4),(522623103,'牛大场镇',522623,4),(522623200,'白垛乡',522623,4),(522623201,'甘溪乡',522623,4),(522623202,'马号乡',522623,4),(522623203,'马溪乡',522623,4),(522624100,'八弓镇',522624,4),(522624101,'台烈镇',522624,4),(522624102,'瓦寨镇',522624,4),(522624103,'桐林镇',522624,4),(522624104,'雪洞镇',522624,4),(522624200,'滚马乡',522624,4),(522624201,'长吉乡',522624,4),(522624202,'款场乡',522624,4),(522624203,'良上乡',522624,4),(522625100,'舞阳镇',522625,4),(522625101,'蕉溪镇',522625,4),(522625102,'青溪镇',522625,4),(522625103,'羊坪镇',522625,4),(522625104,'羊场镇',522625,4),(522625105,'都坪镇',522625,4),(522625106,'金堡镇',522625,4),(522625107,'江古镇',522625,4),(522625201,'涌溪乡',522625,4),(522625203,'报京乡',522625,4),(522625204,'大地乡',522625,4),(522625205,'尚寨乡',522625,4),(522626100,'思旸镇',522626,4),(522626101,'水尾镇',522626,4),(522626102,'天马镇',522626,4),(522626103,'龙田镇',522626,4),(522626104,'大有镇',522626,4),(522626105,'注溪镇',522626,4),(522626106,'凯本镇',522626,4),(522626202,'天星乡',522626,4),(522626203,'羊桥乡',522626,4),(522626205,'平庄乡',522626,4),(522626206,'客楼乡',522626,4),(522627100,'凤城镇',522627,4),(522627101,'邦洞镇',522627,4),(522627102,'坪地镇',522627,4),(522627103,'兰田镇',522627,4),(522627104,'瓮洞镇',522627,4),(522627105,'高酿镇',522627,4),(522627106,'石洞镇',522627,4),(522627107,'远口镇',522627,4),(522627108,'坌处镇',522627,4),(522627109,'白市镇',522627,4),(522627200,'社学乡',522627,4),(522627201,'渡马乡',522627,4),(522627202,'注溪乡',522627,4),(522627203,'地湖乡',522627,4),(522627204,'竹林乡',522627,4),(522627205,'江东乡',522627,4),(522628100,'三江镇',522628,4),(522628101,'茅坪镇',522628,4),(522628102,'敦寨镇',522628,4),(522628103,'启蒙镇',522628,4),(522628104,'平秋镇',522628,4),(522628105,'铜鼓镇',522628,4),(522628106,'平略镇',522628,4),(522628200,'大同乡',522628,4),(522628201,'新化乡',522628,4),(522628202,'隆里乡',522628,4),(522628203,'钟灵乡',522628,4),(522628204,'偶里乡',522628,4),(522628205,'固本乡',522628,4),(522628206,'河口乡',522628,4),(522628207,'彦洞乡',522628,4),(522629100,'柳川镇',522629,4),(522629101,'岑松镇',522629,4),(522629102,'南加镇',522629,4),(522629103,'南明镇',522629,4),(522629104,'革东镇',522629,4),(522629105,'太拥镇',522629,4),(522629106,'磻溪镇',522629,4),(522629200,'久仰乡',522629,4),(522629202,'南哨乡',522629,4),(522629203,'南寨乡',522629,4),(522629205,'敏洞乡',522629,4),(522629206,'观么乡',522629,4),(522630100,'台拱镇',522630,4),(522630101,'施洞镇',522630,4),(522630200,'南宫乡',522630,4),(522630201,'排羊乡',522630,4),(522630202,'台盘乡',522630,4),(522630203,'革一乡',522630,4),(522630204,'老屯乡',522630,4),(522630205,'方召乡',522630,4),(522631100,'德凤镇',522631,4),(522631101,'高屯镇',522631,4),(522631102,'中潮镇',522631,4),(522631103,'孟彦镇',522631,4),(522631104,'敖市镇',522631,4),(522631105,'九潮镇',522631,4),(522631106,'岩洞镇',522631,4),(522631107,'水口镇',522631,4),(522631108,'洪州镇',522631,4),(522631109,'尚重镇',522631,4),(522631110,'双江镇',522631,4),(522631111,'肇兴镇',522631,4),(522631112,'龙额镇',522631,4),(522631200,'顺化乡',522631,4),(522631201,'雷洞乡',522631,4),(522631202,'永从乡',522631,4),(522631203,'罗里乡',522631,4),(522631204,'茅贡乡',522631,4),(522631205,'坝寨乡',522631,4),(522631206,'口江乡',522631,4),(522631210,'地坪乡',522631,4),(522631211,'德顺乡',522631,4),(522631212,'大稼乡',522631,4),(522631213,'平寨乡',522631,4),(522631214,'德化乡',522631,4),(522632100,'古州镇',522632,4),(522632101,'忠诚镇',522632,4),(522632102,'寨蒿镇',522632,4),(522632103,'平永镇',522632,4),(522632104,'乐里镇',522632,4),(522632105,'朗洞镇',522632,4),(522632201,'栽麻乡',522632,4),(522632202,'崇义乡',522632,4),(522632203,'平江乡',522632,4),(522632204,'三江乡',522632,4),(522632205,'仁里乡',522632,4),(522632206,'塔石乡',522632,4),(522632207,'八开乡',522632,4),(522632208,'定威乡',522632,4),(522632209,'兴华乡',522632,4),(522632210,'计划乡',522632,4),(522632211,'水尾乡',522632,4),(522632212,'平阳乡',522632,4),(522632213,'两汪乡',522632,4),(522633100,'丙妹镇',522633,4),(522633101,'贯洞镇',522633,4),(522633102,'洛香镇',522633,4),(522633103,'下江镇',522633,4),(522633104,'宰便镇',522633,4),(522633105,'西山镇',522633,4),(522633106,'停洞镇',522633,4),(522633107,'往洞镇',522633,4),(522633200,'高增乡',522633,4),(522633201,'谷坪乡',522633,4),(522633202,'雍里乡',522633,4),(522633203,'庆云乡',522633,4),(522633204,'刚边乡',522633,4),(522633205,'加榜乡',522633,4),(522633206,'秀塘乡',522633,4),(522633207,'斗里乡',522633,4),(522633208,'翠里乡',522633,4),(522633210,'东朗乡',522633,4),(522633211,'加鸠乡',522633,4),(522633212,'加勉乡',522633,4),(522633213,'光辉乡',522633,4),(522634100,'丹江镇',522634,4),(522634101,'西江镇',522634,4),(522634102,'永乐镇',522634,4),(522634103,'郎德镇',522634,4),(522634104,'大塘镇',522634,4),(522634200,'望丰乡',522634,4),(522634203,'达地水族乡',522634,4),(522634204,'方祥乡',522634,4),(522635100,'杏山镇',522635,4),(522635101,'谷硐镇',522635,4),(522635102,'下司镇',522635,4),(522635103,'宣威镇',522635,4),(522635104,'碧波镇',522635,4),(522635105,'龙山镇',522635,4),(522635106,'贤昌镇',522635,4),(522635203,'坝芒布依族乡',522635,4),(522636100,'龙泉镇',522636,4),(522636101,'兴仁镇',522636,4),(522636102,'排调镇',522636,4),(522636103,'扬武镇',522636,4),(522636202,'雅灰乡',522636,4),(522636203,'南皋乡',522636,4),(522701001,'广惠街道',522701,4),(522701002,'文峰街道',522701,4),(522701004,'小围寨办事处',522701,4),(522701005,'沙包堡办事处',522701,4),(522701100,'杨柳街镇',522701,4),(522701101,'甘塘镇',522701,4),(522701102,'洛邦镇',522701,4),(522701103,'坝固镇',522701,4),(522701104,'大坪镇',522701,4),(522701105,'王司镇',522701,4),(522701106,'墨冲镇',522701,4),(522701107,'平浪镇',522701,4),(522701108,'凯口镇',522701,4),(522701109,'江洲镇',522701,4),(522701200,'奉合水族乡',522701,4),(522701201,'阳和水族乡',522701,4),(522701202,'基场水族乡',522701,4),(522701203,'良亩乡',522701,4),(522701204,'河阳乡',522701,4),(522701205,'沙寨乡',522701,4),(522701206,'石龙乡',522701,4),(522701207,'摆忙乡',522701,4),(522702001,'金山办事处',522702,4),(522702002,'马场坪办事处',522702,4),(522702100,'城厢镇',522702,4),(522702101,'黄丝镇',522702,4),(522702102,'凤山镇',522702,4),(522702103,'陆坪镇',522702,4),(522702104,'地松镇',522702,4),(522702105,'龙昌镇',522702,4),(522702106,'牛场镇',522702,4),(522702107,'道坪镇',522702,4),(522702108,'高坪镇',522702,4),(522702200,'兴隆乡',522702,4),(522702201,'藜山乡',522702,4),(522702202,'岔河乡',522702,4),(522702203,'仙桥乡',522702,4),(522702204,'高石乡',522702,4),(522702205,'谷汪乡',522702,4),(522722001,'玉屏街道',522722,4),(522722101,'朝阳镇',522722,4),(522722102,'茂兰镇',522722,4),(522722103,'立化镇',522722,4),(522722104,'甲良镇',522722,4),(522722105,'佳荣镇',522722,4),(522722106,'播尧镇',522722,4),(522722107,'小七孔镇',522722,4),(522722200,'永康乡',522722,4),(522722201,'水尧乡',522722,4),(522722202,'水利乡',522722,4),(522722203,'瑶山乡',522722,4),(522722204,'捞村乡',522722,4),(522722205,'翁昂乡',522722,4),(522722207,'瑶麓乡',522722,4),(522722208,'洞塘乡',522722,4),(522722209,'方村乡',522722,4),(522723100,'城关镇',522723,4),(522723101,'德新镇',522723,4),(522723102,'新巴镇',522723,4),(522723103,'盘江镇',522723,4),(522723104,'沿山镇',522723,4),(522723105,'旧治镇',522723,4),(522723106,'昌明镇',522723,4),(522723107,'云雾镇',522723,4),(522723200,'新铺乡',522723,4),(522723201,'落北河乡',522723,4),(522723202,'马场河乡',522723,4),(522723203,'定东乡',522723,4),(522723204,'定南乡',522723,4),(522723205,'巩固乡',522723,4),(522723206,'都六乡',522723,4),(522723207,'岩下乡',522723,4),(522723208,'猴场堡乡',522723,4),(522723209,'抱管乡',522723,4),(522723210,'铁厂乡',522723,4),(522723211,'窑上乡',522723,4),(522725001,'雍阳街道',522725,4),(522725002,'瓮水街道',522725,4),(522725101,'平定营镇',522725,4),(522725103,'中坪镇',522725,4),(522725104,'建中镇',522725,4),(522725105,'永和镇',522725,4),(522725106,'珠藏镇',522725,4),(522725107,'玉山镇',522725,4),(522725108,'天文镇',522725,4),(522725109,'银盏镇',522725,4),(522725110,'猴场镇',522725,4),(522725111,'江界河镇',522725,4),(522725205,'岚关乡',522725,4),(522726108,'百泉镇',522726,4),(522726109,'影山镇',522726,4),(522726110,'基长镇',522726,4),(522726111,'下司镇',522726,4),(522726112,'麻尾镇',522726,4),(522726113,'麻万镇',522726,4),(522726114,'上司镇',522726,4),(522726115,'玉水镇',522726,4),(522727100,'平湖镇',522727,4),(522727101,'牙舟镇',522727,4),(522727102,'通州镇',522727,4),(522727103,'大塘镇',522727,4),(522727104,'克度镇',522727,4),(522727105,'塘边镇',522727,4),(522727106,'摆茹镇',522727,4),(522727107,'者密镇',522727,4),(522727108,'四寨镇',522727,4),(522727109,'掌布镇',522727,4),(522727200,'苗二河乡',522727,4),(522727201,'卡蒲毛南族乡',522727,4),(522727202,'白龙乡',522727,4),(522727203,'甘寨乡',522727,4),(522727204,'卡罗乡',522727,4),(522727205,'谷硐乡',522727,4),(522727206,'鼠场乡',522727,4),(522727207,'新塘乡',522727,4),(522727209,'西凉乡',522727,4),(522728100,'龙坪镇',522728,4),(522728101,'边阳镇',522728,4),(522728102,'逢亭镇',522728,4),(522728103,'沫阳镇',522728,4),(522728104,'茂井镇',522728,4),(522728105,'罗悃镇',522728,4),(522728106,'红水河镇',522728,4),(522728200,'板庚乡',522728,4),(522728201,'云干乡',522728,4),(522728202,'八总乡',522728,4),(522728203,'栗木乡',522728,4),(522728204,'罗沙乡',522728,4),(522728205,'交砚乡',522728,4),(522728206,'董王乡',522728,4),(522728207,'木引乡',522728,4),(522728208,'纳坪乡',522728,4),(522728209,'董当乡',522728,4),(522728210,'董架乡',522728,4),(522728211,'平岩乡',522728,4),(522728212,'凤亭乡',522728,4),(522728213,'大亭乡',522728,4),(522728214,'班仁乡',522728,4),(522728215,'罗苏乡',522728,4),(522728216,'罗暮乡',522728,4),(522728217,'沟亭乡',522728,4),(522728218,'罗妥乡',522728,4),(522729100,'长寨镇',522729,4),(522729101,'广顺镇',522729,4),(522729102,'威远镇',522729,4),(522729103,'摆所镇',522729,4),(522729104,'代化镇',522729,4),(522729105,'白云山镇',522729,4),(522729106,'鼓扬镇',522729,4),(522729200,'马路乡',522729,4),(522729201,'凯佐乡',522729,4),(522729202,'摆塘乡',522729,4),(522729203,'种获乡',522729,4),(522729204,'新寨乡',522729,4),(522729205,'营盘乡',522729,4),(522729206,'中坝乡',522729,4),(522729207,'睦化乡',522729,4),(522729208,'交麻乡',522729,4),(522729209,'敦操乡',522729,4),(522730100,'龙山镇',522730,4),(522730101,'三元镇',522730,4),(522730102,'醒狮镇',522730,4),(522730103,'谷脚镇',522730,4),(522730104,'羊场镇',522730,4),(522730105,'洗马镇',522730,4),(522730200,'草原乡',522730,4),(522730201,'麻芝乡',522730,4),(522730202,'水场乡',522730,4),(522730203,'湾寨乡',522730,4),(522730204,'摆省乡',522730,4),(522730205,'巴江乡',522730,4),(522730206,'谷龙乡',522730,4),(522730207,'哪嗙乡',522730,4),(522731100,'和平镇',522731,4),(522731101,'高镇镇',522731,4),(522731102,'三都镇',522731,4),(522731103,'摆金镇',522731,4),(522731104,'雅水镇',522731,4),(522731105,'断杉镇',522731,4),(522731106,'芦山镇',522731,4),(522731107,'王佑镇',522731,4),(522731200,'长田乡',522731,4),(522731201,'摆榜乡',522731,4),(522731202,'斗底乡',522731,4),(522731203,'甲烈乡',522731,4),(522731204,'岗度乡',522731,4),(522731205,'宁旺乡',522731,4),(522731206,'鸭绒乡',522731,4),(522731207,'太阳乡',522731,4),(522731208,'羡塘乡',522731,4),(522731209,'甲戎乡',522731,4),(522731210,'抵季乡',522731,4),(522731211,'大龙乡',522731,4),(522731212,'大坝乡',522731,4),(522731213,'抵麻乡',522731,4),(522731214,'长安乡',522731,4),(522731215,'打引乡',522731,4),(522731216,'好花红乡',522731,4),(522732100,'三合镇',522732,4),(522732101,'大河镇',522732,4),(522732102,'合江镇',522732,4),(522732103,'丰乐镇',522732,4),(522732104,'普安镇',522732,4),(522732105,'都江镇',522732,4),(522732106,'中和镇',522732,4),(522732107,'周覃镇',522732,4),(522732108,'廷牌镇',522732,4),(522732109,'九阡镇',522732,4),(522732200,'交梨乡',522732,4),(522732201,'拉揽乡',522732,4),(522732202,'打鱼乡',522732,4),(522732203,'坝街乡',522732,4),(522732204,'羊福乡',522732,4),(522732205,'巫不乡',522732,4),(522732206,'水龙乡',522732,4),(522732207,'塘州乡',522732,4),(522732208,'三洞乡',522732,4),(522732209,'恒丰乡',522732,4),(522732210,'扬拱乡',522732,4),(530102001,'华山街道',530102,4),(530102002,'护国街道',530102,4),(530102003,'大观街道',530102,4),(530102004,'龙翔街道',530102,4),(530102005,'丰宁街道',530102,4),(530102006,'莲华街道',530102,4),(530102007,'红云街道',530102,4),(530102008,'黑林铺街道',530102,4),(530102009,'普吉街道',530102,4),(530102010,'西翥街道',530102,4),(530102401,'昆明国家高新技术产业开发区',530102,4),(530103001,'拓东街道',530103,4),(530103002,'鼓楼街道',530103,4),(530103003,'东华街道',530103,4),(530103004,'联盟街道',530103,4),(530103005,'金辰街道',530103,4),(530103006,'青云街道',530103,4),(530103007,'龙泉街道',530103,4),(530103008,'茨坝街道',530103,4),(530103009,'双龙街道',530103,4),(530103010,'松华街道',530103,4),(530103011,'盘龙区滇源街道',530103,4),(530103012,'盘龙区阿子营街道',530103,4),(530111001,'关上街道',530111,4),(530111002,'太和街道',530111,4),(530111003,'吴井街道',530111,4),(530111004,'金马街道',530111,4),(530111005,'小板桥街道',530111,4),(530111006,'官渡街道',530111,4),(530111007,'矣六街道',530111,4),(530111008,'六甲街道',530111,4),(530111009,'大板桥街道',530111,4),(530111010,'阿拉街道',530111,4),(530111402,'昆明经济技术开发区',530111,4),(530112001,'西苑街道',530112,4),(530112002,'马街街道',530112,4),(530112003,'金碧街道',530112,4),(530112004,'永昌街道',530112,4),(530112005,'前卫街道',530112,4),(530112006,'福海街道',530112,4),(530112007,'棕树营街道',530112,4),(530112008,'碧鸡街道',530112,4),(530112009,'海口街道',530112,4),(530112010,'团结街道',530112,4),(530112403,'昆明滇池国家旅游度假区',530112,4),(530113001,'铜都街道',530113,4),(530113102,'汤丹镇',530113,4),(530113103,'因民镇',530113,4),(530113104,'阿旺镇',530113,4),(530113105,'乌龙镇',530113,4),(530113106,'红土地镇',530113,4),(530113107,'拖布卡镇',530113,4),(530113201,'舍块乡',530113,4),(530122001,'昆阳街道',530122,4),(530122102,'晋城镇',530122,4),(530122103,'二街镇',530122,4),(530122105,'上蒜镇',530122,4),(530122106,'六街镇',530122,4),(530122201,'双河彝族乡',530122,4),(530122202,'夕阳彝族乡',530122,4),(530124001,'永定街道',530124,4),(530124103,'罗免镇',530124,4),(530124104,'赤鹫镇',530124,4),(530124105,'东村镇',530124,4),(530124106,'款庄镇',530124,4),(530124107,'散旦镇',530124,4),(530125001,'匡远街道',530125,4),(530125002,'汤池街道',530125,4),(530125102,'北古城镇',530125,4),(530125103,'狗街镇',530125,4),(530125105,'竹山镇',530125,4),(530125106,'马街镇',530125,4),(530125201,'耿家营乡',530125,4),(530125202,'九乡乡',530125,4),(530125404,'昆明阳宗海风景名胜区',530125,4),(530126001,'鹿阜街道',530126,4),(530126105,'西街口镇',530126,4),(530126106,'长湖镇',530126,4),(530126107,'圭山镇',530126,4),(530126201,'大可乡',530126,4),(530127001,'嵩阳街道',530127,4),(530127102,'小街镇',530127,4),(530127103,'杨林镇',530127,4),(530127104,'牛栏江镇',530127,4),(530128001,'屏山街道',530128,4),(530128102,'撒营盘镇',530128,4),(530128103,'转龙镇',530128,4),(530128104,'茂山镇',530128,4),(530128105,'团街镇',530128,4),(530128106,'中屏镇',530128,4),(530128107,'皎平渡镇',530128,4),(530128108,'乌东德镇',530128,4),(530128109,'翠华镇',530128,4),(530128110,'九龙镇',530128,4),(530128204,'云龙乡',530128,4),(530128207,'汤郎乡',530128,4),(530128208,'马鹿塘乡',530128,4),(530128211,'则黑乡',530128,4),(530128212,'乌蒙乡',530128,4),(530128213,'雪山乡',530128,4),(530128401,'禄劝工业园区管理委员会',530128,4),(530129001,'仁德街道',530129,4),(530129103,'羊街镇',530129,4),(530129104,'柯渡镇',530129,4),(530129105,'倘甸镇',530129,4),(530129106,'功山镇',530129,4),(530129107,'河口镇',530129,4),(530129108,'七星镇',530129,4),(530129109,'先锋镇',530129,4),(530129110,'鸡街镇',530129,4),(530129111,'凤合镇',530129,4),(530129205,'六哨乡',530129,4),(530129208,'联合乡',530129,4),(530129209,'金源乡',530129,4),(530129210,'甸沙乡',530129,4),(530129405,'昆明倘甸产业园区轿子山旅游开发区',530129,4),(530181001,'连然街道',530181,4),(530181002,'金方街道',530181,4),(530181003,'八街街道',530181,4),(530181004,'温泉街道',530181,4),(530181005,'青龙街道',530181,4),(530181006,'禄脿街道',530181,4),(530181007,'草铺街道',530181,4),(530181008,'太平新城街道',530181,4),(530181009,'县街街道',530181,4),(530302001,'南宁街道',530302,4),(530302002,'建宁街道',530302,4),(530302003,'白石江街道',530302,4),(530302004,'寥廓街道',530302,4),(530302005,'西城街道',530302,4),(530302101,'三宝镇',530302,4),(530302102,'越州镇',530302,4),(530302103,'东山镇',530302,4),(530302201,'珠街乡',530302,4),(530302202,'沿江乡',530302,4),(530302203,'茨营乡',530302,4),(530321101,'通泉镇',530321,4),(530321102,'旧县镇',530321,4),(530321103,'马过河镇',530321,4),(530321104,'王家庄镇',530321,4),(530321105,'纳章镇',530321,4),(530321201,'马鸣乡',530321,4),(530321202,'大庄乡',530321,4),(530321203,'月望乡',530321,4),(530322101,'中枢镇',530322,4),(530322102,'板桥镇',530322,4),(530322103,'三岔河镇',530322,4),(530322104,'马街镇',530322,4),(530322105,'召夸镇',530322,4),(530322106,'大莫古镇',530322,4),(530322107,'芳华镇',530322,4),(530322108,'小百户镇',530322,4),(530322201,'活水乡',530322,4),(530322202,'龙海乡',530322,4),(530322501,'陆良华侨管理区（镇）',530322,4),(530323101,'丹凤镇',530323,4),(530323102,'雄壁镇',530323,4),(530323103,'葵山镇',530323,4),(530323104,'彩云镇',530323,4),(530323105,'竹基镇',530323,4),(530323202,'龙庆乡',530323,4),(530323203,'五龙乡',530323,4),(530323204,'高良乡',530323,4),(530324101,'罗雄镇',530324,4),(530324102,'板桥镇',530324,4),(530324103,'马街镇',530324,4),(530324104,'富乐镇',530324,4),(530324105,'九龙镇',530324,4),(530324106,'阿岗镇',530324,4),(530324201,'大水井乡',530324,4),(530324202,'鲁布革乡',530324,4),(530324203,'旧屋基乡',530324,4),(530324204,'钟山乡',530324,4),(530324205,'长底乡',530324,4),(530324206,'老厂乡',530324,4),(530325101,'中安镇',530325,4),(530325102,'营上镇',530325,4),(530325103,'黄泥河镇',530325,4),(530325104,'竹园镇',530325,4),(530325105,'后所镇',530325,4),(530325106,'大河镇',530325,4),(530325107,'墨红镇',530325,4),(530325108,'富村镇',530325,4),(530325109,'十八连山镇',530325,4),(530325110,'老厂镇',530325,4),(530325201,'古敢乡',530325,4),(530326101,'金钟镇',530326,4),(530326102,'娜姑镇',530326,4),(530326103,'迤车镇',530326,4),(530326104,'乐业镇',530326,4),(530326105,'矿山镇',530326,4),(530326106,'者海镇',530326,4),(530326107,'大井镇',530326,4),(530326108,'待补镇',530326,4),(530326201,'大海乡',530326,4),(530326202,'老厂乡',530326,4),(530326203,'五星乡',530326,4),(530326204,'大桥乡',530326,4),(530326205,'纸厂乡',530326,4),(530326206,'马路乡',530326,4),(530326207,'火红乡',530326,4),(530326208,'新街乡',530326,4),(530326209,'雨碌乡',530326,4),(530326210,'鲁纳乡',530326,4),(530326211,'上村乡',530326,4),(530326212,'驾车乡',530326,4),(530326213,'田坝乡',530326,4),(530328101,'西平镇',530328,4),(530328102,'白水镇',530328,4),(530328103,'盘江镇',530328,4),(530328201,'炎方乡',530328,4),(530328202,'播乐乡',530328,4),(530328203,'大坡乡',530328,4),(530328204,'菱角乡',530328,4),(530328205,'德泽乡',530328,4),(530381001,'宛水街道',530381,4),(530381002,'西宁街道',530381,4),(530381003,'双龙街道',530381,4),(530381004,'虹桥街道',530381,4),(530381101,'来宾镇',530381,4),(530381102,'格宜镇',530381,4),(530381103,'田坝镇',530381,4),(530381104,'羊场镇',530381,4),(530381105,'板桥镇',530381,4),(530381106,'倘塘镇',530381,4),(530381107,'落水镇',530381,4),(530381108,'务德镇',530381,4),(530381109,'海岱镇',530381,4),(530381110,'龙场镇',530381,4),(530381111,'龙潭镇',530381,4),(530381112,'热水镇',530381,4),(530381113,'宝山镇',530381,4),(530381114,'东山镇',530381,4),(530381201,'普立乡',530381,4),(530381202,'西泽乡',530381,4),(530381203,'得禄乡',530381,4),(530381204,'杨柳乡',530381,4),(530381205,'双河乡',530381,4),(530381206,'乐丰乡',530381,4),(530381207,'文兴乡',530381,4),(530381208,'阿都乡',530381,4),(530402001,'玉兴路街道',530402,4),(530402002,'凤凰路街道',530402,4),(530402003,'玉带路街道',530402,4),(530402004,'北城街道',530402,4),(530402005,'春和街道',530402,4),(530402006,'李棋街道',530402,4),(530402007,'大营街街道',530402,4),(530402008,'研和街道',530402,4),(530402009,'高仓街道',530402,4),(530402201,'小石桥乡',530402,4),(530402202,'洛河乡',530402,4),(530421001,'大街街道',530421,4),(530421101,'江城镇',530421,4),(530421102,'前卫镇',530421,4),(530421103,'九溪镇',530421,4),(530421104,'路居镇',530421,4),(530421201,'安化彝族乡',530421,4),(530421202,'雄关乡',530421,4),(530422001,'凤麓街道',530422,4),(530422002,'龙街街道',530422,4),(530422101,'右所镇',530422,4),(530422102,'阳宗镇',530422,4),(530422103,'海口镇',530422,4),(530422104,'九村镇',530422,4),(530423001,'秀山街道',530423,4),(530423002,'九龙街道',530423,4),(530423101,'杨广镇',530423,4),(530423102,'河西镇',530423,4),(530423103,'四街镇',530423,4),(530423104,'纳古镇',530423,4),(530423201,'里山乡',530423,4),(530423202,'高大乡',530423,4),(530423203,'兴蒙乡',530423,4),(530424001,'宁州街道',530424,4),(530424102,'盘溪镇',530424,4),(530424103,'华溪镇',530424,4),(530424104,'青龙镇',530424,4),(530424201,'通红甸乡',530424,4),(530425001,'龙泉街道',530425,4),(530425002,'六街街道',530425,4),(530425100,'绿汁镇',530425,4),(530425201,'浦贝彝族乡',530425,4),(530425202,'十街彝族乡',530425,4),(530425203,'铜厂彝族乡',530425,4),(530425204,'小街乡',530425,4),(530426001,'双江街道',530426,4),(530426002,'小街街道',530426,4),(530426103,'甸中镇',530426,4),(530426104,'化念镇',530426,4),(530426105,'塔甸镇',530426,4),(530426201,'岔河乡',530426,4),(530426202,'大龙潭乡',530426,4),(530426203,'富良棚乡',530426,4),(530427001,'桂山街道',530427,4),(530427002,'古城街道',530427,4),(530427100,'扬武镇',530427,4),(530427101,'漠沙镇',530427,4),(530427102,'戛洒镇',530427,4),(530427103,'水塘镇',530427,4),(530427200,'平甸乡',530427,4),(530427201,'新化乡',530427,4),(530427202,'建兴乡',530427,4),(530427203,'老厂乡',530427,4),(530427204,'者竜乡',530427,4),(530427205,'平掌乡',530427,4),(530428001,'红河街道',530428,4),(530428002,'澧江街道',530428,4),(530428003,'甘庄街道',530428,4),(530428101,'曼来镇',530428,4),(530428102,'因远镇',530428,4),(530428201,'龙潭乡',530428,4),(530428202,'羊街乡',530428,4),(530428203,'那诺乡',530428,4),(530428204,'洼垤乡',530428,4),(530428205,'咪哩乡',530428,4),(530502001,'兰城街道',530502,4),(530502002,'永昌街道',530502,4),(530502101,'板桥镇',530502,4),(530502102,'河图镇',530502,4),(530502103,'汉庄镇',530502,4),(530502104,'蒲缥镇',530502,4),(530502105,'瓦窑镇',530502,4),(530502106,'潞江镇',530502,4),(530502201,'金鸡乡',530502,4),(530502202,'辛街乡',530502,4),(530502203,'西邑乡',530502,4),(530502204,'丙麻乡',530502,4),(530502205,'瓦渡乡',530502,4),(530502206,'水寨乡',530502,4),(530502207,'瓦马彝族白族乡',530502,4),(530502208,'瓦房彝族苗族乡',530502,4),(530502209,'杨柳白族彝族乡',530502,4),(530502210,'芒宽彝族傣族乡',530502,4),(530502401,'保山工贸园区',530502,4),(530502501,'保山市高黎贡山旅游渡假区',530502,4),(530521101,'甸阳镇',530521,4),(530521102,'由旺镇',530521,4),(530521103,'姚关镇',530521,4),(530521104,'仁和镇',530521,4),(530521105,'太平镇',530521,4),(530521201,'万兴乡',530521,4),(530521202,'摆榔彝族布朗族乡',530521,4),(530521203,'酒房乡',530521,4),(530521204,'旧城乡',530521,4),(530521205,'木老元布朗族彝族乡',530521,4),(530521206,'老麦乡',530521,4),(530521207,'何元乡',530521,4),(530521208,'水长乡',530521,4),(530521401,'保山市水长工业园区',530521,4),(530522101,'腾越镇',530522,4),(530522102,'固东镇',530522,4),(530522103,'滇滩镇',530522,4),(530522104,'猴桥镇',530522,4),(530522105,'和顺镇',530522,4),(530522106,'界头镇',530522,4),(530522107,'曲石镇',530522,4),(530522108,'明光镇',530522,4),(530522109,'中和镇',530522,4),(530522110,'芒棒镇',530522,4),(530522111,'荷花镇',530522,4),(530522204,'马站乡',530522,4),(530522205,'北海乡',530522,4),(530522207,'清水乡',530522,4),(530522209,'五合乡',530522,4),(530522210,'新华乡',530522,4),(530522211,'蒲川乡',530522,4),(530522212,'团田乡',530522,4),(530523101,'龙山镇',530523,4),(530523102,'镇安镇',530523,4),(530523103,'勐糯镇',530523,4),(530523201,'龙江乡',530523,4),(530523202,'腊勐乡',530523,4),(530523203,'碧寨乡',530523,4),(530523204,'龙新乡',530523,4),(530523205,'象达乡',530523,4),(530523206,'平达乡',530523,4),(530523207,'木城彝族傈僳族乡',530523,4),(530524101,'田园镇',530524,4),(530524102,'漭水镇',530524,4),(530524103,'柯街镇',530524,4),(530524104,'卡斯镇',530524,4),(530524105,'勐统镇',530524,4),(530524201,'温泉乡',530524,4),(530524202,'大田坝乡',530524,4),(530524203,'鸡飞乡',530524,4),(530524204,'翁堵乡',530524,4),(530524205,'湾甸傣族乡',530524,4),(530524206,'更戛乡',530524,4),(530524207,'珠街彝族乡',530524,4),(530524208,'耈街彝族苗族乡',530524,4),(530602001,'凤凰街道',530602,4),(530602002,'龙泉街道',530602,4),(530602003,'太平街道',530602,4),(530602101,'旧圃镇',530602,4),(530602102,'永丰镇',530602,4),(530602103,'北闸镇',530602,4),(530602104,'盘河镇',530602,4),(530602105,'靖安镇',530602,4),(530602106,'洒渔镇',530602,4),(530602107,'乐居镇',530602,4),(530602108,'苏家院镇',530602,4),(530602109,'大山包镇',530602,4),(530602110,'炎山镇',530602,4),(530602201,'布嘎回族乡',530602,4),(530602202,'守望回族乡',530602,4),(530602203,'小龙洞回族彝族乡',530602,4),(530602206,'青岗岭回族彝族乡',530602,4),(530602210,'苏甲乡',530602,4),(530602212,'大寨子乡',530602,4),(530602214,'田坝乡',530602,4),(530621101,'文屏镇',530621,4),(530621102,'水磨镇',530621,4),(530621103,'龙头山镇',530621,4),(530621104,'小寨镇',530621,4),(530621105,'江底镇',530621,4),(530621106,'火德红镇',530621,4),(530621107,'龙树镇',530621,4),(530621108,'新街镇',530621,4),(530621109,'梭山镇',530621,4),(530621110,'乐红镇',530621,4),(530621201,'桃源回族乡',530621,4),(530621202,'茨院回族乡',530621,4),(530622101,'白鹤滩镇',530622,4),(530622102,'大寨镇',530622,4),(530622103,'小河镇',530622,4),(530622104,'药山镇',530622,4),(530622105,'马树镇',530622,4),(530622106,'老店镇',530622,4),(530622107,'茂租镇',530622,4),(530622108,'东坪镇',530622,4),(530622109,'新店镇',530622,4),(530622110,'崇溪镇',530622,4),(530622111,'金塘镇',530622,4),(530622112,'蒙姑镇',530622,4),(530622203,'红山乡',530622,4),(530622205,'包谷垴乡',530622,4),(530622206,'中寨乡',530622,4),(530622209,'炉房乡',530622,4),(530623101,'盐井镇',530623,4),(530623102,'普洱镇',530623,4),(530623103,'豆沙镇',530623,4),(530623104,'中和镇',530623,4),(530623105,'庙坝镇',530623,4),(530623106,'柿子镇',530623,4),(530623201,'兴隆乡',530623,4),(530623202,'落雁乡',530623,4),(530623203,'滩头乡',530623,4),(530623204,'牛寨乡',530623,4),(530624101,'翠华镇',530624,4),(530624102,'玉碗镇',530624,4),(530624103,'吉利镇',530624,4),(530624104,'天星镇',530624,4),(530624105,'木杆镇',530624,4),(530624106,'悦乐镇',530624,4),(530624107,'寿山镇',530624,4),(530624108,'高桥镇',530624,4),(530624201,'上高桥回族彝族苗族乡',530624,4),(530625101,'溪洛渡镇',530625,4),(530625102,'桧溪镇',530625,4),(530625103,'黄华镇',530625,4),(530625104,'茂林镇',530625,4),(530625105,'大兴镇',530625,4),(530625106,'莲峰镇',530625,4),(530625107,'务基镇',530625,4),(530625108,'码口镇',530625,4),(530625201,'团结乡',530625,4),(530625202,'细沙乡',530625,4),(530625203,'青胜乡',530625,4),(530625205,'马楠苗族彝族乡',530625,4),(530625206,'水竹乡',530625,4),(530625207,'墨翰乡',530625,4),(530625208,'伍寨彝族苗族乡',530625,4),(530626101,'中城镇',530626,4),(530626102,'南岸镇',530626,4),(530626103,'新滩镇',530626,4),(530626104,'会仪镇',530626,4),(530626105,'板栗镇',530626,4),(530627101,'乌峰镇',530627,4),(530627102,'泼机镇',530627,4),(530627103,'黑树镇',530627,4),(530627104,'母享镇',530627,4),(530627105,'大湾镇',530627,4),(530627106,'以勒镇',530627,4),(530627107,'赤水源镇',530627,4),(530627108,'芒部镇',530627,4),(530627109,'雨河镇',530627,4),(530627110,'罗坎镇',530627,4),(530627111,'牛场镇',530627,4),(530627112,'五德镇',530627,4),(530627113,'坡头镇',530627,4),(530627114,'以古镇',530627,4),(530627115,'场坝镇',530627,4),(530627116,'塘房镇',530627,4),(530627117,'中屯镇',530627,4),(530627118,'木卓镇',530627,4),(530627119,'盐源镇',530627,4),(530627120,'碗厂镇',530627,4),(530627121,'坪上镇',530627,4),(530627202,'鱼洞乡',530627,4),(530627203,'花朗乡',530627,4),(530627204,'尖山乡',530627,4),(530627208,'杉树乡',530627,4),(530627209,'花山乡',530627,4),(530627211,'果珠彝族乡',530627,4),(530627212,'林口彝族苗族乡',530627,4),(530628101,'角奎镇',530628,4),(530628102,'洛泽河镇',530628,4),(530628103,'牛街镇',530628,4),(530628104,'海子镇',530628,4),(530628105,'荞山镇',530628,4),(530628106,'龙安镇',530628,4),(530628107,'钟鸣镇',530628,4),(530628108,'两河镇',530628,4),(530628109,'小草坝镇',530628,4),(530628110,'龙海镇',530628,4),(530628201,'龙街苗族彝族乡',530628,4),(530628202,'奎香苗族彝族乡',530628,4),(530628203,'树林彝族苗族乡',530628,4),(530628211,'柳溪苗族乡',530628,4),(530628212,'洛旺乡',530628,4),(530629101,'扎西镇',530629,4),(530629102,'旧城镇',530629,4),(530629103,'罗布镇',530629,4),(530629104,'林凤镇',530629,4),(530629105,'长安镇',530629,4),(530629106,'庙沟镇',530629,4),(530629107,'水田镇',530629,4),(530629201,'双河苗族彝族乡',530629,4),(530629202,'高田乡',530629,4),(530629207,'三桃乡',530629,4),(530630001,'云富街道',530630,4),(530630101,'向家坝镇',530630,4),(530630102,'太平镇',530630,4),(530630103,'两碗镇',530630,4),(530702001,'西安街道',530702,4),(530702002,'大研街道',530702,4),(530702003,'祥和街道',530702,4),(530702004,'束河街道',530702,4),(530702101,'金安镇',530702,4),(530702102,'七河镇',530702,4),(530702203,'大东乡',530702,4),(530702204,'金山白族乡',530702,4),(530702205,'金江白族乡',530702,4),(530721101,'黄山镇',530721,4),(530721102,'石鼓镇',530721,4),(530721103,'巨甸镇',530721,4),(530721104,'白沙镇',530721,4),(530721105,'拉市镇',530721,4),(530721106,'奉科镇',530721,4),(530721107,'鸣音镇',530721,4),(530721203,'太安乡',530721,4),(530721204,'龙蟠乡',530721,4),(530721205,'黎明傈僳族乡',530721,4),(530721206,'鲁甸乡',530721,4),(530721207,'塔城乡',530721,4),(530721208,'大具乡',530721,4),(530721209,'宝山乡',530721,4),(530721212,'石头白族乡',530721,4),(530721213,'九河白族乡',530721,4),(530722101,'永北镇',530722,4),(530722102,'仁和镇',530722,4),(530722103,'期纳镇',530722,4),(530722104,'三川镇',530722,4),(530722105,'程海镇',530722,4),(530722106,'涛源镇',530722,4),(530722201,'羊坪彝族乡',530722,4),(530722202,'六德傈僳族彝族乡',530722,4),(530722203,'东山傈僳族彝族乡',530722,4),(530722204,'东风傈僳族乡',530722,4),(530722206,'片角乡',530722,4),(530722207,'光华傈僳族彝族乡',530722,4),(530722208,'松坪傈僳族乡',530722,4),(530722209,'大安彝族纳西族乡',530722,4),(530722210,'顺州乡',530722,4),(530723101,'中心镇',530723,4),(530723102,'荣将镇',530723,4),(530723103,'兴泉镇',530723,4),(530723104,'石龙坝镇',530723,4),(530723202,'新庄傈僳族傣族乡',530723,4),(530723203,'通达傈僳族乡',530723,4),(530723204,'永兴傈僳族乡',530723,4),(530723205,'船房傈僳族傣族乡',530723,4),(530724101,'大兴镇',530724,4),(530724201,'拉伯乡',530724,4),(530724202,'永宁乡',530724,4),(530724203,'翠玉傈僳族普米族乡',530724,4),(530724204,'红桥乡',530724,4),(530724205,'宁利乡',530724,4),(530724206,'金棉乡',530724,4),(530724207,'西川乡',530724,4),(530724208,'西布河乡',530724,4),(530724209,'战河乡',530724,4),(530724210,'永宁坪乡',530724,4),(530724211,'跑马坪乡',530724,4),(530724212,'蝉战河乡',530724,4),(530724213,'新营盘乡',530724,4),(530724214,'烂泥箐乡',530724,4),(530802101,'思茅镇',530802,4),(530802102,'南屏镇',530802,4),(530802103,'倚象镇',530802,4),(530802104,'思茅港镇',530802,4),(530802105,'六顺镇',530802,4),(530802201,'龙潭彝族傣族乡',530802,4),(530802202,'云仙彝族乡',530802,4),(530821101,'宁洱镇',530821,4),(530821102,'磨黑镇',530821,4),(530821103,'德化镇',530821,4),(530821104,'同心镇',530821,4),(530821105,'勐先镇',530821,4),(530821106,'梅子镇',530821,4),(530821201,'德安乡',530821,4),(530821205,'普义乡',530821,4),(530821206,'黎明乡',530821,4),(530822101,'联珠镇',530822,4),(530822102,'通关镇',530822,4),(530822103,'龙坝镇',530822,4),(530822104,'新安镇',530822,4),(530822105,'团田镇',530822,4),(530822106,'新抚镇',530822,4),(530822107,'景星镇',530822,4),(530822108,'鱼塘镇',530822,4),(530822109,'文武镇',530822,4),(530822110,'坝溜镇',530822,4),(530822111,'泗南江镇',530822,4),(530822112,'雅邑镇',530822,4),(530822203,'孟弄彝族乡',530822,4),(530822208,'龙潭乡',530822,4),(530822212,'那哈乡',530822,4),(530823101,'锦屏镇',530823,4),(530823102,'文井镇',530823,4),(530823103,'漫湾镇',530823,4),(530823104,'大朝山东镇',530823,4),(530823105,'花山镇',530823,4),(530823106,'大街镇',530823,4),(530823107,'太忠镇',530823,4),(530823108,'文龙镇',530823,4),(530823109,'安定镇',530823,4),(530823110,'景福镇',530823,4),(530823201,'曼等乡',530823,4),(530823205,'龙街乡',530823,4),(530823208,'林街乡',530823,4),(530824101,'威远镇',530824,4),(530824102,'永平镇',530824,4),(530824103,'正兴镇',530824,4),(530824104,'民乐镇',530824,4),(530824105,'凤山镇',530824,4),(530824106,'景谷镇',530824,4),(530824201,'碧安乡',530824,4),(530824204,'益智乡',530824,4),(530824205,'半坡乡',530824,4),(530824206,'勐班乡',530824,4),(530825101,'恩乐镇',530825,4),(530825102,'按板镇',530825,4),(530825103,'勐大镇',530825,4),(530825104,'者东镇',530825,4),(530825105,'九甲镇',530825,4),(530825106,'古城镇',530825,4),(530825107,'振太镇',530825,4),(530825108,'和平镇',530825,4),(530825201,'田坝乡',530825,4),(530826101,'勐烈镇',530826,4),(530826102,'整董镇',530826,4),(530826201,'曲水乡',530826,4),(530826202,'国庆乡',530826,4),(530826203,'嘉禾乡',530826,4),(530826204,'宝藏乡',530826,4),(530826205,'康平乡',530826,4),(530827101,'娜允镇',530827,4),(530827102,'勐马镇',530827,4),(530827103,'芒信镇',530827,4),(530827104,'富岩镇',530827,4),(530827201,'景信乡',530827,4),(530827202,'公信乡',530827,4),(530828101,'勐朗镇',530828,4),(530828102,'上允镇',530828,4),(530828103,'糯扎渡镇',530828,4),(530828104,'惠民镇',530828,4),(530828105,'东回镇',530828,4),(530828201,'发展河哈尼族乡',530828,4),(530828202,'谦六彝族乡',530828,4),(530828203,'糯福乡',530828,4),(530828204,'东河乡',530828,4),(530828205,'大山乡',530828,4),(530828206,'南岭乡',530828,4),(530828207,'雪林佤族乡',530828,4),(530828208,'木戛乡',530828,4),(530828209,'酒井哈尼族乡',530828,4),(530828212,'拉巴乡',530828,4),(530828213,'竹塘乡',530828,4),(530828214,'富邦乡',530828,4),(530828215,'安康佤族乡',530828,4),(530828216,'文东佤族乡',530828,4),(530828217,'富东乡',530828,4),(530829101,'勐梭镇',530829,4),(530829102,'勐卡镇',530829,4),(530829103,'翁嘎科镇',530829,4),(530829104,'中课镇',530829,4),(530829105,'新厂镇',530829,4),(530829202,'力所拉祜族乡',530829,4),(530829203,'岳宋乡',530829,4),(530902001,'凤翔街道',530902,4),(530902002,'忙畔街道',530902,4),(530902102,'博尚镇',530902,4),(530902202,'南美乡',530902,4),(530902203,'蚂蚁堆乡',530902,4),(530902204,'章驮乡',530902,4),(530902206,'圈内乡',530902,4),(530902207,'马台乡',530902,4),(530902208,'邦东乡',530902,4),(530902209,'平村乡',530902,4),(530921101,'凤山镇',530921,4),(530921102,'鲁史镇',530921,4),(530921103,'小湾镇',530921,4),(530921104,'营盘镇',530921,4),(530921105,'三岔河镇',530921,4),(530921106,'勐佑镇',530921,4),(530921107,'雪山镇',530921,4),(530921108,'洛党镇',530921,4),(530921201,'诗礼乡',530921,4),(530921202,'新华乡',530921,4),(530921204,'大寺乡',530921,4),(530921206,'腰街乡',530921,4),(530921207,'郭大寨乡',530921,4),(530922101,'爱华镇',530922,4),(530922102,'漫湾镇',530922,4),(530922103,'大朝山西镇',530922,4),(530922104,'涌宝镇',530922,4),(530922105,'茂兰镇',530922,4),(530922106,'幸福镇',530922,4),(530922107,'大寨镇',530922,4),(530922201,'忙怀乡',530922,4),(530922202,'晓街乡',530922,4),(530922203,'茶房乡',530922,4),(530922204,'栗树乡',530922,4),(530922205,'后箐乡',530922,4),(530922501,'幸福农场',530922,4),(530922502,'新城农场',530922,4),(530923101,'德党镇',530923,4),(530923102,'小勐统镇',530923,4),(530923103,'永康镇',530923,4),(530923203,'勐板乡',530923,4),(530923204,'亚练乡',530923,4),(530923205,'乌木龙乡',530923,4),(530923206,'大雪山乡',530923,4),(530923207,'班卡乡',530923,4),(530923208,'崇岗乡',530923,4),(530923209,'大山乡',530923,4),(530923401,'勐底农场',530923,4),(530924101,'凤尾镇',530924,4),(530924102,'勐捧镇',530924,4),(530924103,'南伞镇',530924,4),(530924201,'忙丙乡',530924,4),(530924202,'勐堆乡',530924,4),(530924204,'木场乡',530924,4),(530924205,'军赛乡',530924,4),(530925101,'勐勐镇',530925,4),(530925102,'勐库镇',530925,4),(530925201,'沙河乡',530925,4),(530925202,'大文乡',530925,4),(530925203,'忙糯乡',530925,4),(530925205,'邦丙乡',530925,4),(530926100,'耿马镇',530926,4),(530926101,'勐永镇',530926,4),(530926102,'勐撒镇',530926,4),(530926103,'孟定镇',530926,4),(530926200,'大兴乡',530926,4),(530926201,'芒洪乡',530926,4),(530926202,'四排山乡',530926,4),(530926203,'贺派乡',530926,4),(530926204,'勐简乡',530926,4),(530926401,'耿马华侨农场',530926,4),(530926402,'勐撒农场',530926,4),(530926403,'孟定农场',530926,4),(530927101,'勐董镇',530927,4),(530927102,'岩帅镇',530927,4),(530927103,'勐省镇',530927,4),(530927104,'芒卡镇',530927,4),(530927202,'单甲乡',530927,4),(530927203,'糯良乡',530927,4),(530927204,'勐来乡',530927,4),(530927205,'勐角乡',530927,4),(530927206,'班洪乡',530927,4),(530927207,'班老乡',530927,4),(530927401,'勐省农场',530927,4),(532301101,'鹿城镇',532301,4),(532301102,'东瓜镇',532301,4),(532301103,'吕合镇',532301,4),(532301104,'紫溪镇',532301,4),(532301105,'东华镇',532301,4),(532301106,'子午镇',532301,4),(532301107,'苍岭镇',532301,4),(532301108,'三街镇',532301,4),(532301109,'八角镇',532301,4),(532301110,'中山镇',532301,4),(532301111,'新村镇',532301,4),(532301112,'西舍路镇',532301,4),(532301201,'树苴乡',532301,4),(532301202,'大过口乡',532301,4),(532301203,'大地基乡',532301,4),(532322101,'妥甸镇',532322,4),(532322102,'大庄镇',532322,4),(532322103,'法脿镇',532322,4),(532322104,'鄂嘉镇',532322,4),(532322105,'大麦地镇',532322,4),(532322201,'安龙堡乡',532322,4),(532322202,'爱尼山乡',532322,4),(532322203,'独田乡',532322,4),(532323101,'共和镇',532323,4),(532323102,'新桥镇',532323,4),(532323103,'江坡镇',532323,4),(532323104,'凤屯镇',532323,4),(532323201,'蟠猫乡',532323,4),(532323202,'戌街乡',532323,4),(532323203,'安乐乡',532323,4),(532324101,'龙川镇',532324,4),(532324102,'沙桥镇',532324,4),(532324103,'五街镇',532324,4),(532324104,'红土坡镇',532324,4),(532324105,'马街镇',532324,4),(532324106,'兔街镇',532324,4),(532324201,'雨露白族自治乡',532324,4),(532324202,'一街乡',532324,4),(532324203,'罗武庄乡',532324,4),(532324204,'五顶山乡',532324,4),(532325101,'栋川镇',532325,4),(532325102,'光禄镇',532325,4),(532325103,'前场镇',532325,4),(532325104,'弥兴镇',532325,4),(532325105,'太平镇',532325,4),(532325201,'适中乡',532325,4),(532325202,'左门乡',532325,4),(532325203,'官屯乡',532325,4),(532325204,'大河口乡',532325,4),(532326101,'金碧镇',532326,4),(532326102,'石羊镇',532326,4),(532326103,'六苴镇',532326,4),(532326104,'龙街镇',532326,4),(532326105,'新街镇',532326,4),(532326106,'赵家店镇',532326,4),(532326107,'三岔河镇',532326,4),(532326108,'桂花镇',532326,4),(532326204,'昙华乡',532326,4),(532326206,'湾碧傣族傈僳族自治乡',532326,4),(532326207,'铁锁乡',532326,4),(532326208,'三台乡',532326,4),(532327101,'永定镇',532327,4),(532327102,'宜就镇',532327,4),(532327103,'中和镇',532327,4),(532327201,'莲池乡',532327,4),(532327202,'维的乡',532327,4),(532327203,'猛虎乡',532327,4),(532327204,'永兴乡',532327,4),(532328101,'元马镇',532328,4),(532328103,'黄瓜园镇',532328,4),(532328104,'羊街镇',532328,4),(532328202,'老城乡',532328,4),(532328203,'物茂乡',532328,4),(532328204,'江边乡',532328,4),(532328205,'新华乡',532328,4),(532328206,'平田乡',532328,4),(532328209,'凉山乡',532328,4),(532328210,'姜驿乡',532328,4),(532329101,'狮山镇',532329,4),(532329102,'高桥镇',532329,4),(532329103,'猫街镇',532329,4),(532329201,'插甸乡',532329,4),(532329202,'田心乡',532329,4),(532329203,'发窝乡',532329,4),(532329204,'白路乡',532329,4),(532329205,'万德乡',532329,4),(532329206,'己衣乡',532329,4),(532329207,'环州乡',532329,4),(532329208,'东坡傣族自治乡',532329,4),(532331101,'金山镇',532331,4),(532331102,'仁兴镇',532331,4),(532331103,'碧城镇',532331,4),(532331104,'勤丰镇',532331,4),(532331105,'一平浪镇',532331,4),(532331106,'广通镇',532331,4),(532331107,'黑井镇',532331,4),(532331108,'土官镇',532331,4),(532331109,'彩云镇',532331,4),(532331110,'和平镇',532331,4),(532331111,'恐龙山镇',532331,4),(532331201,'中村乡',532331,4),(532331203,'高峰乡',532331,4),(532331204,'妥安乡',532331,4),(532501001,'城区街道',532501,4),(532501101,'锡城镇',532501,4),(532501102,'沙甸镇',532501,4),(532501103,'鸡街镇',532501,4),(532501104,'大屯镇',532501,4),(532501106,'老厂镇',532501,4),(532501107,'卡房镇',532501,4),(532501108,'蔓耗镇',532501,4),(532501202,'贾沙乡',532501,4),(532501203,'保和乡',532501,4),(532502001,'乐白道街道',532502,4),(532502002,'灵泉街道',532502,4),(532502101,'中和营镇',532502,4),(532502102,'小龙潭镇',532502,4),(532502201,'大庄回族乡',532502,4),(532502202,'羊街乡',532502,4),(532502203,'碑格乡',532502,4),(532504101,'弥阳镇',532526,4),(532504102,'新哨镇',532526,4),(532504103,'虹溪镇',532526,4),(532504104,'竹园镇',532526,4),(532504105,'朋普镇',532526,4),(532504106,'巡检司镇',532526,4),(532504107,'西一镇',532526,4),(532504108,'西二镇',532526,4),(532504109,'西三镇',532526,4),(532504110,'东山镇',532526,4),(532504202,'五山乡',532526,4),(532504203,'江边乡',532526,4),(532523101,'玉屏镇',532523,4),(532523201,'新现乡',532523,4),(532523202,'和平乡',532523,4),(532523203,'白河乡',532523,4),(532523204,'白云乡',532523,4),(532523205,'新华乡',532523,4),(532523206,'湾塘乡',532523,4),(532524101,'临安镇',532524,4),(532524102,'官厅镇',532524,4),(532524103,'西庄镇',532524,4),(532524104,'青龙镇',532524,4),(532524105,'南庄镇',532524,4),(532524106,'岔科镇',532524,4),(532524107,'曲江镇',532524,4),(532524108,'面甸镇',532524,4),(532524201,'普雄乡',532524,4),(532524202,'李浩寨乡',532524,4),(532524203,'坡头乡',532524,4),(532524204,'盘江乡',532524,4),(532524205,'利民乡',532524,4),(532524206,'甸尾乡',532524,4),(532525101,'异龙镇',532525,4),(532525102,'宝秀镇',532525,4),(532525103,'坝心镇',532525,4),(532525104,'龙朋镇',532525,4),(532525105,'龙武镇',532525,4),(532525106,'哨冲镇',532525,4),(532525107,'牛街镇',532525,4),(532525201,'新城乡',532525,4),(532525202,'大桥乡',532525,4),(532527101,'中枢镇',532527,4),(532527102,'金马镇',532527,4),(532527104,'旧城镇',532527,4),(532527106,'午街铺镇',532527,4),(532527107,'白水镇',532527,4),(532527201,'向阳乡',532527,4),(532527202,'三塘乡',532527,4),(532527203,'永宁乡',532527,4),(532528101,'南沙镇',532528,4),(532528102,'新街镇',532528,4),(532528202,'牛角寨乡',532528,4),(532528203,'沙拉托乡',532528,4),(532528204,'嘎娘乡',532528,4),(532528205,'上新城乡',532528,4),(532528206,'小新街乡',532528,4),(532528207,'逢春岭乡',532528,4),(532528208,'大坪乡',532528,4),(532528209,'攀枝花乡',532528,4),(532528210,'黄茅岭乡',532528,4),(532528211,'黄草岭乡',532528,4),(532528212,'俄扎乡',532528,4),(532528213,'马街乡',532528,4),(532529101,'迤萨镇',532529,4),(532529201,'甲寅乡',532529,4),(532529202,'宝华乡',532529,4),(532529203,'洛恩乡',532529,4),(532529204,'石头寨乡',532529,4),(532529205,'阿扎河乡',532529,4),(532529206,'乐育乡',532529,4),(532529207,'浪堤乡',532529,4),(532529208,'大羊街乡',532529,4),(532529209,'车古乡',532529,4),(532529210,'架车乡',532529,4),(532529211,'垤玛乡',532529,4),(532529212,'三村乡',532529,4),(532530101,'金河镇',532530,4),(532530102,'金水河镇',532530,4),(532530202,'铜厂乡',532530,4),(532530203,'勐拉乡',532530,4),(532530204,'老集寨乡',532530,4),(532530205,'者米拉祜乡',532530,4),(532530206,'阿得博乡',532530,4),(532530207,'沙依坡乡',532530,4),(532530208,'大寨乡',532530,4),(532530209,'马鞍底乡',532530,4),(532530210,'勐桥乡',532530,4),(532530211,'营盘乡',532530,4),(532530212,'老勐乡',532530,4),(532531101,'大兴镇',532531,4),(532531201,'戈奎乡',532531,4),(532531202,'牛孔乡',532531,4),(532531203,'大水沟乡',532531,4),(532531204,'大黑山乡',532531,4),(532531205,'半坡乡',532531,4),(532531206,'骑马坝乡',532531,4),(532531207,'三猛乡',532531,4),(532531208,'平河乡',532531,4),(532532101,'河口镇',532532,4),(532532102,'南溪镇',532532,4),(532532201,'老范寨乡',532532,4),(532532202,'桥头苗族壮族乡',532532,4),(532532203,'瑶山乡',532532,4),(532532204,'莲花滩乡',532532,4),(532622101,'江那镇',532622,4),(532622102,'平远镇',532622,4),(532622103,'稼依镇',532622,4),(532622104,'阿猛镇',532622,4),(532622201,'阿舍彝族乡',532622,4),(532622202,'维末彝族乡',532622,4),(532622203,'盘龙彝族乡',532622,4),(532622204,'八嘎乡',532622,4),(532622205,'者腊乡',532622,4),(532622206,'蚌峨乡',532622,4),(532622207,'干河彝族乡',532622,4),(532622501,'平远管理区',532622,4),(532622502,'稼依管理区',532622,4),(532622503,'回龙管理区',532622,4),(532623101,'西洒镇',532623,4),(532623102,'兴街镇',532623,4),(532623201,'蚌谷乡',532623,4),(532623202,'莲花塘乡',532623,4),(532623203,'新马街乡',532623,4),(532623204,'柏林乡',532623,4),(532623205,'法斗乡',532623,4),(532623206,'董马乡',532623,4),(532623207,'鸡街乡',532623,4),(532624101,'麻栗镇',532624,4),(532624102,'大坪镇',532624,4),(532624103,'董干镇',532624,4),(532624104,'天保镇',532624,4),(532624201,'猛硐瑶族乡',532624,4),(532624202,'下金厂乡',532624,4),(532624203,'八布乡',532624,4),(532624204,'六河乡',532624,4),(532624205,'杨万乡',532624,4),(532624206,'铁厂乡',532624,4),(532624207,'马街乡',532624,4),(532625101,'马白镇',532625,4),(532625102,'八寨镇',532625,4),(532625103,'仁和镇',532625,4),(532625104,'木厂镇',532625,4),(532625105,'夹寒箐镇',532625,4),(532625106,'小坝子镇',532625,4),(532625107,'都龙镇',532625,4),(532625108,'金厂镇',532625,4),(532625109,'坡脚镇',532625,4),(532625201,'南捞乡',532625,4),(532625202,'大栗树乡',532625,4),(532625203,'篾厂乡',532625,4),(532625204,'古林箐乡',532625,4),(532626101,'锦屏镇',532626,4),(532626102,'曰者镇',532626,4),(532626103,'双龙营镇',532626,4),(532626201,'八道哨彝族乡',532626,4),(532626202,'天星乡',532626,4),(532626203,'平寨乡',532626,4),(532626204,'树皮彝族乡',532626,4),(532626205,'腻脚彝族乡',532626,4),(532626206,'新店彝族乡',532626,4),(532626207,'舍得彝族乡',532626,4),(532626208,'官寨乡',532626,4),(532626209,'温浏乡',532626,4),(532627101,'莲城镇',532627,4),(532627102,'八宝镇',532627,4),(532627103,'南屏镇',532627,4),(532627104,'珠街镇',532627,4),(532627105,'那洒镇',532627,4),(532627106,'珠琳镇',532627,4),(532627107,'坝美镇',532627,4),(532627201,'董堡乡',532627,4),(532627202,'旧莫乡',532627,4),(532627203,'杨柳井乡',532627,4),(532627204,'板蚌乡',532627,4),(532627205,'曙光乡',532627,4),(532627206,'黑支果乡',532627,4),(532627207,'篆角乡',532627,4),(532627208,'五珠乡',532627,4),(532627209,'者兔乡',532627,4),(532627210,'者太乡',532627,4),(532627211,'底圩乡',532627,4),(532628101,'新华镇',532628,4),(532628102,'归朝镇',532628,4),(532628103,'剥隘镇',532628,4),(532628104,'里达镇',532628,4),(532628105,'田蓬镇',532628,4),(532628106,'木央镇',532628,4),(532628201,'板仑乡',532628,4),(532628202,'谷拉乡',532628,4),(532628203,'者桑乡',532628,4),(532628204,'那能乡',532628,4),(532628205,'洞波瑶族乡',532628,4),(532628206,'阿用乡',532628,4),(532628207,'花甲乡',532628,4),(532801001,'允景洪街道',532801,4),(532801102,'嘎洒镇',532801,4),(532801103,'勐龙镇',532801,4),(532801104,'勐罕镇',532801,4),(532801105,'勐养镇',532801,4),(532801106,'普文镇',532801,4),(532801202,'景哈乡',532801,4),(532801203,'景讷乡',532801,4),(532801204,'大渡岗乡',532801,4),(532801205,'勐旺乡',532801,4),(532801206,'基诺乡',532801,4),(532801401,'景洪农场',532801,4),(532801402,'东风农场',532801,4),(532801403,'橄榄坝农场',532801,4),(532801404,'勐养农场',532801,4),(532801405,'大渡岗农场',532801,4),(532801406,'西双版纳州渡假区管理委员',532801,4),(532801407,'景洪工业园区',532801,4),(532801408,'西双版纳监狱',532801,4),(532822101,'勐海镇',532822,4),(532822102,'打洛镇',532822,4),(532822103,'勐混镇',532822,4),(532822104,'勐遮镇',532822,4),(532822105,'勐满镇',532822,4),(532822106,'勐阿镇',532822,4),(532822201,'勐宋乡',532822,4),(532822202,'勐往乡',532822,4),(532822203,'格朗和乡',532822,4),(532822204,'布朗山乡',532822,4),(532822205,'西定乡',532822,4),(532822401,'黎明农场',532822,4),(532823101,'勐腊镇',532823,4),(532823102,'勐捧镇',532823,4),(532823103,'勐满镇',532823,4),(532823104,'勐仑镇',532823,4),(532823105,'西双版纳磨憨经济开发区（尚勇镇）',532823,4),(532823106,'勐伴镇',532823,4),(532823107,'关累镇',532823,4),(532823201,'易武乡',532823,4),(532823202,'象明乡',532823,4),(532823203,'瑶区乡',532823,4),(532823401,'勐腊农场',532823,4),(532823402,'勐捧农场',532823,4),(532823403,'勐满农场',532823,4),(532823404,'勐醒农场',532823,4),(532901001,'大理创新工业园区天井办事处',532901,4),(532901002,'大理创新工业园区满江办事处',532901,4),(532901101,'下关镇',532901,4),(532901102,'大理镇',532901,4),(532901103,'大理创新工业园区凤仪镇',532901,4),(532901104,'喜洲镇',532901,4),(532901105,'海东镇',532901,4),(532901106,'挖色镇',532901,4),(532901107,'湾桥镇',532901,4),(532901108,'银桥镇',532901,4),(532901109,'双廊镇',532901,4),(532901110,'上关镇',532901,4),(532901201,'太邑彝族乡',532901,4),(532922101,'苍山西镇',532922,4),(532922102,'漾江镇',532922,4),(532922103,'平坡镇',532922,4),(532922201,'富恒乡',532922,4),(532922202,'太平乡',532922,4),(532922203,'顺濞乡',532922,4),(532922204,'瓦厂乡',532922,4),(532922205,'龙潭乡',532922,4),(532922206,'鸡街乡',532922,4),(532923101,'祥城镇',532923,4),(532923102,'沙龙镇',532923,4),(532923103,'云南驿镇',532923,4),(532923104,'下庄镇',532923,4),(532923105,'普棚镇',532923,4),(532923106,'刘厂镇',532923,4),(532923107,'禾甸镇',532923,4),(532923108,'米甸镇',532923,4),(532923201,'鹿鸣乡',532923,4),(532923202,'东山彝族乡',532923,4),(532924101,'金牛镇',532924,4),(532924102,'宾居镇',532924,4),(532924103,'州城镇',532924,4),(532924104,'大营镇',532924,4),(532924105,'鸡足山镇',532924,4),(532924106,'力角镇',532924,4),(532924107,'平川镇',532924,4),(532924108,'乔甸镇',532924,4),(532924201,'钟英傈僳族彝族乡',532924,4),(532924202,'拉乌彝族乡',532924,4),(532925101,'弥城镇',532925,4),(532925102,'红岩镇',532925,4),(532925103,'新街镇',532925,4),(532925104,'寅街镇',532925,4),(532925105,'苴力镇',532925,4),(532925202,'密祉乡',532925,4),(532925203,'德苴乡',532925,4),(532925204,'牛街彝族乡',532925,4),(532926101,'南涧镇',532926,4),(532926102,'小湾东镇',532926,4),(532926103,'公郎镇',532926,4),(532926104,'宝华镇',532926,4),(532926105,'无量山镇',532926,4),(532926201,'拥翠乡',532926,4),(532926202,'乐秋乡',532926,4),(532926203,'碧溪乡',532926,4),(532927101,'南诏镇',532927,4),(532927102,'庙街镇',532927,4),(532927103,'大仓镇',532927,4),(532927104,'永建镇',532927,4),(532927201,'巍宝山乡',532927,4),(532927202,'马鞍山乡',532927,4),(532927203,'紫金乡',532927,4),(532927204,'五印乡',532927,4),(532927205,'牛街乡',532927,4),(532927206,'青华乡',532927,4),(532928101,'博南镇',532928,4),(532928102,'杉阳镇',532928,4),(532928103,'龙街镇',532928,4),(532928201,'龙门乡',532928,4),(532928202,'北斗彝族乡',532928,4),(532928203,'厂街彝族乡',532928,4),(532928204,'水泄彝族乡',532928,4),(532929101,'诺邓镇',532929,4),(532929102,'功果桥镇',532929,4),(532929103,'漕涧镇',532929,4),(532929104,'白石镇',532929,4),(532929201,'宝丰乡',532929,4),(532929202,'关坪乡',532929,4),(532929203,'团结彝族乡',532929,4),(532929204,'长新乡',532929,4),(532929205,'检槽乡',532929,4),(532929206,'苗尾傈僳族乡',532929,4),(532929207,'民建乡',532929,4),(532930101,'茈碧湖镇',532930,4),(532930102,'邓川镇',532930,4),(532930103,'右所镇',532930,4),(532930104,'三营镇',532930,4),(532930105,'凤羽镇',532930,4),(532930106,'乔后镇',532930,4),(532930201,'牛街乡',532930,4),(532930202,'炼铁乡',532930,4),(532930203,'西山乡',532930,4),(532931101,'金华镇',532931,4),(532931102,'老君山镇',532931,4),(532931103,'甸南镇',532931,4),(532931104,'沙溪镇',532931,4),(532931105,'马登镇',532931,4),(532931201,'羊岑乡',532931,4),(532931202,'弥沙乡',532931,4),(532931203,'象图乡',532931,4),(532932101,'云鹤镇',532932,4),(532932102,'辛屯镇',532932,4),(532932103,'松桂镇',532932,4),(532932104,'黄坪镇',532932,4),(532932105,'草海镇',532932,4),(532932106,'西邑镇',532932,4),(532932107,'龙开口镇',532932,4),(532932201,'金墩乡',532932,4),(532932203,'六合彝族乡',532932,4),(533102101,'勐卯镇',533102,4),(533102102,'畹町镇',533102,4),(533102103,'弄岛镇',533102,4),(533102201,'姐相乡',533102,4),(533102202,'户育乡',533102,4),(533102203,'勐秀乡',533102,4),(533103001,'勐焕街道',533103,4),(533103101,'芒市镇',533103,4),(533103102,'遮放镇',533103,4),(533103103,'勐戛镇',533103,4),(533103104,'芒海镇',533103,4),(533103105,'风平镇',533103,4),(533103201,'轩岗乡',533103,4),(533103202,'江东乡',533103,4),(533103203,'西山乡',533103,4),(533103204,'中山乡',533103,4),(533103205,'三台山乡',533103,4),(533103206,'五岔路乡',533103,4),(533122101,'遮岛镇',533122,4),(533122102,'芒东镇',533122,4),(533122103,'勐养镇',533122,4),(533122201,'平山乡',533122,4),(533122202,'小厂乡',533122,4),(533122203,'大厂乡',533122,4),(533122204,'九保阿昌族乡',533122,4),(533122205,'曩宋阿昌族乡',533122,4),(533122206,'河西乡',533122,4),(533123101,'平原镇',533123,4),(533123102,'旧城镇',533123,4),(533123103,'那邦镇',533123,4),(533123104,'弄璋镇',533123,4),(533123105,'盏西镇',533123,4),(533123106,'卡场镇',533123,4),(533123107,'昔马镇',533123,4),(533123108,'太平镇',533123,4),(533123201,'新城乡',533123,4),(533123202,'油松岭乡',533123,4),(533123203,'芒章乡',533123,4),(533123204,'支那乡',533123,4),(533123205,'苏典傈僳族乡',533123,4),(533123206,'勐弄乡',533123,4),(533123207,'铜壁关乡',533123,4),(533124101,'章凤镇',533124,4),(533124102,'陇把镇',533124,4),(533124103,'景罕镇',533124,4),(533124104,'城子镇',533124,4),(533124201,'户撒阿昌族乡',533124,4),(533124202,'护国乡',533124,4),(533124203,'清平乡',533124,4),(533124204,'王子树乡',533124,4),(533124205,'勐约乡',533124,4),(533321101,'六库镇',533321,4),(533321102,'鲁掌镇',533321,4),(533321103,'片马镇',533321,4),(533321104,'上江镇',533321,4),(533321105,'老窝镇',533321,4),(533321106,'大兴地镇',533321,4),(533321204,'称杆乡',533321,4),(533321205,'古登乡',533321,4),(533321206,'洛本卓乡',533321,4),(533323101,'上帕镇',533323,4),(533323201,'匹河乡',533323,4),(533323202,'子里甲乡',533323,4),(533323203,'架科底乡',533323,4),(533323204,'鹿马登乡',533323,4),(533323205,'石月亮乡',533323,4),(533323206,'马吉乡',533323,4),(533324101,'茨开镇',533324,4),(533324102,'丙中洛镇',533324,4),(533324202,'捧当乡',533324,4),(533324203,'普拉底乡',533324,4),(533324204,'独龙江乡',533324,4),(533325101,'金顶镇',533325,4),(533325102,'啦井镇',533325,4),(533325103,'营盘镇',533325,4),(533325104,'通甸镇',533325,4),(533325201,'河西乡',533325,4),(533325202,'中排乡',533325,4),(533325203,'石登乡',533325,4),(533325204,'兔峨乡',533325,4),(533421101,'建塘镇',533421,4),(533421102,'小中甸镇',533421,4),(533421103,'虎跳峡镇',533421,4),(533421104,'金江镇',533421,4),(533421201,'上江乡',533421,4),(533421202,'三坝乡',533421,4),(533421203,'洛吉乡',533421,4),(533421204,'尼西乡',533421,4),(533421205,'格咱乡',533421,4),(533421206,'东旺乡',533421,4),(533421207,'五境乡',533421,4),(533422101,'升平镇',533422,4),(533422102,'奔子栏镇',533422,4),(533422201,'佛山乡',533422,4),(533422202,'云岭乡',533422,4),(533422203,'燕门乡',533422,4),(533422204,'拖顶乡',533422,4),(533422205,'霞若乡',533422,4),(533422206,'羊拉乡',533422,4),(533423101,'保和镇',533423,4),(533423102,'叶枝镇',533423,4),(533423103,'塔城镇',533423,4),(533423201,'永春乡',533423,4),(533423202,'攀天阁乡',533423,4),(533423203,'白济汛乡',533423,4),(533423204,'康普乡',533423,4),(533423205,'巴迪乡',533423,4),(533423206,'中路乡',533423,4),(533423207,'维登乡',533423,4),(540102002,'八廓街道',540102,4),(540102003,'吉日街道',540102,4),(540102004,'吉崩岗街道',540102,4),(540102005,'扎细街道',540102,4),(540102006,'公德林街道',540102,4),(540102007,'嘎玛贡桑街道',540102,4),(540102008,'两岛街道',540102,4),(540102009,'金珠西路街道',540102,4),(540102200,'蔡公堂乡',540102,4),(540102201,'纳金乡',540102,4),(540102202,'娘热乡',540102,4),(540102203,'夺底乡',540102,4),(540121100,'甘丹曲果镇',540121,4),(540121200,'春堆乡',540121,4),(540121201,'松盘乡',540121,4),(540121202,'强嘎乡',540121,4),(540121203,'卡孜乡',540121,4),(540121204,'边交林乡',540121,4),(540121205,'江热夏乡',540121,4),(540121206,'阿朗乡',540121,4),(540121207,'唐古乡',540121,4),(540121208,'旁多乡',540121,4),(540122100,'当曲卡镇',540122,4),(540122101,'羊八井镇',540122,4),(540122200,'格达乡',540122,4),(540122201,'宁中乡',540122,4),(540122202,'公塘乡',540122,4),(540122203,'龙仁乡',540122,4),(540122204,'乌玛塘乡',540122,4),(540122205,'纳木湖乡',540122,4),(540123100,'塔荣镇',540123,4),(540123200,'麻江乡',540123,4),(540123201,'普松乡',540123,4),(540123202,'卡如乡',540123,4),(540123203,'尼木乡',540123,4),(540123204,'续迈乡',540123,4),(540123205,'帕古乡',540123,4),(540123206,'吞巴乡',540123,4),(540124100,'曲水镇',540124,4),(540124200,'达嘎乡',540124,4),(540124201,'才纳乡',540124,4),(540124202,'南木乡',540124,4),(540124203,'聂当乡',540124,4),(540124204,'茶巴拉乡',540124,4),(540125100,'东嘎镇',540125,4),(540125101,'乃琼镇',540125,4),(540125200,'羊达乡',540125,4),(540125201,'古荣乡',540125,4),(540125202,'柳梧乡',540125,4),(540125203,'马乡',540125,4),(540125204,'德庆乡',540125,4),(540126100,'德庆镇',540126,4),(540126200,'塔杰乡',540126,4),(540126201,'章多乡',540126,4),(540126202,'唐嘎乡',540126,4),(540126203,'雪乡',540126,4),(540126204,'帮堆乡',540126,4),(540127100,'工卡镇',540127,4),(540127200,'扎雪乡',540127,4),(540127201,'门巴乡',540127,4),(540127202,'扎西岗乡',540127,4),(540127203,'日多乡',540127,4),(540127204,'尼玛江热乡',540127,4),(540127205,'甲玛乡',540127,4),(540127206,'唐加乡',540127,4),(542121100,'城关镇',542121,4),(542121101,'俄洛镇',542121,4),(542121102,'卡若镇',542121,4),(542121200,'芒达乡',542121,4),(542121201,'沙贡乡',542121,4),(542121202,'若巴乡',542121,4),(542121203,'埃西乡',542121,4),(542121204,'如意乡',542121,4),(542121205,'日通乡',542121,4),(542121206,'柴维乡',542121,4),(542121207,'妥坝乡',542121,4),(542121208,'嘎玛乡',542121,4),(542121209,'面达乡',542121,4),(542121210,'约巴乡',542121,4),(542121211,'拉多乡',542121,4),(542122100,'江达镇',542122,4),(542122101,'岗托镇',542122,4),(542122200,'邓柯乡',542122,4),(542122201,'岩比乡',542122,4),(542122202,'卡贡乡',542122,4),(542122203,'生达乡',542122,4),(542122204,'娘西乡',542122,4),(542122205,'字呷乡',542122,4),(542122206,'青泥洞乡',542122,4),(542122207,'汪布顶乡',542122,4),(542122208,'德登乡',542122,4),(542122209,'同普乡',542122,4),(542122210,'波罗乡',542122,4),(542123100,'莫洛镇',542123,4),(542123200,'敏都乡',542123,4),(542123201,'则巴乡',542123,4),(542123202,'罗麦乡',542123,4),(542123203,'沙东乡',542123,4),(542123204,'克日乡',542123,4),(542123205,'木协乡',542123,4),(542123206,'阿旺乡',542123,4),(542123207,'拉妥乡',542123,4),(542123208,'雄松乡',542123,4),(542123209,'哈加乡',542123,4),(542123210,'相皮乡',542123,4),(542124100,'桑多镇',542124,4),(542124101,'类乌齐镇',542124,4),(542124200,'吉多乡',542124,4),(542124201,'岗色乡',542124,4),(542124202,'宾达乡',542124,4),(542124203,'卡玛多乡',542124,4),(542124204,'尚卡乡',542124,4),(542124205,'伊日乡',542124,4),(542124206,'甲桑卡乡',542124,4),(542124207,'长毛岭乡',542124,4),(542125100,'丁青镇',542125,4),(542125101,'尺犊镇',542125,4),(542125200,'木塔乡',542125,4),(542125201,'布塔乡',542125,4),(542125202,'巴达乡',542125,4),(542125203,'甘岩乡',542125,4),(542125204,'嘎塔乡',542125,4),(542125205,'色扎乡',542125,4),(542125206,'协雄乡',542125,4),(542125207,'桑多乡',542125,4),(542125208,'当堆乡',542125,4),(542125209,'沙贡乡',542125,4),(542125210,'觉恩乡',542125,4),(542126100,'烟多镇',542126,4),(542126101,'吉塘镇',542126,4),(542126102,'香堆镇',542126,4),(542126200,'宗沙乡',542126,4),(542126201,'肯通乡',542126,4),(542126202,'扩达乡',542126,4),(542126203,'新卡乡',542126,4),(542126204,'王卡乡',542126,4),(542126205,'阿孜乡',542126,4),(542126206,'巴日乡',542126,4),(542126207,'荣周乡',542126,4),(542126208,'卡贡乡',542126,4),(542126209,'察拉乡',542126,4),(542127100,'白玛镇',542127,4),(542127101,'然乌镇',542127,4),(542127102,'帮达镇',542127,4),(542127103,'同卡镇',542127,4),(542127200,'林卡乡',542127,4),(542127201,'夏里乡',542127,4),(542127202,'拥乡',542127,4),(542127203,'瓦乡',542127,4),(542127204,'吉达乡',542127,4),(542127205,'卡瓦白庆乡',542127,4),(542127206,'集中乡',542127,4),(542127207,'益庆乡',542127,4),(542127208,'拉根乡',542127,4),(542127209,'郭庆乡',542127,4),(542128100,'旺达镇',542128,4),(542128101,'田妥镇',542128,4),(542128102,'扎玉镇',542128,4),(542128200,'东坝乡',542128,4),(542128201,'中林卡乡',542128,4),(542128202,'美玉乡',542128,4),(542128203,'下林卡乡',542128,4),(542128204,'碧土乡',542128,4),(542128205,'仁果乡',542128,4),(542128206,'绕金乡',542128,4),(542129100,'嘎托镇',542129,4),(542129101,'如美镇',542129,4),(542129200,'曲孜卡乡',542129,4),(542129201,'木许乡',542129,4),(542129202,'纳西民族乡',542129,4),(542129203,'朱巴龙乡',542129,4),(542129204,'曲登乡',542129,4),(542129205,'徐中乡',542129,4),(542129206,'帮达乡',542129,4),(542129207,'戈波乡',542129,4),(542129208,'洛尼乡',542129,4),(542129209,'措瓦乡',542129,4),(542129210,'昂多乡',542129,4),(542129211,'宗西乡',542129,4),(542129212,'莽岭乡',542129,4),(542129213,'索多西乡',542129,4),(542132100,'孜托镇',542132,4),(542132101,'硕督镇',542132,4),(542132102,'康沙镇',542132,4),(542132103,'马利镇',542132,4),(542132200,'玉西乡',542132,4),(542132201,'新荣乡',542132,4),(542132202,'达龙乡',542132,4),(542132203,'腊久乡',542132,4),(542132204,'俄西乡',542132,4),(542132205,'中亦乡',542132,4),(542132206,'白达乡',542132,4),(542133100,'草卡镇',542133,4),(542133101,'边坝镇',542133,4),(542133200,'马武乡',542133,4),(542133201,'热玉乡',542133,4),(542133202,'尼木乡',542133,4),(542133203,'沙丁乡',542133,4),(542133204,'金岭乡',542133,4),(542133205,'加贡乡',542133,4),(542133206,'马秀乡',542133,4),(542133207,'都瓦乡',542133,4),(542133208,'拉孜乡',542133,4),(542221100,'泽当镇',542221,4),(542221101,'昌珠镇',542221,4),(542221200,'颇章乡',542221,4),(542221201,'结巴乡',542221,4),(542221202,'多颇章乡',542221,4),(542221203,'索珠乡',542221,4),(542221204,'亚堆乡',542221,4),(542222100,'扎唐镇',542222,4),(542222101,'桑耶镇',542222,4),(542222200,'阿扎乡',542222,4),(542222201,'扎其乡',542222,4),(542222202,'吉汝乡',542222,4),(542223100,'吉雄镇',542223,4),(542223101,'岗堆镇',542223,4),(542223102,'甲竹林镇',542223,4),(542223103,'江塘镇',542223,4),(542223104,'杰德秀镇',542223,4),(542223200,'朗杰学乡',542223,4),(542223201,'昌果乡',542223,4),(542223202,'东拉乡',542223,4),(542224100,'桑日镇',542224,4),(542224200,'增期乡',542224,4),(542224201,'白堆乡',542224,4),(542224202,'绒乡',542224,4),(542225100,'琼结镇',542225,4),(542225200,'拉玉乡',542225,4),(542225201,'下水乡',542225,4),(542225202,'加麻乡',542225,4),(542226100,'曲松镇',542226,4),(542226101,'罗布沙镇',542226,4),(542226200,'邱多江乡',542226,4),(542226201,'堆随乡',542226,4),(542226202,'下江乡',542226,4),(542227100,'措美镇',542227,4),(542227101,'哲古镇',542227,4),(542227200,'乃西乡',542227,4),(542227201,'古堆乡',542227,4),(542228100,'洛扎镇',542228,4),(542228101,'拉康镇',542228,4),(542228200,'生格乡',542228,4),(542228201,'边巴乡',542228,4),(542228202,'扎日乡',542228,4),(542228203,'色乡',542228,4),(542228204,'拉郊乡',542228,4),(542229100,'加查镇',542229,4),(542229101,'安绕镇',542229,4),(542229200,'拉绥乡',542229,4),(542229201,'崔久乡',542229,4),(542229202,'坝乡',542229,4),(542229203,'冷达乡',542229,4),(542229204,'洛林乡',542229,4),(542231100,'隆子镇',542231,4),(542231101,'日当镇',542231,4),(542231200,'加玉乡',542231,4),(542231201,'列麦乡',542231,4),(542231202,'热荣乡',542231,4),(542231203,'三安曲林乡',542231,4),(542231204,'准巴乡',542231,4),(542231205,'斗玉珞巴民族乡',542231,4),(542231206,'雪沙乡',542231,4),(542231207,'扎日乡',542231,4),(542231208,'玉麦乡',542231,4),(542232100,'错那镇',542232,4),(542232200,'勒门巴民族乡',542232,4),(542232201,'贡日门巴民族乡',542232,4),(542232202,'吉巴门巴民族乡',542232,4),(542232203,'麻玛门巴民族乡',542232,4),(542232204,'库局乡',542232,4),(542232205,'曲卓木乡',542232,4),(542232206,'浪坡乡',542232,4),(542232207,'觉拉乡',542232,4),(542232208,'卡达乡',542232,4),(542233100,'浪卡子镇',542233,4),(542233101,'打隆镇',542233,4),(542233200,'普玛江塘乡',542233,4),(542233201,'多却乡',542233,4),(542233202,'卡龙乡',542233,4),(542233203,'阿扎乡',542233,4),(542233204,'工布学乡',542233,4),(542233205,'卡热乡',542233,4),(542233206,'白地乡',542233,4),(542233207,'张达乡',542233,4),(542301001,'城北办事处',542301,4),(542301002,'城南办事处',542301,4),(542301200,'曲美乡',542301,4),(542301201,'聂日雄乡',542301,4),(542301202,'曲布雄乡',542301,4),(542301203,'联乡',542301,4),(542301204,'甲措雄乡',542301,4),(542301205,'纳尔乡',542301,4),(542301206,'年木乡',542301,4),(542301207,'东嘎乡',542301,4),(542301208,'边雄乡',542301,4),(542301209,'江当乡',542301,4),(542322100,'南木林镇',542322,4),(542322200,'普当乡',542322,4),(542322201,'仁堆乡',542322,4),(542322202,'拉布普乡',542322,4),(542322203,'多角乡',542322,4),(542322204,'卡孜乡',542322,4),(542322205,'土布加乡',542322,4),(542322206,'艾玛乡',542322,4),(542322207,'奴玛乡',542322,4),(542322208,'达孜乡',542322,4),(542322209,'索金乡',542322,4),(542322210,'茶尔乡',542322,4),(542322211,'秋木乡',542322,4),(542322212,'达那乡',542322,4),(542322213,'芒热乡',542322,4),(542322214,'热当乡',542322,4),(542322215,'甲措乡',542322,4),(542323100,'江孜镇',542323,4),(542323200,'纳如乡',542323,4),(542323201,'卡麦乡',542323,4),(542323202,'卡堆乡',542323,4),(542323203,'藏改乡',542323,4),(542323204,'日朗乡',542323,4),(542323205,'达孜乡',542323,4),(542323206,'热索乡',542323,4),(542323207,'重孜乡',542323,4),(542323208,'龙马乡',542323,4),(542323209,'紫金乡',542323,4),(542323210,'江热乡',542323,4),(542323211,'年堆乡',542323,4),(542323212,'康卓乡',542323,4),(542323213,'金嘎乡',542323,4),(542323214,'日星乡',542323,4),(542323215,'热龙乡',542323,4),(542323216,'车仁乡',542323,4),(542323217,'加克西乡',542323,4),(542324100,'协格尔镇',542324,4),(542324101,'岗嘎镇',542324,4),(542324200,'加措乡',542324,4),(542324201,'绒辖乡',542324,4),(542324202,'尼辖乡',542324,4),(542324203,'盆吉乡',542324,4),(542324204,'曲当乡',542324,4),(542324205,'扎果乡',542324,4),(542324206,'扎西宗乡',542324,4),(542324207,'长所乡',542324,4),(542324208,'曲洛乡',542324,4),(542324209,'措果乡',542324,4),(542324210,'克玛乡',542324,4),(542325100,'萨迦镇',542325,4),(542325101,'吉定镇',542325,4),(542325200,'木拉乡',542325,4),(542325201,'查荣乡',542325,4),(542325202,'拉洛乡',542325,4),(542325203,'赛乡',542325,4),(542325204,'扯休乡',542325,4),(542325205,'扎西岗乡',542325,4),(542325206,'雄玛乡',542325,4),(542325207,'麻布加乡',542325,4),(542325208,'雄麦乡',542325,4),(542326100,'曲下镇',542326,4),(542326101,'拉孜镇',542326,4),(542326200,'扎西宗乡',542326,4),(542326201,'曲玛乡',542326,4),(542326202,'彭措林乡',542326,4),(542326203,'扎西岗乡',542326,4),(542326204,'柳乡',542326,4),(542326205,'热萨乡',542326,4),(542326206,'芒普乡',542326,4),(542326207,'锡钦乡',542326,4),(542326208,'查务乡',542326,4),(542327100,'卡嘎镇',542327,4),(542327101,'桑桑镇',542327,4),(542327200,'切热乡',542327,4),(542327201,'秋窝乡',542327,4),(542327202,'达居乡',542327,4),(542327203,'亚木乡',542327,4),(542327204,'贡久布乡',542327,4),(542327205,'达若乡',542327,4),(542327206,'措迈乡',542327,4),(542327207,'尼果乡',542327,4),(542327208,'孔隆乡',542327,4),(542327209,'如萨乡',542327,4),(542327210,'阿木雄乡',542327,4),(542327211,'查孜乡',542327,4),(542327212,'日吾其乡',542327,4),(542327213,'多白乡',542327,4),(542327214,'雄巴乡',542327,4),(542328100,'卡嘎镇',542328,4),(542328200,'达木夏乡',542328,4),(542328201,'查布乡',542328,4),(542328202,'春哲乡',542328,4),(542328203,'则许乡',542328,4),(542328204,'娘热乡',542328,4),(542328205,'措布西乡',542328,4),(542328206,'纳当乡',542328,4),(542328207,'青都乡',542328,4),(542328208,'切琼乡',542328,4),(542328209,'美巴切勤乡',542328,4),(542328210,'列巴乡',542328,4),(542328211,'塔定乡',542328,4),(542328212,'荣玛乡',542328,4),(542328213,'通门乡',542328,4),(542328214,'仁钦则乡',542328,4),(542328215,'达那普乡',542328,4),(542328216,'达那塔乡',542328,4),(542328217,'南木切乡',542328,4),(542329100,'洛江镇',542329,4),(542329101,'嘎东镇',542329,4),(542329200,'巴扎乡',542329,4),(542329201,'玛乡',542329,4),(542329202,'旺丹乡',542329,4),(542329203,'曲奴乡',542329,4),(542329204,'杜琼乡',542329,4),(542329205,'强堆乡',542329,4),(542329206,'嘎普乡',542329,4),(542329207,'者下乡',542329,4),(542329208,'东喜乡',542329,4),(542330100,'德吉林镇',542330,4),(542330200,'帕当乡',542330,4),(542330201,'康雄乡',542330,4),(542330202,'普松乡',542330,4),(542330203,'然巴乡',542330,4),(542330204,'茶巴乡',542330,4),(542330205,'切洼乡',542330,4),(542330206,'母乡',542330,4),(542330207,'仁布乡',542330,4),(542331100,'康马镇',542331,4),(542331200,'涅如麦乡',542331,4),(542331201,'涅如堆乡',542331,4),(542331202,'嘎拉乡',542331,4),(542331203,'萨玛达乡',542331,4),(542331204,'康如乡',542331,4),(542331205,'少岗乡',542331,4),(542331206,'南尼乡',542331,4),(542331207,'雄章乡',542331,4),(542332100,'江嘎镇',542332,4),(542332101,'陈塘镇',542332,4),(542332102,'日屋镇',542332,4),(542332200,'确布乡',542332,4),(542332201,'扎西岗乡',542332,4),(542332202,'多布扎乡',542332,4),(542332203,'定结乡',542332,4),(542332204,'琼孜乡',542332,4),(542332205,'萨尔乡',542332,4),(542332206,'郭加乡',542332,4),(542333100,'帕羊镇',542333,4),(542333200,'拉让乡',542333,4),(542333201,'帕江乡',542333,4),(542333202,'仁多乡',542333,4),(542333203,'吉玛乡',542333,4),(542333204,'隆格尔乡',542333,4),(542333205,'霍尔巴乡',542333,4),(542333206,'吉拉乡',542333,4),(542333207,'纳久乡',542333,4),(542333208,'偏吉乡',542333,4),(542333209,'布多乡',542333,4),(542333210,'亚热乡',542333,4),(542333211,'琼果乡',542333,4),(542334100,'下司马镇',542334,4),(542334101,'帕里镇',542334,4),(542334200,'下亚东乡',542334,4),(542334201,'堆纳乡',542334,4),(542334202,'上亚东乡',542334,4),(542334203,'吉汝乡',542334,4),(542334204,'康布乡',542334,4),(542335100,'宗嘎镇',542335,4),(542335101,'吉隆镇',542335,4),(542335200,'折巴乡',542335,4),(542335201,'贡当乡',542335,4),(542335202,'差那乡',542335,4),(542336100,'聂拉木镇',542336,4),(542336101,'樟木镇',542336,4),(542336200,'亚来乡',542336,4),(542336201,'锁作乡',542336,4),(542336202,'门布乡',542336,4),(542336203,'乃龙乡',542336,4),(542336204,'波绒乡',542336,4),(542337100,'加加镇',542337,4),(542337200,'夏如乡',542337,4),(542337201,'旦嘎乡',542337,4),(542337202,'达吉岭乡',542337,4),(542337203,'如角乡',542337,4),(542337204,'拉藏乡',542337,4),(542337205,'雄如乡',542337,4),(542337206,'昌果乡',542337,4),(542338100,'岗巴镇',542338,4),(542338200,'昌龙乡',542338,4),(542338201,'直克乡',542338,4),(542338202,'孔玛乡',542338,4),(542338203,'龙中乡',542338,4),(542421100,'那曲镇',542421,4),(542421101,'罗玛镇',542421,4),(542421102,'古露镇',542421,4),(542421200,'香茂乡',542421,4),(542421201,'油恰乡',542421,4),(542421202,'那么切乡',542421,4),(542421203,'孔玛乡',542421,4),(542421204,'达萨乡',542421,4),(542421205,'劳麦乡',542421,4),(542421206,'色雄乡',542421,4),(542421207,'尼玛乡',542421,4),(542421208,'达前乡',542421,4),(542422100,'阿扎镇',542422,4),(542422101,'嘉黎镇',542422,4),(542422200,'鸽群乡',542422,4),(542422201,'藏比乡',542422,4),(542422202,'忠玉乡',542422,4),(542422203,'措多乡',542422,4),(542422204,'措拉乡',542422,4),(542422205,'林堤乡',542422,4),(542422206,'夏玛乡',542422,4),(542422207,'绒多乡',542422,4),(542423100,'比如镇',542423,4),(542423101,'夏曲镇',542423,4),(542423200,'白嘎乡',542423,4),(542423201,'羊秀乡',542423,4),(542423202,'香曲乡',542423,4),(542423203,'达塘乡',542423,4),(542423204,'良曲乡',542423,4),(542423205,'茶曲乡',542423,4),(542423206,'扎拉乡',542423,4),(542423207,'恰则乡',542423,4),(542424100,'聂荣镇',542424,4),(542424200,'尼玛乡',542424,4),(542424201,'查当乡',542424,4),(542424202,'当木江乡',542424,4),(542424203,'永曲乡',542424,4),(542424204,'索雄乡',542424,4),(542424205,'白雄乡',542424,4),(542424206,'桑荣乡',542424,4),(542424207,'下曲乡',542424,4),(542424208,'色庆乡',542424,4),(542425100,'扎仁镇',542425,4),(542425101,'雁石坪镇',542425,4),(542425102,'强玛镇',542425,4),(542425103,'帕那镇',542425,4),(542425200,'措玛乡',542425,4),(542425201,'滩堆乡',542425,4),(542425202,'扎曲乡',542425,4),(542425203,'岗尼乡',542425,4),(542425204,'玛曲乡',542425,4),(542425205,'色务乡',542425,4),(542425206,'玛荣乡',542425,4),(542425207,'多玛乡',542425,4),(542425208,'帮麦乡',542425,4),(542426100,'申扎镇',542426,4),(542426101,'雄梅镇',542426,4),(542426200,'马跃乡',542426,4),(542426201,'买巴乡',542426,4),(542426202,'塔尔玛乡',542426,4),(542426203,'下过乡',542426,4),(542426204,'卡乡',542426,4),(542426205,'巴扎乡',542426,4),(542427100,'亚拉镇',542427,4),(542427101,'荣布镇',542427,4),(542427200,'若达乡',542427,4),(542427201,'热瓦乡',542427,4),(542427202,'西昌乡',542427,4),(542427203,'嘎木乡',542427,4),(542427204,'赤多乡',542427,4),(542427205,'嘎美乡',542427,4),(542427206,'加勒乡',542427,4),(542427207,'江达乡',542427,4),(542428100,'普保镇',542428,4),(542428101,'北拉镇',542428,4),(542428102,'佳琼镇',542428,4),(542428103,'德庆镇',542428,4),(542428200,'马前乡',542428,4),(542428201,'门当乡',542428,4),(542428202,'保吉乡',542428,4),(542428203,'青龙乡',542428,4),(542428204,'新吉乡',542428,4),(542428205,'尼玛乡',542428,4),(542429100,'雅安镇',542429,4),(542429101,'拉西镇',542429,4),(542429102,'杂色镇',542429,4),(542429200,'江绵乡',542429,4),(542429201,'岗切乡',542429,4),(542429202,'巴青乡',542429,4),(542429203,'阿秀乡',542429,4),(542429204,'玛如乡',542429,4),(542429205,'本塔乡',542429,4),(542429206,'贡日乡',542429,4),(542430100,'尼玛镇',542430,4),(542430200,'文布乡',542430,4),(542430201,'中仓乡',542430,4),(542430202,'卓瓦乡',542430,4),(542430203,'卓尼乡',542430,4),(542430204,'吉瓦乡',542430,4),(542430205,'甲谷乡',542430,4),(542430206,'阿索乡',542430,4),(542430207,'俄久乡',542430,4),(542430208,'荣玛乡',542430,4),(542430209,'达果乡',542430,4),(542430210,'申亚乡',542430,4),(542430211,'来多乡',542430,4),(542430212,'军仓乡',542430,4),(542521100,'普兰镇',542521,4),(542521200,'巴嘎乡',542521,4),(542521201,'霍尔乡',542521,4),(542522100,'托林镇',542522,4),(542522200,'萨让乡',542522,4),(542522201,'达巴乡',542522,4),(542522202,'底雅乡',542522,4),(542522203,'香孜乡',542522,4),(542522204,'曲松乡',542522,4),(542522205,'楚鲁松杰乡',542522,4),(542523100,'狮泉河镇',542523,4),(542523200,'昆莎乡',542523,4),(542523201,'左左乡',542523,4),(542523202,'门士乡',542523,4),(542523203,'扎西岗乡',542523,4),(542524100,'日土镇',542524,4),(542524200,'热帮乡',542524,4),(542524201,'日松乡',542524,4),(542524202,'东汝乡',542524,4),(542524203,'多玛乡',542524,4),(542525100,'革吉镇',542525,4),(542525200,'雄巴乡',542525,4),(542525201,'亚热乡',542525,4),(542525202,'盐湖乡',542525,4),(542525203,'文布当桑乡',542525,4),(542526100,'改则镇',542526,4),(542526200,'物玛乡',542526,4),(542526201,'先遣乡',542526,4),(542526202,'麻米乡',542526,4),(542526203,'洞措乡',542526,4),(542526204,'古姆乡',542526,4),(542526205,'察布乡',542526,4),(542527100,'措勤镇',542527,4),(542527200,'磁石乡',542527,4),(542527201,'曲洛乡',542527,4),(542527202,'江让乡',542527,4),(542527203,'达雄乡',542527,4),(542621100,'林芝镇',542621,4),(542621101,'百巴镇',542621,4),(542621102,'八一镇',542621,4),(542621103,'鲁朗镇',542621,4),(542621200,'更章门巴民族乡',542621,4),(542621201,'布久乡',542621,4),(542621202,'米瑞乡',542621,4),(542622100,'工布江达镇',542622,4),(542622101,'金达镇',542622,4),(542622102,'巴河镇',542622,4),(542622200,'错高乡',542622,4),(542622201,'朱拉乡',542622,4),(542622202,'仲莎乡',542622,4),(542622203,'江达乡',542622,4),(542622204,'娘蒲乡',542622,4),(542622205,'加兴乡',542622,4),(542623100,'米林镇',542623,4),(542623101,'卧龙镇',542623,4),(542623102,'派镇',542623,4),(542623200,'丹娘乡',542623,4),(542623201,'南伊珞巴民族乡',542623,4),(542623202,'羌纳乡',542623,4),(542623203,'里龙乡',542623,4),(542623204,'扎西绕登乡',542623,4),(542624100,'墨脱镇',542624,4),(542624200,'甘登乡',542624,4),(542624201,'加热萨乡',542624,4),(542624202,'达木珞巴民族乡',542624,4),(542624203,'帮辛乡',542624,4),(542624204,'格当乡',542624,4),(542624205,'德兴乡',542624,4),(542624206,'背崩乡',542624,4),(542625100,'扎木镇',542625,4),(542625101,'倾多镇',542625,4),(542625102,'松宗镇',542625,4),(542625200,'古乡',542625,4),(542625201,'玉许乡',542625,4),(542625202,'多吉乡',542625,4),(542625203,'康玉乡',542625,4),(542625204,'玉普乡',542625,4),(542625205,'易贡乡',542625,4),(542625206,'八盖乡',542625,4),(542626100,'竹瓦根镇',542626,4),(542626101,'上察隅镇',542626,4),(542626102,'下察隅镇',542626,4),(542626200,'古玉乡',542626,4),(542626201,'古拉乡',542626,4),(542626202,'察瓦龙乡',542626,4),(542627100,'朗镇',542627,4),(542627101,'仲达镇',542627,4),(542627102,'洞嘎镇',542627,4),(542627200,'金东乡',542627,4),(542627201,'拉多乡',542627,4),(542627202,'登木乡',542627,4),(610102001,'西一路街道',610102,4),(610102002,'长乐中路街道',610102,4),(610102003,'中山门街道',610102,4),(610102004,'韩森寨街道',610102,4),(610102005,'解放门街道',610102,4),(610102006,'自强路街道',610102,4),(610102007,'太华路街道',610102,4),(610102008,'长乐西路街道',610102,4),(610102009,'胡家庙街道',610102,4),(610103001,'南院门街道',610103,4),(610103002,'柏树林街道',610103,4),(610103003,'长乐坊街道',610103,4),(610103004,'东关南街街道',610103,4),(610103005,'太乙路街道',610103,4),(610103006,'文艺路街道',610103,4),(610103007,'长安路街道',610103,4),(610103008,'张家村街道',610103,4),(610104001,'青年路街道',610104,4),(610104002,'北院门街道',610104,4),(610104003,'北关街道',610104,4),(610104004,'红庙坡街道',610104,4),(610104005,'环城西路街道',610104,4),(610104006,'西关街道',610104,4),(610104007,'土门街道',610104,4),(610104008,'桃园路街道',610104,4),(610104009,'枣园街道',610104,4),(610111001,'纺织城街道',610111,4),(610111002,'十里铺街道',610111,4),(610111003,'红旗街道',610111,4),(610111004,'席王街道',610111,4),(610111005,'洪庆街道',610111,4),(610111006,'狄寨街道',610111,4),(610111007,'灞桥街道',610111,4),(610111008,'新筑街道',610111,4),(610111009,'新合街道',610111,4),(610112001,'张家堡街道',610112,4),(610112002,'三桥街道',610112,4),(610112003,'辛家庙街道',610112,4),(610112004,'徐家湾街道',610112,4),(610112005,'大明宫街道',610112,4),(610112006,'谭家街道',610112,4),(610112007,'草滩街道',610112,4),(610112008,'六村堡街道',610112,4),(610112009,'未央宫街道',610112,4),(610112010,'汉城街道',610112,4),(610112011,'未央湖街道',610112,4),(610112012,'建章路街道',610112,4),(610113001,'小寨路街道',610113,4),(610113002,'大雁塔街道',610113,4),(610113003,'长延堡街道',610113,4),(610113004,'电子城街道',610113,4),(610113005,'等驾坡街道',610113,4),(610113006,'鱼化寨街道',610113,4),(610113007,'丈八沟街道',610113,4),(610113008,'曲江街道',610113,4),(610114001,'凤凰路街道',610114,4),(610114002,'新华路街道',610114,4),(610114003,'振兴街道',610114,4),(610114004,'新兴街道',610114,4),(610114005,'北屯街道',610114,4),(610114100,'武屯镇',610114,4),(610114101,'关山镇',610114,4),(610115001,'骊山街道',610115,4),(610115002,'秦陵街道',610115,4),(610115003,'新丰街道',610115,4),(610115004,'代王街道',610115,4),(610115005,'斜口街道',610115,4),(610115006,'行者街道',610115,4),(610115007,'零口街道',610115,4),(610115008,'相桥街道',610115,4),(610115009,'雨金街道',610115,4),(610115010,'新市街道',610115,4),(610115011,'徐杨街道',610115,4),(610115012,'西泉街道',610115,4),(610115013,'栎阳街道',610115,4),(610115014,'马额街道',610115,4),(610115015,'何寨街道',610115,4),(610115016,'交口街道',610115,4),(610115017,'油槐街道',610115,4),(610115018,'北田街道',610115,4),(610115019,'铁炉街道',610115,4),(610115020,'任留街道',610115,4),(610115021,'穆寨街道',610115,4),(610115022,'小金街道',610115,4),(610115023,'仁宗街道',610115,4),(610116001,'韦曲街道',610116,4),(610116002,'郭杜街道',610116,4),(610116003,'滦镇街道',610116,4),(610116004,'引镇街道',610116,4),(610116005,'王寺街道',610116,4),(610116006,'马王街道',610116,4),(610116007,'太乙宫街道',610116,4),(610116008,'东大街道',610116,4),(610116009,'子午街道',610116,4),(610116010,'斗门街道',610116,4),(610116011,'细柳街道',610116,4),(610116012,'杜曲街道',610116,4),(610116013,'大兆街道',610116,4),(610116014,'黄良街道',610116,4),(610116015,'兴隆街道',610116,4),(610116016,'王曲街道',610116,4),(610116017,'鸣犊街道',610116,4),(610116018,'王莽街道',610116,4),(610116019,'五台街道',610116,4),(610116020,'高桥街道',610116,4),(610116021,'五星街道',610116,4),(610116022,'灵沼街道',610116,4),(610116023,'杨庄街道',610116,4),(610116024,'炮里街道',610116,4),(610116025,'魏寨街道',610116,4),(610122100,'蓝关镇',610122,4),(610122101,'洩湖镇',610122,4),(610122102,'华胥镇',610122,4),(610122103,'前卫镇',610122,4),(610122104,'汤峪镇',610122,4),(610122105,'焦岱镇',610122,4),(610122106,'玉山镇',610122,4),(610122107,'三里镇',610122,4),(610122108,'普化镇',610122,4),(610122109,'葛牌镇',610122,4),(610122110,'灞源镇',610122,4),(610122111,'九间房镇',610122,4),(610122112,'蓝桥镇',610122,4),(610122113,'玉川镇',610122,4),(610122114,'辋川镇',610122,4),(610122115,'厚镇',610122,4),(610122116,'三官庙镇',610122,4),(610122117,'金山镇',610122,4),(610122118,'安村镇',610122,4),(610122119,'孟村镇',610122,4),(610122120,'小寨镇',610122,4),(610122121,'史家寨镇',610122,4),(610124100,'二曲镇',610124,4),(610124101,'哑柏镇',610124,4),(610124102,'终南镇',610124,4),(610124103,'马召镇',610124,4),(610124104,'集贤镇',610124,4),(610124105,'楼观镇',610124,4),(610124106,'尚村镇',610124,4),(610124107,'广济镇',610124,4),(610124108,'厚畛子镇',610124,4),(610124109,'青化镇',610124,4),(610124110,'竹峪镇',610124,4),(610124111,'翠峰镇',610124,4),(610124112,'四屯镇',610124,4),(610124113,'侯家村镇',610124,4),(610124114,'辛家寨镇',610124,4),(610124115,'司竹镇',610124,4),(610124116,'九峰镇',610124,4),(610124117,'富仁镇',610124,4),(610124118,'骆峪镇',610124,4),(610124119,'陈河镇',610124,4),(610124120,'板房子镇',610124,4),(610124121,'王家河镇',610124,4),(610125100,'甘亭镇',610125,4),(610125101,'余下镇',610125,4),(610125102,'祖庵镇',610125,4),(610125103,'秦渡镇',610125,4),(610125104,'大王镇',610125,4),(610125105,'草堂镇',610125,4),(610125106,'蒋村镇',610125,4),(610125107,'庞光镇',610125,4),(610125108,'涝店镇',610125,4),(610125109,'甘河镇',610125,4),(610125110,'石井镇',610125,4),(610125111,'玉蝉镇',610125,4),(610125112,'五竹镇',610125,4),(610125113,'苍游镇',610125,4),(610125114,'渭丰镇',610125,4),(610125115,'天桥镇',610125,4),(610126001,'鹿苑街道',610126,4),(610126002,'泾渭街道',610126,4),(610126003,'崇皇街道',610126,4),(610126101,'通远镇',610126,4),(610126102,'耿镇',610126,4),(610126104,'榆楚镇',610126,4),(610126105,'湾子镇',610126,4),(610126106,'张卜镇',610126,4),(610202001,'七一路街道',610202,4),(610202002,'红旗街道',610202,4),(610202003,'桃园街道',610202,4),(610202004,'青年路街道',610202,4),(610202005,'王家河街道',610202,4),(610202100,'黄堡镇',610202,4),(610202201,'王益乡',610202,4),(610203001,'城关街道',610203,4),(610203002,'三里洞街道',610203,4),(610203003,'王石凹街道',610203,4),(610203100,'陈炉镇',610203,4),(610203101,'红土镇',610203,4),(610203102,'广阳镇',610203,4),(610203104,'金锁关镇',610203,4),(610203106,'阿庄镇',610203,4),(610203107,'印台镇',610203,4),(610203108,'高楼河镇',610203,4),(610204001,'永安路街道',610204,4),(610204002,'天宝路街道',610204,4),(610204003,'咸丰路街道',610204,4),(610204004,'正阳路街道',610204,4),(610204005,'锦阳路街道',610204,4),(610204101,'董家河镇',610204,4),(610204102,'庙湾镇',610204,4),(610204103,'瑶曲镇',610204,4),(610204104,'照金镇',610204,4),(610204106,'坡头镇',610204,4),(610204107,'小丘镇',610204,4),(610204108,'孙塬镇',610204,4),(610204109,'关庄镇',610204,4),(610204111,'石柱镇',610204,4),(610204200,'演池乡',610204,4),(610222100,'城关镇',610222,4),(610222101,'彭镇',610222,4),(610222102,'五里镇',610222,4),(610222103,'太安镇',610222,4),(610222104,'棋盘镇',610222,4),(610222105,'尧生镇',610222,4),(610222200,'哭泉乡',610222,4),(610222201,'云梦乡',610222,4),(610222204,'西村乡',610222,4),(610302001,'金陵街道',610302,4),(610302002,'经二路街道',610302,4),(610302003,'清姜街道',610302,4),(610302004,'姜谭街道',610302,4),(610302005,'桥南街道',610302,4),(610302100,'马营镇',610302,4),(610302101,'石鼓镇',610302,4),(610302102,'神农镇',610302,4),(610302103,'高家镇',610302,4),(610302104,'八鱼镇',610302,4),(610303001,'中山东路街道',610303,4),(610303002,'西关街道',610303,4),(610303003,'中山西路街道',610303,4),(610303004,'群众路街道',610303,4),(610303006,'东风路街道',610303,4),(610303007,'十里铺街道',610303,4),(610303008,'卧龙寺街道',610303,4),(610303100,'陈仓镇',610303,4),(610303101,'蟠龙镇',610303,4),(610303102,'金河镇',610303,4),(610303103,'硖石镇',610303,4),(610304001,'虢镇街道',610304,4),(610304002,'东关街道',610304,4),(610304003,'千渭街道',610304,4),(610304101,'阳平镇',610304,4),(610304102,'千河镇',610304,4),(610304103,'磻溪镇',610304,4),(610304104,'天王镇',610304,4),(610304105,'慕仪镇',610304,4),(610304106,'周原镇',610304,4),(610304107,'贾村镇',610304,4),(610304109,'县功镇',610304,4),(610304110,'新街镇',610304,4),(610304111,'坪头镇',610304,4),(610304112,'香泉镇',610304,4),(610304113,'赤沙镇',610304,4),(610304114,'拓石镇',610304,4),(610304115,'凤阁岭镇',610304,4),(610304116,'钓渭镇',610304,4),(610322100,'城关镇',610322,4),(610322101,'虢王镇',610322,4),(610322102,'彪角镇',610322,4),(610322103,'横水镇',610322,4),(610322104,'田家庄镇',610322,4),(610322105,'糜杆桥镇',610322,4),(610322107,'南指挥镇',610322,4),(610322108,'陈村镇',610322,4),(610322109,'长青镇',610322,4),(610322110,'柳林镇',610322,4),(610322111,'姚家沟镇',610322,4),(610322112,'范家寨镇',610322,4),(610323100,'凤鸣镇',610323,4),(610323101,'蔡家坡镇',610323,4),(610323103,'益店镇',610323,4),(610323104,'蒲村镇',610323,4),(610323105,'祝家庄镇',610323,4),(610323106,'青化镇',610323,4),(610323107,'枣林镇',610323,4),(610323108,'雍川镇',610323,4),(610323111,'故郡镇',610323,4),(610323112,'京当镇',610323,4),(610324100,'城关镇',610324,4),(610324101,'天度镇',610324,4),(610324102,'午井镇',610324,4),(610324103,'绛帐镇',610324,4),(610324104,'段家镇',610324,4),(610324105,'杏林镇',610324,4),(610324106,'召公镇',610324,4),(610324107,'法门镇',610324,4),(610326100,'首善镇',610326,4),(610326101,'横渠镇',610326,4),(610326102,'槐芽镇',610326,4),(610326103,'汤峪镇',610326,4),(610326104,'常兴镇',610326,4),(610326105,'金渠镇',610326,4),(610326106,'营头镇',610326,4),(610326107,'齐镇',610326,4),(610326400,'陕西省太白山旅游区',610326,4),(610326401,'红河谷森林公园',610326,4),(610327100,'城关镇',610327,4),(610327101,'东风镇',610327,4),(610327102,'八渡镇',610327,4),(610327104,'东南镇',610327,4),(610327106,'温水镇',610327,4),(610327107,'天成镇',610327,4),(610327108,'曹家湾镇',610327,4),(610327109,'固关镇',610327,4),(610327110,'火烧寨镇',610327,4),(610327111,'李家河镇',610327,4),(610327112,'河北镇',610327,4),(610327113,'新集川镇',610327,4),(610328100,'城关镇',610328,4),(610328101,'崔家头镇',610328,4),(610328102,'南寨镇',610328,4),(610328103,'张家塬镇',610328,4),(610328104,'水沟镇',610328,4),(610328105,'草碧镇',610328,4),(610328106,'柿沟镇',610328,4),(610328107,'高崖镇',610328,4),(610329100,'九成宫镇',610329,4),(610329101,'崔木镇',610329,4),(610329102,'招贤镇',610329,4),(610329103,'两亭镇',610329,4),(610329105,'常丰镇',610329,4),(610329106,'丈八镇',610329,4),(610329107,'酒房镇',610329,4),(610330100,'双石铺镇',610330,4),(610330101,'凤州镇',610330,4),(610330102,'黄牛铺镇',610330,4),(610330103,'红花铺镇',610330,4),(610330104,'河口镇',610330,4),(610330105,'唐藏镇',610330,4),(610330106,'平木镇',610330,4),(610330107,'坪坎镇',610330,4),(610330110,'留凤关镇',610330,4),(610330400,'马头滩林业局',610330,4),(610330401,'辛家山林业场',610330,4),(610331100,'咀头镇',610331,4),(610331101,'桃川镇',610331,4),(610331102,'鹦鸽镇',610331,4),(610331103,'靖口镇',610331,4),(610331104,'太白河镇',610331,4),(610331105,'黄柏塬镇',610331,4),(610331106,'王家堎镇',610331,4),(610402001,'人民路街道',610402,4),(610402002,'西兰路街道',610402,4),(610402003,'吴家堡街道',610402,4),(610402004,'渭阳西路街道',610402,4),(610402005,'陈杨寨街道',610402,4),(610402006,'古渡街道',610402,4),(610402007,'沣东街道',610402,4),(610402008,'钓台街道',610402,4),(610402009,'马泉街道',610402,4),(610402010,'渭滨街道',610402,4),(610402011,'双照街道',610402,4),(610402105,'马庄镇',610402,4),(610403001,'杨陵街道',610403,4),(610403002,'李台街道',610403,4),(610403100,'五泉镇',610403,4),(610403101,'大寨镇',610403,4),(610403102,'揉谷镇',610403,4),(610404001,'中山街道',610404,4),(610404002,'文汇路街道',610404,4),(610404003,'新兴街道',610404,4),(610404004,'渭阳街道',610404,4),(610404005,'渭城街道',610404,4),(610404006,'窑店街道',610404,4),(610404007,'正阳街道',610404,4),(610404008,'周陵街道',610404,4),(610404009,'底张街道',610404,4),(610404105,'北杜镇',610404,4),(610422100,'城关镇',610422,4),(610422101,'安乐镇',610422,4),(610422102,'陂西镇',610422,4),(610422103,'独李镇',610422,4),(610422104,'大程镇',610422,4),(610422105,'西阳镇',610422,4),(610422106,'鲁桥镇',610422,4),(610422107,'陵前镇',610422,4),(610422109,'新兴镇',610422,4),(610422110,'嵯峨镇',610422,4),(610422111,'渠岸镇',610422,4),(610423100,'泾干镇',610423,4),(610423101,'永乐镇',610423,4),(610423102,'云阳镇',610423,4),(610423103,'桥底镇',610423,4),(610423104,'王桥镇',610423,4),(610423105,'口镇',610423,4),(610423107,'三渠镇',610423,4),(610423108,'高庄镇',610423,4),(610423111,'太平镇',610423,4),(610423112,'崇文镇',610423,4),(610423113,'安吴镇',610423,4),(610423114,'兴隆镇',610423,4),(610423115,'中张镇',610423,4),(610424100,'城关镇',610424,4),(610424101,'薛录镇',610424,4),(610424102,'梁村镇',610424,4),(610424103,'临平镇',610424,4),(610424104,'姜村镇',610424,4),(610424105,'王村镇',610424,4),(610424106,'马连镇',610424,4),(610424107,'阳峪镇',610424,4),(610424108,'峰阳镇',610424,4),(610424109,'注泔镇',610424,4),(610424110,'灵源镇',610424,4),(610424111,'阳洪镇',610424,4),(610424112,'梁山镇',610424,4),(610424113,'周城镇',610424,4),(610424114,'新阳镇',610424,4),(610424115,'大杨镇',610424,4),(610425100,'城关镇',610425,4),(610425101,'史德镇',610425,4),(610425102,'西张堡镇',610425,4),(610425103,'阡东镇',610425,4),(610425104,'烽火镇',610425,4),(610425105,'烟霞镇',610425,4),(610425106,'赵镇',610425,4),(610425108,'叱干镇',610425,4),(610425109,'南坊镇',610425,4),(610425110,'石潭镇',610425,4),(610425111,'昭陵镇',610425,4),(610425112,'骏马镇',610425,4),(610426100,'监军镇',610426,4),(610426101,'店头镇',610426,4),(610426102,'常宁镇',610426,4),(610426103,'仪井镇',610426,4),(610426104,'甘井镇',610426,4),(610426105,'马坊镇',610426,4),(610426106,'豆家镇',610426,4),(610426107,'御驾宫镇',610426,4),(610426108,'渠子镇',610426,4),(610426109,'永太镇',610426,4),(610426110,'永平镇',610426,4),(610427100,'城关镇',610427,4),(610427101,'北极镇',610427,4),(610427102,'新民镇',610427,4),(610427103,'龙高镇',610427,4),(610427104,'小章镇',610427,4),(610427105,'永乐镇',610427,4),(610427106,'义门镇',610427,4),(610427107,'水口镇',610427,4),(610427108,'韩家镇',610427,4),(610427109,'太峪镇',610427,4),(610427110,'香庙镇',610427,4),(610427111,'炭店镇',610427,4),(610427112,'底店镇',610427,4),(610428100,'昭仁镇',610428,4),(610428101,'相公镇',610428,4),(610428102,'巨家镇',610428,4),(610428103,'丁家镇',610428,4),(610428104,'洪家镇',610428,4),(610428105,'亭口镇',610428,4),(610428106,'彭公镇',610428,4),(610428107,'地掌镇',610428,4),(610428108,'枣元镇',610428,4),(610429100,'城关镇',610429,4),(610429101,'土桥镇',610429,4),(610429102,'职田镇',610429,4),(610429103,'张洪镇',610429,4),(610429104,'太村镇',610429,4),(610429105,'郑家镇',610429,4),(610429106,'湫坡头镇',610429,4),(610429107,'底庙镇',610429,4),(610429108,'丈八寺镇',610429,4),(610429109,'马栏镇',610429,4),(610429110,'清塬镇',610429,4),(610430100,'城关镇',610430,4),(610430101,'官庄镇',610430,4),(610430102,'马家镇',610430,4),(610430103,'方里镇',610430,4),(610430104,'润镇',610430,4),(610430105,'车坞镇',610430,4),(610430106,'铁王镇',610430,4),(610430107,'石桥镇',610430,4),(610430108,'胡家庙镇',610430,4),(610430109,'十里塬镇',610430,4),(610430110,'固贤镇',610430,4),(610430111,'卜家镇',610430,4),(610431100,'普集镇',610431,4),(610431101,'苏坊镇',610431,4),(610431102,'武功镇',610431,4),(610431103,'游风镇',610431,4),(610431104,'贞元镇',610431,4),(610431105,'长宁镇',610431,4),(610431106,'小村镇',610431,4),(610431107,'大庄镇',610431,4),(610481001,'东城街道',610481,4),(610481002,'西城街道',610481,4),(610481003,'店张街道',610481,4),(610481004,'西吴街道',610481,4),(610481005,'马嵬街道',610481,4),(610481101,'赵村镇',610481,4),(610481102,'桑镇',610481,4),(610481104,'南市镇',610481,4),(610481105,'庄头镇',610481,4),(610481106,'南位镇',610481,4),(610481107,'阜寨镇',610481,4),(610481108,'丰仪镇',610481,4),(610481109,'汤坊镇',610481,4),(610502001,'杜桥街道',610502,4),(610502002,'人民街道',610502,4),(610502003,'解放街道',610502,4),(610502004,'向阳街道',610502,4),(610502005,'站南街道',610502,4),(610502006,'双王街道',610502,4),(610502007,'良田街道',610502,4),(610502008,'崇业路街道',610502,4),(610502100,'桥南镇',610502,4),(610502101,'阳郭镇',610502,4),(610502102,'故市镇',610502,4),(610502103,'下邽镇',610502,4),(610502104,'三张镇',610502,4),(610502105,'交斜镇',610502,4),(610502106,'辛市镇',610502,4),(610502107,'崇宁镇',610502,4),(610502108,'孝义镇',610502,4),(610502109,'吝店镇',610502,4),(610502111,'官底镇',610502,4),(610502112,'官路镇',610502,4),(610502113,'丰原镇',610502,4),(610502114,'阎村镇',610502,4),(610502115,'龙背镇',610502,4),(610502116,'官道镇',610502,4),(610521100,'华州镇',610521,4),(610521101,'杏林镇',610521,4),(610521102,'赤水镇',610521,4),(610521103,'高塘镇',610521,4),(610521104,'大明镇',610521,4),(610521105,'瓜坡镇',610521,4),(610521106,'莲花寺镇',610521,4),(610521107,'柳枝镇',610521,4),(610521108,'下庙镇',610521,4),(610521109,'金堆镇',610521,4),(610522100,'城关镇',610522,4),(610522101,'秦东镇',610522,4),(610522102,'太要镇',610522,4),(610522103,'桐峪镇',610522,4),(610522104,'代字营镇',610522,4),(610522105,'安乐镇',610522,4),(610523100,'城关镇',610523,4),(610523101,'许庄镇',610523,4),(610523102,'朝邑镇',610523,4),(610523103,'安仁镇',610523,4),(610523104,'两宜镇',610523,4),(610523105,'羌白镇',610523,4),(610523106,'官池镇',610523,4),(610523107,'冯村镇',610523,4),(610523108,'双泉镇',610523,4),(610523109,'高明镇',610523,4),(610523110,'下寨镇',610523,4),(610523111,'韦林镇',610523,4),(610523112,'范家镇',610523,4),(610523113,'苏村镇',610523,4),(610523114,'赵渡镇',610523,4),(610523115,'平民镇',610523,4),(610523116,'埝桥镇',610523,4),(610523117,'段家镇',610523,4),(610523400,'国营陕西荔北企业公司',610523,4),(610523401,'国营陕西沙苑企业公司',610523,4),(610523402,'国营陕西黄河企业公司',610523,4),(610524100,'城关镇',610524,4),(610524101,'甘井镇',610524,4),(610524102,'坊镇',610524,4),(610524103,'洽川镇',610524,4),(610524104,'新池镇',610524,4),(610524105,'黑池镇',610524,4),(610524106,'路井镇',610524,4),(610524107,'和家庄镇',610524,4),(610524108,'王村镇',610524,4),(610524110,'同家庄镇',610524,4),(610524111,'百良镇',610524,4),(610524112,'金峪镇',610524,4),(610525100,'城关镇',610525,4),(610525101,'冯原镇',610525,4),(610525102,'王庄镇',610525,4),(610525103,'尧头镇',610525,4),(610525104,'赵庄镇',610525,4),(610525105,'交道镇',610525,4),(610525106,'寺前镇',610525,4),(610525107,'韦庄镇',610525,4),(610525108,'安里镇',610525,4),(610525109,'庄头镇',610525,4),(610526100,'城关镇',610526,4),(610526101,'罕井镇',610526,4),(610526102,'孙镇',610526,4),(610526103,'兴镇',610526,4),(610526104,'党睦镇',610526,4),(610526105,'高阳镇',610526,4),(610526106,'永丰镇',610526,4),(610526107,'荆姚镇',610526,4),(610526108,'苏坊镇',610526,4),(610526109,'龙阳镇',610526,4),(610526112,'洛滨镇',610526,4),(610526113,'陈庄镇',610526,4),(610526114,'桥陵镇',610526,4),(610526115,'上王镇',610526,4),(610526116,'翔村镇',610526,4),(610526117,'椿林镇',610526,4),(610526118,'龙池镇',610526,4),(610527100,'城关镇',610527,4),(610527101,'冯雷镇',610527,4),(610527102,'尧禾镇',610527,4),(610527103,'杜康镇',610527,4),(610527104,'西固镇',610527,4),(610527105,'林皋镇',610527,4),(610527106,'史官镇',610527,4),(610527107,'北塬镇',610527,4),(610527108,'云台镇',610527,4),(610527109,'雷牙镇',610527,4),(610528101,'庄里镇',610528,4),(610528102,'张桥镇',610528,4),(610528103,'美原镇',610528,4),(610528104,'流曲镇',610528,4),(610528105,'淡村镇',610528,4),(610528106,'王寮镇',610528,4),(610528107,'留古镇',610528,4),(610528108,'老庙镇',610528,4),(610528109,'薛镇',610528,4),(610528110,'到贤镇',610528,4),(610528111,'曹村镇',610528,4),(610528112,'宫里镇',610528,4),(610528113,'梅家坪镇',610528,4),(610528114,'刘集镇',610528,4),(610528115,'齐村镇',610528,4),(610528116,'城关镇',610528,4),(610528117,'小惠镇',610528,4),(610581001,'新城街道',610581,4),(610581002,'金城街道',610581,4),(610581100,'龙门镇',610581,4),(610581101,'桑树坪镇',610581,4),(610581102,'龙亭镇',610581,4),(610581103,'芝川镇',610581,4),(610581104,'西庄镇',610581,4),(610581105,'昝村镇',610581,4),(610581106,'芝阳镇',610581,4),(610581107,'板桥镇',610581,4),(610581108,'王峰镇',610581,4),(610581109,'嵬东镇',610581,4),(610582001,'太华路街道',610582,4),(610582002,'岳庙街道',610582,4),(610582100,'孟塬镇',610582,4),(610582103,'华西镇',610582,4),(610582104,'罗敷镇',610582,4),(610582105,'华山镇',610582,4),(610582400,'国营陕西华山企业公司',610582,4),(610602001,'宝塔山街道',610602,4),(610602002,'南市街道',610602,4),(610602003,'凤凰山街道',610602,4),(610602100,'桥沟镇',610602,4),(610602101,'枣园镇',610602,4),(610602102,'河庄坪镇',610602,4),(610602103,'李渠镇',610602,4),(610602104,'姚店镇',610602,4),(610602105,'青化砭镇',610602,4),(610602106,'蟠龙镇',610602,4),(610602107,'柳林镇',610602,4),(610602108,'南泥湾镇',610602,4),(610602109,'临镇',610602,4),(610602110,'甘谷驿镇',610602,4),(610602200,'川口乡',610602,4),(610602202,'冯庄乡',610602,4),(610602204,'梁村乡',610602,4),(610602205,'麻洞川乡',610602,4),(610602208,'万花山乡',610602,4),(610621100,'七里村镇',610621,4),(610621101,'黑家堡镇',610621,4),(610621102,'郑庄镇',610621,4),(610621103,'张家滩镇',610621,4),(610621104,'交口镇',610621,4),(610621106,'雷赤镇',610621,4),(610621107,'罗子山镇',610621,4),(610621200,'郭旗乡',610621,4),(610621202,'安沟乡',610621,4),(610622100,'延川镇',610622,4),(610622101,'永坪镇',610622,4),(610622102,'延水关镇',610622,4),(610622103,'文安驿镇',610622,4),(610622104,'杨家圪台镇',610622,4),(610622105,'贾家坪镇',610622,4),(610622106,'禹居镇',610622,4),(610622107,'关庄镇',610622,4),(610622203,'马家河乡',610622,4),(610622205,'土岗乡',610622,4),(610623100,'瓦窑堡镇',610623,4),(610623101,'杨家园子镇',610623,4),(610623102,'玉家湾镇',610623,4),(610623103,'安定镇',610623,4),(610623104,'马家砭镇',610623,4),(610623105,'南沟岔镇',610623,4),(610623106,'涧峪岔镇',610623,4),(610623107,'李家岔镇',610623,4),(610623108,'余家坪镇',610623,4),(610623201,'史家畔乡',610623,4),(610624100,'真武洞镇',610624,4),(610624101,'砖窑湾镇',610624,4),(610624102,'沿河湾镇',610624,4),(610624103,'招安镇',610624,4),(610624104,'化子坪镇',610624,4),(610624105,'坪桥镇',610624,4),(610624106,'建华镇',610624,4),(610624107,'高桥镇',610624,4),(610624203,'镰刀湾乡',610624,4),(610625100,'保安镇',610625,4),(610625101,'杏河镇',610625,4),(610625102,'顺宁镇',610625,4),(610625103,'旦八镇',610625,4),(610625104,'金丁镇',610625,4),(610625105,'永宁镇',610625,4),(610625106,'义正镇',610625,4),(610625200,'双河乡',610625,4),(610626100,'吴起镇',610626,4),(610626101,'铁边城镇',610626,4),(610626102,'周湾镇',610626,4),(610626103,'白豹镇',610626,4),(610626104,'长官庙镇',610626,4),(610626105,'长城镇',610626,4),(610626200,'吴仓堡乡',610626,4),(610626203,'庙沟乡',610626,4),(610626205,'五谷城乡',610626,4),(610627100,'城关镇',610627,4),(610627101,'下寺湾镇',610627,4),(610627102,'道镇',610627,4),(610627200,'桥镇乡',610627,4),(610627201,'石门乡',610627,4),(610627203,'劳山乡',610627,4),(610628101,'羊泉镇',610628,4),(610628102,'张村驿镇',610628,4),(610628103,'张家湾镇',610628,4),(610628104,'直罗镇',610628,4),(610628105,'茶坊镇',610628,4),(610628106,'牛武镇',610628,4),(610628107,'交道镇',610628,4),(610628108,'吉子现镇',610628,4),(610628109,'寺仙镇',610628,4),(610628204,'北道德乡',610628,4),(610629100,'凤栖镇',610629,4),(610629101,'旧县镇',610629,4),(610629102,'交口河镇',610629,4),(610629103,'老庙镇',610629,4),(610629104,'土基镇',610629,4),(610629105,'石头镇',610629,4),(610629106,'槐柏镇',610629,4),(610629200,'菩堤乡',610629,4),(610629201,'黄章乡',610629,4),(610629202,'永乡',610629,4),(610629204,'杨舒乡',610629,4),(610629208,'朱牛乡',610629,4),(610630100,'丹州镇',610630,4),(610630101,'秋林镇',610630,4),(610630102,'云岩镇',610630,4),(610630103,'阁楼镇',610630,4),(610630104,'集义镇',610630,4),(610630105,'壶口镇',610630,4),(610630200,'英旺乡',610630,4),(610630201,'交里乡',610630,4),(610630202,'牛家细乡',610630,4),(610631100,'石堡镇',610631,4),(610631101,'白马滩镇',610631,4),(610631102,'瓦子街镇',610631,4),(610631106,'界头庙镇',610631,4),(610631200,'三岔乡',610631,4),(610631205,'圪台乡',610631,4),(610631206,'崾先乡',610631,4),(610632100,'桥山镇',610632,4),(610632101,'店头镇',610632,4),(610632102,'隆坊镇',610632,4),(610632103,'田庄镇',610632,4),(610632104,'阿党镇',610632,4),(610632105,'双龙镇',610632,4),(610632202,'仓村乡',610632,4),(610702001,'北关街道',610702,4),(610702002,'东大街街道',610702,4),(610702003,'汉中路街道',610702,4),(610702004,'中山街街道',610702,4),(610702005,'东关街道',610702,4),(610702006,'鑫源街道',610702,4),(610702008,'七里街道',610702,4),(610702009,'龙江街道',610702,4),(610702100,'铺镇',610702,4),(610702101,'武乡镇',610702,4),(610702102,'河东店镇',610702,4),(610702104,'宗营镇',610702,4),(610702105,'老君镇',610702,4),(610702106,'汉王镇',610702,4),(610702107,'徐望镇',610702,4),(610721100,'汉山镇',610721,4),(610721101,'圣水镇',610721,4),(610721102,'大河坎镇',610721,4),(610721103,'协税镇',610721,4),(610721104,'梁山镇',610721,4),(610721105,'阳春镇',610721,4),(610721106,'高台镇',610721,4),(610721107,'新集镇',610721,4),(610721108,'濂水镇',610721,4),(610721109,'黄官镇',610721,4),(610721110,'青树镇',610721,4),(610721111,'红庙镇',610721,4),(610721112,'牟家坝镇',610721,4),(610721113,'法镇',610721,4),(610721114,'湘水镇',610721,4),(610721115,'小南海镇',610721,4),(610721116,'碑坝镇',610721,4),(610721117,'黎坪镇',610721,4),(610721118,'福成镇',610721,4),(610721119,'两河镇',610721,4),(610721120,'胡家营镇',610721,4),(610721121,'忍水镇',610721,4),(610722100,'博望镇',610722,4),(610722101,'龙头镇',610722,4),(610722102,'沙河营镇',610722,4),(610722103,'文川镇',610722,4),(610722104,'柳林镇',610722,4),(610722105,'老庄镇',610722,4),(610722106,'崔家山镇',610722,4),(610722107,'桔园镇',610722,4),(610722108,'原公镇',610722,4),(610722109,'上元观镇',610722,4),(610722110,'天明镇',610722,4),(610722111,'二里镇',610722,4),(610722112,'五堵镇',610722,4),(610722114,'双溪镇',610722,4),(610722116,'小河镇',610722,4),(610722118,'五郎庙镇',610722,4),(610722119,'董家营镇',610722,4),(610722120,'三合镇',610722,4),(610722400,'陕西飞机制造公司',610722,4),(610723100,'洋州镇',610723,4),(610723101,'戚氏镇',610723,4),(610723103,'龙亭镇',610723,4),(610723104,'谢村镇',610723,4),(610723105,'马畅镇',610723,4),(610723107,'溢水镇',610723,4),(610723108,'磨子桥镇',610723,4),(610723109,'黄家营镇',610723,4),(610723110,'黄安镇',610723,4),(610723111,'黄金峡镇',610723,4),(610723112,'槐树关镇',610723,4),(610723113,'金水镇',610723,4),(610723114,'华阳镇',610723,4),(610723115,'茅坪镇',610723,4),(610723116,'白石镇',610723,4),(610723117,'四郎镇',610723,4),(610723118,'长溪镇',610723,4),(610723119,'八里关镇',610723,4),(610723120,'桑溪镇',610723,4),(610723121,'关帝镇',610723,4),(610724100,'城关镇',610724,4),(610724101,'杨河镇',610724,4),(610724102,'柳树镇',610724,4),(610724103,'沙河镇',610724,4),(610724104,'私渡镇',610724,4),(610724105,'桑园镇',610724,4),(610724106,'白龙塘镇',610724,4),(610724108,'峡口镇',610724,4),(610724109,'堰口镇',610724,4),(610724110,'茶镇',610724,4),(610724111,'高川镇',610724,4),(610724112,'两河口镇',610724,4),(610724113,'五里坝镇',610724,4),(610724114,'大河镇',610724,4),(610724115,'罗镇',610724,4),(610724116,'骆家坝镇',610724,4),(610724117,'子午镇',610724,4),(610724118,'白勉峡镇',610724,4),(610725100,'勉阳镇',610725,4),(610725101,'武侯镇',610725,4),(610725102,'周家山镇',610725,4),(610725103,'同沟寺镇',610725,4),(610725105,'新街子镇',610725,4),(610725106,'老道寺镇',610725,4),(610725107,'褒城镇',610725,4),(610725109,'金泉镇',610725,4),(610725110,'定军山镇',610725,4),(610725111,'温泉镇',610725,4),(610725112,'元墩镇',610725,4),(610725113,'阜川镇',610725,4),(610725114,'新铺镇',610725,4),(610725115,'青羊驿镇',610725,4),(610725116,'茶店镇',610725,4),(610725117,'镇川镇',610725,4),(610725118,'漆树坝镇',610725,4),(610725119,'张家河镇',610725,4),(610725120,'长沟河镇',610725,4),(610726100,'汉源镇',610726,4),(610726101,'高寨子镇',610726,4),(610726102,'大安镇',610726,4),(610726103,'代家坝镇',610726,4),(610726104,'阳平关镇',610726,4),(610726105,'燕子砭镇',610726,4),(610726106,'广坪镇',610726,4),(610726107,'青木川镇',610726,4),(610726108,'毛坝河镇',610726,4),(610726109,'铁锁关镇',610726,4),(610726110,'胡家坝镇',610726,4),(610726111,'巴山镇',610726,4),(610726112,'巨亭镇',610726,4),(610726113,'舒家坝镇',610726,4),(610726114,'庙坝镇',610726,4),(610726115,'巩家河镇',610726,4),(610726116,'太阳岭镇',610726,4),(610726117,'苍社镇',610726,4),(610726118,'安乐河镇',610726,4),(610726119,'二郎坝镇',610726,4),(610726120,'禅家岩镇',610726,4),(610727100,'城关镇',610727,4),(610727101,'接官亭镇',610727,4),(610727102,'横现河镇',610727,4),(610727103,'两河口镇',610727,4),(610727104,'金家河镇',610727,4),(610727105,'徐家坪镇',610727,4),(610727106,'白水江镇',610727,4),(610727107,'硖口驿镇',610727,4),(610727108,'何家岩镇',610727,4),(610727109,'乐素河镇',610727,4),(610727110,'郭镇',610727,4),(610727111,'黑河镇',610727,4),(610727112,'白雀寺镇',610727,4),(610727113,'西淮坝镇',610727,4),(610727114,'五龙洞镇',610727,4),(610727115,'观音寺镇',610727,4),(610727116,'马蹄湾镇',610727,4),(610727117,'仙台坝镇',610727,4),(610728100,'泾洋镇',610728,4),(610728101,'渔渡镇',610728,4),(610728102,'盐场镇',610728,4),(610728103,'观音镇',610728,4),(610728104,'巴庙镇',610728,4),(610728105,'兴隆镇',610728,4),(610728106,'长岭镇',610728,4),(610728107,'三元镇',610728,4),(610728108,'简池镇',610728,4),(610728109,'碾子镇',610728,4),(610728110,'小洋镇',610728,4),(610728111,'青水镇',610728,4),(610728112,'赤南镇',610728,4),(610728113,'平安镇',610728,4),(610728114,'杨家河镇',610728,4),(610728115,'巴山镇',610728,4),(610728116,'黎坝镇',610728,4),(610728117,'仁村镇',610728,4),(610728118,'大池镇',610728,4),(610728119,'三溪镇',610728,4),(610728120,'永乐镇',610728,4),(610729100,'城关镇',610729,4),(610729101,'马道镇',610729,4),(610729102,'武关驿镇',610729,4),(610729103,'留侯镇',610729,4),(610729104,'江口镇',610729,4),(610729105,'玉皇庙镇',610729,4),(610729106,'火烧店镇',610729,4),(610729107,'青桥驿镇',610729,4),(610730100,'袁家庄镇',610730,4),(610730101,'陈家坝镇',610730,4),(610730102,'大河坝镇',610730,4),(610730103,'西岔河镇',610730,4),(610730104,'岳坝镇',610730,4),(610730105,'长角坝镇',610730,4),(610730106,'石墩河镇',610730,4),(610730107,'十亩地镇',610730,4),(610802001,'鼓楼街道',610802,4),(610802002,'青山路街道',610802,4),(610802003,'上郡路街道',610802,4),(610802004,'新明楼街道',610802,4),(610802005,'驼峰路街道',610802,4),(610802006,'崇文路街道',610802,4),(610802007,'航宇路街道',610802,4),(610802100,'鱼河镇',610802,4),(610802101,'上盐湾镇',610802,4),(610802102,'镇川镇',610802,4),(610802103,'清泉镇',610802,4),(610802105,'麻黄梁镇',610802,4),(610802106,'牛家梁镇',610802,4),(610802107,'金鸡滩镇',610802,4),(610802108,'马合镇',610802,4),(610802109,'巴拉素镇',610802,4),(610802110,'榆阳镇',610802,4),(610802111,'鱼河峁镇',610802,4),(610802112,'青云镇',610802,4),(610802113,'古塔镇',610802,4),(610802114,'大河塔镇',610802,4),(610802205,'孟家湾乡',610802,4),(610802206,'小壕兔乡',610802,4),(610802207,'岔河则乡',610802,4),(610802208,'补浪河乡',610802,4),(610802209,'红石桥乡',610802,4),(610802210,'小纪汗乡',610802,4),(610802211,'芹河乡',610802,4),(610821100,'神木镇',610821,4),(610821101,'高家堡镇',610821,4),(610821102,'店塔镇',610821,4),(610821103,'孙家岔镇',610821,4),(610821104,'大柳塔镇',610821,4),(610821105,'花石崖镇',610821,4),(610821106,'中鸡镇',610821,4),(610821107,'贺家川镇',610821,4),(610821108,'尔林兔镇',610821,4),(610821109,'万镇',610821,4),(610821110,'大保当镇',610821,4),(610821111,'马镇',610821,4),(610821112,'栏杆堡镇',610821,4),(610821113,'沙峁镇',610821,4),(610821114,'锦界镇',610821,4),(610822100,'府谷镇',610822,4),(610822101,'黄甫镇',610822,4),(610822102,'麻镇',610822,4),(610822103,'哈镇',610822,4),(610822104,'庙沟门镇',610822,4),(610822105,'新民镇',610822,4),(610822106,'孤山镇',610822,4),(610822107,'清水镇',610822,4),(610822108,'大昌汗镇',610822,4),(610822109,'古城镇',610822,4),(610822110,'三道沟镇',610822,4),(610822111,'老高川镇',610822,4),(610822112,'武家庄镇',610822,4),(610822113,'木瓜镇',610822,4),(610822114,'田家寨镇',610822,4),(610823100,'横山镇',610823,4),(610823101,'石湾镇',610823,4),(610823102,'高镇',610823,4),(610823103,'武镇',610823,4),(610823104,'党岔镇',610823,4),(610823105,'响水镇',610823,4),(610823106,'波罗镇',610823,4),(610823107,'殿市镇',610823,4),(610823108,'塔湾镇',610823,4),(610823109,'赵石畔镇',610823,4),(610823110,'魏家楼镇',610823,4),(610823111,'韩岔镇',610823,4),(610823203,'白界乡',610823,4),(610823207,'雷龙湾乡',610823,4),(610824100,'张家畔镇',610824,4),(610824101,'东坑镇',610824,4),(610824102,'青阳岔镇',610824,4),(610824103,'宁条梁镇',610824,4),(610824104,'周河镇',610824,4),(610824105,'红墩界镇',610824,4),(610824106,'杨桥畔镇',610824,4),(610824107,'王渠则镇',610824,4),(610824108,'中山涧镇',610824,4),(610824109,'杨米涧镇',610824,4),(610824110,'天赐湾镇',610824,4),(610824200,'龙洲乡',610824,4),(610824201,'海则滩乡',610824,4),(610824202,'黄蒿界乡',610824,4),(610824203,'席麻湾乡',610824,4),(610824206,'小河乡',610824,4),(610824212,'镇靖乡',610824,4),(610825100,'定边镇',610825,4),(610825101,'贺圈镇',610825,4),(610825102,'红柳沟镇',610825,4),(610825103,'砖井镇',610825,4),(610825104,'白泥井镇',610825,4),(610825105,'安边镇',610825,4),(610825106,'堆子梁镇',610825,4),(610825107,'白湾子镇',610825,4),(610825108,'姬塬镇',610825,4),(610825109,'杨井镇',610825,4),(610825110,'新安边镇',610825,4),(610825111,'张崾先镇',610825,4),(610825112,'樊学镇',610825,4),(610825113,'盐场堡镇',610825,4),(610825114,'郝滩镇',610825,4),(610825202,'石洞沟乡',610825,4),(610825204,'油房庄乡',610825,4),(610825205,'纪畔乡',610825,4),(610825207,'冯地坑乡',610825,4),(610825210,'学庄乡',610825,4),(610826100,'名州镇',610826,4),(610826101,'薛家峁镇',610826,4),(610826102,'崔家湾镇',610826,4),(610826103,'定仙墕镇',610826,4),(610826104,'枣林坪镇',610826,4),(610826105,'义合镇',610826,4),(610826106,'吉镇',610826,4),(610826107,'薛家河镇',610826,4),(610826108,'四十铺镇',610826,4),(610826109,'石家湾镇',610826,4),(610826110,'田庄镇',610826,4),(610826111,'中角镇',610826,4),(610826201,'白家硷乡',610826,4),(610826206,'韭园沟乡',610826,4),(610826207,'满堂川乡',610826,4),(610826208,'张家砭乡',610826,4),(610827100,'银州镇',610827,4),(610827101,'桃镇',610827,4),(610827102,'龙镇',610827,4),(610827103,'杨家沟镇',610827,4),(610827104,'杜家石沟镇',610827,4),(610827105,'沙家店镇',610827,4),(610827106,'印斗镇',610827,4),(610827107,'郭兴庄镇',610827,4),(610827201,'桥河岔乡',610827,4),(610827204,'十里铺乡',610827,4),(610828100,'佳芦镇',610828,4),(610828101,'坑镇',610828,4),(610828102,'店镇',610828,4),(610828103,'乌镇',610828,4),(610828104,'金明寺镇',610828,4),(610828105,'通镇',610828,4),(610828106,'王家砭镇',610828,4),(610828107,'方塌镇',610828,4),(610828108,'朱家坬镇',610828,4),(610828109,'螅镇',610828,4),(610828110,'朱官寨镇',610828,4),(610828200,'刘国具乡',610828,4),(610828202,'木头峪乡',610828,4),(610828204,'大佛寺乡',610828,4),(610828205,'康家港乡',610828,4),(610828206,'上高寨乡',610828,4),(610829100,'宋家川镇',610829,4),(610829101,'辛家沟镇',610829,4),(610829102,'郭家沟镇',610829,4),(610829103,'寇家塬镇',610829,4),(610829104,'岔上镇',610829,4),(610829105,'张家山镇',610829,4),(610830100,'宽州镇',610830,4),(610830101,'石咀驿镇',610830,4),(610830102,'折家坪镇',610830,4),(610830103,'玉家河镇',610830,4),(610830104,'高杰村镇',610830,4),(610830105,'李家塔镇',610830,4),(610830106,'店则沟镇',610830,4),(610830107,'解家沟镇',610830,4),(610830202,'下廿里铺乡',610830,4),(610830203,'双庙河乡',610830,4),(610830204,'老舍窠乡',610830,4),(610830206,'石盘乡',610830,4),(610831100,'双湖峪镇',610831,4),(610831101,'何家集镇',610831,4),(610831102,'老君殿镇',610831,4),(610831103,'裴家湾镇',610831,4),(610831104,'苗家坪镇',610831,4),(610831105,'三川口镇',610831,4),(610831106,'马蹄沟镇',610831,4),(610831107,'周家硷镇',610831,4),(610831108,'电市镇',610831,4),(610831109,'砖庙镇',610831,4),(610831110,'淮宁湾镇',610831,4),(610831200,'驼耳巷乡',610831,4),(610831204,'马岔乡',610831,4),(610831205,'槐树岔乡',610831,4),(610902001,'老城街道',610902,4),(610902002,'新城街道',610902,4),(610902003,'江北街道',610902,4),(610902004,'建民办事处',610902,4),(610902100,'关庙镇',610902,4),(610902101,'张滩镇',610902,4),(610902102,'瀛湖镇',610902,4),(610902104,'五里镇',610902,4),(610902106,'大同镇',610902,4),(610902107,'恒口镇',610902,4),(610902109,'吉河镇',610902,4),(610902110,'流水镇',610902,4),(610902111,'大竹园镇',610902,4),(610902112,'洪山镇',610902,4),(610902113,'石转镇',610902,4),(610902114,'茨沟镇',610902,4),(610902115,'大河镇',610902,4),(610902116,'沈坝镇',610902,4),(610902117,'双龙镇',610902,4),(610902118,'叶坪镇',610902,4),(610902119,'中原镇',610902,4),(610902120,'县河镇',610902,4),(610902121,'紫荆镇',610902,4),(610902122,'早阳镇',610902,4),(610902123,'关家镇',610902,4),(610902124,'石梯镇',610902,4),(610902125,'坝河镇',610902,4),(610902126,'共进镇',610902,4),(610902127,'新坝镇',610902,4),(610902128,'牛蹄镇',610902,4),(610902129,'田坝镇',610902,4),(610902130,'晏坝镇',610902,4),(610902131,'双溪镇',610902,4),(610902132,'谭坝镇',610902,4),(610921100,'城关镇',610921,4),(610921101,'涧池镇',610921,4),(610921102,'蒲溪镇',610921,4),(610921103,'平梁镇',610921,4),(610921104,'双乳镇',610921,4),(610921105,'铁佛寺镇',610921,4),(610921106,'龙垭镇',610921,4),(610921107,'漩涡镇',610921,4),(610921108,'汉阳镇',610921,4),(610921109,'酒店镇',610921,4),(610921110,'双河口镇',610921,4),(610921111,'上七镇',610921,4),(610921112,'观音河镇',610921,4),(610921113,'双坪镇',610921,4),(610922100,'城关镇',610922,4),(610922101,'饶峰镇',610922,4),(610922102,'两河镇',610922,4),(610922103,'迎丰镇',610922,4),(610922104,'池河镇',610922,4),(610922105,'后柳镇',610922,4),(610922106,'喜河镇',610922,4),(610922107,'熨斗镇',610922,4),(610922108,'云雾山镇',610922,4),(610922109,'中池镇',610922,4),(610922110,'曾溪镇',610922,4),(610923100,'城关镇',610923,4),(610923101,'四亩地镇',610923,4),(610923102,'江口镇',610923,4),(610923104,'广货街镇',610923,4),(610923105,'龙王镇',610923,4),(610923106,'筒车湾镇',610923,4),(610923108,'金川镇',610923,4),(610923109,'皇冠镇',610923,4),(610923110,'太山庙镇',610923,4),(610923111,'梅子镇',610923,4),(610923112,'丰富镇',610923,4),(610923113,'新场镇',610923,4),(610924100,'城关镇',610924,4),(610924101,'蒿坪镇',610924,4),(610924102,'汉王镇',610924,4),(610924103,'焕古镇',610924,4),(610924104,'向阳镇',610924,4),(610924105,'洞河镇',610924,4),(610924106,'洄水镇',610924,4),(610924107,'斑桃镇',610924,4),(610924108,'双桥镇',610924,4),(610924109,'高桥镇',610924,4),(610924110,'红椿镇',610924,4),(610924111,'高滩镇',610924,4),(610924112,'毛坝镇',610924,4),(610924113,'瓦庙镇',610924,4),(610924114,'麻柳镇',610924,4),(610924115,'双安镇',610924,4),(610924116,'东木镇',610924,4),(610924117,'界岭镇',610924,4),(610924118,'广城镇',610924,4),(610924119,'绕溪镇',610924,4),(610924120,'联合镇',610924,4),(610925100,'城关镇',610925,4),(610925101,'佐龙镇',610925,4),(610925102,'花里镇',610925,4),(610925103,'滔河镇',610925,4),(610925104,'官元镇',610925,4),(610925105,'石门镇',610925,4),(610925106,'民主镇',610925,4),(610925107,'大道河镇',610925,4),(610925108,'铁炉镇',610925,4),(610925109,'堰门镇',610925,4),(610925110,'溢河镇',610925,4),(610925111,'蔺河镇',610925,4),(610925112,'四季镇',610925,4),(610925113,'横溪镇',610925,4),(610925114,'孟石岭镇',610925,4),(610926100,'城关镇',610926,4),(610926101,'兴隆镇',610926,4),(610926102,'老县镇',610926,4),(610926103,'大贵镇',610926,4),(610926104,'三阳镇',610926,4),(610926105,'洛河镇',610926,4),(610926106,'广佛镇',610926,4),(610926107,'八仙镇',610926,4),(610926108,'长安镇',610926,4),(610926109,'正阳镇',610926,4),(610926110,'西河镇',610926,4),(610927100,'城关镇',610927,4),(610927101,'曾家镇',610927,4),(610927102,'牛头店镇',610927,4),(610927103,'钟宝镇',610927,4),(610927104,'洪石镇',610927,4),(610927105,'上竹镇',610927,4),(610927106,'华坪镇',610927,4),(610927107,'小曙河镇',610927,4),(610927108,'曙坪镇',610927,4),(610928100,'城关镇',610928,4),(610928101,'棕溪镇',610928,4),(610928102,'关口镇',610928,4),(610928103,'蜀河镇',610928,4),(610928104,'双河镇',610928,4),(610928105,'小河镇',610928,4),(610928106,'赵湾镇',610928,4),(610928107,'麻坪镇',610928,4),(610928108,'甘溪镇',610928,4),(610928109,'白柳镇',610928,4),(610928110,'吕河镇',610928,4),(610928111,'神河镇',610928,4),(610928112,'赤岩镇',610928,4),(610928113,'段家河镇',610928,4),(610928114,'仙河镇',610928,4),(610928115,'金寨镇',610928,4),(610928116,'桐木镇',610928,4),(610928117,'构元镇',610928,4),(610928118,'石门镇',610928,4),(610928119,'红军镇',610928,4),(610928120,'仁河口镇',610928,4),(610928121,'铜钱关镇',610928,4),(610929100,'城关镇',610929,4),(610929101,'中厂镇',610929,4),(610929102,'构扒镇',610929,4),(610929103,'卡子镇',610929,4),(610929104,'茅坪镇',610929,4),(610929105,'宋家镇',610929,4),(610929106,'西营镇',610929,4),(610929107,'仓上镇',610929,4),(610929108,'冷水镇',610929,4),(610929109,'双丰镇',610929,4),(610929110,'麻虎镇',610929,4),(610929111,'小双镇',610929,4),(611002001,'城关街道',611002,4),(611002002,'大赵峪街道',611002,4),(611002003,'陈塬街道',611002,4),(611002004,'刘湾街道',611002,4),(611002101,'夜村镇',611002,4),(611002104,'沙河子镇',611002,4),(611002105,'杨峪河镇',611002,4),(611002106,'金陵寺镇',611002,4),(611002107,'黑山镇',611002,4),(611002108,'杨斜镇',611002,4),(611002109,'麻街镇',611002,4),(611002110,'黑龙口镇',611002,4),(611002111,'牧护关镇',611002,4),(611002112,'大荆镇',611002,4),(611002113,'腰市镇',611002,4),(611002114,'板桥镇',611002,4),(611002115,'北宽坪镇',611002,4),(611002116,'砚池河镇',611002,4),(611002117,'麻池河镇',611002,4),(611002118,'西荆镇',611002,4),(611002119,'三岔河镇',611002,4),(611002120,'上官坊镇',611002,4),(611002121,'闫村镇',611002,4),(611002400,'二龙山水库',611002,4),(611002401,'南秦水库',611002,4),(611002402,'二龙山国营林场',611002,4),(611002403,'商丹循环工业园',611002,4),(611002404,'荆河工业园',611002,4),(611002405,'荆河农业示范园',611002,4),(611002406,'高校园区',611002,4),(611002407,'商洛职业技术学院',611002,4),(611002408,'氟化硅产业业园',611002,4),(611021100,'城关镇',611021,4),(611021101,'景村镇',611021,4),(611021102,'古城镇',611021,4),(611021103,'三要镇',611021,4),(611021104,'灵口镇',611021,4),(611021106,'寺耳镇',611021,4),(611021107,'巡检镇',611021,4),(611021108,'石坡镇',611021,4),(611021109,'石门镇',611021,4),(611021110,'麻坪镇',611021,4),(611021111,'洛源镇',611021,4),(611021112,'保安镇',611021,4),(611021113,'卫东镇',611021,4),(611021114,'永丰镇',611021,4),(611021115,'谢湾镇',611021,4),(611021116,'四皓镇',611021,4),(611021117,'柏峪寺镇',611021,4),(611021118,'高耀镇',611021,4),(611021119,'寺坡镇',611021,4),(611022100,'龙驹寨镇',611022,4),(611022101,'庾岭镇',611022,4),(611022102,'蔡川镇',611022,4),(611022103,'峦庄镇',611022,4),(611022104,'铁峪铺镇',611022,4),(611022105,'武关镇',611022,4),(611022106,'竹林关镇',611022,4),(611022107,'土门镇',611022,4),(611022108,'寺坪镇',611022,4),(611022109,'商镇',611022,4),(611022110,'棣花镇',611022,4),(611022111,'资峪镇',611022,4),(611022112,'北赵川镇',611022,4),(611022113,'桃坪镇',611022,4),(611022114,'月日镇',611022,4),(611022115,'花瓶子镇',611022,4),(611023100,'城关镇',611023,4),(611023101,'富水镇',611023,4),(611023102,'湘河镇',611023,4),(611023103,'白浪镇',611023,4),(611023104,'赵川镇',611023,4),(611023107,'过风楼镇',611023,4),(611023108,'试马镇',611023,4),(611023109,'清油河镇',611023,4),(611023110,'十里坪镇',611023,4),(611023111,'金丝峡镇',611023,4),(611023112,'青山镇',611023,4),(611023113,'水沟镇',611023,4),(611023114,'魏家台镇',611023,4),(611024100,'城关镇',611024,4),(611024101,'高坝店镇',611024,4),(611024102,'天竺山镇',611024,4),(611024103,'中村镇',611024,4),(611024104,'银花镇',611024,4),(611024105,'西照川镇',611024,4),(611024106,'漫川关镇',611024,4),(611024107,'南宽坪镇',611024,4),(611024108,'户家塬镇',611024,4),(611024109,'杨地镇',611024,4),(611024110,'牛耳川镇',611024,4),(611024111,'小河口镇',611024,4),(611024112,'色河铺镇',611024,4),(611024113,'板岩镇',611024,4),(611024114,'元子街镇',611024,4),(611024115,'十里铺镇',611024,4),(611024116,'延坪镇',611024,4),(611024117,'两岭镇',611024,4),(611024118,'王闫镇',611024,4),(611024119,'天桥镇',611024,4),(611024120,'石佛寺镇',611024,4),(611024121,'法官镇',611024,4),(611024122,'双坪镇',611024,4),(611025100,'永乐镇',611025,4),(611025101,'回龙镇',611025,4),(611025102,'铁厂镇',611025,4),(611025103,'大坪镇',611025,4),(611025104,'米粮镇',611025,4),(611025105,'茅坪回族镇',611025,4),(611025106,'西口回族镇',611025,4),(611025107,'高峰镇',611025,4),(611025108,'青铜关镇',611025,4),(611025109,'柴坪镇',611025,4),(611025110,'达仁镇',611025,4),(611025111,'木王镇',611025,4),(611025112,'东川镇',611025,4),(611025113,'云盖寺镇',611025,4),(611025114,'庙沟镇',611025,4),(611025115,'张家镇',611025,4),(611025116,'灵龙镇',611025,4),(611025117,'月河镇',611025,4),(611025118,'杨泗镇',611025,4),(611025400,'黑窑沟林厂',611025,4),(611025401,'木王林厂',611025,4),(611025402,'镇安县苗圃',611025,4),(611026100,'乾佑镇',611026,4),(611026101,'营盘镇',611026,4),(611026102,'下梁镇',611026,4),(611026103,'石瓮镇',611026,4),(611026104,'小岭镇',611026,4),(611026105,'凤凰镇',611026,4),(611026106,'红岩寺镇',611026,4),(611026107,'曹坪镇',611026,4),(611026108,'蔡玉窑镇',611026,4),(611026109,'杏坪镇',611026,4),(611026110,'瓦房口镇',611026,4),(611026111,'柴庄镇',611026,4),(611026112,'丰北河镇',611026,4),(620102001,'酒泉路街道',620102,4),(620102002,'张掖路街道',620102,4),(620102003,'雁南街道',620102,4),(620102004,'临夏路街道',620102,4),(620102005,'雁北街道',620102,4),(620102006,'五泉街道',620102,4),(620102007,'白银路街道',620102,4),(620102008,'皋兰路街道',620102,4),(620102009,'广武门街道',620102,4),(620102010,'伏龙坪街道',620102,4),(620102011,'靖远路街道',620102,4),(620102012,'草场街街道',620102,4),(620102013,'火车站街道',620102,4),(620102014,'拱星墩街道',620102,4),(620102015,'东岗街道',620102,4),(620102016,'团结新村街道',620102,4),(620102017,'东岗西路街道',620102,4),(620102018,'铁路东村街道',620102,4),(620102019,'铁路西村街道',620102,4),(620102020,'渭源路街道',620102,4),(620102021,'盐场路街道',620102,4),(620102022,'嘉峪关路街道',620102,4),(620102023,'焦家湾街道',620102,4),(620102024,'青白石街道',620102,4),(620102400,'高新区',620102,4),(620103001,'西园街道',620103,4),(620103002,'西湖街道',620103,4),(620103003,'建兰路街道',620103,4),(620103004,'敦煌路街道',620103,4),(620103005,'西站街道',620103,4),(620103006,'晏家坪街道',620103,4),(620103007,'龚家湾街道',620103,4),(620103008,'土门墩街道',620103,4),(620103009,'秀川街道',620103,4),(620103100,'阿干镇',620103,4),(620103101,'八里镇',620103,4),(620103102,'彭家坪镇',620103,4),(620103103,'西果园镇',620103,4),(620103200,'魏岭乡',620103,4),(620103201,'黄峪乡',620103,4),(620104001,'陈坪街道',620104,4),(620104002,'先锋路街道',620104,4),(620104003,'福利路街道',620104,4),(620104004,'西固城街道',620104,4),(620104005,'四季青街道',620104,4),(620104006,'临洮街街道',620104,4),(620104007,'西柳沟街道',620104,4),(620104100,'新城镇',620104,4),(620104101,'东川镇',620104,4),(620104200,'达川乡',620104,4),(620104201,'河口乡',620104,4),(620104203,'柳泉乡',620104,4),(620104204,'金沟乡',620104,4),(620104400,'新安路街道',620104,4),(620104401,'新和路街道',620104,4),(620105001,'培黎街道',620105,4),(620105002,'西路街道',620105,4),(620105003,'沙井驿街道',620105,4),(620105004,'十里店街道',620105,4),(620105005,'孔家崖街道',620105,4),(620105006,'银滩路街道',620105,4),(620105007,'刘家堡街道',620105,4),(620105008,'安宁堡街道',620105,4),(620111001,'窑街街道',620111,4),(620111002,'下窑街道',620111,4),(620111003,'矿区街道',620111,4),(620111101,'海石湾镇',620111,4),(620111102,'花庄镇',620111,4),(620111103,'平安镇',620111,4),(620111200,'红古乡',620111,4),(620121100,'城关镇',620121,4),(620121101,'红城镇',620121,4),(620121102,'中堡镇',620121,4),(620121103,'武胜驿镇',620121,4),(620121104,'河桥镇',620121,4),(620121105,'连城镇',620121,4),(620121106,'苦水镇',620121,4),(620121107,'中川镇',620121,4),(620121108,'秦川镇',620121,4),(620121109,'大同镇',620121,4),(620121110,'龙泉寺镇',620121,4),(620121111,'树屏镇',620121,4),(620121112,'上川镇',620121,4),(620121200,'柳树乡',620121,4),(620121201,'坪城乡',620121,4),(620121202,'民乐乡',620121,4),(620121203,'通远乡',620121,4),(620121204,'七山乡',620121,4),(620122100,'石洞镇',620122,4),(620122101,'西岔镇',620122,4),(620122102,'忠和镇',620122,4),(620122103,'什川镇',620122,4),(620122104,'九合镇',620122,4),(620122200,'黑石川乡',620122,4),(620122202,'水阜乡',620122,4),(620123100,'城关镇',620123,4),(620123101,'夏官营镇',620123,4),(620123102,'高崖镇',620123,4),(620123103,'金崖镇',620123,4),(620123104,'和平镇',620123,4),(620123105,'甘草店镇',620123,4),(620123106,'青城镇',620123,4),(620123107,'定远镇',620123,4),(620123200,'来紫堡乡',620123,4),(620123201,'三角城乡',620123,4),(620123202,'小康营乡',620123,4),(620123203,'连搭乡',620123,4),(620123204,'银山乡',620123,4),(620123205,'马坡乡',620123,4),(620123206,'新营乡',620123,4),(620123207,'清水驿乡',620123,4),(620123208,'龙泉乡',620123,4),(620123209,'韦营乡',620123,4),(620123210,'中连川乡',620123,4),(620123211,'贡井乡',620123,4),(620123212,'园子岔乡',620123,4),(620123213,'上花岔乡',620123,4),(620123214,'哈岘乡',620123,4),(620302001,'滨河路街道',620302,4),(620302002,'桂林路街道',620302,4),(620302003,'北京路街道',620302,4),(620302004,'金川路街道',620302,4),(620302005,'新华路街道',620302,4),(620302006,'广州路街道',620302,4),(620302100,'宁远堡镇',620302,4),(620302101,'双湾镇',620302,4),(620321100,'城关镇',620321,4),(620321101,'河西堡镇',620321,4),(620321102,'新城子镇',620321,4),(620321103,'朱王堡镇',620321,4),(620321104,'东寨镇',620321,4),(620321105,'水源镇',620321,4),(620321200,'红山窑乡',620321,4),(620321201,'焦家庄乡',620321,4),(620321202,'六坝乡',620321,4),(620321203,'南坝乡',620321,4),(620402001,'人民路街道',620402,4),(620402002,'公园路街道',620402,4),(620402003,'四龙路街道',620402,4),(620402004,'工农路街道',620402,4),(620402005,'纺织路街道',620402,4),(620402100,'水川镇',620402,4),(620402101,'四龙镇',620402,4),(620402102,'王岘镇',620402,4),(620402201,'强湾乡',620402,4),(620402202,'武川乡',620402,4),(620403001,'长征街道',620403,4),(620403002,'电力路街道',620403,4),(620403003,'红会路街道',620403,4),(620403004,'兴平路街道',620403,4),(620403100,'王家山镇',620403,4),(620403101,'水泉镇',620403,4),(620403102,'共和镇',620403,4),(620403201,'宝积乡',620403,4),(620403202,'黄峤乡',620403,4),(620403203,'种田乡',620403,4),(620403204,'复兴乡',620403,4),(620421101,'北湾镇',620421,4),(620421102,'东湾镇',620421,4),(620421103,'乌兰镇',620421,4),(620421200,'平堡乡',620421,4),(620421202,'糜滩乡',620421,4),(620421203,'三滩乡',620421,4),(620421205,'大芦乡',620421,4),(620421206,'兴隆乡',620421,4),(620421207,'双龙乡',620421,4),(620421208,'石门乡',620421,4),(620421209,'刘川乡',620421,4),(620421210,'高湾乡',620421,4),(620421211,'靖安乡',620421,4),(620421212,'五合乡',620421,4),(620421213,'东升乡',620421,4),(620421214,'北滩乡',620421,4),(620421215,'永新乡',620421,4),(620421216,'若笠乡',620421,4),(620422100,'会师镇',620422,4),(620422101,'郭城驿镇',620422,4),(620422102,'河畔镇',620422,4),(620422103,'头寨子镇',620422,4),(620422104,'太平店镇',620422,4),(620422105,'甘沟驿镇',620422,4),(620422200,'丁家沟乡',620422,4),(620422201,'中川乡',620422,4),(620422202,'新添堡回族乡',620422,4),(620422203,'侯家川乡',620422,4),(620422204,'党家岘乡',620422,4),(620422205,'杨崖集乡',620422,4),(620422207,'老君坡乡',620422,4),(620422209,'翟家所乡',620422,4),(620422211,'柴家门乡',620422,4),(620422213,'八里湾乡',620422,4),(620422214,'平头川乡',620422,4),(620422215,'韩家集乡',620422,4),(620422217,'大沟乡',620422,4),(620422218,'四房吴乡',620422,4),(620422220,'汉家岔乡',620422,4),(620422221,'土门岘乡',620422,4),(620422222,'新塬乡',620422,4),(620422223,'刘家寨子乡',620422,4),(620422224,'草滩乡',620422,4),(620422225,'土高山乡',620422,4),(620422226,'白草塬乡',620422,4),(620422227,'新庄乡',620422,4),(620423100,'一条山镇',620423,4),(620423101,'芦阳镇',620423,4),(620423102,'上沙沃镇',620423,4),(620423103,'喜泉镇',620423,4),(620423104,'草窝滩镇',620423,4),(620423105,'红水镇',620423,4),(620423200,'中泉乡',620423,4),(620423201,'正路乡',620423,4),(620423203,'寺滩乡',620423,4),(620423205,'五佛乡',620423,4),(620423207,'漫水滩乡',620423,4),(620423400,'条山集团',620423,4),(620502001,'大城街道',620502,4),(620502002,'七里墩街道',620502,4),(620502003,'东关街道',620502,4),(620502004,'中城街道',620502,4),(620502005,'西关街道',620502,4),(620502006,'石马坪街道',620502,4),(620502007,'天水郡街道',620502,4),(620502100,'玉泉镇',620502,4),(620502101,'太京镇',620502,4),(620502102,'藉口镇',620502,4),(620502103,'皂郊镇',620502,4),(620502104,'汪川镇',620502,4),(620502105,'牡丹镇',620502,4),(620502106,'关子镇',620502,4),(620502107,'平南镇',620502,4),(620502108,'天水镇',620502,4),(620502109,'娘娘坝镇',620502,4),(620502200,'中梁乡',620502,4),(620502201,'秦岭乡',620502,4),(620502202,'杨家寺乡',620502,4),(620502203,'齐寿乡',620502,4),(620502204,'华歧乡',620502,4),(620502205,'大门乡',620502,4),(620503001,'道北街道',620503,4),(620503002,'北道埠街道',620503,4),(620503003,'桥南街道',620503,4),(620503100,'社棠镇',620503,4),(620503101,'马跑泉镇',620503,4),(620503102,'甘泉镇',620503,4),(620503103,'渭南镇',620503,4),(620503104,'东岔镇',620503,4),(620503105,'花牛镇',620503,4),(620503106,'中滩镇',620503,4),(620503107,'新阳镇',620503,4),(620503108,'元龙镇',620503,4),(620503109,'伯阳镇',620503,4),(620503110,'麦积镇',620503,4),(620503111,'石佛镇',620503,4),(620503201,'五龙乡',620503,4),(620503202,'琥珀乡',620503,4),(620503203,'党川乡',620503,4),(620503204,'利桥乡',620503,4),(620503205,'三岔乡',620503,4),(620503400,'天水经济开发区',620503,4),(620503401,'天水市高新技术工业园',620503,4),(620503402,'天水市农业高新技术示范区',620503,4),(620503403,'天水市麦积区三阳工业示范区',620503,4),(620503404,'天水市麦积区廿铺工业示范区',620503,4),(620503405,'天水市麦积区甘泉科技园区',620503,4),(620521100,'永清镇',620521,4),(620521101,'红堡镇',620521,4),(620521102,'白驼镇',620521,4),(620521103,'金集镇',620521,4),(620521104,'秦亭镇',620521,4),(620521105,'山门镇',620521,4),(620521200,'白沙乡',620521,4),(620521201,'松树乡',620521,4),(620521202,'王河乡',620521,4),(620521203,'远门乡',620521,4),(620521204,'土门乡',620521,4),(620521205,'郭川乡',620521,4),(620521206,'贾川乡',620521,4),(620521207,'丰望乡',620521,4),(620521208,'草川铺乡',620521,4),(620521209,'陇东乡',620521,4),(620521210,'黄门乡',620521,4),(620521211,'新城乡',620521,4),(620521400,'清水县科技养殖示范园区',620521,4),(620522100,'兴国镇',620522,4),(620522101,'莲花镇',620522,4),(620522102,'西川镇',620522,4),(620522103,'陇城镇',620522,4),(620522104,'郭嘉镇',620522,4),(620522200,'刘坪乡',620522,4),(620522201,'五营乡',620522,4),(620522202,'中山乡',620522,4),(620522203,'叶堡乡',620522,4),(620522204,'安伏乡',620522,4),(620522205,'魏店乡',620522,4),(620522206,'王铺乡',620522,4),(620522207,'千户乡',620522,4),(620522208,'王窑乡',620522,4),(620522209,'云山乡',620522,4),(620522210,'王尹乡',620522,4),(620522211,'兴丰乡',620522,4),(620523100,'大像山镇',620523,4),(620523101,'磐安镇',620523,4),(620523102,'新兴镇',620523,4),(620523103,'安远镇',620523,4),(620523104,'六峰镇',620523,4),(620523203,'金山乡',620523,4),(620523204,'八里湾乡',620523,4),(620523205,'西坪乡',620523,4),(620523206,'大庄乡',620523,4),(620523208,'大石乡',620523,4),(620523209,'礼辛乡',620523,4),(620523211,'谢家湾乡',620523,4),(620523213,'武家河乡',620523,4),(620523214,'古坡乡',620523,4),(620523215,'白家湾乡',620523,4),(620524100,'城关镇',620524,4),(620524101,'洛门镇',620524,4),(620524102,'鸳鸯镇',620524,4),(620524103,'滩歌镇',620524,4),(620524104,'四门镇',620524,4),(620524105,'马力镇',620524,4),(620524200,'山丹乡',620524,4),(620524201,'榆盘乡',620524,4),(620524202,'咀头乡',620524,4),(620524203,'桦林乡',620524,4),(620524204,'高楼乡',620524,4),(620524205,'杨河乡',620524,4),(620524206,'沿安乡',620524,4),(620524207,'温泉乡',620524,4),(620524208,'龙台乡',620524,4),(620525100,'张家川镇',620525,4),(620525101,'龙山镇',620525,4),(620525102,'恭门镇',620525,4),(620525201,'刘堡乡',620525,4),(620525202,'张棉乡',620525,4),(620525203,'胡川乡',620525,4),(620525204,'木河乡',620525,4),(620525206,'大阳乡',620525,4),(620525207,'川王乡',620525,4),(620525208,'马关乡',620525,4),(620525209,'连五乡',620525,4),(620525210,'梁山乡',620525,4),(620525213,'平安乡',620525,4),(620525214,'阎家乡',620525,4),(620525215,'马鹿乡',620525,4),(620602001,'东大街街道',620602,4),(620602002,'西大街街道',620602,4),(620602003,'东关街街道',620602,4),(620602004,'西关街街道',620602,4),(620602005,'火车站街街道',620602,4),(620602006,'地质新村街街道',620602,4),(620602007,'荣华街街道',620602,4),(620602008,'黄羊河街道',620602,4),(620602100,'黄羊镇',620602,4),(620602101,'武南镇',620602,4),(620602102,'清源镇',620602,4),(620602103,'永昌镇',620602,4),(620602104,'双城镇',620602,4),(620602105,'丰乐镇',620602,4),(620602106,'高坝镇',620602,4),(620602107,'金羊镇',620602,4),(620602108,'和平镇',620602,4),(620602109,'羊下坝镇',620602,4),(620602110,'中坝镇',620602,4),(620602111,'永丰镇',620602,4),(620602112,'古城镇',620602,4),(620602113,'张义镇',620602,4),(620602114,'发放镇',620602,4),(620602115,'西营镇',620602,4),(620602116,'四坝镇',620602,4),(620602117,'洪祥镇',620602,4),(620602118,'谢河镇',620602,4),(620602200,'五和乡',620602,4),(620602201,'韩佐乡',620602,4),(620602202,'松树乡',620602,4),(620602203,'大柳乡',620602,4),(620602204,'长城乡',620602,4),(620602205,'金沙乡',620602,4),(620602206,'柏树乡',620602,4),(620602207,'金塔乡',620602,4),(620602208,'下双乡',620602,4),(620602209,'九墩乡',620602,4),(620602210,'怀安乡',620602,4),(620602211,'金山乡',620602,4),(620602212,'清水乡',620602,4),(620602213,'吴家井乡',620602,4),(620602214,'新华乡',620602,4),(620602215,'康宁乡',620602,4),(620602216,'东河乡',620602,4),(620602217,'河东乡',620602,4),(620602400,'九墩滩指挥部',620602,4),(620621100,'三雷镇',620621,4),(620621101,'东坝镇',620621,4),(620621102,'泉山镇',620621,4),(620621103,'西渠镇',620621,4),(620621104,'东湖镇',620621,4),(620621105,'红沙岗镇',620621,4),(620621200,'昌宁乡',620621,4),(620621201,'蔡旗乡',620621,4),(620621202,'重兴乡',620621,4),(620621203,'薛百乡',620621,4),(620621204,'大坝乡',620621,4),(620621205,'苏武乡',620621,4),(620621206,'夹河乡',620621,4),(620621207,'大滩乡',620621,4),(620621208,'双茨科乡',620621,4),(620621209,'红沙梁乡',620621,4),(620621210,'收成乡',620621,4),(620621211,'南湖乡',620621,4),(620622100,'古浪镇',620622,4),(620622101,'泗水镇',620622,4),(620622102,'土门镇',620622,4),(620622103,'大靖镇',620622,4),(620622104,'裴家营镇',620622,4),(620622105,'海子滩镇',620622,4),(620622106,'定宁镇',620622,4),(620622107,'黄羊川镇',620622,4),(620622108,'黑松驿镇',620622,4),(620622200,'永丰滩乡',620622,4),(620622201,'黄花滩乡',620622,4),(620622202,'西靖乡',620622,4),(620622203,'民权乡',620622,4),(620622204,'直滩乡',620622,4),(620622205,'新堡乡',620622,4),(620622206,'干城乡',620622,4),(620622207,'横梁乡',620622,4),(620622208,'十八里堡乡',620622,4),(620622209,'古丰乡',620622,4),(620623100,'华藏寺镇',620623,4),(620623101,'打柴沟镇',620623,4),(620623102,'安远镇',620623,4),(620623103,'炭山岭镇',620623,4),(620623104,'哈溪镇',620623,4),(620623105,'赛什斯镇',620623,4),(620623106,'石门镇',620623,4),(620623107,'松山镇',620623,4),(620623108,'天堂镇',620623,4),(620623201,'东坪乡',620623,4),(620623202,'赛拉隆乡',620623,4),(620623203,'东大滩乡',620623,4),(620623204,'抓喜秀龙乡',620623,4),(620623205,'西大滩乡',620623,4),(620623206,'朵什乡',620623,4),(620623207,'大红沟乡',620623,4),(620623208,'毛藏乡',620623,4),(620623209,'祁连乡',620623,4),(620623210,'旦马乡',620623,4),(620623400,'天祝煤电公司',620623,4),(620623401,'天祝建材厂',620623,4),(620702001,'东街街道',620702,4),(620702002,'南街街道',620702,4),(620702003,'西街街道',620702,4),(620702004,'北街街道',620702,4),(620702005,'火车站街道',620702,4),(620702100,'梁家墩镇',620702,4),(620702101,'上秦镇',620702,4),(620702102,'大满镇',620702,4),(620702103,'沙井镇',620702,4),(620702104,'乌江镇',620702,4),(620702105,'甘浚镇',620702,4),(620702106,'新墩镇',620702,4),(620702107,'党寨镇',620702,4),(620702108,'碱滩镇',620702,4),(620702109,'三闸镇',620702,4),(620702110,'小满镇',620702,4),(620702202,'龙渠乡',620702,4),(620702203,'安阳乡',620702,4),(620702204,'花寨乡',620702,4),(620702205,'长安乡',620702,4),(620702207,'靖安乡',620702,4),(620702210,'明永乡',620702,4),(620702211,'平山湖蒙古族乡',620702,4),(620702400,'甘肃农垦张掖农场',620702,4),(620702401,'甘肃省农业科学院张掖试验场',620702,4),(620702402,'甘肃张掖工业园区',620702,4),(620702403,'张掖滨河新区',620702,4),(620721100,'红湾寺镇',620721,4),(620721101,'皇城镇',620721,4),(620721200,'马蹄藏族乡',620721,4),(620721201,'康乐乡',620721,4),(620721202,'白银蒙古族乡',620721,4),(620721203,'大河乡',620721,4),(620721204,'明花乡',620721,4),(620721205,'祁丰蔵族乡',620721,4),(620721500,'甘肃省绵羊育种场',620721,4),(620721501,'张掖宝瓶河牧场',620721,4),(620722101,'洪水镇',620722,4),(620722102,'六坝镇',620722,4),(620722103,'新天镇',620722,4),(620722104,'南古镇',620722,4),(620722105,'永固镇',620722,4),(620722106,'三堡镇',620722,4),(620722200,'南丰乡',620722,4),(620722201,'民联乡',620722,4),(620722203,'顺化乡',620722,4),(620722204,'丰乐乡',620722,4),(620722400,'民乐生态工业园区',620722,4),(620723101,'沙河镇',620723,4),(620723102,'新华镇',620723,4),(620723103,'蓼泉镇',620723,4),(620723104,'平川镇',620723,4),(620723105,'板桥镇',620723,4),(620723201,'鸭暖乡',620723,4),(620723202,'倪家营乡',620723,4),(620723500,'国营临泽农场',620723,4),(620723501,'五泉林场',620723,4),(620723502,'沙河林场',620723,4),(620723503,'小泉子治沙站',620723,4),(620723504,'园艺场',620723,4),(620723505,'良种繁殖场',620723,4),(620724100,'城关镇',620724,4),(620724101,'宣化镇',620724,4),(620724102,'南华镇',620724,4),(620724200,'巷道乡',620724,4),(620724201,'黑泉乡',620724,4),(620724202,'罗城乡',620724,4),(620724203,'合黎乡',620724,4),(620724204,'骆驼城乡',620724,4),(620724205,'新坝乡',620724,4),(620724400,'甘肃高台工业园区',620724,4),(620725101,'清泉镇',620725,4),(620725102,'位奇镇',620725,4),(620725103,'霍城镇',620725,4),(620725200,'东乐乡',620725,4),(620725201,'大马营乡',620725,4),(620725202,'陈户乡',620725,4),(620725203,'老军乡',620725,4),(620725204,'李桥乡',620725,4),(620725400,'国营山丹农场',620725,4),(620725402,'中牧公司山丹马场',620725,4),(620802001,'东关街道',620802,4),(620802002,'中街街道',620802,4),(620802003,'西郊街道',620802,4),(620802100,'四十里铺镇',620802,4),(620802101,'崆峒镇',620802,4),(620802102,'白水镇',620802,4),(620802103,'草峰镇',620802,4),(620802200,'安国乡',620802,4),(620802201,'柳湖乡',620802,4),(620802202,'花所乡',620802,4),(620802203,'索罗乡',620802,4),(620802204,'香莲乡',620802,4),(620802205,'西阳乡',620802,4),(620802206,'大秦乡',620802,4),(620802207,'白庙乡',620802,4),(620802208,'寨河乡',620802,4),(620802209,'大寨乡',620802,4),(620802210,'上杨乡',620802,4),(620802211,'麻武乡',620802,4),(620802212,'峡门乡',620802,4),(620802498,'平凉市崆峒区西郊经济开发区管理委员会',620802,4),(620802499,'甘肃平凉工业园区管理委员会',620802,4),(620821001,'街道',620821,4),(620821100,'城关镇',620821,4),(620821101,'玉都镇',620821,4),(620821102,'高平镇',620821,4),(620821103,'荔堡镇',620821,4),(620821104,'王村镇',620821,4),(620821105,'窑店镇',620821,4),(620821200,'汭丰乡',620821,4),(620821201,'罗汉洞乡',620821,4),(620821202,'泾明乡',620821,4),(620821203,'红河乡',620821,4),(620821204,'飞云乡',620821,4),(620821205,'太平乡',620821,4),(620821206,'丰台乡',620821,4),(620821207,'党原乡',620821,4),(620821400,'温泉经济开发区',620821,4),(620821500,'张老寺农场',620821,4),(620822001,'街道',620822,4),(620822100,'中台镇',620822,4),(620822101,'邵寨镇',620822,4),(620822102,'独店镇',620822,4),(620822103,'什字镇',620822,4),(620822104,'朝那镇',620822,4),(620822201,'新开乡',620822,4),(620822202,'西屯乡',620822,4),(620822203,'上良乡',620822,4),(620822204,'梁原乡',620822,4),(620822205,'龙门乡',620822,4),(620822206,'星火乡',620822,4),(620822207,'百里乡',620822,4),(620822208,'蒲窝乡',620822,4),(620822400,'万宝川农场',620822,4),(620823001,'锦屏街道',620823,4),(620823100,'锦屏镇',620823,4),(620823101,'新窑镇',620823,4),(620823200,'柏树乡',620823,4),(620823201,'黄寨乡',620823,4),(620823202,'黄花乡',620823,4),(620823203,'木林乡',620823,4),(620823400,'崇信县新窑工业园区管理委员会',620823,4),(620823401,'五举农场',620823,4),(620823402,'崇信县铜城工业园区管理委员会',620823,4),(620824001,'东华街道',620824,4),(620824100,'东华镇',620824,4),(620824101,'安口镇',620824,4),(620824102,'西华镇',620824,4),(620824103,'马峡镇',620824,4),(620824104,'策底镇',620824,4),(620824200,'上关乡',620824,4),(620824201,'神峪乡',620824,4),(620824202,'山寨乡',620824,4),(620824203,'河西乡',620824,4),(620824204,'砚峡乡',620824,4),(620824400,'石堡子开发区管委会',620824,4),(620825001,'水洛街道',620825,4),(620825100,'水洛镇',620825,4),(620825101,'南湖镇',620825,4),(620825102,'朱店镇',620825,4),(620825103,'万泉镇',620825,4),(620825104,'韩店镇',620825,4),(620825200,'岳堡乡',620825,4),(620825201,'杨河乡',620825,4),(620825202,'赵墩乡',620825,4),(620825203,'柳梁乡',620825,4),(620825205,'卧龙乡',620825,4),(620825207,'大庄乡',620825,4),(620825208,'阳川乡',620825,4),(620825211,'良邑乡',620825,4),(620825213,'通化乡',620825,4),(620825214,'永宁乡',620825,4),(620825215,'郑河乡',620825,4),(620825217,'南坪乡',620825,4),(620825219,'盘安乡',620825,4),(620826001,'城区街道',620826,4),(620826100,'城关镇',620826,4),(620826101,'威戎镇',620826,4),(620826102,'界石铺镇',620826,4),(620826103,'八里镇',620826,4),(620826104,'李店镇',620826,4),(620826200,'城川乡',620826,4),(620826201,'司桥乡',620826,4),(620826202,'曹务乡',620826,4),(620826203,'古城乡',620826,4),(620826204,'双岘乡',620826,4),(620826205,'雷大乡',620826,4),(620826206,'余湾乡',620826,4),(620826207,'仁大乡',620826,4),(620826208,'贾河乡',620826,4),(620826209,'深沟乡',620826,4),(620826210,'治平乡',620826,4),(620826211,'新店乡',620826,4),(620826212,'甘沟乡',620826,4),(620826213,'四河乡',620826,4),(620826214,'红寺乡',620826,4),(620826215,'细巷乡',620826,4),(620826216,'三合乡',620826,4),(620826217,'原安乡',620826,4),(620826218,'灵芝乡',620826,4),(620902001,'东北街街道',620902,4),(620902002,'东南街街道',620902,4),(620902003,'工业园街道',620902,4),(620902004,'新城街道',620902,4),(620902005,'西北街街道',620902,4),(620902006,'西南街街道',620902,4),(620902100,'西洞镇',620902,4),(620902101,'清水镇',620902,4),(620902102,'总寨镇',620902,4),(620902103,'金佛寺镇',620902,4),(620902104,'上坝镇',620902,4),(620902105,'三墩镇',620902,4),(620902106,'银达镇',620902,4),(620902200,'西峰乡',620902,4),(620902201,'泉湖乡',620902,4),(620902202,'果园乡',620902,4),(620902205,'下河清乡',620902,4),(620902207,'黄泥堡乡',620902,4),(620902208,'铧尖乡',620902,4),(620902209,'东洞乡',620902,4),(620902211,'丰乐乡',620902,4),(620902401,'国营下河清农场',620902,4),(620902402,'玉门油田生活基地街道',620902,4),(620902403,'酒泉经济技术开发区',620902,4),(620902404,'十号基地',620902,4),(620921100,'中东镇',620921,4),(620921101,'鼎新镇',620921,4),(620921102,'金塔镇',620921,4),(620921103,'东坝镇',620921,4),(620921105,'航天镇',620921,4),(620921203,'大庄子乡',620921,4),(620921204,'古城乡',620921,4),(620921205,'西坝乡',620921,4),(620921209,'羊井子湾乡',620921,4),(620921400,'甘肃亚盛农工商集团有限责任公司',620921,4),(620921401,'工业园区管委会',620921,4),(620921402,'农林场站',620921,4),(620921403,'三合乡',620921,4),(620921404,'城市社区管理委员会',620921,4),(620922100,'渊泉镇',620922,4),(620922101,'柳园镇',620922,4),(620922102,'三道沟镇',620922,4),(620922103,'南岔镇',620922,4),(620922104,'锁阳城镇',620922,4),(620922200,'河东乡',620922,4),(620922201,'布隆吉乡',620922,4),(620922203,'西湖乡',620922,4),(620922204,'瓜州乡',620922,4),(620922209,'腰站子东乡族乡',620922,4),(620922212,'七墩回族东乡族乡',620922,4),(620922213,'双塔乡',620922,4),(620922214,'广至藏族乡',620922,4),(620922215,'沙河回族乡',620922,4),(620922216,'梁湖乡',620922,4),(620922400,'国营小宛农场',620922,4),(620923100,'党城湾镇',620923,4),(620923101,'马鬃山镇',620923,4),(620923201,'盐池湾乡',620923,4),(620923202,'石包城乡',620923,4),(620924100,'红柳湾镇',620924,4),(620924200,'阿克旗乡',620924,4),(620924203,'阿勒腾乡',620924,4),(620981001,'老市区管理委员会',620981,4),(620981002,'新市区街道',620981,4),(620981003,'东镇街道',620981,4),(620981101,'玉门镇',620981,4),(620981102,'赤金镇',620981,4),(620981103,'花海镇',620981,4),(620981200,'下西号乡',620981,4),(620981201,'玉门市黄闸湾乡',620981,4),(620981202,'柳河乡',620981,4),(620981203,'昌马乡',620981,4),(620981205,'清泉乡',620981,4),(620981206,'小金湾乡',620981,4),(620981207,'柳湖乡',620981,4),(620981208,'独山子乡',620981,4),(620981209,'六墩乡',620981,4),(620981400,'国营饮马农场',620981,4),(620981401,'国营黄花农场',620981,4),(620981402,'甘肃农垦裕盛农业公司',620981,4),(620981403,'甘肃省农垦建筑工程公司',620981,4),(620981404,'甘肃矿区',620981,4),(620982100,'七里镇',620982,4),(620982101,'沙州镇',620982,4),(620982102,'肃州镇',620982,4),(620982103,'莫高镇',620982,4),(620982104,'转渠口镇',620982,4),(620982105,'阳关镇',620982,4),(620982106,'月牙泉镇',620982,4),(620982201,'郭家堡乡',620982,4),(620982204,'黄渠乡',620982,4),(620982400,'国营敦煌农场',620982,4),(620982401,'青海石油管理局生活基地',620982,4),(621002001,'北街办事处',621002,4),(621002002,'南街办事处',621002,4),(621002003,'西街办事处',621002,4),(621002100,'肖金镇',621002,4),(621002101,'董志镇',621002,4),(621002200,'后官寨乡',621002,4),(621002201,'彭原乡',621002,4),(621002202,'温泉乡',621002,4),(621002203,'什社乡',621002,4),(621002204,'显胜乡',621002,4),(621021100,'庆城镇',621021,4),(621021101,'驿马镇',621021,4),(621021102,'三十里铺镇',621021,4),(621021103,'马岭镇',621021,4),(621021104,'玄马镇',621021,4),(621021200,'赤城乡',621021,4),(621021201,'白马铺乡',621021,4),(621021202,'桐川乡',621021,4),(621021203,'太白梁乡',621021,4),(621021204,'土桥乡',621021,4),(621021205,'蔡口集乡',621021,4),(621021206,'高楼乡',621021,4),(621021207,'南庄乡',621021,4),(621021208,'翟家河乡',621021,4),(621021209,'蔡家庙乡',621021,4),(621022100,'环城镇',621022,4),(621022101,'曲子镇',621022,4),(621022102,'甜水镇',621022,4),(621022103,'木钵镇',621022,4),(621022200,'天池乡',621022,4),(621022201,'演武乡',621022,4),(621022202,'合道乡',621022,4),(621022203,'樊家川乡',621022,4),(621022204,'八珠乡',621022,4),(621022205,'洪德乡',621022,4),(621022206,'耿湾乡',621022,4),(621022207,'秦团庄乡',621022,4),(621022208,'山城乡',621022,4),(621022209,'南湫乡',621022,4),(621022210,'罗山川乡',621022,4),(621022211,'虎洞乡',621022,4),(621022212,'小南沟乡',621022,4),(621022213,'车道乡',621022,4),(621022214,'毛井乡',621022,4),(621022215,'芦家湾乡',621022,4),(621022500,'四合原旅游开发办公室',621022,4),(621023100,'悦乐镇',621023,4),(621023101,'柔远镇',621023,4),(621023102,'元城镇',621023,4),(621023103,'南梁镇',621023,4),(621023200,'城壕乡',621023,4),(621023201,'五蛟乡',621023,4),(621023202,'上里塬乡',621023,4),(621023203,'王咀子乡',621023,4),(621023204,'白马乡',621023,4),(621023205,'怀安乡',621023,4),(621023206,'乔川乡',621023,4),(621023207,'乔河乡',621023,4),(621023208,'山庄乡',621023,4),(621023210,'林镇乡',621023,4),(621023211,'紫坊畔乡',621023,4),(621024100,'西华池镇',621024,4),(621024101,'老城镇',621024,4),(621024102,'太白镇',621024,4),(621024200,'吉岘乡',621024,4),(621024201,'肖咀乡',621024,4),(621024202,'段家集乡',621024,4),(621024203,'固城乡',621024,4),(621024204,'太莪乡',621024,4),(621024205,'店子乡',621024,4),(621024206,'何家畔乡',621024,4),(621024207,'板桥乡',621024,4),(621024208,'蒿咀铺乡',621024,4),(621025100,'山河镇',621025,4),(621025101,'榆林子镇',621025,4),(621025102,'宫河镇',621025,4),(621025103,'永和镇',621025,4),(621025200,'西坡乡',621025,4),(621025201,'永正乡',621025,4),(621025202,'周家乡',621025,4),(621025203,'湫头乡',621025,4),(621025204,'五顷原乡',621025,4),(621025205,'三嘉乡',621025,4),(621026100,'新宁镇',621026,4),(621026101,'平子镇',621026,4),(621026102,'早胜镇',621026,4),(621026103,'长庆桥镇',621026,4),(621026104,'和盛镇',621026,4),(621026105,'湘乐镇',621026,4),(621026106,'新庄镇',621026,4),(621026107,'盘克镇',621026,4),(621026200,'米桥乡',621026,4),(621026201,'良平乡',621026,4),(621026202,'中村乡',621026,4),(621026203,'太昌乡',621026,4),(621026204,'焦村乡',621026,4),(621026205,'南义乡',621026,4),(621026206,'瓦斜乡',621026,4),(621026207,'金村乡',621026,4),(621026208,'九岘乡',621026,4),(621026209,'春荣乡',621026,4),(621027100,'城关镇',621027,4),(621027101,'屯字镇',621027,4),(621027102,'孟坝镇',621027,4),(621027103,'三岔镇',621027,4),(621027104,'平泉镇',621027,4),(621027105,'开边镇',621027,4),(621027106,'太平镇',621027,4),(621027200,'临泾乡',621027,4),(621027201,'南川乡',621027,4),(621027202,'上肖乡',621027,4),(621027203,'新集乡',621027,4),(621027204,'方山乡',621027,4),(621027205,'殷家城乡',621027,4),(621027206,'马渠乡',621027,4),(621027207,'庙渠乡',621027,4),(621027208,'武沟乡',621027,4),(621027209,'郭原乡',621027,4),(621027210,'中原乡',621027,4),(621027211,'新城乡',621027,4),(621102001,'中华路街道',621102,4),(621102002,'永定路街道',621102,4),(621102101,'凤翔镇',621102,4),(621102102,'内官镇',621102,4),(621102103,'馋口镇',621102,4),(621102104,'称钩驿镇',621102,4),(621102105,'鲁家沟镇',621102,4),(621102106,'西巩驿镇',621102,4),(621102107,'宁远镇',621102,4),(621102108,'李家堡镇',621102,4),(621102109,'团结镇',621102,4),(621102110,'香泉镇',621102,4),(621102111,'符家川镇',621102,4),(621102112,'葛家岔镇',621102,4),(621102204,'白碌乡',621102,4),(621102207,'石峡湾乡',621102,4),(621102208,'新集乡',621102,4),(621102209,'青岚山乡',621102,4),(621102210,'高峰乡',621102,4),(621102211,'石泉乡',621102,4),(621102214,'杏园乡',621102,4),(621121100,'平襄镇',621121,4),(621121101,'马营镇',621121,4),(621121102,'鸡川镇',621121,4),(621121103,'榜罗镇',621121,4),(621121104,'常家河镇',621121,4),(621121105,'义岗川镇',621121,4),(621121200,'陇阳乡',621121,4),(621121201,'陇山乡',621121,4),(621121202,'陇川乡',621121,4),(621121203,'新景乡',621121,4),(621121204,'碧玉乡',621121,4),(621121206,'襄南乡',621121,4),(621121207,'李家店乡',621121,4),(621121210,'什川乡',621121,4),(621121212,'第三铺乡',621121,4),(621121214,'华家岭乡',621121,4),(621121215,'寺子川乡',621121,4),(621121216,'北城铺乡',621121,4),(621122100,'巩昌镇',621122,4),(621122101,'文峰镇',621122,4),(621122102,'首阳镇',621122,4),(621122103,'菜子镇',621122,4),(621122104,'福星镇',621122,4),(621122105,'通安驿镇',621122,4),(621122106,'云田镇',621122,4),(621122107,'碧岩镇',621122,4),(621122108,'马河镇',621122,4),(621122200,'渭阳乡',621122,4),(621122201,'宏伟乡',621122,4),(621122202,'和平乡',621122,4),(621122203,'柯寨乡',621122,4),(621122204,'双泉乡',621122,4),(621122205,'德兴乡',621122,4),(621122206,'永吉乡',621122,4),(621122207,'权家湾乡',621122,4),(621123100,'清源镇',621123,4),(621123101,'莲峰镇',621123,4),(621123102,'会川镇',621123,4),(621123103,'五竹镇',621123,4),(621123104,'路园镇',621123,4),(621123105,'北寨镇',621123,4),(621123106,'新寨镇',621123,4),(621123107,'麻家集镇',621123,4),(621123200,'锹峪乡',621123,4),(621123203,'大安乡',621123,4),(621123204,'秦祁乡',621123,4),(621123206,'庆坪乡',621123,4),(621123207,'祁家庙乡',621123,4),(621123208,'上湾乡',621123,4),(621123209,'峡城乡',621123,4),(621123210,'田家河乡',621123,4),(621124100,'洮阳镇',621124,4),(621124101,'八里铺镇',621124,4),(621124102,'新添镇',621124,4),(621124103,'辛店镇',621124,4),(621124104,'太石镇',621124,4),(621124105,'中铺镇',621124,4),(621124106,'峡口镇',621124,4),(621124107,'龙门镇',621124,4),(621124108,'窑店镇',621124,4),(621124109,'玉井镇',621124,4),(621124110,'衙下集镇',621124,4),(621124111,'南屏镇',621124,4),(621124200,'红旗乡',621124,4),(621124201,'上营乡',621124,4),(621124202,'康家集乡',621124,4),(621124203,'站滩乡',621124,4),(621124204,'漫洼乡',621124,4),(621124205,'连儿湾乡',621124,4),(621125100,'武阳镇',621125,4),(621125101,'三岔镇',621125,4),(621125102,'新寺镇',621125,4),(621125103,'金钟镇',621125,4),(621125201,'盐井乡',621125,4),(621125202,'殪虎桥乡',621125,4),(621125203,'大草滩乡',621125,4),(621125204,'马泉乡',621125,4),(621125205,'四族乡',621125,4),(621125206,'石川乡',621125,4),(621125207,'草滩乡',621125,4),(621125208,'武当乡',621125,4),(621125209,'东泉乡',621125,4),(621126100,'岷阳镇',621126,4),(621126101,'蒲麻镇',621126,4),(621126102,'西寨镇',621126,4),(621126103,'梅川镇',621126,4),(621126104,'西江镇',621126,4),(621126105,'闾井镇',621126,4),(621126106,'十里镇',621126,4),(621126107,'茶埠镇',621126,4),(621126108,'中寨镇',621126,4),(621126200,'清水乡',621126,4),(621126201,'马坞乡',621126,4),(621126202,'寺沟乡',621126,4),(621126203,'麻子川乡',621126,4),(621126204,'秦许乡',621126,4),(621126205,'禾驮乡',621126,4),(621126206,'维新乡',621126,4),(621126207,'申都乡',621126,4),(621126208,'锁龙乡',621126,4),(621202100,'城关镇',621202,4),(621202101,'安化镇',621202,4),(621202102,'东江镇',621202,4),(621202103,'两水镇',621202,4),(621202104,'汉王镇',621202,4),(621202105,'洛塘镇',621202,4),(621202106,'角弓镇',621202,4),(621202107,'马街镇',621202,4),(621202108,'三河镇',621202,4),(621202109,'甘泉镇',621202,4),(621202110,'鱼龙镇',621202,4),(621202111,'琵琶镇',621202,4),(621202200,'城郊乡',621202,4),(621202201,'坪垭藏族乡',621202,4),(621202203,'蒲池乡',621202,4),(621202204,'石门乡',621202,4),(621202207,'汉林乡',621202,4),(621202208,'柏林乡',621202,4),(621202210,'马营乡',621202,4),(621202211,'池坝乡',621202,4),(621202213,'佛崖乡',621202,4),(621202215,'黄坪乡',621202,4),(621202217,'隆兴乡',621202,4),(621202218,'龙坝乡',621202,4),(621202219,'龙凤乡',621202,4),(621202220,'桔柑乡',621202,4),(621202221,'磨坝藏族乡',621202,4),(621202223,'外纳乡',621202,4),(621202225,'玉皇乡',621202,4),(621202226,'郭河乡',621202,4),(621202229,'枫相乡',621202,4),(621202230,'三仓乡',621202,4),(621202231,'五库乡',621202,4),(621202233,'月照乡',621202,4),(621202235,'五马乡',621202,4),(621202237,'裕河乡',621202,4),(621221100,'城关镇',621221,4),(621221101,'黄渚镇',621221,4),(621221102,'红川镇',621221,4),(621221103,'小川镇',621221,4),(621221104,'纸坊镇',621221,4),(621221105,'抛沙镇',621221,4),(621221107,'店村镇',621221,4),(621221108,'王磨镇',621221,4),(621221109,'陈院镇',621221,4),(621221110,'沙坝镇',621221,4),(621221111,'黄陈镇',621221,4),(621221112,'鸡峰镇',621221,4),(621221203,'宋坪乡',621221,4),(621221206,'二郎乡',621221,4),(621221209,'苏元乡',621221,4),(621221210,'索池乡',621221,4),(621221213,'镡河乡',621221,4),(621222100,'城关镇',621222,4),(621222101,'碧口镇',621222,4),(621222102,'尚德镇',621222,4),(621222103,'中寨镇',621222,4),(621222200,'铁楼藏族乡',621222,4),(621222203,'丹堡乡',621222,4),(621222205,'刘家坪乡',621222,4),(621222206,'玉垒乡',621222,4),(621222207,'范坝乡',621222,4),(621222210,'中庙乡',621222,4),(621222211,'口头坝乡',621222,4),(621222212,'尖山乡',621222,4),(621222213,'临江乡',621222,4),(621222214,'黎坪乡',621222,4),(621222215,'舍书乡',621222,4),(621222216,'天池乡',621222,4),(621222217,'桥头乡',621222,4),(621222218,'堡子坝乡',621222,4),(621222219,'石坊乡',621222,4),(621222220,'石鸡坝乡',621222,4),(621223100,'城关镇',621223,4),(621223101,'哈达铺镇',621223,4),(621223102,'理川镇',621223,4),(621223103,'南阳镇',621223,4),(621223104,'官亭镇',621223,4),(621223105,'沙湾镇',621223,4),(621223200,'阿坞乡',621223,4),(621223204,'南河乡',621223,4),(621223205,'八力乡',621223,4),(621223206,'木耳乡',621223,4),(621223207,'庞家乡',621223,4),(621223209,'何家堡乡',621223,4),(621223211,'贾河乡',621223,4),(621223212,'将台乡',621223,4),(621223213,'车拉乡',621223,4),(621223214,'新城子藏族乡',621223,4),(621223215,'临江乡',621223,4),(621223216,'好梯乡',621223,4),(621223217,'韩院乡',621223,4),(621223218,'竹院乡',621223,4),(621223219,'兴化乡',621223,4),(621223220,'甘江头乡',621223,4),(621223223,'新寨乡',621223,4),(621223224,'狮子乡',621223,4),(621223225,'两河口乡',621223,4),(621224100,'城关镇',621224,4),(621224101,'平洛镇',621224,4),(621224102,'大堡镇',621224,4),(621224103,'岸门口镇',621224,4),(621224104,'两河镇',621224,4),(621224105,'长坝镇',621224,4),(621224106,'云台镇',621224,4),(621224107,'阳坝镇',621224,4),(621224200,'望关乡',621224,4),(621224202,'寺台乡',621224,4),(621224203,'大南峪乡',621224,4),(621224204,'迷坝乡',621224,4),(621224206,'王坝乡',621224,4),(621224207,'碾坝乡',621224,4),(621224208,'豆坝乡',621224,4),(621224209,'店子乡',621224,4),(621224210,'豆坪乡',621224,4),(621224212,'白杨乡',621224,4),(621224214,'太石乡',621224,4),(621224215,'铜钱乡',621224,4),(621224218,'三河坝乡',621224,4),(621225100,'汉源镇',621225,4),(621225101,'长道镇',621225,4),(621225102,'何坝镇',621225,4),(621225103,'姜席镇',621225,4),(621225104,'石峡镇',621225,4),(621225105,'洛峪镇',621225,4),(621225201,'石堡乡',621225,4),(621225202,'西峪乡',621225,4),(621225203,'苏河乡',621225,4),(621225204,'卢河乡',621225,4),(621225205,'兴隆乡',621225,4),(621225206,'稍峪乡',621225,4),(621225207,'马元乡',621225,4),(621225208,'晒经乡',621225,4),(621225211,'十里乡',621225,4),(621225216,'大桥乡',621225,4),(621225217,'蒿林乡',621225,4),(621225218,'太石河乡',621225,4),(621225220,'六巷乡',621225,4),(621225221,'西高山乡',621225,4),(621226100,'城关镇',621226,4),(621226101,'盐官镇',621226,4),(621226102,'石桥镇',621226,4),(621226103,'白河镇',621226,4),(621226200,'宽川乡',621226,4),(621226201,'永兴乡',621226,4),(621226202,'祁山乡',621226,4),(621226203,'马河乡',621226,4),(621226204,'红河乡',621226,4),(621226208,'永坪乡',621226,4),(621226209,'固城乡',621226,4),(621226210,'崖城乡',621226,4),(621226211,'罗坝乡',621226,4),(621226212,'湫山乡',621226,4),(621226214,'洮坪乡',621226,4),(621226215,'上坪乡',621226,4),(621226218,'江口乡',621226,4),(621226219,'雷王乡',621226,4),(621226220,'龙林乡',621226,4),(621226221,'中坝乡',621226,4),(621226222,'白关乡',621226,4),(621226224,'沙金乡',621226,4),(621226227,'桥头乡',621226,4),(621226228,'草坪乡',621226,4),(621226229,'雷坝乡',621226,4),(621226230,'王坝乡',621226,4),(621226231,'肖良乡',621226,4),(621226232,'三峪乡',621226,4),(621226233,'滩坪乡',621226,4),(621227100,'城关镇',621227,4),(621227101,'伏家镇',621227,4),(621227102,'江洛镇',621227,4),(621227103,'泥阳镇',621227,4),(621227104,'柳林镇',621227,4),(621227105,'嘉陵镇',621227,4),(621227106,'永宁镇',621227,4),(621227201,'银杏树乡',621227,4),(621227202,'水阳乡',621227,4),(621227203,'栗川乡',621227,4),(621227205,'麻沿河乡',621227,4),(621227206,'高桥乡',621227,4),(621227208,'榆树乡',621227,4),(621227210,'大河店乡',621227,4),(621227211,'虞关乡',621227,4),(621228100,'城关镇',621228,4),(621228101,'站儿巷镇',621228,4),(621228102,'西坡镇',621228,4),(621228200,'杨店乡',621228,4),(621228201,'左家乡',621228,4),(621228202,'显龙乡',621228,4),(621228203,'鱼池乡',621228,4),(621228204,'兴化乡',621228,4),(621228207,'张家乡',621228,4),(621228209,'云屏乡',621228,4),(621228210,'泰山乡',621228,4),(621228212,'金洞乡',621228,4),(622901001,'城南街道',622901,4),(622901002,'城北街道',622901,4),(622901003,'东关街道',622901,4),(622901004,'西关街道',622901,4),(622901005,'八坊街道',622901,4),(622901006,'红园街道',622901,4),(622901100,'城郊镇',622901,4),(622901101,'枹罕镇',622901,4),(622901102,'南龙镇',622901,4),(622901103,'折桥镇',622901,4),(622921100,'韩集镇',622921,4),(622921101,'土桥镇',622921,4),(622921102,'马集镇',622921,4),(622921103,'莲花镇',622921,4),(622921104,'新集镇',622921,4),(622921105,'尹集镇',622921,4),(622921200,'营滩乡',622921,4),(622921201,'掌子沟乡',622921,4),(622921202,'麻尼寺沟乡',622921,4),(622921204,'漠泥沟乡',622921,4),(622921205,'刁祁乡',622921,4),(622921208,'漫路乡',622921,4),(622921209,'榆林乡',622921,4),(622921210,'井沟乡',622921,4),(622921211,'北塬乡',622921,4),(622921213,'坡头乡',622921,4),(622921214,'桥寺乡',622921,4),(622921215,'先锋乡',622921,4),(622921216,'河西乡',622921,4),(622921217,'安家坡乡',622921,4),(622921218,'南塬乡',622921,4),(622921220,'红台乡',622921,4),(622921222,'黄泥湾乡',622921,4),(622921223,'路盘乡',622921,4),(622921224,'民主乡',622921,4),(622922100,'附城镇',622922,4),(622922101,'苏集镇',622922,4),(622922102,'胭脂镇',622922,4),(622922103,'景古镇',622922,4),(622922104,'莲麓镇',622922,4),(622922200,'康丰乡',622922,4),(622922201,'虎关乡',622922,4),(622922202,'流川乡',622922,4),(622922203,'白王乡',622922,4),(622922205,'八松乡',622922,4),(622922206,'鸣鹿乡',622922,4),(622922207,'八丹乡',622922,4),(622922208,'上湾乡',622922,4),(622922211,'草滩乡',622922,4),(622922212,'五户乡',622922,4),(622923100,'刘家峡镇',622923,4),(622923101,'盐锅峡镇',622923,4),(622923102,'太极镇',622923,4),(622923103,'西河镇',622923,4),(622923104,'三塬镇',622923,4),(622923105,'岘塬镇',622923,4),(622923106,'陈井镇',622923,4),(622923107,'川城镇',622923,4),(622923108,'王台镇',622923,4),(622923109,'红泉镇',622923,4),(622923200,'关山乡',622923,4),(622923201,'徐顶乡',622923,4),(622923202,'三条岘乡',622923,4),(622923203,'坪沟乡',622923,4),(622923206,'新寺乡',622923,4),(622923207,'小岭乡',622923,4),(622923208,'杨塔乡',622923,4),(622924100,'城关镇',622924,4),(622924101,'三甲集镇',622924,4),(622924102,'祁家集镇',622924,4),(622924103,'庄禾集镇',622924,4),(622924104,'买家巷镇',622924,4),(622924105,'齐家镇',622924,4),(622924202,'水泉乡',622924,4),(622924203,'官坊乡',622924,4),(622924204,'阿力麻土东乡族乡',622924,4),(622925100,'城关镇',622925,4),(622925101,'三合镇',622925,4),(622925102,'三十里铺镇',622925,4),(622925103,'马家堡镇',622925,4),(622925104,'买家集镇',622925,4),(622925105,'松鸣镇',622925,4),(622925200,'梁家寺乡',622925,4),(622925201,'陈家集乡',622925,4),(622925202,'罗家集乡',622925,4),(622925203,'卜家庄乡',622925,4),(622925204,'新营乡',622925,4),(622925205,'新庄乡',622925,4),(622925207,'达浪乡',622925,4),(622926100,'锁南镇',622926,4),(622926101,'达板镇',622926,4),(622926102,'河滩镇',622926,4),(622926103,'那勒寺镇',622926,4),(622926104,'唐汪镇',622926,4),(622926200,'春台乡',622926,4),(622926201,'柳树乡',622926,4),(622926202,'东塬乡',622926,4),(622926204,'坪庄乡',622926,4),(622926205,'百和乡',622926,4),(622926206,'关卜乡',622926,4),(622926208,'赵家乡',622926,4),(622926209,'五家乡',622926,4),(622926210,'果园乡',622926,4),(622926212,'沿岭乡',622926,4),(622926213,'汪集乡',622926,4),(622926214,'风山乡',622926,4),(622926215,'车家湾乡',622926,4),(622926216,'高山乡',622926,4),(622926219,'大树乡',622926,4),(622926220,'北岭乡',622926,4),(622926221,'龙泉乡',622926,4),(622926222,'考勒乡',622926,4),(622926223,'董岭乡',622926,4),(622927100,'吹麻滩镇',622927,4),(622927101,'大河家镇',622927,4),(622927102,'居集镇',622927,4),(622927103,'癿藏镇',622927,4),(622927200,'刘集乡',622927,4),(622927201,'石塬乡',622927,4),(622927202,'柳沟乡',622927,4),(622927203,'关家川乡',622927,4),(622927204,'胡林家乡',622927,4),(622927205,'安集乡',622927,4),(622927206,'寨子沟乡',622927,4),(622927207,'郭干乡',622927,4),(622927208,'徐扈家乡',622927,4),(622927209,'中咀岭乡',622927,4),(622927210,'小关乡',622927,4),(622927211,'铺川乡',622927,4),(622927212,'银川乡',622927,4),(623001001,'当周街道',623001,4),(623001002,'伊合昂街道',623001,4),(623001003,'坚木克尔街道',623001,4),(623001004,'通钦街道',623001,4),(623001200,'卡加曼乡',623001,4),(623001201,'卡加道乡',623001,4),(623001202,'佐盖多玛乡',623001,4),(623001203,'佐盖曼玛乡',623001,4),(623001204,'勒秀乡',623001,4),(623001205,'那吾乡',623001,4),(623021100,'城关镇',623021,4),(623021101,'新城镇',623021,4),(623021102,'冶力关镇',623021,4),(623021200,'初布乡',623021,4),(623021201,'古战回族乡',623021,4),(623021202,'卓洛回族乡',623021,4),(623021203,'长川回族乡',623021,4),(623021204,'羊永乡',623021,4),(623021205,'流顺乡',623021,4),(623021206,'店子乡',623021,4),(623021207,'洮滨乡',623021,4),(623021208,'三岔乡',623021,4),(623021209,'王旗乡',623021,4),(623021210,'石门乡',623021,4),(623021211,'羊沙乡',623021,4),(623021212,'八角乡',623021,4),(623022100,'柳林镇',623022,4),(623022101,'木耳镇',623022,4),(623022102,'扎古录镇',623022,4),(623022200,'纳浪乡',623022,4),(623022201,'喀尔钦乡',623022,4),(623022202,'刀告乡',623022,4),(623022203,'尼巴乡',623022,4),(623022204,'完冒乡',623022,4),(623022205,'阿子塘乡',623022,4),(623022206,'申藏乡',623022,4),(623022207,'恰盖乡',623022,4),(623022208,'康多乡',623022,4),(623022209,'勺哇土族乡',623022,4),(623022210,'洮砚乡',623022,4),(623022211,'藏巴哇乡',623022,4),(623023100,'城关镇',623023,4),(623023101,'大川镇',623023,4),(623023102,'峰迭镇',623023,4),(623023200,'曲瓦乡',623023,4),(623023201,'巴藏乡',623023,4),(623023202,'大峪乡',623023,4),(623023203,'立节乡',623023,4),(623023204,'憨班乡',623023,4),(623023205,'坪定乡',623023,4),(623023206,'江盘乡',623023,4),(623023207,'东山乡',623023,4),(623023208,'南峪乡',623023,4),(623023209,'果耶乡',623023,4),(623023210,'八楞乡',623023,4),(623023211,'武坪乡',623023,4),(623023212,'插岗乡',623023,4),(623023213,'拱坝乡',623023,4),(623023214,'曲告纳乡',623023,4),(623023215,'博峪乡',623023,4),(623024100,'电尕镇',623024,4),(623024200,'益哇乡',623024,4),(623024201,'卡坝乡',623024,4),(623024202,'达拉乡',623024,4),(623024203,'尼傲乡',623024,4),(623024204,'旺藏乡',623024,4),(623024205,'阿夏乡',623024,4),(623024206,'多儿乡',623024,4),(623024207,'桑坝乡',623024,4),(623024208,'腊子口乡',623024,4),(623024209,'洛大乡',623024,4),(623025100,'尼玛镇',623025,4),(623025200,'欧拉乡',623025,4),(623025201,'欧拉秀玛乡',623025,4),(623025202,'阿万仓乡',623025,4),(623025203,'木西合乡',623025,4),(623025204,'齐哈玛乡',623025,4),(623025205,'采日玛乡',623025,4),(623025206,'曼日玛乡',623025,4),(623025400,'河曲马场',623025,4),(623025401,'大水军牧场',623025,4),(623025402,'高原生物研究所',623025,4),(623026100,'郎木寺镇',623026,4),(623026101,'玛艾镇',623026,4),(623026200,'尕海乡',623026,4),(623026201,'西仓乡',623026,4),(623026202,'拉仁关乡',623026,4),(623026203,'双岔乡',623026,4),(623026204,'阿拉乡',623026,4),(623026400,'李恰如种畜场',623026,4),(623026401,'双岔林场',623026,4),(623027100,'拉卜楞镇',623027,4),(623027101,'王格尔塘镇',623027,4),(623027102,'阿木去乎镇',623027,4),(623027200,'桑科乡',623027,4),(623027201,'甘加乡',623027,4),(623027202,'达麦乡',623027,4),(623027203,'麻当乡',623027,4),(623027204,'曲奥乡',623027,4),(623027205,'唐尕昂乡',623027,4),(623027206,'扎油乡',623027,4),(623027207,'博拉乡',623027,4),(623027208,'吉仓乡',623027,4),(623027209,'科才乡',623027,4),(630102001,'东关大街街道',630102,4),(630102002,'清真巷街道',630102,4),(630102003,'大众街街道',630102,4),(630102004,'周家泉街道',630102,4),(630102005,'火车站街道',630102,4),(630102006,'八一路街道',630102,4),(630102007,'林家崖街道',630102,4),(630102100,'乐家湾镇',630102,4),(630102101,'韵家口镇',630102,4),(630103001,'人民街街道',630103,4),(630103002,'南滩街道',630103,4),(630103003,'仓门街街道',630103,4),(630103004,'礼让街街道',630103,4),(630103005,'饮马街街道',630103,4),(630103006,'南川东路街道',630103,4),(630103007,'南川西路街道',630103,4),(630103100,'总寨镇',630103,4),(630103400,'南川工业园',630103,4),(630104001,'西关大街街道',630104,4),(630104002,'古城台街道',630104,4),(630104003,'虎台街道',630104,4),(630104004,'胜利路街道',630104,4),(630104005,'兴海路街道',630104,4),(630104100,'彭家寨镇',630104,4),(630105001,'朝阳街道',630105,4),(630105002,'小桥大街街道',630105,4),(630105003,'马坊街道',630105,4),(630105100,'大堡子镇',630105,4),(630105101,'廿里铺镇',630105,4),(630105400,'生物科技产业园',630105,4),(630121100,'桥头镇',630121,4),(630121101,'城关镇',630121,4),(630121102,'塔尔镇',630121,4),(630121103,'东峡镇',630121,4),(630121104,'黄家寨镇',630121,4),(630121105,'长宁镇',630121,4),(630121106,'景阳镇',630121,4),(630121107,'多林镇',630121,4),(630121108,'新庄镇',630121,4),(630121200,'青林乡',630121,4),(630121201,'青山乡',630121,4),(630121202,'逊让乡',630121,4),(630121203,'极乐乡',630121,4),(630121204,'石山乡',630121,4),(630121205,'宝库乡',630121,4),(630121206,'斜沟乡',630121,4),(630121207,'良教乡',630121,4),(630121208,'向化藏族乡',630121,4),(630121209,'桦林乡',630121,4),(630121210,'朔北藏族乡',630121,4),(630122001,'康川街道',630122,4),(630122100,'鲁沙尔镇',630122,4),(630122101,'西堡镇',630122,4),(630122102,'上新庄镇',630122,4),(630122103,'田家寨镇',630122,4),(630122104,'甘河滩镇',630122,4),(630122105,'共和镇',630122,4),(630122106,'多巴镇',630122,4),(630122107,'拦隆口镇',630122,4),(630122108,'上五庄镇',630122,4),(630122109,'李家山镇',630122,4),(630122200,'群加乡',630122,4),(630122201,'土门关乡',630122,4),(630122202,'汉东乡',630122,4),(630122203,'大才乡',630122,4),(630122204,'海子沟乡',630122,4),(630122400,'甘河工业园',630122,4),(630123100,'城关镇',630123,4),(630123101,'大华镇',630123,4),(630123200,'东峡乡',630123,4),(630123201,'日月乡',630123,4),(630123202,'和平乡',630123,4),(630123203,'波航乡',630123,4),(630123204,'申中乡',630123,4),(630123205,'巴燕乡',630123,4),(630123206,'寺寨乡',630123,4),(630202100,'碾伯镇',632123,4),(630202101,'雨润镇',632123,4),(630202102,'寿乐镇',632123,4),(630202103,'高庙镇',632123,4),(630202104,'洪水镇',632123,4),(630202105,'高店镇',632123,4),(630202106,'瞿昙镇',632123,4),(630202200,'共和乡',632123,4),(630202201,'中岭乡',632123,4),(630202202,'李家乡',632123,4),(630202203,'下营乡',632123,4),(630202204,'芦化乡',632123,4),(630202205,'马营乡',632123,4),(630202206,'马厂乡',632123,4),(630202207,'蒲台乡',632123,4),(630202208,'中坝乡',632123,4),(630202209,'峰堆乡',632123,4),(630202210,'城台乡',632123,4),(630202211,'达拉乡',632123,4),(630221100,'平安镇',632121,4),(630221101,'小峡镇',632121,4),(630221102,'三合镇',632121,4),(630221200,'洪水泉乡',632121,4),(630221201,'石灰窑乡',632121,4),(630221202,'古城乡',632121,4),(630221203,'沙沟乡',632121,4),(630221204,'巴藏沟乡',632121,4),(630222100,'川口镇',632122,4),(630222101,'古鄯镇',632122,4),(630222102,'马营镇',632122,4),(630222103,'官亭镇',632122,4),(630222104,'巴州镇',632122,4),(630222105,'满坪镇',632122,4),(630222106,'李二堡镇',632122,4),(630222107,'峡门镇',632122,4),(630222200,'马场垣乡',632122,4),(630222201,'北山乡',632122,4),(630222202,'松树乡',632122,4),(630222203,'西沟乡',632122,4),(630222204,'总堡乡',632122,4),(630222205,'隆治乡',632122,4),(630222206,'大庄乡',632122,4),(630222207,'转导乡',632122,4),(630222208,'前河乡',632122,4),(630222209,'甘沟乡',632122,4),(630222210,'中川乡',632122,4),(630222211,'杏儿乡',632122,4),(630222212,'核桃庄乡',632122,4),(630222213,'新民乡',632122,4),(630223100,'威远镇',632126,4),(630223101,'丹麻镇',632126,4),(630223102,'高寨镇',632126,4),(630223103,'南门峡镇',632126,4),(630223104,'加定镇',632126,4),(630223105,'塘川镇',632126,4),(630223106,'五十镇',632126,4),(630223107,'五峰镇',632126,4),(630223200,'台子乡',632126,4),(630223201,'西山乡',632126,4),(630223202,'红崖子沟乡',632126,4),(630223203,'巴扎藏族乡',632126,4),(630223204,'哈拉直沟乡',632126,4),(630223205,'松多藏族乡',632126,4),(630223206,'东山乡',632126,4),(630223207,'东和乡',632126,4),(630223208,'东沟乡',632126,4),(630223209,'林川乡',632126,4),(630223210,'蔡家堡乡',632126,4),(630224100,'巴燕镇',632127,4),(630224101,'群科镇',632127,4),(630224102,'牙什尕镇',632127,4),(630224103,'甘都镇',632127,4),(630224104,'扎巴镇',632127,4),(630224105,'昂思多镇',632127,4),(630224200,'雄先藏族乡',632127,4),(630224201,'初麻乡',632127,4),(630224202,'查甫藏族乡',632127,4),(630224203,'塔加藏族乡',632127,4),(630224204,'金源藏族乡',632127,4),(630224205,'二塘乡',632127,4),(630224206,'谢家滩乡',632127,4),(630224207,'德恒隆乡',632127,4),(630224208,'沙连堡乡',632127,4),(630224209,'阿什奴乡',632127,4),(630224210,'石大仓乡',632127,4),(630224400,'李家峡管理委员会',632127,4),(630224401,'公伯峡管理委员会',632127,4),(630225100,'积石镇',632128,4),(630225101,'白庄镇',632128,4),(630225102,'街子镇',632128,4),(630225200,'道帏藏族乡',632128,4),(630225201,'清水乡',632128,4),(630225202,'岗察藏族乡',632128,4),(630225203,'查汗都斯乡',632128,4),(630225204,'文都藏族乡',632128,4),(630225205,'尕楞藏族乡',632128,4),(632221100,'浩门镇',632221,4),(632221101,'青石咀镇',632221,4),(632221102,'泉口镇',632221,4),(632221103,'东川镇',632221,4),(632221200,'北山乡',632221,4),(632221201,'麻莲乡',632221,4),(632221202,'西滩乡',632221,4),(632221203,'阴田乡',632221,4),(632221204,'仙米乡',632221,4),(632221205,'珠固乡',632221,4),(632221206,'苏吉滩乡',632221,4),(632221207,'皇城蒙古族乡',632221,4),(632221400,'门源监狱',632221,4),(632221401,'门源种马场',632221,4),(632222100,'八宝镇',632222,4),(632222101,'峨堡镇',632222,4),(632222102,'默勒镇',632222,4),(632222200,'扎麻什乡',632222,4),(632222201,'阿柔乡',632222,4),(632222202,'野牛沟乡',632222,4),(632222203,'央隆乡',632222,4),(632223100,'三角城镇',632223,4),(632223101,'西海镇（海北州政府驻地）',632223,4),(632223200,'金滩乡',632223,4),(632223201,'哈勒景蒙古族乡',632223,4),(632223202,'青海湖乡',632223,4),(632223203,'甘子河乡',632223,4),(632224100,'沙柳河镇',632224,4),(632224101,'哈尔盖镇',632224,4),(632224200,'伊克乌兰乡',632224,4),(632224201,'泉吉乡',632224,4),(632224202,'吉尔孟乡',632224,4),(632224400,'青海湖农场',632224,4),(632224401,'三角城种羊场',632224,4),(632321100,'隆务镇',632321,4),(632321101,'保安镇',632321,4),(632321200,'兰采乡',632321,4),(632321201,'双朋西乡',632321,4),(632321202,'扎毛乡',632321,4),(632321203,'黄乃亥乡',632321,4),(632321204,'曲库乎乡',632321,4),(632321205,'年都乎乡',632321,4),(632321206,'多哇乡',632321,4),(632321207,'瓜什则乡',632321,4),(632321208,'加吾乡',632321,4),(632322100,'马克堂镇',632322,4),(632322101,'康扬镇',632322,4),(632322102,'坎布拉镇',632322,4),(632322200,'贾加乡',632322,4),(632322201,'措周乡',632322,4),(632322202,'昂拉乡',632322,4),(632322203,'能科乡',632322,4),(632322204,'当顺乡',632322,4),(632322205,'尖扎滩乡',632322,4),(632323100,'泽曲镇',632323,4),(632323101,'麦秀镇',632323,4),(632323200,'宁秀乡',632323,4),(632323201,'和日乡',632323,4),(632323202,'王加乡',632323,4),(632323203,'西卜沙乡',632323,4),(632323204,'多禾茂乡',632323,4),(632324100,'优干宁镇',632324,4),(632324200,'宁木特乡',632324,4),(632324201,'多松乡',632324,4),(632324202,'赛尔龙乡',632324,4),(632324203,'柯生乡',632324,4),(632521100,'恰卜恰镇',632521,4),(632521101,'倒淌河镇',632521,4),(632521102,'龙羊峡镇',632521,4),(632521103,'塘格木镇',632521,4),(632521200,'黑马河乡',632521,4),(632521201,'石乃亥乡',632521,4),(632521202,'沙珠玉乡',632521,4),(632521203,'铁盖乡',632521,4),(632521204,'廿地乡',632521,4),(632521205,'切吉乡',632521,4),(632521206,'江西沟乡',632521,4),(632521401,'湖东种羊场',632521,4),(632521402,'巴卡台农场',632521,4),(632521403,'安置农场',632521,4),(632521404,'铁卜加草改站',632521,4),(632522100,'尕巴松多镇',632522,4),(632522101,'唐谷镇',632522,4),(632522200,'巴沟乡',632522,4),(632522201,'秀麻乡',632522,4),(632522202,'河北乡',632522,4),(632522400,'省牧草良种繁殖场',632522,4),(632523100,'河阴镇',632523,4),(632523101,'河西镇',632523,4),(632523102,'拉西瓦镇',632523,4),(632523103,'常牧镇',632523,4),(632523200,'河东乡',632523,4),(632523201,'新街回族乡',632523,4),(632523202,'尕让乡',632523,4),(632524100,'子科滩镇',632524,4),(632524101,'河卡镇',632524,4),(632524102,'曲什安镇',632524,4),(632524200,'温泉乡',632524,4),(632524201,'龙藏乡',632524,4),(632524202,'中铁乡',632524,4),(632524203,'唐乃亥乡',632524,4),(632524400,'河卡种羊场',632524,4),(632525100,'茫曲镇',632525,4),(632525101,'过马营镇',632525,4),(632525102,'森多镇',632525,4),(632525200,'沙沟乡',632525,4),(632525202,'茫拉乡',632525,4),(632525203,'塔秀乡',632525,4),(632525400,'贵南草业开发有限责任公司',632525,4),(632621100,'大武镇',632621,4),(632621101,'拉加镇',632621,4),(632621200,'大武乡',632621,4),(632621201,'东倾沟乡',632621,4),(632621202,'雪山乡',632621,4),(632621203,'下大武乡',632621,4),(632621204,'优云乡',632621,4),(632621205,'当洛乡',632621,4),(632622100,'赛来塘镇',632622,4),(632622200,'多贡麻乡',632622,4),(632622201,'马可河乡',632622,4),(632622202,'吉卡乡',632622,4),(632622203,'达卡乡',632622,4),(632622204,'知钦乡',632622,4),(632622205,'江日堂乡',632622,4),(632622206,'亚尔堂乡',632622,4),(632622207,'灯塔乡',632622,4),(632623100,'柯曲镇',632623,4),(632623200,'上贡麻乡',632623,4),(632623201,'下贡麻乡',632623,4),(632623202,'岗龙乡',632623,4),(632623203,'青珍乡',632623,4),(632623204,'江千乡',632623,4),(632623205,'下藏科乡',632623,4),(632624100,'吉迈镇',632624,4),(632624200,'满掌乡',632624,4),(632624201,'德昂乡',632624,4),(632624202,'窝赛乡',632624,4),(632624203,'莫坝乡',632624,4),(632624204,'上红科乡',632624,4),(632624205,'下红科乡',632624,4),(632624206,'建设乡',632624,4),(632624207,'桑日麻乡',632624,4),(632624208,'特合土乡',632624,4),(632625100,'智青松多镇',632625,4),(632625200,'门堂乡',632625,4),(632625201,'哇赛乡',632625,4),(632625202,'索呼日麻乡',632625,4),(632625203,'白玉乡',632625,4),(632625204,'哇尔依乡',632625,4),(632626100,'玛查理镇',632626,4),(632626101,'花石峡镇',632626,4),(632626200,'黄河乡',632626,4),(632626201,'扎陵湖乡',632626,4),(632701100,'结古镇',632721,4),(632701101,'隆宝镇',632721,4),(632701102,'下拉秀镇',632721,4),(632701200,'仲达乡',632721,4),(632701201,'巴塘乡',632721,4),(632701202,'小苏莽乡',632721,4),(632701203,'上拉秀乡',632721,4),(632701204,'哈秀乡',632721,4),(632701205,'安冲乡',632721,4),(632722100,'萨呼腾镇',632722,4),(632722200,'昂赛乡',632722,4),(632722201,'结多乡',632722,4),(632722202,'阿多乡',632722,4),(632722203,'苏鲁乡',632722,4),(632722204,'查旦乡',632722,4),(632722205,'莫云乡',632722,4),(632722206,'扎青乡',632722,4),(632723100,'称文镇',632723,4),(632723101,'歇武镇',632723,4),(632723102,'扎朵镇',632723,4),(632723103,'清水河镇',632723,4),(632723104,'珍秦镇',632723,4),(632723200,'尕朵乡',632723,4),(632723201,'拉布乡',632723,4),(632724100,'加吉博洛格镇',632724,4),(632724200,'索加乡',632724,4),(632724201,'扎河乡',632724,4),(632724202,'多彩乡',632724,4),(632724203,'治渠乡',632724,4),(632724204,'立新乡',632724,4),(632725100,'香达镇',632725,4),(632725200,'白扎乡',632725,4),(632725201,'吉曲乡',632725,4),(632725202,'娘拉乡',632725,4),(632725203,'毛庄乡',632725,4),(632725204,'觉拉乡',632725,4),(632725205,'东坝乡',632725,4),(632725206,'尕羊乡',632725,4),(632725207,'吉尼赛乡',632725,4),(632725208,'着晓乡',632725,4),(632726100,'约改镇',632726,4),(632726200,'巴干乡',632726,4),(632726201,'秋智乡',632726,4),(632726202,'叶格乡',632726,4),(632726203,'麻多乡',632726,4),(632726204,'曲麻河乡',632726,4),(632801001,'昆仑路街道',632801,4),(632801002,'黄河路街道',632801,4),(632801003,'金峰路街道',632801,4),(632801004,'河西街道',632801,4),(632801005,'西藏路街道',632801,4),(632801100,'郭勒木德镇',632801,4),(632801101,'唐古拉镇',632801,4),(632801200,'大格勒乡',632801,4),(632801201,'乌图美仁乡',632801,4),(632801400,'察尔汗工行委',632801,4),(632801401,'格尔木农垦有限公司',632801,4),(632802001,'河西街道',632802,4),(632802002,'河东街道',632802,4),(632802003,'火车站街道',632802,4),(632802100,'尕海镇',632802,4),(632802101,'怀头他拉镇',632802,4),(632802102,'柯鲁柯镇',632802,4),(632802103,'柴旦镇',632802,4),(632802104,'锡铁山镇',632802,4),(632802105,'冷湖镇',632802,4),(632802106,'花土沟镇',632802,4),(632802107,'茫崖镇',632802,4),(632802200,'蓄集乡',632802,4),(632821100,'希里沟镇',632821,4),(632821101,'茶卡镇',632821,4),(632821102,'柯柯镇',632821,4),(632821103,'铜普镇',632821,4),(632821500,'海西州莫河畜牧场',632821,4),(632822100,'察汉乌苏镇',632822,4),(632822101,'香日德镇',632822,4),(632822102,'夏日哈镇',632822,4),(632822103,'宗加镇',632822,4),(632822200,'热水乡',632822,4),(632822201,'香加乡',632822,4),(632822202,'沟里乡',632822,4),(632822203,'巴隆乡',632822,4),(632823100,'新源镇',632823,4),(632823101,'木里镇',632823,4),(632823102,'江河镇',632823,4),(632823200,'快尔玛乡',632823,4),(632823201,'舟群乡',632823,4),(632823202,'织合玛乡',632823,4),(632823203,'苏里乡',632823,4),(632823204,'生格乡',632823,4),(632823205,'阳康乡',632823,4),(632823206,'龙门乡',632823,4),(640104001,'凤凰北街街道',640104,4),(640104002,'解放西街街道',640104,4),(640104003,'文化街街道',640104,4),(640104004,'富宁街街道',640104,4),(640104005,'新华街街道',640104,4),(640104006,'玉皇阁北街街道',640104,4),(640104007,'前进街街道',640104,4),(640104008,'中山南街街道',640104,4),(640104009,'银古路街道',640104,4),(640104010,'胜利街街道',640104,4),(640104011,'丽景街街道',640104,4),(640104100,'掌政镇',640104,4),(640104101,'大新镇',640104,4),(640104200,'通贵乡',640104,4),(640104201,'月牙湖乡',640104,4),(640104400,'燕鸽湖管委会',640104,4),(640105001,'西花园街道',640105,4),(640105002,'北京西路街道',640105,4),(640105003,'文昌路街道',640105,4),(640105004,'朔方路街道',640105,4),(640105005,'宁华路街道',640105,4),(640105006,'贺兰山西路街道',640105,4),(640105100,'兴泾镇',640105,4),(640105101,'镇北堡镇',640105,4),(640106001,'满城北街街道',640106,4),(640106002,'黄河东路街道',640106,4),(640106003,'长城中路街道',640106,4),(640106004,'北京中路街道',640106,4),(640106005,'上海西路街道',640106,4),(640106100,'良田镇',640106,4),(640106101,'丰登镇',640106,4),(640121100,'杨和镇',640121,4),(640121101,'李俊镇',640121,4),(640121102,'望远镇',640121,4),(640121103,'望洪镇',640121,4),(640121104,'闽宁镇',640121,4),(640121200,'胜利乡',640121,4),(640121400,'黄羊滩农场',640121,4),(640121401,'玉泉营农场',640121,4),(640122100,'习岗镇',640122,4),(640122101,'金贵镇',640122,4),(640122102,'立岗镇',640122,4),(640122103,'洪广镇',640122,4),(640122200,'常信乡',640122,4),(640122400,'南梁台子管委会',640122,4),(640122401,'暖泉农场',640122,4),(640122402,'宁夏原种场',640122,4),(640122403,'京星农牧场',640122,4),(640181001,'城区街道',640181,4),(640181100,'东塔镇',640181,4),(640181101,'郝家桥镇',640181,4),(640181102,'崇兴镇',640181,4),(640181103,'宁东镇',640181,4),(640181104,'马家滩镇',640181,4),(640181105,'临河镇',640181,4),(640181200,'梧桐树乡',640181,4),(640181201,'白土岗乡',640181,4),(640181400,'灵武农场',640181,4),(640181401,'狼皮子梁管委会',640181,4),(640202001,'长胜街道',640202,4),(640202002,'朝阳街道',640202,4),(640202003,'人民路街道',640202,4),(640202004,'长城街道',640202,4),(640202005,'青山街道',640202,4),(640202006,'石炭井街道',640202,4),(640202007,'白芨沟街道',640202,4),(640202008,'沟口街道',640202,4),(640202010,'长兴街道',640202,4),(640202011,'锦林街道',640202,4),(640202100,'星海镇',640202,4),(640205001,'育才路街道',640205,4),(640205002,'南街街道',640205,4),(640205003,'中街街道',640205,4),(640205004,'北街街道',640205,4),(640205005,'河滨街道',640205,4),(640205006,'火车站街道',640205,4),(640205100,'红果子镇',640205,4),(640205101,'尾闸镇',640205,4),(640205102,'园艺镇',640205,4),(640205200,'庙台乡',640205,4),(640205201,'礼和乡',640205,4),(640205202,'燕子墩乡',640205,4),(640205401,'简泉农场',640205,4),(640205402,'国营农林牧场',640205,4),(640205403,'良种繁殖场',640205,4),(640221100,'城关镇',640221,4),(640221101,'黄渠桥镇',640221,4),(640221102,'宝丰镇',640221,4),(640221103,'头闸镇',640221,4),(640221104,'姚伏镇',640221,4),(640221105,'崇岗镇',640221,4),(640221106,'陶乐镇',640221,4),(640221200,'高庄乡',640221,4),(640221201,'灵沙乡',640221,4),(640221202,'渠口乡',640221,4),(640221203,'通伏乡',640221,4),(640221204,'高仁乡',640221,4),(640221205,'红崖子乡',640221,4),(640221400,'前进农场',640221,4),(640302100,'金积镇',640302,4),(640302101,'金银滩镇',640302,4),(640302102,'高闸镇',640302,4),(640302103,'扁担沟镇',640302,4),(640302104,'上桥镇',640302,4),(640302105,'古城镇',640302,4),(640302106,'金星镇',640302,4),(640302107,'胜利镇',640302,4),(640302200,'东塔寺乡',640302,4),(640302201,'板桥乡',640302,4),(640302202,'马莲渠乡',640302,4),(640302203,'郭家桥乡',640302,4),(640302400,'巴浪湖农场',640302,4),(640302401,'孙家滩管委会',640302,4),(640302402,'太阳山开发区',640302,4),(640303100,'红寺堡开发区红寺堡镇',640303,4),(640303101,'红寺堡开发区太阳山镇',640303,4),(640303200,'红寺堡开发区大河乡',640303,4),(640303201,'红寺堡开发区南川乡',640303,4),(640303400,'红寺堡工业园区管委会',640303,4),(640323100,'花马池镇',640323,4),(640323101,'大水坑镇',640323,4),(640323102,'惠安堡镇',640323,4),(640323103,'高沙窝镇',640323,4),(640323200,'王乐井乡',640323,4),(640323201,'冯记沟乡',640323,4),(640323202,'青山乡',640323,4),(640323203,'麻黄山乡',640323,4),(640324100,'豫海镇',640324,4),(640324101,'河西镇',640324,4),(640324102,'韦州镇',640324,4),(640324103,'下马关镇',640324,4),(640324104,'预旺镇',640324,4),(640324105,'王团镇',640324,4),(640324106,'丁塘镇',640324,4),(640324201,'田老庄乡',640324,4),(640324202,'马高庄乡',640324,4),(640324203,'张家塬乡',640324,4),(640324204,'兴隆乡',640324,4),(640381001,'裕民街道',640381,4),(640381100,'小坝镇',640381,4),(640381101,'大坝镇',640381,4),(640381102,'青铜峡镇',640381,4),(640381103,'叶盛镇',640381,4),(640381104,'瞿靖镇',640381,4),(640381105,'峡口镇',640381,4),(640381106,'邵岗镇',640381,4),(640381107,'陈袁滩镇',640381,4),(640381400,'连湖农场',640381,4),(640381401,'树新林场',640381,4),(640402001,'南关街道',640402,4),(640402002,'新区街道',640402,4),(640402003,'北塬街道',640402,4),(640402100,'三营镇',640402,4),(640402103,'官厅镇',640402,4),(640402104,'开城镇',640402,4),(640402105,'张易镇',640402,4),(640402106,'彭堡镇',640402,4),(640402107,'头营镇',640402,4),(640402108,'黄铎堡镇',640402,4),(640402200,'中河乡',640402,4),(640402201,'河川乡',640402,4),(640402204,'炭山乡',640402,4),(640402205,'寨科乡',640402,4),(640422100,'吉强镇',640422,4),(640422101,'兴隆镇',640422,4),(640422102,'平峰镇',640422,4),(640422200,'新营乡',640422,4),(640422201,'红耀乡',640422,4),(640422202,'田坪乡',640422,4),(640422203,'马建乡',640422,4),(640422204,'震湖乡',640422,4),(640422205,'兴平乡',640422,4),(640422206,'西滩乡',640422,4),(640422207,'王民乡',640422,4),(640422208,'什字乡',640422,4),(640422209,'马莲乡',640422,4),(640422210,'将台乡',640422,4),(640422211,'硝河乡',640422,4),(640422212,'偏城乡',640422,4),(640422213,'沙沟乡',640422,4),(640422214,'白崖乡',640422,4),(640422215,'火石寨乡',640422,4),(640423001,'六盘山街道',640423,4),(640423100,'城关镇',640423,4),(640423101,'沙塘镇',640423,4),(640423102,'联财镇',640423,4),(640423200,'陈靳乡',640423,4),(640423201,'好水乡',640423,4),(640423202,'观庄乡',640423,4),(640423203,'杨河乡',640423,4),(640423204,'神林乡',640423,4),(640423205,'张程乡',640423,4),(640423206,'凤岭乡',640423,4),(640423207,'山河乡',640423,4),(640423208,'温堡乡',640423,4),(640423209,'奠安乡',640423,4),(640424100,'香水镇',640424,4),(640424101,'泾河源镇',640424,4),(640424102,'六盘山镇',640424,4),(640424200,'新民乡',640424,4),(640424201,'兴盛乡',640424,4),(640424202,'黄花乡',640424,4),(640424203,'大湾乡',640424,4),(640425100,'白阳镇',640425,4),(640425101,'王洼镇',640425,4),(640425102,'古城镇',640425,4),(640425200,'新集乡',640425,4),(640425201,'城阳乡',640425,4),(640425202,'红河乡',640425,4),(640425203,'冯庄乡',640425,4),(640425204,'小岔乡',640425,4),(640425205,'孟塬乡',640425,4),(640425206,'罗洼乡',640425,4),(640425207,'交岔乡',640425,4),(640425208,'草庙乡',640425,4),(640502100,'滨河镇',640502,4),(640502101,'文昌镇',640502,4),(640502102,'东园镇',640502,4),(640502103,'柔远镇',640502,4),(640502104,'镇罗镇',640502,4),(640502105,'宣和镇',640502,4),(640502106,'永康镇',640502,4),(640502107,'常乐镇',640502,4),(640502108,'迎水桥镇',640502,4),(640502109,'兴仁镇',640502,4),(640502200,'香山乡',640502,4),(640502201,'蒿川乡',640502,4),(640502400,'中卫山羊选育场',640502,4),(640502401,'中卫工业园区',640502,4),(640521100,'宁安镇',640521,4),(640521101,'鸣沙镇',640521,4),(640521102,'石空镇',640521,4),(640521103,'新堡镇',640521,4),(640521104,'恩和镇',640521,4),(640521105,'大战场镇',640521,4),(640521200,'舟塔乡',640521,4),(640521201,'白马乡',640521,4),(640521202,'余丁乡',640521,4),(640521204,'喊叫水乡',640521,4),(640521205,'徐套乡',640521,4),(640521400,'长山头农场',640521,4),(640521401,'渠口农场',640521,4),(640522100,'海城镇',640522,4),(640522101,'李旺镇',640522,4),(640522103,'西安镇',640522,4),(640522104,'三河镇',640522,4),(640522105,'七营镇',640522,4),(640522200,'史店乡',640522,4),(640522201,'树台乡',640522,4),(640522202,'关桥乡',640522,4),(640522206,'高崖乡',640522,4),(640522207,'郑旗乡',640522,4),(640522208,'贾塘乡',640522,4),(640522209,'曹洼乡',640522,4),(640522210,'九彩乡',640522,4),(640522211,'李俊乡',640522,4),(640522212,'红羊乡',640522,4),(640522213,'关庄乡',640522,4),(640522214,'甘城乡',640522,4),(640522400,'种羊场',640522,4),(640522401,'涵养林总场',640522,4),(640522402,'老城管理办公室',640522,4),(640522406,'海原县工业物流园区',640522,4),(650102002,'燕儿窝街道',650102,4),(650102003,'胜利路街道',650102,4),(650102004,'团结路街道',650102,4),(650102005,'解放南路街道',650102,4),(650102006,'新华南路街道',650102,4),(650102007,'和平路街道',650102,4),(650102008,'解放北路街道',650102,4),(650102009,'幸福路街道',650102,4),(650102010,'东门街道',650102,4),(650102011,'新华北路街道',650102,4),(650102012,'青年路街道',650102,4),(650102013,'碱泉街道',650102,4),(650102014,'延安路街道',650102,4),(650102015,'红雁街道',650102,4),(650102400,'二道桥街道',650102,4),(650102401,'黑甲山街道',650102,4),(650102402,'大湾街道',650102,4),(650102403,'赛马场街道',650102,4),(650103001,'长江路街道',650103,4),(650103002,'和田街街道',650103,4),(650103003,'扬子江路街道',650103,4),(650103004,'友好南路街道',650103,4),(650103005,'友好北路街道',650103,4),(650103006,'八一街道',650103,4),(650103007,'炉院街街道',650103,4),(650103008,'西山街道',650103,4),(650103009,'雅玛里克山街道',650103,4),(650103010,'红庙子街道',650103,4),(650103011,'长胜东街道',650103,4),(650103012,'长胜西街道',650103,4),(650103013,'长胜南街道',650103,4),(650103014,'火车南站街道',650103,4),(650103015,'仓房沟片区街道',650103,4),(650103501,'兵团农十二师一零四团',650103,4),(650103502,'兵团十二师西山农场',650103,4),(650104001,'北京路街道',650104,4),(650104002,'二工街道',650104,4),(650104003,'三工街道',650104,4),(650104004,'石油新村街道',650104,4),(650104005,'迎宾路街道',650104,4),(650104006,'喀什东路街道',650104,4),(650104007,'北站东路街道',650104,4),(650104008,'乌鲁木齐经济技术开发区街道',650104,4),(650104009,'天津路街道',650104,4),(650104010,'银川路街道',650104,4),(650104011,'南纬路街道',650104,4),(650104012,'杭州路街道',650104,4),(650104100,'安宁渠镇',650104,4),(650104200,'二工乡',650104,4),(650104201,'地窝堡乡',650104,4),(650104202,'青格达湖乡',650104,4),(650104203,'六十户乡',650104,4),(650104400,'高新街街道',650104,4),(650104401,'长春中路街道',650104,4),(650105001,'水磨沟街道',650105,4),(650105002,'六道湾街道',650105,4),(650105003,'苇湖梁街道',650105,4),(650105004,'八道湾街道',650105,4),(650105005,'新民路街道',650105,4),(650105006,'南湖南路街道',650105,4),(650105007,'南湖北路街道',650105,4),(650105008,'七道湾街道',650105,4),(650105400,'水磨沟区农村事务管理办公室',650105,4),(650106001,'头屯河街道',650106,4),(650106002,'火车西站街道',650106,4),(650106003,'王家沟街道',650106,4),(650106004,'乌昌路街道',650106,4),(650106005,'北站西路街道',650106,4),(650106198,'头屯河区乡类似乡镇单位',650106,4),(650106501,'兵团十二师三坪农场',650106,4),(650106502,'兵团十二师五一农场',650106,4),(650106503,'新疆兵团十二师头屯河农场',650106,4),(650107001,'艾维尔沟街道',650107,4),(650107004,'乌拉泊街道',650107,4),(650107006,'达坂城区盐湖街道',650107,4),(650107100,'达坂城镇',650107,4),(650107200,'东沟乡',650107,4),(650107201,'西沟乡',650107,4),(650107202,'阿克苏乡',650107,4),(650107400,'柴窝堡管委会',650107,4),(650109001,'石化街道',650109,4),(650109002,'地磅街道',650109,4),(650109003,'卡子湾街道',650109,4),(650109004,'古牧地东路街道',650109,4),(650109005,'古牧地西路街道',650109,4),(650109006,'南路街道',650109,4),(650109100,'古牧地镇',650109,4),(650109101,'铁厂沟镇',650109,4),(650109102,'长山子镇',650109,4),(650109103,'羊毛工镇',650109,4),(650109104,'三道坝镇',650109,4),(650109200,'柏杨河乡',650109,4),(650109201,'芦草沟乡',650109,4),(650121100,'水西沟镇',650121,4),(650121207,'萨尔达坂乡',650121,4),(650121208,'甘沟乡',650121,4),(650121210,'永丰乡',650121,4),(650121212,'板房沟乡',650121,4),(650121213,'托里乡',650121,4),(650202001,'金山路街道',650202,4),(650202002,'西宁路街道',650202,4),(650202003,'新北区办事处',650202,4),(650203001,'天山路街道',650203,4),(650203002,'胜利路街道',650203,4),(650203003,'昆仑路街道',650203,4),(650203004,'银河路街道',650203,4),(650203005,'金龙镇街道',650203,4),(650203006,'五五新镇街道',650203,4),(650203200,'小拐乡',650203,4),(650203400,'农业开发区',650203,4),(650203506,'兵团一二九团',650203,4),(650203530,'兵团一三六团',650203,4),(650204001,'中兴路街道',650204,4),(650204002,'三平路街道',650204,4),(650205001,'柳树街街道',650205,4),(650205200,'乌尔禾乡',650205,4),(650205509,'兵团一三七团',650205,4),(652101001,'老城街道',652101,4),(652101002,'高昌街道',652101,4),(652101003,'葡萄沟街道',652101,4),(652101100,'七泉湖镇',652101,4),(652101101,'大河沿镇',652101,4),(652101200,'亚尔乡',652101,4),(652101201,'艾丁湖乡',652101,4),(652101202,'葡萄乡',652101,4),(652101203,'恰特喀勒乡',652101,4),(652101204,'二堡乡',652101,4),(652101205,'三堡乡',652101,4),(652101206,'胜金乡',652101,4),(652101400,'红柳河园艺场',652101,4),(652101401,'原种场',652101,4),(652101502,'兵团二二一团',652101,4),(652122100,'鄯善镇',652122,4),(652122101,'七克台镇',652122,4),(652122102,'火车站镇',652122,4),(652122103,'连木沁镇',652122,4),(652122104,'鲁克沁镇',652122,4),(652122200,'辟展乡',652122,4),(652122201,'东巴扎回族民族乡',652122,4),(652122202,'吐峪沟乡',652122,4),(652122203,'达浪坎乡',652122,4),(652122204,'迪坎乡',652122,4),(652122400,'南山矿区',652122,4),(652122500,'园艺场',652122,4),(652123100,'托克逊镇',652123,4),(652123101,'库米什镇',652123,4),(652123102,'库加依镇',652123,4),(652123103,'阿乐惠镇',652123,4),(652123200,'夏乡',652123,4),(652123201,'郭勒布依乡',652123,4),(652123202,'伊拉湖乡',652123,4),(652123203,'博斯坦乡',652123,4),(652201001,'东河区街道',652201,4),(652201002,'西河区街道',652201,4),(652201003,'新市区街道',652201,4),(652201004,'丽园街道',652201,4),(652201005,'石油新城街道',652201,4),(652201100,'雅满苏镇',652201,4),(652201101,'七角井镇',652201,4),(652201102,'星星峡镇',652201,4),(652201103,'二堡镇',652201,4),(652201104,'陶家宫镇',652201,4),(652201105,'五堡镇',652201,4),(652201200,'沁城乡',652201,4),(652201201,'乌拉台哈萨克民族乡',652201,4),(652201202,'双井子乡',652201,4),(652201203,'大泉湾乡',652201,4),(652201205,'回城乡',652201,4),(652201206,'花园乡',652201,4),(652201207,'南湖乡',652201,4),(652201209,'德外里都如克哈萨克乡',652201,4),(652201210,'西山乡',652201,4),(652201211,'天山乡',652201,4),(652201212,'白石头乡',652201,4),(652201214,'柳树沟乡',652201,4),(652201401,'三道岭矿区',652201,4),(652201402,'巴里坤县山南开发区',652201,4),(652201403,'伊吾县山南开发区管委会',652201,4),(652201404,'西戈壁农业综合开发区',652201,4),(652201405,'哈密伊吾马场',652201,4),(652201406,'哈密工业园区',652201,4),(652201500,'兵团红星一场',652201,4),(652201501,'兵团红星二场',652201,4),(652201502,'兵团红星四场',652201,4),(652201503,'兵团黄田农场',652201,4),(652201504,'兵团火箭农场',652201,4),(652201505,'兵团柳树泉农场',652201,4),(652222100,'巴里坤镇',652222,4),(652222101,'博尔羌吉镇',652222,4),(652222102,'大河镇',652222,4),(652222103,'奎苏镇',652222,4),(652222200,'萨尔乔克乡',652222,4),(652222201,'海子沿乡',652222,4),(652222202,'下涝坝乡',652222,4),(652222205,'石人子乡',652222,4),(652222206,'花园乡',652222,4),(652222207,'三塘湖乡',652222,4),(652222208,'大红柳峡乡',652222,4),(652222209,'八墙子乡',652222,4),(652222400,'良种繁育场',652222,4),(652222401,'黄土场开发区',652222,4),(652222500,'兵团红山农场',652222,4),(652223100,'伊吾镇',652223,4),(652223101,'淖毛湖镇',652223,4),(652223102,'盐池镇',652223,4),(652223201,'苇子峡乡',652223,4),(652223202,'下马崖乡',652223,4),(652223204,'吐葫芦乡',652223,4),(652223205,'前山哈萨克民族乡',652223,4),(652223500,'兵团淖毛湖农场',652223,4),(652301001,'宁边路办事处',652301,4),(652301002,'延安北路办事处',652301,4),(652301003,'北京南路办事处',652301,4),(652301004,'建国路办事处',652301,4),(652301005,'中山路街道',652301,4),(652301006,'绿洲路街道',652301,4),(652301100,'硫磺沟镇',652301,4),(652301101,'三工镇',652301,4),(652301102,'榆树沟镇',652301,4),(652301103,'二六工镇',652301,4),(652301104,'大西渠镇',652301,4),(652301105,'六工镇',652301,4),(652301106,'滨湖镇',652301,4),(652301107,'佃坝镇',652301,4),(652301202,'阿什里哈萨克民族乡',652301,4),(652301203,'庙尔沟乡',652301,4),(652301400,'新疆昌吉国家农业科技园区管理委员会',652301,4),(652301401,'昌吉市北部荒漠生态保护管理站',652301,4),(652301503,'兵团共青团农场',652301,4),(652301504,'兵团军户农场',652301,4),(652302001,'博峰街办事处',652302,4),(652302002,'阜新街办事处',652302,4),(652302003,'准东办事处',652302,4),(652302100,'甘河子镇',652302,4),(652302101,'城关镇',652302,4),(652302102,'九运街镇',652302,4),(652302103,'滋泥泉子镇',652302,4),(652302201,'上户沟哈萨克民族乡',652302,4),(652302202,'水磨沟乡',652302,4),(652302205,'三工河哈萨克民族乡',652302,4),(652302503,'兵团农六师土墩子农场',652302,4),(652302504,'兵团六运湖农场',652302,4),(652302505,'兵团二二二团农场',652302,4),(652323100,'呼图壁镇',652323,4),(652323101,'大丰镇',652323,4),(652323102,'雀尔沟镇',652323,4),(652323103,'二十里店镇',652323,4),(652323104,'园户村镇',652323,4),(652323105,'五工台镇',652323,4),(652323201,'石梯子哈萨克民族乡',652323,4),(652323401,'县良种繁育场',652323,4),(652323402,'干河子林场',652323,4),(652323405,'呼图壁种牛场',652323,4),(652323520,'兵团一零五团',652323,4),(652323521,'兵团一零六团',652323,4),(652323523,'兵团芳草湖总场',652323,4),(652324100,'玛纳斯镇',652324,4),(652324101,'乐土驿镇',652324,4),(652324102,'包家店镇',652324,4),(652324103,'凉州户镇',652324,4),(652324104,'北五岔镇',652324,4),(652324105,'六户地镇',652324,4),(652324106,'兰州湾镇',652324,4),(652324201,'广东地乡',652324,4),(652324202,'清水河子哈萨克民族乡',652324,4),(652324203,'塔西河哈萨克民族乡',652324,4),(652324204,'旱卡子滩哈萨克民族乡',652324,4),(652324400,'玛电工业区',652324,4),(652324401,'园艺场',652324,4),(652324402,'自治区林业厅玛纳斯平原林场',652324,4),(652324403,'新疆农科院玛纳斯试验站',652324,4),(652324520,'兵团农六师新湖农场',652324,4),(652324521,'兵团一四七团',652324,4),(652324522,'兵团一四八团',652324,4),(652324523,'兵团一四九团',652324,4),(652324524,'兵团一五零团',652324,4),(652325100,'奇台镇',652325,4),(652325101,'老奇台镇',652325,4),(652325102,'半截沟镇',652325,4),(652325103,'吉布库镇',652325,4),(652325104,'东湾镇',652325,4),(652325105,'西地镇',652325,4),(652325200,'碧流河乡',652325,4),(652325201,'西北湾乡',652325,4),(652325202,'坎尔孜乡',652325,4),(652325203,'五马场乡',652325,4),(652325204,'古城乡',652325,4),(652325205,'乔仁乡',652325,4),(652325206,'七户乡',652325,4),(652325207,'三个庄子乡',652325,4),(652325208,'塔塔尔乡',652325,4),(652325503,'兵团奇台农场',652325,4),(652325504,'兵团农六师北塔山牧场',652325,4),(652327100,'吉木萨尔镇',652327,4),(652327101,'三台镇',652327,4),(652327102,'泉子街镇',652327,4),(652327103,'北庭镇',652327,4),(652327104,'二工镇',652327,4),(652327105,'大有镇',652327,4),(652327202,'庆阳湖乡',652327,4),(652327203,'老台乡',652327,4),(652327205,'新地乡',652327,4),(652327400,'五彩湾工业园区',652327,4),(652327500,'兵团农六师红旗农场',652327,4),(652328100,'木垒镇',652328,4),(652328101,'木垒县西吉尔镇',652328,4),(652328102,'木垒县东城镇',652328,4),(652328200,'英格堡乡',652328,4),(652328201,'照壁山乡',652328,4),(652328202,'新户乡',652328,4),(652328203,'雀仁乡',652328,4),(652328204,'白杨河乡',652328,4),(652328205,'大石头乡',652328,4),(652328206,'大南沟乌孜别克乡',652328,4),(652328207,'博斯坦乡',652328,4),(652328400,'良种繁育场',652328,4),(652328401,'克热克库都克牧场',652328,4),(652701001,'青得里街道',652701,4),(652701002,'顾里木图街道',652701,4),(652701004,'南城区街道',652701,4),(652701100,'小营盘镇',652701,4),(652701101,'达勒特镇',652701,4),(652701102,'乌图布拉格镇',652701,4),(652701200,'青得里乡',652701,4),(652701201,'贝林哈日莫墩乡',652701,4),(652701400,'阿热勒托海牧场',652701,4),(652701407,'香班哈日根牧场',652701,4),(652701408,'五台工业园区',652701,4),(652701501,'兵团八十一团',652701,4),(652701502,'兵团八十四团',652701,4),(652701504,'兵团八十六团',652701,4),(652701505,'兵团八十九团',652701,4),(652701506,'兵团九十团',652701,4),(652722100,'精河镇',652722,4),(652722101,'大河沿子镇',652722,4),(652722200,'茫丁乡',652722,4),(652722201,'托里乡',652722,4),(652722202,'托托乡',652722,4),(652722400,'阿合其农场',652722,4),(652722401,'八家户农场',652722,4),(652722503,'兵团八十三团',652722,4),(652722504,'兵团九十一团',652722,4),(652723100,'博格达尔镇',652723,4),(652723101,'哈日布呼镇',652723,4),(652723200,'安格里格乡',652723,4),(652723201,'查干屯格乡',652723,4),(652723202,'扎勒木特乡',652723,4),(652723203,'塔秀乡',652723,4),(652723400,'呼和托哈种畜场',652723,4),(652723401,'昆得仑牧场',652723,4),(652723402,'孟克牧场',652723,4),(652723502,'兵团八十七团',652723,4),(652723503,'兵团八十八团',652723,4),(652801001,'团结街道',652801,4),(652801002,'萨依巴格街道',652801,4),(652801003,'天山街道',652801,4),(652801004,'新城街道',652801,4),(652801005,'建设街道',652801,4),(652801100,'塔什店镇',652801,4),(652801101,'上户镇',652801,4),(652801102,'库尔勒市西尼尔镇',652801,4),(652801200,'铁克其乡',652801,4),(652801201,'恰尔巴格乡',652801,4),(652801202,'英下乡',652801,4),(652801203,'库尔勒市兰干乡',652801,4),(652801204,'和什力克乡',652801,4),(652801205,'哈拉玉宫乡',652801,4),(652801206,'阿瓦提乡',652801,4),(652801207,'库尔勒市托布力其乡',652801,4),(652801208,'普惠乡',652801,4),(652801400,'库尔楚园艺场',652801,4),(652801401,'包头湖农场',652801,4),(652801402,'普惠农场',652801,4),(652801403,'巴州阿瓦提农场',652801,4),(652801404,'巴州沙依东园艺场',652801,4),(652801408,'巴州奶牛场',652801,4),(652801409,'普惠牧场',652801,4),(652801410,'经济牧场',652801,4),(652801411,'良种场',652801,4),(652801501,'兵团二十九团',652801,4),(652801502,'农二师三十团',652801,4),(652822100,'轮台镇',652822,4),(652822101,'轮南镇',652822,4),(652822102,'群巴克镇',652822,4),(652822103,'阳霞镇',652822,4),(652822201,'哈尔巴克乡',652822,4),(652822202,'野云沟乡',652822,4),(652822203,'阿克萨来乡',652822,4),(652822204,'塔尔拉克乡',652822,4),(652822205,'草湖乡',652822,4),(652822206,'铁热克巴扎乡',652822,4),(652822207,'策达雅乡',652822,4),(652823100,'尉犁镇',652823,4),(652823200,'塔里木乡',652823,4),(652823201,'兴平乡',652823,4),(652823202,'团结乡',652823,4),(652823203,'墩阔坦乡',652823,4),(652823204,'喀尔曲尕乡',652823,4),(652823205,'阿克苏普乡',652823,4),(652823206,'古勒巴格乡',652823,4),(652823501,'兵团三十一团',652823,4),(652823502,'农二师三十三团',652823,4),(652823503,'兵团三十四团',652823,4),(652824100,'若羌镇',652824,4),(652824101,'依吞布拉克镇',652824,4),(652824102,'罗布泊镇',652824,4),(652824103,'瓦石峡镇',652824,4),(652824200,'铁干里克乡',652824,4),(652824201,'吾塔木乡',652824,4),(652824203,'铁木里克乡',652824,4),(652824204,'祁曼塔克乡',652824,4),(652824501,'兵团三十六团',652824,4),(652825100,'且末镇',652825,4),(652825101,'奥依亚依拉克镇',652825,4),(652825200,'阿热勒乡',652825,4),(652825201,'琼库勒乡',652825,4),(652825202,'托格拉克勒克乡',652825,4),(652825203,'巴格艾日克乡',652825,4),(652825204,'英吾斯塘乡',652825,4),(652825205,'阿克提坎墩乡',652825,4),(652825206,'阔什萨特玛乡',652825,4),(652825207,'塔提让乡',652825,4),(652825208,'阿羌乡',652825,4),(652825209,'库拉木勒克乡',652825,4),(652825501,'兵团农二师且末工程支队',652825,4),(652825502,'兵团三十八团',652825,4),(652826100,'焉耆镇',652826,4),(652826101,'七个星镇',652826,4),(652826102,'永宁镇',652826,4),(652826103,'四十里城子镇',652826,4),(652826200,'北大渠乡',652826,4),(652826201,'五号渠乡',652826,4),(652826203,'查汗采开乡',652826,4),(652826204,'包尔海乡',652826,4),(652826400,'王家庄牧场',652826,4),(652826401,'苏海良种场',652826,4),(652826501,'兵团二十七团',652826,4),(652827100,'和静镇',652827,4),(652827101,'巴仑台镇',652827,4),(652827102,'巴润哈尔莫墩镇',652827,4),(652827103,'哈尔莫墩镇',652827,4),(652827104,'巴音布鲁克镇',652827,4),(652827105,'巩乃斯镇',652827,4),(652827200,'乃门莫墩乡',652827,4),(652827201,'协比乃尔布呼乡',652827,4),(652827203,'克尔古提乡',652827,4),(652827204,'阿拉沟乡',652827,4),(652827205,'额勒再特乌鲁乡',652827,4),(652827206,'巴音郭愣乡',652827,4),(652827400,'乌拉斯台农场',652827,4),(652827501,'兵团二十一团',652827,4),(652827502,'兵团二十二团',652827,4),(652827503,'兵团二二三团',652827,4),(652827504,'兵团农二师湖光糖厂',652827,4),(652828100,'特吾里克镇',652828,4),(652828200,'乌什塔拉回族民族乡',652828,4),(652828201,'曲惠乡',652828,4),(652828202,'塔哈其乡',652828,4),(652828203,'苏哈特乡',652828,4),(652828204,'乃仁克尔乡',652828,4),(652828205,'新塔热乡',652828,4),(652828400,'清水河农场',652828,4),(652828402,'和硕县马兰公安管区',652828,4),(652828504,'兵团二师二十四团',652828,4),(652829100,'博湖镇',652829,4),(652829101,'本布图镇',652829,4),(652829200,'塔温觉肯乡',652829,4),(652829202,'乌兰再格森乡',652829,4),(652829203,'才坎诺尔乡',652829,4),(652829204,'查干诺尔乡',652829,4),(652829205,'博斯腾湖乡',652829,4),(652829501,'兵团二十五团',652829,4),(652901001,'栏杆街道',652901,4),(652901002,'英巴扎街道',652901,4),(652901003,'红桥街道',652901,4),(652901004,'新城街道',652901,4),(652901005,'南城街道',652901,4),(652901006,'柯柯牙街道',652901,4),(652901100,'喀勒塔勒镇',652901,4),(652901101,'阿依库勒镇',652901,4),(652901200,'依干其乡',652901,4),(652901201,'拜什吐格曼乡',652901,4),(652901202,'托普鲁克乡',652901,4),(652901203,'库木巴希乡',652901,4),(652901400,'良种场',652901,4),(652901401,'红旗坡农场',652901,4),(652901404,'实验林场',652901,4),(652901502,'兵团一团',652901,4),(652901503,'兵团二团',652901,4),(652901505,'西工业园区管理委员会',652901,4),(652901506,'兵团农一师沙井子水利管理处',652901,4),(652901511,'纺织工业城',652901,4),(652901512,'经济技术开发区',652901,4),(652901513,'特色产业园区',652901,4),(652922100,'温宿镇',652922,4),(652922101,'吐木秀克镇',652922,4),(652922102,'克孜勒镇',652922,4),(652922103,'阿热勒镇',652922,4),(652922104,'佳木镇',652922,4),(652922200,'托乎拉乡',652922,4),(652922202,'恰格拉克乡',652922,4),(652922204,'依希来木其乡',652922,4),(652922206,'古勒阿瓦提乡',652922,4),(652922207,'博孜墩柯尔克孜族乡',652922,4),(652922400,'水稻农场',652922,4),(652922401,'青年农场',652922,4),(652922402,'共青团农场',652922,4),(652922403,'塔格拉克牧场',652922,4),(652922404,'博孜墩牧场',652922,4),(652922405,'萨瓦甫齐牧场',652922,4),(652922406,'恰其力克牧场',652922,4),(652922407,'佳木林场',652922,4),(652922408,'木本粮油林场',652922,4),(652922411,'清泉农场',652922,4),(652922412,'水稻原种场',652922,4),(652922413,'吉格代牧场',652922,4),(652922509,'兵团五团',652922,4),(652922510,'兵团六团',652922,4),(652923001,'热斯坦街道',652923,4),(652923002,'萨克萨克街道',652923,4),(652923003,'新城街道',652923,4),(652923004,'东城街道',652923,4),(652923101,'乌恰镇',652923,4),(652923102,'阿拉哈格镇',652923,4),(652923103,'齐满镇',652923,4),(652923104,'墩阔坦镇',652923,4),(652923105,'牙哈镇',652923,4),(652923106,'乌尊镇',652923,4),(652923107,'依西哈拉镇',652923,4),(652923108,'雅克拉镇',652923,4),(652923201,'玉奇吾斯塘乡',652923,4),(652923202,'比西巴格乡',652923,4),(652923203,'哈尼喀塔木乡',652923,4),(652923204,'阿克吾斯塘乡',652923,4),(652923205,'阿格乡',652923,4),(652923206,'塔里木乡',652923,4),(652923400,'水电二处',652923,4),(652923401,'二八台农场',652923,4),(652923402,'良种繁育场',652923,4),(652923403,'库孜翁牧场',652923,4),(652923404,'草湖牧场',652923,4),(652923405,'库车种羊场',652923,4),(652923406,'库车监狱',652923,4),(652923407,'克其力克农场',652923,4),(652924100,'沙雅镇',652924,4),(652924101,'托依堡勒迪镇',652924,4),(652924102,'红旗镇',652924,4),(652924103,'英买力镇',652924,4),(652924104,'沙雅县哈德墩镇',652924,4),(652924200,'古勒巴格乡',652924,4),(652924204,'海楼乡',652924,4),(652924205,'努尔巴格乡',652924,4),(652924206,'塔里木乡',652924,4),(652924207,'盖孜库木乡',652924,4),(652924208,'央塔克协海尔乡',652924,4),(652924400,'新垦农场',652924,4),(652924401,'一牧场',652924,4),(652924402,'二牧场',652924,4),(652924403,'沙雅监狱',652924,4),(652924404,'沙雅县工业集中区',652924,4),(652925100,'新和镇',652925,4),(652925101,'尤鲁都斯巴格镇',652925,4),(652925200,'依其艾日克乡',652925,4),(652925201,'排先拜巴扎乡',652925,4),(652925202,'塔什艾日克乡',652925,4),(652925203,'渭干乡',652925,4),(652925204,'玉奇喀特乡',652925,4),(652925205,'塔木托格拉克乡',652925,4),(652925400,'桑塔木农场',652925,4),(652925401,'新和县工业园区',652925,4),(652926100,'拜城镇',652926,4),(652926101,'铁热克镇',652926,4),(652926102,'察尔其镇',652926,4),(652926103,'赛里木镇',652926,4),(652926200,'黑英山乡',652926,4),(652926201,'克孜尔乡',652926,4),(652926203,'托克逊乡',652926,4),(652926204,'亚吐尔乡',652926,4),(652926205,'康其乡',652926,4),(652926206,'布隆乡',652926,4),(652926207,'米吉克乡',652926,4),(652926208,'温巴什乡',652926,4),(652926209,'大桥乡',652926,4),(652926210,'老虎台乡',652926,4),(652926400,'大宛其农场',652926,4),(652926401,'种羊场',652926,4),(652927100,'乌什镇',652927,4),(652927101,'阿合雅镇',652927,4),(652927200,'阿克托海乡',652927,4),(652927201,'亚科瑞克乡',652927,4),(652927202,'阿恰塔格乡',652927,4),(652927204,'依麻木乡',652927,4),(652927205,'英阿瓦提乡',652927,4),(652927206,'亚曼苏柯尔克孜族乡',652927,4),(652927207,'奥特贝希乡',652927,4),(652927500,'兵团四团',652927,4),(652928100,'阿瓦提镇',652928,4),(652928101,'乌鲁却勒镇',652928,4),(652928102,'拜什艾日克镇',652928,4),(652928200,'阿依巴格乡',652928,4),(652928201,'塔木托格拉克乡',652928,4),(652928202,'英艾日克乡',652928,4),(652928203,'多浪乡',652928,4),(652928204,'巴格托格拉克乡',652928,4),(652928400,'天丰种业有限责任公司',652928,4),(652928401,'新疆华孚恒丰有限责任公司',652928,4),(652928402,'新疆鲁泰棉业有限责任公司',652928,4),(652928404,'博斯坦牧场',652928,4),(652928405,'阿克苏监狱',652928,4),(652928503,'兵团三团',652928,4),(652929100,'柯坪镇',652929,4),(652929200,'盖孜力克乡',652929,4),(652929201,'玉尔其乡',652929,4),(652929202,'阿恰勒乡',652929,4),(652929203,'启浪乡',652929,4),(653001001,'幸福路街道',653001,4),(653001002,'光明路街道',653001,4),(653001100,'上阿图什镇',653001,4),(653001200,'松他克乡',653001,4),(653001201,'阿扎克乡',653001,4),(653001202,'阿湖乡',653001,4),(653001204,'格达良乡',653001,4),(653001205,'哈拉峻乡',653001,4),(653001206,'吐古买提乡',653001,4),(653001500,'兵团农三师红旗农场',653001,4),(653022100,'阿克陶镇',653022,4),(653022101,'奥依塔克镇',653022,4),(653022200,'玉麦乡',653022,4),(653022201,'皮拉勒乡',653022,4),(653022202,'巴仁乡',653022,4),(653022203,'喀热克其克乡',653022,4),(653022204,'加马铁热克乡',653022,4),(653022205,'木吉乡',653022,4),(653022206,'布伦口乡',653022,4),(653022207,'克孜勒陶乡',653022,4),(653022208,'恰尔隆乡',653022,4),(653022209,'库斯拉甫乡',653022,4),(653022210,'塔尔塔吉克族乡',653022,4),(653022400,'托尔塔依农场',653022,4),(653022401,'阿克达拉牧场',653022,4),(653022402,'原种场',653022,4),(653022403,'克孜勒苏柯尔克孜自治州林场',653022,4),(653022404,'苗圃',653022,4),(653023100,'阿合奇镇',653023,4),(653023200,'库兰萨日克乡',653023,4),(653023201,'色帕巴依乡',653023,4),(653023202,'苏木塔什乡',653023,4),(653023203,'哈拉奇乡',653023,4),(653023204,'哈拉布拉克乡',653023,4),(653024100,'乌恰镇',653024,4),(653024101,'康苏镇',653024,4),(653024200,'乌鲁克恰提乡',653024,4),(653024201,'吾合沙鲁乡',653024,4),(653024202,'膘尔托阔依乡',653024,4),(653024203,'黑孜韦乡',653024,4),(653024204,'托云乡',653024,4),(653024205,'铁列克乡',653024,4),(653024206,'巴音库鲁提乡',653024,4),(653024207,'波斯坦铁列克乡',653024,4),(653024208,'吉根乡',653024,4),(653024501,'兵团托云牧场',653024,4),(653101001,'恰萨街道',653101,4),(653101002,'亚瓦格街道',653101,4),(653101003,'吾斯塘博依街道',653101,4),(653101004,'库木德尔瓦扎街道',653101,4),(653101100,'乃则尔巴格镇',653101,4),(653101101,'夏马勒巴格镇',653101,4),(653101202,'多来特巴格乡',653101,4),(653101203,'浩罕乡',653101,4),(653101204,'色满乡',653101,4),(653101205,'荒地乡',653101,4),(653101206,'帕哈太克里乡',653101,4),(653101207,'伯什克然木乡',653101,4),(653101208,'阿瓦提乡',653101,4),(653121100,'托克扎克镇',653121,4),(653121101,'兰干镇',653121,4),(653121102,'吾库萨克镇',653121,4),(653121200,'乌帕尔乡',653121,4),(653121201,'塔什米里克乡',653121,4),(653121202,'铁日木乡',653121,4),(653121203,'布拉克苏乡',653121,4),(653121204,'萨依巴格乡',653121,4),(653121205,'站敏乡',653121,4),(653121211,'木什乡',653121,4),(653121214,'英吾斯塘乡',653121,4),(653121215,'阿克喀什乡',653121,4),(653121400,'县种畜场',653121,4),(653121401,'县园艺场',653121,4),(653121402,'县林场',653121,4),(653121403,'县良种场',653121,4),(653121404,'县英艾力克大畜场',653121,4),(653121406,'疏附广州工业城',653121,4),(653122100,'疏勒镇',653122,4),(653122101,'罕南力克镇',653122,4),(653122102,'牙甫泉镇',653122,4),(653122200,'巴仁乡',653122,4),(653122201,'洋大曼乡',653122,4),(653122202,'亚曼牙乡',653122,4),(653122203,'巴合齐乡',653122,4),(653122204,'塔孜洪乡',653122,4),(653122205,'英尔力克乡',653122,4),(653122206,'库木西力克乡',653122,4),(653122207,'塔合其乡',653122,4),(653122208,'艾尔木东乡',653122,4),(653122209,'阿拉力乡',653122,4),(653122210,'阿拉甫乡',653122,4),(653122211,'英阿瓦提乡',653122,4),(653122400,'疏勒南疆齐鲁工业园区',653122,4),(653122501,'兵团四十一团',653122,4),(653123100,'城镇',653123,4),(653123200,'城关乡',653123,4),(653123201,'乔勒潘乡',653123,4),(653123202,'龙甫乡',653123,4),(653123203,'芒辛乡',653123,4),(653123204,'色提力乡',653123,4),(653123205,'萨罕乡',653123,4),(653123206,'英也尔乡',653123,4),(653123207,'克孜勒乡',653123,4),(653123208,'托普鲁克乡',653123,4),(653123209,'苏盖提乡',653123,4),(653123210,'乌恰乡',653123,4),(653123211,'艾古斯乡',653123,4),(653123212,'依格孜也尔乡',653123,4),(653123401,'英吉沙工业园区',653123,4),(653123500,'兵团东风农场',653123,4),(653124100,'泽普镇',653124,4),(653124101,'奎依巴格镇',653124,4),(653124200,'波斯喀木乡',653124,4),(653124201,'泽普县依玛乡',653124,4),(653124202,'古勒巴格乡',653124,4),(653124203,'赛力乡',653124,4),(653124204,'依肯苏乡',653124,4),(653124205,'图呼其乡',653124,4),(653124206,'奎依巴格乡',653124,4),(653124207,'阿克塔木乡',653124,4),(653124208,'阿依库勒乡',653124,4),(653124209,'布依鲁克塔吉克族乡',653124,4),(653124400,'农场场部',653124,4),(653124401,'泽普县良种场',653124,4),(653124402,'园艺场',653124,4),(653124403,'国营林场',653124,4),(653125100,'莎车镇',653125,4),(653125101,'恰热克镇',653125,4),(653125102,'艾力西湖镇',653125,4),(653125103,'荒地镇',653125,4),(653125104,'阿瓦提镇',653125,4),(653125105,'白什坎特镇',653125,4),(653125106,'依盖尔其镇',653125,4),(653125200,'古勒巴格乡',653125,4),(653125201,'阿热勒乡',653125,4),(653125202,'恰尔巴格乡',653125,4),(653125203,'托木吾斯塘乡',653125,4),(653125204,'英吾斯塘乡',653125,4),(653125205,'乌达力克乡',653125,4),(653125206,'阿尔斯兰巴格乡',653125,4),(653125207,'孜热甫夏提塔吉克族乡',653125,4),(653125208,'亚喀艾日克乡',653125,4),(653125209,'喀群乡',653125,4),(653125210,'霍什拉甫乡',653125,4),(653125211,'达木斯乡',653125,4),(653125212,'米夏乡',653125,4),(653125213,'伊什库力乡',653125,4),(653125214,'拍克其乡',653125,4),(653125215,'塔尕尔其乡',653125,4),(653125216,'阔什艾日克乡',653125,4),(653125217,'墩巴格乡',653125,4),(653125218,'阿拉买提乡',653125,4),(653125219,'阿扎特巴格乡',653125,4),(653125220,'巴格阿瓦提乡',653125,4),(653125221,'喀拉苏乡',653125,4),(653125401,'喀什监狱',653125,4),(653125402,'莎车县良种繁育场',653125,4),(653125403,'莎车县第一林场（国营苗圃）',653125,4),(653125404,'莎车县国营二林场',653125,4),(653125405,'莎车县园艺场',653125,4),(653125406,'莎车县蚕种场',653125,4),(653125407,'莎车县鱼苗场',653125,4),(653125408,'农科院莎车农业试验站',653125,4),(653125409,'工业园区管委会',653125,4),(653125410,'英阿瓦提管理委员会',653125,4),(653126100,'喀格勒克镇',653126,4),(653126101,'恰尔巴格镇',653126,4),(653126102,'乌夏巴什镇',653126,4),(653126200,'洛克乡',653126,4),(653126201,'伯西热克乡',653126,4),(653126202,'铁提乡',653126,4),(653126203,'恰萨美其特乡',653126,4),(653126204,'吐古其乡',653126,4),(653126205,'江格勒斯乡',653126,4),(653126206,'加依提勒克乡',653126,4),(653126207,'巴仁乡',653126,4),(653126208,'乌吉热克乡',653126,4),(653126209,'夏合甫乡',653126,4),(653126210,'依力克其乡',653126,4),(653126211,'依提木孔乡',653126,4),(653126212,'宗朗乡',653126,4),(653126213,'柯克亚乡',653126,4),(653126214,'西合休乡',653126,4),(653126215,'棋盘乡',653126,4),(653126216,'萨依巴格乡',653126,4),(653126402,'阿克塔什农场',653126,4),(653126403,'良种场',653126,4),(653126404,'园艺场',653126,4),(653126405,'林场',653126,4),(653126406,'普萨牧场',653126,4),(653126407,'种畜场',653126,4),(653126408,'恰其库木管理区',653126,4),(653126409,'叶城工业园区',653126,4),(653126500,'兵团叶城牧场',653126,4),(653127100,'麦盖提镇',653127,4),(653127200,'巴扎结米乡',653127,4),(653127201,'希依提墩乡',653127,4),(653127202,'央塔克乡',653127,4),(653127203,'吐曼塔勒乡',653127,4),(653127204,'尕孜库勒乡',653127,4),(653127205,'克孜勒阿瓦提乡',653127,4),(653127206,'库木库萨尔乡',653127,4),(653127207,'昂格特勒克乡',653127,4),(653127208,'库尔玛乡',653127,4),(653127400,'胡杨林场',653127,4),(653127401,'园艺场',653127,4),(653127402,'五一林场',653127,4),(653127500,'兵团农三师前进水库管理处',653127,4),(653127505,'兵团四十五团',653127,4),(653127506,'兵团四十六团',653127,4),(653128100,'岳普湖镇',653128,4),(653128101,'艾西曼镇',653128,4),(653128200,'岳普湖乡',653128,4),(653128201,'也克先拜巴扎乡',653128,4),(653128203,'阿其克乡',653128,4),(653128204,'色也克乡',653128,4),(653128205,'铁热木乡',653128,4),(653128206,'巴依阿瓦提乡',653128,4),(653128207,'阿洪鲁库木乡',653128,4),(653128400,'岳普湖县农场',653128,4),(653128401,'岳普湖县林场',653128,4),(653128402,'岳普湖县奶牛场',653128,4),(653128403,'岳普湖县良种场',653128,4),(653128404,'岳普湖县大畜场',653128,4),(653128502,'兵团四十二团',653128,4),(653129100,'巴仁镇',653129,4),(653129101,'西克尔库勒镇',653129,4),(653129200,'铁日木乡',653129,4),(653129201,'英买里乡',653129,4),(653129202,'江巴孜乡',653129,4),(653129203,'卧里托格拉克乡',653129,4),(653129204,'克孜勒博依乡',653129,4),(653129205,'米夏乡',653129,4),(653129206,'夏普吐勒乡',653129,4),(653129207,'和夏阿瓦提乡',653129,4),(653129208,'克孜勒苏乡',653129,4),(653129209,'古勒鲁克乡',653129,4),(653129210,'玉代克力克乡',653129,4),(653129500,'兵团伽师总场',653129,4),(653130100,'巴楚镇',653130,4),(653130101,'色力布亚镇',653130,4),(653130102,'阿瓦提镇',653130,4),(653130103,'三岔口镇',653130,4),(653130200,'恰尔巴格乡',653130,4),(653130201,'多来提巴格乡',653130,4),(653130202,'阿纳库勒乡',653130,4),(653130203,'夏马勒乡',653130,4),(653130204,'阿克萨克玛热勒乡',653130,4),(653130205,'阿拉根乡',653130,4),(653130206,'琼库恰克乡',653130,4),(653130207,'英吾斯坦乡',653130,4),(653130508,'兵团四十八团',653130,4),(653131100,'塔什库尔干镇',653131,4),(653131101,'塔吉克阿巴提镇',653131,4),(653131200,'塔什库尔干乡',653131,4),(653131201,'塔合曼乡',653131,4),(653131202,'科克亚尔柯尔克孜族乡',653131,4),(653131203,'提孜那甫乡',653131,4),(653131204,'达布达尔乡',653131,4),(653131205,'马尔洋乡',653131,4),(653131206,'瓦恰乡',653131,4),(653131207,'班迪尔乡',653131,4),(653131208,'库科西鲁格乡',653131,4),(653131210,'大同乡',653131,4),(653131400,'麻扎尔种羊场',653131,4),(653131401,'巴扎达什牧林场',653131,4),(653201001,'奴尔巴格街道',653201,4),(653201002,'古江巴格街道',653201,4),(653201003,'古勒巴格街道',653201,4),(653201004,'纳尔巴格街道',653201,4),(653201100,'拉斯奎镇',653201,4),(653201101,'玉龙喀什镇',653201,4),(653201200,'肖尔巴格乡',653201,4),(653201201,'伊里其乡',653201,4),(653201202,'古江巴格乡',653201,4),(653201203,'吐沙拉乡',653201,4),(653201204,'吉亚乡',653201,4),(653201205,'阿克恰勒乡',653201,4),(653201401,'北京工业园区',653201,4),(653221100,'巴格其镇',653221,4),(653221102,'罕艾日克镇',653221,4),(653221202,'英阿瓦提乡',653221,4),(653221203,'英艾日克乡',653221,4),(653221204,'布扎克乡',653221,4),(653221205,'拉依喀乡',653221,4),(653221206,'朗如乡',653221,4),(653221207,'塔瓦库勒乡',653221,4),(653221208,'伊斯拉木阿瓦提乡',653221,4),(653221209,'色格孜库勒乡',653221,4),(653221210,'喀什塔什乡',653221,4),(653221211,'吾宗肖乡',653221,4),(653221401,'和田县经济新区',653221,4),(653222100,'喀拉喀什镇',653222,4),(653222101,'扎瓦镇',653222,4),(653222102,'奎牙镇',653222,4),(653222200,'喀尔赛乡',653222,4),(653222203,'阿克萨拉依乡',653222,4),(653222204,'乌尔其乡',653222,4),(653222205,'托胡拉乡',653222,4),(653222206,'萨依巴格乡',653222,4),(653222207,'加汗巴格乡',653222,4),(653222208,'普恰克其乡',653222,4),(653222209,'芒来乡',653222,4),(653222210,'阔依其乡',653222,4),(653222211,'雅瓦乡',653222,4),(653222212,'吐外特乡',653222,4),(653222213,'英也尔乡',653222,4),(653222214,'喀瓦克乡',653222,4),(653222500,'兵团四十七团',653222,4),(653222501,'兵团二二四团',653222,4),(653223001,'街道',653223,4),(653223100,'固玛镇',653223,4),(653223101,'杜瓦镇',653223,4),(653223102,'赛图拉镇',653223,4),(653223103,'木吉镇',653223,4),(653223200,'阔什塔格乡',653223,4),(653223201,'克里阳乡',653223,4),(653223202,'科克铁热克乡',653223,4),(653223203,'桑株乡',653223,4),(653223205,'乔达乡',653223,4),(653223206,'木奎拉乡',653223,4),(653223207,'藏桂乡',653223,4),(653223208,'皮亚勒玛乡',653223,4),(653223209,'皮西那乡',653223,4),(653223210,'巴什兰干乡',653223,4),(653223211,'垴阿巴提塔吉克民族乡',653223,4),(653223212,'康克尔柯尔克孜民族乡',653223,4),(653223400,'国营牧场',653223,4),(653223401,'皮山三峡工业园区',653223,4),(653223402,'皮山县良种场',653223,4),(653223403,'皮亚勒玛农业综合开发区',653223,4),(653223500,'兵团皮山农场',653223,4),(653224001,'城区街道',653224,4),(653224100,'洛浦镇',653224,4),(653224201,'布亚乡',653224,4),(653224202,'山普鲁乡',653224,4),(653224203,'恰尔巴格乡',653224,4),(653224204,'杭桂乡',653224,4),(653224205,'多鲁乡',653224,4),(653224206,'纳瓦乡',653224,4),(653224207,'拜什托格拉克乡',653224,4),(653224208,'阿其克乡',653224,4),(653224401,'良种场',653224,4),(653225100,'策勒镇',653225,4),(653225200,'策勒乡',653225,4),(653225201,'固拉哈玛乡',653225,4),(653225202,'达玛沟乡',653225,4),(653225203,'恰哈乡',653225,4),(653225204,'乌鲁克萨依乡',653225,4),(653225205,'奴尔乡',653225,4),(653225206,'博斯坦乡',653225,4),(653225500,'兵团一牧场',653225,4),(653226100,'木尕拉镇',653226,4),(653226101,'先拜巴扎镇',653226,4),(653226200,'加依乡',653226,4),(653226201,'科克亚乡',653226,4),(653226202,'阿热勒乡',653226,4),(653226203,'阿日希乡',653226,4),(653226204,'兰干乡',653226,4),(653226205,'斯也克乡',653226,4),(653226206,'托格日尕孜乡',653226,4),(653226207,'喀拉克尔乡',653226,4),(653226208,'奥依托格拉克乡',653226,4),(653226209,'阿羌乡',653226,4),(653226210,'英巴格乡',653226,4),(653226211,'希吾勒乡',653226,4),(653226212,'达里雅布依乡',653226,4),(653226400,'拉依苏良种场',653226,4),(653226401,'国营（昆仑）种羊场',653226,4),(653226402,'于田监狱',653226,4),(653227100,'尼雅镇',653227,4),(653227200,'尼雅乡',653227,4),(653227201,'若克雅乡',653227,4),(653227202,'萨勒吾则克乡',653227,4),(653227203,'叶亦克乡',653227,4),(653227204,'安迪尔乡',653227,4),(653227205,'亚瓦通古孜乡',653227,4),(654002001,'萨依布依街道',654002,4),(654002002,'墩买里街道',654002,4),(654002003,'伊犁河路街道',654002,4),(654002004,'喀赞其街道',654002,4),(654002005,'都来提巴格街道',654002,4),(654002006,'琼科瑞克街道',654002,4),(654002007,'艾兰木巴格街道',654002,4),(654002008,'解放路街道',654002,4),(654002009,'伊宁市边境经济合作区管委会',654002,4),(654002100,'巴彦岱镇',654002,4),(654002200,'英也尔乡',654002,4),(654002201,'汉宾乡',654002,4),(654002202,'塔什科瑞克乡',654002,4),(654002203,'喀尔墩乡',654002,4),(654002204,'托格拉克乡',654002,4),(654002205,'克伯克圩孜乡',654002,4),(654002206,'达达木图乡',654002,4),(654002207,'潘津乡',654002,4),(654002400,'伊犁州农业良种繁育中心',654002,4),(654002401,'伊宁市园艺场',654002,4),(654002402,'伊犁州奶牛场',654002,4),(654003001,'团结路街道',654003,4),(654003002,'乌东路街道',654003,4),(654003003,'北京路街道',654003,4),(654003004,'乌鲁木齐西路街道',654003,4),(654003005,'火车站街道',654003,4),(654003201,'开干齐乡',654003,4),(654003508,'兵团一三一团',654003,4),(654003510,'天北新区',654003,4),(654021100,'吉里于孜镇',654021,4),(654021101,'墩麻扎镇',654021,4),(654021200,'胡地于孜乡',654021,4),(654021201,'吐鲁番于孜乡',654021,4),(654021202,'喀拉亚尕奇乡',654021,4),(654021203,'武功乡',654021,4),(654021204,'萨地克于孜乡',654021,4),(654021205,'愉群翁回族乡',654021,4),(654021206,'阿热吾斯塘乡',654021,4),(654021207,'英塔木乡',654021,4),(654021208,'巴依托海乡',654021,4),(654021209,'维吾尔玉其温乡',654021,4),(654021210,'萨木于孜乡',654021,4),(654021211,'喀什乡',654021,4),(654021212,'麻扎乡',654021,4),(654021213,'温亚尔乡',654021,4),(654021214,'阿乌利亚乡',654021,4),(654021215,'曲鲁海乡',654021,4),(654021400,'青年农场',654021,4),(654021401,'多浪农场',654021,4),(654021501,'兵团七十团中心团场',654021,4),(654022100,'察布查尔镇',654022,4),(654022101,'爱新色里镇',654022,4),(654022200,'堆齐牛录乡',654022,4),(654022201,'孙扎齐牛录乡',654022,4),(654022202,'绰霍尔乡',654022,4),(654022203,'纳达齐牛录乡',654022,4),(654022204,'扎库齐牛录乡',654022,4),(654022205,'米粮泉回族乡',654022,4),(654022206,'坎乡',654022,4),(654022207,'阔洪奇乡',654022,4),(654022208,'海努克乡',654022,4),(654022209,'加尕斯台乡',654022,4),(654022210,'琼博拉乡',654022,4),(654022401,'安班巴格良繁场',654022,4),(654022403,'伊犁州平原林场',654022,4),(654022404,'山区林场',654022,4),(654022408,'都拉塔口岸',654022,4),(654022502,'兵团六十七团',654022,4),(654022503,'兵团六十八团',654022,4),(654022504,'兵团六十九团',654022,4),(654023100,'水定镇',654023,4),(654023101,'清水河镇',654023,4),(654023102,'芦草沟镇',654023,4),(654023103,'惠远镇',654023,4),(654023104,'萨尔布拉克镇',654023,4),(654023200,'兰干乡',654023,4),(654023201,'三道河乡',654023,4),(654023203,'伊车嘎善乡',654023,4),(654023204,'三宫乡',654023,4),(654023205,'大西沟乡',654023,4),(654023400,'格干沟牧场',654023,4),(654023401,'莫乎尔牧场',654023,4),(654023402,'果子沟牧场',654023,4),(654023403,'良种繁育中心',654023,4),(654023404,'霍尔果斯口岸',654023,4),(654023411,'煤炭局',654023,4),(654023505,'兵团六十一团',654023,4),(654023506,'兵团六十二团',654023,4),(654023507,'兵团六十三团',654023,4),(654023508,'兵团六十四团',654023,4),(654023509,'兵团六十六团（中心团场）',654023,4),(654024100,'巩留镇',654024,4),(654024101,'阿克吐别克镇',654024,4),(654024102,'库尔德宁镇',654024,4),(654024201,'吉尔格郎乡',654024,4),(654024202,'阿尕尔森乡',654024,4),(654024203,'东买里乡',654024,4),(654024204,'塔斯托别乡',654024,4),(654024205,'提克阿热克乡',654024,4),(654024400,'综合农场',654024,4),(654024401,'阔什阿尕什羊场',654024,4),(654024402,'牛场',654024,4),(654024403,'良凡场',654024,4),(654024405,'林场',654024,4),(654024406,'莫乎尔农场',654024,4),(654024510,'兵团七十三团',654024,4),(654025100,'新源镇',654025,4),(654025101,'则克台镇',654025,4),(654025102,'阿热勒托别镇',654025,4),(654025103,'塔勒德镇',654025,4),(654025104,'那拉提镇',654025,4),(654025105,'肖尔布拉克镇',654025,4),(654025106,'喀拉布拉镇',654025,4),(654025200,'别斯托别乡',654025,4),(654025201,'坎苏乡',654025,4),(654025203,'阿勒玛勒乡',654025,4),(654025204,'吐尔根乡',654025,4),(654025400,'种羊场',654025,4),(654025403,'公安农场',654025,4),(654025511,'兵团七十一团',654025,4),(654025512,'兵团七十二团',654025,4),(654026100,'昭苏镇',654026,4),(654026200,'洪纳海乡',654026,4),(654026201,'乌尊布拉克乡',654026,4),(654026202,'阿克达拉乡',654026,4),(654026203,'萨尔阔布乡',654026,4),(654026204,'喀夏加尔乡',654026,4),(654026205,'喀拉苏乡',654026,4),(654026206,'察汗乌苏蒙古族乡',654026,4),(654026207,'夏特柯尔克孜族乡',654026,4),(654026208,'胡松图喀尔逊蒙古族乡',654026,4),(654026402,'种马场',654026,4),(654026403,'天山西部林业局昭苏林场',654026,4),(654026404,'昭苏马场',654026,4),(654026513,'兵团七十四团',654026,4),(654026514,'兵团七十五团',654026,4),(654026515,'兵团七十六团',654026,4),(654026516,'兵团七十七团',654026,4),(654027100,'特克斯镇',654027,4),(654027101,'乔拉克铁热克镇',654027,4),(654027102,'喀拉达拉镇',654027,4),(654027200,'呼吉尔特蒙古民族乡',654027,4),(654027201,'阔克苏乡',654027,4),(654027202,'齐勒乌泽克乡',654027,4),(654027203,'阔克铁热克柯尔克孜民族乡',654027,4),(654027206,'喀拉托海乡',654027,4),(654027404,'特克斯军马场',654027,4),(654027405,'科克苏林场',654027,4),(654027517,'兵团七十八团',654027,4),(654028100,'尼勒克镇',654028,4),(654028200,'苏布台乡',654028,4),(654028201,'喀拉苏乡',654028,4),(654028202,'加哈乌拉斯台乡',654028,4),(654028203,'尼勒克县乌赞乡',654028,4),(654028204,'科克浩特浩尔蒙古民族乡',654028,4),(654028205,'乌拉斯台乡',654028,4),(654028206,'克令乡',654028,4),(654028207,'喀拉托别乡',654028,4),(654028208,'胡吉尔台乡',654028,4),(654028209,'木斯乡',654028,4),(654028402,'尼勒克马场',654028,4),(654028404,'种蜂场',654028,4),(654028518,'兵团七十九团',654028,4),(654201001,'和平街道',654201,4),(654201002,'杜别克街道',654201,4),(654201003,'新城街道',654201,4),(654201100,'二工镇',654201,4),(654201101,'恰夏镇',654201,4),(654201200,'喀拉哈巴克乡',654201,4),(654201202,'阿西尔达斡尔民族乡',654201,4),(654201203,'阿不都拉乡',654201,4),(654201204,'也门勒乡',654201,4),(654201403,'恰合吉牧场',654201,4),(654201404,'博孜达克农场',654201,4),(654201405,'窝依加依劳牧场',654201,4),(654201406,'地区种牛场',654201,4),(654201503,'兵团农九师一六三团',654201,4),(654201504,'兵团农九师一六四团',654201,4),(654202001,'南苑街道',654202,4),(654202002,'虹桥街道',654202,4),(654202003,'新市区街道',654202,4),(654202100,'白杨沟镇',654202,4),(654202101,'哈图布呼镇',654202,4),(654202102,'皇宫镇',654202,4),(654202103,'车排子镇',654202,4),(654202104,'甘河子镇',654202,4),(654202105,'百泉镇',654202,4),(654202106,'四棵树镇',654202,4),(654202107,'古尔图镇',654202,4),(654202108,'西湖镇',654202,4),(654202109,'西大沟镇',654202,4),(654202200,'八十四户乡',654202,4),(654202201,'夹河子乡',654202,4),(654202202,'九间楼乡',654202,4),(654202203,'石桥乡',654202,4),(654202204,'头台乡',654202,4),(654202205,'吉尔格勒特郭愣蒙古民族乡',654202,4),(654202206,'塔布勒合特蒙古民族乡',654202,4),(654202400,'甘家湖牧场',654202,4),(654202401,'巴音沟牧场',654202,4),(654202402,'赛力克提牧场',654202,4),(654202403,'乌苏监狱',654202,4),(654202500,'兵团一二三团',654202,4),(654202501,'兵团一二四团',654202,4),(654202502,'兵团一二五团',654202,4),(654202503,'兵团一二六团',654202,4),(654202504,'兵团一二七团',654202,4),(654202505,'兵团一二八团',654202,4),(654202507,'兵团一三零团',654202,4),(654221100,'额敏镇',654221,4),(654221101,'玉什喀拉苏镇',654221,4),(654221102,'杰勒阿尕什镇',654221,4),(654221103,'上户镇',654221,4),(654221200,'郊区乡',654221,4),(654221202,'额玛勒郭楞蒙古民族乡',654221,4),(654221205,'玛热勒苏乡',654221,4),(654221206,'喀拉也木勒乡',654221,4),(654221207,'喇嘛昭乡',654221,4),(654221208,'霍吉尔特蒙古民族乡',654221,4),(654221209,'二道桥乡',654221,4),(654221400,'二支河牧场',654221,4),(654221401,'加尔布拉克农场',654221,4),(654221402,'阔什比克良种场',654221,4),(654221403,'萨尔也木勒牧场',654221,4),(654221404,'也木勒牧场',654221,4),(654221405,'塔城地区种羊场',654221,4),(654221406,'吾宗布拉克牧场',654221,4),(654221505,'兵团农九师一六五团',654221,4),(654221506,'兵团农九师一六六团',654221,4),(654221507,'兵团农九师一六七团',654221,4),(654221508,'兵团农九师一六八团',654221,4),(654221511,'兵团农九师团结农场',654221,4),(654223100,'三道河子镇',654223,4),(654223101,'四道河子镇',654223,4),(654223102,'老沙湾镇',654223,4),(654223103,'乌兰乌苏镇',654223,4),(654223104,'安集海镇',654223,4),(654223105,'东湾镇',654223,4),(654223106,'西戈壁镇',654223,4),(654223107,'柳毛湾镇',654223,4),(654223108,'金沟河镇',654223,4),(654223200,'商户地乡',654223,4),(654223201,'大泉乡',654223,4),(654223202,'博尔通古乡',654223,4),(654223400,'牛圈子牧场',654223,4),(654223401,'博尔通古牧场',654223,4),(654223402,'良种场',654223,4),(654223503,'兵团一二一团',654223,4),(654223506,'兵团一三三团',654223,4),(654223507,'兵团一三四团',654223,4),(654223509,'兵团一四一团',654223,4),(654223510,'兵团一四二团',654223,4),(654223511,'兵团一四三团',654223,4),(654223512,'兵团一四四团',654223,4),(654224100,'托里镇',654224,4),(654224101,'铁厂沟镇',654224,4),(654224102,'庙尔沟镇',654224,4),(654224200,'多拉特乡',654224,4),(654224201,'乌雪特乡',654224,4),(654224202,'库普乡',654224,4),(654224203,'阿克别里斗乡',654224,4),(654224401,'白杨河林场',654224,4),(654224402,'老风口林场',654224,4),(654224403,'巴尔鲁克山塔斯特林场',654224,4),(654224510,'兵团农九师一七零团',654224,4),(654225100,'哈拉布拉镇',654225,4),(654225101,'吉也克镇',654225,4),(654225200,'哈拉布拉乡',654225,4),(654225201,'新地乡',654225,4),(654225202,'阿勒腾也木勒乡',654225,4),(654225204,'江格斯乡',654225,4),(654225400,'察汗托海牧场',654225,4),(654225501,'兵团农九师一六一团',654225,4),(654226100,'和布克赛尔镇',654226,4),(654226101,'和什托洛盖镇',654226,4),(654226200,'夏孜盖乡',654226,4),(654226201,'铁布肯乌散乡',654226,4),(654226202,'查干库勒乡',654226,4),(654226203,'巴音傲瓦乡',654226,4),(654226204,'莫特格乡',654226,4),(654226205,'查和特乡',654226,4),(654226400,'伊克乌图布拉格牧场',654226,4),(654226401,'那仁和布克牧场',654226,4),(654226402,'巴尕乌图布拉格牧场',654226,4),(654226403,'布斯屯格牧场',654226,4),(654226404,'仓德格矿区',654226,4),(654226500,'兵团一八四团',654226,4),(654226501,'新疆屯鑫能源开发有限公司',654226,4),(654301001,'金山路办事处',654301,4),(654301002,'解放路办事处',654301,4),(654301003,'团结路办事处',654301,4),(654301100,'北屯镇',654301,4),(654301101,'阿苇滩镇',654301,4),(654301102,'红墩镇',654301,4),(654301103,'切木尔切克镇',654301,4),(654301201,'阿拉哈克乡',654301,4),(654301202,'汗德尕特蒙古族乡',654301,4),(654301203,'拉斯特乡',654301,4),(654301204,'喀拉希力克乡',654301,4),(654301205,'萨尔胡松乡',654301,4),(654301206,'巴里巴盖乡',654301,4),(654301207,'切尔克齐乡',654301,4),(654301400,'喀拉尕什牧场',654301,4),(654301401,'阿克吐木斯克牧场',654301,4),(654301500,'兵团一八一团',654301,4),(654321100,'布尔津镇',654321,4),(654321101,'冲乎尔镇',654321,4),(654321200,'窝依莫克乡',654321,4),(654321201,'杜来提乡',654321,4),(654321202,'阔斯特克乡',654321,4),(654321204,'也格孜托别乡',654321,4),(654321205,'禾木哈纳斯蒙古民族乡',654321,4),(654322100,'库额尔齐斯镇',654322,4),(654322101,'可可托海镇',654322,4),(654322102,'恰库尔图镇',654322,4),(654322103,'喀拉通克镇',654322,4),(654322200,'吐尔洪乡',654322,4),(654322201,'杜热乡',654322,4),(654322202,'库尔特乡',654322,4),(654322203,'克孜勒希力克乡',654322,4),(654322204,'铁买克乡',654322,4),(654322205,'喀拉布勒根乡',654322,4),(654323100,'福海镇',654323,4),(654323200,'解特阿热勒乡',654323,4),(654323201,'阔克阿尕什乡',654323,4),(654323202,'齐干吉迭乡',654323,4),(654323203,'喀拉玛盖乡',654323,4),(654323204,'阿尔达乡',654323,4),(654323400,'地区一农场',654323,4),(654323401,'福海监狱',654323,4),(654323500,'兵团一八二团',654323,4),(654323501,'兵团一八三团',654323,4),(654323502,'兵团一八七团',654323,4),(654323503,'兵团一八八团',654323,4),(654324100,'阿克齐镇',654324,4),(654324200,'萨尔塔木乡',654324,4),(654324201,'加依勒玛乡',654324,4),(654324202,'库勒拜乡',654324,4),(654324203,'萨尔布拉克乡',654324,4),(654324204,'铁热克提乡',654324,4),(654324205,'齐巴尔乡',654324,4),(654324500,'兵团一八五团',654324,4),(654325100,'青河镇',654325,4),(654325101,'塔克什肯镇',654325,4),(654325102,'阿热勒托别镇',654325,4),(654325200,'阿热勒乡',654325,4),(654325202,'萨尔托海乡',654325,4),(654325203,'查干郭勒乡',654325,4),(654325204,'阿尕什敖包乡',654325,4),(654326100,'托普铁热克镇',654326,4),(654326101,'吉木乃镇',654326,4),(654326200,'托普铁热克乡',654326,4),(654326201,'托斯特乡',654326,4),(654326202,'恰勒什海乡',654326,4),(654326203,'喀尔交乡',654326,4),(654326204,'别斯铁热克乡',654326,4),(654326500,'兵团一八六团',654326,4),(654326501,'观湖街道',440323,4),(654326502,'民治街道',440323,4),(654326503,'龙华街道',440323,4),(654326504,'龙华街道',440323,4),(654326505,'福城街道',440323,4),(654326506,'观澜街道',440323,4),(654326507,'大鹏街道',440322,4),(654326508,'南澳街道',440322,4),(654326509,'葵涌街道',440322,4),(654326510,'坪山街道',440321,4),(654326511,'马峦街道',440321,4),(654326512,'碧岭街道',440321,4),(654326513,'石井街道',440321,4),(654326514,'坑梓街道',440321,4),(654326515,'龙田街道',440321,4),(654326516,'光明街道',440320,4),(654326517,'公明街道',440320,4),(654326518,'新湖街道',440320,4),(654326519,'凤凰街道',440320,4),(654326520,'玉塘街道',440320,4),(654326521,'马田街道',440320,4),(654326522,'唐海镇',130230,4),(654326523,'滨海镇',130230,4),(654326524,'柳赞镇',130230,4),(654326525,'一农场',130230,4),(654326526,'三农场',130230,4),(654326527,'四农场',130230,4),(654326528,'五农场',130230,4),(654326529,'六农场',130230,4),(654326530,'七农场',130230,4),(654326531,'八农场',130230,4),(654326532,'九农场',130230,4),(654326533,'十农场',130230,4),(654326534,'十一农场',130230,4),(654326535,'八里滩养殖场',130230,4),(654326536,'十里海养殖场',130230,4),(654326537,'南堡经济开发区',130230,4),(654326538,'曹妃甸工业区',130230,4),(654326539,'唐山湾生态城',130230,4),(654326540,'东街街道',140482,4),(654326541,'西街街道',140482,4),(654326542,'英雄南路街道',140482,4),(654326543,'英雄中路街道',140482,4),(654326544,'紫金街街道',140482,4),(654326545,'太行东街街道',140482,4),(654326546,'太行西街街道',140482,4),(654326547,'延安南路街道',140482,4),(654326548,'常青街道',140482,4),(654326549,'五马街道',140482,4),(654326550,'长治高新技术开发区',140482,4),(654326551,'长北街道',140483,4),(654326552,'故县街道',140483,4),(654326553,'老顶山镇',140483,4),(654326554,'堠北庄镇',140483,4),(654326555,'大辛庄镇',140483,4),(654326556,'马厂镇',140483,4),(654326557,'黄碾镇',140483,4),(654326558,'西白兔乡',140483,4),(654326559,'第一街道',150703,4),(654326560,'第二街道',150703,4),(654326561,'第三街道',150703,4),(654326562,'第四街道',150703,4),(654326563,'第五街道',150703,4),(654326564,'灵泉街道',150703,4),(654326565,'新城子街道',210184,4),(654326566,'清水台街道',210184,4),(654326567,'辉山街道',210184,4),(654326568,'道义街道',210184,4),(654326569,'虎石台街道',210184,4),(654326570,'财落街道',210184,4),(654326571,'沈北街道',210184,4),(654326572,'马刚街道',210184,4),(654326573,'石佛寺街道',210184,4),(654326574,'黄家街道',210184,4),(654326575,'尹家街道',210184,4),(654326576,'兴隆台街道',210184,4),(654326577,'清泉街道',210184,4),(654326578,'孙家堡子街道',220625,4),(654326579,'江源街道',220625,4),(654326580,'正岔街道',220625,4),(654326581,'城墙街道',220625,4),(654326582,'湾沟镇',220625,4),(654326583,'松树镇',220625,4),(654326584,'砟子镇',220625,4),(654326585,'石人镇',220625,4),(654326586,'大阳岔镇',220625,4),(654326587,'大石人镇',220625,4),(654326588,'香坊大街街道',230106,4),(654326589,'安埠街道',230106,4),(654326590,'通天街道',230106,4),(654326591,'新香坊街道',230106,4),(654326592,'铁东街道',230106,4),(654326593,'新成街道',230106,4),(654326594,'红旗街道',230106,4),(654326595,'六顺街道',230106,4),(654326596,'建筑街道',230106,4),(654326597,'哈平路街道',230106,4),(654326598,'安乐街道',230106,4),(654326599,'健康路街道',230106,4),(654326600,'大庆路街道',230106,4),(654326601,'进乡街道',230106,4),(654326602,'通乡街道',230106,4),(654326603,'和平路街道',230106,4),(654326604,'民生路街道',230106,4),(654326605,'文政街道',230106,4),(654326606,'王兆街道',230106,4),(654326607,'黎明街道',230106,4),(654326608,'成高子镇',230106,4),(654326609,'幸福镇',230106,4),(654326610,'朝阳镇',230106,4),(654326611,'向阳乡',230106,4),(654326612,'香坊实验农场',230106,4),(654326613,'香坊区农垦',230106,4),(654326614,'金城街道',230181,4),(654326615,'金都街道',230181,4),(654326616,'通城街道',230181,4),(654326617,'河东街道',230181,4),(654326618,'阿什河街道',230181,4),(654326619,'玉泉街道',230181,4),(654326620,'新利街道',230181,4),(654326621,'双丰街道',230181,4),(654326622,'舍利街道',230181,4),(654326623,'小岭街道',230181,4),(654326624,'亚沟街道',230181,4),(654326625,'交界街道',230181,4),(654326626,'蜚克图镇',230181,4),(654326627,'平山镇',230181,4),(654326628,'松峰山镇',230181,4),(654326629,'红星镇',230181,4),(654326630,'金龙山镇',230181,4),(654326631,'杨树镇',230181,4),(654326632,'料甸镇',230181,4),(654326633,'阿城原种场',230181,4),(654326634,'小扬气镇',232702,4),(654326635,'劲松镇',232702,4),(654326636,'古源镇',232702,4),(654326637,'新林镇',232703,4),(654326638,'翠岗镇',232703,4),(654326639,'塔源镇',232703,4),(654326640,'大乌苏镇',232703,4),(654326641,'塔尔根镇',232703,4),(654326642,'碧洲镇',232703,4),(654326643,'宏图镇',232703,4),(654326644,'呼中镇',232704,4),(654326645,'呼源镇',232704,4),(654326646,'碧水镇',232704,4),(654326647,'宏伟镇',232704,4),(654326648,'东山社区',232724,4),(654326649,'卫东社区',232724,4),(654326650,'红旗社区',232724,4),(654326651,'长虹社区',232724,4),(654326652,'曙光社区',232724,4),(654326653,'光明社区',232724,4),(654326654,'加北乡',232724,4),(654326655,'白桦乡',232724,4),(654326656,'三河尖街道',320323,4),(654326657,'张双楼街道',320323,4),(654326658,'垞城街道',320323,4),(654326659,'张集街道',320323,4),(654326660,'义安街道',320323,4),(654326661,'利国街道',320323,4),(654326662,'电厂街道',320323,4),(654326663,'拾屯街道',320323,4),(654326664,'铜山街道',320323,4),(654326665,'新区街道',320323,4),(654326666,'三堡街道',320323,4),(654326667,'何桥镇',320323,4),(654326668,'黄集镇',320323,4),(654326669,'马坡镇',320323,4),(654326670,'郑集镇',320323,4),(654326671,'柳新镇',320323,4),(654326672,'刘集镇',320323,4),(654326673,'大彭镇',320323,4),(654326674,'汉王镇',320323,4),(654326675,'棠张镇',320323,4),(654326676,'张集镇',320323,4),(654326677,'房村镇',320323,4),(654326678,'伊庄镇',320323,4),(654326679,'单集镇',320323,4),(654326680,'利国镇',320323,4),(654326681,'徐庄镇',320323,4),(654326682,'大许镇',320323,4),(654326683,'茅村镇',320323,4),(654326684,'柳泉镇',320323,4),(654326685,'国营沿湖农场',320323,4),(654326686,'徐州高新技术产业开发区',320323,4),(654326687,'双塔街道',320508,4),(654326688,'沧浪街道',320508,4),(654326689,'胥江街道',320508,4),(654326690,'吴门桥街道',320508,4),(654326691,'葑门街道',320508,4),(654326692,'友新街道',320508,4),(654326693,'观前街道',320508,4),(654326694,'平江街道',320508,4),(654326695,'苏锦街道',320508,4),(654326696,'娄门街道',320508,4),(654326697,'城北街道',320508,4),(654326698,'桃花坞街道',320508,4),(654326699,'石路街道',320508,4),(654326700,'金阊街道',320508,4),(654326701,'留园街道',320508,4),(654326702,'虎丘街道',320508,4),(654326703,'白洋湾街道',320508,4),(654326704,'娄葑街道',320508,4),(654326705,'斜塘街道',320508,4),(654326706,'唯亭街道',320508,4),(654326707,'胜浦街道',320508,4),(654326708,'苏州工业园区直属镇',320508,4),(654326709,'太湖新城镇',320584,4),(654326710,'松陵镇',320584,4),(654326711,'同里镇',320584,4),(654326712,'平望镇',320584,4),(654326713,'盛泽镇',320584,4),(654326714,'七都镇',320584,4),(654326715,'震泽镇',320584,4),(654326716,'桃源镇',320584,4),(654326717,'黎里镇',320584,4),(654326718,'仙女镇',321088,4),(654326719,'小纪镇',321088,4),(654326720,'武坚镇',321088,4),(654326721,'樊川镇',321088,4),(654326722,'真武镇',321088,4),(654326723,'宜陵镇',321088,4),(654326724,'丁沟镇',321088,4),(654326725,'郭村镇',321088,4),(654326726,'邵伯镇',321088,4),(654326727,'丁伙镇',321088,4),(654326728,'大桥镇',321088,4),(654326729,'吴桥镇',321088,4),(654326730,'浦头镇',321088,4),(654326731,'立新农场',321088,4),(654326732,'中庙街道',341400,4),(654326733,'亚父街道',341400,4),(654326734,'卧牛山街道',341400,4),(654326735,'凤凰山街道',341400,4),(654326736,'天河街道',341400,4),(654326737,'半汤街道',341400,4),(654326738,'栏杆集镇',341400,4),(654326739,'苏湾镇',341400,4),(654326740,'柘皋镇',341400,4),(654326741,'银屏镇',341400,4),(654326742,'夏阁镇',341400,4),(654326743,'中垾镇',341400,4),(654326744,'散兵镇',341400,4),(654326745,'烔炀镇',341400,4),(654326746,'黄麓镇',341400,4),(654326747,'槐林镇',341400,4),(654326748,'坝镇镇',341400,4),(654326749,'庙岗乡',341400,4),(654326750,'庐城镇',341421,4),(654326751,'冶父山镇',341421,4),(654326752,'汤池镇',341421,4),(654326753,'金牛镇',341421,4),(654326754,'石头镇',341421,4),(654326755,'郭河镇',341421,4),(654326756,'同大镇',341421,4),(654326757,'龙桥镇',341421,4),(654326758,'矾山镇',341421,4),(654326759,'泥河镇',341421,4),(654326760,'罗河镇',341421,4),(654326761,'柯坦镇',341421,4),(654326762,'白山镇',341421,4),(654326763,'盛桥镇',341421,4),(654326764,'万山镇',341421,4),(654326765,'乐桥镇',341421,4),(654326766,'白湖镇',341421,4),(654326767,'无城镇',341422,4),(654326768,'襄安镇',341422,4),(654326769,'陡沟镇',341422,4),(654326770,'石涧镇',341422,4),(654326771,'严桥镇',341422,4),(654326772,'开城镇',341422,4),(654326773,'蜀山镇',341422,4),(654326774,'牛埠镇',341422,4),(654326775,'刘渡镇',341422,4),(654326776,'姚沟镇',341422,4),(654326777,'泥汊镇',341422,4),(654326778,'福渡镇',341422,4),(654326779,'泉塘镇',341422,4),(654326780,'赫店镇',341422,4),(654326781,'红庙镇',341422,4),(654326782,'高沟镇',341422,4),(654326783,'鹤毛乡十里墩乡',341422,4),(654326784,'昆山乡',341422,4),(654326785,'洪巷乡',341422,4),(654326786,'博望镇',340506,4),(654326787,'丹阳镇',340506,4),(654326788,'新市镇',340506,4),(654326789,'环峰镇',341423,4),(654326790,'运漕镇',341423,4),(654326791,'铜闸镇',341423,4),(654326792,'陶厂镇',341423,4),(654326793,'林头镇',341423,4),(654326794,'清溪镇',341423,4),(654326795,'仙踪镇',341423,4),(654326796,'昭关镇',341423,4),(654326797,'历阳镇',341424,4),(654326798,'白桥镇',341424,4),(654326799,'姥桥镇',341424,4),(654326800,'功桥镇',341424,4),(654326801,'西埠镇',341424,4),(654326802,'香泉镇',341424,4),(654326803,'乌江镇',341424,4),(654326804,'善厚镇',341424,4),(654326805,'石杨镇',341424,4),(654326806,'金城镇',350527,4),(654326807,'金湖镇',350527,4),(654326808,'金沙镇',350527,4),(654326809,'金宁乡',350527,4),(654326810,'烈屿乡',350527,4),(654326811,'乌丘乡',350527,4),(654326812,'茶山街道',360483,4),(654326813,'甘露镇',360483,4),(654326814,'金湖乡',360483,4),(654326815,'江益镇',360483,4),(654326816,'苏家垱乡',360483,4),(654326817,'泽泉乡',360483,4),(654326818,'粥店街道',370903,4),(654326819,'天平街道',370903,4),(654326820,'马庄镇',370903,4),(654326821,'房村镇',370903,4),(654326822,'角峪镇',370903,4),(654326823,'范镇',370903,4),(654326824,'祝阳镇',370903,4),(654326825,'山口镇',370903,4),(654326826,'黄前镇',370903,4),(654326827,'下港镇',370903,4),(654326828,'良庄镇',370903,4),(654326829,'东城街道',421302,4),(654326830,'西城街道',421302,4),(654326831,'南郊街道',421302,4),(654326832,'北郊街道',421302,4),(654326833,'万店镇',421302,4),(654326834,'何店镇',421302,4),(654326835,'洛阳镇',421302,4),(654326836,'随州城南新区管委会',421302,4),(654326837,'曾都区经济开发区',421302,4),(654326838,'白箬铺镇',430122,4),(654326839,'靖港镇',430122,4),(654326840,'乔口镇',430122,4),(654326841,'茶亭镇',430122,4),(654326842,'桥驿镇',430122,4),(654326843,'雷锋街道',430122,4),(654326844,'黄金园街道',430122,4),(654326845,'金山桥街道',430122,4),(654326846,'白沙洲街道',430122,4),(654326847,'大泽湖街道',430122,4),(654326848,'月亮岛街道',430122,4),(654326849,'乌山街道',430122,4),(654326850,'高塘岭街道',430122,4),(654326851,'铜官街道',430122,4),(654326852,'丁字湾街道',430122,4),(654326853,'龙圩镇',450406,4),(654326854,'大坡镇',450406,4),(654326855,'广平镇',450406,4),(654326856,'新地镇',450406,4),(654326857,'西湾街道',451119,4),(654326858,'黄田镇',451119,4),(654326859,'鹅塘镇',451119,4),(654326860,'沙田镇',451119,4),(654326861,'公会镇',451119,4),(654326862,'大平瑶族乡',451119,4),(654326863,'水口镇',451119,4),(654326864,'望高镇',451119,4),(654326865,'羊头镇',451119,4),(654326866,'龙城街道',530121,4),(654326867,'洛羊街道',530121,4),(654326868,'斗南街道',530121,4),(654326869,'吴家营街道',530121,4),(654326870,'洛龙街道',530121,4),(654326871,'乌龙街道',530121,4),(654326872,'雨花街道',530121,4),(654326873,'大渔街道',530121,4),(654326874,'马金铺街道',530121,4),(654326875,'七甸街道',530121,4),(654326876,'开化街道',532621,4),(654326877,'卧龙街道',532621,4),(654326878,'新平街道',532621,4),(654326879,'古木镇',532621,4),(654326880,'平坝镇',532621,4),(654326881,'马塘镇',532621,4),(654326882,'德厚镇',532621,4),(654326883,'小街镇',532621,4),(654326884,'追栗街镇',532621,4),(654326885,'薄竹镇',532621,4),(654326886,'新街乡',532621,4),(654326887,'喜古乡',532621,4),(654326888,'东山彝族乡',532621,4),(654326889,'柳井彝族乡',532621,4),(654326890,'坝心彝族乡',532621,4),(654326891,'秉烈彝族乡',532621,4),(654326892,'红甸回族乡',532621,4),(654326893,'措折罗玛镇',542432,4),(654326894,'协德乡',542432,4),(654326895,'雅曲乡',542432,4),(654326896,'嘎措乡',542432,4),(654326897,'措折强玛乡',542432,4),(654326898,'多玛乡',542432,4),(654326899,'巴岭乡',542432,4),(654326900,'古南街道',500222,4),(654326901,'文龙街道',500222,4),(654326902,'三江街道',500222,4),(654326903,'万盛街道',500222,4),(654326904,'东林街道',500222,4),(654326905,'石角镇',500222,4),(654326906,'东溪镇',500222,4),(654326907,'赶水镇',500222,4),(654326908,'打通镇',500222,4),(654326909,'石壕镇',500222,4),(654326910,'永新镇',500222,4),(654326911,'三角镇',500222,4),(654326912,'隆盛镇',500222,4),(654326913,'郭扶镇',500222,4),(654326914,'篆塘镇',500222,4),(654326915,'丁山镇',500222,4),(654326916,'安稳镇',500222,4),(654326917,'扶欢镇',500222,4),(654326918,'永城镇',500222,4),(654326919,'新盛镇',500222,4),(654326920,'中峰镇',500222,4),(654326921,'横山镇',500222,4),(654326922,'万东镇',500222,4),(654326923,'南桐镇',500222,4),(654326924,'青年镇',500222,4),(654326925,'关坝镇',500222,4),(654326926,'丛林镇',500222,4),(654326927,'石林镇',500222,4),(654326928,'金桥镇',500222,4),(654326929,'黑山镇',500222,4),(654326930,'棠香街道',500225,4),(654326931,'龙岗街道',500225,4),(654326932,'龙滩子街道',500225,4),(654326933,'双路街道',500225,4),(654326934,'通桥街道',500225,4),(654326935,'智凤街道',500225,4),(654326936,'龙水镇',500225,4),(654326937,'邮亭镇',500225,4),(654326938,'宝顶镇',500225,4),(654326939,'万古镇',500225,4),(654326940,'珠溪镇',500225,4),(654326941,'中敖镇',500225,4),(654326942,'三驱镇',500225,4),(654326943,'石马镇',500225,4),(654326944,'雍溪镇',500225,4),(654326945,'玉龙镇',500225,4),(654326946,'宝兴镇',500225,4),(654326947,'拾万镇',500225,4),(654326948,'铁山镇',500225,4),(654326949,'回龙镇',500225,4),(654326950,'国梁镇',500225,4),(654326951,'金山镇',500225,4),(654326952,'高升镇',500225,4),(654326953,'季家镇',500225,4),(654326954,'龙石镇',500225,4),(654326955,'高坪镇',500225,4),(654326956,'古龙镇',500225,4),(654326957,'几江街道',500381,4),(654326958,'德感街道',500381,4),(654326959,'鼎山街道',500381,4),(654326960,'双福街道',500381,4),(654326961,'圣泉街道',500381,4),(654326962,'珞璜镇',500381,4),(654326963,'白沙镇',500381,4),(654326964,'油溪镇',500381,4),(654326965,'李市镇',500381,4),(654326966,'先锋镇',500381,4),(654326967,'慈云镇',500381,4),(654326968,'杜市镇',500381,4),(654326969,'石蟆镇',500381,4),(654326970,'蔡家镇',500381,4),(654326971,'吴滩镇',500381,4),(654326972,'贾嗣镇',500381,4),(654326973,'永兴镇',500381,4),(654326974,'龙华镇',500381,4),(654326975,'石门镇',500381,4),(654326976,'柏林镇',500381,4),(654326977,'朱杨镇',500381,4),(654326978,'嘉平镇',500381,4),(654326979,'中山镇',500381,4),(654326980,'塘河镇',500381,4),(654326981,'西湖镇',500381,4),(654326982,'夏坝镇',500381,4),(654326983,'广兴镇',500381,4),(654326984,'四面山镇',500381,4),(654326985,'四屏镇',500381,4),(654326986,'支坪镇',500381,4),(654326987,'合阳城街道办事处',500382,4),(654326988,'钓鱼城街道办事处',500382,4),(654326989,'南津街街道办事处',500382,4),(654326990,'云门街道',500382,4),(654326991,'大石街道',500382,4),(654326992,'草街街道',500382,4),(654326993,'盐井街道',500382,4),(654326994,'钱塘镇',500382,4),(654326995,'沙鱼镇',500382,4),(654326996,'官渡镇',500382,4),(654326997,'涞滩镇',500382,4),(654326998,'龙市镇',500382,4),(654326999,'肖家镇',500382,4),(654327000,'古楼镇',500382,4),(654327001,'三庙镇',500382,4),(654327002,'燕窝镇',500382,4),(654327003,'二郎镇',500382,4),(654327004,'龙凤镇',500382,4),(654327005,'太和镇',500382,4),(654327006,'隆兴镇',500382,4),(654327007,'铜溪镇',500382,4),(654327008,'渭沱镇',500382,4),(654327009,'双凤镇',500382,4),(654327010,'狮滩镇',500382,4),(654327011,'清平镇',500382,4),(654327012,'土场镇',500382,4),(654327013,'小沔镇',500382,4),(654327014,'三汇镇',500382,4),(654327015,'香龙镇',500382,4),(654327016,'双槐镇',500382,4),(654327017,'中山路街道',500383,4),(654327018,'胜利路街道',500383,4),(654327019,'南大街街道',500383,4),(654327020,'大安街道',500383,4),(654327021,'卫星湖街道',500383,4),(654327022,'陈食街道',500383,4),(654327023,'茶山竹海街道',500383,4),(654327024,'青峰镇',500383,4),(654327025,'金龙镇',500383,4),(654327026,'临江镇',500383,4),(654327027,'何埂镇',500383,4),(654327028,'松溉镇',500383,4),(654327029,'仙龙镇',500383,4),(654327030,'吉安镇',500383,4),(654327031,'五间镇',500383,4),(654327032,'来苏镇',500383,4),(654327033,'宝峰镇',500383,4),(654327034,'双石镇',500383,4),(654327035,'红炉镇',500383,4),(654327036,'永荣镇',500383,4),(654327037,'三教镇',500383,4),(654327038,'板桥镇',500383,4),(654327039,'朱沱镇',500383,4),(654327040,'东城街道',500384,4),(654327041,'西城街道',500384,4),(654327042,'南城街道',500384,4),(654327043,'三泉镇',500384,4),(654327044,'南平镇',500384,4),(654327045,'神童镇',500384,4),(654327046,'鸣玉镇',500384,4),(654327047,'大观镇',500384,4),(654327048,'兴隆镇',500384,4),(654327049,'石墙镇',500384,4),(654327050,'金山镇',500384,4),(654327051,'头渡镇',500384,4),(654327052,'大有镇',500384,4),(654327053,'合溪镇',500384,4),(654327054,'水江镇',500384,4),(654327055,'黎香湖镇',500384,4),(654327056,'山王坪镇',500384,4),(654327057,'楠竹山镇',500384,4),(654327058,'石溪镇',500384,4),(654327059,'民主镇',500384,4),(654327060,'德隆镇',500384,4),(654327061,'福寿镇',500384,4),(654327062,'河图镇',500384,4),(654327063,'庆元镇',500384,4),(654327064,'白沙镇',500384,4),(654327065,'太平场镇',500384,4),(654327066,'木凉镇',500384,4),(654327067,'古花镇',500384,4),(654327068,'乾丰镇',500384,4),(654327069,'石莲镇',500384,4),(654327070,'冷水关镇',500384,4),(654327071,'骑龙镇',500384,4),(654327072,'中桥乡',500384,4),(654327073,'峰岩乡',500384,4),(654327074,'市中街道',522201,4),(654327075,'环北街道',522201,4),(654327076,'河西街道',522201,4),(654327077,'谢桥街道',522201,4),(654327078,'灯塔街道',522201,4),(654327079,'川硐镇',522201,4),(654327080,'坝黄镇',522201,4),(654327081,'云场坪镇',522201,4),(654327082,'漾头镇',522201,4),(654327083,'桐木坪侗族乡',522201,4),(654327084,'滑石侗族苗族土家族乡',522201,4),(654327085,'和平土家族侗族乡',522201,4),(654327086,'瓦屋侗族乡',522201,4),(654327087,'六龙山侗族土家族乡',522201,4),(654327088,'万山镇',522230,4),(654327089,'谢桥街道',522230,4),(654327090,'仁山街道',522230,4),(654327091,'茶店街道',522230,4),(654327092,'高楼坪侗族乡',522230,4),(654327093,'鱼塘侗族苗族乡',522230,4),(654327094,'大坪侗族土家族苗族乡',522230,4),(654327095,'黄道侗族乡',522230,4),(654327096,'敖寨乡',522230,4),(654327097,'下溪乡',522230,4),(654327098,'双江街道',522222,4),(654327099,'凯德街道',522222,4),(654327100,'闵孝镇',522222,4),(654327101,'民和镇',522222,4),(654327102,'桃映镇',522222,4),(654327103,'太平镇',522222,4),(654327104,'坝盘镇',522222,4),(654327105,'怒溪镇',522222,4),(654327106,'德旺土家族苗族乡',522222,4),(654327107,'官和侗族土家族苗族乡',522222,4),(654327108,'汤山街道',522224,4),(654327109,'泉都街道',522224,4),(654327110,'中坝街道',522224,4),(654327111,'龙塘镇',522224,4),(654327112,'本庄镇',522224,4),(654327113,'花桥镇',522224,4),(654327114,'五德镇',522224,4),(654327115,'白沙镇',522224,4),(654327116,'河坝镇',522224,4),(654327117,'国荣乡',522224,4),(654327118,'龙井侗族仡佬族乡',522224,4),(654327119,'聚凤仡佬族侗族乡',522224,4),(654327120,'大沙坝仡佬族侗族乡',522224,4),(654327121,'甘溪仡佬族侗族乡',522224,4),(654327122,'石固仡佬族侗族乡',522224,4),(654327123,'坪地场仡佬族侗族乡',522224,4),(654327124,'青阳苗族仡佬族侗族乡',522224,4),(654327125,'坪山仡佬族侗族乡',522224,4),(654327126,'枫香侗族仡佬族乡',522224,4),(654327127,'塘头镇',522225,4),(654327128,'许家坝镇',522225,4),(654327129,'大坝场镇',522225,4),(654327130,'文家店镇',522225,4),(654327131,'鹦鹉溪镇',522225,4),(654327132,'合朋溪镇',522225,4),(654327133,'张家寨镇',522225,4),(654327134,'孙家坝镇',522225,4),(654327135,'青杠坡镇',522225,4),(654327136,'瓮溪镇',522225,4),(654327137,'凉水井镇',522225,4),(654327138,'邵家桥镇',522225,4),(654327139,'长坝镇',522225,4),(654327140,'板桥镇',522225,4),(654327141,'大河坝镇',522225,4),(654327142,'香坝镇',522225,4),(654327143,'亭子坝镇',522225,4),(654327144,'思林土家族苗族乡',522225,4),(654327145,'胡家湾苗族土家族乡',522225,4),(654327146,'宽坪土家族苗族乡',522225,4),(654327147,'枫芸土家族苗族乡',522225,4),(654327148,'三道水土家族苗族乡',522225,4),(654327149,'天桥土家族苗族乡',522225,4),(654327150,'兴隆土家族苗族乡',522225,4),(654327151,'杨家坳苗族土家族乡',522225,4),(654327152,'青龙街道',522227,4),(654327153,'玉水街道',522227,4),(654327154,'煎茶镇',522227,4),(654327155,'潮砥镇',522227,4),(654327156,'枫香溪镇',522227,4),(654327157,'稳坪镇',522227,4),(654327158,'高山镇',522227,4),(654327159,'泉口镇',522227,4),(654327160,'长堡镇',522227,4),(654327161,'共和镇',522227,4),(654327162,'平原镇',522227,4),(654327163,'堰塘土家族乡',522227,4),(654327164,'龙泉土家族乡',522227,4),(654327165,'钱家土家族乡',522227,4),(654327166,'沙溪土家族乡',522227,4),(654327167,'楠杆土家族乡',522227,4),(654327168,'复兴土家族苗族乡',522227,4),(654327169,'合兴土家族乡',522227,4),(654327170,'桶井土家族乡',522227,4),(654327171,'荆角土家族乡',522227,4),(654327172,'长丰土家族乡',522227,4),(654327173,'平溪街道',522223,4),(654327174,'皂角坪街道',522223,4),(654327175,'大龙镇',522223,4),(654327176,'朱家场镇',522223,4),(654327177,'田坪镇',522223,4),(654327178,'新店镇',522223,4),(654327179,'亚鱼乡',522223,4),(654327180,'大兴街道',522229,4),(654327181,'蓼皋街道',522229,4),(654327182,'世昌街道',522229,4),(654327183,'太平营街道',522229,4),(654327184,'九江街道',522229,4),(654327185,'盘石镇',522229,4),(654327186,'普觉镇',522229,4),(654327187,'乌罗镇',522229,4),(654327188,'甘龙镇',522229,4),(654327189,'长兴堡镇',522229,4),(654327190,'牛郎镇',522229,4),(654327191,'盘信镇',522229,4),(654327192,'大坪场镇',522229,4),(654327193,'寨英镇',522229,4),(654327194,'孟溪镇',522229,4),(654327195,'迓驾镇',522229,4),(654327196,'正大镇',522229,4),(654327197,'大路镇',522229,4),(654327198,'木树镇',522229,4),(654327199,'平头镇',522229,4),(654327200,'冷水溪镇',522229,4),(654327201,'黄板镇',522229,4),(654327202,'妙隘乡',522229,4),(654327203,'石梁乡',522229,4),(654327204,'沙坝乡',522229,4),(654327205,'瓦溪乡',522229,4),(654327206,'永安乡',522229,4),(654327207,'长坪乡',522229,4),(654327208,'和平街道',522228,4),(654327209,'团结街道',522228,4),(654327210,'沙子街道',522228,4),(654327211,'中界镇',522228,4),(654327212,'谯家镇',522228,4),(654327213,'夹石镇',522228,4),(654327214,'甘溪镇',522228,4),(654327215,'淇滩镇',522228,4),(654327216,'黑水镇',522228,4),(654327217,'板场镇',522228,4),(654327218,'官舟镇',522228,4),(654327219,'土地坳镇',522228,4),(654327220,'泉坝镇',522228,4),(654327221,'中寨镇',522228,4),(654327222,'思渠镇',522228,4),(654327223,'黄土镇',522228,4),(654327224,'新景镇',522228,4),(654327225,'客田镇',522228,4),(654327226,'洪渡镇',522228,4),(654327227,'塘坝镇',522228,4),(654327228,'晓景乡',522228,4),(654327229,'后坪乡',522228,4),(654327230,'峨岭街道',522226,4),(654327231,'龙津街道',522226,4),(654327232,'中兴街道',522226,4),(654327233,'板溪镇',522226,4),(654327234,'沙子坡镇',522226,4),(654327235,'天堂镇',522226,4),(654327236,'木黄镇',522226,4),(654327237,'合水镇',522226,4),(654327238,'朗溪镇',522226,4),(654327239,'缠溪镇',522226,4),(654327240,'洋溪镇',522226,4),(654327241,'新寨镇',522226,4),(654327242,'杉树镇',522226,4),(654327243,'刀坝镇',522226,4),(654327244,'紫薇镇',522226,4),(654327245,'杨柳镇',522226,4),(654327246,'罗场乡',522226,4),(654327247,'市西街道',522401,4),(654327248,'市东街道',522401,4),(654327249,'观音桥街道',522401,4),(654327250,'三板桥街道',522401,4),(654327251,'大新桥街道',522401,4),(654327252,'麻园街道',522401,4),(654327253,'洪山街道',522401,4),(654327254,'碧阳街道',522401,4),(654327255,'德溪街道',522401,4),(654327256,'碧海街道',522401,4),(654327257,'对坡镇',522401,4),(654327258,'小吉场镇',522401,4),(654327259,'杨家湾镇',522401,4),(654327260,'大银镇',522401,4),(654327261,'田坝桥镇',522401,4),(654327262,'龙场营镇',522401,4),(654327263,'撒拉溪镇',522401,4),(654327264,'林口镇',522401,4),(654327265,'水箐镇',522401,4),(654327266,'青场镇',522401,4),(654327267,'清水铺镇',522401,4),(654327268,'田坝镇',522401,4),(654327269,'朱昌镇',522401,4),(654327270,'亮岩镇',522401,4),(654327271,'燕子口镇',522401,4),(654327272,'鸭池镇',522401,4),(654327273,'层台镇',522401,4),(654327274,'何官屯镇',522401,4),(654327275,'长春堡镇',522401,4),(654327276,'海子街镇',522401,4),(654327277,'八寨镇',522401,4),(654327278,'生机镇',522401,4),(654327279,'普宜镇',522401,4),(654327280,'放珠镇',522401,4),(654327281,'大河乡',522401,4),(654327282,'野角乡',522401,4),(654327283,'田坎彝族乡',522401,4),(654327284,'团结彝族苗族乡',522401,4),(654327285,'阴底彝族苗族白族乡',522401,4),(654327286,'千溪彝族苗族白族乡',522401,4),(654327287,'阿市苗族彝族乡',522401,4),(654327288,'大屯彝族乡',522401,4),(654327289,'双河街道',522428,4),(654327290,'白果街道',522428,4),(654327291,'妈姑镇',522428,4),(654327292,'财神镇',522428,4),(654327293,'六曲河镇',522428,4),(654327294,'野马川镇',522428,4),(654327295,'水塘堡彝族苗族乡',522428,4),(654327296,'达依乡',522428,4),(654327297,'兴发苗族彝族回族乡',522428,4),(654327298,'松林坡白族彝族苗族乡',522428,4),(654327299,'雉街彝族苗族乡',522428,4),(654327300,'珠市彝族乡',522428,4),(654327301,'双坪彝族苗族乡',522428,4),(654327302,'铁匠苗族乡',522428,4),(654327303,'辅处彝族苗族乡',522428,4),(654327304,'可乐彝族苗族乡',522428,4),(654327305,'河镇彝族苗族乡',522428,4),(654327306,'安乐溪乡',522428,4),(654327307,'结构彝族苗族乡',522428,4),(654327308,'古达苗族彝族乡',522428,4),(654327309,'威奢乡',522428,4),(654327310,'德卓镇',522428,4),(654327311,'平山镇',522428,4),(654327312,'哲庄镇',522428,4),(654327313,'古基镇',522428,4),(654327314,'朱明镇',522428,4),(654327315,'罗州镇',522428,4),(654327316,'五里岗街道',522427,4),(654327317,'六桥街道',522427,4),(654327318,'海边街道',522427,4),(654327319,'陕桥街道',522427,4),(654327320,'草海镇',522427,4),(654327321,'幺站镇',522427,4),(654327322,'金钟镇',522427,4),(654327323,'炉山镇',522427,4),(654327324,'龙场镇',522427,4),(654327325,'黑石头镇',522427,4),(654327326,'哲觉镇',522427,4),(654327327,'观风海镇',522427,4),(654327328,'牛棚镇',522427,4),(654327329,'迤那镇',522427,4),(654327330,'中水镇',522427,4),(654327331,'龙街镇',522427,4),(654327332,'雪山镇',522427,4),(654327333,'羊街镇',522427,4),(654327334,'小海镇',522427,4),(654327335,'盐仓镇',522427,4),(654327336,'东风镇',522427,4),(654327337,'二塘镇',522427,4),(654327338,'猴场镇',522427,4),(654327339,'金斗乡',522427,4),(654327340,'岔河乡',522427,4),(654327341,'麻乍乡',522427,4),(654327342,'海拉乡',522427,4),(654327343,'哈喇河乡',522427,4),(654327344,'秀水乡',522427,4),(654327345,'斗古乡',522427,4),(654327346,'玉龙乡',522427,4),(654327347,'黑土河乡',522427,4),(654327348,'石门乡',522427,4),(654327349,'云贵乡',522427,4),(654327350,'兔街乡',522427,4),(654327351,'双龙乡',522427,4),(654327352,'板底乡',522427,4),(654327353,'大街乡',522427,4),(654327354,'新发布依族乡',522427,4),(654327355,'居仁街道办事处',522426,4),(654327356,'文昌街道办事处',522426,4),(654327357,'雍熙街道办事处',522426,4),(654327358,'鬃岭镇',522426,4),(654327359,'阳长镇',522426,4),(654327360,'维新镇',522426,4),(654327361,'龙场镇',522426,4),(654327362,'乐治镇',522426,4),(654327363,'百兴镇',522426,4),(654327364,'张家湾镇',522426,4),(654327365,'勺窝乡',522426,4),(654327366,'新房彝族苗族乡',522426,4),(654327367,'厍东关彝族苗族白族乡',522426,4),(654327368,'董地苗族彝族乡',522426,4),(654327369,'寨乐乡',522426,4),(654327370,'化作苗族彝族乡',522426,4),(654327371,'老凹坝乡',522426,4),(654327372,'沙包乡',522426,4),(654327373,'水东乡',522426,4),(654327374,'曙光乡',522426,4),(654327375,'姑开苗族彝族乡',522426,4),(654327376,'羊场苗族彝族乡',522426,4),(654327377,'锅圈岩苗族彝族乡',522426,4),(654327378,'昆寨苗族彝族白族乡',522426,4),(654327379,'左鶂嘎彝族苗族乡',522426,4),(654327380,'猪场苗族彝族乡',522426,4),(654327381,'双堰街道',522425,4),(654327382,'金凤街道',522425,4),(654327383,'文腾街道',522425,4),(654327384,'三甲街道',522425,4),(654327385,'绮陌街道',522425,4),(654327386,'八步街道',522425,4),(654327387,'猫场镇',522425,4),(654327388,'桂果镇',522425,4),(654327389,'牛场镇',522425,4),(654327390,'化起镇',522425,4),(654327391,'以那镇',522425,4),(654327392,'三塘镇',522425,4),(654327393,'阿弓镇',522425,4),(654327394,'珠藏镇',522425,4),(654327395,'龙场镇',522425,4),(654327396,'中寨镇',522425,4),(654327397,'实兴乡',522425,4),(654327398,'马场镇',522425,4),(654327399,'上坪寨乡',522425,4),(654327400,'纳雍乡',522425,4),(654327401,'板桥镇',522425,4),(654327402,'白泥镇',522425,4),(654327403,'少普镇',522425,4),(654327404,'熊家场镇',522425,4),(654327405,'黑土镇',522425,4),(654327406,'自强苗族乡',522425,4),(654327407,'大平苗族彝族乡',522425,4),(654327408,'官寨苗族乡',522425,4),(654327409,'鸡场苗族彝族布依族乡',522425,4),(654327410,'后寨苗族乡',522425,4),(654327411,'金龙苗族彝族布依族乡',522425,4),(654327412,'茶店布依族苗族彝族乡',522425,4),(654327413,'莲城街道',522423,4),(654327414,'水西街道',522423,4),(654327415,'文峰街道',522423,4),(654327416,'杜鹃街道',522423,4),(654327417,'金碧镇',522423,4),(654327418,'雨朵镇',522423,4),(654327419,'大关镇',522423,4),(654327420,'谷里镇',522423,4),(654327421,'素朴镇',522423,4),(654327422,'中坪镇',522423,4),(654327423,'重新镇',522423,4),(654327424,'林泉镇',522423,4),(654327425,'金兰镇',522423,4),(654327426,'甘棠镇',522423,4),(654327427,'洪水镇',522423,4),(654327428,'锦星镇',522423,4),(654327429,'钟山镇',522423,4),(654327430,'协和镇',522423,4),(654327431,'观音洞镇',522423,4),(654327432,'五里布依族苗族乡',522423,4),(654327433,'绿化白族彝族乡',522423,4),(654327434,'新仁苗族乡',522423,4),(654327435,'铁石苗族彝族乡',522423,4),(654327436,'太来彝族苗族乡',522423,4),(654327437,'永燊彝族苗族乡',522423,4),(654327438,'中建苗族彝族乡',522423,4),(654327439,'花溪彝族苗族乡',522423,4),(654327440,'定新彝族苗族乡',522423,4),(654327441,'红林彝族苗族乡',522423,4),(654327442,'鼓场街道',522424,4),(654327443,'岩孔街道',522424,4),(654327444,'五龙街道',522424,4),(654327445,'西洛街道',522424,4),(654327446,'柳塘镇',522424,4),(654327447,'沙土镇',522424,4),(654327448,'岚头镇',522424,4),(654327449,'安底镇',522424,4),(654327450,'禹谟镇',522424,4),(654327451,'清池镇',522424,4),(654327452,'源村镇',522424,4),(654327453,'平坝镇',522424,4),(654327454,'木孔镇',522424,4),(654327455,'长坝镇',522424,4),(654327456,'茶园镇',522424,4),(654327457,'后山镇',522424,4),(654327458,'高坪镇',522424,4),(654327459,'化觉镇',522424,4),(654327460,'桂花乡',522424,4),(654327461,'石场苗族彝族乡',522424,4),(654327462,'太平彝族苗族乡',522424,4),(654327463,'马路彝族苗族乡',522424,4),(654327464,'安洛苗族彝族满族乡',522424,4),(654327465,'新化苗族彝族满族乡',522424,4),(654327466,'大田彝族苗族布依族乡',522424,4),(654327467,'慕俄格古城街道',522422,4),(654327468,'顺德街道',522422,4),(654327469,'红旗街道',522422,4),(654327470,'猫场镇',522422,4),(654327471,'马场镇',522422,4),(654327472,'羊场镇',522422,4),(654327473,'黄泥塘镇',522422,4),(654327474,'六龙镇',522422,4),(654327475,'达溪镇',522422,4),(654327476,'瓢井镇',522422,4),(654327477,'长石镇',522422,4),(654327478,'对江镇',522422,4),(654327479,'东关乡',522422,4),(654327480,'绿塘乡',522422,4),(654327481,'鼎新彝族苗族乡',522422,4),(654327482,'牛场苗族彝族乡',522422,4),(654327483,'小屯乡',522422,4),(654327484,'理化苗族彝族乡',522422,4),(654327485,'凤山彝族蒙古族乡',522422,4),(654327486,'安乐彝族仡佬族乡',522422,4),(654327487,'核桃彝族白族乡',522422,4),(654327488,'八堡彝族苗族乡',522422,4),(654327489,'兴隆苗族乡',522422,4),(654327490,'果瓦乡',522422,4),(654327491,'大山苗族彝族乡',522422,4),(654327492,'雨冲乡',522422,4),(654327493,'黄泥彝族苗族满族乡',522422,4),(654327494,'大水彝族苗族布依族乡',522422,4),(654327495,'沙厂彝族乡',522422,4),(654327496,'普底彝族苗族白族乡',522422,4),(654327497,'百纳彝族乡',522422,4),(654327498,'三元彝族苗族白族乡',522422,4),(654327499,'星宿苗族彝族仡佬族乡',522422,4),(654327500,'梨树镇',659004503,4),(654327501,'岔河镇',659004503,4),(654327502,'双山镇',659004503,4),(654327503,'响水乡',659004503,4),(654327504,'竹园乡',659004503,4),(654327505,'文阁乡',659004503,4),(654327506,'小坝镇',659004503,4),(654327507,'青龙街道办事处',659004503,4),(654327508,'金海湖办事处',659004503,4),(654327509,'东沙群岛',659004504,4),(654327510,'艾比湖街道',652702,4),(654327511,'阿拉套街道',652702,4),(654327512,'海棠湾镇',659004505,4),(654327513,'吉阳镇',659004505,4),(654327514,'凤凰镇',659004505,4),(654327515,'崖城镇',659004505,4),(654327516,'天涯镇',659004505,4),(654327517,'育才镇',659004505,4),(654327518,'国营南田农场',659004505,4),(654327519,'国营南新农场',659004505,4),(654327520,'国营立才农场',659004505,4),(654327521,'国营南滨农场',659004505,4),(654327522,'河西区街道',659004505,4),(654327523,'河东区街道',659004505,4),(654327524,'西沙群岛',659004506,4),(654327525,'南沙群岛',659004506,4),(654327526,'中沙群岛的岛礁及其海域',659004506,4),(654327527,'通什镇',659004507,4),(654327528,'南圣镇',659004507,4),(654327529,'毛阳镇',659004507,4),(654327530,'番阳镇',659004507,4),(654327531,'畅好乡',659004507,4),(654327532,'毛道乡',659004507,4),(654327533,'水满乡',659004507,4),(654327534,'国营畅好农场',659004507,4),(654327535,'嘉积镇',659004508,4),(654327536,'万泉镇',659004508,4),(654327537,'石壁镇',659004508,4),(654327538,'中原镇',659004508,4),(654327539,'博鳌镇',659004508,4),(654327540,'阳江镇',659004508,4),(654327541,'龙江镇',659004508,4),(654327542,'潭门镇',659004508,4),(654327543,'塔洋镇',659004508,4),(654327544,'长坡镇',659004508,4),(654327545,'大路镇',659004508,4),(654327546,'会山镇',659004508,4),(654327547,'国营东太农场',659004508,4),(654327548,'国营东红农场',659004508,4),(654327549,'国营东升农场',659004508,4),(654327550,'彬村山华侨农场',659004508,4),(654327551,'那大镇',659004509,4),(654327552,'和庆镇',659004509,4),(654327553,'南丰镇',659004509,4),(654327554,'大成镇',659004509,4),(654327555,'雅星镇',659004509,4),(654327556,'兰洋镇',659004509,4),(654327557,'光村镇',659004509,4),(654327558,'木棠镇',659004509,4),(654327559,'海头镇',659004509,4),(654327560,'峨蔓镇',659004509,4),(654327561,'三都镇',659004509,4),(654327562,'王五镇',659004509,4),(654327563,'白马井镇',659004509,4),(654327564,'中和镇',659004509,4),(654327565,'排浦镇',659004509,4),(654327566,'东成镇',659004509,4),(654327567,'新州镇',659004509,4),(654327568,'国营西培农场',659004509,4),(654327569,'国营西联农场',659004509,4),(654327570,'国营蓝洋农场',659004509,4),(654327571,'国营八一农场',659004509,4),(654327572,'洋浦经济开发区',659004509,4),(654327573,'华南热作学院',659004509,4),(654327574,'文城镇',659004510,4),(654327575,'重兴镇',659004510,4),(654327576,'蓬莱镇',659004510,4),(654327577,'会文镇',659004510,4),(654327578,'东路镇',659004510,4),(654327579,'潭牛镇',659004510,4),(654327580,'东阁镇',659004510,4),(654327581,'文教镇',659004510,4),(654327582,'东郊镇',659004510,4),(654327583,'龙楼镇',659004510,4),(654327584,'昌洒镇',659004510,4),(654327585,'翁田镇',659004510,4),(654327586,'抱罗镇',659004510,4),(654327587,'冯坡镇',659004510,4),(654327588,'锦山镇',659004510,4),(654327589,'铺前镇',659004510,4),(654327590,'公坡镇',659004510,4),(654327591,'国营东路农场',659004510,4),(654327592,'国营南阳农场',659004510,4),(654327593,'国营罗豆农场',659004510,4),(654327594,'万城镇',659004511,4),(654327595,'龙滚镇',659004511,4),(654327596,'和乐镇',659004511,4),(654327597,'后安镇',659004511,4),(654327598,'大茂镇',659004511,4),(654327599,'东澳镇',659004511,4),(654327600,'礼纪镇',659004511,4),(654327601,'长丰镇',659004511,4),(654327602,'山根镇',659004511,4),(654327603,'北大镇',659004511,4),(654327604,'南桥镇',659004511,4),(654327605,'三更罗镇',659004511,4),(654327606,'国营东兴农场',659004511,4),(654327607,'国营东和农场',659004511,4),(654327608,'国营新中农场',659004511,4),(654327609,'兴隆华侨农场',659004511,4),(654327610,'地方国营六连林场',659004511,4),(654327611,'八所镇',659004512,4),(654327612,'东河镇',659004512,4),(654327613,'大田镇',659004512,4),(654327614,'感城镇',659004512,4),(654327615,'板桥镇',659004512,4),(654327616,'三家镇',659004512,4),(654327617,'四更镇',659004512,4),(654327618,'新龙镇',659004512,4),(654327619,'天安乡',659004512,4),(654327620,'江边乡',659004512,4),(654327621,'国营广坝农场',659004512,4),(654327622,'东方华侨农场',659004512,4),(654327623,'定城镇',659004513,4),(654327624,'新竹镇',659004513,4),(654327625,'龙湖镇',659004513,4),(654327626,'黄竹镇',659004513,4),(654327627,'雷鸣镇',659004513,4),(654327628,'龙门镇',659004513,4),(654327629,'龙河镇',659004513,4),(654327630,'岭口镇',659004513,4),(654327631,'翰林镇',659004513,4),(654327632,'富文镇',659004513,4),(654327633,'国营中瑞农场',659004513,4),(654327634,'国营南海农场',659004513,4),(654327635,'国营金鸡岭农场',659004513,4),(654327636,'屯城镇',659004514,4),(654327637,'新兴镇',659004514,4),(654327638,'枫木镇',659004514,4),(654327639,'乌坡镇',659004514,4),(654327640,'南吕镇',659004514,4),(654327641,'南坤镇',659004514,4),(654327642,'坡心镇',659004514,4),(654327643,'西昌镇',659004514,4),(654327644,'国营中建农场',659004514,4),(654327645,'国营中坤农场',659004514,4),(654327646,'金江镇',659004515,4),(654327647,'老城镇',659004515,4),(654327648,'瑞溪镇',659004515,4),(654327649,'永发镇',659004515,4),(654327650,'加乐镇',659004515,4),(654327651,'文儒镇',659004515,4),(654327652,'中兴镇',659004515,4),(654327653,'仁兴镇',659004515,4),(654327654,'福山镇',659004515,4),(654327655,'桥头镇',659004515,4),(654327656,'大丰镇',659004515,4),(654327657,'国营红光农场',659004515,4),(654327658,'国营西达农场',659004515,4),(654327659,'国营金安农场',659004515,4),(654327660,'临城镇',659004516,4),(654327661,'波莲镇',659004516,4),(654327662,'东英镇',659004516,4),(654327663,'博厚镇',659004516,4),(654327664,'皇桐镇',659004516,4),(654327665,'多文镇',659004516,4),(654327666,'和舍镇',659004516,4),(654327667,'南宝镇',659004516,4),(654327668,'新盈镇',659004516,4),(654327669,'调楼镇',659004516,4),(654327670,'国营红华农场',659004516,4),(654327671,'国营加来农场',659004516,4),(654327672,'牙叉镇',659004517,4),(654327673,'七坊镇',659004517,4),(654327674,'邦溪镇',659004517,4),(654327675,'打安镇',659004517,4),(654327676,'细水乡',659004517,4),(654327677,'元门乡',659004517,4),(654327678,'南开乡',659004517,4),(654327679,'阜龙乡',659004517,4),(654327680,'青松乡',659004517,4),(654327681,'金波乡',659004517,4),(654327682,'荣邦乡',659004517,4),(654327683,'国营白沙农场',659004517,4),(654327684,'国营龙江农场',659004517,4),(654327685,'国营邦溪农场',659004517,4),(654327686,'石碌镇',659004518,4),(654327687,'叉河镇',659004518,4),(654327688,'十月田镇',659004518,4),(654327689,'乌烈镇',659004518,4),(654327690,'昌化镇',659004518,4),(654327691,'海尾镇',659004518,4),(654327692,'七叉镇',659004518,4),(654327693,'王下乡',659004518,4),(654327694,'国营红林农场',659004518,4),(654327695,'国营霸王岭林场',659004518,4),(654327696,'海南矿业联合有限公司',659004518,4),(654327697,'抱由镇',659004519,4),(654327698,'万冲镇',659004519,4),(654327699,'大安镇',659004519,4),(654327700,'志仲镇',659004519,4),(654327701,'千家镇',659004519,4),(654327702,'九所镇',659004519,4),(654327703,'利国镇',659004519,4),(654327704,'黄流镇',659004519,4),(654327705,'佛罗镇',659004519,4),(654327706,'尖峰镇',659004519,4),(654327707,'莺歌海镇',659004519,4),(654327708,'国营山荣农场',659004519,4),(654327709,'国营乐光农场',659004519,4),(654327710,'国营保国农场',659004519,4),(654327711,'国营尖峰岭林业公司',659004519,4),(654327712,'国营莺歌海盐场',659004519,4),(654327713,'椰林镇',659004520,4),(654327714,'光坡镇',659004520,4),(654327715,'三才镇',659004520,4),(654327716,'英州镇',659004520,4),(654327717,'隆广镇',659004520,4),(654327718,'文罗镇',659004520,4),(654327719,'本号镇',659004520,4),(654327720,'新村镇',659004520,4),(654327721,'黎安镇',659004520,4),(654327722,'提蒙乡',659004520,4),(654327723,'群英乡',659004520,4),(654327724,'国营岭门农场',659004520,4),(654327725,'国营南平农场',659004520,4),(654327726,'国营吊罗山林业公司',659004520,4),(654327727,'保城镇',659004521,4),(654327728,'什玲镇',659004521,4),(654327729,'加茂镇',659004521,4),(654327730,'响水镇',659004521,4),(654327731,'新政镇',659004521,4),(654327732,'三道镇',659004521,4),(654327733,'六弓乡',659004521,4),(654327734,'南林乡',659004521,4),(654327735,'毛感乡',659004521,4),(654327736,'国营新星农场',659004521,4),(654327737,'海南保亭热带作物研究所',659004521,4),(654327738,'国营金江农场',659004521,4),(654327739,'国营三道农场',659004521,4),(654327740,'营根镇',659004522,4),(654327741,'湾岭镇',659004522,4),(654327742,'黎母山镇',659004522,4),(654327743,'和平镇',659004522,4),(654327744,'长征镇',659004522,4),(654327745,'红毛镇',659004522,4),(654327746,'中平镇',659004522,4),(654327747,'吊罗山乡',659004522,4),(654327748,'上安乡',659004522,4),(654327749,'什运乡',659004522,4),(654327750,'国营阳江农场',659004522,4),(654327751,'国营乌石农场',659004522,4),(654327752,'国营加钗农场',659004522,4),(654327753,'国营长征农场',659004522,4),(654327754,'国营黎母山林业公司',659004522,4),(654327755,'东城街道',659004523,4),(654327756,'南城街道',659004523,4),(654327757,'万江街道',659004523,4),(654327758,'莞城街道',659004523,4),(654327759,'石碣镇',659004523,4),(654327760,'石龙镇',659004523,4),(654327761,'茶山镇',659004523,4),(654327762,'石排镇',659004523,4),(654327763,'企石镇',659004523,4),(654327764,'横沥镇',659004523,4),(654327765,'桥头镇',659004523,4),(654327766,'谢岗镇',659004523,4),(654327767,'东坑镇',659004523,4),(654327768,'常平镇',659004523,4),(654327769,'寮步镇',659004523,4),(654327770,'樟木头镇',659004523,4),(654327771,'大朗镇',659004523,4),(654327772,'黄江镇',659004523,4),(654327773,'清溪镇',659004523,4),(654327774,'塘厦镇',659004523,4),(654327775,'凤岗镇',659004523,4),(654327776,'大岭山镇',659004523,4),(654327777,'长安镇',659004523,4),(654327778,'虎门镇',659004523,4),(654327779,'厚街镇',659004523,4),(654327780,'沙田镇',659004523,4),(654327781,'道滘镇',659004523,4),(654327782,'洪梅镇',659004523,4),(654327783,'麻涌镇',659004523,4),(654327784,'望牛墩镇',659004523,4),(654327785,'中堂镇',659004523,4),(654327786,'高埗镇',659004523,4),(654327787,'松山湖管委会',659004523,4),(654327788,'虎门港管委会',659004523,4),(654327789,'东莞生态园',659004523,4),(654327790,'石岐区街道',659004524,4),(654327791,'东区街道',659004524,4),(654327792,'火炬开发区街道',659004524,4),(654327793,'西区街道',659004524,4),(654327794,'南区街道',659004524,4),(654327795,'五桂山街道',659004524,4),(654327796,'小榄镇',659004524,4),(654327797,'黄圃镇',659004524,4),(654327798,'民众镇',659004524,4),(654327799,'东凤镇',659004524,4),(654327800,'东升镇',659004524,4),(654327801,'古镇镇',659004524,4),(654327802,'沙溪镇',659004524,4),(654327803,'坦洲镇',659004524,4),(654327804,'港口镇',659004524,4),(654327805,'三角镇',659004524,4),(654327806,'横栏镇',659004524,4),(654327807,'南头镇',659004524,4),(654327808,'阜沙镇',659004524,4),(654327809,'南朗镇',659004524,4),(654327810,'三乡镇',659004524,4),(654327811,'板芙镇',659004524,4),(654327812,'大涌镇',659004524,4),(654327813,'神湾镇',659004524,4),(654327814,'沁园街道',659004525,4),(654327815,'济水街道',659004525,4),(654327816,'北海街道',659004525,4),(654327817,'天坛街道',659004525,4),(654327818,'玉泉街道',659004525,4),(654327819,'克井镇',659004525,4),(654327820,'五龙口镇',659004525,4),(654327821,'轵城镇',659004525,4),(654327822,'承留镇',659004525,4),(654327823,'邵原镇',659004525,4),(654327824,'坡头镇',659004525,4),(654327825,'梨林镇',659004525,4),(654327826,'大峪镇',659004525,4),(654327827,'思礼镇',659004525,4),(654327828,'王屋镇',659004525,4),(654327829,'下冶镇',659004525,4),(654327830,'沙嘴街道',659004526,4),(654327831,'干河街道',659004526,4),(654327832,'龙华山办事处',659004526,4),(654327833,'郑场镇',659004526,4),(654327834,'毛嘴镇',659004526,4),(654327835,'豆河镇',659004526,4),(654327836,'三伏潭镇',659004526,4),(654327837,'胡场镇',659004526,4),(654327838,'长倘口镇',659004526,4),(654327839,'西流河镇',659004526,4),(654327840,'沙湖镇',659004526,4),(654327841,'杨林尾镇',659004526,4),(654327842,'彭场镇',659004526,4),(654327843,'张沟镇',659004526,4),(654327844,'郭河镇',659004526,4),(654327845,'沔城回族镇',659004526,4),(654327846,'通海口镇',659004526,4),(654327847,'陈场镇',659004526,4),(654327848,'工业园区',659004526,4),(654327849,'九合垸原种场',659004526,4),(654327850,'沙湖原种场',659004526,4),(654327851,'五湖渔场',659004526,4),(654327852,'赵西垸林场',659004526,4),(654327853,'畜禽良种场',659004526,4),(654327854,'排湖风景区',659004526,4),(654327855,'园林办事处',659004527,4),(654327856,'杨市办事处',659004527,4),(654327857,'周矶办事处',659004527,4),(654327858,'广华办事处',659004527,4),(654327859,'泰丰办事处',659004527,4),(654327860,'高场办事处',659004527,4),(654327861,'竹根滩镇',659004527,4),(654327862,'渔洋镇',659004527,4),(654327863,'王场镇',659004527,4),(654327864,'高石碑镇',659004527,4),(654327865,'熊口镇',659004527,4),(654327866,'老新镇',659004527,4),(654327867,'浩口镇',659004527,4),(654327868,'积玉口镇',659004527,4),(654327869,'张金镇',659004527,4),(654327870,'龙湾镇',659004527,4),(654327871,'江汉石油管理局',659004527,4),(654327872,'潜江经济开发区',659004527,4),(654327873,'周矶管理区',659004527,4),(654327874,'后湖管理区',659004527,4),(654327875,'熊口管理区',659004527,4),(654327876,'总口管理区',659004527,4),(654327877,'白鹭湖管理区',659004527,4),(654327878,'运粮湖管理区',659004527,4),(654327879,'浩口原种场',659004527,4),(654327880,'竟陵街道',659004528,4),(654327881,'侨乡街道开发区',659004528,4),(654327882,'杨林街道',659004528,4),(654327883,'多宝镇',659004528,4),(654327884,'拖市镇',659004528,4),(654327885,'张港镇',659004528,4),(654327886,'蒋场镇',659004528,4),(654327887,'汪场镇',659004528,4),(654327888,'渔薪镇',659004528,4),(654327889,'黄潭镇',659004528,4),(654327890,'岳口镇',659004528,4),(654327891,'横林镇',659004528,4),(654327892,'彭市镇',659004528,4),(654327893,'麻洋镇',659004528,4),(654327894,'多祥镇',659004528,4),(654327895,'干驿镇',659004528,4),(654327896,'马湾镇',659004528,4),(654327897,'卢市镇',659004528,4),(654327898,'小板镇',659004528,4),(654327899,'九真镇',659004528,4),(654327900,'皂市镇',659004528,4),(654327901,'胡市镇',659004528,4),(654327902,'石河镇',659004528,4),(654327903,'佛子山镇',659004528,4),(654327904,'净潭乡',659004528,4),(654327905,'蒋湖农场',659004528,4),(654327906,'白茅湖农场',659004528,4),(654327907,'沉湖管委会',659004528,4),(654327908,'松柏镇',659004529,4),(654327909,'阳日镇',659004529,4),(654327910,'木鱼镇',659004529,4),(654327911,'红坪镇',659004529,4),(654327912,'新华镇',659004529,4),(654327913,'九湖镇',659004529,4),(654327914,'宋洛乡',659004529,4),(654327915,'下谷坪土家族乡',659004529,4),(654327916,'新城镇',659004530,4),(654327917,'峪泉镇',659004530,4),(654327918,'文殊镇',659004530,4),(654327919,'雄关区',659004530,4),(654327920,'镜铁区',659004530,4),(654327921,'长城区',659004530,4),(654327922,'新城街道',659004531,4),(654327923,'向阳街道',659004531,4),(654327924,'红山街道',659004531,4),(654327925,'老街街道',659004531,4),(654327926,'东城街道',659004531,4),(654327927,'北泉镇',659004531,4),(654327928,'石河子乡',659004531,4),(654327929,'兵团一五二团',659004531,4),(654327930,'金银川路街道',659004532,4),(654327931,'幸福路街道',659004532,4),(654327932,'青松路街道',659004532,4),(654327933,'南口街道',659004532,4),(654327934,'托喀依乡',659004532,4),(654327935,'工业园区',659004532,4),(654327936,'兵团七团',659004532,4),(654327937,'兵团八团',659004532,4),(654327938,'兵团十团',659004532,4),(654327939,'兵团十一团',659004532,4),(654327940,'兵团十二团',659004532,4),(654327941,'兵团十三团',659004532,4),(654327942,'兵团十四团',659004532,4),(654327943,'兵团十六团',659004532,4),(654327944,'兵团第一师水利水电工程处',659004532,4),(654327945,'兵团第一师塔里木灌区水利管理处',659004532,4),(654327946,'阿拉尔农场',659004532,4),(654327947,'兵团第一师幸福农场',659004532,4),(654327948,'中心监狱',659004532,4),(654327949,'齐干却勒街道',659004533,4),(654327950,'前海街道',659004533,4),(654327951,'永安坝街道',659004533,4),(654327952,'兵团四十四团',659004533,4),(654327953,'兵团四十九团',659004533,4),(654327954,'兵团五十团',659004533,4),(654327955,'兵团五十一团',659004533,4),(654327956,'兵团五十三团',659004533,4),(654327957,'兵团图木舒克市喀拉拜勒镇',659004533,4),(654327958,'兵团图木舒克市永安坝',659004533,4),(654327959,'军垦路街道',659004534,4),(654327960,'青湖路街道',659004534,4),(654327961,'人民路街道',659004534,4),(654327962,'兵团一零一团',659004534,4),(654327963,'兵团一零二团',659004534,4),(654327964,'兵团一零三团',659004534,4),(654327965,'中西区',810100,4),(654327966,'湾仔区',810100,4),(654327967,'东区',810100,4),(654327968,'南区',810100,4),(654327969,'油尖旺区',810200,4),(654327970,'深水埗区',810200,4),(654327971,'九龙城区',810200,4),(654327972,'黄大仙区',810200,4),(654327973,'观塘区',810200,4),(654327974,'北区',810300,4),(654327975,'大埔区',810300,4),(654327976,'沙田区',810300,4),(654327977,'西贡区',810300,4),(654327978,'荃湾区',810300,4),(654327979,'屯门区',810300,4),(654327980,'元朗区',810300,4),(654327981,'葵青区',810300,4),(654327982,'离岛区',810300,4),(654327983,'花地玛堂区',820100,4),(654327984,'圣安多尼堂区',820100,4),(654327985,'大堂区',820100,4),(654327986,'望德堂区',820100,4),(654327987,'风顺堂区',820100,4),(654327988,'嘉模堂区',820200,4),(654327989,'圣方济各堂区',820200,4),(654327990,'恩阳镇',511903,4),(654327991,'登科镇',511903,4),(654327992,'明阳镇',511903,4),(654327993,'玉山镇',511903,4),(654327994,'茶坝镇',511903,4),(654327995,'观音井镇',511903,4),(654327996,'花丛镇',511903,4),(654327997,'柳林镇',511903,4),(654327998,'下八庙镇',511903,4),(654327999,'渔溪镇',511903,4),(654328000,'青木镇',511903,4),(654328001,'三河场镇',511903,4),(654328002,'三汇镇',511903,4),(654328003,'上八庙镇',511903,4),(654328004,'石城乡',511903,4),(654328005,'兴隆场乡',511903,4),(654328006,'关公乡',511903,4),(654328007,'三星乡',511903,4),(654328008,'舞凤乡',511903,4),(654328009,'双胜乡',511903,4),(654328010,'群乐乡',511903,4),(654328011,'万安乡',511903,4),(654328012,'尹家乡',511903,4),(654328013,'九镇乡',511903,4),(654328014,'玉井乡',511903,4),(654328015,'义兴乡',511903,4);
/*!40000 ALTER TABLE `ims_yz_street` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_template_message`
--

DROP TABLE IF EXISTS `ims_yz_template_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_template_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'system',
  `item` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_item` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_id_short` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_id` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `example` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_template_message`
--

LOCK TABLES `ims_yz_template_message` WRITE;
/*!40000 ALTER TABLE `ims_yz_template_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_template_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_template_message_default`
--

DROP TABLE IF EXISTS `ims_yz_template_message_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_template_message_default` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) NOT NULL DEFAULT '0',
  `template_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_id_short` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_template_message_default`
--

LOCK TABLES `ims_yz_template_message_default` WRITE;
/*!40000 ALTER TABLE `ims_yz_template_message_default` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_template_message_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_template_message_record`
--

DROP TABLE IF EXISTS `ims_yz_template_message_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_template_message_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniacid` int(11) DEFAULT NULL,
  `member_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `openid` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `template_id` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `top_color` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  `send_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `msgid` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `result` tinyint(1) NOT NULL DEFAULT '0',
  `wechat_send_at` int(11) NOT NULL DEFAULT '0',
  `sended_count` tinyint(1) NOT NULL DEFAULT '1',
  `extend_data` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_template_message_record`
--

LOCK TABLES `ims_yz_template_message_record` WRITE;
/*!40000 ALTER TABLE `ims_yz_template_message_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_template_message_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_user_role`
--

DROP TABLE IF EXISTS `ims_yz_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_user_role`
--

LOCK TABLES `ims_yz_user_role` WRITE;
/*!40000 ALTER TABLE `ims_yz_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_virtual_coin`
--

DROP TABLE IF EXISTS `ims_yz_virtual_coin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_virtual_coin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '虚拟币',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exchange_rate` decimal(10,2) NOT NULL DEFAULT '1.00' COMMENT '汇率',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_virtual_coin`
--

LOCK TABLES `ims_yz_virtual_coin` WRITE;
/*!40000 ALTER TABLE `ims_yz_virtual_coin` DISABLE KEYS */;
INSERT INTO `ims_yz_virtual_coin` VALUES (1,'爱心值','love',1.00),(2,'积分','point',1.00),(3,'华侨币','coin',1.00);
/*!40000 ALTER TABLE `ims_yz_virtual_coin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_withdraw`
--

DROP TABLE IF EXISTS `ims_yz_withdraw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_withdraw` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `withdraw_sn` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uniacid` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` text COLLATE utf8mb4_unicode_ci,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amounts` decimal(14,2) DEFAULT NULL,
  `poundage` decimal(14,2) DEFAULT NULL,
  `poundage_rate` decimal(11,2) DEFAULT NULL,
  `pay_way` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `audit_at` int(11) DEFAULT NULL,
  `pay_at` int(11) DEFAULT NULL,
  `arrival_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `actual_amounts` decimal(14,2) NOT NULL,
  `actual_poundage` decimal(14,2) NOT NULL,
  `servicetax` decimal(12,2) DEFAULT NULL COMMENT '劳务税',
  `servicetax_rate` decimal(11,2) DEFAULT NULL COMMENT '劳务税比例',
  `actual_servicetax` decimal(12,2) DEFAULT NULL COMMENT '最终劳务税',
  `manual_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_withdraw`
--

LOCK TABLES `ims_yz_withdraw` WRITE;
/*!40000 ALTER TABLE `ims_yz_withdraw` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_withdraw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ims_yz_withdraw_set_log`
--

DROP TABLE IF EXISTS `ims_yz_withdraw_set_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ims_yz_withdraw_set_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `withdraw_id` int(11) DEFAULT NULL COMMENT 'ID',
  `poundage_type` tinyint(1) DEFAULT '0' COMMENT '提现手续费类型  0比例计算 ，1固定金额，',
  `poundage` decimal(14,2) DEFAULT NULL COMMENT '手续费 poundage_tpye为0，则为比例，为1则为固定金额，',
  `poundage_full_cut` decimal(14,2) DEFAULT NULL COMMENT '满额减免手续费',
  `withdraw_fetter` decimal(14,2) DEFAULT NULL COMMENT '提现限制，提现最小额',
  `remark` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `created_at` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ims_yz_withdraw_set_log`
--

LOCK TABLES `ims_yz_withdraw_set_log` WRITE;
/*!40000 ALTER TABLE `ims_yz_withdraw_set_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ims_yz_withdraw_set_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-09 14:47:48