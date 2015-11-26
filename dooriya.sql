/*
Navicat MySQL Data Transfer

Source Server         : mysql_link
Source Server Version : 50625
Source Host           : 192.168.1.240:3306
Source Database       : uber

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015-11-26 10:23:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `g_uber_depart`
-- ----------------------------
DROP TABLE IF EXISTS `g_uber_depart`;
CREATE TABLE `g_uber_depart` (
  `departId` int(11) NOT NULL AUTO_INCREMENT,
  `departName` varchar(30) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `leaf` int(11) DEFAULT NULL,
  `isActive` bit(1) DEFAULT b'1' COMMENT '是否禁用，0禁用1启用',
  `modifyUsername` varchar(20) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifyTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`departId`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312 COMMENT='\r\n部门表，有父子级别、是否为子节点标示（leaf）';

-- ----------------------------
-- Records of g_uber_depart
-- ----------------------------

-- ----------------------------
-- Table structure for `g_uber_logger`
-- ----------------------------
DROP TABLE IF EXISTS `g_uber_logger`;
CREATE TABLE `g_uber_logger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `class` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `func` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `contents` varchar(8000) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of g_uber_logger
-- ----------------------------
INSERT INTO `g_uber_logger` VALUES ('36', 'INFO', 'com.famework.myframedwz.domain.common.listener.StartListener', 'contextInitialized', '\'项目初始化结束！\'', '2015-11-19 18:15:29');
INSERT INTO `g_uber_logger` VALUES ('37', 'INFO', 'com.famework.myframedwz.domain.action.WalletController', 'drawCash', '\'用户Id为23的用户钱包提现100元。\'', '2015-11-19 18:16:01');
INSERT INTO `g_uber_logger` VALUES ('38', 'ERROR', 'com.famework.myframedwz.domain.action.UserController', 'addUser', '\'\r\n### Error updating database.  Cause: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \\\'userName\\\' at row 1\r\n### The error may involve com.famework.myframedwz.domain.dao.UserMapper.insertSelective-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into g_uber_user      ( userName,                       userPwd,                       nickName,                                     status,                       phone,                       sex,                       birthday,                       realName )       values ( ?,                       ?,                       ?,                                     ?,                       ?,                       ?,                       ?,                       ? )\r\n### Cause: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \\\'userName\\\' at row 1\n; SQL []; Data truncation: Data too long for column \\\'userName\\\' at row 1; nested exception is com.mysql.jdbc.MysqlDataTrun\'', '2015-11-19 18:17:37');
INSERT INTO `g_uber_logger` VALUES ('39', 'INFO', 'com.famework.myframedwz.domain.common.listener.StartListener', 'contextInitialized', '\'项目初始化结束！\'', '2015-11-20 09:46:31');
INSERT INTO `g_uber_logger` VALUES ('40', 'INFO', 'com.famework.myframedwz.domain.common.listener.StartListener', 'contextInitialized', '\'项目初始化结束！\'', '2015-11-23 14:07:21');
INSERT INTO `g_uber_logger` VALUES ('41', 'INFO', 'com.famework.myframedwz.domain.common.listener.StartListener', 'contextInitialized', '\'项目初始化结束！\'', '2015-11-23 14:40:11');
INSERT INTO `g_uber_logger` VALUES ('42', 'ERROR', 'com.famework.myframedwz.domain.action.UserController', 'addUser', '\'\r\n### Error updating database.  Cause: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \\\'userName\\\' at row 1\r\n### The error may involve com.famework.myframedwz.domain.dao.UserMapper.insertSelective-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into g_uber_user      ( userName,                       userPwd,                       nickName,                                     status,                       phone,                       sex,                       birthday,                       realName )       values ( ?,                       ?,                       ?,                                     ?,                       ?,                       ?,                       ?,                       ? )\r\n### Cause: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \\\'userName\\\' at row 1\n; SQL []; Data truncation: Data too long for column \\\'userName\\\' at row 1; nested exception is com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \\\'userName\\\' at row 1\'', '2015-11-23 14:41:04');
INSERT INTO `g_uber_logger` VALUES ('43', 'ERROR', 'com.famework.myframedwz.domain.action.ManagerController', 'upWorker', '\'\'', '2015-11-23 14:41:39');
INSERT INTO `g_uber_logger` VALUES ('44', 'ERROR', 'com.famework.myframedwz.domain.action.ManagerController', 'upWorker', '\'\'', '2015-11-23 14:43:55');
INSERT INTO `g_uber_logger` VALUES ('45', 'ERROR', 'com.famework.myframedwz.domain.action.ManagerController', 'upWorker', '\'\'', '2015-11-23 14:44:27');
INSERT INTO `g_uber_logger` VALUES ('46', 'INFO', 'com.famework.myframedwz.domain.common.listener.StartListener', 'contextInitialized', '\'项目初始化结束！\'', '2015-11-23 15:03:29');
INSERT INTO `g_uber_logger` VALUES ('47', 'ERROR', 'com.famework.myframedwz.domain.action.ManagerController', 'upWorker', '\'一级栏目获取失败！\'', '2015-11-23 15:03:42');
INSERT INTO `g_uber_logger` VALUES ('48', 'ERROR', 'com.famework.myframedwz.domain.action.UserController', 'addUser', '\'org.springframework.dao.DataIntegrityViolationException: \r\n### Error updating database.  Cause: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \\\'userName\\\' at row 1\r\n### The error may involve com.famework.myframedwz.domain.dao.UserMapper.insertSelective-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into g_uber_user      ( userName,                       userPwd,                       nickName,                                     status,                       phone,                       sex,                       birthday,                       realName )       values ( ?,                       ?,                       ?,                                     ?,                       ?,                       ?,                       ?,                       ? )\r\n### Cause: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \\\'userName\\\' at row 1\n; SQL []; Data truncation: Data too long for column \\\'userName\\\' at row 1; nested exception is com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \\\'userName\\\' at row 1\'', '2015-11-23 15:05:05');
INSERT INTO `g_uber_logger` VALUES ('49', 'INFO', 'com.famework.myframedwz.domain.common.listener.StartListener', 'contextInitialized', '\'项目初始化结束！\'', '2015-11-25 14:14:36');
INSERT INTO `g_uber_logger` VALUES ('50', 'INFO', 'com.famework.myframedwz.domain.action.WalletController', 'drawCash', '\'用户Id为23的用户钱包提现100元。\'', '2015-11-25 14:17:07');
INSERT INTO `g_uber_logger` VALUES ('51', 'INFO', 'com.famework.myframedwz.domain.common.listener.StartListener', 'contextInitialized', '\'项目初始化结束！\'', '2015-11-25 15:30:43');

-- ----------------------------
-- Table structure for `g_uber_menu`
-- ----------------------------
DROP TABLE IF EXISTS `g_uber_menu`;
CREATE TABLE `g_uber_menu` (
  `menuId` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(200) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `seq` int(11) NOT NULL,
  `linkUrl` varchar(100) DEFAULT NULL,
  `isActive` int(3) NOT NULL DEFAULT '1' COMMENT '0禁用1启用',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reslevel` int(3) NOT NULL COMMENT '当前节点的父节点level',
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=gb2312 COMMENT='菜单，包含父子级别与菜单连接';

-- ----------------------------
-- Records of g_uber_menu
-- ----------------------------
INSERT INTO `g_uber_menu` VALUES ('1', '菜单列表', null, '1', null, '1', '2013-03-11 13:49:38', '1');
INSERT INTO `g_uber_menu` VALUES ('10', '匠人管理', '1', '1', null, '1', '2014-12-26 08:54:29', '2');
INSERT INTO `g_uber_menu` VALUES ('11', '匠人列表', '10', '1', 'userList.html', '1', '2014-12-26 08:55:31', '3');
INSERT INTO `g_uber_menu` VALUES ('20', '会员管理', '1', '2', '', '1', '2015-10-29 16:18:32', '2');
INSERT INTO `g_uber_menu` VALUES ('21', '会员列表', '20', '1', 'userPageList.html?orgType=0', '1', '2015-10-29 16:19:15', '3');
INSERT INTO `g_uber_menu` VALUES ('90', '系统设置', '1', '20', null, '1', '2013-03-11 13:57:21', '2');
INSERT INTO `g_uber_menu` VALUES ('92', '后台用户管理', '90', '2', 'userPageList.html?orgType=1', '1', '2013-03-11 13:57:51', '3');
INSERT INTO `g_uber_menu` VALUES ('93', '角色权限管理', '90', '3', 'right/rolePageList.html', '1', '2013-03-11 13:57:53', '3');
INSERT INTO `g_uber_menu` VALUES ('94', '角色1', '93', '2', '', '0', '2015-11-02 17:52:12', '4');
INSERT INTO `g_uber_menu` VALUES ('97', '角色2', '93', '1', null, '0', '2015-11-02 17:52:39', '4');
INSERT INTO `g_uber_menu` VALUES ('98', '菜单管理', '1', '3', '', '1', '2015-11-03 09:51:43', '2');
INSERT INTO `g_uber_menu` VALUES ('99', '菜单列表', '98', '3', 'right/toMenuList.html', '1', '2015-11-03 09:57:07', '3');
INSERT INTO `g_uber_menu` VALUES ('100', '菜单测试', '98', '2', 'right/toMenuListLeft.html', '1', '2015-11-03 13:25:23', '3');
INSERT INTO `g_uber_menu` VALUES ('101', '一级子菜单测试', '10', '4', null, '1', '2015-11-03 16:16:06', '3');
INSERT INTO `g_uber_menu` VALUES ('104', '会员列表子菜单', '21', '1', 'baidu.com', '0', '2015-11-12 19:50:10', '4');
INSERT INTO `g_uber_menu` VALUES ('113', 'bbb', '99', '1', 'ddddb', '1', '2015-11-12 20:04:04', '4');
INSERT INTO `g_uber_menu` VALUES ('168', 'wallet', '11', '2', 'userList.html', '0', '2015-11-16 10:02:35', '4');

-- ----------------------------
-- Table structure for `g_uber_menu_role`
-- ----------------------------
DROP TABLE IF EXISTS `g_uber_menu_role`;
CREATE TABLE `g_uber_menu_role` (
  `menuRoleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) DEFAULT NULL,
  `menuId` int(11) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`menuRoleId`)
) ENGINE=InnoDB AUTO_INCREMENT=542 DEFAULT CHARSET=gb2312 COMMENT='菜单角色表，用于连接角色与菜单';

-- ----------------------------
-- Records of g_uber_menu_role
-- ----------------------------
INSERT INTO `g_uber_menu_role` VALUES ('485', '2', '1', '2015-11-17 13:55:54');
INSERT INTO `g_uber_menu_role` VALUES ('486', '2', '10', '2015-11-17 13:55:54');
INSERT INTO `g_uber_menu_role` VALUES ('487', '2', '11', '2015-11-17 13:55:54');
INSERT INTO `g_uber_menu_role` VALUES ('488', '2', '20', '2015-11-17 13:55:54');
INSERT INTO `g_uber_menu_role` VALUES ('489', '2', '21', '2015-11-17 13:55:54');
INSERT INTO `g_uber_menu_role` VALUES ('490', '2', '90', '2015-11-17 13:55:54');
INSERT INTO `g_uber_menu_role` VALUES ('491', '2', '92', '2015-11-17 13:55:54');
INSERT INTO `g_uber_menu_role` VALUES ('492', '2', '93', '2015-11-17 13:55:54');
INSERT INTO `g_uber_menu_role` VALUES ('493', '2', '94', '2015-11-17 13:55:54');
INSERT INTO `g_uber_menu_role` VALUES ('494', '2', '97', '2015-11-17 13:55:54');
INSERT INTO `g_uber_menu_role` VALUES ('495', '2', '98', '2015-11-17 13:55:54');
INSERT INTO `g_uber_menu_role` VALUES ('496', '2', '99', '2015-11-17 13:55:54');
INSERT INTO `g_uber_menu_role` VALUES ('497', '2', '100', '2015-11-17 13:55:54');
INSERT INTO `g_uber_menu_role` VALUES ('498', '2', '101', '2015-11-17 13:55:54');
INSERT INTO `g_uber_menu_role` VALUES ('499', '2', '104', '2015-11-17 13:55:54');
INSERT INTO `g_uber_menu_role` VALUES ('500', '2', '113', '2015-11-17 13:55:54');
INSERT INTO `g_uber_menu_role` VALUES ('501', '2', '168', '2015-11-17 13:55:54');
INSERT INTO `g_uber_menu_role` VALUES ('521', '4', '1', '2015-11-17 14:44:19');
INSERT INTO `g_uber_menu_role` VALUES ('522', '4', '98', '2015-11-17 14:44:19');
INSERT INTO `g_uber_menu_role` VALUES ('523', '4', '100', '2015-11-17 14:44:19');
INSERT INTO `g_uber_menu_role` VALUES ('524', '4', '99', '2015-11-17 14:44:19');
INSERT INTO `g_uber_menu_role` VALUES ('525', '4', '113', '2015-11-17 14:44:19');
INSERT INTO `g_uber_menu_role` VALUES ('526', '4', '90', '2015-11-17 14:44:19');
INSERT INTO `g_uber_menu_role` VALUES ('527', '4', '93', '2015-11-17 14:44:19');
INSERT INTO `g_uber_menu_role` VALUES ('533', '3', '1', '2015-11-17 14:50:18');
INSERT INTO `g_uber_menu_role` VALUES ('534', '3', '10', '2015-11-17 14:50:18');
INSERT INTO `g_uber_menu_role` VALUES ('535', '3', '11', '2015-11-17 14:50:18');
INSERT INTO `g_uber_menu_role` VALUES ('536', '3', '98', '2015-11-17 14:50:18');
INSERT INTO `g_uber_menu_role` VALUES ('537', '3', '99', '2015-11-17 14:50:18');
INSERT INTO `g_uber_menu_role` VALUES ('538', '3', '113', '2015-11-17 14:50:18');
INSERT INTO `g_uber_menu_role` VALUES ('539', '3', '90', '2015-11-17 14:50:18');
INSERT INTO `g_uber_menu_role` VALUES ('540', '3', '92', '2015-11-17 14:50:18');

-- ----------------------------
-- Table structure for `g_uber_param`
-- ----------------------------
DROP TABLE IF EXISTS `g_uber_param`;
CREATE TABLE `g_uber_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paramName` varchar(30) DEFAULT NULL,
  `paramCode` varchar(30) DEFAULT NULL,
  `paramValue` varchar(50) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifyTime` timestamp NULL DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `modifyUserName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_uber_param
-- ----------------------------
INSERT INTO `g_uber_param` VALUES ('1', '', '', '', '', '2015-11-11 18:50:52', null, '1', '');

-- ----------------------------
-- Table structure for `g_uber_role`
-- ----------------------------
DROP TABLE IF EXISTS `g_uber_role`;
CREATE TABLE `g_uber_role` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(20) NOT NULL,
  `remark` varchar(20) DEFAULT NULL,
  `modifyUsername` varchar(20) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0禁用1启用',
  `modifyTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312 COMMENT='角色表是一个角色\r\n比如管理员、审核员==';

-- ----------------------------
-- Records of g_uber_role
-- ----------------------------
INSERT INTO `g_uber_role` VALUES ('2', 'admin', 'guanliyuan', '', '2015-10-30 10:33:56', '0', '2015-10-30 10:33:56');
INSERT INTO `g_uber_role` VALUES ('3', '普通用户', '', null, '0000-00-00 00:00:00', '0', '2015-11-17 11:41:27');
INSERT INTO `g_uber_role` VALUES ('4', '菜单管理员', '', null, '0000-00-00 00:00:00', '0', '2015-11-17 14:42:57');

-- ----------------------------
-- Table structure for `g_uber_user`
-- ----------------------------
DROP TABLE IF EXISTS `g_uber_user`;
CREATE TABLE `g_uber_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(15) NOT NULL DEFAULT '' COMMENT '用户名',
  `userPwd` varchar(64) NOT NULL DEFAULT '' COMMENT '密码',
  `nickName` varchar(15) NOT NULL DEFAULT '' COMMENT '昵称',
  `messengerId` int(11) DEFAULT NULL COMMENT '环信ID',
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `status` int(11) DEFAULT '0' COMMENT '用户状态0正常1禁用',
  `phone` varchar(15) DEFAULT '' COMMENT '联系电话',
  `sex` varchar(3) DEFAULT '' COMMENT '性别',
  `birthday` varchar(100) DEFAULT NULL,
  `realName` varchar(15) DEFAULT '' COMMENT '真实姓名',
  `orgType` int(11) DEFAULT '0' COMMENT '0普通账户1后台管理员账户',
  `imagePath` varchar(100) DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of g_uber_user
-- ----------------------------
INSERT INTO `g_uber_user` VALUES ('23', '13124111864', '', '李师傅', null, '2015-09-02 14:15:57', '0', '13124111863', '', '2015-11-04', 'AA啊', '0', '20150923/1443003759537393915.jpg');
INSERT INTO `g_uber_user` VALUES ('24', '18873683530', '', '33333', null, '2015-09-08 12:51:23', '0', '18873683530', '', '', '', '0', null);
INSERT INTO `g_uber_user` VALUES ('25', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '', null, '2015-09-10 08:29:40', '1', '', '', null, '', '1', null);
INSERT INTO `g_uber_user` VALUES ('26', '13951911488', '', '42342', null, '2015-09-12 18:58:42', '0', '13951911488', '', '', '', '0', null);
INSERT INTO `g_uber_user` VALUES ('27', '13910923602', '4227163ce9ca5e09f0b1a425bd8ddb9d', '', null, '2015-09-13 14:46:51', '0', '13910923602', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('28', '13957188016', '408b6c4942082de452a5428ea7803a21', '', null, '2015-09-13 15:55:10', '0', '13957188016', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('29', '13922317885', 'bbf7c4eb0cf8123ceb713a07412268a8', '', null, '2015-09-13 17:07:14', '0', '13922317885', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('30', '18917876869', 'e10adc3949ba59abbe56e057f20f883e', '', null, '2015-09-13 23:02:20', '0', '18917876869', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('31', '13798266636', 'bc65abca2195999b776fb8f2acc89f93', '', null, '2015-09-14 00:27:57', '0', '13798266636', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('32', '13671659417', '7bdda3b2127a8c3473ca4813ccf5ff68', '', null, '2015-09-15 06:06:47', '0', '13671659417', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('33', '13811618801', '564619d63b55e1fbc37018758c6bb02b', '', null, '2015-09-16 00:16:28', '0', '13811618801', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('34', '15801208901', '96e79218965eb72c92a549dd5a330112', '', null, '2015-09-16 01:46:16', '0', '15801208901', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('35', '13161691134', 'e10adc3949ba59abbe56e057f20f883e', '', null, '2015-09-16 02:35:12', '0', '13161691134', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('36', '13998323290', 'c2f995ea0eb5430b368001610c678b96', '', null, '2015-09-16 03:57:14', '0', '13998323290', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('37', '15910242376', 'e10adc3949ba59abbe56e057f20f883e', '', null, '2015-09-16 04:05:11', '0', '15910242376', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('38', '13666621925', '01f7077f68d2a00bec18d25232cdd6c1', '', null, '2015-09-16 08:25:22', '0', '13666621925', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('39', '15910346992', 'ad260c31b3e9c116c3b4d69fdb0bab53', '', null, '2015-09-17 03:56:59', '0', '15910346992', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('40', '18712828730', 'ba42c13163e115b5f857c55a3ee55332', '', null, '2015-09-18 03:06:21', '0', '18712828730', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('41', '13901670664', 'fb2fcd534b0ff3bbed73cc51df620323', '', null, '2015-09-19 02:16:01', '0', '13901670664', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('42', '15850742660', 'fc12b403619fab6f78090cce5fac2ef7', '', null, '2015-09-19 17:32:21', '0', '15850742660', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('43', '15757132356', '', '天师傅1', null, '2015-09-24 01:09:43', '0', '15757132356', '', '2015-11-19', '天空1', '0', '20151111/14472351553170708.jpg');
INSERT INTO `g_uber_user` VALUES ('44', '13124111865', '96e79218965eb72c92a549dd5a330112', '', null, '2015-10-03 06:24:57', '0', '13124111865', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('45', '13009999178', '2177ce2e86b7f9d54e79b5f8aa0842e8', '卓晟家居木器陶瓷修复', null, '2015-10-04 00:13:42', '0', '13009999178', '男', '239385600', '无', '0', '20151004/1443917994515134943.jpg');
INSERT INTO `g_uber_user` VALUES ('46', '13773650533', 'fcc9eb0803694f39a334f578dfe5484d', '', null, '2015-10-06 06:23:16', '0', '13773650533', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('47', '15606528121', '5bfe0f2351f6a5cb8c8e8f970c360131', '', null, '2015-10-08 03:46:49', '0', '15606528121', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('48', '18705001829', '08ef84145b81dcd98554b70c662c41ed', '', null, '2015-10-08 09:31:38', '0', '18705001829', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('49', '18601152633', '46e02a9696fbb6e4f5ae13a52ce79dc8', '', null, '2015-10-08 23:40:15', '0', '18601152633', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('50', '15616123691', '5a0f94e4f1a6f348df728f86e2920442', '', null, '2015-10-09 15:46:59', '0', '15616123691', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('51', '15821435626', '3e7bb785ab045b23fd1d6ffcb5a037b6', '', null, '2015-10-13 11:52:27', '0', '15821435626', '', null, '', '0', null);
INSERT INTO `g_uber_user` VALUES ('52', '18767161532', 'e10adc3949ba59abbe56e057f20f883e', '我们', null, '2015-11-10 16:38:07', '0', '18767161532', '女', '1447171200', '', '0', '20151111/14471839108945548.jpg');
INSERT INTO `g_uber_user` VALUES ('53', 'oceanyanng', '', 'hai', null, '2015-11-13 11:13:54', '0', '18696223702', '女', '2015-12-12', '杨海洋', '0', null);
INSERT INTO `g_uber_user` VALUES ('54', 'oceanyanngs', '', 'hi', null, '2015-11-16 13:41:06', '0', '18696223703', '女', '1901-11-12', '海洋', '0', null);
INSERT INTO `g_uber_user` VALUES ('55', '18696223702', '', 'nick', null, '2015-11-16 13:42:14', '1', '18696223704', '男', '', 'yanghaiyang', '0', null);
INSERT INTO `g_uber_user` VALUES ('56', 'ocean', '96e79218965eb72c92a549dd5a330112', 'nickyang', null, '2015-11-17 13:57:16', '0', '18696223701', '女', '', '海洋', '1', null);
INSERT INTO `g_uber_user` VALUES ('57', '打断点', '', '432474444', null, '2015-11-17 14:54:51', '1', '3324242342', '', '', '1111', '1', null);
INSERT INTO `g_uber_user` VALUES ('58', '发奋', '', '2312图兔兔', null, '2015-11-20 15:45:56', '0', '3423525', '', '', '324234', '0', null);

-- ----------------------------
-- Table structure for `g_uber_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `g_uber_user_role`;
CREATE TABLE `g_uber_user_role` (
  `userRoleId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`userRoleId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312 COMMENT='user_role表是用户角色表\r\n用来连接用户与角色的表';

-- ----------------------------
-- Records of g_uber_user_role
-- ----------------------------
INSERT INTO `g_uber_user_role` VALUES ('1', '25', '2', '2015-11-09 18:52:53');
INSERT INTO `g_uber_user_role` VALUES ('4', '56', '3', '2015-11-17 14:50:33');
