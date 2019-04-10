/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50560
Source Host           : localhost:3306
Source Database       : ictenglish

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2018-12-17 15:46:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for eurasia_ictenglish_paper_lists
-- ----------------------------
DROP TABLE IF EXISTS `eurasia_ictenglish_paper_lists`;
CREATE TABLE `eurasia_ictenglish_paper_lists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `date_time` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `ab_rate` float NOT NULL,
  `last_year_rate` float NOT NULL,
  `ab_counterpart_id` int(11) NOT NULL,
  `last_year_counterpart_id` int(11) NOT NULL,
  `questions_list` mediumtext NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eurasia_ictenglish_paper_lists
-- ----------------------------

-- ----------------------------
-- Table structure for eurasia_ictenglish_paper_question_lists
-- ----------------------------
DROP TABLE IF EXISTS `eurasia_ictenglish_paper_question_lists`;
CREATE TABLE `eurasia_ictenglish_paper_question_lists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `question_type` varchar(255) NOT NULL,
  `score` varchar(255) NOT NULL,
  `question_list` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eurasia_ictenglish_paper_question_lists
-- ----------------------------

-- ----------------------------
-- Table structure for eurasia_ictenglish_paper_type
-- ----------------------------
DROP TABLE IF EXISTS `eurasia_ictenglish_paper_type`;
CREATE TABLE `eurasia_ictenglish_paper_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eurasia_ictenglish_paper_type
-- ----------------------------
INSERT INTO `eurasia_ictenglish_paper_type` VALUES ('1', 'A卷');
INSERT INTO `eurasia_ictenglish_paper_type` VALUES ('2', 'B卷');
INSERT INTO `eurasia_ictenglish_paper_type` VALUES ('3', '练习题');
INSERT INTO `eurasia_ictenglish_paper_type` VALUES ('4', '单套试卷');

-- ----------------------------
-- Table structure for eurasia_ictenglish_questions_explanation
-- ----------------------------
DROP TABLE IF EXISTS `eurasia_ictenglish_questions_explanation`;
CREATE TABLE `eurasia_ictenglish_questions_explanation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `question` mediumtext NOT NULL COMMENT '题干',
  `answer` mediumtext NOT NULL,
  `difficulty` varchar(255) NOT NULL,
  `knowledge_point` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eurasia_ictenglish_questions_explanation
-- ----------------------------

-- ----------------------------
-- Table structure for eurasia_ictenglish_questions_selection
-- ----------------------------
DROP TABLE IF EXISTS `eurasia_ictenglish_questions_selection`;
CREATE TABLE `eurasia_ictenglish_questions_selection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `question` mediumtext NOT NULL COMMENT '题干',
  `answer_a` mediumtext NOT NULL,
  `answer_b` mediumtext NOT NULL,
  `answer_c` mediumtext NOT NULL,
  `answer_d` mediumtext NOT NULL,
  `answer` varchar(255) NOT NULL,
  `difficulty` varchar(255) NOT NULL,
  `knowledge_point` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eurasia_ictenglish_questions_selection
-- ----------------------------

-- ----------------------------
-- Table structure for eurasia_ictenglish_questions_sentencecntoen
-- ----------------------------
DROP TABLE IF EXISTS `eurasia_ictenglish_questions_sentencecntoen`;
CREATE TABLE `eurasia_ictenglish_questions_sentencecntoen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `question` mediumtext NOT NULL COMMENT '题干',
  `answer` mediumtext NOT NULL,
  `difficulty` varchar(255) NOT NULL,
  `knowledge_point` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eurasia_ictenglish_questions_sentencecntoen
-- ----------------------------

-- ----------------------------
-- Table structure for eurasia_ictenglish_questions_sentenceentocn
-- ----------------------------
DROP TABLE IF EXISTS `eurasia_ictenglish_questions_sentenceentocn`;
CREATE TABLE `eurasia_ictenglish_questions_sentenceentocn` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `question` mediumtext NOT NULL COMMENT '题干',
  `answer` mediumtext NOT NULL,
  `difficulty` varchar(255) NOT NULL,
  `knowledge_point` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eurasia_ictenglish_questions_sentenceentocn
-- ----------------------------

-- ----------------------------
-- Table structure for eurasia_ictenglish_questions_torf
-- ----------------------------
DROP TABLE IF EXISTS `eurasia_ictenglish_questions_torf`;
CREATE TABLE `eurasia_ictenglish_questions_torf` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `question` mediumtext NOT NULL COMMENT '题干',
  `answer_a` mediumtext NOT NULL,
  `answer_b` mediumtext NOT NULL,
  `answer` mediumtext NOT NULL,
  `difficulty` varchar(255) NOT NULL,
  `knowledge_point` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eurasia_ictenglish_questions_torf
-- ----------------------------

-- ----------------------------
-- Table structure for eurasia_ictenglish_questions_wordcntoen
-- ----------------------------
DROP TABLE IF EXISTS `eurasia_ictenglish_questions_wordcntoen`;
CREATE TABLE `eurasia_ictenglish_questions_wordcntoen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `question` mediumtext NOT NULL COMMENT '题干',
  `answer` mediumtext NOT NULL,
  `difficulty` varchar(255) NOT NULL,
  `knowledge_point` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eurasia_ictenglish_questions_wordcntoen
-- ----------------------------

-- ----------------------------
-- Table structure for eurasia_ictenglish_questions_wordentocn
-- ----------------------------
DROP TABLE IF EXISTS `eurasia_ictenglish_questions_wordentocn`;
CREATE TABLE `eurasia_ictenglish_questions_wordentocn` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `question` mediumtext NOT NULL COMMENT '题干',
  `answer` mediumtext NOT NULL,
  `difficulty` varchar(255) NOT NULL,
  `knowledge_point` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eurasia_ictenglish_questions_wordentocn
-- ----------------------------

-- ----------------------------
-- Table structure for eurasia_ictenglish_question_type
-- ----------------------------
DROP TABLE IF EXISTS `eurasia_ictenglish_question_type`;
CREATE TABLE `eurasia_ictenglish_question_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(255) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eurasia_ictenglish_question_type
-- ----------------------------
INSERT INTO `eurasia_ictenglish_question_type` VALUES ('11', 'eurasia_ictenglish_questions_selection', '单选题');
INSERT INTO `eurasia_ictenglish_question_type` VALUES ('12', 'eurasia_ictenglish_questions_TorF', '判断题');
INSERT INTO `eurasia_ictenglish_question_type` VALUES ('13', 'eurasia_ictenglish_questions_WordEnToCN', '常用词组英译汉');
INSERT INTO `eurasia_ictenglish_question_type` VALUES ('14', 'eurasia_ictenglish_questions_WordCnToEN', '常用词组汉译英');
INSERT INTO `eurasia_ictenglish_question_type` VALUES ('15', 'eurasia_ictenglish_questions_Explanation', '缩略词解释');
INSERT INTO `eurasia_ictenglish_question_type` VALUES ('16', 'eurasia_ictenglish_questions_SentenceEnToCN', '句子英译汉');
INSERT INTO `eurasia_ictenglish_question_type` VALUES ('17', 'eurasia_ictenglish_questions_SentenceCnToEN', '句子汉译英');

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(128) NOT NULL COMMENT '资源名称',
  `menu_sort` int(11) DEFAULT '100',
  `type` varchar(32) NOT NULL COMMENT '资源类型：menu,button,',
  `url` varchar(128) DEFAULT NULL COMMENT '访问url地址',
  `icon` varchar(128) DEFAULT NULL COMMENT '资源icon',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父结点id',
  `parentids` varchar(128) DEFAULT NULL COMMENT '父结点id列表串',
  `sortstring` varchar(128) DEFAULT NULL COMMENT '排序号',
  `available` varchar(10) DEFAULT NULL COMMENT '是否可用,1：可用，0不可用',
  `percode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', '权限', null, ' ', '', null, '0', '0/', null, '1', null);
INSERT INTO `t_permission` VALUES ('2', '系统管理', '3', 'menu', '/systemManage', null, '1', '0/1/', '1', '1', 'permissionManage:');
INSERT INTO `t_permission` VALUES ('3', '在线考练', '1', 'menu', '/infoManage', null, '1', '0/1/', '1', '1', 'infoManage:');
INSERT INTO `t_permission` VALUES ('4', '试题管理', '2', 'menu', '/report', null, '1', '0/1/', '1', '1', 'port:');
INSERT INTO `t_permission` VALUES ('5', '菜单权限管理', '3', 'menu', '/menu', null, '2', '0/1/2/', '2', '1', '');
INSERT INTO `t_permission` VALUES ('6', '角色权限分配', '1', 'menu', '/userRole', null, '2', '0/1/2/', '2', '1', 'rolePermission:');
INSERT INTO `t_permission` VALUES ('7', '发布公告', '4', 'menu', '/notice', null, '2', '0/1/2/', '2', '1', '');
INSERT INTO `t_permission` VALUES ('8', '添加', null, 'permission', '', null, '6', '0/1/2/6/', '3', '1', 'rolePermission:add');
INSERT INTO `t_permission` VALUES ('9', '修改', null, 'permission', '', null, '6', '0/1/2/6/', '3', '1', 'rolePermission:update');
INSERT INTO `t_permission` VALUES ('11', '用户角色分配', '2', 'menu', '/roleDistribute', null, '2', '0/1/2/', '2', '1', 'userRole:');
INSERT INTO `t_permission` VALUES ('12', '状态设置', null, 'permission', null, null, '6', '0/1/2/6/', '3', '1', 'rolePermission:available');
INSERT INTO `t_permission` VALUES ('13', '录入试题', '2', 'menu', '/moduleThree', null, '4', '0/1/4/', '2', '1', 'moduleThree:');
INSERT INTO `t_permission` VALUES ('14', '角色修改', null, 'permission', null, null, '11', '0/1/2/11/', '3', '1', 'userRole:update');
INSERT INTO `t_permission` VALUES ('15', '删除', null, 'permission', null, null, '7', '0/1/2/7/', '3', '1', 'notice:delete');
INSERT INTO `t_permission` VALUES ('16', '添加', null, 'permission', null, null, '17', '0/1/3/17/', '3', '1', 'moduleOne:add');
INSERT INTO `t_permission` VALUES ('17', '习题测试', '2', 'menu', '/moduleOne', null, '3', '0/1/3/', '2', '1', 'moduleOne:');
INSERT INTO `t_permission` VALUES ('18', '删除', null, 'permission', null, null, '17', '0/1/3/17/', '3', '1', 'moduleOne:delete');
INSERT INTO `t_permission` VALUES ('19', '修改', null, 'permission', null, null, '17', '0/1/3/17/', '3', '1', 'moduleOne:update');
INSERT INTO `t_permission` VALUES ('20', '删除', null, 'permission', null, null, '6', '0/1/2/6/', '3', '1', 'rolePermission:delete');
INSERT INTO `t_permission` VALUES ('23', '权限配置', null, 'permission', null, null, '6', '0/1/2/6/', '3', '1', 'rolePermission:setting');
INSERT INTO `t_permission` VALUES ('124', '添加', null, 'permission', null, null, '13', '0/1/4/13/', '3', '1', 'moduleThree:add');
INSERT INTO `t_permission` VALUES ('125', '更新', null, 'permission', null, null, '13', '0/1/4/13/', '3', '1', 'moduleThree:update');
INSERT INTO `t_permission` VALUES ('126', '删除', null, 'permission', null, null, '13', '0/1/4/13/', '3', '1', 'moduleThree:delete');
INSERT INTO `t_permission` VALUES ('134', '制作试卷/作业', '4', 'menu', '/addTaskQuestions', null, '4', '0/1/4/', '2', '1', null);
INSERT INTO `t_permission` VALUES ('135', '错题本', null, 'menu', '/wrongTitle', null, '3', '0/1/3/', '2', '1', null);
INSERT INTO `t_permission` VALUES ('137', '题库管理', '7', 'menu', '/qbmanager', null, '4', '0/1/4/', '2', '1', null);
INSERT INTO `t_permission` VALUES ('138', 'admin', null, 'permission', null, null, '137', '0/1/4/137/', '3', '1', '');
INSERT INTO `t_permission` VALUES ('139', '录入三维试题', '2', 'menu', '/questionsInput', null, '4', '0/1/4/', '2', '1', null);
INSERT INTO `t_permission` VALUES ('140', '作业列表', '6', 'menu', '/ jobList', null, '4', '0/1/4/', '2', '1', null);
INSERT INTO `t_permission` VALUES ('141', '添加系统用户', '4', 'menu', '/sysUser', null, '2', '0/1/2/', '2', '1', 'sysUser:');
INSERT INTO `t_permission` VALUES ('142', '创建班课', '3', 'menu', '/createClass', null, '4', '0/1/4/', '2', '1', null);
INSERT INTO `t_permission` VALUES ('143', '删除', null, 'permission', null, null, '142', '0/1/4/142/', '3', '1', 'createClass:delete');
INSERT INTO `t_permission` VALUES ('144', '学生信息管理', null, 'menu', '/stuinfo', null, '2', '0/1/2/', '2', '1', null);
INSERT INTO `t_permission` VALUES ('145', '布置作业', '5', 'menu', '/homework', null, '4', '0/1/4/', '2', '1', null);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `available` varchar(10) DEFAULT NULL COMMENT '是否可用,1：可用，0不可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '管理员', 'true');
INSERT INTO `t_role` VALUES ('2', '代课老师', 'true');
INSERT INTO `t_role` VALUES ('3', '学生', 'true');
INSERT INTO `t_role` VALUES ('22', '游客', 'true');

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sys_role_id` int(11) NOT NULL COMMENT '角色id',
  `sys_permission_id` bigint(20) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=478 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('9', '1', '2');
INSERT INTO `t_role_permission` VALUES ('10', '1', '3');
INSERT INTO `t_role_permission` VALUES ('12', '1', '5');
INSERT INTO `t_role_permission` VALUES ('28', '1', '11');
INSERT INTO `t_role_permission` VALUES ('55', '1', '6');
INSERT INTO `t_role_permission` VALUES ('56', '1', '22');
INSERT INTO `t_role_permission` VALUES ('71', '1', '17');
INSERT INTO `t_role_permission` VALUES ('75', '1', '21');
INSERT INTO `t_role_permission` VALUES ('76', '1', '4');
INSERT INTO `t_role_permission` VALUES ('91', '1', '12');
INSERT INTO `t_role_permission` VALUES ('92', '1', '13');
INSERT INTO `t_role_permission` VALUES ('93', '1', '14');
INSERT INTO `t_role_permission` VALUES ('94', '1', '23');
INSERT INTO `t_role_permission` VALUES ('95', '1', '24');
INSERT INTO `t_role_permission` VALUES ('96', '1', '25');
INSERT INTO `t_role_permission` VALUES ('98', '1', '20');
INSERT INTO `t_role_permission` VALUES ('100', '1', '26');
INSERT INTO `t_role_permission` VALUES ('101', '1', '27');
INSERT INTO `t_role_permission` VALUES ('102', '1', '28');
INSERT INTO `t_role_permission` VALUES ('103', '1', '29');
INSERT INTO `t_role_permission` VALUES ('104', '1', '30');
INSERT INTO `t_role_permission` VALUES ('105', '1', '31');
INSERT INTO `t_role_permission` VALUES ('106', '1', '32');
INSERT INTO `t_role_permission` VALUES ('107', '1', '33');
INSERT INTO `t_role_permission` VALUES ('108', '1', '34');
INSERT INTO `t_role_permission` VALUES ('109', '1', '35');
INSERT INTO `t_role_permission` VALUES ('110', '1', '36');
INSERT INTO `t_role_permission` VALUES ('111', '1', '37');
INSERT INTO `t_role_permission` VALUES ('112', '1', '38');
INSERT INTO `t_role_permission` VALUES ('113', '1', '39');
INSERT INTO `t_role_permission` VALUES ('114', '1', '40');
INSERT INTO `t_role_permission` VALUES ('115', '1', '41');
INSERT INTO `t_role_permission` VALUES ('116', '1', '42');
INSERT INTO `t_role_permission` VALUES ('117', '1', '43');
INSERT INTO `t_role_permission` VALUES ('119', '1', '45');
INSERT INTO `t_role_permission` VALUES ('121', '1', '47');
INSERT INTO `t_role_permission` VALUES ('122', '1', '49');
INSERT INTO `t_role_permission` VALUES ('123', '1', '48');
INSERT INTO `t_role_permission` VALUES ('124', '1', '50');
INSERT INTO `t_role_permission` VALUES ('126', '1', '52');
INSERT INTO `t_role_permission` VALUES ('127', '1', '53');
INSERT INTO `t_role_permission` VALUES ('131', '3', '15');
INSERT INTO `t_role_permission` VALUES ('133', '1', '57');
INSERT INTO `t_role_permission` VALUES ('134', '1', '58');
INSERT INTO `t_role_permission` VALUES ('135', '1', '59');
INSERT INTO `t_role_permission` VALUES ('136', '1', '56');
INSERT INTO `t_role_permission` VALUES ('139', '1', '51');
INSERT INTO `t_role_permission` VALUES ('140', '3', '60');
INSERT INTO `t_role_permission` VALUES ('141', '1', '61');
INSERT INTO `t_role_permission` VALUES ('142', '1', '62');
INSERT INTO `t_role_permission` VALUES ('143', '4', '12');
INSERT INTO `t_role_permission` VALUES ('148', '4', '15');
INSERT INTO `t_role_permission` VALUES ('150', '4', '18');
INSERT INTO `t_role_permission` VALUES ('163', '2', '48');
INSERT INTO `t_role_permission` VALUES ('166', '3', '63');
INSERT INTO `t_role_permission` VALUES ('167', '3', '64');
INSERT INTO `t_role_permission` VALUES ('168', '1', '65');
INSERT INTO `t_role_permission` VALUES ('169', '1', '67');
INSERT INTO `t_role_permission` VALUES ('170', '1', '66');
INSERT INTO `t_role_permission` VALUES ('171', '1', '68');
INSERT INTO `t_role_permission` VALUES ('172', '1', '69');
INSERT INTO `t_role_permission` VALUES ('173', '1', '70');
INSERT INTO `t_role_permission` VALUES ('174', '6', '12');
INSERT INTO `t_role_permission` VALUES ('175', '6', '13');
INSERT INTO `t_role_permission` VALUES ('176', '6', '66');
INSERT INTO `t_role_permission` VALUES ('177', '6', '14');
INSERT INTO `t_role_permission` VALUES ('178', '6', '58');
INSERT INTO `t_role_permission` VALUES ('179', '6', '59');
INSERT INTO `t_role_permission` VALUES ('180', '6', '49');
INSERT INTO `t_role_permission` VALUES ('181', '6', '68');
INSERT INTO `t_role_permission` VALUES ('182', '6', '50');
INSERT INTO `t_role_permission` VALUES ('183', '6', '61');
INSERT INTO `t_role_permission` VALUES ('184', '6', '69');
INSERT INTO `t_role_permission` VALUES ('185', '6', '51');
INSERT INTO `t_role_permission` VALUES ('186', '6', '62');
INSERT INTO `t_role_permission` VALUES ('187', '6', '70');
INSERT INTO `t_role_permission` VALUES ('188', '6', '65');
INSERT INTO `t_role_permission` VALUES ('189', '6', '67');
INSERT INTO `t_role_permission` VALUES ('191', '4', '48');
INSERT INTO `t_role_permission` VALUES ('206', '14', '15');
INSERT INTO `t_role_permission` VALUES ('227', '14', '12');
INSERT INTO `t_role_permission` VALUES ('228', '14', '13');
INSERT INTO `t_role_permission` VALUES ('229', '14', '14');
INSERT INTO `t_role_permission` VALUES ('230', '14', '58');
INSERT INTO `t_role_permission` VALUES ('231', '14', '59');
INSERT INTO `t_role_permission` VALUES ('232', '14', '49');
INSERT INTO `t_role_permission` VALUES ('233', '14', '50');
INSERT INTO `t_role_permission` VALUES ('234', '14', '61');
INSERT INTO `t_role_permission` VALUES ('235', '14', '51');
INSERT INTO `t_role_permission` VALUES ('236', '14', '62');
INSERT INTO `t_role_permission` VALUES ('237', '14', '65');
INSERT INTO `t_role_permission` VALUES ('238', '14', '2');
INSERT INTO `t_role_permission` VALUES ('239', '14', '11');
INSERT INTO `t_role_permission` VALUES ('240', '14', '6');
INSERT INTO `t_role_permission` VALUES ('241', '14', '57');
INSERT INTO `t_role_permission` VALUES ('242', '14', '47');
INSERT INTO `t_role_permission` VALUES ('243', '14', '26');
INSERT INTO `t_role_permission` VALUES ('244', '14', '48');
INSERT INTO `t_role_permission` VALUES ('245', '14', '16');
INSERT INTO `t_role_permission` VALUES ('246', '14', '27');
INSERT INTO `t_role_permission` VALUES ('247', '14', '17');
INSERT INTO `t_role_permission` VALUES ('248', '14', '18');
INSERT INTO `t_role_permission` VALUES ('249', '14', '19');
INSERT INTO `t_role_permission` VALUES ('250', '14', '52');
INSERT INTO `t_role_permission` VALUES ('251', '14', '20');
INSERT INTO `t_role_permission` VALUES ('252', '14', '31');
INSERT INTO `t_role_permission` VALUES ('253', '14', '53');
INSERT INTO `t_role_permission` VALUES ('254', '14', '21');
INSERT INTO `t_role_permission` VALUES ('255', '9', '12');
INSERT INTO `t_role_permission` VALUES ('260', '2', '59');
INSERT INTO `t_role_permission` VALUES ('266', '2', '21');
INSERT INTO `t_role_permission` VALUES ('267', '3', '71');
INSERT INTO `t_role_permission` VALUES ('268', '9', '58');
INSERT INTO `t_role_permission` VALUES ('270', '9', '50');
INSERT INTO `t_role_permission` VALUES ('271', '9', '51');
INSERT INTO `t_role_permission` VALUES ('272', '9', '15');
INSERT INTO `t_role_permission` VALUES ('274', '9', '48');
INSERT INTO `t_role_permission` VALUES ('275', '9', '18');
INSERT INTO `t_role_permission` VALUES ('279', '2', '49');
INSERT INTO `t_role_permission` VALUES ('283', '2', '47');
INSERT INTO `t_role_permission` VALUES ('285', '4', '50');
INSERT INTO `t_role_permission` VALUES ('286', '4', '51');
INSERT INTO `t_role_permission` VALUES ('287', '4', '47');
INSERT INTO `t_role_permission` VALUES ('289', '9', '47');
INSERT INTO `t_role_permission` VALUES ('290', '4', '58');
INSERT INTO `t_role_permission` VALUES ('291', '1', '72');
INSERT INTO `t_role_permission` VALUES ('292', '1', '73');
INSERT INTO `t_role_permission` VALUES ('293', '1', '74');
INSERT INTO `t_role_permission` VALUES ('294', '1', '77');
INSERT INTO `t_role_permission` VALUES ('295', '1', '78');
INSERT INTO `t_role_permission` VALUES ('296', '1', '75');
INSERT INTO `t_role_permission` VALUES ('297', '1', '76');
INSERT INTO `t_role_permission` VALUES ('299', '11', '12');
INSERT INTO `t_role_permission` VALUES ('300', '11', '50');
INSERT INTO `t_role_permission` VALUES ('301', '11', '51');
INSERT INTO `t_role_permission` VALUES ('302', '11', '15');
INSERT INTO `t_role_permission` VALUES ('303', '11', '47');
INSERT INTO `t_role_permission` VALUES ('304', '11', '78');
INSERT INTO `t_role_permission` VALUES ('305', '11', '48');
INSERT INTO `t_role_permission` VALUES ('306', '11', '18');
INSERT INTO `t_role_permission` VALUES ('307', '4', '79');
INSERT INTO `t_role_permission` VALUES ('308', '4', '79');
INSERT INTO `t_role_permission` VALUES ('321', '1', '80');
INSERT INTO `t_role_permission` VALUES ('322', '1', '81');
INSERT INTO `t_role_permission` VALUES ('323', '1', '82');
INSERT INTO `t_role_permission` VALUES ('324', '1', '83');
INSERT INTO `t_role_permission` VALUES ('325', '1', '84');
INSERT INTO `t_role_permission` VALUES ('326', '1', '85');
INSERT INTO `t_role_permission` VALUES ('327', '1', '86');
INSERT INTO `t_role_permission` VALUES ('328', '1', '87');
INSERT INTO `t_role_permission` VALUES ('329', '1', '88');
INSERT INTO `t_role_permission` VALUES ('330', '19', '12');
INSERT INTO `t_role_permission` VALUES ('331', '19', '14');
INSERT INTO `t_role_permission` VALUES ('332', '19', '58');
INSERT INTO `t_role_permission` VALUES ('333', '19', '59');
INSERT INTO `t_role_permission` VALUES ('334', '19', '50');
INSERT INTO `t_role_permission` VALUES ('335', '19', '51');
INSERT INTO `t_role_permission` VALUES ('336', '19', '15');
INSERT INTO `t_role_permission` VALUES ('337', '19', '47');
INSERT INTO `t_role_permission` VALUES ('338', '19', '78');
INSERT INTO `t_role_permission` VALUES ('339', '19', '48');
INSERT INTO `t_role_permission` VALUES ('340', '19', '79');
INSERT INTO `t_role_permission` VALUES ('341', '19', '80');
INSERT INTO `t_role_permission` VALUES ('342', '19', '81');
INSERT INTO `t_role_permission` VALUES ('343', '19', '82');
INSERT INTO `t_role_permission` VALUES ('344', '19', '85');
INSERT INTO `t_role_permission` VALUES ('345', '19', '18');
INSERT INTO `t_role_permission` VALUES ('346', '19', '72');
INSERT INTO `t_role_permission` VALUES ('347', '19', '74');
INSERT INTO `t_role_permission` VALUES ('348', '17', '12');
INSERT INTO `t_role_permission` VALUES ('349', '17', '14');
INSERT INTO `t_role_permission` VALUES ('350', '17', '58');
INSERT INTO `t_role_permission` VALUES ('351', '17', '59');
INSERT INTO `t_role_permission` VALUES ('352', '17', '49');
INSERT INTO `t_role_permission` VALUES ('353', '17', '50');
INSERT INTO `t_role_permission` VALUES ('354', '17', '62');
INSERT INTO `t_role_permission` VALUES ('355', '17', '15');
INSERT INTO `t_role_permission` VALUES ('356', '17', '47');
INSERT INTO `t_role_permission` VALUES ('357', '17', '78');
INSERT INTO `t_role_permission` VALUES ('358', '17', '48');
INSERT INTO `t_role_permission` VALUES ('359', '17', '18');
INSERT INTO `t_role_permission` VALUES ('360', '17', '72');
INSERT INTO `t_role_permission` VALUES ('361', '17', '74');
INSERT INTO `t_role_permission` VALUES ('362', '18', '12');
INSERT INTO `t_role_permission` VALUES ('363', '18', '58');
INSERT INTO `t_role_permission` VALUES ('364', '18', '50');
INSERT INTO `t_role_permission` VALUES ('365', '18', '61');
INSERT INTO `t_role_permission` VALUES ('366', '18', '15');
INSERT INTO `t_role_permission` VALUES ('367', '18', '47');
INSERT INTO `t_role_permission` VALUES ('368', '18', '78');
INSERT INTO `t_role_permission` VALUES ('369', '18', '48');
INSERT INTO `t_role_permission` VALUES ('370', '18', '83');
INSERT INTO `t_role_permission` VALUES ('371', '18', '84');
INSERT INTO `t_role_permission` VALUES ('372', '18', '86');
INSERT INTO `t_role_permission` VALUES ('373', '18', '87');
INSERT INTO `t_role_permission` VALUES ('374', '18', '18');
INSERT INTO `t_role_permission` VALUES ('375', '18', '72');
INSERT INTO `t_role_permission` VALUES ('376', '18', '74');
INSERT INTO `t_role_permission` VALUES ('377', '20', '12');
INSERT INTO `t_role_permission` VALUES ('378', '20', '13');
INSERT INTO `t_role_permission` VALUES ('379', '20', '14');
INSERT INTO `t_role_permission` VALUES ('380', '20', '58');
INSERT INTO `t_role_permission` VALUES ('381', '20', '59');
INSERT INTO `t_role_permission` VALUES ('382', '20', '49');
INSERT INTO `t_role_permission` VALUES ('383', '20', '50');
INSERT INTO `t_role_permission` VALUES ('384', '20', '51');
INSERT INTO `t_role_permission` VALUES ('385', '20', '62');
INSERT INTO `t_role_permission` VALUES ('386', '20', '65');
INSERT INTO `t_role_permission` VALUES ('387', '20', '15');
INSERT INTO `t_role_permission` VALUES ('388', '20', '47');
INSERT INTO `t_role_permission` VALUES ('389', '20', '77');
INSERT INTO `t_role_permission` VALUES ('390', '20', '78');
INSERT INTO `t_role_permission` VALUES ('391', '20', '75');
INSERT INTO `t_role_permission` VALUES ('392', '20', '76');
INSERT INTO `t_role_permission` VALUES ('393', '20', '48');
INSERT INTO `t_role_permission` VALUES ('394', '20', '18');
INSERT INTO `t_role_permission` VALUES ('395', '20', '72');
INSERT INTO `t_role_permission` VALUES ('396', '20', '74');
INSERT INTO `t_role_permission` VALUES ('397', '20', '21');
INSERT INTO `t_role_permission` VALUES ('398', '2', '78');
INSERT INTO `t_role_permission` VALUES ('399', '2', '72');
INSERT INTO `t_role_permission` VALUES ('400', '2', '74');
INSERT INTO `t_role_permission` VALUES ('401', '21', '12');
INSERT INTO `t_role_permission` VALUES ('402', '21', '58');
INSERT INTO `t_role_permission` VALUES ('403', '21', '49');
INSERT INTO `t_role_permission` VALUES ('404', '21', '50');
INSERT INTO `t_role_permission` VALUES ('405', '21', '15');
INSERT INTO `t_role_permission` VALUES ('406', '21', '47');
INSERT INTO `t_role_permission` VALUES ('407', '21', '78');
INSERT INTO `t_role_permission` VALUES ('408', '21', '48');
INSERT INTO `t_role_permission` VALUES ('409', '21', '18');
INSERT INTO `t_role_permission` VALUES ('410', '21', '72');
INSERT INTO `t_role_permission` VALUES ('411', '21', '74');
INSERT INTO `t_role_permission` VALUES ('412', '20', '52');
INSERT INTO `t_role_permission` VALUES ('413', '1', '120');
INSERT INTO `t_role_permission` VALUES ('414', '1', '79');
INSERT INTO `t_role_permission` VALUES ('415', '1', '121');
INSERT INTO `t_role_permission` VALUES ('416', '20', '121');
INSERT INTO `t_role_permission` VALUES ('417', '20', '79');
INSERT INTO `t_role_permission` VALUES ('418', '20', '80');
INSERT INTO `t_role_permission` VALUES ('419', '20', '81');
INSERT INTO `t_role_permission` VALUES ('420', '20', '82');
INSERT INTO `t_role_permission` VALUES ('421', '20', '83');
INSERT INTO `t_role_permission` VALUES ('422', '20', '84');
INSERT INTO `t_role_permission` VALUES ('423', '20', '85');
INSERT INTO `t_role_permission` VALUES ('424', '20', '86');
INSERT INTO `t_role_permission` VALUES ('425', '20', '87');
INSERT INTO `t_role_permission` VALUES ('426', '1', '71');
INSERT INTO `t_role_permission` VALUES ('427', '19', '49');
INSERT INTO `t_role_permission` VALUES ('428', '1', '89');
INSERT INTO `t_role_permission` VALUES ('429', '1', '122');
INSERT INTO `t_role_permission` VALUES ('430', '1', '44');
INSERT INTO `t_role_permission` VALUES ('431', '1', '46');
INSERT INTO `t_role_permission` VALUES ('433', '1', '8');
INSERT INTO `t_role_permission` VALUES ('434', '1', '9');
INSERT INTO `t_role_permission` VALUES ('437', '2', '3');
INSERT INTO `t_role_permission` VALUES ('441', '2', '4');
INSERT INTO `t_role_permission` VALUES ('442', '2', '13');
INSERT INTO `t_role_permission` VALUES ('443', '22', '3');
INSERT INTO `t_role_permission` VALUES ('444', '22', '17');
INSERT INTO `t_role_permission` VALUES ('448', '1', '124');
INSERT INTO `t_role_permission` VALUES ('449', '1', '125');
INSERT INTO `t_role_permission` VALUES ('450', '1', '126');
INSERT INTO `t_role_permission` VALUES ('451', '1', '127');
INSERT INTO `t_role_permission` VALUES ('454', '1', '132');
INSERT INTO `t_role_permission` VALUES ('455', '1', '134');
INSERT INTO `t_role_permission` VALUES ('456', '1', '135');
INSERT INTO `t_role_permission` VALUES ('457', '1', '137');
INSERT INTO `t_role_permission` VALUES ('458', '1', '139');
INSERT INTO `t_role_permission` VALUES ('459', '3', '3');
INSERT INTO `t_role_permission` VALUES ('460', '3', '135');
INSERT INTO `t_role_permission` VALUES ('461', '3', '17');
INSERT INTO `t_role_permission` VALUES ('465', '1', '140');
INSERT INTO `t_role_permission` VALUES ('466', '2', '140');
INSERT INTO `t_role_permission` VALUES ('467', '2', '124');
INSERT INTO `t_role_permission` VALUES ('468', '2', '125');
INSERT INTO `t_role_permission` VALUES ('469', '2', '126');
INSERT INTO `t_role_permission` VALUES ('470', '2', '134');
INSERT INTO `t_role_permission` VALUES ('471', '1', '141');
INSERT INTO `t_role_permission` VALUES ('472', '1', '142');
INSERT INTO `t_role_permission` VALUES ('473', '2', '142');
INSERT INTO `t_role_permission` VALUES ('474', '1', '143');
INSERT INTO `t_role_permission` VALUES ('475', '1', '144');
INSERT INTO `t_role_permission` VALUES ('476', '2', '145');
INSERT INTO `t_role_permission` VALUES ('477', '1', '145');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '1',
  `name` varchar(20) DEFAULT NULL,
  `staff` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('admin', 'admin', '1', '1', '管理员 ', '管理员', '15378290876', '784938726@qq.com');
INSERT INTO `t_user` VALUES ('007', '123456', '2', '1', '老王', '教师', '1333311313', null);
INSERT INTO `t_user` VALUES ('008', '123456', '3', '1', '老李', '学生', '', '');
INSERT INTO `t_user` VALUES ('333222', '123456', '3', '1', '老李', '学生', '13541242', '');
INSERT INTO `t_user` VALUES ('1111ssss', '123456', '3', '1', 's1', '学生', '15666232345', '');
INSERT INTO `t_user` VALUES ('13123ss', '123456', '3', '1', 's2', '学生', '1566632345', '');
INSERT INTO `t_user` VALUES ('qqweqwe', '123456', '3', '1', 's3', '学生', '15666325', '');
INSERT INTO `t_user` VALUES ('13141414', '123456', '3', '1', 'S4', '学生', '15666213325', '');
INSERT INTO `t_user` VALUES ('13141414', '123456', '3', '1', 's6', '学生', '156662113325', '');
INSERT INTO `t_user` VALUES ('41241', '123456', '3', '1', 'asdf', '学生', '15613325', '');
INSERT INTO `t_user` VALUES ('41242', '123456', '3', '1', '', '学生', '156325', '');
INSERT INTO `t_user` VALUES ('PHXY123', '123456', '3', '1', '王麻子', '学生', '1325', '');
INSERT INTO `t_user` VALUES ('OYXY11221', '123456', '3', '1', '啊', '学生', '1312312325', '');
INSERT INTO `t_user` VALUES ('PHXY342', '123456', '3', '1', '3423', '学生', '13123325', '');
INSERT INTO `t_user` VALUES ('OYXY1255', '123456', '3', '1', '放个假', '学生', '13572994164', '877198316@qq.com');
INSERT INTO `t_user` VALUES ('OYXY1201154', '123456', '3', '1', '林新建', '学生', '18603062369', '');
INSERT INTO `t_user` VALUES ('87123456', '123456', '2', '1', '张大迪', '教师', '02966666666', null);
INSERT INTO `t_user` VALUES ('OYXYSS11111', '123456', '3', '1', 'SS1', '学生', '131231231212325', '');
INSERT INTO `t_user` VALUES ('OYXYSS2222', '123456', '3', '1', 'SS2', '学生', '131231231D212325', '');
INSERT INTO `t_user` VALUES ('OYXY9527', '123456', '3', '1', '白桦', '学生', '15891763311', '');
INSERT INTO `t_user` VALUES ('OYXY1234', '123456', '3', '1', 'asf', '学生', '1311231231D212325', '');
INSERT INTO `t_user` VALUES ('OYXY0002220', '123456', '3', '1', '付鹏', '学生', '18302923057', '');
INSERT INTO `t_user` VALUES ('OYXY15926', '123456', '3', '1', '曼森', '学生', '15702941618', '');
INSERT INTO `t_user` VALUES ('OYXY001', '123456', '3', '1', '刘飞', '学生', '18092058670', '');
INSERT INTO `t_user` VALUES ('OYXY0303', '123456', '3', '1', '张旗旗', '学生', '18329977932', '');
INSERT INTO `t_user` VALUES ('OYXY1233333', '123456', '3', '1', 'fsdf十分的', '学生', '1311231231D2325', '');
INSERT INTO `t_user` VALUES ('OYXY21415', '123456', '3', '1', '饥饿欧冠', '学生', '131122325', '');
INSERT INTO `t_user` VALUES ('OYXY2', '123456', '3', '1', '李飞', '学生', '18092058670', '');
INSERT INTO `t_user` VALUES ('GZZYYDXcscscs123', '123456', '3', '1', '测试', '学生', '132325', '');
INSERT INTO `t_user` VALUES ('XXW', '123456', '2', '1', '许小武', '教师', '13580439905', 'xujf868@163.com');
INSERT INTO `t_user` VALUES ('977986310', '123456', '3', '1', 'Lance', '学生', '15291194274', '977986310@qq.com');
INSERT INTO `t_user` VALUES ('9779866311111', '123456', '3', '1', 'Lance00', '学生', '231230231561sdsf13', null);
INSERT INTO `t_user` VALUES ('9779866331000', '123456', '3', '1', 'Lance', '学生', '23123000023156113', null);
INSERT INTO `t_user` VALUES ('9770009866331000', '123456', '3', '1', 'Lance', '学生', '15615611', '');
INSERT INTO `t_user` VALUES ('9776331000', '123456', '3', '1', 'Lance', '学生', '1561500611', '');
INSERT INTO `t_user` VALUES ('977633105500', '123456', '3', '1', 'Lance', '学生', '1789670611', '');
INSERT INTO `t_user` VALUES ('GZZYYDX27', '123456', '3', '1', '陆星', '学生', '13312513916', '');
INSERT INTO `t_user` VALUES ('GZZYYDX19959790509', '123456', '3', '1', '吴友爱', '学生', '13459586477', '');
INSERT INTO `t_user` VALUES ('OYXY2000', '123456', '3', '1', '普华顺', '学生', '17687062056', '');
INSERT INTO `t_user` VALUES ('OYXY20171401285', '123456', '3', '1', '陈烨', '学生', '18111983006', '');
INSERT INTO `t_user` VALUES ('GZZYYDX01', '123456', '3', '1', '张一博', '学生', '13039038585', '');
INSERT INTO `t_user` VALUES ('OYXY17149014035', '123456', '3', '1', '张俊辉', '学生', '', '1264068846@qq.com');
INSERT INTO `t_user` VALUES ('GZZYYDX201712731597', '123456', '3', '1', '吴美林', '学生', '18777203651', '');
INSERT INTO `t_user` VALUES ('GZZYYDX这就是结局', '123456', '3', '1', '刘海龙', '学生', '18866287285', '');
INSERT INTO `t_user` VALUES ('4asd242', '123456', '3', '1', '', '学生', '156123123325', '');
INSERT INTO `t_user` VALUES ('sasd242', '123456', '3', '1', null, '学生', '17629029506', '');
INSERT INTO `t_user` VALUES ('GZZYYDX9968', '123456', '3', '1', '噜噜噜噜', '学生', '17789865284', '');
INSERT INTO `t_user` VALUES ('GZZYYDX171540120', '123456', '3', '1', '李晨熙', '学生', '17639375994', '');
INSERT INTO `t_user` VALUES ('OYXY2017101012029', '123456', '3', '1', '喻旺', '学生', '13467907981', '');
INSERT INTO `t_user` VALUES ('GZZYYDX123456', '123456', '3', '1', '于哥', '学生', '18343025300', '');
INSERT INTO `t_user` VALUES ('GZZYYDX41', '123456', '3', '1', '赵思远', '学生', '13962072463', '');
INSERT INTO `t_user` VALUES ('GZZYYDX001', '123456', '3', '1', '那顺', '学生', '18648518279', '');
INSERT INTO `t_user` VALUES ('OYXY2234', '123456', '3', '1', '朱秀宝', '学生', '15888088444', '');
INSERT INTO `t_user` VALUES ('OYXY002', '123456', '3', '1', '杨颖', '学生', '13117838780', '');
INSERT INTO `t_user` VALUES ('OYXY45', '123456', '3', '1', '黄赵明', '学生', '13421693993', '');
INSERT INTO `t_user` VALUES ('OYXY2585', '123456', '3', '1', '李海英', '学生', '18108822696', '');
INSERT INTO `t_user` VALUES ('OYXY17120150811', '123456', '3', '1', '陈奇玉', '学生', '15772035450', '');
INSERT INTO `t_user` VALUES ('PHXY37B1170117', '123456', '3', '1', '刘明瑄', '学生', '18891184285', '');
INSERT INTO `t_user` VALUES ('GZZYYDX1300701280', '123456', '3', '1', '晓莫', '学生', '', 'wwwmoqiang@163.com');
INSERT INTO `t_user` VALUES ('OYXYddddddd22222222', '123456', '3', '1', 'ddddddddd', '学生', '131232123131', '');
INSERT INTO `t_user` VALUES ('OYXY15885443646', '123456', '3', '1', 'luo12', '学生', '15885443646', '');
INSERT INTO `t_user` VALUES ('OYXY105', '123456', '3', '1', '规格', '学生', '17788697677', '');
INSERT INTO `t_user` VALUES ('GZZYYDX69330', '123456', '3', '1', '刘志望', '学生', '18358870739', '');
INSERT INTO `t_user` VALUES ('GZZYYDX36', '123456', '3', '1', '陈鑫', '学生', '17602814314', '');
INSERT INTO `t_user` VALUES ('OYXY一朵花', '123456', '3', '1', '李女士', '学生', '15284091048', '');
INSERT INTO `t_user` VALUES ('OYXY13691926353', '123456', '3', '1', '李家晓', '学生', '13691926353', '');
INSERT INTO `t_user` VALUES ('GZZYYDX123321', '123456', '3', '1', '王云', '学生', '15585740656', '');
INSERT INTO `t_user` VALUES ('OYXY0067', '123456', '3', '1', '李刚', '学生', '15032006146', '');
INSERT INTO `t_user` VALUES ('OYXY123456', '123456', '3', '1', '没没没', '学生', '13660513636', '');
INSERT INTO `t_user` VALUES ('OYXY225634', '123456', '3', '1', '娜娜', '学生', '15093295103', '');
INSERT INTO `t_user` VALUES ('PHXY1411351082', '123456', '3', '1', '吴川发', '学生', '13599094150', '');
INSERT INTO `t_user` VALUES ('PHXY200910344', '123456', '3', '1', '古涛', '学生', '15135762899', '');
INSERT INTO `t_user` VALUES ('OYXY14511504170116', '123456', '3', '1', '贺静', '学生', '18092318394', '');
INSERT INTO `t_user` VALUES ('OYXY111', '123456', '3', '1', '吴丽', '学生', '13969577761', '');
INSERT INTO `t_user` VALUES ('OYXY666666', '123456', '3', '1', '卯赛', '学生', '17585676056', '');
INSERT INTO `t_user` VALUES ('PHXY150', '123456', '3', '1', '李博', '学生', '18295727738', '');
INSERT INTO `t_user` VALUES ('GZZYYDX270918', '123456', '3', '1', '郑斌', '学生', '13349270918', '');
INSERT INTO `t_user` VALUES ('OYXY112', '123456', '3', '1', '谢训涛', '学生', '15279372003', '');
INSERT INTO `t_user` VALUES ('OYXY28', '123456', '3', '1', '陈', '学生', '18750174190', '');
INSERT INTO `t_user` VALUES ('OYXYo6', '123456', '3', '1', '冯永刚', '学生', '13782768948', '');
INSERT INTO `t_user` VALUES ('GZZYYDX122368', '123456', '3', '1', '蔡循根', '学生', '13738513859', '');
INSERT INTO `t_user` VALUES ('OYXY2175110552', '123456', '3', '1', '常家丽', '学生', '15662197191', '');
INSERT INTO `t_user` VALUES ('OYXY2017222977', '123456', '3', '1', '冀海捷', '学生', '18875210200', '');
INSERT INTO `t_user` VALUES ('GZZYYDX801016', '123456', '3', '1', '孙建春', '学生', '', '');
INSERT INTO `t_user` VALUES ('GZZYYDX0124', '123456', '3', '1', '王亮', '学生', '18686745989', '');
INSERT INTO `t_user` VALUES ('OYXY00075', '123456', '3', '1', '韩文清', '学生', '15650035230', '');
INSERT INTO `t_user` VALUES ('OYXY23255', '123456', '3', '1', '魏世召', '学生', '13459283914', '');
INSERT INTO `t_user` VALUES ('GZZYYDX45285', '123456', '3', '1', '马俊', '学生', '15034019685', '');
INSERT INTO `t_user` VALUES ('GZZYYDX20011029', '123456', '3', '1', '杨斌', '学生', '13919123567', '');
INSERT INTO `t_user` VALUES ('OYXY1122', '123456', '3', '1', '毕研新', '学生', '15863591206', '');
INSERT INTO `t_user` VALUES ('GZZYYDX1', '123456', '3', '1', '崔盛博', '学生', '13050506282', '');
INSERT INTO `t_user` VALUES ('OYXY1001', '123456', '3', '1', '魏晓明', '学生', '13389785588', '');
INSERT INTO `t_user` VALUES ('GZZYYDX1515260012', '123456', '3', '1', '郑汉祥', '学生', '15902794331', '');
INSERT INTO `t_user` VALUES ('OYXY谭立情', '123456', '3', '1', '谭立情', '学生', '15906224963', '');
INSERT INTO `t_user` VALUES ('OYXY12356', '123456', '3', '1', '任乐', '学生', '13693738461', '');
INSERT INTO `t_user` VALUES ('OYXY211605040037', '123456', '3', '1', '杨金艳', '学生', '18722959984', '');
INSERT INTO `t_user` VALUES ('GZZYYDXO1', '123456', '3', '1', '李菊', '学生', '18324692529', '');
INSERT INTO `t_user` VALUES ('OYXY160119051', '123456', '3', '1', '杨继业', '学生', '17718046771', '');
INSERT INTO `t_user` VALUES ('OYXY201701105075', '123456', '3', '1', '田佳鹏', '学生', '17398420941', '');
INSERT INTO `t_user` VALUES ('GZZYYDX20162588', '123456', '3', '1', '敏丽', '学生', '13319746516', '');
INSERT INTO `t_user` VALUES ('OYXY2201160126', '123456', '3', '1', '唐琦', '学生', '18273181683', '');
INSERT INTO `t_user` VALUES ('OYXY32158', '123456', '3', '1', '张先生', '学生', '18182622787', '');
INSERT INTO `t_user` VALUES ('GZZYYDX2016328184', '123456', '3', '1', '王数', '学生', '18744998292', '');
INSERT INTO `t_user` VALUES ('OYXY1200', '123456', '3', '1', '莫明', '学生', '18062505691', '');
INSERT INTO `t_user` VALUES ('OYXY2016020104', '123456', '3', '1', '陈伟峰', '学生', '', '2459061817@qq.com');
INSERT INTO `t_user` VALUES ('OYXY2017101086', '123456', '3', '1', '石佳飞', '学生', '18834186321', '');
INSERT INTO `t_user` VALUES ('OYXY8866', '123456', '3', '1', '马静', '学生', '13969392399', '');
INSERT INTO `t_user` VALUES ('OYXY201710601044', '123456', '3', '1', '周鑫', '学生', '17862098901', '');
INSERT INTO `t_user` VALUES ('OYXY26', '123456', '3', '1', '高庆', '学生', '18758150183', '');
INSERT INTO `t_user` VALUES ('OYXY623', '123456', '3', '1', '李雷', '学生', '17072776290', '');
INSERT INTO `t_user` VALUES ('OYXY20180101', '123456', '3', '1', '姜衍青', '学生', '15264319953', '');
INSERT INTO `t_user` VALUES ('GZZYYDX002', '123456', '3', '1', '赵小雨', '学生', '18332575854', '');
INSERT INTO `t_user` VALUES ('OYXY041600', '123456', '3', '1', '李泽春', '学生', '13653439782', '');
INSERT INTO `t_user` VALUES ('OYXY13005814', '123456', '3', '1', '雷英', '学生', '', '1101528178@qq.com');
INSERT INTO `t_user` VALUES ('GZZYYDX02581', '123456', '3', '1', '董建明', '学生', '18814323070', '');
