/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : baokuteam

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2017-09-11 15:29:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for appro
-- ----------------------------
DROP TABLE IF EXISTS `appro`;
CREATE TABLE `appro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appname` varchar(100) DEFAULT NULL,
  `applevel` int(10) DEFAULT NULL,
  `orderid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of appro
-- ----------------------------
INSERT INTO `appro` VALUES ('1', '曹宏光', '1', 'T2014082700001');
INSERT INTO `appro` VALUES ('2', '赵素蓉', '2', 'T2014082700001');
INSERT INTO `appro` VALUES ('3', '张传青', '3', 'T2014082700001');
INSERT INTO `appro` VALUES ('4', '网管', '4', 'T2014082700001');

-- ----------------------------
-- Table structure for tb
-- ----------------------------
DROP TABLE IF EXISTS `tb`;
CREATE TABLE `tb` (
  `Name` varchar(10) DEFAULT NULL,
  `Subject` varchar(10) DEFAULT NULL,
  `Result` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb
-- ----------------------------
INSERT INTO `tb` VALUES ('张三', '语文', '74');
INSERT INTO `tb` VALUES ('张三', '数学', '83');
INSERT INTO `tb` VALUES ('张三', '物理', '93');
INSERT INTO `tb` VALUES ('李四', '语文', '74');
INSERT INTO `tb` VALUES ('李四', '数学', '84');
INSERT INTO `tb` VALUES ('李四', '物理', '94');

-- ----------------------------
-- Table structure for user_xinxi
-- ----------------------------
DROP TABLE IF EXISTS `user_xinxi`;
CREATE TABLE `user_xinxi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `USER_SEX` varchar(255) DEFAULT NULL,
  `ZHIWEI` varchar(255) DEFAULT NULL,
  `BUMEN` varchar(255) DEFAULT NULL,
  `FUZEREN` varchar(255) DEFAULT NULL,
  `TOUXIANG` varchar(255) DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `oldCompany` varchar(255) DEFAULT NULL,
  `oldZhiWei` varchar(255) DEFAULT NULL,
  `doWhat` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `zhuanYe` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_xinxi
-- ----------------------------
INSERT INTO `user_xinxi` VALUES ('4', '于瑒', '男', '高级客户销售经理', '企业销售部--罗朝军团队', '罗朝军', '/teamMVC/upload/22.png', '2017-04-05 00:00:00', null, null, null, null, null, null);
INSERT INTO `user_xinxi` VALUES ('7', '刘雪', '女', '客服顾问', '客户运营部--客服中心', '王磊', '/teamMVC/upload/222.png', '2017-04-12 00:00:00', null, null, null, null, null, null);
INSERT INTO `user_xinxi` VALUES ('8', '张艳菊', '女', '资深产品经理', '产品部', '左石俊', '/teamMVC/upload/222.png', '2017-04-17 00:00:00', null, null, null, null, null, null);
INSERT INTO `user_xinxi` VALUES ('12', '安娟娟', '女', '高级产品经理', '产品部', '左石俊', '/teamMVC/upload/444.png', '2017-04-17 00:00:00', null, null, null, null, null, null);
INSERT INTO `user_xinxi` VALUES ('15', '蔡涛', '男', '资深产品经理', '产品部', '左石俊', '/teamMVC/upload/333.png', '2017-04-24 00:00:00', null, null, null, null, null, null);
INSERT INTO `user_xinxi` VALUES ('18', '朱茂良', '男', '高级JAVA开发工程师', '研发部', '王秘', '/teamMVC/upload/111.png', '2017-04-25 00:00:00', null, null, null, null, null, null);
INSERT INTO `user_xinxi` VALUES ('21', '刘月', '女', '招聘专员', '人事行政部', '严宇', '/teamMVC/upload/111.png', '2017-04-28 09:15:09', null, null, null, null, null, null);
INSERT INTO `user_xinxi` VALUES ('23', '魏全喜', '男', '高级客户销售经理', '企业销售部', '肖达澜', '/teamMVC/upload/1111.png', '2017-05-03 09:56:00', null, null, null, null, null, null);
INSERT INTO `user_xinxi` VALUES ('30', '代伟', '男', '高级产品经理', '科技中心', '常振东', '/teamMVC/upload/1221.png', '2017-05-17 00:00:00', null, null, null, null, null, null);
INSERT INTO `user_xinxi` VALUES ('31', '张波', '男', '项目经理', '科技中心--项目管理部', '王雪松', '/teamMVC/upload/233.png', '2017-05-24 00:00:00', null, null, null, null, null, null);
INSERT INTO `user_xinxi` VALUES ('32', '张朋', '男', '高级JAVA开发工程师', '研发部', '常振东', '/teamMVC/upload/23.png', '2017-05-26 00:00:00', null, null, null, null, null, null);
INSERT INTO `user_xinxi` VALUES ('33', '赵晶冰', '女', '高级UI设计师', '产品部', '刘佳奥', '/teamMVC/upload/555.png', '2017-06-01 00:00:00', null, null, null, null, null, null);
INSERT INTO `user_xinxi` VALUES ('34', '郑中昱', '男', '高级销售经理', '企业销售部', '徐亚森', '/teamMVC/upload/333.png', '2017-06-01 00:00:00', null, null, null, null, null, null);
INSERT INTO `user_xinxi` VALUES ('56', '王五', '男', '会计专员', '财务部', '常振东', '/teamMVC/upload/20150114180434_VVx8J.thumb.700_0.jpeg', '2017-07-04 00:00:00', null, null, null, null, null, null);
INSERT INTO `user_xinxi` VALUES ('73', '张大帅', '男', 'Java开发工程师', '研发部', '常振东', '/teamMVC/upload/Koala.jpg', '2017-07-04 00:00:00', null, null, null, null, null, null);
INSERT INTO `user_xinxi` VALUES ('93', '赵莺', '女', '高级客服顾问', '运营部--呼叫中心', '王磊', '/teamMVC/upload/', '2017-07-17 00:00:00', 'zhaoying@baoku.com', '七星集团', '客服', '负责接听客户电话 。处理国内机票，酒店，火车票，等问题 。 并提供供应商与渠道客户的系统问题解答等', '华北理工大学', '信息技术');
INSERT INTO `user_xinxi` VALUES ('97', '陈红', '女', '结算专员', '财务部', '王丽媛', '/teamMVC/upload/11111.png', '2017-07-18 00:00:00', 'chenhong@baoku.com', '', '', '根据财务及客户需求整理行程单，协助客服邮寄善融行程单，月末出具部份客户结算账单等', '', '');
INSERT INTO `user_xinxi` VALUES ('98', '礼艳秋', '女', '结算专员', '财务部', '王丽媛', '/teamMVC/upload/333.png', '2017-07-18 00:00:00', 'liyanqiu@baoku.com', '', '', '负责核算后台各账户余额、流水；统计运营日报表、核对各供应商出票情况、汇总国内、国际行程单提供给本公司财务及相关客户使用！', '', '');
INSERT INTO `user_xinxi` VALUES ('104', '任志卿', '女', '结算专员', '财务部', '王丽媛', '/teamMVC/upload/12.png', '2017-08-23 00:00:00', 'renzhiqing@baoku.com', '', '', '根据财务及客户需求整理行程单，协助客服邮寄善融行程单，月末出具部份客户结算账单等', '山西农业大学信息学院', '财务管理专业');
INSERT INTO `user_xinxi` VALUES ('111', '张郁丛', '女', '结算专员', '财务部', '王丽媛', '/teamMVC/upload/23333.png', '2017-08-23 00:00:00', 'zhangyucong@baoku.com', '', '', '核算后台各账户余额、流水；统计运营日报表、核对各供应商出票情况、汇总国内、国际行程单提供给本公司财务及相关客户使用', '北京城市学院', '工商企业管理');
INSERT INTO `user_xinxi` VALUES ('115', '刘明禄', '男', 'Java开发工程师', '科技中心', '陈伟', '/teamMVC/upload/liuml.png', '2017-09-04 00:00:00', 'liuminglu@baoku.com', '', '', '从事航司项目组的工作开发', '河北地质大学华信学院', '');
INSERT INTO `user_xinxi` VALUES ('116', '郑硕', '男', 'Java开发工程师', '科技中心', '陈伟', '/teamMVC/upload/zheng.png', '2017-09-04 00:00:00', 'zhengshuo@baoku.com', '', '', '从事航司项目组的工作开发', '长春理工大学光电信息学院', '');
INSERT INTO `user_xinxi` VALUES ('118', '赵智伟', '男', 'Java开发工程师', '科技中心', '陈伟', '/teamMVC/upload/zhaozhiwei.png', '2017-09-04 00:00:00', 'zhaozhiwei@baoku.com', '', '', '从事航司项目组的工作开发', '重庆大学城市科技学院', '');
INSERT INTO `user_xinxi` VALUES ('148', '刘明禄', '男', 'Java开发工程师', '科技中心', '陈伟', '/teamMVC/upload/liuml.png', '2017-09-04 00:00:00', 'liuminglu@baoku.com', '', '', '', '', '财会');
INSERT INTO `user_xinxi` VALUES ('149', '王纬东', '男', '助理产品经理', '航司项目部', '常振东', '/teamMVC/upload/wwd.png', '2017-09-06 00:00:00', 'wangweidong@baoku.com', '', '', '配合产品经理梳理产品功能，服务目录和发展路线图，推动设计方案在开发结果的最终实现;分析用户需求、使用场景，负责部分功能模块产品设计，并撰写和维护产品需求文档等', '', '');
INSERT INTO `user_xinxi` VALUES ('150', '邢伟', '男', '助理产品经理', '产品部', '靳子良', '/teamMVC/upload/xw.png', '2017-09-06 00:00:00', 'xingwei@baoku.com', '', '', '客户日常需求收集、分析以及产品设计，同时涉及平台管理功能方向设计等', '', '');
INSERT INTO `user_xinxi` VALUES ('189', '苏小平', '男', '高级测试工程师', '航司项目部', '常振东', '/teamMVC/static/images/1558a90547674b69b5173f986b646916.png', '2017-09-11 00:00:00', 'suxiaoping@baoku.com', '', '', '', '', '');
INSERT INTO `user_xinxi` VALUES ('193', '张传魏', '男', '运营助理', 'T-shop平台运营', '黄铁军', '/teamMVC/static/images/2693463450634863ad40576c41ce6fef.png', '2017-09-11 00:00:00', 'zhangchuanwei@baoku.com', '', '', '', '', '');
