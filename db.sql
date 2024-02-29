/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm4415d
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm4415d` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm4415d`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm4415d/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm4415d/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm4415d/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussershouwupin` */

DROP TABLE IF EXISTS `discussershouwupin`;

CREATE TABLE `discussershouwupin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619150811881 DEFAULT CHARSET=utf8 COMMENT='二手物品评论表';

/*Data for the table `discussershouwupin` */

insert  into `discussershouwupin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-04-23 11:07:08',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussershouwupin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (102,'2021-04-23 11:07:08',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussershouwupin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (103,'2021-04-23 11:07:08',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussershouwupin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (104,'2021-04-23 11:07:08',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussershouwupin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (105,'2021-04-23 11:07:08',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussershouwupin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (106,'2021-04-23 11:07:08',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussershouwupin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619150811880,'2021-04-23 12:06:51',1619150764513,1619150787922,'003','111111111111','');

/*Table structure for table `discussjianzhixinxi` */

DROP TABLE IF EXISTS `discussjianzhixinxi`;

CREATE TABLE `discussjianzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='兼职信息评论表';

/*Data for the table `discussjianzhixinxi` */

insert  into `discussjianzhixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-04-23 11:07:08',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussjianzhixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (92,'2021-04-23 11:07:08',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussjianzhixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (93,'2021-04-23 11:07:08',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussjianzhixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (94,'2021-04-23 11:07:08',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussjianzhixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (95,'2021-04-23 11:07:08',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussjianzhixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (96,'2021-04-23 11:07:08',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `ershouwupin` */

DROP TABLE IF EXISTS `ershouwupin`;

CREATE TABLE `ershouwupin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinfenlei` varchar(200) DEFAULT NULL COMMENT '物品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xinjiuchengdu` varchar(200) DEFAULT NULL COMMENT '新旧程度',
  `yuanjia` int(11) DEFAULT NULL COMMENT '原价',
  `ershoujia` int(11) DEFAULT NULL COMMENT '二手价',
  `shangpinmiaoshu` longtext COMMENT '商品描述',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `maijiashouji` varchar(200) DEFAULT NULL COMMENT '卖家手机',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619150764514 DEFAULT CHARSET=utf8 COMMENT='二手物品';

/*Data for the table `ershouwupin` */

insert  into `ershouwupin`(`id`,`addtime`,`wupinmingcheng`,`wupinfenlei`,`tupian`,`guige`,`xinjiuchengdu`,`yuanjia`,`ershoujia`,`shangpinmiaoshu`,`beizhu`,`maijiazhanghao`,`maijiaxingming`,`maijiashouji`,`clicktime`,`clicknum`,`userid`) values (52,'2021-04-23 11:07:08','物品名称2','物品分类2','http://localhost:8080/ssm4415d/upload/ershouwupin_tupian2.jpg','规格2','新旧程度2',2,2,'商品描述2','备注2','卖家账号2','卖家姓名2','卖家手机2','2021-04-23 11:07:08',2,2);
insert  into `ershouwupin`(`id`,`addtime`,`wupinmingcheng`,`wupinfenlei`,`tupian`,`guige`,`xinjiuchengdu`,`yuanjia`,`ershoujia`,`shangpinmiaoshu`,`beizhu`,`maijiazhanghao`,`maijiaxingming`,`maijiashouji`,`clicktime`,`clicknum`,`userid`) values (53,'2021-04-23 11:07:08','物品名称3','物品分类3','http://localhost:8080/ssm4415d/upload/ershouwupin_tupian3.jpg','规格3','新旧程度3',30,10,'<p>商品描述3</p>','备注3','卖家账号3','卖家姓名3','卖家手机3','2021-04-23 12:11:26',4,3);
insert  into `ershouwupin`(`id`,`addtime`,`wupinmingcheng`,`wupinfenlei`,`tupian`,`guige`,`xinjiuchengdu`,`yuanjia`,`ershoujia`,`shangpinmiaoshu`,`beizhu`,`maijiazhanghao`,`maijiaxingming`,`maijiashouji`,`clicktime`,`clicknum`,`userid`) values (54,'2021-04-23 11:07:08','物品名称4','物品分类4','http://localhost:8080/ssm4415d/upload/ershouwupin_tupian4.jpg','规格4','新旧程度4',4,4,'商品描述4','备注4','卖家账号4','卖家姓名4','卖家手机4','2021-04-23 11:07:08',4,4);
insert  into `ershouwupin`(`id`,`addtime`,`wupinmingcheng`,`wupinfenlei`,`tupian`,`guige`,`xinjiuchengdu`,`yuanjia`,`ershoujia`,`shangpinmiaoshu`,`beizhu`,`maijiazhanghao`,`maijiaxingming`,`maijiashouji`,`clicktime`,`clicknum`,`userid`) values (55,'2021-04-23 11:07:08','物品名称5','物品分类5','http://localhost:8080/ssm4415d/upload/ershouwupin_tupian5.jpg','规格5','新旧程度5',5,5,'商品描述5','备注5','卖家账号5','卖家姓名5','卖家手机5','2021-04-23 11:07:08',5,5);
insert  into `ershouwupin`(`id`,`addtime`,`wupinmingcheng`,`wupinfenlei`,`tupian`,`guige`,`xinjiuchengdu`,`yuanjia`,`ershoujia`,`shangpinmiaoshu`,`beizhu`,`maijiazhanghao`,`maijiaxingming`,`maijiashouji`,`clicktime`,`clicknum`,`userid`) values (56,'2021-04-23 11:07:08','物品名称6','物品分类6','http://localhost:8080/ssm4415d/upload/ershouwupin_tupian6.jpg','规格6','新旧程度6',6,6,'商品描述6','备注6','卖家账号6','卖家姓名6','卖家手机6','2021-04-23 11:07:08',6,6);
insert  into `ershouwupin`(`id`,`addtime`,`wupinmingcheng`,`wupinfenlei`,`tupian`,`guige`,`xinjiuchengdu`,`yuanjia`,`ershoujia`,`shangpinmiaoshu`,`beizhu`,`maijiazhanghao`,`maijiaxingming`,`maijiashouji`,`clicktime`,`clicknum`,`userid`) values (1619150764513,'2021-04-23 12:06:04','鞋子','生活用品类','http://localhost:8080/ssm4415d/upload/1619150733845.jpg','测试','7成新',299,120,'测试11111','支持面交','002','张三','13800123456','2021-04-23 12:07:17',5,1619150703050);

/*Table structure for table `goumaidingdan` */

DROP TABLE IF EXISTS `goumaidingdan`;

CREATE TABLE `goumaidingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinfenlei` varchar(200) DEFAULT NULL COMMENT '物品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xinjiuchengdu` varchar(200) DEFAULT NULL COMMENT '新旧程度',
  `yuanjia` varchar(200) DEFAULT NULL COMMENT '原价',
  `ershoujia` varchar(200) DEFAULT NULL COMMENT '二手价',
  `shangpinmiaoshu` varchar(200) DEFAULT NULL COMMENT '商品描述',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `maijiaxingming` varchar(200) DEFAULT NULL COMMENT '卖家姓名',
  `maijiashouji` varchar(200) DEFAULT NULL COMMENT '卖家手机',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jiaoyifangshi` varchar(200) DEFAULT NULL COMMENT '交易方式',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `jiaoyishijian` datetime DEFAULT NULL COMMENT '交易时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619150835422 DEFAULT CHARSET=utf8 COMMENT='购买订单';

/*Data for the table `goumaidingdan` */

insert  into `goumaidingdan`(`id`,`addtime`,`wupinmingcheng`,`wupinfenlei`,`tupian`,`guige`,`xinjiuchengdu`,`yuanjia`,`ershoujia`,`shangpinmiaoshu`,`beizhu`,`maijiazhanghao`,`maijiaxingming`,`maijiashouji`,`yonghuming`,`xingming`,`shouji`,`jiaoyifangshi`,`dizhi`,`jiaoyishijian`,`sfsh`,`shhf`,`ispay`,`userid`) values (61,'2021-04-23 11:07:08','物品名称1','物品分类1','http://localhost:8080/ssm4415d/upload/goumaidingdan_tupian1.jpg','规格1','新旧程度1','原价1','二手价1','商品描述1','备注1','卖家账号1','卖家姓名1','卖家手机1','用户名1','姓名1','手机1','面对面交易','地址1','2021-04-23 11:07:08','是','','未支付',1);
insert  into `goumaidingdan`(`id`,`addtime`,`wupinmingcheng`,`wupinfenlei`,`tupian`,`guige`,`xinjiuchengdu`,`yuanjia`,`ershoujia`,`shangpinmiaoshu`,`beizhu`,`maijiazhanghao`,`maijiaxingming`,`maijiashouji`,`yonghuming`,`xingming`,`shouji`,`jiaoyifangshi`,`dizhi`,`jiaoyishijian`,`sfsh`,`shhf`,`ispay`,`userid`) values (62,'2021-04-23 11:07:08','物品名称2','物品分类2','http://localhost:8080/ssm4415d/upload/goumaidingdan_tupian2.jpg','规格2','新旧程度2','原价2','二手价2','商品描述2','备注2','卖家账号2','卖家姓名2','卖家手机2','用户名2','姓名2','手机2','面对面交易','地址2','2021-04-23 11:07:08','是','','未支付',2);
insert  into `goumaidingdan`(`id`,`addtime`,`wupinmingcheng`,`wupinfenlei`,`tupian`,`guige`,`xinjiuchengdu`,`yuanjia`,`ershoujia`,`shangpinmiaoshu`,`beizhu`,`maijiazhanghao`,`maijiaxingming`,`maijiashouji`,`yonghuming`,`xingming`,`shouji`,`jiaoyifangshi`,`dizhi`,`jiaoyishijian`,`sfsh`,`shhf`,`ispay`,`userid`) values (63,'2021-04-23 11:07:08','物品名称3','物品分类3','http://localhost:8080/ssm4415d/upload/goumaidingdan_tupian3.jpg','规格3','新旧程度3','原价3','二手价3','商品描述3','备注3','卖家账号3','卖家姓名3','卖家手机3','用户名3','姓名3','手机3','面对面交易','地址3','2021-04-23 11:07:08','是','','未支付',3);
insert  into `goumaidingdan`(`id`,`addtime`,`wupinmingcheng`,`wupinfenlei`,`tupian`,`guige`,`xinjiuchengdu`,`yuanjia`,`ershoujia`,`shangpinmiaoshu`,`beizhu`,`maijiazhanghao`,`maijiaxingming`,`maijiashouji`,`yonghuming`,`xingming`,`shouji`,`jiaoyifangshi`,`dizhi`,`jiaoyishijian`,`sfsh`,`shhf`,`ispay`,`userid`) values (64,'2021-04-23 11:07:08','物品名称4','物品分类4','http://localhost:8080/ssm4415d/upload/goumaidingdan_tupian4.jpg','规格4','新旧程度4','原价4','二手价4','商品描述4','备注4','卖家账号4','卖家姓名4','卖家手机4','用户名4','姓名4','手机4','面对面交易','地址4','2021-04-23 11:07:08','是','','未支付',4);
insert  into `goumaidingdan`(`id`,`addtime`,`wupinmingcheng`,`wupinfenlei`,`tupian`,`guige`,`xinjiuchengdu`,`yuanjia`,`ershoujia`,`shangpinmiaoshu`,`beizhu`,`maijiazhanghao`,`maijiaxingming`,`maijiashouji`,`yonghuming`,`xingming`,`shouji`,`jiaoyifangshi`,`dizhi`,`jiaoyishijian`,`sfsh`,`shhf`,`ispay`,`userid`) values (65,'2021-04-23 11:07:08','物品名称5','物品分类5','http://localhost:8080/ssm4415d/upload/goumaidingdan_tupian5.jpg','规格5','新旧程度5','原价5','二手价5','商品描述5','备注5','卖家账号5','卖家姓名5','卖家手机5','用户名5','姓名5','手机5','面对面交易','地址5','2021-04-23 11:07:08','是','','未支付',5);
insert  into `goumaidingdan`(`id`,`addtime`,`wupinmingcheng`,`wupinfenlei`,`tupian`,`guige`,`xinjiuchengdu`,`yuanjia`,`ershoujia`,`shangpinmiaoshu`,`beizhu`,`maijiazhanghao`,`maijiaxingming`,`maijiashouji`,`yonghuming`,`xingming`,`shouji`,`jiaoyifangshi`,`dizhi`,`jiaoyishijian`,`sfsh`,`shhf`,`ispay`,`userid`) values (1619150835421,'2021-04-23 12:07:14','鞋子','生活用品类','http://localhost:8080/ssm4415d/upload/1619150733845.jpg','测试','7成新','299','120','测试11111','支持面交','002','张三','13800123456','003','李四','13800654321','面对面交易','测试','2021-04-24 13:00:00','是','11','已支付',1619150787922);

/*Table structure for table `jianzhixinxi` */

DROP TABLE IF EXISTS `jianzhixinxi`;

CREATE TABLE `jianzhixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `jianzhididian` varchar(200) DEFAULT NULL COMMENT '兼职地点',
  `zhiweimingcheng` varchar(200) DEFAULT NULL COMMENT '职位名称',
  `zhiweiyaoqiu` longtext COMMENT '职位要求',
  `zhiweixinzi` varchar(200) DEFAULT NULL COMMENT '职位薪资',
  `gongzuoshijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `gongsitupian` varchar(200) DEFAULT NULL COMMENT '公司图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='兼职信息';

/*Data for the table `jianzhixinxi` */

insert  into `jianzhixinxi`(`id`,`addtime`,`gongsimingcheng`,`jianzhididian`,`zhiweimingcheng`,`zhiweiyaoqiu`,`zhiweixinzi`,`gongzuoshijian`,`gongzuodidian`,`lianxifangshi`,`gongsitupian`) values (31,'2021-04-23 11:07:08','公司名称1','校外','职位名称1','111','2300','8:00~11:30,14:00~18:00','工作地点1','联系方式1','http://localhost:8080/ssm4415d/upload/jianzhixinxi_gongsitupian1.jpg');
insert  into `jianzhixinxi`(`id`,`addtime`,`gongsimingcheng`,`jianzhididian`,`zhiweimingcheng`,`zhiweiyaoqiu`,`zhiweixinzi`,`gongzuoshijian`,`gongzuodidian`,`lianxifangshi`,`gongsitupian`) values (32,'2021-04-23 11:07:08','公司名称2','校内','职位名称2','职位要求2','职位薪资2','工作时间2','工作地点2','联系方式2','http://localhost:8080/ssm4415d/upload/jianzhixinxi_gongsitupian2.jpg');
insert  into `jianzhixinxi`(`id`,`addtime`,`gongsimingcheng`,`jianzhididian`,`zhiweimingcheng`,`zhiweiyaoqiu`,`zhiweixinzi`,`gongzuoshijian`,`gongzuodidian`,`lianxifangshi`,`gongsitupian`) values (33,'2021-04-23 11:07:08','公司名称3','校内','职位名称3','职位要求3','职位薪资3','工作时间3','工作地点3','联系方式3','http://localhost:8080/ssm4415d/upload/jianzhixinxi_gongsitupian3.jpg');
insert  into `jianzhixinxi`(`id`,`addtime`,`gongsimingcheng`,`jianzhididian`,`zhiweimingcheng`,`zhiweiyaoqiu`,`zhiweixinzi`,`gongzuoshijian`,`gongzuodidian`,`lianxifangshi`,`gongsitupian`) values (34,'2021-04-23 11:07:08','公司名称4','校内','职位名称4','职位要求4','职位薪资4','工作时间4','工作地点4','联系方式4','http://localhost:8080/ssm4415d/upload/jianzhixinxi_gongsitupian4.jpg');
insert  into `jianzhixinxi`(`id`,`addtime`,`gongsimingcheng`,`jianzhididian`,`zhiweimingcheng`,`zhiweiyaoqiu`,`zhiweixinzi`,`gongzuoshijian`,`gongzuodidian`,`lianxifangshi`,`gongsitupian`) values (35,'2021-04-23 11:07:08','公司名称5','校内','职位名称5','职位要求5','职位薪资5','工作时间5','工作地点5','联系方式5','http://localhost:8080/ssm4415d/upload/jianzhixinxi_gongsitupian5.jpg');

/*Table structure for table `maijiayonghu` */

DROP TABLE IF EXISTS `maijiayonghu`;

CREATE TABLE `maijiayonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiazhanghao` varchar(200) NOT NULL COMMENT '卖家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `maijiaxingming` varchar(200) NOT NULL COMMENT '卖家姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xuexiao` varchar(200) DEFAULT NULL COMMENT '学校',
  `maijiashouji` varchar(200) DEFAULT NULL COMMENT '卖家手机',
  `lianxiyouxiang` varchar(200) DEFAULT NULL COMMENT '联系邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `maijiazhanghao` (`maijiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619150703051 DEFAULT CHARSET=utf8 COMMENT='卖家用户';

/*Data for the table `maijiayonghu` */

insert  into `maijiayonghu`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`xingbie`,`xuehao`,`xuexiao`,`maijiashouji`,`lianxiyouxiang`,`zhaopian`) values (21,'2021-04-23 11:07:08','卖家用户1','123456','卖家姓名1','男','学号1','学校1','13823888881','773890001@qq.com','http://localhost:8080/ssm4415d/upload/maijiayonghu_zhaopian1.jpg');
insert  into `maijiayonghu`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`xingbie`,`xuehao`,`xuexiao`,`maijiashouji`,`lianxiyouxiang`,`zhaopian`) values (22,'2021-04-23 11:07:08','卖家用户2','123456','卖家姓名2','男','学号2','学校2','13823888882','773890002@qq.com','http://localhost:8080/ssm4415d/upload/maijiayonghu_zhaopian2.jpg');
insert  into `maijiayonghu`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`xingbie`,`xuehao`,`xuexiao`,`maijiashouji`,`lianxiyouxiang`,`zhaopian`) values (23,'2021-04-23 11:07:08','卖家用户3','123456','卖家姓名3','男','学号3','学校3','13823888883','773890003@qq.com','http://localhost:8080/ssm4415d/upload/maijiayonghu_zhaopian3.jpg');
insert  into `maijiayonghu`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`xingbie`,`xuehao`,`xuexiao`,`maijiashouji`,`lianxiyouxiang`,`zhaopian`) values (24,'2021-04-23 11:07:08','卖家用户4','123456','卖家姓名4','女','学号4','学校4','13823888884','773890004@qq.com','http://localhost:8080/ssm4415d/upload/maijiayonghu_zhaopian4.jpg');
insert  into `maijiayonghu`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`xingbie`,`xuehao`,`xuexiao`,`maijiashouji`,`lianxiyouxiang`,`zhaopian`) values (25,'2021-04-23 11:07:08','卖家用户5','123456','卖家姓名5','男','学号5','学校5','13823888885','773890005@qq.com','http://localhost:8080/ssm4415d/upload/maijiayonghu_zhaopian5.jpg');
insert  into `maijiayonghu`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`xingbie`,`xuehao`,`xuexiao`,`maijiashouji`,`lianxiyouxiang`,`zhaopian`) values (26,'2021-04-23 11:07:08','卖家用户6','123456','卖家姓名6','男','学号6','学校6','13823888886','773890006@qq.com','http://localhost:8080/ssm4415d/upload/maijiayonghu_zhaopian6.jpg');
insert  into `maijiayonghu`(`id`,`addtime`,`maijiazhanghao`,`mima`,`maijiaxingming`,`xingbie`,`xuehao`,`xuexiao`,`maijiashouji`,`lianxiyouxiang`,`zhaopian`) values (1619150703050,'2021-04-23 12:05:03','002','002','张三','男','20210423','测试','13800123456','123456789@qq.com',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='校园资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-04-23 11:07:08','11','11','http://localhost:8080/ssm4415d/upload/news_picture1.jpg','<p>11</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (82,'2021-04-23 11:07:08','标题2','简介2','http://localhost:8080/ssm4415d/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (83,'2021-04-23 11:07:08','标题3','简介3','http://localhost:8080/ssm4415d/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (84,'2021-04-23 11:07:08','标题4','简介4','http://localhost:8080/ssm4415d/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (85,'2021-04-23 11:07:08','标题5','简介5','http://localhost:8080/ssm4415d/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (86,'2021-04-23 11:07:08','标题6','简介6','http://localhost:8080/ssm4415d/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619150856325 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619150808429,'2021-04-23 12:06:47',1619150787922,1619150764513,'ershouwupin','鞋子','http://localhost:8080/ssm4415d/upload/1619150733845.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1619150556201,'001','maijiayonghu','卖家用户','xhg984ginrrfzf6h6rv4k6u76onbp1ui','2021-04-23 12:02:43','2021-04-23 13:02:43');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1,'abo','users','管理员','hei61o8m1e1mfd9523ojx11wlo8t63x5','2021-04-23 12:03:14','2021-04-23 13:09:27');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1619150703050,'002','maijiayonghu','卖家用户','hsizuh0w4a5jckcazgeg3a89s4d7wc7e','2021-04-23 12:05:10','2021-04-23 13:08:18');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1619150787922,'003','xuesheng','学生','xlpiwj190j7wumafjom1ygl99oclzsby','2021-04-23 12:06:34','2021-04-23 13:06:34');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-23 11:07:08');

/*Table structure for table `wupinfenlei` */

DROP TABLE IF EXISTS `wupinfenlei`;

CREATE TABLE `wupinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinfenlei` varchar(200) DEFAULT NULL COMMENT '物品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619151066366 DEFAULT CHARSET=utf8 COMMENT='物品分类';

/*Data for the table `wupinfenlei` */

insert  into `wupinfenlei`(`id`,`addtime`,`wupinfenlei`) values (41,'2021-04-23 11:07:08','家电类');
insert  into `wupinfenlei`(`id`,`addtime`,`wupinfenlei`) values (42,'2021-04-23 11:07:08','生活用品类');
insert  into `wupinfenlei`(`id`,`addtime`,`wupinfenlei`) values (43,'2021-04-23 11:07:08','学习用品类');
insert  into `wupinfenlei`(`id`,`addtime`,`wupinfenlei`) values (45,'2021-04-23 11:07:08','1');
insert  into `wupinfenlei`(`id`,`addtime`,`wupinfenlei`) values (46,'2021-04-23 11:07:08','物品分类6');
insert  into `wupinfenlei`(`id`,`addtime`,`wupinfenlei`) values (1619151066365,'2021-04-23 12:11:05','测试');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1619150987617 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (12,'2021-04-23 11:07:08','学生2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssm4415d/upload/xuesheng_touxiang2.jpg');
insert  into `xuesheng`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (13,'2021-04-23 11:07:08','学生3','123456','姓名3','女',3,'13823888883','773890003@qq.com','http://localhost:8080/ssm4415d/upload/xuesheng_touxiang3.jpg');
insert  into `xuesheng`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (14,'2021-04-23 11:07:08','学生4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssm4415d/upload/xuesheng_touxiang4.jpg');
insert  into `xuesheng`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (15,'2021-04-23 11:07:08','学生5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssm4415d/upload/xuesheng_touxiang5.jpg');
insert  into `xuesheng`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (16,'2021-04-23 11:07:08','学生6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssm4415d/upload/xuesheng_touxiang6.jpg');
insert  into `xuesheng`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (1619150787922,'2021-04-23 12:06:27','003','003','李四','男',20,'13800654321','987654321@qq.com',NULL);
insert  into `xuesheng`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (1619150987616,'2021-04-23 12:09:47','1','1','1','',NULL,'','','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
