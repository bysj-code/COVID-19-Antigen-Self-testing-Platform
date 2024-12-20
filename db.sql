/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xinguankangyuanzc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xinguankangyuanzc` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xinguankangyuanzc`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,3,'收货人1','17703786901','地址1',1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(2,3,'收货人2','17703786902','地址2',1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(3,1,'收货人3','17703786903','地址3',1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(4,3,'收货人4','17703786904','地址4',1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(5,1,'收货人5','17703786905','地址5',1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(6,3,'收货人6','17703786906','地址6',1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(7,2,'收货人7','17703786907','地址7',1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(8,2,'收货人8','17703786908','地址8',1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(9,1,'收货人9','17703786909','地址9',2,'2023-04-17 16:22:52','2023-04-17 17:33:20','2023-04-17 16:22:52'),(10,1,'收货人10','17703786910','地址10',1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(11,2,'收货人11','17703786911','地址11',1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(12,3,'收货人12','17703786912','地址12',1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(13,3,'收货人13','17703786913','地址13',1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(14,3,'收货人14','17703786914','地址14',1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-17 16:22:40'),(2,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-17 16:22:40'),(3,'xinguankangyuan_types','新冠抗原类型',1,'新冠抗原类型1',NULL,NULL,'2023-04-17 16:22:40'),(4,'xinguankangyuan_types','新冠抗原类型',2,'新冠抗原类型2',NULL,NULL,'2023-04-17 16:22:40'),(5,'xinguankangyuan_types','新冠抗原类型',3,'新冠抗原类型3',NULL,NULL,'2023-04-17 16:22:40'),(6,'xinguankangyuan_types','新冠抗原类型',4,'新冠抗原类型4',NULL,NULL,'2023-04-17 16:22:40'),(7,'xinguankangyuan_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-17 16:22:40'),(8,'xinguankangyuan_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-17 16:22:40'),(9,'xinguankangyuan_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-17 16:22:40'),(10,'xinguankangyuan_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-17 16:22:40'),(11,'xinguankangyuan_order_types','订单类型',102,'已退款',NULL,NULL,'2023-04-17 16:22:40'),(12,'xinguankangyuan_order_types','订单类型',103,'已发货',NULL,NULL,'2023-04-17 16:22:40'),(13,'xinguankangyuan_order_types','订单类型',104,'已收货',NULL,NULL,'2023-04-17 16:22:40'),(15,'xinguankangyuan_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-04-17 16:22:40'),(16,'fanghuzhishi_types','知识类型',1,'知识类型1',NULL,NULL,'2023-04-17 16:22:40'),(17,'fanghuzhishi_types','知识类型',2,'知识类型2',NULL,NULL,'2023-04-17 16:22:40'),(18,'fanghuzhishi_types','知识类型',3,'知识类型3',NULL,NULL,'2023-04-17 16:22:40'),(19,'fanghuzhishi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-17 16:22:40'),(20,'fanghuzhishi_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-17 16:22:40'),(21,'fanghuzhishi_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-17 16:22:40'),(22,'jiance_types','检测结果',1,'检测结果1',NULL,NULL,'2023-04-17 16:22:40'),(23,'jiance_types','检测结果',2,'检测结果2',NULL,NULL,'2023-04-17 16:22:40'),(24,'jiance_types','检测结果',3,'检测结果3',NULL,NULL,'2023-04-17 16:22:40'),(25,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-17 16:22:40'),(26,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-17 16:22:40'),(27,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-04-17 16:22:40'),(28,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-17 16:22:40'),(29,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-17 16:22:40'),(30,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-04-17 16:22:40'),(31,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-04-17 16:22:40'),(32,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-17 16:22:40'),(33,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-17 16:22:40');

/*Table structure for table `fanghuzhishi` */

DROP TABLE IF EXISTS `fanghuzhishi`;

CREATE TABLE `fanghuzhishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fanghuzhishi_name` varchar(200) DEFAULT NULL COMMENT '知识标题  Search111 ',
  `fanghuzhishi_types` int(11) DEFAULT NULL COMMENT '知识类型  Search111 ',
  `fanghuzhishi_photo` varchar(200) DEFAULT NULL COMMENT '知识图片',
  `fanghuzhishi_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `fanghuzhishi_clicknum` int(11) DEFAULT NULL COMMENT '点击量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `fanghuzhishi_content` longtext COMMENT '知识详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='防护知识';

/*Data for the table `fanghuzhishi` */

insert  into `fanghuzhishi`(`id`,`fanghuzhishi_name`,`fanghuzhishi_types`,`fanghuzhishi_photo`,`fanghuzhishi_video`,`zan_number`,`cai_number`,`fanghuzhishi_clicknum`,`insert_time`,`fanghuzhishi_content`,`create_time`) values (1,'知识标题1',1,'upload/fanghuzhishi1.jpg','upload/video.mp4',236,395,9,'2023-04-17 16:22:52','知识详情1','2023-04-17 16:22:52'),(2,'知识标题2',2,'upload/fanghuzhishi2.jpg','upload/video.mp4',340,230,398,'2023-04-17 16:22:52','知识详情2','2023-04-17 16:22:52'),(3,'知识标题3',2,'upload/fanghuzhishi3.jpg','upload/video.mp4',129,279,361,'2023-04-17 16:22:52','知识详情3','2023-04-17 16:22:52'),(4,'知识标题4',3,'upload/fanghuzhishi4.jpg','upload/video.mp4',329,477,134,'2023-04-17 16:22:52','知识详情4','2023-04-17 16:22:52'),(5,'知识标题5',1,'upload/fanghuzhishi5.jpg','upload/video.mp4',25,495,189,'2023-04-17 16:22:52','知识详情5','2023-04-17 16:22:52'),(6,'知识标题6',2,'upload/fanghuzhishi6.jpg','upload/video.mp4',313,245,417,'2023-04-17 16:22:52','知识详情6','2023-04-17 16:22:52'),(7,'知识标题7',1,'upload/fanghuzhishi7.jpg','upload/video.mp4',258,233,29,'2023-04-17 16:22:52','知识详情7','2023-04-17 16:22:52'),(8,'知识标题8',3,'upload/fanghuzhishi8.jpg','upload/video.mp4',140,486,247,'2023-04-17 16:22:52','知识详情8','2023-04-17 16:22:52'),(9,'知识标题9',3,'upload/fanghuzhishi9.jpg','upload/video.mp4',178,249,439,'2023-04-17 16:22:52','知识详情9','2023-04-17 16:22:52'),(10,'知识标题10',1,'upload/fanghuzhishi10.jpg','upload/video.mp4',249,190,1,'2023-04-17 16:22:52','知识详情10','2023-04-17 16:22:52'),(11,'知识标题11',2,'upload/fanghuzhishi11.jpg','upload/video.mp4',193,431,178,'2023-04-17 16:22:52','知识详情11','2023-04-17 16:22:52'),(12,'知识标题12',3,'upload/fanghuzhishi12.jpg','upload/video.mp4',189,261,70,'2023-04-17 16:22:52','知识详情12','2023-04-17 16:22:52'),(13,'知识标题13',1,'upload/fanghuzhishi13.jpg','upload/video.mp4',168,38,237,'2023-04-17 16:22:52','知识详情13','2023-04-17 16:22:52'),(14,'知识标题14',1,'upload/fanghuzhishi14.jpg','upload/video.mp4',382,145,248,'2023-04-17 16:22:52','知识详情14','2023-04-17 16:22:52');

/*Table structure for table `fanghuzhishi_collection` */

DROP TABLE IF EXISTS `fanghuzhishi_collection`;

CREATE TABLE `fanghuzhishi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fanghuzhishi_id` int(11) DEFAULT NULL COMMENT '防护知识',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fanghuzhishi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='防护知识收藏';

/*Data for the table `fanghuzhishi_collection` */

insert  into `fanghuzhishi_collection`(`id`,`fanghuzhishi_id`,`yonghu_id`,`fanghuzhishi_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(2,2,3,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(4,4,3,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(5,5,1,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(7,7,3,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(8,8,2,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(9,9,2,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(10,10,3,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(11,11,3,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(12,12,1,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(13,13,3,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(14,14,3,1,'2023-04-17 16:22:52','2023-04-17 16:22:52');

/*Table structure for table `fanghuzhishi_liuyan` */

DROP TABLE IF EXISTS `fanghuzhishi_liuyan`;

CREATE TABLE `fanghuzhishi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fanghuzhishi_id` int(11) DEFAULT NULL COMMENT '防护知识',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fanghuzhishi_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='防护知识留言';

/*Data for the table `fanghuzhishi_liuyan` */

insert  into `fanghuzhishi_liuyan`(`id`,`fanghuzhishi_id`,`yonghu_id`,`fanghuzhishi_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-04-17 16:22:52','回复信息1','2023-04-17 16:22:52','2023-04-17 16:22:52'),(2,2,2,'留言内容2','2023-04-17 16:22:52','回复信息2','2023-04-17 16:22:52','2023-04-17 16:22:52'),(3,3,2,'留言内容3','2023-04-17 16:22:52','回复信息3','2023-04-17 16:22:52','2023-04-17 16:22:52'),(4,4,3,'留言内容4','2023-04-17 16:22:52','回复信息4','2023-04-17 16:22:52','2023-04-17 16:22:52'),(5,5,1,'留言内容5','2023-04-17 16:22:52','回复信息5','2023-04-17 16:22:52','2023-04-17 16:22:52'),(6,6,1,'留言内容6','2023-04-17 16:22:52','回复信息6','2023-04-17 16:22:52','2023-04-17 16:22:52'),(7,7,2,'留言内容7','2023-04-17 16:22:52','回复信息7','2023-04-17 16:22:52','2023-04-17 16:22:52'),(8,8,1,'留言内容8','2023-04-17 16:22:52','回复信息8','2023-04-17 16:22:52','2023-04-17 16:22:52'),(9,9,1,'留言内容9','2023-04-17 16:22:52','回复信息9','2023-04-17 16:22:52','2023-04-17 16:22:52'),(10,10,3,'留言内容10','2023-04-17 16:22:52','回复信息10','2023-04-17 16:22:52','2023-04-17 16:22:52'),(11,11,2,'留言内容11','2023-04-17 16:22:52','回复信息11','2023-04-17 16:22:52','2023-04-17 16:22:52'),(12,12,3,'留言内容12','2023-04-17 16:22:52','回复信息12','2023-04-17 16:22:52','2023-04-17 16:22:52'),(13,13,3,'留言内容13','2023-04-17 16:22:52','回复信息13','2023-04-17 16:22:52','2023-04-17 16:22:52'),(14,14,3,'留言内容14','2023-04-17 16:22:52','回复信息14','2023-04-17 16:22:52','2023-04-17 16:22:52');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',262,1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(2,'帖子标题2',1,NULL,'发布内容2',456,1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(3,'帖子标题3',1,NULL,'发布内容3',98,1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(4,'帖子标题4',1,NULL,'发布内容4',185,1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(5,'帖子标题5',3,NULL,'发布内容5',103,1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(6,'帖子标题6',2,NULL,'发布内容6',301,1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(7,'帖子标题7',2,NULL,'发布内容7',240,1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(8,'帖子标题8',3,NULL,'发布内容8',239,1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(9,'帖子标题9',3,NULL,'发布内容9',483,1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(10,'帖子标题10',1,NULL,'发布内容10',273,1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(11,'帖子标题11',3,NULL,'发布内容11',357,1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(12,'帖子标题12',1,NULL,'发布内容12',424,1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(13,'帖子标题13',2,NULL,'发布内容13',53,1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(14,'帖子标题14',3,NULL,'发布内容14',281,1,'2023-04-17 16:22:52','2023-04-17 16:22:52','2023-04-17 16:22:52'),(15,NULL,1,NULL,'1111111111111111111111111111',14,2,'2023-04-17 17:33:07',NULL,'2023-04-17 17:33:07'),(17,NULL,NULL,1,'2222222222222222',14,2,'2023-04-17 17:36:28',NULL,'2023-04-17 17:36:28');

/*Table structure for table `jiance` */

DROP TABLE IF EXISTS `jiance`;

CREATE TABLE `jiance` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiance_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `jiance_photo` varchar(200) DEFAULT NULL COMMENT '检测图片',
  `jiance_types` int(11) DEFAULT NULL COMMENT '检测结果 Search111',
  `jiance_time` timestamp NULL DEFAULT NULL COMMENT '检测时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `jiance_text` longtext COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='检测记录';

/*Data for the table `jiance` */

insert  into `jiance`(`id`,`yonghu_id`,`jiance_name`,`jiance_photo`,`jiance_types`,`jiance_time`,`insert_time`,`jiance_text`,`create_time`) values (1,3,'标题1','upload/jiance1.jpg',1,'2023-04-17 16:22:52','2023-04-17 16:22:52','备注1','2023-04-17 16:22:52'),(2,1,'标题2','upload/jiance2.jpg',3,'2023-04-17 16:22:52','2023-04-17 16:22:52','备注2','2023-04-17 16:22:52'),(3,3,'标题3','upload/jiance3.jpg',3,'2023-04-17 16:22:52','2023-04-17 16:22:52','备注3','2023-04-17 16:22:52'),(4,2,'标题4','upload/jiance4.jpg',3,'2023-04-17 16:22:52','2023-04-17 16:22:52','备注4','2023-04-17 16:22:52'),(5,1,'标题5','upload/jiance5.jpg',3,'2023-04-17 16:22:52','2023-04-17 16:22:52','备注5','2023-04-17 16:22:52'),(6,2,'标题6','upload/jiance6.jpg',1,'2023-04-17 16:22:52','2023-04-17 16:22:52','备注6','2023-04-17 16:22:52'),(7,1,'标题7','upload/jiance7.jpg',3,'2023-04-17 16:22:52','2023-04-17 16:22:52','备注7','2023-04-17 16:22:52'),(8,2,'标题8','upload/jiance8.jpg',2,'2023-04-17 16:22:52','2023-04-17 16:22:52','备注8','2023-04-17 16:22:52'),(9,2,'标题9','upload/jiance9.jpg',3,'2023-04-17 16:22:52','2023-04-17 16:22:52','备注9','2023-04-17 16:22:52'),(10,2,'标题10','upload/jiance10.jpg',2,'2023-04-17 16:22:52','2023-04-17 16:22:52','备注10','2023-04-17 16:22:52'),(11,1,'标题11','upload/jiance11.jpg',3,'2023-04-17 16:22:52','2023-04-17 16:22:52','备注11','2023-04-17 16:22:52'),(12,2,'标题12','upload/jiance12.jpg',2,'2023-04-17 16:22:52','2023-04-17 16:22:52','备注12','2023-04-17 16:22:52'),(13,1,'标题13','upload/jiance13.jpg',3,'2023-04-17 16:22:52','2023-04-17 16:22:52','备注13','2023-04-17 16:22:52'),(14,3,'标题14','upload/jiance14.jpg',2,'2023-04-17 16:22:52','2023-04-17 16:22:52','备注14','2023-04-17 16:22:52');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告通知';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'upload/news1.jpg','2023-04-17 16:22:52','公告详情1','2023-04-17 16:22:52'),(2,'公告标题2',1,'upload/news2.jpg','2023-04-17 16:22:52','公告详情2','2023-04-17 16:22:52'),(3,'公告标题3',2,'upload/news3.jpg','2023-04-17 16:22:52','公告详情3','2023-04-17 16:22:52'),(4,'公告标题4',2,'upload/news4.jpg','2023-04-17 16:22:52','公告详情4','2023-04-17 16:22:52'),(5,'公告标题5',1,'upload/news5.jpg','2023-04-17 16:22:52','公告详情5','2023-04-17 16:22:52'),(6,'公告标题6',1,'upload/news6.jpg','2023-04-17 16:22:52','公告详情6','2023-04-17 16:22:52'),(7,'公告标题7',1,'upload/news7.jpg','2023-04-17 16:22:52','公告详情7','2023-04-17 16:22:52'),(8,'公告标题8',1,'upload/news8.jpg','2023-04-17 16:22:52','公告详情8','2023-04-17 16:22:52'),(9,'公告标题9',1,'upload/news9.jpg','2023-04-17 16:22:52','公告详情9','2023-04-17 16:22:52'),(10,'公告标题10',1,'upload/news10.jpg','2023-04-17 16:22:52','公告详情10','2023-04-17 16:22:52'),(11,'公告标题11',2,'upload/news11.jpg','2023-04-17 16:22:52','公告详情11','2023-04-17 16:22:52'),(12,'公告标题12',3,'upload/news12.jpg','2023-04-17 16:22:52','公告详情12','2023-04-17 16:22:52'),(13,'公告标题13',3,'upload/news13.jpg','2023-04-17 16:22:52','公告详情13','2023-04-17 16:22:52'),(14,'公告标题14',3,'upload/news14.jpg','2023-04-17 16:22:52','公告详情14','2023-04-17 16:22:52');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','pg2rnoi0ldc28c7e91e5arrwnlcfoo0q','2023-04-17 17:03:41','2023-04-17 18:39:43'),(2,1,'a1','yonghu','用户','crdzi6goo621akuqpxic3rqh7mckifht','2023-04-17 17:05:16','2023-04-17 18:30:32');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-17 16:22:39');

/*Table structure for table `xinguankangyuan` */

DROP TABLE IF EXISTS `xinguankangyuan`;

CREATE TABLE `xinguankangyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xinguankangyuan_uuid_number` varchar(200) DEFAULT NULL COMMENT '新冠抗原编号',
  `xinguankangyuan_name` varchar(200) DEFAULT NULL COMMENT '新冠抗原名称  Search111 ',
  `xinguankangyuan_photo` varchar(200) DEFAULT NULL COMMENT '新冠抗原照片',
  `xinguankangyuan_types` int(11) DEFAULT NULL COMMENT '新冠抗原类型 Search111',
  `xinguankangyuan_kucun_number` int(11) DEFAULT NULL COMMENT '新冠抗原库存',
  `xinguankangyuan_old_money` decimal(10,2) DEFAULT NULL COMMENT '新冠抗原原价 ',
  `xinguankangyuan_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `xinguankangyuan_clicknum` int(11) DEFAULT NULL COMMENT '新冠抗原热度',
  `xinguankangyuan_content` longtext COMMENT '新冠抗原介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `xinguankangyuan_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='新冠抗原';

/*Data for the table `xinguankangyuan` */

insert  into `xinguankangyuan`(`id`,`xinguankangyuan_uuid_number`,`xinguankangyuan_name`,`xinguankangyuan_photo`,`xinguankangyuan_types`,`xinguankangyuan_kucun_number`,`xinguankangyuan_old_money`,`xinguankangyuan_new_money`,`xinguankangyuan_clicknum`,`xinguankangyuan_content`,`shangxia_types`,`xinguankangyuan_delete`,`insert_time`,`create_time`) values (1,'1681719772976','新冠抗原名称1','upload/xinguankangyuan1.jpg',2,101,'851.52','206.91',283,'新冠抗原介绍1',1,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(2,'1681719772966','新冠抗原名称2','upload/xinguankangyuan2.jpg',1,102,'810.03','354.85',461,'新冠抗原介绍2',1,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(3,'1681719773057','新冠抗原名称3','upload/xinguankangyuan3.jpg',3,103,'888.22','473.41',62,'新冠抗原介绍3',1,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(4,'1681719772982','新冠抗原名称4','upload/xinguankangyuan4.jpg',4,104,'796.62','353.28',148,'新冠抗原介绍4',1,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(5,'1681719773024','新冠抗原名称5','upload/xinguankangyuan5.jpg',4,105,'760.15','197.95',332,'新冠抗原介绍5',1,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(6,'1681719773023','新冠抗原名称6','upload/xinguankangyuan6.jpg',3,106,'882.28','325.54',356,'新冠抗原介绍6',1,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(7,'1681719773035','新冠抗原名称7','upload/xinguankangyuan7.jpg',4,107,'718.71','418.57',249,'新冠抗原介绍7',1,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(8,'1681719773015','新冠抗原名称8','upload/xinguankangyuan1.jpg',3,108,'733.25','358.49',16,'新冠抗原介绍8',1,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(9,'1681719773024','新冠抗原名称9','upload/xinguankangyuan2.jpg',4,109,'940.85','32.74',299,'新冠抗原介绍9',1,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(10,'1681719773044','新冠抗原名称10','upload/xinguankangyuan3.jpg',2,1010,'777.15','131.38',37,'新冠抗原介绍10',1,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(11,'1681719773033','新冠抗原名称11','upload/xinguankangyuan4.jpg',2,1011,'556.27','378.61',4,'新冠抗原介绍11',1,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(12,'1681719772973','新冠抗原名称12','upload/xinguankangyuan5.jpg',1,1011,'519.63','455.87',164,'新冠抗原介绍12',1,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(13,'1681719773047','新冠抗原名称13','upload/xinguankangyuan6.jpg',2,1013,'519.03','370.23',370,'新冠抗原介绍13',1,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(14,'1681719772970','新冠抗原名称14','upload/xinguankangyuan7.jpg',4,1014,'619.62','370.63',380,'新冠抗原介绍14',2,1,'2023-04-17 16:22:52','2023-04-17 16:22:52');

/*Table structure for table `xinguankangyuan_collection` */

DROP TABLE IF EXISTS `xinguankangyuan_collection`;

CREATE TABLE `xinguankangyuan_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinguankangyuan_id` int(11) DEFAULT NULL COMMENT '新冠抗原',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xinguankangyuan_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='新冠抗原收藏';

/*Data for the table `xinguankangyuan_collection` */

insert  into `xinguankangyuan_collection`(`id`,`xinguankangyuan_id`,`yonghu_id`,`xinguankangyuan_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(2,2,2,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(3,3,3,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(4,4,3,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(5,5,2,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(6,6,3,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(7,7,1,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(8,8,2,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(9,9,2,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(10,10,2,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(11,11,3,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(12,12,3,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(13,13,2,1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(15,14,1,1,'2023-04-17 17:32:18','2023-04-17 17:32:18');

/*Table structure for table `xinguankangyuan_liuyan` */

DROP TABLE IF EXISTS `xinguankangyuan_liuyan`;

CREATE TABLE `xinguankangyuan_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinguankangyuan_id` int(11) DEFAULT NULL COMMENT '新冠抗原',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xinguankangyuan_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='新冠抗原留言';

/*Data for the table `xinguankangyuan_liuyan` */

insert  into `xinguankangyuan_liuyan`(`id`,`xinguankangyuan_id`,`yonghu_id`,`xinguankangyuan_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2023-04-17 16:22:52','回复信息1','2023-04-17 16:22:52','2023-04-17 16:22:52'),(2,2,3,'留言内容2','2023-04-17 16:22:52','回复信息2','2023-04-17 16:22:52','2023-04-17 16:22:52'),(3,3,1,'留言内容3','2023-04-17 16:22:52','回复信息3','2023-04-17 16:22:52','2023-04-17 16:22:52'),(4,4,2,'留言内容4','2023-04-17 16:22:52','回复信息4','2023-04-17 16:22:52','2023-04-17 16:22:52'),(5,5,3,'留言内容5','2023-04-17 16:22:52','回复信息5','2023-04-17 16:22:52','2023-04-17 16:22:52'),(6,6,3,'留言内容6','2023-04-17 16:22:52','回复信息6','2023-04-17 16:22:52','2023-04-17 16:22:52'),(7,7,3,'留言内容7','2023-04-17 16:22:52','回复信息7','2023-04-17 16:22:52','2023-04-17 16:22:52'),(8,8,3,'留言内容8','2023-04-17 16:22:52','回复信息8','2023-04-17 16:22:52','2023-04-17 16:22:52'),(9,9,1,'留言内容9','2023-04-17 16:22:52','回复信息9','2023-04-17 16:22:52','2023-04-17 16:22:52'),(10,10,2,'留言内容10','2023-04-17 16:22:52','回复信息10','2023-04-17 16:22:52','2023-04-17 16:22:52'),(11,11,3,'留言内容11','2023-04-17 16:22:52','回复信息11','2023-04-17 16:22:52','2023-04-17 16:22:52'),(12,12,1,'留言内容12','2023-04-17 16:22:52','回复信息12','2023-04-17 16:22:52','2023-04-17 16:22:52'),(13,13,3,'留言内容13','2023-04-17 16:22:52','回复信息13','2023-04-17 16:22:52','2023-04-17 16:22:52'),(14,14,3,'留言内容14','2023-04-17 16:22:52','回复信息1413','2023-04-17 17:36:59','2023-04-17 16:22:52');

/*Table structure for table `xinguankangyuan_order` */

DROP TABLE IF EXISTS `xinguankangyuan_order`;

CREATE TABLE `xinguankangyuan_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinguankangyuan_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `xinguankangyuan_id` int(11) DEFAULT NULL COMMENT '新冠抗原',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `xinguankangyuan_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `xinguankangyuan_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `xinguankangyuan_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='新冠抗原订单';

/*Data for the table `xinguankangyuan_order` */

insert  into `xinguankangyuan_order`(`id`,`xinguankangyuan_order_uuid_number`,`address_id`,`xinguankangyuan_id`,`yonghu_id`,`buy_number`,`xinguankangyuan_order_true_price`,`xinguankangyuan_order_types`,`xinguankangyuan_order_payment_types`,`insert_time`,`create_time`) values (1,'1681723960746',5,12,1,1,'455.87',104,1,'2023-04-17 17:32:41','2023-04-17 17:32:41');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','用户名称1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','9897.16',1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(2,'a2','123456','用户名称2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','938.29',1,'2023-04-17 16:22:52','2023-04-17 16:22:52'),(3,'a3','123456','用户名称3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','906.42',1,'2023-04-17 16:22:52','2023-04-17 16:22:52');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
