/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50037
Source Host           : localhost:3306
Source Database       : hotpot

Target Server Type    : MYSQL
Target Server Version : 50037
File Encoding         : 65001

Date: 2018-10-17 14:46:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hp_customer
-- ----------------------------
DROP TABLE IF EXISTS `hp_customer`;
CREATE TABLE `hp_customer` (
  `cid` int(11) NOT NULL auto_increment,
  `cname` varchar(20) NOT NULL,
  `csex` varchar(10) NOT NULL,
  `cphone` varchar(20) NOT NULL,
  `cintegral` int(10) NOT NULL,
  `cbirthday` varchar(20) NOT NULL,
  `cjoin` varchar(20) NOT NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_customer
-- ----------------------------
INSERT INTO `hp_customer` VALUES ('1', '琴', '女', '13260901111', '10', '1997-01-01', '2018-09-27');
INSERT INTO `hp_customer` VALUES ('2', '棋', '男', '13260901112', '20', '1997-01-02', '2018-09-28');
INSERT INTO `hp_customer` VALUES ('3', '书', '男', '13260901113', '100', '1997-01-03', '2018-09-29');
INSERT INTO `hp_customer` VALUES ('4', '画', '女', '13260901114', '0', '1997-01-04', '2018-10-01');
INSERT INTO `hp_customer` VALUES ('5', '刀', '男', '13260901115', '10', '1997-10-02', '2018-10-08');
INSERT INTO `hp_customer` VALUES ('6', '枪', '男', '13260901116', '10', '1997-10-04', '2018-10-10');
INSERT INTO `hp_customer` VALUES ('7', '剑', '男', '13260901117', '50', '1997-10-05', '2018-10-12');

-- ----------------------------
-- Table structure for hp_desk
-- ----------------------------
DROP TABLE IF EXISTS `hp_desk`;
CREATE TABLE `hp_desk` (
  `did` int(10) NOT NULL auto_increment,
  `dname` varchar(20) NOT NULL,
  `dcount` int(5) NOT NULL,
  `dstate` varchar(20) NOT NULL,
  PRIMARY KEY  (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_desk
-- ----------------------------
INSERT INTO `hp_desk` VALUES ('1', '1号桌', '4', '正在使用');
INSERT INTO `hp_desk` VALUES ('2', '2号桌', '4', '正在使用');
INSERT INTO `hp_desk` VALUES ('3', '3号桌', '4', '正在使用');
INSERT INTO `hp_desk` VALUES ('4', '4号桌', '4', '未使用');
INSERT INTO `hp_desk` VALUES ('5', '5号桌', '4', '未使用');
INSERT INTO `hp_desk` VALUES ('6', '6号桌', '4', '未使用');

-- ----------------------------
-- Table structure for hp_detail
-- ----------------------------
DROP TABLE IF EXISTS `hp_detail`;
CREATE TABLE `hp_detail` (
  `id` int(10) NOT NULL auto_increment,
  `rname` varchar(20) NOT NULL,
  `rno` int(10) NOT NULL,
  `rprice` int(10) NOT NULL,
  `rtotal` int(10) NOT NULL,
  `oid` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_detail
-- ----------------------------
INSERT INTO `hp_detail` VALUES ('88', '毛肚', '1', '30', '30', '76');
INSERT INTO `hp_detail` VALUES ('89', '羊肉', '1', '40', '40', '76');
INSERT INTO `hp_detail` VALUES ('90', '牛肉', '1', '40', '40', '76');
INSERT INTO `hp_detail` VALUES ('91', '生菜', '1', '10', '10', '76');
INSERT INTO `hp_detail` VALUES ('92', '撒尿牛丸', '1', '20', '20', '76');
INSERT INTO `hp_detail` VALUES ('93', '肥牛', '1', '30', '30', '76');
INSERT INTO `hp_detail` VALUES ('94', '面条', '1', '10', '10', '76');
INSERT INTO `hp_detail` VALUES ('95', '美味鸭血', '1', '12', '12', '76');
INSERT INTO `hp_detail` VALUES ('96', '肥牛', '2', '30', '60', '78');
INSERT INTO `hp_detail` VALUES ('97', '粉丝', '2', '10', '20', '78');
INSERT INTO `hp_detail` VALUES ('98', '美味鸭血', '2', '12', '24', '78');
INSERT INTO `hp_detail` VALUES ('99', '毛肚', '1', '30', '30', '79');
INSERT INTO `hp_detail` VALUES ('100', '羊肉', '1', '40', '40', '79');
INSERT INTO `hp_detail` VALUES ('101', '肥牛', '1', '30', '30', '79');
INSERT INTO `hp_detail` VALUES ('102', '毛肚', '1', '30', '30', '80');
INSERT INTO `hp_detail` VALUES ('103', '羊肉', '1', '40', '40', '80');
INSERT INTO `hp_detail` VALUES ('104', '牛肉', '1', '40', '40', '80');
INSERT INTO `hp_detail` VALUES ('105', '干丝', '1', '20', '20', '80');
INSERT INTO `hp_detail` VALUES ('106', '肥牛', '1', '30', '30', '80');
INSERT INTO `hp_detail` VALUES ('107', '羊肉', '1', '40', '40', '81');
INSERT INTO `hp_detail` VALUES ('108', '牛肉', '1', '40', '40', '81');
INSERT INTO `hp_detail` VALUES ('109', '生菜', '1', '10', '10', '81');
INSERT INTO `hp_detail` VALUES ('110', '撒尿牛丸', '1', '20', '20', '81');
INSERT INTO `hp_detail` VALUES ('111', '肥牛', '1', '30', '30', '81');
INSERT INTO `hp_detail` VALUES ('112', '粉丝', '1', '10', '10', '81');
INSERT INTO `hp_detail` VALUES ('113', '毛肚', '2', '30', '60', '82');
INSERT INTO `hp_detail` VALUES ('114', '肥牛', '2', '30', '60', '82');
INSERT INTO `hp_detail` VALUES ('115', '粉丝', '2', '10', '20', '82');
INSERT INTO `hp_detail` VALUES ('116', '面条', '2', '10', '20', '82');
INSERT INTO `hp_detail` VALUES ('117', '汤圆', '1', '20', '20', '82');
INSERT INTO `hp_detail` VALUES ('118', '美味鸭血', '1', '12', '12', '82');

-- ----------------------------
-- Table structure for hp_finance
-- ----------------------------
DROP TABLE IF EXISTS `hp_finance`;
CREATE TABLE `hp_finance` (
  `fid` int(10) NOT NULL auto_increment,
  `ftime` varchar(25) NOT NULL,
  `fincome` int(10) NOT NULL,
  `fexpend` int(10) NOT NULL,
  `fprofit` int(10) NOT NULL,
  `fbalance` int(10) NOT NULL,
  PRIMARY KEY  (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_finance
-- ----------------------------
INSERT INTO `hp_finance` VALUES ('2', '2018/10/15 16:23:23', '0', '550', '-550', '-550');
INSERT INTO `hp_finance` VALUES ('3', '2018/10/16 16:24:12', '0', '350', '-350', '-350');
INSERT INTO `hp_finance` VALUES ('4', '2018/10/16 16:25:34', '0', '450', '-450', '-450');
INSERT INTO `hp_finance` VALUES ('5', '2018/10/16 16:26:24', '119', '0', '119', '119');
INSERT INTO `hp_finance` VALUES ('6', '2018/10/16 16:26:24', '119', '0', '119', '119');
INSERT INTO `hp_finance` VALUES ('7', '2018/10/17 09:46:29', '202', '0', '202', '202');
INSERT INTO `hp_finance` VALUES ('8', '2018/10/17 10:52:12', '0', '550', '-550', '-550');
INSERT INTO `hp_finance` VALUES ('9', '2018/10/17 10:56:27', '0', '440', '-440', '-440');
INSERT INTO `hp_finance` VALUES ('10', '2018/10/17 14:28:33', '202', '0', '202', '202');

-- ----------------------------
-- Table structure for hp_order
-- ----------------------------
DROP TABLE IF EXISTS `hp_order`;
CREATE TABLE `hp_order` (
  `oid` int(5) NOT NULL auto_increment,
  `otime` varchar(20) NOT NULL,
  `did` int(5) NOT NULL,
  `oprice` int(10) NOT NULL,
  `ostate` varchar(10) NOT NULL,
  PRIMARY KEY  (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_order
-- ----------------------------
INSERT INTO `hp_order` VALUES ('76', '2018/10/16 09:46:29', '1', '202', '已付款');
INSERT INTO `hp_order` VALUES ('78', '2018/10/16 16:26:24', '2', '119', '已付款');
INSERT INTO `hp_order` VALUES ('79', '2018/10/16 17:01:56', '3', '110', '未支付');
INSERT INTO `hp_order` VALUES ('80', '2018/10/17 09:02:38', '1', '170', '未支付');
INSERT INTO `hp_order` VALUES ('81', '2018/10/17 09:14:15', '2', '160', '未支付');
INSERT INTO `hp_order` VALUES ('82', '2018/10/17 14:28:33', '4', '202', '已付款');

-- ----------------------------
-- Table structure for hp_recipe
-- ----------------------------
DROP TABLE IF EXISTS `hp_recipe`;
CREATE TABLE `hp_recipe` (
  `rid` int(5) NOT NULL auto_increment,
  `rname` varchar(20) NOT NULL,
  `rsort` varchar(20) NOT NULL,
  `rbid` int(10) NOT NULL,
  `rprice` int(10) NOT NULL,
  `rstock` int(20) NOT NULL,
  `rstate` varchar(20) NOT NULL,
  `rimage` varchar(200) default NULL,
  PRIMARY KEY  (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_recipe
-- ----------------------------
INSERT INTO `hp_recipe` VALUES ('1', '毛肚', '荤菜', '15', '30', '393', '热销', 'h27.jpg');
INSERT INTO `hp_recipe` VALUES ('2', '羊肉', '荤菜', '20', '40', '352', '热销', 'h11.jpg');
INSERT INTO `hp_recipe` VALUES ('3', '牛肉', '荤菜', '20', '40', '343', '热销', 'h17.jpg');
INSERT INTO `hp_recipe` VALUES ('4', '生菜', '素菜', '5', '10', '332', '热销', 'h14.jpg');
INSERT INTO `hp_recipe` VALUES ('5', '撒尿牛丸', '荤菜', '10', '20', '320', '一般', 'h8.jpg');
INSERT INTO `hp_recipe` VALUES ('6', '干丝', '素菜', '10', '20', '260', '一般', 'h32.jpg');
INSERT INTO `hp_recipe` VALUES ('7', '肥牛', '荤菜', '15', '30', '290', '热销', 'h15.jpg');
INSERT INTO `hp_recipe` VALUES ('8', '粉丝', '素菜', '5', '10', '280', '普通', 'h34.jpg');
INSERT INTO `hp_recipe` VALUES ('9', '面条', '素菜', '5', '10', '280', '普通', 'h5.jpg');
INSERT INTO `hp_recipe` VALUES ('10', '汤圆', '荤菜', '10', '20', '280', '热门', 'h33.jpg');
INSERT INTO `hp_recipe` VALUES ('11', '美味鸭血', '素菜', '5', '12', '350', '普通', 'h19.jpg');

-- ----------------------------
-- Table structure for hp_staff
-- ----------------------------
DROP TABLE IF EXISTS `hp_staff`;
CREATE TABLE `hp_staff` (
  `sid` int(5) NOT NULL auto_increment,
  `sname` varchar(20) NOT NULL,
  `ssex` varchar(5) NOT NULL,
  `sphone` int(20) NOT NULL,
  `sposition` varchar(20) NOT NULL,
  `spassword` varchar(20) NOT NULL,
  `salary` int(10) default NULL,
  PRIMARY KEY  (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hp_staff
-- ----------------------------
INSERT INTO `hp_staff` VALUES ('1', '金', '女', '1772152238', '厕所大妈', '123', '2000');
