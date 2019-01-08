/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.168
Source Server Version : 50722
Source Host           : 192.168.1.168:3306
Source Database       : art_basic_admin_authorityz

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2019-01-05 18:35:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `real_name` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `uname` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `is_have_admin` int(11) DEFAULT '0' COMMENT '是否拥有管理员所有权限  0 没有   1 是的',
  `is_disabled` int(11) DEFAULT '0' COMMENT '是否禁用  0 没有   1 是的',
  `rolesz` varchar(255) DEFAULT NULL COMMENT '角色 描述 ； 比如 管理员',
  `authorityz` varchar(1000) DEFAULT NULL COMMENT '角色 描述 ； 比如 管理员',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `modify_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='平台管理员  表';

-- ----------------------------
-- Records of admin_info
-- ----------------------------
INSERT INTO `admin_info` VALUES ('1', '小小路飞', '路飞', 'admin', '123456', 'uuiadmin007', null, '0', '2', '1,2', null, null, null, null);
INSERT INTO `admin_info` VALUES ('2', null, null, 'u1', '123456', 'UUIDaminccfa0f842d9c436d9c53b71262a0b2db', null, '0', null, null, null, null, null, null);
INSERT INTO `admin_info` VALUES ('3', null, null, 'u2', '123456', 'UUIDamin44d089e5cc104778be2848daf51e8546', null, '0', '2', '2,3,4,5,6', null, null, null, null);

-- ----------------------------
-- Table structure for admin_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '昵称',
  `uuid` varchar(255) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL COMMENT '权限id',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `modify_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='平台管理员  操作 日志 表';

-- ----------------------------
-- Records of admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for admin_menu_url
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu_url`;
CREATE TABLE `admin_menu_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `menu_code` varchar(255) DEFAULT NULL COMMENT ' ',
  `menu_url` varchar(255) DEFAULT NULL COMMENT ' ',
  `menu_desc` varchar(255) DEFAULT NULL COMMENT ' ',
  `image_url` varchar(255) DEFAULT NULL COMMENT '图标url',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `modify_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COMMENT='平台 权限菜单表';

-- ----------------------------
-- Records of admin_menu_url
-- ----------------------------
INSERT INTO `admin_menu_url` VALUES ('1', null, null, '', '账户管理', 'guanli.png', '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('2', null, null, '', '提现管理', 'wodrtix.png', '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('3', null, null, '', '借款管理', 'jiekuan.png', '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('4', null, null, '', '零钱包管理', 'tiyanjin.png', '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('5', null, null, '', '体验金管理', 'buzhidao.png', '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('6', null, null, '', '投资管理', 'touzi.png', '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('7', null, null, '', '运营管理', 'dingqi.png', '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('8', null, null, '', '活动管理', 'dingqi.png', '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('9', null, null, '', '运营报表', 'yunyin.png', '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('10', null, null, '', '统计管理', 'pipei.png', '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('11', null, null, '', '用户管理', 'zijin.png', '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('12', null, null, '', '系统管理', 'rizhi.png', '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('13', null, null, '', '推送管理', 'zijin.png', '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('14', null, null, '', '权限管理', 'quanxian.png', '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('15', '1', null, 'accountSummary/listTop.do', '账户汇总', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('16', '1', null, 'AccountDetailManager/goDetailTop.do', '账户变动记录', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('17', '1', null, 'rechargeLog/listTop.do', '充值记录', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('18', '1', null, 'rechargeExc/queryRechargeExcList.do', '充值异常校对', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('19', '1', null, 'BankCardManager/goBankCardTopp.do', '银行卡维护', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('20', '1', null, 'exceptionCheck/exceptionCheckListTop.do', '异常勾兑', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('21', '1', null, 'banklimitation/goBankLimitation.do', '银行通道限额', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('22', '2', null, 'withDrawalLog/toWithDrawalAuditList.do', '提现待审核', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('23', '2', null, 'withDrawalLog/toWithDrawalReviewList.do', '提现待复核', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('24', '2', null, 'withDrawalLog/toWithDrawalBillList.do', '提现待到账', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('25', '2', null, 'withDrawalLog/toWithDrawalBillOKList.do', '提现已到账', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('26', '2', null, 'withDrawalLog/toDetailByLog.do', '提现未通过', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('27', '2', null, 'withDrawalLog/toWithDrawalMsgLogList.do', '提现短信日志', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('28', '3', null, 'loanRecord/listTop.do', '借款记录', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('29', '3', null, 'repayment/listTop.do', '还本记录', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('30', '3', null, 'alsoInterest/listTop.do', '还息记录', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('31', '3', null, 'collectionRecordsMoney/listTop.do', '本金催收记录', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('32', '3', null, 'collectionRecordsInterest/listTop.do', '利息催收记录', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('33', '3', null, 'borrowChannel/listTop.do', '借款渠道配置', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('34', '3', null, 'borrowRate/listTop.do', '借款利率管理', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('35', '4', null, 'lqbManager/goLqbTop.do', '零钱包', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('36', '4', null, 'LqbLogManager/goLqbLogTop.do', '零钱包变动记录', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('37', '4', null, 'lqbOperationLog/queryLqbOperationLogIndexTop.do', '零钱包操作日志', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('38', '5', null, 'experienceMoneyManager/goExperienceMoneyTop.do', '体验金汇总', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('39', '5', null, 'exmoneydetail/goexmoneydetailTop.do', '体验金变动记录', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('40', '5', null, 'FailureManager/goFailureTop.do', '失败体验金', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('41', '6', null, 'borrower/toBorrowerListTop.do', '贷款客户', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('42', '6', null, 'borrow/toBorrowListTop.do', '定期标发布', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('43', '6', null, 'fullBorrow/toFullBorrowListTop.do', '定期标满标', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('44', '6', null, 'matchBorrow/toMatchBorrowListTop.do', '零钱包匹配标', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('45', '6', null, 'inborrowlog/goinBorrowlogTop.do', '用户投标记录', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('46', '6', null, 'borrowUserChange/borrowUserChangeList.do', '投标债券转让', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('47', '7', null, 'shareLqgLog/listTop.do', '零钱包分享记录', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('48', '7', null, 'ScanCodeManager/goScanCode.do', 'APP微信号维护', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('49', '7', null, 'mediaReport/goMediaReportList.do', '媒体报道', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('50', '7', null, 'mediaReport/goQualificationList.do', '公司资质', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('51', '7', null, 'mediaReport/goVideoLinkList.do', '视频链接', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('52', '7', null, 'shareLqg/list.do', '零钱包分享设置', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('53', '7', null, 'wechatAdmin/toWeChatMenuList.do', '公众号菜单管理', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('54', '7', null, 'wechatAdmin/toWechatAdmin.do', '公众号跳转链接', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('55', '7', null, 'calendarsActivity/goCalendarsActivityList.do', '活动登记信息', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('56', '8', null, 'activity/listTop.do', '活动发布', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('57', '8', null, 'pagePopup/queryPagePopupIndexTop.do', '弹窗信息', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('58', '8', null, 'newsManager/toNewsListTop.do', '消息发布', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('59', '8', null, 'investMoney/investMoneyView.do', '活动抽奖金额设置', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('60', '8', null, 'prize/listTop.do', '活动奖池', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('61', '8', null, 'prizeType/goPrizeTypeList.do', '活动奖品', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('62', '8', null, 'lotteryRecord/listTop.do', '用户中奖记录', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('63', '8', null, 'periods/allPeriods.do', '异常抽奖', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('64', '8', null, 'periods/goQueryAllPeriods.do', '期数列表', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('65', '9', null, 'registerCount/regCount.do', '总注册数据统计', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('66', '9', null, 'registerCount/regDayCount.do', '日注册数据统计', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('67', '9', null, 'registerCount/regWeekCount.do', '周注册数据统计', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('68', '9', null, 'registerCount/regMonthCount.do', '月注册数据统计', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('69', '9', null, 'rechargeCount/recCount.do', '总充值数据统计', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('70', '9', null, 'rechargeCount/recDayCount.do', '日充值数据统计', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('71', '9', null, 'rechargeCount/recWeekCount.do', '周充值数据统计', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('72', '9', null, 'rechargeCount/recMonthCount.do', '月充值数据统计', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('73', '9', null, 'withdrawCount/withCount.do', '总提现数据统计', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('74', '9', null, 'withdrawCount/withDayCount.do', '日提现数据统计', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('75', '9', null, 'withdrawCount/withWeekCount.do', '周提现数据统计', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('76', '9', null, 'withdrawCount/withMonthCount.do', '月提现数据统计', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('77', '10', null, 'appMarket/toAppMarketList.do', '应用市场配置', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('78', '10', null, 'PalteManager/goPalte.do', '推广渠道配置', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('79', '10', null, 'appMarket/toAppMarketUserList.do', '市场来源用户', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('80', '10', null, 'PalteUsersManager/toPlateUsersList.do', '渠道来源用户', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('81', '10', null, 'appMarket/operateMsgLogList.do', '运营短信日志', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('82', '10', null, 'invitation/goDetailTop.do', '邀请注册', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('83', '10', null, 'channeDataAnalysis/listTop.do', '渠道数据分析', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('84', '10', null, 'promotionDataAnalysis/listTop.do', '推广数据分析', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('85', '10', null, 'bindWeChat/listTop.do', '公众号绑定日志', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('86', '11', null, 'userInfo/listTop.do', '用户详情', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('87', '11', null, 'upCustomer/goUpCustomer.do', '用户升档', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('88', '11', null, 'userManager/queryUserSignIndex.do', '用户签到', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('89', '11', null, 'userPoint/toUserPointList.do', '用户积分', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('90', '11', null, 'userFeedback/toUserFeedbackListTop.do', '用户反馈', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('91', '11', null, 'feedbackAutoReply/listTop.do', '自动回复', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('92', '12', null, 'dataDictionary/toDataDictionaryList.do', '数据字典', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('93', '12', null, 'capitaParameterSetting/capitaParameterSettingView.do', '资金参数设置', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('94', '12', null, 'concurrentData/listTop.do', '并发异常', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('95', '12', null, 'accountTotal/listTop.do', '资金校对', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('96', '12', null, 'blackList/toBlackList.do', '手机号码黑名单', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('97', '12', null, 'version/list.do', '版本管理', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('98', '12', null, 'msgtemp/goMsgDetail.do', '短信模板', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('99', '12', null, 'systemOperation/listTop.do', '系统日志', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('100', '12', null, 'UserLog/goUserLogTop.do', '登录日志', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('101', '12', null, 'MsgLogManager/goMsgLogTop.do', '短信日志', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('102', '12', null, 'systemManage/interestRateIndex.do', '当前利率', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('103', '12', null, 'systemManage/upshiftRateIndex.do', '升档利率', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('104', '12', null, 'borrowType/toBorrowTypeList.do', '标状态初始化', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('105', '13', null, 'lableManage/listLable.do', '标签管理', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('106', '13', null, 'lableManage/listLableType.do', '标签类型管理', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('107', '13', null, 'lableManage/goUserLableConfigure.do', '用户标签配置管理', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('108', '13', null, 'newsmoven/listNewsManage.do', '消息任务管理', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('109', '14', null, 'login/toAdministratorList.do', '管理员维护', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('110', '14', null, 'role/roleList.do', '角色管理', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('111', '14', null, 'menu/menuList.do', '菜单管理', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('112', '12', null, 'appMarket/appMarketUserTop.do', '安卓市场发布', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('113', '8', null, 'userManager/queryUserSignIndex.do', '签到活动', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('114', '8', null, 'lotteryRecord/list.do', '中大奖用户', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('115', '5', null, 'experienceMoneyManager/goExperienceMoneyGive.do', '预备体验金', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('116', '8', null, 'turntableAwardLogList/turntableAwardLogList.do', '转盘活动奖品', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('117', '8', null, 'invitation/goExclusiveInvitation.do', '专属邀请', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('118', '8', null, 'invitation/goSetExclusiveUser.do', '设置外围客服', null, '2018-12-27 11:41:17', '-999999', '2018-12-27 11:41:32', '-999999');
INSERT INTO `admin_menu_url` VALUES ('128', null, null, 'action/asdsad/asdasd', '我是大菜单1', '', null, null, null, null);

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_code` varchar(255) DEFAULT NULL COMMENT '角色名字',
  `role_desc` varchar(255) DEFAULT NULL COMMENT '角色 描述 ； 比如 管理员',
  `authorityz` varchar(1000) DEFAULT NULL COMMENT '角色 描述 ； 比如 管理员',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL,
  `modify_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='平台 角色表';

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES ('2', '超级管理员', '超级管理员', '1,3', null, null, null, null);
INSERT INTO `admin_role` VALUES ('3', '客服', '客服', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,', null, null, null, null);
INSERT INTO `admin_role` VALUES ('4', '运营经理', '运营经理', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,', null, null, null, null);
INSERT INTO `admin_role` VALUES ('5', '财务', '财务', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,', null, null, null, null);
INSERT INTO `admin_role` VALUES ('6', '普通管理员', '普通管理员', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,', null, null, null, null);
INSERT INTO `admin_role` VALUES ('7', '活动策划', '活动策划', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,', null, null, null, null);
INSERT INTO `admin_role` VALUES ('8', '文案', '文案', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,', null, null, null, null);
INSERT INTO `admin_role` VALUES ('9', '新媒体', '新媒体', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,', null, null, null, null);
INSERT INTO `admin_role` VALUES ('10', 'APP推广', 'APP推广', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,', null, null, null, null);
INSERT INTO `admin_role` VALUES ('11', '财务主管', '财务主管', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,', null, null, null, null);
INSERT INTO `admin_role` VALUES ('14', null, '新增角色1', '1,2,3,4', null, null, null, null);
