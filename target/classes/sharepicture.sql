/*
MySQL Data Transfer
Source Host: localhost
Source Database: myproject
Target Host: localhost
Target Database: myproject
Date: 2018/4/13 7:31:05
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
CREATE TABLE `admin` (
  `adminId` varchar(32) NOT NULL,
  `userId` varchar(32) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for albums
-- ----------------------------
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
-- Table structure for messages
-- ----------------------------
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
-- Table structure for pictures
-- ----------------------------
CREATE TABLE `pictures` (
  `pictureId` varchar(32) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `pictureName` varchar(32) NOT NULL,
  `pictureType` varchar(255) NOT NULL,
  `picturePath` varchar(200) NOT NULL,
  `remark` varchar(3000) DEFAULT NULL,
  `createTime` varchar(14) NOT NULL,
  `clickCount` int(11) NOT NULL DEFAULT '0',
  `isLock` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`pictureId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for picturetype
-- ----------------------------
CREATE TABLE `picturetype` (
  `typeId` int(255) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
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
-- Records 
-- ----------------------------
INSERT INTO `pictures` VALUES ('186F06861E514338889CFFA6DFB4C009', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '加利福尼亚湾', '2', 'static/image/加利福尼亚湾 8.jpg', null, '20180412212819', '0', 'N');
INSERT INTO `pictures` VALUES ('246D9F870CD24994ABE88E6C9B2C91B9', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '加利福尼亚湾', '2', 'static/image/加利福尼亚湾 48.jpg', null, '20180412212818', '0', 'N');
INSERT INTO `pictures` VALUES ('2849F85D0C7243A18137C27DF2AEFE96', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '萨尔茨卡默古特地区', '1', 'static/image/萨尔茨卡默古特地区_23.jpg', null, '20180412212819', '0', 'N');
INSERT INTO `pictures` VALUES ('324FEC993DE04A04A56B8B9E85250678', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '萨尔茨卡默古特地区', '1', 'static/image/萨尔茨卡默古特地区_13.jpg', null, '20180412212819', '0', 'N');
INSERT INTO `pictures` VALUES ('32F758C29BFD46028768BF52AAC5EB86', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '萨尔茨卡默古特地区', '1', 'static/image/萨尔茨卡默古特地区_24.jpg', null, '20180412212819', '0', 'N');
INSERT INTO `pictures` VALUES ('344CB579E4B04DC5B3EFB964BAF1D51E', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '萨尔茨卡默古特地区', '1', 'static/image/萨尔茨卡默古特地区_12.jpg', null, '20180412212819', '0', 'N');
INSERT INTO `pictures` VALUES ('3992552A7DF6472098D4BD2119E9D30D', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '加利福尼亚湾', '2', 'static/image/加利福尼亚湾 52.jpg', null, '20180412212819', '0', 'N');
INSERT INTO `pictures` VALUES ('3B14F3074268416AAC0D4FDCCEAE1AB8', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '萨尔茨卡默古特地区', '1', 'static/image/萨尔茨卡默古特地区_10.jpg', null, '20180412212819', '0', 'N');
INSERT INTO `pictures` VALUES ('3DE0127F63064A27AC426BBC1F94F923', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '萨尔茨卡默古特地区', '1', 'static/image/萨尔茨卡默古特地区_1.jpg', null, '20180412212819', '0', 'N');
INSERT INTO `pictures` VALUES ('57EABAA2E6474D8B8D30E9614A3E77D7', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '萨尔茨卡默古特地区', '1', 'static/image/萨尔茨卡默古特地区_11.jpg', null, '20180412212819', '0', 'N');
INSERT INTO `pictures` VALUES ('6037EA1D7A914374A9A617ED64330201', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '加利福尼亚湾', '2', 'static/image/加利福尼亚湾 9.jpg', null, '20180412212819', '0', 'N');
INSERT INTO `pictures` VALUES ('644143CCEA274BA196ABF2AA83D63EAA', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '萨尔茨卡默古特地区', '1', 'static/image/萨尔茨卡默古特地区_22.jpg', null, '20180412212819', '0', 'N');
INSERT INTO `pictures` VALUES ('69F4C85068314CDCBFD8BFF9C9A02159', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '加利福尼亚湾', '2', 'static/image/加利福尼亚湾 49.jpg', null, '20180412212819', '0', 'N');
INSERT INTO `pictures` VALUES ('7297DE134AE74AF18CF90BBD82B67E48', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '加利福尼亚湾', '2', 'static/image/加利福尼亚湾 5.jpg', null, '20180412212819', '0', 'N');
INSERT INTO `pictures` VALUES ('94B8C542C6FC444A8D3C4EB87EC711C2', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '加利福尼亚湾', '2', 'static/image/加利福尼亚湾 51.jpg', null, '20180412212819', '0', 'N');
INSERT INTO `pictures` VALUES ('A077866E3DDC4BE69C6CA852EC232140', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '加利福尼亚湾', '2', 'static/image/加利福尼亚湾 7.jpg', null, '20180412212819', '0', 'N');
INSERT INTO `pictures` VALUES ('A1702A0BBCAB49428C2CBD8992FE9956', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '萨尔茨卡默古特地区', '1', 'static/image/萨尔茨卡默古特地区_21.jpg', null, '20180412212819', '0', 'N');
INSERT INTO `pictures` VALUES ('AAC4226D6C0C4FA780EC079523ED4F32', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '加利福尼亚湾', '2', 'static/image/加利福尼亚湾 50.jpg', null, '20180412212819', '0', 'N');
INSERT INTO `pictures` VALUES ('AE818A760CDD4FE9A3BB3AA38218903D', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '萨尔茨卡默古特地区', '1', 'static/image/萨尔茨卡默古特地区_15.jpg', null, '20180412212819', '0', 'N');
INSERT INTO `pictures` VALUES ('B11C84354E104339BF5CF52169DC897E', '8EA7EDE3A8AB4CBFB9819C5ED28460FB', '萨尔茨卡默古特地区', '1', 'static/image/萨尔茨卡默古特地区_14.jpg', null, '20180412212819', '0', 'N');
INSERT INTO `picturetype` VALUES ('1', '人文', '');
INSERT INTO `picturetype` VALUES ('2', '自然', null);
INSERT INTO `user` VALUES ('79DC6FA4F265451E8C2947E26FFC7713', '海艺大厦', 'ljm', '123', '男', '573222963@qq.com', '20180124144833', '头像暂未上传', 'N');
INSERT INTO `user` VALUES ('8A0AF9904D264561A1C7DB81A89E9422', 'java小王子', 'lhb', '202CB962AC59075B964B07152D234B70', '男', '891671286@qq.com', '20180124145122', '头像暂未上传', 'N');
INSERT INTO `user` VALUES ('8EA7EDE3A8AB4CBFB9819C5ED28460FB', '王王王', 'WWW', '202CB962AC59075B964B07152D234B70', '1', '512370345@qq.com', '20180206103445', '头像暂未上传', 'N');
