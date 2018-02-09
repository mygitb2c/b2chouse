/*
Navicat MySQL Data Transfer

Source Server         : MySQL_LocalHost
Source Server Version : 50548
Source Host           : 127.0.0.1:3306
Source Database       : myproject

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2018-02-06 19:47:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for albums
-- ----------------------------
DROP TABLE IF EXISTS `albums`;
CREATE TABLE `albums` (
  `albumId` varchar(32) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `albumName` varchar(32) NOT NULL,
  `albumImage` varchar(200) NOT NULL,
  `createTime` varchar(14) NOT NULL,
  `isLock` varchar(1) NOT NULL,
  PRIMARY KEY (`albumId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of albums
-- ----------------------------

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `messageId` varchar(32) NOT NULL,
  `pictureId` varchar(32) NOT NULL,
  `sendId` varchar(32) NOT NULL,
  `content` varchar(3000) NOT NULL,
  `floor` int(11) NOT NULL,
  `createTime` varchar(14) NOT NULL,
  `isLock` varchar(1) NOT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of messages
-- ----------------------------

-- ----------------------------
-- Table structure for pictures
-- ----------------------------
DROP TABLE IF EXISTS `pictures`;
CREATE TABLE `pictures` (
  `pictureId` varchar(32) NOT NULL,
  `albumId` varchar(32) NOT NULL,
  `pictureName` varchar(32) NOT NULL,
  `picturePath` varchar(200) NOT NULL,
  `remark` varchar(3000) NOT NULL,
  `createTime` varchar(14) NOT NULL,
  `isLock` varchar(1) NOT NULL,
  PRIMARY KEY (`pictureId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pictures
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` varchar(32) NOT NULL,
  `userName` varchar(16) NOT NULL,
  `account` varchar(16) NOT NULL,
  `password` varchar(32) NOT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `createTime` varchar(14) NOT NULL,
  `userImage` varchar(200) DEFAULT NULL,
  `isLock` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('79dc6fa4f265451e8c2947e26ffc7713', '海艺大厦', 'ljm', '123', '男', '573222963@qq.com', '20180124144833', '头像暂未上传', 'N');
INSERT INTO `user` VALUES ('8a0af9904d264561a1c7db81a89e9422', 'java小王子', 'lhb', '123', '男', '891671286@qq.com', '20180124145122', '头像暂未上传', 'N');
INSERT INTO `user` VALUES ('8ea7ede3a8ab4cbfb9819c5ed28460fb', '王王王', 'WWW', '123', '1', '512370345@qq.com', '20180206103445', '头像暂未上传', 'N');
