/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50635
 Source Host           : 127.0.0.1
 Source Database       : base2

 Target Server Type    : MySQL
 Target Server Version : 50635
 File Encoding         : utf-8

 Date: 04/23/2018 17:53:47 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `points_actions`
-- ----------------------------
DROP TABLE IF EXISTS `points_actions`;
CREATE TABLE `points_actions` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(10) DEFAULT '0',
  `msg_template` varchar(64) DEFAULT NULL,
  `points` int(11) DEFAULT NULL COMMENT '增加或减少了多少分，通过正负数体现',
  `status` tinyint(4) DEFAULT '0' COMMENT '0：正常，1无效动作',
  `ctime` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `points_mall_exchange`
-- ----------------------------
DROP TABLE IF EXISTS `points_mall_exchange`;
CREATE TABLE `points_mall_exchange` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `goods_id` int(10) unsigned DEFAULT NULL,
  `goods_cat_id` int(10) unsigned DEFAULT NULL,
  `receipt_data` text COMMENT '收货信息',
  `express_data` varchar(512) DEFAULT NULL COMMENT '发货信息',
  `status` tinyint(3) unsigned DEFAULT '1' COMMENT '1、待发货，2、已发货',
  `utime` int(10) unsigned DEFAULT NULL,
  `ctime` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `points_mall_goods`
-- ----------------------------
DROP TABLE IF EXISTS `points_mall_goods`;
CREATE TABLE `points_mall_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `cat_id` int(10) unsigned DEFAULT '0',
  `pic` varchar(255) DEFAULT '' COMMENT '累计得分',
  `points` int(10) unsigned DEFAULT '0' COMMENT '可用积分',
  `num_total` int(10) unsigned DEFAULT '0' COMMENT '总量',
  `num_rest` int(10) unsigned DEFAULT '0',
  `start_time` int(10) unsigned DEFAULT '0',
  `end_time` int(10) unsigned DEFAULT '0',
  `status` tinyint(3) DEFAULT '0' COMMENT '0:上架，1：下架',
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分表';

-- ----------------------------
--  Table structure for `points_mall_goods_category`
-- ----------------------------
DROP TABLE IF EXISTS `points_mall_goods_category`;
CREATE TABLE `points_mall_goods_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT '',
  `status` int(255) DEFAULT '0' COMMENT '0:正常，1：取消',
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分表';

-- ----------------------------
--  Table structure for `points_user`
-- ----------------------------
DROP TABLE IF EXISTS `points_user`;
CREATE TABLE `points_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned DEFAULT NULL,
  `points_total` int(11) DEFAULT '0' COMMENT '累计得分',
  `points_rest` int(10) unsigned DEFAULT NULL COMMENT '可用积分',
  `utime` int(10) unsigned DEFAULT NULL,
  `ctime` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='积分表';

-- ----------------------------
--  Table structure for `points_user_log`
-- ----------------------------
DROP TABLE IF EXISTS `points_user_log`;
CREATE TABLE `points_user_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned DEFAULT '0',
  `action_id` int(10) unsigned DEFAULT NULL,
  `points` int(11) DEFAULT NULL COMMENT '增加或减少了多少分，通过正负数体现',
  `exchange_id` int(11) DEFAULT NULL COMMENT '兑换id',
  `summary` varchar(64) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '0：正常，1过期',
  `ctime` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `method` char(5) DEFAULT NULL,
  `user_age` varchar(255) DEFAULT NULL,
  `parameters` text,
  `admin_id` int(11) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `parent` int(11) DEFAULT '0',
  `permission_id` int(11) DEFAULT '0',
  `sort` tinyint(3) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `permission_key` FOREIGN KEY (`permission_id`) REFERENCES `sys_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型1：菜单，2：按钮',
  `perms` varchar(100) NOT NULL COMMENT '授权标识',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父类ID',
  `data` varchar(255) DEFAULT NULL,
  `sort` tinyint(3) DEFAULT '100' COMMENT '排序',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` text,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `pid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  KEY `FKffh1j3b3gr7dwt7fwesr3uex6` (`rid`),
  KEY `FKbklfx9e7kxlx4yo1vi01rt1n5` (`pid`),
  CONSTRAINT `FKbklfx9e7kxlx4yo1vi01rt1n5` FOREIGN KEY (`pid`) REFERENCES `sys_permission` (`id`),
  CONSTRAINT `FKffh1j3b3gr7dwt7fwesr3uex6` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '1:启用，0:禁用',
  `description` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  KEY `FKid0s4w8sbpgppnfro2ej3oana` (`rid`),
  KEY `FKe5x46iw9uaj34h12wkbvxj7k5` (`uid`),
  CONSTRAINT `FKe5x46iw9uaj34h12wkbvxj7k5` FOREIGN KEY (`uid`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKid0s4w8sbpgppnfro2ej3oana` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wk_user_base`
-- ----------------------------
DROP TABLE IF EXISTS `wk_user_base`;
CREATE TABLE `wk_user_base` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID,由wk_user_uid_generator生成，等于demand_uid和supplier_uid',
  `phone` varchar(16) NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像url/公司log',
  `passwd` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码',
  `category` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户类别 0:未定义 1:雇主 2:服务商(包括公司和团队) 3:经纪人 4:既是雇主也是服务商达人(双角色)',
  `is_guide` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=未新手引导，2=已新手引导',
  `status` enum('N','D') NOT NULL DEFAULT 'N' COMMENT '用户状态：N:正常；D:删除',
  `ctime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '增加时间',
  `utime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `access_token` varchar(32) DEFAULT NULL COMMENT '无密码登录token',
  `utm_source` varchar(50) DEFAULT 'default' COMMENT '注册用户来源，weixin,weibo,default',
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=533 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='帐户基本信息';

SET FOREIGN_KEY_CHECKS = 1;
