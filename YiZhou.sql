-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: exam
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminId` int NOT NULL AUTO_INCREMENT COMMENT 'ID号',
  `adminName` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '电话号码',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '电子邮箱',
  `pwd` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `cardId` varchar(18) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '身份证号',
  `role` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '角色(0管理员，1教师，2学生)',
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`adminId`) USING BTREE,
  KEY `sex` (`sex`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9528 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='管理员信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (9527,'超级管理员','男','13658377857','1253838283@qq.com','$2a$10$MAp7H/FUUpSJGCC/ocsV2OnFW5Mrn/EKsVwOMs7CPvuTo/8rVeo1e','3132','0','yzhou116@gmail.com');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_manage`
--

DROP TABLE IF EXISTS `exam_manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_manage` (
  `examCode` int NOT NULL AUTO_INCREMENT COMMENT '考试编号',
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '该次考试介绍',
  `source` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '课程名称',
  `paperId` int DEFAULT NULL COMMENT '试卷编号',
  `examDate` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '考试日期',
  `totalTime` int DEFAULT NULL COMMENT '持续时长',
  `grade` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '年级',
  `term` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '学期',
  `major` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '专业',
  `institute` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '学院',
  `totalScore` int DEFAULT NULL COMMENT '总分',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '考试类型',
  `tips` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '考生须知',
  `teacher` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `student` longtext COLLATE utf8_bin,
  `ispublic` int DEFAULT NULL,
  PRIMARY KEY (`examCode`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20190016 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='考试管理表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_manage`
--

LOCK TABLES `exam_manage` WRITE;
/*!40000 ALTER TABLE `exam_manage` DISABLE KEYS */;
INSERT INTO `exam_manage` VALUES (20190001,'2019年上期期末考试','计算机网络',1001,'2019-03-21',120,'2018','1','计算机科学与技术','软件工程学院',100,'期末考试','快乐千万条，学习第一条，平时不努力，考试两行泪。','yzhou116@gmail.com','yzhou116@gmail.com,yzhou117@gmail.com,yzhou118@gmail.com,yzhou119@gmail.com,yzhou120@gmail.com,yzhou121@gmail.com,',1),(20190002,'2019年上期期末考试','数据库理论',1002,'2019-03-07',90,'2018','2','网络工程','软件工程学院',100,'期末考试','快乐千万条，学习第一条，平时不努力，考试两行泪。','yzhou117@gmail.com','yzhou116@gmail.com,yzhou117@gmail.com,',1),(20190003,'2018年下期期末考试','数据结构',1003,'2019-02-27',90,'2017','1','软件工程','软件工程学院',100,'期末考试','快乐千万条，学习第一条，平时不努力，考试两行泪。','yzhou116@gmail.com','yzhou116@gmail.com,',1),(20190005,'2018年上期期末考试','计算机导论',1004,'2019-03-14',90,'2018','1','计算机科学与技术','软件工程学院',100,'期末考试','快乐千万条，学习第一条，平时不努力，考试两行泪。','yzhou117@gmail.com','yzhou116@gmail.com,yzhou120@gmail.com,',1),(20190006,'2017年上期期末考试','软件工程',1005,'2019-03-21',120,'2018','1','计算机科学与技术','软件工程学院',100,'期末考试','快乐千万条，学习第一条，平时不努力，考试两行泪。','yzhou116@gmail.com','yzhou116@gmail.com,',1),(20190007,'2018年上期期末考试','操作系统',1006,'2019-03-13',120,'2018','2','计算机科学与技术','软件工程学院',100,'期末考试','快乐千万条，学习第一条，平时不努力，考试两行泪。','yzhou116@gmail.com','yzhou116@gmail.com,',1),(20190008,'2018年下期期末考试','C语言',1007,'2019-03-13',120,'2018','1','信息工程','软件工程学院',100,'期末考试','快乐千万条，学习第一条，平时不努力，考试两行泪。','yzhou117@gmail.com','yzhou116@gmail.com,yzhou120@gmail.com,',1),(20190009,'2018年上期期末考试','高等数学',1008,'2019-03-07',90,'2018','1','信息工程','软件工程学院',100,'期末考试','快乐千万条，学习第一条，平时不努力，考试两行泪。','yzhou117@gmail.com','yzhou116@gmail.com,yzhou120@gmail.com,',1),(20190013,'测试','测试',1009,'2019-04-24',120,'2017',NULL,'测试','测试',100,'期末考试','请不要带与考试无关的书籍。',NULL,NULL,1),(20190014,'Test it','YiZhouTest',1010,'2022-12-06',100,'grade1',NULL,'IT','Seneca',100,'online','asdasd','yzhou116@gmail.com','yzhou116@gmail.com,yzhou120@gmail.com,',1),(20190015,'Test Function','YiZhouTest',1011,'2023-01-03',60,NULL,NULL,'Computer','YiCollege',90,'None','I don\'t know',NULL,NULL,NULL);
/*!40000 ALTER TABLE `exam_manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fill_question`
--

DROP TABLE IF EXISTS `fill_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fill_question` (
  `questionId` int NOT NULL AUTO_INCREMENT COMMENT '试题编号',
  `subject` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '考试科目',
  `question` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '试题内容',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '正确答案',
  `analysis` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '题目解析',
  `score` int DEFAULT '2' COMMENT '分数',
  `level` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '难度等级',
  `section` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '所属章节',
  `teacher` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`questionId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10031 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='填空题题库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fill_question`
--

LOCK TABLES `fill_question` WRITE;
/*!40000 ALTER TABLE `fill_question` DISABLE KEYS */;
INSERT INTO `fill_question` VALUES (10000,'计算机网络','从计算机网络系统组成的角度看，计算机网络可以分为()和()','通信子网资源子网',NULL,2,'3',NULL,'yzhou116@gmail.com'),(10001,'计算机网络','收发电子邮件，属于ISO/OSI RM中 ()层的功能。','应用',NULL,2,'1',NULL,'yzhou116@gmail.com'),(10002,'计算机网络','在TCP/IP层次模型中与OSI参考模型第四层相对应的主要协议有()和(),其中后者提供无连接的不可靠传输服','TCP（传输控制协议） UDP（用户数据报协议） ',NULL,2,'2',NULL,'yzhou116@gmail.com'),(10003,'计算机网络','计算机网络中常用的三种有线媒体是 (),()和 ()','同轴电缆.双绞线 光纤',NULL,2,'1',NULL,'yzhou117@gmail.com'),(10004,'计算机网络','国内最早的四大网络包括原邮电部的ChinaNet. 原电子部的ChinaGBN. 教育部的()和中科院的CSTnet','CERnet (或中国教育科研网)',NULL,2,'4',NULL,'yzhou117@gmail.com'),(10005,'计算机网络','复盖一个国家，地区或几个洲的计算机网络称为()，在同一建筑或复盖几公里内范围的网络称为()，而介于两者之间的是()',' 广域网       局域网     城域网',NULL,2,'1',NULL,'yzhou116@gmail.com'),(10006,'计算机网络','Outlook等常用电子邮件软件接收邮件使用的协议是(),发送邮件时使用的协议是()','POP3    SMTP    ',NULL,2,'1',NULL,'yzhou116@gmail.com'),(10007,'计算机网络','通信系统中，称调制前的电信号为()信号，调制后的信号为调制信号','基带',NULL,2,'1',NULL,'yzhou117@gmail.com'),(10008,'计算机网络','按照IPV4标准,IP地址205.3.127.13属于()类地址','C',NULL,2,'1',NULL,'yzhou117@gmail.com'),(10009,'计算机网络','计算机网络采用()技术，而传统电话网络则采用()技术','分组交换电路交换',NULL,2,'1',NULL,'yzhou117@gmail.com'),(10010,'计算机网络','计算机内传输的信号是()，而公用电话系统的传输系统只能传输()','数字信号模拟信号',NULL,2,'1',NULL,'yzhou116@gmail.com'),(10011,'计算机网络','通信系统中，称调制前的电信号为()，调制后的信号叫()。','基带信号调制信号',NULL,2,'1',NULL,'yzhou117@gmail.com'),(10012,'计算机网络','IP地址分()和()两个部分','网络号主机号',NULL,2,'1',NULL,'yzhou116@gmail.com'),(10013,'计算机网络',' IP地址协议作网间网中()层协议，提供无连接的数据报传输机制，IP数据报也分为()和()两个部分','网络报头数据区',NULL,2,'2',NULL,'yzhou116@gmail.com'),(10014,'计算机网络','()是一个简单的远程终端协议。','TELNET',NULL,2,'1',NULL,'yzhou117@gmail.com'),(10015,'计算机网络','在同一个系统内，相邻层之间交换信息的连接点称之为()，而低层模块向高层提供功能性的支持称之为()。','接口服务',NULL,2,'1',NULL,'yzhou117@gmail.com'),(10016,'计算机网络','Internet广泛使用的电子邮件传送协议是()','SMTP',NULL,2,'1',NULL,'yzhou116@gmail.com'),(10017,'计算机网络','按交换方式来分类，计算机网络可以分为电路交换网，  报文交换网  和()三种','分组交换网',NULL,2,'3',NULL,'yzhou116@gmail.com'),(10018,'计算机网络','Intranet分层结构包括网络、(),应用三个层次。','服务',NULL,2,'1',NULL,'yzhou116@gmail.com'),(10019,'计算机网络','WWW上的每一个网页都有一个独立的地址，这些地址称为  ()','统一资源定位器/URL ',NULL,2,'2',NULL,'yzhou117@gmail.com'),(10020,'计算机网络','分组交换网中，附加信息用来在网络中进行路由选择、() 和流量控制','差错纠正  ',NULL,2,'4',NULL,'yzhou117@gmail.com'),(10021,'计算机网络','根据IEEE802模型的标准将数据链路层划分为LLC子层和 ()子层。',' MAC ',NULL,2,'3',NULL,'yzhou117@gmail.com'),(10022,'计算机网络','据交换的路由信息的不同，路由算法可以分为两大类：  ()  和链路状态算法','距离向量算法',NULL,2,'3',NULL,'yzhou116@gmail.com'),(10023,'计算机网络','假定某信道受奈氏准则限制的最高码元速率为2000码元/秒。如果采用振幅调制，把码元的振幅划分为16个不同等级来传送，那么可以获得的数据率为 () b/s。','80000 ',NULL,2,'5',NULL,'yzhou117@gmail.com'),(10024,'计算机网络','交换型以太网系统中的 ()  ，以其为核心联接站点或者网段，端口之间帧的输入和输出已不再受到CSMA/CD媒体访问控制协议的约束。','以太网交换器 ',NULL,2,'5',NULL,'yzhou116@gmail.com'),(10025,'计算机网络','局域网络参考模型是以 ()标准为基础的','IEEE802',NULL,2,'5',NULL,'yzhou116@gmail.com'),(10026,'计算机网络','路由器的核心是 () 。',' 路由表',NULL,2,'3',NULL,'yzhou116@gmail.com'),(10027,'计算机网络','若 HDLC 帧数据段中出现比特串“ 01011111110 ”，则比特填充后的输出为()','10111110110',NULL,2,'5',NULL,'yzhou117@gmail.com'),(10028,'计算机网络','数字调制的三种基本形式：移幅键控法ASK、 ()、移相键控法PSK','移频键控法FSK',NULL,2,'5',NULL,'yzhou117@gmail.com'),(10029,'YiZhouTest','I can do this () and that ()','(Do it) (Dont do it)','',2,'','',NULL),(10030,'YiZhouTest','What is the best one()','yizhou','',2,'','',NULL);
/*!40000 ALTER TABLE `fill_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judge_question`
--

DROP TABLE IF EXISTS `judge_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judge_question` (
  `questionId` int NOT NULL AUTO_INCREMENT COMMENT '试题编号',
  `subject` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '考试科目',
  `question` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '试题内容',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '正确答案',
  `analysis` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '题目解析',
  `score` int DEFAULT '2' COMMENT '分数',
  `level` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '难度等级',
  `section` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '所属章节',
  `teacher` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`questionId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10015 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='判断题题库表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judge_question`
--

LOCK TABLES `judge_question` WRITE;
/*!40000 ALTER TABLE `judge_question` DISABLE KEYS */;
INSERT INTO `judge_question` VALUES (10001,'计算机网络','与有线网相比,无线网的数据传输率一般相对较慢','T',NULL,2,'1','','yzhou116@gmail.com'),(10002,'计算机网络','OSI参考模型中,不同节点的同等层具有不同的功能','F',NULL,2,'1',NULL,'yzhou116@gmail.com'),(10003,'计算机网络','普通电脑不能作为服务器','F',NULL,2,'1',NULL,'yzhou117@gmail.com'),(10004,'计算机网络','没有网线的电脑不能连入互联网','F',NULL,2,'1',NULL,'yzhou117@gmail.com'),(10005,'计算机网络','网卡必须安装驱动程序','T',NULL,2,'2',NULL,'yzhou116@gmail.com'),(10006,'计算机网络','UTP为屏蔽双绞线','F',NULL,2,'2',NULL,'yzhou116@gmail.com'),(10007,'计算机网络','网络接口卡又称为网卡,它是构成网络的基本部件','T',NULL,2,'2',NULL,'yzhou117@gmail.com'),(10008,'计算机网络','无线AP可以成倍地扩展网络覆盖范围','T',NULL,2,'3',NULL,'yzhou117@gmail.com'),(10009,'计算机网络','SMTP是一组用于由源地址到目的地址传送邮件的协议','T',NULL,2,'4',NULL,'yzhou116@gmail.com'),(10010,'计算机网络','任务管理器可以关闭所有的进程','F',NULL,2,'3',NULL,'yzhou116@gmail.com'),(10011,'计算机网络','利用BT下载时,用户越多,下载速度越快','T',NULL,2,'2',NULL,'yzhou116@gmail.com'),(10012,'计算机网络','INTERNET上向朋友发送电子邮件,必须知道对方的真实姓名和家庭住址','F',NULL,2,'1',NULL,'yzhou117@gmail.com'),(10013,'YiZhouTest','Is this right','F','',2,'','',NULL),(10014,'YiZhouTest','Is this right','T','',2,'','',NULL);
/*!40000 ALTER TABLE `judge_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '留言编号',
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '留言内容',
  `time` date DEFAULT NULL COMMENT '留言时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='留言表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (2,'晚上加班,这感觉非常的nice','今天是星期一的晚上,下班后回到宿舍继续写我的毕业设计,看着项目功能日渐丰满好开心哦,你们也要元气满满哦！','2019-03-18'),(15,'咸鱼','我是一条咸鱼','2019-03-18'),(16,'今天中午吃什么','今天去吃莲藕排骨汤吧，虽然也不好吃，但这里真的没什么东西可以吃了','2019-03-18'),(20,'这个网站不错','博主大大好厉害，网页看着很清新呢，喜欢这样嘞风格。','2019-03-18'),(21,'男孩子','哇，这么可爱，那肯定是男孩子呀。','2019-03-18'),(22,'好人','你是个好人，可是我们不合适。','2019-03-18'),(25,'小乔','花会枯萎，爱永不凋零，小乔要努力变强。','2019-03-18'),(26,'妲己','妲己会一直爱主人，因为被设定成这样，来和妲己玩耍吧。','2019-03-18'),(27,'土味情话','妈妈从小对我讲，不要早恋，遇到你以后，我决定不听妈妈的话了。','2019-03-31'),(35,'贝塔','开坦克','2019-09-05');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multi_question`
--

DROP TABLE IF EXISTS `multi_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multi_question` (
  `questionId` int NOT NULL AUTO_INCREMENT COMMENT '试题编号',
  `subject` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '考试科目',
  `question` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '问题题目',
  `answerA` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '选项A',
  `answerB` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '选项B',
  `answerC` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '选项C',
  `answerD` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '选项D',
  `rightAnswer` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '正确答案',
  `analysis` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '题目解析',
  `score` int DEFAULT '2' COMMENT '分数',
  `section` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '所属章节',
  `level` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '难度等级',
  `teacher` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`questionId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10036 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='选择题题库表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multi_question`
--

LOCK TABLES `multi_question` WRITE;
/*!40000 ALTER TABLE `multi_question` DISABLE KEYS */;
INSERT INTO `multi_question` VALUES (10000,'计算机网络','DNS 服务器和DHCP服务器的作用是（）','将IP地址翻译为计算机名，为客户机分配IP地址','将IP地址翻译为计算机名、解析计算机的MAC地址','将计算机名翻译为IP地址、为客户机分配IP地址','将计算机名翻译为IP地址、解析计算机的MAC地址','C',NULL,2,'应用层','2','yzhou116@gmail.com'),(10001,'计算机网络','HTTP协议通常使用什么协议进行传输（）','ARP','DHCP','UDP','TCP','D',NULL,2,'应用层','2','yzhou116@gmail.com'),(10003,'计算机网络','查看DNS缓存记录的命令（）','ipconfig/displaydns','nslookup','ipconfig/release','ipconfig/flushdns','A',NULL,2,'应用层','3','yzhou116@gmail.com'),(10004,'计算机网络','DHCP(        )报文的目的IP地址为255.255.255.255','DhcpDisover','DhcpOffer','DhcpAck','DhcpNack','A',NULL,2,'应用层','2','yzhou117@gmail.com'),(10005,'计算机网络','下列地址中，（  ）不是DHCP服务器分配的IP地址','196.254.109.100','169.254.12.42','69.254.48.45','96.254.54.15','B',NULL,2,'应用层','2','yzhou117@gmail.com'),(10006,'计算机网络','DHCP通常可以为客户端自动配置哪些网络参数（）','IP，掩码，网关，DNS','IP，掩码，域名，SMTP','网关，掩码，浏览器，FTP','IP，网关，DNS，服务器','A',NULL,2,'应用层','2','yzhou117@gmail.com'),(10007,'计算机网络','DNS服务器在名称解析过程中正确的查询顺序为（）','本地缓存记录→区域记录→转发域名服务器→根域名服务器','区域记录→本地缓存记录→转发域名服务器→根域名服务器','本地缓存记录→区域记录→根域名服务器→转发域名服务器','区域记录→本地缓存记录→根域名服务器→转发域名服务器','A',NULL,2,'应用层','3','yzhou116@gmail.com'),(10008,'计算机网络','在TCP/IP协议中，序号小于（  ）的端口称为熟知端口(well-known port)。','1024','64','256','128','A',NULL,2,'传输层','1','yzhou116@gmail.com'),(10009,'计算机网络','在Internet上用TCP/IP播放视频，想用传输层的最快协议，以减少时延，要使用（ ）','UDP协议的低开销特性','UDP协议的高开销特性','TCP协议的低开销特性','TCP协议的高开销特性','A',NULL,2,'传输层','2','yzhou116@gmail.com'),(10010,'计算机网络','在TCP协议中采用（ ）来区分不同的应用进程','端口号','IP地址','协议类型','MAC地址','A',NULL,2,'传输层','3','yzhou117@gmail.com'),(10011,'计算机网络','可靠的传输协议中的“可靠”指的是（ ）','使用面向连接的会话','使用“尽力而为”的传输','使用滑动窗口来维持可靠性','使用确认重传机制来确保传输的数据不丢失','D',NULL,2,'传输层','2','yzhou117@gmail.com'),(10012,'计算机网络','假设拥塞窗口为50KB，接收窗口为80KB，TCP能够发送的最大字节数为（ ）','50KB','80KB','130KB','30KB','A',NULL,2,'传输层','4','yzhou117@gmail.com'),(10013,'计算机网络','主机A向主机B发送一个（SYN=1，seq=2000）的TCP报文，期望与主机B建立连接，若主机B接受连接请求，则主机B发送的正确有TCP报文可能是（ ）','（SYN=0,ACK=0,seq=2001,ack=2001）','（SYN=1,ACK=1,seq=2000,ack=2000）','•	C.（SYN=1,ACK=1,seq=2001,ack=2001）','（SYN=0,ACK=1,seq=2000,ack=2000）','C',NULL,2,'传输层','2','yzhou117@gmail.com'),(10014,'计算机网络','主机A向主机B连续发送了两个TCP报文段，其序号分别为70和100。试问： （1）第一个报文段携带了（）个字节的数据？',' 70','30','100','170','B',NULL,2,'传输层','3','yzhou116@gmail.com'),(10015,'计算机网络','PCM脉码调制的过程（ ）','采样、量化、编码','量化、编码、采样','编码、量化、采样','采样、编码、量化','A',NULL,2,'物理层','4','yzhou116@gmail.com'),(10016,'计算机网络','若某采用4相位调制的通信链路的数据传输速率为2400bps，则该链路的波特率为（）','600Baud','1200Baud','4800Baud','9600Baud','B',NULL,2,'物理层','1','yzhou116@gmail.com'),(10017,'计算机网络','以下关于数据传输速率的描述中，错误的是( )','数据传输速率表示每秒钟传输构成数据代码的二进制比特数','对于二进制数据，数据传输速率为S=1/T (bps)','常用的数据传输速率单位有: 1Mbps=1.024×106bps','数据传输速率是描述数据传输系统性能的重要技术指标之一','C',NULL,2,'物理层','2','yzhou116@gmail.com'),(10018,'计算机网络','以下关于时分多路复用概念的描述中，错误的是.(  ).','时分多路复用将线路使用的时间分成多个时间片','时分多路复用分为同步时分多路复用与统计时分多路复用','时分多路复用使用“帧”与数据链路层“帧”的概念、作用是不同的','统计时分多路复用将时间片预先分配给各个信道','D',NULL,2,'物理层','2','yzhou117@gmail.com'),(10019,'计算机网络','1000BASE-T标准支持的传输介质是（）','双绞线','同轴电缆','光纤','无线电','A',NULL,2,'物理层','1','yzhou117@gmail.com'),(10020,'计算机网络','一个以太网交换机，读取整个数据帧，对数据帧进行差错校验后再转发出去，这种交换方式称为 （）','直通交换','无碎片交换','无差错交换','存储转发交换','D',NULL,2,'数据链路层','2','yzhou117@gmail.com'),(10021,'计算机网络','关于VLAN，下面的描述中正确的是（）','一个新的交换机没有配置VLAN','通过配置VLAN减少了冲突域的数量','一个VLAN不能跨越多个交换机','各个VLAN属于不同的广播域','D',NULL,2,'数据链路层','2','yzhou116@gmail.com'),(10022,'计算机网络','以太网协议中使用物理地址作用是什么？','.用于不同子网中的主机进行通信','作为第二层设备的唯一标识','用于区别第二层第三层的协议数据单元','保存主机可检测未知的远程设备','B',NULL,2,'数据链路层','2','yzhou116@gmail.com'),(10023,'计算机网络','以太网采用的CSMA/CD协议，当冲突发生时要通过二进制指数后退算法计算后退延时， 关于这个算法，以下论述中错误的是 （）','冲突次数越多，后退的时间越短','平均后退次数的多少与负载大小有关','后退时延的平均值与负载大小有关','重发次数达到一定极限后放弃发送','A',NULL,2,'数据链路层','3','yzhou116@gmail.com'),(10024,'计算机网络','以下关于交换机获取与其端口连接设备的MAC地址的叙述中，正确的是（）','交换机从路由表中提取设备的MAC地址','交换机检查端口流入分组的源地址','交换机之间互相交换地址表','网络管理员手工输入设备的MAC地址','B',NULL,2,'数据链路层','2','yzhou117@gmail.com'),(10025,'计算机网络','如果G (x）为11010010，以下4个CRC校验比特序列中只有哪个可能是正确的 ？','1101011001','101011011','11011011','1011001','B',NULL,2,'数据链路层','1','yzhou117@gmail.com'),(10026,'计算机网络','以下关于Ethernet物理地址的描述中，错误的是','Ethernet物理地址又叫做MAC地址','48位的Ethernet物理地址允许分配的地址数达到247个','网卡的物理地址写入主机的EPROM中','每一块网卡的物理地址在全世界是唯一的','C',NULL,2,'数据链路层','3','yzhou117@gmail.com'),(10027,'计算机网络','下列帧类型中，不属于HDLC帧类型的是（）','信息帧','确认帧','监控帧','无编号帧','B',NULL,2,'数据链路层','1','yzhou117@gmail.com'),(10028,'计算机网络','通过交换机连接的一组站点，关于它们的广播域和冲突域说法正确的是（）','组成一个冲突域，但不是一个广播域','组成一个广播域，但不是一个冲突域','组成一个冲突域，也是一个广播域','既不一个冲突域，也不是一个广播域','B',NULL,2,'数据链路层','3','yzhou116@gmail.com'),(10029,'计算机网络','数据链路层的数据单位是（）','帧','字节','比特','分组','A',NULL,2,'数据链路层','1','yzhou116@gmail.com'),(10030,'计算机网络','LAN参考模型可分为物理层、（ ）','MAC，LLC等三层','LLC，MHS等三层','MAC，FTAM等三层','LLC，VT等三层','A',NULL,2,'数据链路层','3','yzhou116@gmail.com'),(10031,'测试','测试','A','B','C','D','B','解析',2,'测试','4','yzhou116@gmail.com'),(10032,'计算机网络','DNS 服务器和DHCP服务器的作用是（）','A','B','C','D','B','哦解析',2,'网络层','2','yzhou116@gmail.com'),(10033,'YiZhouTest','What is my name','kuang','john','wong','yi','','',2,'','',NULL),(10034,'YiZhouTest','What is my id','112','113','114',NULL,NULL,NULL,2,NULL,NULL,NULL),(10035,'YiZhouTest','Who is the best person','Me','You','Him','Her','A','',2,'','1',NULL);
/*!40000 ALTER TABLE `multi_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paper_manage`
--

DROP TABLE IF EXISTS `paper_manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paper_manage` (
  `paperId` int DEFAULT NULL COMMENT '试卷编号',
  `questionType` int DEFAULT NULL COMMENT '题目类型',
  `questionId` int DEFAULT NULL COMMENT '题目编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='试卷管理表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paper_manage`
--

LOCK TABLES `paper_manage` WRITE;
/*!40000 ALTER TABLE `paper_manage` DISABLE KEYS */;
INSERT INTO `paper_manage` VALUES (1001,1,10013),(1001,1,10005),(1001,1,10001),(1001,1,10004),(1001,1,10000),(1001,1,10016),(1001,1,10032),(1001,1,10025),(1001,1,10030),(1001,1,10017),(1001,1,10027),(1001,1,10023),(1001,1,10014),(1001,1,10009),(1001,1,10008),(1001,1,10011),(1001,1,10010),(1001,1,10021),(1001,1,10022),(1001,1,10026),(1001,2,10017),(1001,2,10012),(1001,2,10004),(1001,2,10005),(1001,2,10003),(1001,2,10008),(1001,2,10020),(1001,2,10013),(1001,2,10006),(1001,2,10015),(1001,3,10002),(1001,3,10009),(1001,3,10003),(1001,3,10005),(1001,3,10004),(1001,3,10012),(1001,3,10011),(1001,3,10006),(1001,3,10008),(1001,3,10001),(1010,1,10033),(1010,1,10034),(1010,2,10029),(1010,3,10013),(1010,1,10035),(1010,3,10014);
/*!40000 ALTER TABLE `paper_manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replay`
--

DROP TABLE IF EXISTS `replay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replay` (
  `messageId` int DEFAULT NULL COMMENT '留言编号',
  `replayId` int NOT NULL AUTO_INCREMENT COMMENT '回复编号',
  `replay` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `replayTime` date DEFAULT NULL COMMENT '回复时间',
  PRIMARY KEY (`replayId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='回复表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replay`
--

LOCK TABLES `replay` WRITE;
/*!40000 ALTER TABLE `replay` DISABLE KEYS */;
INSERT INTO `replay` VALUES (26,3,'好呀，我来了，你别跑！','2019-03-18'),(22,4,'心疼你2秒钟','2019-03-18'),(25,5,'我也要变强','2019-03-19'),(25,6,'俺也一样','2019-03-19'),(21,7,'既然这样，那就迎男而上吧','2019-03-19'),(16,8,'那条街确实没什么东西可以吃了。。。','2019-03-19'),(15,9,'咸鱼其实还可以吃，而你,emmmm','2019-03-19'),(21,11,'我不怕人多','2019-03-19'),(20,12,'是嘞，还行。','2019-03-19'),(26,13,'我也爱你ε=(´ο｀*)))唉','2019-03-19'),(27,14,'你这个坏孩子','2019-03-31'),(33,18,'是的，今天是周一。','2019-04-14'),(34,19,'1111','2019-04-16'),(34,20,'2222','2019-04-16'),(35,21,'666','2019-09-05');
/*!40000 ALTER TABLE `replay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score` (
  `scoreId` int NOT NULL AUTO_INCREMENT COMMENT '分数编号',
  `examCode` int DEFAULT NULL COMMENT '考试编号',
  `studentId` int DEFAULT NULL COMMENT '学号',
  `subject` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '课程名称',
  `ptScore` int DEFAULT NULL COMMENT '平时成绩',
  `etScore` int DEFAULT NULL COMMENT '期末成绩',
  `score` int DEFAULT NULL COMMENT '总成绩',
  `answerDate` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '答题日期',
  PRIMARY KEY (`scoreId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='成绩管理表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (4,20190001,20154084,'计算机网络',NULL,70,NULL,'2019-04-03'),(14,20190002,20154084,'数据库理论',NULL,78,NULL,'2019-04-20'),(15,20190002,20154084,'数据库理论',NULL,80,NULL,'2019-04-20'),(16,20190002,20154084,'数据库理论',NULL,83,NULL,'2019-04-20'),(17,20190001,20154001,'计算机网络',NULL,74,NULL,'2019-04-13'),(18,20190001,20154001,'计算机网络',NULL,70,NULL,'2019-04-10'),(19,20190001,20155003,'计算机网络',NULL,86,NULL,'2019-04-14'),(20,20190001,20155007,'计算机网络',NULL,90,NULL,'2019-04-11'),(21,20190001,20155007,'计算机网络',NULL,92,NULL,'2019-04-12'),(22,20190001,20155008,'计算机网络',NULL,80,NULL,'2019-04-12'),(23,20190001,20155003,'计算机网络',NULL,90,NULL,'2019-04-13'),(24,20190001,20155008,'计算机网络',NULL,88,NULL,'2019-04-14'),(27,20190001,20154084,'计算机网络',NULL,80,NULL,'2019-04-25'),(30,20190001,20154084,'计算机网络',NULL,0,NULL,'2019-04-29'),(31,20190001,20154084,'计算机网络',NULL,0,NULL,'2019-09-06'),(32,20190001,20154084,'计算机网络',NULL,2,NULL,'2022-12-19'),(33,20190003,20154084,'数据结构',NULL,0,NULL,'2022-12-19'),(34,20190014,20154084,'YiZhouTest',NULL,0,NULL,'2022-12-19'),(35,20190001,20155008,'计算机网络',NULL,4,NULL,'2023-01-09'),(36,20190001,20155008,'计算机网络',NULL,4,NULL,'2023-01-09'),(37,20190001,20155008,'计算机网络',NULL,4,NULL,'2023-01-09');
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `studentId` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `studentName` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `grade` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '年级',
  `major` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '专业',
  `clazz` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '班级',
  `institute` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '学院',
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '电话号码',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '电子邮件',
  `pwd` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `cardId` varchar(18) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '身份证号',
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `role` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '2' COMMENT '角色(0管理员，1教师，2学生)',
  PRIMARY KEY (`studentId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20155009 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='学生信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (20154001,'yzhou117@gmail.com','隔壁老王','2015','计算机科学与技术','2','软件工程学院','13585439532','gblw@163.com','123456','3412312','男','2'),(20154084,'yzhou116@gmail.com','大咸鱼','2015','计算机科学与技术','2','软件工程学院','13658377857','13658377857@sina.cn','$2a$10$X9T86E2FhUsRlffv/Co./uTAtFaZVssxUOBr9bsCT698tyDwtUP/C','124123124535','男','2'),(20155003,'yzhou118@gmail.com','张大宝','2015','信息工程','1','软件工程学院','15583829425','15583829425@163.com','123456','3242342','男','2'),(20155007,'yzhou119@gmail.com','翠花','2015','网络工程','1','软件工程学院','18734538457','18734538457@163.com','123456','2423423','女','2'),(20155008,'yzhou120@gmail.com','小王','2015','信息工程','2','软件工程学院','15523619564','15523619564@163.com','$2a$10$ZmebOefQhitK.pwgeR8C/OvqDgfPxFD6XfF26ypav7.nTJz5xe6rC','500234199704022353','男','2');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teacherId` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `teacherName` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `institute` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '学院',
  `sex` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '电话号码',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `pwd` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `cardId` varchar(18) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '身份证号',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '职称',
  `role` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '角色（0管理员，1教师，2学生）',
  PRIMARY KEY (`teacherId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20081004 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='教师信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (20081001,'yzhou116@gmail.com','张','软件工程学院','男','13598458442','13598458442@163.com','$2a$10$ozHTsgz3TOQke1kJeVl6S.zqPxZIU478I9Ul9Vbthl/rm8Pvg.Klm','423423283498','讲师','1'),(20081002,'yzhou117@gmail.com','王大志','软件工程学院','男','1231221312','1231221312@163.com','$2a$10$QkUelr8RRLGdqPaQ0vOKN.Shj/qhloTsALBdIqOdhlXTrzI4byUAq','24241234','讲师','1'),(20081003,NULL,'Tom','Seneca','Mal','6478878878',NULL,'Sd!4888202','None','Teacher','2');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'exam'
--

--
-- Dumping routines for database 'exam'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-19 19:43:40
