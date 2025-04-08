-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot1i659
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springboot1i659`
--

/*!40000 DROP DATABASE IF EXISTS `springboot1i659`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot1i659` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot1i659`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dangfeijiaona`
--

DROP TABLE IF EXISTS `dangfeijiaona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dangfeijiaona` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dangyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '党员账号',
  `dangyuanxingming` varchar(200) DEFAULT NULL COMMENT '党员姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `zhibuzhanghao` varchar(200) DEFAULT NULL COMMENT '支部账号',
  `zhibumingcheng` varchar(200) DEFAULT NULL COMMENT '支部名称',
  `dangfei` float DEFAULT NULL COMMENT '党费',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='党费缴纳';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dangfeijiaona`
--

LOCK TABLES `dangfeijiaona` WRITE;
/*!40000 ALTER TABLE `dangfeijiaona` DISABLE KEYS */;
INSERT INTO `dangfeijiaona` VALUES (71,'2023-03-08 14:48:26','党员账号1','党员姓名1','性别1','13823888881','支部账号1','支部名称1',1,'月份1','未支付'),(72,'2023-03-08 14:48:26','党员账号2','党员姓名2','性别2','13823888882','支部账号2','支部名称2',2,'月份2','未支付'),(73,'2023-03-08 14:48:26','党员账号3','党员姓名3','性别3','13823888883','支部账号3','支部名称3',3,'月份3','未支付'),(74,'2023-03-08 14:48:26','党员账号4','党员姓名4','性别4','13823888884','支部账号4','支部名称4',4,'月份4','未支付'),(75,'2023-03-08 14:48:26','党员账号5','党员姓名5','性别5','13823888885','支部账号5','支部名称5',5,'月份5','未支付'),(76,'2023-03-08 14:48:26','党员账号6','党员姓名6','性别6','13823888886','支部账号6','支部名称6',6,'月份6','未支付'),(77,'2023-03-08 14:48:26','党员账号7','党员姓名7','性别7','13823888887','支部账号7','支部名称7',7,'月份7','未支付'),(78,'2023-03-08 14:48:26','党员账号8','党员姓名8','性别8','13823888888','支部账号8','支部名称8',8,'月份8','未支付');
/*!40000 ALTER TABLE `dangfeijiaona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dangjianditu`
--

DROP TABLE IF EXISTS `dangjianditu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dangjianditu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ditumingcheng` varchar(200) DEFAULT NULL COMMENT '地图名称',
  `fengmian` longtext COMMENT '封面',
  `dituxiangqing` longtext COMMENT '地图详情',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='党建地图';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dangjianditu`
--

LOCK TABLES `dangjianditu` WRITE;
/*!40000 ALTER TABLE `dangjianditu` DISABLE KEYS */;
INSERT INTO `dangjianditu` VALUES (41,'2023-03-08 14:48:26','地图名称1','upload/dangjianditu_fengmian1.jpg,upload/dangjianditu_fengmian2.jpg,upload/dangjianditu_fengmian3.jpg','地图详情1','2023-03-08 22:48:26'),(42,'2023-03-08 14:48:26','地图名称2','upload/dangjianditu_fengmian2.jpg,upload/dangjianditu_fengmian3.jpg,upload/dangjianditu_fengmian4.jpg','地图详情2','2023-03-08 22:48:26'),(43,'2023-03-08 14:48:26','地图名称3','upload/dangjianditu_fengmian3.jpg,upload/dangjianditu_fengmian4.jpg,upload/dangjianditu_fengmian5.jpg','地图详情3','2023-03-08 22:48:26'),(44,'2023-03-08 14:48:26','地图名称4','upload/dangjianditu_fengmian4.jpg,upload/dangjianditu_fengmian5.jpg,upload/dangjianditu_fengmian6.jpg','地图详情4','2023-03-08 22:48:26'),(45,'2023-03-08 14:48:26','地图名称5','upload/dangjianditu_fengmian5.jpg,upload/dangjianditu_fengmian6.jpg,upload/dangjianditu_fengmian7.jpg','地图详情5','2023-03-08 22:48:26'),(46,'2023-03-08 14:48:26','地图名称6','upload/dangjianditu_fengmian6.jpg,upload/dangjianditu_fengmian7.jpg,upload/dangjianditu_fengmian8.jpg','地图详情6','2023-03-08 22:48:26'),(47,'2023-03-08 14:48:26','地图名称7','upload/dangjianditu_fengmian7.jpg,upload/dangjianditu_fengmian8.jpg,upload/dangjianditu_fengmian9.jpg','地图详情7','2023-03-08 22:48:26'),(48,'2023-03-08 14:48:26','地图名称8','upload/dangjianditu_fengmian8.jpg,upload/dangjianditu_fengmian9.jpg,upload/dangjianditu_fengmian10.jpg','地图详情8','2023-03-08 22:48:26');
/*!40000 ALTER TABLE `dangjianditu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dangjianhuodong`
--

DROP TABLE IF EXISTS `dangjianhuodong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dangjianhuodong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongtupian` longtext COMMENT '活动图片',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `huodongshijian` datetime DEFAULT NULL COMMENT '活动时间',
  `huodongrenshu` varchar(200) DEFAULT NULL COMMENT '活动人数',
  `huodongneirong` longtext COMMENT '活动内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `zhibuzhanghao` varchar(200) DEFAULT NULL COMMENT '支部账号',
  `zhibumingcheng` varchar(200) DEFAULT NULL COMMENT '支部名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='党建活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dangjianhuodong`
--

LOCK TABLES `dangjianhuodong` WRITE;
/*!40000 ALTER TABLE `dangjianhuodong` DISABLE KEYS */;
INSERT INTO `dangjianhuodong` VALUES (81,'2023-03-08 14:48:26','活动名称1','upload/dangjianhuodong_huodongtupian1.jpg,upload/dangjianhuodong_huodongtupian2.jpg,upload/dangjianhuodong_huodongtupian3.jpg','活动地点1','2023-03-08 22:48:26','活动人数1','活动内容1','2023-03-08 22:48:26','支部账号1','支部名称1'),(82,'2023-03-08 14:48:26','活动名称2','upload/dangjianhuodong_huodongtupian2.jpg,upload/dangjianhuodong_huodongtupian3.jpg,upload/dangjianhuodong_huodongtupian4.jpg','活动地点2','2023-03-08 22:48:26','活动人数2','活动内容2','2023-03-08 22:48:26','支部账号2','支部名称2'),(83,'2023-03-08 14:48:26','活动名称3','upload/dangjianhuodong_huodongtupian3.jpg,upload/dangjianhuodong_huodongtupian4.jpg,upload/dangjianhuodong_huodongtupian5.jpg','活动地点3','2023-03-08 22:48:26','活动人数3','活动内容3','2023-03-08 22:48:26','支部账号3','支部名称3'),(84,'2023-03-08 14:48:26','活动名称4','upload/dangjianhuodong_huodongtupian4.jpg,upload/dangjianhuodong_huodongtupian5.jpg,upload/dangjianhuodong_huodongtupian6.jpg','活动地点4','2023-03-08 22:48:26','活动人数4','活动内容4','2023-03-08 22:48:26','支部账号4','支部名称4'),(85,'2023-03-08 14:48:26','活动名称5','upload/dangjianhuodong_huodongtupian5.jpg,upload/dangjianhuodong_huodongtupian6.jpg,upload/dangjianhuodong_huodongtupian7.jpg','活动地点5','2023-03-08 22:48:26','活动人数5','活动内容5','2023-03-08 22:48:26','支部账号5','支部名称5'),(86,'2023-03-08 14:48:26','活动名称6','upload/dangjianhuodong_huodongtupian6.jpg,upload/dangjianhuodong_huodongtupian7.jpg,upload/dangjianhuodong_huodongtupian8.jpg','活动地点6','2023-03-08 22:48:26','活动人数6','活动内容6','2023-03-08 22:48:26','支部账号6','支部名称6'),(87,'2023-03-08 14:48:26','活动名称7','upload/dangjianhuodong_huodongtupian7.jpg,upload/dangjianhuodong_huodongtupian8.jpg,upload/dangjianhuodong_huodongtupian9.jpg','活动地点7','2023-03-08 22:48:26','活动人数7','活动内容7','2023-03-08 22:48:26','支部账号7','支部名称7'),(88,'2023-03-08 14:48:26','活动名称8','upload/dangjianhuodong_huodongtupian8.jpg,upload/dangjianhuodong_huodongtupian9.jpg,upload/dangjianhuodong_huodongtupian10.jpg','活动地点8','2023-03-08 22:48:26','活动人数8','活动内容8','2023-03-08 22:48:26','支部账号8','支部名称8');
/*!40000 ALTER TABLE `dangjianhuodong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dangjianxuexi`
--

DROP TABLE IF EXISTS `dangjianxuexi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dangjianxuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziliaobianhao` varchar(200) NOT NULL COMMENT '资料编号',
  `ziliaomingcheng` varchar(200) NOT NULL COMMENT '资料名称',
  `tupian` longtext COMMENT '图片',
  `ziliaojianjie` longtext COMMENT '资料简介',
  `shipin` longtext COMMENT '视频',
  `fujianxiazai` longtext COMMENT '附件下载',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ziliaobianhao` (`ziliaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='党建学习';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dangjianxuexi`
--

LOCK TABLES `dangjianxuexi` WRITE;
/*!40000 ALTER TABLE `dangjianxuexi` DISABLE KEYS */;
INSERT INTO `dangjianxuexi` VALUES (51,'2023-03-08 14:48:26','1111111111','资料名称1','upload/dangjianxuexi_tupian1.jpg,upload/dangjianxuexi_tupian2.jpg,upload/dangjianxuexi_tupian3.jpg','资料简介1','','','2023-03-08 22:48:26'),(52,'2023-03-08 14:48:26','2222222222','资料名称2','upload/dangjianxuexi_tupian2.jpg,upload/dangjianxuexi_tupian3.jpg,upload/dangjianxuexi_tupian4.jpg','资料简介2','','','2023-03-08 22:48:26'),(53,'2023-03-08 14:48:26','3333333333','资料名称3','upload/dangjianxuexi_tupian3.jpg,upload/dangjianxuexi_tupian4.jpg,upload/dangjianxuexi_tupian5.jpg','资料简介3','','','2023-03-08 22:48:26'),(54,'2023-03-08 14:48:26','4444444444','资料名称4','upload/dangjianxuexi_tupian4.jpg,upload/dangjianxuexi_tupian5.jpg,upload/dangjianxuexi_tupian6.jpg','资料简介4','','','2023-03-08 22:48:26'),(55,'2023-03-08 14:48:26','5555555555','资料名称5','upload/dangjianxuexi_tupian5.jpg,upload/dangjianxuexi_tupian6.jpg,upload/dangjianxuexi_tupian7.jpg','资料简介5','','','2023-03-08 22:48:26'),(56,'2023-03-08 14:48:26','6666666666','资料名称6','upload/dangjianxuexi_tupian6.jpg,upload/dangjianxuexi_tupian7.jpg,upload/dangjianxuexi_tupian8.jpg','资料简介6','','','2023-03-08 22:48:26'),(57,'2023-03-08 14:48:26','7777777777','资料名称7','upload/dangjianxuexi_tupian7.jpg,upload/dangjianxuexi_tupian8.jpg,upload/dangjianxuexi_tupian9.jpg','资料简介7','','','2023-03-08 22:48:26'),(58,'2023-03-08 14:48:26','8888888888','资料名称8','upload/dangjianxuexi_tupian8.jpg,upload/dangjianxuexi_tupian9.jpg,upload/dangjianxuexi_tupian10.jpg','资料简介8','','','2023-03-08 22:48:26');
/*!40000 ALTER TABLE `dangjianxuexi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dangjianyaowen`
--

DROP TABLE IF EXISTS `dangjianyaowen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dangjianyaowen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dangjianbiaoti` varchar(200) NOT NULL COMMENT '党建标题',
  `fengmian` longtext COMMENT '封面',
  `jianjie` longtext COMMENT '简介',
  `shipin` longtext COMMENT '视频',
  `xiangqingneirong` longtext COMMENT '详情内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='党建要闻';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dangjianyaowen`
--

LOCK TABLES `dangjianyaowen` WRITE;
/*!40000 ALTER TABLE `dangjianyaowen` DISABLE KEYS */;
INSERT INTO `dangjianyaowen` VALUES (31,'2023-03-08 14:48:26','党建标题1','upload/dangjianyaowen_fengmian1.jpg,upload/dangjianyaowen_fengmian2.jpg,upload/dangjianyaowen_fengmian3.jpg','简介1','','详情内容1','2023-03-08',1,1),(32,'2023-03-08 14:48:26','党建标题2','upload/dangjianyaowen_fengmian2.jpg,upload/dangjianyaowen_fengmian3.jpg,upload/dangjianyaowen_fengmian4.jpg','简介2','','详情内容2','2023-03-08',2,2),(33,'2023-03-08 14:48:26','党建标题3','upload/dangjianyaowen_fengmian3.jpg,upload/dangjianyaowen_fengmian4.jpg,upload/dangjianyaowen_fengmian5.jpg','简介3','','详情内容3','2023-03-08',3,3),(34,'2023-03-08 14:48:26','党建标题4','upload/dangjianyaowen_fengmian4.jpg,upload/dangjianyaowen_fengmian5.jpg,upload/dangjianyaowen_fengmian6.jpg','简介4','','详情内容4','2023-03-08',4,4),(35,'2023-03-08 14:48:26','党建标题5','upload/dangjianyaowen_fengmian5.jpg,upload/dangjianyaowen_fengmian6.jpg,upload/dangjianyaowen_fengmian7.jpg','简介5','','详情内容5','2023-03-08',5,5),(36,'2023-03-08 14:48:26','党建标题6','upload/dangjianyaowen_fengmian6.jpg,upload/dangjianyaowen_fengmian7.jpg,upload/dangjianyaowen_fengmian8.jpg','简介6','','详情内容6','2023-03-08',6,6),(37,'2023-03-08 14:48:26','党建标题7','upload/dangjianyaowen_fengmian7.jpg,upload/dangjianyaowen_fengmian8.jpg,upload/dangjianyaowen_fengmian9.jpg','简介7','','详情内容7','2023-03-08',7,7),(38,'2023-03-08 14:48:26','党建标题8','upload/dangjianyaowen_fengmian8.jpg,upload/dangjianyaowen_fengmian9.jpg,upload/dangjianyaowen_fengmian10.jpg','简介8','','详情内容8','2023-03-08',8,8);
/*!40000 ALTER TABLE `dangjianyaowen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dangyuan`
--

DROP TABLE IF EXISTS `dangyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dangyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dangyuanzhanghao` varchar(200) NOT NULL COMMENT '党员账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `dangyuanxingming` varchar(200) DEFAULT NULL COMMENT '党员姓名',
  `touxiang` longtext COMMENT '头像',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `rudangshijian` date DEFAULT NULL COMMENT '入党时间',
  `zhibuzhanghao` varchar(200) DEFAULT NULL COMMENT '支部账号',
  `zhibumingcheng` varchar(200) DEFAULT NULL COMMENT '支部名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dangyuanzhanghao` (`dangyuanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='党员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dangyuan`
--

LOCK TABLES `dangyuan` WRITE;
/*!40000 ALTER TABLE `dangyuan` DISABLE KEYS */;
INSERT INTO `dangyuan` VALUES (11,'2023-03-08 14:48:26','党员账号1','123456','党员姓名1','upload/dangyuan_touxiang1.jpg','13823888881',1,'男','学历1','440300199101010001','2023-03-08','支部账号1','支部名称1'),(12,'2023-03-08 14:48:26','党员账号2','123456','党员姓名2','upload/dangyuan_touxiang2.jpg','13823888882',2,'男','学历2','440300199202020002','2023-03-08','支部账号2','支部名称2'),(13,'2023-03-08 14:48:26','党员账号3','123456','党员姓名3','upload/dangyuan_touxiang3.jpg','13823888883',3,'男','学历3','440300199303030003','2023-03-08','支部账号3','支部名称3'),(14,'2023-03-08 14:48:26','党员账号4','123456','党员姓名4','upload/dangyuan_touxiang4.jpg','13823888884',4,'男','学历4','440300199404040004','2023-03-08','支部账号4','支部名称4'),(15,'2023-03-08 14:48:26','党员账号5','123456','党员姓名5','upload/dangyuan_touxiang5.jpg','13823888885',5,'男','学历5','440300199505050005','2023-03-08','支部账号5','支部名称5'),(16,'2023-03-08 14:48:26','党员账号6','123456','党员姓名6','upload/dangyuan_touxiang6.jpg','13823888886',6,'男','学历6','440300199606060006','2023-03-08','支部账号6','支部名称6'),(17,'2023-03-08 14:48:26','党员账号7','123456','党员姓名7','upload/dangyuan_touxiang7.jpg','13823888887',7,'男','学历7','440300199707070007','2023-03-08','支部账号7','支部名称7'),(18,'2023-03-08 14:48:26','党员账号8','123456','党员姓名8','upload/dangyuan_touxiang8.jpg','13823888888',8,'男','学历8','440300199808080008','2023-03-08','支部账号8','支部名称8');
/*!40000 ALTER TABLE `dangyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dangzhibu`
--

DROP TABLE IF EXISTS `dangzhibu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dangzhibu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhibuzhanghao` varchar(200) NOT NULL COMMENT '支部账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhibumingcheng` varchar(200) NOT NULL COMMENT '支部名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `zhibudizhi` varchar(200) DEFAULT NULL COMMENT '支部地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhibuzhanghao` (`zhibuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='党支部';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dangzhibu`
--

LOCK TABLES `dangzhibu` WRITE;
/*!40000 ALTER TABLE `dangzhibu` DISABLE KEYS */;
INSERT INTO `dangzhibu` VALUES (21,'2023-03-08 14:48:26','支部账号1','123456','支部名称1','负责人1','13823888881','支部地址1'),(22,'2023-03-08 14:48:26','支部账号2','123456','支部名称2','负责人2','13823888882','支部地址2'),(23,'2023-03-08 14:48:26','支部账号3','123456','支部名称3','负责人3','13823888883','支部地址3'),(24,'2023-03-08 14:48:26','支部账号4','123456','支部名称4','负责人4','13823888884','支部地址4'),(25,'2023-03-08 14:48:26','支部账号5','123456','支部名称5','负责人5','13823888885','支部地址5'),(26,'2023-03-08 14:48:26','支部账号6','123456','支部名称6','负责人6','13823888886','支部地址6'),(27,'2023-03-08 14:48:26','支部账号7','123456','支部名称7','负责人7','13823888887','支部地址7'),(28,'2023-03-08 14:48:26','支部账号8','123456','支部名称8','负责人8','13823888888','支部地址8');
/*!40000 ALTER TABLE `dangzhibu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussdangjianditu`
--

DROP TABLE IF EXISTS `discussdangjianditu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussdangjianditu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='党建地图评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussdangjianditu`
--

LOCK TABLES `discussdangjianditu` WRITE;
/*!40000 ALTER TABLE `discussdangjianditu` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussdangjianditu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussdangjianxuexi`
--

DROP TABLE IF EXISTS `discussdangjianxuexi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussdangjianxuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='党建学习评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussdangjianxuexi`
--

LOCK TABLES `discussdangjianxuexi` WRITE;
/*!40000 ALTER TABLE `discussdangjianxuexi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussdangjianxuexi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussdangjianyaowen`
--

DROP TABLE IF EXISTS `discussdangjianyaowen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussdangjianyaowen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='党建要闻评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussdangjianyaowen`
--

LOCK TABLES `discussdangjianyaowen` WRITE;
/*!40000 ALTER TABLE `discussdangjianyaowen` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussdangjianyaowen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '学习测试名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '学习测试状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='学习测试表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1,'2023-03-08 14:48:27','十万个为什么',60,1);
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属学习测试id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '学习测试名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1,'2023-03-08 14:48:27',1,'十万个为什么','下面动物不属于昆虫的是（）。','[{\"text\":\"A.苍蝇\",\"code\":\"A\"},{\"text\":\"B.蜜蜂\",\"code\":\"B\"},{\"text\":\"C.蜂鸟\",\"code\":\"C\"}]',20,'C','蜂鸟',0,1),(2,'2023-03-08 14:48:27',1,'十万个为什么','油着火后可以用水扑灭。','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'B','油着火后不可以用水扑灭',2,2),(3,'2023-03-08 14:48:27',1,'十万个为什么','地球是个球体，中间是（ ）。','[]',30,'赤道','赤道',3,3),(4,'2023-03-08 14:48:27',1,'十万个为什么','下面动物中会流汗的有（ ）。','[{\"text\":\"A.马\",\"code\":\"A\"},{\"text\":\"B.猫\",\"code\":\"B\"},{\"text\":\"C.狗\",\"code\":\"C\"}]',30,'A,B','狗不会流汗',1,4);
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '学习测试id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '学习测试名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongbaoming`
--

DROP TABLE IF EXISTS `huodongbaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `huodongshijian` varchar(200) DEFAULT NULL COMMENT '活动时间',
  `baomingshijian` datetime DEFAULT NULL COMMENT '报名时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `dangyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '党员账号',
  `dangyuanxingming` varchar(200) DEFAULT NULL COMMENT '党员姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `zhibuzhanghao` varchar(200) DEFAULT NULL COMMENT '支部账号',
  `zhibumingcheng` varchar(200) DEFAULT NULL COMMENT '支部名称',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='活动报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongbaoming`
--

LOCK TABLES `huodongbaoming` WRITE;
/*!40000 ALTER TABLE `huodongbaoming` DISABLE KEYS */;
INSERT INTO `huodongbaoming` VALUES (91,'2023-03-08 14:48:26','活动名称1','活动地点1','活动时间1','2023-03-08 22:48:26','备注1','党员账号1','党员姓名1','联系方式1','支部账号1','支部名称1',1,1,'是',''),(92,'2023-03-08 14:48:26','活动名称2','活动地点2','活动时间2','2023-03-08 22:48:26','备注2','党员账号2','党员姓名2','联系方式2','支部账号2','支部名称2',2,2,'是',''),(93,'2023-03-08 14:48:26','活动名称3','活动地点3','活动时间3','2023-03-08 22:48:26','备注3','党员账号3','党员姓名3','联系方式3','支部账号3','支部名称3',3,3,'是',''),(94,'2023-03-08 14:48:26','活动名称4','活动地点4','活动时间4','2023-03-08 22:48:26','备注4','党员账号4','党员姓名4','联系方式4','支部账号4','支部名称4',4,4,'是',''),(95,'2023-03-08 14:48:26','活动名称5','活动地点5','活动时间5','2023-03-08 22:48:26','备注5','党员账号5','党员姓名5','联系方式5','支部账号5','支部名称5',5,5,'是',''),(96,'2023-03-08 14:48:26','活动名称6','活动地点6','活动时间6','2023-03-08 22:48:26','备注6','党员账号6','党员姓名6','联系方式6','支部账号6','支部名称6',6,6,'是',''),(97,'2023-03-08 14:48:26','活动名称7','活动地点7','活动时间7','2023-03-08 22:48:26','备注7','党员账号7','党员姓名7','联系方式7','支部账号7','支部名称7',7,7,'是',''),(98,'2023-03-08 14:48:26','活动名称8','活动地点8','活动时间8','2023-03-08 22:48:26','备注8','党员账号8','党员姓名8','联系方式8','支部账号8','支部名称8',8,8,'是','');
/*!40000 ALTER TABLE `huodongbaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minzhutoupiao`
--

DROP TABLE IF EXISTS `minzhutoupiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minzhutoupiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `toupiaozhuti` varchar(200) NOT NULL COMMENT '投票主题',
  `fengmian` longtext COMMENT '封面',
  `xuanxianga` int(11) DEFAULT NULL COMMENT '选项a',
  `xuanxiangb` int(11) DEFAULT NULL COMMENT '选项b',
  `xuanxiangc` int(11) DEFAULT NULL COMMENT '选项c',
  `xuanxiangd` int(11) DEFAULT NULL COMMENT '选项d',
  `toupiaoneirong` longtext COMMENT '投票内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `reversetime` datetime DEFAULT NULL COMMENT '倒计结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COMMENT='民主投票';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minzhutoupiao`
--

LOCK TABLES `minzhutoupiao` WRITE;
/*!40000 ALTER TABLE `minzhutoupiao` DISABLE KEYS */;
INSERT INTO `minzhutoupiao` VALUES (121,'2023-03-08 14:48:26','投票主题1','upload/minzhutoupiao_fengmian1.jpg,upload/minzhutoupiao_fengmian2.jpg,upload/minzhutoupiao_fengmian3.jpg',1,1,1,1,'投票内容1','2023-03-08 22:48:26','2023-03-09 00:00:00'),(122,'2023-03-08 14:48:26','投票主题2','upload/minzhutoupiao_fengmian2.jpg,upload/minzhutoupiao_fengmian3.jpg,upload/minzhutoupiao_fengmian4.jpg',2,2,2,2,'投票内容2','2023-03-08 22:48:26','2023-03-09 00:00:00'),(123,'2023-03-08 14:48:26','投票主题3','upload/minzhutoupiao_fengmian3.jpg,upload/minzhutoupiao_fengmian4.jpg,upload/minzhutoupiao_fengmian5.jpg',3,3,3,3,'投票内容3','2023-03-08 22:48:26','2023-03-09 00:00:00'),(124,'2023-03-08 14:48:26','投票主题4','upload/minzhutoupiao_fengmian4.jpg,upload/minzhutoupiao_fengmian5.jpg,upload/minzhutoupiao_fengmian6.jpg',4,4,4,4,'投票内容4','2023-03-08 22:48:26','2023-03-09 00:00:00'),(125,'2023-03-08 14:48:26','投票主题5','upload/minzhutoupiao_fengmian5.jpg,upload/minzhutoupiao_fengmian6.jpg,upload/minzhutoupiao_fengmian7.jpg',5,5,5,5,'投票内容5','2023-03-08 22:48:26','2023-03-09 00:00:00'),(126,'2023-03-08 14:48:26','投票主题6','upload/minzhutoupiao_fengmian6.jpg,upload/minzhutoupiao_fengmian7.jpg,upload/minzhutoupiao_fengmian8.jpg',6,6,6,6,'投票内容6','2023-03-08 22:48:26','2023-03-09 00:00:00'),(127,'2023-03-08 14:48:26','投票主题7','upload/minzhutoupiao_fengmian7.jpg,upload/minzhutoupiao_fengmian8.jpg,upload/minzhutoupiao_fengmian9.jpg',7,7,7,7,'投票内容7','2023-03-08 22:48:26','2023-03-09 00:00:00'),(128,'2023-03-08 14:48:26','投票主题8','upload/minzhutoupiao_fengmian8.jpg,upload/minzhutoupiao_fengmian9.jpg,upload/minzhutoupiao_fengmian10.jpg',8,8,8,8,'投票内容8','2023-03-08 22:48:26','2023-03-09 00:00:00');
/*!40000 ALTER TABLE `minzhutoupiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toupiaoxinxi`
--

DROP TABLE IF EXISTS `toupiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toupiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dangyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '党员账号',
  `dangyuanxingming` varchar(200) DEFAULT NULL COMMENT '党员姓名',
  `toupiaozhuti` varchar(200) DEFAULT NULL COMMENT '投票主题',
  `xuanxianga` int(11) DEFAULT NULL COMMENT '选项a',
  `xuanxiangb` int(11) DEFAULT NULL COMMENT '选项b',
  `xuanxiangc` int(11) DEFAULT NULL COMMENT '选项c',
  `xuanxiangd` int(11) DEFAULT NULL COMMENT '选项d',
  `toupiaoshijian` datetime DEFAULT NULL COMMENT '投票时间',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COMMENT='投票信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toupiaoxinxi`
--

LOCK TABLES `toupiaoxinxi` WRITE;
/*!40000 ALTER TABLE `toupiaoxinxi` DISABLE KEYS */;
INSERT INTO `toupiaoxinxi` VALUES (131,'2023-03-08 14:48:26','党员账号1','党员姓名1','投票主题1',1,1,1,1,'2023-03-08 22:48:26',1,1),(132,'2023-03-08 14:48:26','党员账号2','党员姓名2','投票主题2',1,1,1,1,'2023-03-08 22:48:26',2,2),(133,'2023-03-08 14:48:26','党员账号3','党员姓名3','投票主题3',1,1,1,1,'2023-03-08 22:48:26',3,3),(134,'2023-03-08 14:48:26','党员账号4','党员姓名4','投票主题4',1,1,1,1,'2023-03-08 22:48:26',4,4),(135,'2023-03-08 14:48:26','党员账号5','党员姓名5','投票主题5',1,1,1,1,'2023-03-08 22:48:26',5,5),(136,'2023-03-08 14:48:26','党员账号6','党员姓名6','投票主题6',1,1,1,1,'2023-03-08 22:48:26',6,6),(137,'2023-03-08 14:48:26','党员账号7','党员姓名7','投票主题7',1,1,1,1,'2023-03-08 22:48:26',7,7),(138,'2023-03-08 14:48:26','党员账号8','党员姓名8','投票主题8',1,1,1,1,'2023-03-08 22:48:26',8,8);
/*!40000 ALTER TABLE `toupiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-03-08 14:48:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wenjuandiaocha`
--

DROP TABLE IF EXISTS `wenjuandiaocha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wenjuandiaocha` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenjuanbiaoti` varchar(200) NOT NULL COMMENT '问卷标题',
  `tupian` longtext COMMENT '图片',
  `wenjuanneirong` longtext NOT NULL COMMENT '问卷内容',
  `daanyi` varchar(200) NOT NULL COMMENT '答案一',
  `daaner` varchar(200) NOT NULL COMMENT '答案二',
  `daansan` varchar(200) NOT NULL COMMENT '答案三',
  `daansi` varchar(200) NOT NULL COMMENT '答案四',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='问卷调查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wenjuandiaocha`
--

LOCK TABLES `wenjuandiaocha` WRITE;
/*!40000 ALTER TABLE `wenjuandiaocha` DISABLE KEYS */;
INSERT INTO `wenjuandiaocha` VALUES (101,'2023-03-08 14:48:26','问卷标题1','upload/wenjuandiaocha_tupian1.jpg,upload/wenjuandiaocha_tupian2.jpg,upload/wenjuandiaocha_tupian3.jpg','问卷内容1','答案一1','答案二1','答案三1','答案四1','2023-03-08 22:48:26'),(102,'2023-03-08 14:48:26','问卷标题2','upload/wenjuandiaocha_tupian2.jpg,upload/wenjuandiaocha_tupian3.jpg,upload/wenjuandiaocha_tupian4.jpg','问卷内容2','答案一2','答案二2','答案三2','答案四2','2023-03-08 22:48:26'),(103,'2023-03-08 14:48:26','问卷标题3','upload/wenjuandiaocha_tupian3.jpg,upload/wenjuandiaocha_tupian4.jpg,upload/wenjuandiaocha_tupian5.jpg','问卷内容3','答案一3','答案二3','答案三3','答案四3','2023-03-08 22:48:26'),(104,'2023-03-08 14:48:26','问卷标题4','upload/wenjuandiaocha_tupian4.jpg,upload/wenjuandiaocha_tupian5.jpg,upload/wenjuandiaocha_tupian6.jpg','问卷内容4','答案一4','答案二4','答案三4','答案四4','2023-03-08 22:48:26'),(105,'2023-03-08 14:48:26','问卷标题5','upload/wenjuandiaocha_tupian5.jpg,upload/wenjuandiaocha_tupian6.jpg,upload/wenjuandiaocha_tupian7.jpg','问卷内容5','答案一5','答案二5','答案三5','答案四5','2023-03-08 22:48:26'),(106,'2023-03-08 14:48:26','问卷标题6','upload/wenjuandiaocha_tupian6.jpg,upload/wenjuandiaocha_tupian7.jpg,upload/wenjuandiaocha_tupian8.jpg','问卷内容6','答案一6','答案二6','答案三6','答案四6','2023-03-08 22:48:26'),(107,'2023-03-08 14:48:26','问卷标题7','upload/wenjuandiaocha_tupian7.jpg,upload/wenjuandiaocha_tupian8.jpg,upload/wenjuandiaocha_tupian9.jpg','问卷内容7','答案一7','答案二7','答案三7','答案四7','2023-03-08 22:48:26'),(108,'2023-03-08 14:48:26','问卷标题8','upload/wenjuandiaocha_tupian8.jpg,upload/wenjuandiaocha_tupian9.jpg,upload/wenjuandiaocha_tupian10.jpg','问卷内容8','答案一8','答案二8','答案三8','答案四8','2023-03-08 22:48:26');
/*!40000 ALTER TABLE `wenjuandiaocha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wenjuanhuida`
--

DROP TABLE IF EXISTS `wenjuanhuida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wenjuanhuida` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenjuanbiaoti` varchar(200) DEFAULT NULL COMMENT '问卷标题',
  `wenjuanhuida` varchar(200) NOT NULL COMMENT '问卷回答',
  `diaochashijian` datetime DEFAULT NULL COMMENT '调查时间',
  `dangyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '党员账号',
  `dangyuanxingming` varchar(200) DEFAULT NULL COMMENT '党员姓名',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='问卷回答';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wenjuanhuida`
--

LOCK TABLES `wenjuanhuida` WRITE;
/*!40000 ALTER TABLE `wenjuanhuida` DISABLE KEYS */;
INSERT INTO `wenjuanhuida` VALUES (111,'2023-03-08 14:48:26','问卷标题1','答案一','2023-03-08 22:48:26','党员账号1','党员姓名1',1,1),(112,'2023-03-08 14:48:26','问卷标题2','答案一','2023-03-08 22:48:26','党员账号2','党员姓名2',2,2),(113,'2023-03-08 14:48:26','问卷标题3','答案一','2023-03-08 22:48:26','党员账号3','党员姓名3',3,3),(114,'2023-03-08 14:48:26','问卷标题4','答案一','2023-03-08 22:48:26','党员账号4','党员姓名4',4,4),(115,'2023-03-08 14:48:26','问卷标题5','答案一','2023-03-08 22:48:26','党员账号5','党员姓名5',5,5),(116,'2023-03-08 14:48:26','问卷标题6','答案一','2023-03-08 22:48:26','党员账号6','党员姓名6',6,6),(117,'2023-03-08 14:48:26','问卷标题7','答案一','2023-03-08 22:48:26','党员账号7','党员姓名7',7,7),(118,'2023-03-08 14:48:26','问卷标题8','答案一','2023-03-08 22:48:26','党员账号8','党员姓名8',8,8);
/*!40000 ALTER TABLE `wenjuanhuida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexixinde`
--

DROP TABLE IF EXISTS `xuexixinde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexixinde` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziliaobianhao` varchar(200) DEFAULT NULL COMMENT '资料编号',
  `ziliaomingcheng` varchar(200) DEFAULT NULL COMMENT '资料名称',
  `xuexixinde` longtext NOT NULL COMMENT '学习心得',
  `xuexishijian` datetime DEFAULT NULL COMMENT '学习时间',
  `dangyuanzhanghao` varchar(200) DEFAULT NULL COMMENT '党员账号',
  `dangyuanxingming` varchar(200) DEFAULT NULL COMMENT '党员姓名',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='学习心得';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexixinde`
--

LOCK TABLES `xuexixinde` WRITE;
/*!40000 ALTER TABLE `xuexixinde` DISABLE KEYS */;
INSERT INTO `xuexixinde` VALUES (61,'2023-03-08 14:48:26','资料编号1','资料名称1','学习心得1','2023-03-08 22:48:26','党员账号1','党员姓名1',1,1),(62,'2023-03-08 14:48:26','资料编号2','资料名称2','学习心得2','2023-03-08 22:48:26','党员账号2','党员姓名2',2,2),(63,'2023-03-08 14:48:26','资料编号3','资料名称3','学习心得3','2023-03-08 22:48:26','党员账号3','党员姓名3',3,3),(64,'2023-03-08 14:48:26','资料编号4','资料名称4','学习心得4','2023-03-08 22:48:26','党员账号4','党员姓名4',4,4),(65,'2023-03-08 14:48:26','资料编号5','资料名称5','学习心得5','2023-03-08 22:48:26','党员账号5','党员姓名5',5,5),(66,'2023-03-08 14:48:26','资料编号6','资料名称6','学习心得6','2023-03-08 22:48:26','党员账号6','党员姓名6',6,6),(67,'2023-03-08 14:48:26','资料编号7','资料名称7','学习心得7','2023-03-08 22:48:26','党员账号7','党员姓名7',7,7),(68,'2023-03-08 14:48:26','资料编号8','资料名称8','学习心得8','2023-03-08 22:48:26','党员账号8','党员姓名8',8,8);
/*!40000 ALTER TABLE `xuexixinde` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-09 20:21:50
