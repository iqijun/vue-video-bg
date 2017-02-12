/*
Navicat MySQL Data Transfer

Source Server         : mysql_local
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : yii

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-02-12 21:42:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for navbar
-- ----------------------------
DROP TABLE IF EXISTS `navbar`;
CREATE TABLE `navbar` (
  `nav_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '导航id',
  `nav_text` varchar(30) DEFAULT NULL COMMENT '导航栏标题',
  `nav_url` varchar(50) DEFAULT NULL COMMENT '链接url',
  `nav_order` int(11) DEFAULT NULL COMMENT '顺序',
  `nav_pid` bigint(20) DEFAULT NULL COMMENT '父ID',
  PRIMARY KEY (`nav_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of navbar
-- ----------------------------
INSERT INTO `navbar` VALUES ('1', '首页', '/', '1', '0');
INSERT INTO `navbar` VALUES ('2', '健身', '/fitness', '1', '0');
INSERT INTO `navbar` VALUES ('3', '饮食', '/diet', '1', '0');
INSERT INTO `navbar` VALUES ('4', '私人定制', '/pt', '1', '0');
