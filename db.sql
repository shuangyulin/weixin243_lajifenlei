/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - lajifenlei
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lajifenlei` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lajifenlei`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='意见反馈';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'123 垃圾搜索不到是什么类型的',NULL,NULL,NULL,1,1,'2022-04-21 13:33:50'),(2,1,'管理后台可以回复',NULL,NULL,NULL,1,1,'2022-04-21 13:34:01');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/lajifenlei/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/lajifenlei/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/lajifenlei/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'lajixinxi_types','垃圾类型',1,'垃圾类型1',NULL,NULL,'2022-04-21 11:13:17'),(2,'lajixinxi_types','垃圾类型',2,'垃圾类型2',NULL,NULL,'2022-04-21 11:13:17'),(3,'lajixinxi_types','垃圾类型',3,'垃圾类型3',NULL,NULL,'2022-04-21 11:13:17'),(4,'huanbaoshipin_types','视频类型',1,'视频类型1',NULL,NULL,'2022-04-21 11:13:17'),(5,'huanbaoshipin_types','视频类型',2,'视频类型2',NULL,NULL,'2022-04-21 11:13:17'),(6,'huanbaoshipin_types','视频类型',3,'视频类型3',NULL,NULL,'2022-04-21 11:13:17'),(7,'news_types','新闻类型',1,'新闻类型1',NULL,NULL,'2022-04-21 11:13:17'),(8,'news_types','新闻类型',2,'新闻类型2',NULL,NULL,'2022-04-21 11:13:17'),(9,'news_types','新闻类型',3,'新闻类型3',NULL,NULL,'2022-04-21 11:13:17'),(10,'sex_types','性别',1,'男',NULL,NULL,'2022-04-21 11:13:17'),(11,'sex_types','性别',2,'女',NULL,NULL,'2022-04-21 11:13:17'),(12,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-21 11:13:17'),(13,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-21 11:13:17'),(14,'examquestion_types','试题类型',1,'单选题',NULL,NULL,'2022-04-21 11:13:17'),(15,'examquestion_types','试题类型',2,'多选题',NULL,NULL,'2022-04-21 11:13:17'),(16,'examquestion_types','试题类型',3,'判断题',NULL,NULL,'2022-04-21 11:13:18'),(17,'examquestion_types','试题类型',4,'填空题',NULL,NULL,'2022-04-21 11:13:18'),(18,'exampaper_types','知识问答试卷状态',1,'启用',NULL,NULL,'2022-04-21 11:13:18'),(19,'exampaper_types','知识问答试卷状态',2,'禁用',NULL,NULL,'2022-04-21 11:13:18'),(20,'chat_types','数据类型',1,'问题',NULL,NULL,'2022-04-21 11:13:18'),(21,'chat_types','数据类型',2,'回复',NULL,NULL,'2022-04-21 11:13:18'),(22,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2022-04-21 11:13:18'),(23,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2022-04-21 11:13:18');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '知识问答试卷名称 Search111',
  `exampaper_date` int(11) NOT NULL COMMENT '测试时长(分钟)',
  `exampaper_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '知识问答试卷总分数',
  `exampaper_types` int(11) NOT NULL DEFAULT '0' COMMENT '知识问答试卷状态 Search111',
  `exampaper_delete` int(255) DEFAULT '0' COMMENT '逻辑删除（0代表未删除 1代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='知识问答试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`exampaper_name`,`exampaper_date`,`exampaper_myscore`,`exampaper_types`,`exampaper_delete`,`create_time`) values (1,'测试知识问答试卷',100,100,1,1,'2022-04-21 11:13:18');

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int(20) NOT NULL COMMENT '所属知识问答试卷id（外键）',
  `examquestion_name` varchar(200) NOT NULL COMMENT '试题名称 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_score` int(20) DEFAULT '0' COMMENT '分值 Search111',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int(20) DEFAULT '0' COMMENT '试题类型',
  `examquestion_sequence` int(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`exampaper_id`,`examquestion_name`,`examquestion_options`,`examquestion_score`,`examquestion_answer`,`examquestion_analysis`,`examquestion_types`,`examquestion_sequence`,`create_time`) values (1,1,'单选题1','[{\"text\":\"答案A\",\"code\":\"A\"},{\"text\":\"答案B\",\"code\":\"B\"},{\"text\":\"正确答案C\",\"code\":\"C\"},{\"text\":\"答案D\",\"code\":\"D\"}]',10,'C','无',1,1,'2022-04-21 11:13:18'),(2,1,'多选题1','[{\"text\":\"答案A\",\"code\":\"A\"},{\"text\":\"正确答案B\",\"code\":\"B\"},{\"text\":\"正确答案C\",\"code\":\"C\"},{\"text\":\"答案D\",\"code\":\"D\"}]',34,'B,C','无',2,2,'2022-04-21 11:13:18'),(3,1,'填空题(正)_____','[]',41,'正','无',4,3,'2022-04-21 11:13:18'),(4,1,'判断题1','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',11,'A','无',3,4,'2022-04-21 11:13:18'),(5,1,'单选题2','[{\"text\":\"答案A\",\"code\":\"A\"},{\"text\":\"正确答案B\",\"code\":\"B\"},{\"text\":\"答案C\",\"code\":\"C\"},{\"text\":\"答案D\",\"code\":\"D\"}]',4,'B','无',1,5,'2022-04-21 11:13:18');

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '测试编号',
  `yonghu_id` int(20) NOT NULL COMMENT '测试用户',
  `exampaper_id` int(20) NOT NULL COMMENT '所属知识问答试卷id（外键）',
  `total_score` int(200) DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '测试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='测试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`examrecord_uuid_number`,`yonghu_id`,`exampaper_id`,`total_score`,`insert_time`,`create_time`) values (1,'1650518008568',1,1,48,'2022-04-21 13:13:29','2022-04-21 13:13:29'),(2,'1650519254090',1,1,48,'2022-04-21 13:34:14','2022-04-21 13:34:14');

/*Table structure for table `examredetails` */

DROP TABLE IF EXISTS `examredetails`;

CREATE TABLE `examredetails` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '知识问答试卷编号',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '用户答案',
  `examredetails_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='答题详情表';

/*Data for the table `examredetails` */

insert  into `examredetails`(`id`,`examredetails_uuid_number`,`yonghu_id`,`examquestion_id`,`examredetails_myanswer`,`examredetails_myscore`,`create_time`) values (1,'1650518008568',1,5,'B',4,'2022-04-21 13:13:35'),(2,'1650518008568',1,4,'B',0,'2022-04-21 13:13:38'),(3,'1650518008568',1,3,'987',0,'2022-04-21 13:13:41'),(4,'1650518008568',1,2,'B,C',34,'2022-04-21 13:13:46'),(5,'1650518008568',1,1,'C',10,'2022-04-21 13:13:48'),(6,'1650519254090',1,5,'B',4,'2022-04-21 13:34:16'),(7,'1650519254090',1,4,'B',0,'2022-04-21 13:34:18'),(8,'1650519254090',1,3,'123',0,'2022-04-21 13:34:20'),(9,'1650519254090',1,2,'B,C',34,'2022-04-21 13:34:24'),(10,'1650519254090',1,1,'C',10,'2022-04-21 13:34:26');

/*Table structure for table `examrewrongquestion` */

DROP TABLE IF EXISTS `examrewrongquestion`;

CREATE TABLE `examrewrongquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `exampaper_id` int(20) NOT NULL COMMENT '知识问答试卷（外键）',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '用户作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='错题表';

/*Data for the table `examrewrongquestion` */

insert  into `examrewrongquestion`(`id`,`yonghu_id`,`exampaper_id`,`examquestion_id`,`examredetails_myanswer`,`insert_time`,`create_time`) values (1,1,1,4,'B','2022-04-21 13:13:38','2022-04-21 13:13:38'),(2,1,1,3,'987','2022-04-21 13:13:41','2022-04-21 13:13:41'),(3,1,1,4,'B','2022-04-21 13:34:18','2022-04-21 13:34:18'),(4,1,1,3,'123','2022-04-21 13:34:20','2022-04-21 13:34:20');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛信息';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',NULL,1,'2022-04-21 11:13:36','2022-04-21 11:13:36','2022-04-21 11:13:36'),(2,'帖子标题2',1,NULL,'发布内容2',NULL,1,'2022-04-21 11:13:36','2022-04-21 11:13:36','2022-04-21 11:13:36'),(3,'帖子标题3',3,NULL,'发布内容3',NULL,1,'2022-04-21 11:13:36','2022-04-21 11:13:36','2022-04-21 11:13:36'),(4,'帖子标题4',1,NULL,'发布内容4',NULL,1,'2022-04-21 11:13:36','2022-04-21 11:13:36','2022-04-21 11:13:36'),(5,'帖子标题5',1,NULL,'发布内容5',NULL,1,'2022-04-21 11:13:36','2022-04-21 11:13:36','2022-04-21 11:13:36'),(6,NULL,NULL,1,'1111',5,2,'2022-04-21 13:24:44',NULL,'2022-04-21 13:24:44'),(7,NULL,1,NULL,'2222222',5,2,'2022-04-21 13:34:09',NULL,'2022-04-21 13:34:09');

/*Table structure for table `huanbaoshipin` */

DROP TABLE IF EXISTS `huanbaoshipin`;

CREATE TABLE `huanbaoshipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanbaoshipin_name` varchar(200) DEFAULT NULL COMMENT '视频标题 Search111',
  `huanbaoshipin_photo` varchar(200) DEFAULT NULL COMMENT '视频封面',
  `huanbaoshipin_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `huanbaoshipin_types` int(11) DEFAULT NULL COMMENT '视频类型 Search111',
  `huanbaoshipin_content` text COMMENT '视频介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='环保视频';

/*Data for the table `huanbaoshipin` */

insert  into `huanbaoshipin`(`id`,`huanbaoshipin_name`,`huanbaoshipin_photo`,`huanbaoshipin_video`,`huanbaoshipin_types`,`huanbaoshipin_content`,`insert_time`,`create_time`) values (1,'视频标题1','http://localhost:8080/lajifenlei/upload/1650513112200.jpeg','http://localhost:8080/lajifenlei/upload/video.mp4',1,'视频介绍1','2022-04-21 11:13:36','2022-04-21 11:13:36'),(2,'视频标题2','http://localhost:8080/lajifenlei/upload/1650513063480.jpeg','http://localhost:8080/lajifenlei/upload/video.mp4',1,'视频介绍2','2022-04-21 11:13:36','2022-04-21 11:13:36'),(3,'视频标题3','http://localhost:8080/lajifenlei/upload/1650513056282.jpeg','http://localhost:8080/lajifenlei/upload/video.mp4',1,'视频介绍3','2022-04-21 11:13:36','2022-04-21 11:13:36'),(4,'视频标题4','http://localhost:8080/lajifenlei/upload/1650513048389.jpeg','http://localhost:8080/lajifenlei/upload/video.mp4',3,'视频介绍4','2022-04-21 11:13:36','2022-04-21 11:13:36'),(5,'视频标题5','http://localhost:8080/lajifenlei/upload/1650513038931.jpeg','http://localhost:8080/lajifenlei/upload/video.mp4',3,'视频介绍5','2022-04-21 11:13:36','2022-04-21 11:13:36');

/*Table structure for table `huanbaozhishi` */

DROP TABLE IF EXISTS `huanbaozhishi`;

CREATE TABLE `huanbaozhishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huanbaozhishi_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `huanbaozhishi_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `huanbaozhishi_content` text COMMENT '内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='环保知识';

/*Data for the table `huanbaozhishi` */

insert  into `huanbaozhishi`(`id`,`huanbaozhishi_name`,`huanbaozhishi_photo`,`huanbaozhishi_content`,`insert_time`,`create_time`) values (1,'标题1','http://localhost:8080/lajifenlei/upload/1650513112200.jpeg','内容1','2022-04-21 11:13:36','2022-04-21 11:13:36'),(2,'标题2','http://localhost:8080/lajifenlei/upload/1650513063480.jpeg','内容2','2022-04-21 11:13:36','2022-04-21 11:13:36'),(3,'标题3','http://localhost:8080/lajifenlei/upload/1650513056282.jpeg','内容3','2022-04-21 11:13:36','2022-04-21 11:13:36'),(4,'标题4','http://localhost:8080/lajifenlei/upload/1650513048389.jpeg','内容4','2022-04-21 11:13:36','2022-04-21 11:13:36'),(5,'标题5','http://localhost:8080/lajifenlei/upload/1650513038931.jpeg','内容5','2022-04-21 11:13:36','2022-04-21 11:13:36');

/*Table structure for table `lajixinxi` */

DROP TABLE IF EXISTS `lajixinxi`;

CREATE TABLE `lajixinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lajixinxi_name` varchar(200) DEFAULT NULL COMMENT '垃圾名称 Search111',
  `lajixinxi_photo` varchar(200) DEFAULT NULL COMMENT '垃圾图片',
  `lajixinxi_types` int(11) DEFAULT NULL COMMENT '垃圾类型 Search111',
  `lajixinxi_content` text COMMENT '垃圾介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='垃圾信息';

/*Data for the table `lajixinxi` */

insert  into `lajixinxi`(`id`,`lajixinxi_name`,`lajixinxi_photo`,`lajixinxi_types`,`lajixinxi_content`,`insert_time`,`create_time`) values (1,'垃圾名称1','http://localhost:8080/lajifenlei/upload/1650513112200.jpeg',1,'<p>垃圾介绍1</p>','2022-04-21 11:13:36','2022-04-21 11:13:36'),(2,'垃圾名称2','http://localhost:8080/lajifenlei/upload/1650513063480.jpeg',1,'<p>垃圾介绍2</p>','2022-04-21 11:13:36','2022-04-21 11:13:36'),(3,'垃圾名称3','http://localhost:8080/lajifenlei/upload/1650513056282.jpeg',2,'<p>垃圾介绍3</p>','2022-04-21 11:13:36','2022-04-21 11:13:36'),(4,'垃圾名称4','http://localhost:8080/lajifenlei/upload/1650513048389.jpeg',3,'<p>垃圾介绍4</p>','2022-04-21 11:13:36','2022-04-21 11:13:36'),(5,'垃圾名称5','http://localhost:8080/lajifenlei/upload/1650513038931.jpeg',2,'<p>垃圾介绍5</p>','2022-04-21 11:13:36','2022-04-21 11:13:36');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='环保新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'新闻标题1',2,'http://localhost:8080/lajifenlei/upload/news1.jpg','2022-04-21 11:13:36','新闻详情1','2022-04-21 11:13:36'),(2,'新闻标题2',2,'http://localhost:8080/lajifenlei/upload/news2.jpg','2022-04-21 11:13:36','新闻详情2','2022-04-21 11:13:36'),(3,'新闻标题3',2,'http://localhost:8080/lajifenlei/upload/news3.jpg','2022-04-21 11:13:36','新闻详情3','2022-04-21 11:13:36'),(4,'新闻标题4',1,'http://localhost:8080/lajifenlei/upload/news4.jpg','2022-04-21 11:13:36','新闻详情4','2022-04-21 11:13:36'),(5,'新闻标题5',3,'http://localhost:8080/lajifenlei/upload/news5.jpg','2022-04-21 11:13:36','新闻详情5','2022-04-21 11:13:36');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','m2yeklgz584euae7rh21g35wtikfxqu0','2022-04-21 11:37:56','2022-04-21 14:24:29'),(2,1,'a1','yonghu','用户','2c5601zb500ztzair0nb5fhum9w18pgr','2022-04-21 11:46:18','2022-04-21 14:32:50');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_email`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/lajifenlei/upload/yonghu1.jpg',2,'17703786901','1@qq.com',1,'2022-04-21 11:13:36','2022-04-21 11:13:36'),(2,'a2','123456','用户姓名2','http://localhost:8080/lajifenlei/upload/yonghu2.jpg',2,'17703786902','2@qq.com',1,'2022-04-21 11:13:36','2022-04-21 11:13:36'),(3,'a3','123456','用户姓名3','http://localhost:8080/lajifenlei/upload/yonghu3.jpg',1,'17703786903','3@qq.com',1,'2022-04-21 13:25:06','2022-04-21 11:13:36');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
