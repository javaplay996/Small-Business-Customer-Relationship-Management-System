/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - kehuguanxi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kehuguanxi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kehuguanxi`;

/*Table structure for table `chanpin` */

DROP TABLE IF EXISTS `chanpin`;

CREATE TABLE `chanpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chanpin_name` varchar(200) DEFAULT NULL COMMENT '产品名称  Search111 ',
  `chanpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '产品编号',
  `chanpin_photo` varchar(200) DEFAULT NULL COMMENT '产品照片',
  `chanpin_danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `chanpin_types` int(11) DEFAULT NULL COMMENT '产品类型 Search111',
  `chanpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '产品原价 ',
  `chanpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `chanpin_cangku` varchar(200) DEFAULT NULL COMMENT '所属仓库 Search111',
  `chanpin_content` longtext COMMENT '产品介绍 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='产品';

/*Data for the table `chanpin` */

insert  into `chanpin`(`id`,`chanpin_name`,`chanpin_uuid_number`,`chanpin_photo`,`chanpin_danwei`,`chanpin_types`,`chanpin_old_money`,`chanpin_new_money`,`chanpin_cangku`,`chanpin_content`,`insert_time`,`create_time`) values (1,'产品名称1','1680933718480','upload/chanpin1.jpg','个',1,'999.65','297.23','所属仓库1','产品介绍1','2023-04-08 14:01:58','2023-04-08 14:01:58'),(2,'产品名称2','1680933718501','upload/chanpin2.jpg','个',3,'683.16','157.06','所属仓库2','产品介绍2','2023-04-08 14:01:58','2023-04-08 14:01:58'),(3,'产品名称3','1680933718564','upload/chanpin3.jpg','个',2,'895.65','104.13','所属仓库3','产品介绍3','2023-04-08 14:01:58','2023-04-08 14:01:58'),(4,'产品名称4','1680933718496','upload/chanpin4.jpg','个',1,'637.44','356.07','所属仓库4','产品介绍4','2023-04-08 14:01:58','2023-04-08 14:01:58'),(5,'产品名称5','1680933718501','upload/chanpin5.jpg','个',4,'678.16','241.35','所属仓库5','产品介绍5','2023-04-08 14:01:58','2023-04-08 14:01:58'),(6,'产品名称6','1680933718493','upload/chanpin6.jpg','个',2,'937.71','85.37','所属仓库6','产品介绍6','2023-04-08 14:01:58','2023-04-08 14:01:58'),(7,'产品名称7','1680933718473','upload/chanpin7.jpg','个',1,'723.11','127.49','所属仓库7','产品介绍7','2023-04-08 14:01:58','2023-04-08 14:01:58'),(8,'产品名称8','1680933718482','upload/chanpin8.jpg','个',3,'881.33','63.84','所属仓库8','产品介绍8','2023-04-08 14:01:58','2023-04-08 14:01:58'),(9,'产品名称9','1680933718567','upload/chanpin9.jpg','个',1,'613.77','106.79','所属仓库9','产品介绍9','2023-04-08 14:01:58','2023-04-08 14:01:58'),(10,'产品名称10','1680933718521','upload/chanpin10.jpg','个',1,'713.19','321.97','所属仓库10','产品介绍10','2023-04-08 14:01:58','2023-04-08 14:01:58'),(11,'产品名称11','1680933718544','upload/chanpin11.jpg','个',1,'614.73','205.85','所属仓库11','产品介绍11','2023-04-08 14:01:58','2023-04-08 14:01:58'),(12,'产品名称12','1680933718558','upload/chanpin12.jpg','个',1,'649.59','80.52','所属仓库12','产品介绍12','2023-04-08 14:01:58','2023-04-08 14:01:58'),(13,'产品名称13','1680933718533','upload/chanpin13.jpg','个',3,'783.57','207.08','所属仓库13','产品介绍13','2023-04-08 14:01:58','2023-04-08 14:01:58'),(14,'产品名称14','1680933718513','upload/chanpin14.jpg','个',3,'874.96','303.84','所属仓库14','产品介绍14','2023-04-08 14:01:58','2023-04-08 14:01:58');

/*Table structure for table `chanpin_dingdan` */

DROP TABLE IF EXISTS `chanpin_dingdan`;

CREATE TABLE `chanpin_dingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `chanpin_id` int(11) DEFAULT NULL COMMENT '产品',
  `kehu_id` int(11) DEFAULT NULL COMMENT '客户',
  `chanpin_dingdan_uuid_number` varchar(200) DEFAULT NULL COMMENT '销售编号  Search111 ',
  `chanpin_dingdan_xiaoshou_types` int(11) DEFAULT NULL COMMENT '销售类型 Search111',
  `chanpin_dingdan_xiaoshoufangshi_types` int(11) DEFAULT NULL COMMENT '销售方式 Search111',
  `chanpin_dingdan_kuaidigongsi` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `chanpin_dingdan_danhao` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `chanpin_dingdan_number` int(11) DEFAULT NULL COMMENT '销售数量 Search111',
  `chanpin_dingdan_jine` decimal(10,2) DEFAULT NULL COMMENT '销售金额',
  `chanpin_dingdan_time` timestamp NULL DEFAULT NULL COMMENT '销售时间',
  `chanpin_dingdan_types` int(11) DEFAULT NULL COMMENT '销售状态 Search111',
  `chanpin_dingdan_content` longtext COMMENT '销售备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='产品订单';

/*Data for the table `chanpin_dingdan` */

insert  into `chanpin_dingdan`(`id`,`yuangong_id`,`chanpin_id`,`kehu_id`,`chanpin_dingdan_uuid_number`,`chanpin_dingdan_xiaoshou_types`,`chanpin_dingdan_xiaoshoufangshi_types`,`chanpin_dingdan_kuaidigongsi`,`chanpin_dingdan_danhao`,`chanpin_dingdan_number`,`chanpin_dingdan_jine`,`chanpin_dingdan_time`,`chanpin_dingdan_types`,`chanpin_dingdan_content`,`insert_time`,`create_time`) values (1,2,1,1,'1680933718536',1,1,'快递公司1','快递单号1',156,'64.49','2023-04-08 14:01:58',1,'销售备注1','2023-04-08 14:01:58','2023-04-08 14:01:58'),(2,2,2,2,'1680933718514',2,2,'快递公司2','快递单号2',499,'221.74','2023-04-08 14:01:58',1,'销售备注2','2023-04-08 14:01:58','2023-04-08 14:01:58'),(3,2,3,3,'1680933718518',2,2,'快递公司3','快递单号3',31,'549.39','2023-04-08 14:01:58',1,'销售备注3','2023-04-08 14:01:58','2023-04-08 14:01:58'),(4,1,4,4,'1680933718540',2,1,'快递公司4','快递单号4',193,'917.84','2023-04-08 14:01:58',1,'销售备注4','2023-04-08 14:01:58','2023-04-08 14:01:58'),(5,1,5,5,'1680933718536',1,1,'快递公司5','快递单号5',122,'516.96','2023-04-08 14:01:58',2,'销售备注5','2023-04-08 14:01:58','2023-04-08 14:01:58'),(6,3,6,6,'1680933718560',2,2,'快递公司6','快递单号6',474,'708.59','2023-04-08 14:01:58',2,'销售备注6','2023-04-08 14:01:58','2023-04-08 14:01:58'),(7,3,7,7,'1680933718523',1,1,'快递公司7','快递单号7',350,'370.98','2023-04-08 14:01:58',2,'销售备注7','2023-04-08 14:01:58','2023-04-08 14:01:58'),(8,1,8,8,'1680933718568',1,1,'快递公司8','快递单号8',364,'212.24','2023-04-08 14:01:58',1,'销售备注8','2023-04-08 14:01:58','2023-04-08 14:01:58'),(9,3,9,9,'1680933718496',1,1,'快递公司9','快递单号9',423,'893.82','2023-04-08 14:01:58',2,'销售备注9','2023-04-08 14:01:58','2023-04-08 14:01:58'),(10,2,10,10,'1680933718504',2,2,'快递公司10','快递单号10',107,'965.20','2023-04-08 14:01:58',1,'销售备注10','2023-04-08 14:01:58','2023-04-08 14:01:58'),(11,2,11,11,'1680933718515',1,1,'快递公司11','快递单号11',37,'336.27','2023-04-08 14:01:58',2,'销售备注11','2023-04-08 14:01:58','2023-04-08 14:01:58'),(12,3,12,12,'1680933718531',2,2,'快递公司12','快递单号12',73,'338.83','2023-04-08 14:01:58',1,'销售备注12','2023-04-08 14:01:58','2023-04-08 14:01:58'),(13,3,13,13,'1680933718540',1,2,'快递公司13','快递单号13',211,'146.54','2023-04-08 14:01:58',2,'销售备注13','2023-04-08 14:01:58','2023-04-08 14:01:58'),(14,2,14,14,'1680933718538',1,2,'快递公司14','快递单号14',472,'653.25','2023-04-08 14:01:58',2,'销售备注14','2023-04-08 14:01:58','2023-04-08 14:01:58'),(15,1,11,3,'1680934937665',2,1,'顺丰快递','534154541',2,'500.00','2023-04-08 14:22:47',2,'<p>更大功夫大师</p>','2023-04-08 14:22:51','2023-04-08 14:22:51');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (3,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-04-08 14:01:25'),(4,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-04-08 14:01:25'),(5,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-08 14:01:25'),(6,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-08 14:01:25'),(7,'diqu_types','地区',1,'地区1',NULL,NULL,'2023-04-08 14:01:25'),(8,'diqu_types','地区',2,'地区2',NULL,NULL,'2023-04-08 14:01:25'),(9,'hangye_types','行业',1,'行业1',NULL,NULL,'2023-04-08 14:01:25'),(10,'hangye_types','行业',2,'行业2',NULL,NULL,'2023-04-08 14:01:25'),(11,'zhiwei_types','职位',1,'普通职员',NULL,NULL,'2023-04-08 14:01:25'),(12,'zhiwei_types','职位',2,'组长',NULL,NULL,'2023-04-08 14:01:25'),(13,'chanpin_types','产品类型',1,'产品类型1',NULL,NULL,'2023-04-08 14:01:25'),(14,'chanpin_types','产品类型',2,'产品类型2',NULL,NULL,'2023-04-08 14:01:25'),(15,'chanpin_types','产品类型',3,'产品类型3',NULL,NULL,'2023-04-08 14:01:25'),(16,'chanpin_types','产品类型',4,'产品类型4',NULL,NULL,'2023-04-08 14:01:25'),(17,'chanpin_dingdan_xiaoshoufangshi_types','销售方式',1,'线上快递',NULL,NULL,'2023-04-08 14:01:25'),(18,'chanpin_dingdan_xiaoshoufangshi_types','销售方式',2,'线下提货',NULL,NULL,'2023-04-08 14:01:25'),(19,'chanpin_dingdan_types','销售状态',1,'已销售',NULL,NULL,'2023-04-08 14:01:25'),(20,'chanpin_dingdan_types','销售状态',2,'已签收',NULL,NULL,'2023-04-08 14:01:25'),(21,'chanpin_dingdan_xiaoshou_types','销售类型',1,'回购',NULL,NULL,'2023-04-08 14:01:25'),(22,'chanpin_dingdan_xiaoshou_types','销售类型',2,'第一次购买',NULL,NULL,'2023-04-08 14:01:25'),(23,'kehu_zoufang_types','客户走访类型',1,'客户走访类型1',NULL,NULL,'2023-04-08 14:01:25'),(24,'kehu_zoufang_types','客户走访类型',2,'客户走访类型2',NULL,NULL,'2023-04-08 14:01:25'),(25,'kehu_zoufang_types','客户走访类型',3,'客户走访类型3',NULL,NULL,'2023-04-08 14:01:25'),(26,'kehu_zoufang_types','客户走访类型',4,'客户走访类型4',NULL,NULL,'2023-04-08 14:01:25'),(27,'kehu_fankui_types','客户反馈类型',1,'客户反馈类型1',NULL,NULL,'2023-04-08 14:01:25'),(28,'kehu_fankui_types','客户反馈类型',2,'客户反馈类型2',NULL,NULL,'2023-04-08 14:01:25'),(29,'kehu_fankui_types','客户反馈类型',3,'客户反馈类型3',NULL,NULL,'2023-04-08 14:01:25'),(30,'kehu_fankui_types','客户反馈类型',4,'客户反馈类型4',NULL,NULL,'2023-04-08 14:01:25'),(31,'kehu_fankuizhuangtai_types','反馈状态',1,'未解决',NULL,NULL,'2023-04-08 14:01:25'),(32,'kehu_fankuizhuangtai_types','反馈状态',2,'已解决',NULL,NULL,'2023-04-08 14:01:25'),(33,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-08 14:01:25'),(34,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-08 14:01:25'),(35,'kehu_zoufang_types','客户走访类型',5,'客户走访类型5',NULL,'','2023-04-08 14:17:51');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `gonggao_time` timestamp NULL DEFAULT NULL COMMENT '公告执行时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_file`,`gonggao_types`,`gonggao_time`,`gonggao_content`,`insert_time`,`create_time`) values (1,'公告名称1','upload/file.rar',1,'2023-04-08 14:01:58','公告详情1','2023-04-08 14:01:58','2023-04-08 14:01:58'),(2,'公告名称2','upload/file.rar',1,'2023-04-08 14:01:58','公告详情2','2023-04-08 14:01:58','2023-04-08 14:01:58'),(3,'公告名称3','upload/file.rar',1,'2023-04-08 14:01:58','公告详情3','2023-04-08 14:01:58','2023-04-08 14:01:58'),(4,'公告名称4','upload/file.rar',2,'2023-04-08 14:01:58','公告详情4','2023-04-08 14:01:58','2023-04-08 14:01:58'),(5,'公告名称5','upload/file.rar',1,'2023-04-08 14:01:58','公告详情5','2023-04-08 14:01:58','2023-04-08 14:01:58'),(6,'公告名称6','upload/file.rar',2,'2023-04-08 14:01:58','公告详情6','2023-04-08 14:01:58','2023-04-08 14:01:58'),(7,'公告名称7','upload/file.rar',1,'2023-04-08 14:01:58','公告详情7','2023-04-08 14:01:58','2023-04-08 14:01:58'),(8,'公告名称8','upload/file.rar',1,'2023-04-08 14:01:58','公告详情8','2023-04-08 14:01:58','2023-04-08 14:01:58'),(9,'公告名称9','upload/file.rar',1,'2023-04-08 14:01:58','公告详情9','2023-04-08 14:01:58','2023-04-08 14:01:58'),(10,'公告名称10','upload/file.rar',1,'2023-04-08 14:01:58','公告详情10','2023-04-08 14:01:58','2023-04-08 14:01:58'),(11,'公告名称11','upload/file.rar',2,'2023-04-08 14:01:58','公告详情11','2023-04-08 14:01:58','2023-04-08 14:01:58'),(12,'公告名称12','upload/file.rar',1,'2023-04-08 14:01:58','公告详情12','2023-04-08 14:01:58','2023-04-08 14:01:58'),(13,'公告名称13','upload/file.rar',2,'2023-04-08 14:01:58','公告详情13','2023-04-08 14:01:58','2023-04-08 14:01:58'),(14,'公告名称14','upload/file.rar',1,'2023-04-08 14:01:58','公告详情14','2023-04-08 14:01:58','2023-04-08 14:01:58'),(15,'公告12111','/upload/1680934698791.doc',2,'2023-04-08 14:18:23','<p>更汗的是是广东省格式的</p>','2023-04-08 14:18:25','2023-04-08 14:18:25');

/*Table structure for table `kehu` */

DROP TABLE IF EXISTS `kehu`;

CREATE TABLE `kehu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `kehu_uuid_number` varchar(200) DEFAULT NULL COMMENT '客户编号 Search111 ',
  `kehu_name` varchar(200) DEFAULT NULL COMMENT '客户姓名 Search111 ',
  `kehu_phone` varchar(200) DEFAULT NULL COMMENT '客户手机号',
  `kehu_id_number` varchar(200) DEFAULT NULL COMMENT '客户身份证号',
  `kehu_photo` varchar(200) DEFAULT NULL COMMENT '客户照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `kehu_email` varchar(200) DEFAULT NULL COMMENT '客户邮箱',
  `kehu_address` varchar(200) DEFAULT NULL COMMENT '住址',
  `hangye_types` int(11) DEFAULT NULL COMMENT '行业 Search111 ',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '职位 Search111 ',
  `diqu_types` int(11) DEFAULT NULL COMMENT '地区 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='客户';

/*Data for the table `kehu` */

insert  into `kehu`(`id`,`yuangong_id`,`kehu_uuid_number`,`kehu_name`,`kehu_phone`,`kehu_id_number`,`kehu_photo`,`sex_types`,`kehu_email`,`kehu_address`,`hangye_types`,`zhiwei_types`,`diqu_types`,`create_time`) values (1,2,'1680933718496','客户姓名1','17703786901','410224199010102001','upload/kehu1.jpg',2,'1@qq.com','住址1',1,2,2,'2023-04-08 14:01:58'),(2,2,'1680933718538','客户姓名2','17703786902','410224199010102002','upload/kehu2.jpg',1,'2@qq.com','住址2',1,1,2,'2023-04-08 14:01:58'),(3,1,'1680933718527','客户姓名3','17703786903','410224199010102003','upload/kehu3.jpg',2,'3@qq.com','住址3',2,1,2,'2023-04-08 14:01:58'),(4,2,'1680933718539','客户姓名4','17703786904','410224199010102004','upload/kehu4.jpg',1,'4@qq.com','住址4',2,1,2,'2023-04-08 14:01:58'),(5,3,'1680933718509','客户姓名5','17703786905','410224199010102005','upload/kehu5.jpg',1,'5@qq.com','住址5',2,1,2,'2023-04-08 14:01:58'),(6,3,'1680933718577','客户姓名6','17703786906','410224199010102006','upload/kehu6.jpg',1,'6@qq.com','住址6',2,1,1,'2023-04-08 14:01:58'),(7,3,'1680933718553','客户姓名7','17703786907','410224199010102007','upload/kehu7.jpg',2,'7@qq.com','住址7',1,2,2,'2023-04-08 14:01:58'),(8,2,'1680933718504','客户姓名8','17703786908','410224199010102008','upload/kehu8.jpg',1,'8@qq.com','住址8',2,2,2,'2023-04-08 14:01:58'),(9,2,'1680933718497','客户姓名9','17703786909','410224199010102009','upload/kehu9.jpg',1,'9@qq.com','住址9',1,1,1,'2023-04-08 14:01:58'),(10,1,'1680933718570','客户姓名10','17703786910','410224199010102010','upload/kehu10.jpg',2,'10@qq.com','住址10',2,2,1,'2023-04-08 14:01:58'),(11,2,'1680933718566','客户姓名11','17703786911','410224199010102011','upload/kehu11.jpg',1,'11@qq.com','住址11',1,2,2,'2023-04-08 14:01:58'),(12,1,'1680933718569','客户姓名12','17703786912','410224199010102012','upload/kehu12.jpg',1,'12@qq.com','住址12',2,2,1,'2023-04-08 14:01:58'),(13,3,'1680933718565','客户姓名13','17703786913','410224199010102013','upload/kehu13.jpg',2,'13@qq.com','住址13',2,1,2,'2023-04-08 14:01:58'),(14,1,'1680933718548','客户姓名14','17703786914','410224199010102014','upload/kehu14.jpg',2,'14@qq.com','住址14',2,2,1,'2023-04-08 14:01:58'),(15,1,'1680934983047','张三','17788889999','410222199410232222','/upload/1680935016117.jpg',1,'5@qq.com','地址111',1,1,1,'2023-04-08 14:24:12');

/*Table structure for table `kehu_fankui` */

DROP TABLE IF EXISTS `kehu_fankui`;

CREATE TABLE `kehu_fankui` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kehu_id` int(11) DEFAULT NULL COMMENT '客户',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `kehu_fankui_uuid_number` varchar(200) DEFAULT NULL COMMENT '客户反馈编号 Search111 ',
  `kehu_fankui_name` varchar(200) DEFAULT NULL COMMENT '客户反馈标题  Search111 ',
  `kehu_fankui_file` varchar(200) DEFAULT NULL COMMENT '反馈附件',
  `kehu_fankui_types` int(11) DEFAULT NULL COMMENT '客户反馈类型 Search111',
  `fuwu_time` timestamp NULL DEFAULT NULL COMMENT '客户反馈时间',
  `kehu_fankui_content` text COMMENT '客户反馈内容',
  `kehu_fankuizhuangtai_types` int(11) DEFAULT NULL COMMENT '反馈状态 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='反馈建议';

/*Data for the table `kehu_fankui` */

insert  into `kehu_fankui`(`id`,`kehu_id`,`yuangong_id`,`kehu_fankui_uuid_number`,`kehu_fankui_name`,`kehu_fankui_file`,`kehu_fankui_types`,`fuwu_time`,`kehu_fankui_content`,`kehu_fankuizhuangtai_types`,`insert_time`,`create_time`) values (1,1,2,'1680933718562','客户反馈标题1','upload/file.rar',4,'2023-04-08 14:01:58','客户反馈内容1',1,'2023-04-08 14:01:58','2023-04-08 14:01:58'),(2,2,2,'1680933718516','客户反馈标题2','upload/file.rar',4,'2023-04-08 14:01:58','客户反馈内容2',1,'2023-04-08 14:01:58','2023-04-08 14:01:58'),(3,3,2,'1680933718497','客户反馈标题3','upload/file.rar',4,'2023-04-08 14:01:58','客户反馈内容3',2,'2023-04-08 14:01:58','2023-04-08 14:01:58'),(4,4,2,'1680933718519','客户反馈标题4','upload/file.rar',1,'2023-04-08 14:01:58','客户反馈内容4',2,'2023-04-08 14:01:58','2023-04-08 14:01:58'),(5,5,2,'1680933718563','客户反馈标题5','upload/file.rar',4,'2023-04-08 14:01:58','客户反馈内容5',1,'2023-04-08 14:01:58','2023-04-08 14:01:58'),(6,6,1,'1680933718542','客户反馈标题6','upload/file.rar',1,'2023-04-08 14:01:58','客户反馈内容6',2,'2023-04-08 14:01:58','2023-04-08 14:01:58'),(7,7,1,'1680933718486','客户反馈标题7','upload/file.rar',4,'2023-04-08 14:01:58','客户反馈内容7',2,'2023-04-08 14:01:58','2023-04-08 14:01:58'),(8,8,2,'1680933718567','客户反馈标题8','upload/file.rar',4,'2023-04-08 14:01:58','客户反馈内容8',2,'2023-04-08 14:01:58','2023-04-08 14:01:58'),(9,9,1,'1680933718490','客户反馈标题9','upload/file.rar',3,'2023-04-08 14:01:58','客户反馈内容9',1,'2023-04-08 14:01:58','2023-04-08 14:01:58'),(10,10,2,'1680933718558','客户反馈标题10','upload/file.rar',3,'2023-04-08 14:01:58','客户反馈内容10',2,'2023-04-08 14:01:58','2023-04-08 14:01:58'),(11,11,1,'1680933718561','客户反馈标题11','upload/file.rar',2,'2023-04-08 14:01:58','客户反馈内容11',2,'2023-04-08 14:01:58','2023-04-08 14:01:58'),(12,12,3,'1680933718498','客户反馈标题12','upload/file.rar',2,'2023-04-08 14:01:58','客户反馈内容12',2,'2023-04-08 14:01:58','2023-04-08 14:01:58'),(13,13,3,'1680933718526','客户反馈标题13','upload/file.rar',2,'2023-04-08 14:01:58','客户反馈内容13',1,'2023-04-08 14:01:58','2023-04-08 14:01:58'),(14,14,2,'1680933718555','客户反馈标题14','upload/file.rar',2,'2023-04-08 14:01:58','客户反馈内容14',2,'2023-04-08 14:01:58','2023-04-08 14:01:58'),(15,15,1,'1680935057144','反馈1111','/upload/1680935066294.doc',3,'2023-04-08 14:24:29','<p>鬼地方当第三个</p>',2,'2023-04-08 14:24:33','2023-04-08 14:24:33');

/*Table structure for table `kehu_zoufang` */

DROP TABLE IF EXISTS `kehu_zoufang`;

CREATE TABLE `kehu_zoufang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kehu_id` int(11) DEFAULT NULL COMMENT '客户',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '员工',
  `kehu_zoufang_uuid_number` varchar(200) DEFAULT NULL COMMENT '客户走访编号 Search111 ',
  `kehu_zoufang_name` varchar(200) DEFAULT NULL COMMENT '客户走访标题  Search111 ',
  `kehu_zoufang_file` varchar(200) DEFAULT NULL COMMENT '走访附件',
  `kehu_zoufang_types` int(11) DEFAULT NULL COMMENT '客户走访类型 Search111',
  `fuwu_time` timestamp NULL DEFAULT NULL COMMENT '客户走访时间',
  `kehu_zoufang_content` text COMMENT '客户走访内容 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='客户走访';

/*Data for the table `kehu_zoufang` */

insert  into `kehu_zoufang`(`id`,`kehu_id`,`yuangong_id`,`kehu_zoufang_uuid_number`,`kehu_zoufang_name`,`kehu_zoufang_file`,`kehu_zoufang_types`,`fuwu_time`,`kehu_zoufang_content`,`insert_time`,`create_time`) values (1,1,2,'1680933718553','客户走访标题1','upload/file.rar',1,'2023-04-08 14:01:58','客户走访内容1','2023-04-08 14:01:58','2023-04-08 14:01:58'),(2,2,1,'1680933718573','客户走访标题2','upload/file.rar',3,'2023-04-08 14:01:58','客户走访内容2','2023-04-08 14:01:58','2023-04-08 14:01:58'),(3,3,1,'1680933718562','客户走访标题3','upload/file.rar',4,'2023-04-08 14:01:58','客户走访内容3','2023-04-08 14:01:58','2023-04-08 14:01:58'),(4,4,2,'1680933718549','客户走访标题4','upload/file.rar',3,'2023-04-08 14:01:58','客户走访内容4','2023-04-08 14:01:58','2023-04-08 14:01:58'),(5,5,2,'1680933718557','客户走访标题5','upload/file.rar',4,'2023-04-08 14:01:58','客户走访内容5','2023-04-08 14:01:58','2023-04-08 14:01:58'),(6,6,3,'1680933718552','客户走访标题6','upload/file.rar',3,'2023-04-08 14:01:58','客户走访内容6','2023-04-08 14:01:58','2023-04-08 14:01:58'),(7,7,2,'1680933718512','客户走访标题7','upload/file.rar',3,'2023-04-08 14:01:58','客户走访内容7','2023-04-08 14:01:58','2023-04-08 14:01:58'),(8,8,2,'1680933718554','客户走访标题8','upload/file.rar',4,'2023-04-08 14:01:58','客户走访内容8','2023-04-08 14:01:58','2023-04-08 14:01:58'),(9,9,1,'1680933718535','客户走访标题9','upload/file.rar',1,'2023-04-08 14:01:58','客户走访内容9','2023-04-08 14:01:58','2023-04-08 14:01:58'),(10,10,3,'1680933718531','客户走访标题10','upload/file.rar',4,'2023-04-08 14:01:58','客户走访内容10','2023-04-08 14:01:58','2023-04-08 14:01:58'),(11,11,2,'1680933718521','客户走访标题11','upload/file.rar',1,'2023-04-08 14:01:58','客户走访内容11','2023-04-08 14:01:58','2023-04-08 14:01:58'),(12,12,3,'1680933718566','客户走访标题12','upload/file.rar',1,'2023-04-08 14:01:58','客户走访内容12','2023-04-08 14:01:58','2023-04-08 14:01:58'),(13,13,1,'1680933718574','客户走访标题13','upload/file.rar',4,'2023-04-08 14:01:58','客户走访内容13','2023-04-08 14:01:58','2023-04-08 14:01:58'),(14,14,2,'1680933718509','客户走访标题14','upload/file.rar',2,'2023-04-08 14:01:58','客户走访内容14','2023-04-08 14:01:58','2023-04-08 14:01:58'),(15,12,1,'1680935083060','走访111','/upload/1680935090498.doc',5,'2023-04-08 14:24:52','<p>感受到发生大概</p>','2023-04-08 14:24:54','2023-04-08 14:24:54');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','c2lwhkt853gb9mlg0k75gq0buwhfos40','2023-04-08 14:05:20','2023-04-08 15:27:21'),(2,1,'a1','yuangong','员工','ms69ucfwiwkz343efxom57bwnpgqq8dd','2023-04-08 14:21:38','2023-04-08 15:21:39');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-08 14:01:24');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_uuid_number` varchar(200) DEFAULT NULL COMMENT '员工编号 Search111 ',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_uuid_number`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`yuangong_email`,`jinyong_types`,`create_time`) values (1,'a1','123456','1680933718526','员工姓名1','17703786901','410224199010102001','upload/yuangong1.jpg',1,'1@qq.com',1,'2023-04-08 14:01:58'),(2,'a2','123456','1680933718530','员工姓名2','17703786902','410224199010102002','upload/yuangong2.jpg',1,'2@qq.com',1,'2023-04-08 14:01:58'),(3,'a3','123456','1680933718493','员工姓名3','17703786903','410224199010102003','upload/yuangong3.jpg',2,'3@qq.com',2,'2023-04-08 14:01:58');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
