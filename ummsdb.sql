/*
Navicat MySQL Data Transfer

Source Server         : zsh
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : ummsdb

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2018-04-10 23:34:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `password` varchar(16) NOT NULL,
  `age` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '成佳敏', '123', '20');
INSERT INTO `users` VALUES ('2', '杨璐', '222', '21');
INSERT INTO `users` VALUES ('3', '成婷媛', '001', '21');
INSERT INTO `users` VALUES ('4', '邓倩文', '222', '21');
INSERT INTO `users` VALUES ('5', '丁树华', '444', '22');
INSERT INTO `users` VALUES ('6', '赖树龄', '222', '22');
