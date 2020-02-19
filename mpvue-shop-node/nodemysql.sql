/*
Navicat MySQL Data Transfer

Source Server         : nodemysql
Source Server Version : 50550
Source Host           : localhost:3306
Source Database       : nodemysql

Target Server Type    : MYSQL
Target Server Version : 50550
File Encoding         : 65001

Date: 2018-08-27 21:43:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for csessioninfo
-- ----------------------------
DROP TABLE IF EXISTS `csessioninfo`;
CREATE TABLE `csessioninfo` (
  `open_id` varchar(100) NOT NULL,
  `uuid` varchar(100) NOT NULL,
  `skey` varchar(100) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_visit_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_key` varchar(100) NOT NULL,
  `user_info` varchar(2048) NOT NULL,
  PRIMARY KEY (`open_id`),
  KEY `openid` (`open_id`) USING BTREE,
  KEY `skey` (`skey`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of csessioninfo
-- ----------------------------
INSERT INTO `csessioninfo` VALUES ('oQmbb4sNZdxaUQZ0sfYgvtOP2S7c', 'cd95be68-60cd-4b81-bbbb-a4e3d7db7b93', '625b0c303a9b54b24abd517f3c01aa36a0ef20a9', '2018-08-03 23:22:01', '2018-08-25 16:08:55', 'a10LPJxiw0q6aOfKdkNEHQ==', '{\"openId\":\"oQmbb4sNZdxaUQZ0sfYgvtOP2S7c\",\"nickName\":\"何玉硕\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Changping\",\"province\":\"Beijing\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIbWFEIJj8IpGeHM7dGic1aTFZALjWcMm9ltWfFiaQfVRYticWBfgGfzXWMt2EkJWiaicPtftHAlWxUibxQ/132\",\"watermark\":{\"timestamp\":1535184522,\"appid\":\"wx601ce71bde7b9add\"}}');

-- ----------------------------
-- Table structure for nideshop_ad
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_ad`;
CREATE TABLE `nideshop_ad` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ad_position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `image_url` text NOT NULL,
  `content` varchar(255) NOT NULL DEFAULT '',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `position_id` (`ad_position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of nideshop_ad
-- ----------------------------
INSERT INTO `nideshop_ad` VALUES ('1', '1', '1', '合作 谁是你的菜', '', 'https://yanxuan.nosdn.127.net/31da695c84cabd0eaff054265da29e5c.jpg?imageView&quality=75&thumbnail=750x0', '合作 谁是你的菜', '0', '1');
INSERT INTO `nideshop_ad` VALUES ('2', '1', '1', '活动 美食节', '', 'https://yanxuan.nosdn.127.net/baea18aa59217cabd190b19fc1cf1617.jpg?imageView&quality=75&thumbnail=750x0', '活动 美食节', '0', '1');
INSERT INTO `nideshop_ad` VALUES ('3', '1', '1', '活动 母亲节', '', 'https://yanxuan.nosdn.127.net/d5683f01e132851229be21c52d808b62.jpg?imageView&quality=75&thumbnail=750x0', '活动 母亲节', '0', '1');
INSERT INTO `nideshop_ad` VALUES ('4', '1', '1', '活动 母亲节', '', 'https://yanxuan.nosdn.127.net/af7d906e174cb160ab5a979310aa223d.jpg?imageView&quality=75&thumbnail=750x0', '活动 母亲节', '0', '1');

-- ----------------------------
-- Table structure for nideshop_address
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_address`;
CREATE TABLE `nideshop_address` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `user_id` varchar(50) NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `address_detail` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of nideshop_address
-- ----------------------------
INSERT INTO `nideshop_address` VALUES ('1', '何玉硕', '111', 'sad发的是', '15175794012', '0', '大法师打发点啥的法撒旦法');
INSERT INTO `nideshop_address` VALUES ('23', '何玉硕', 'oQmbb4sNZdxaUQZ0sfYgvtOP2S7c', '广东省 广州市 海珠区', '020-81167888', '0', '新港中路397号');
INSERT INTO `nideshop_address` VALUES ('33', '科比', 'oQmbb4sNZdxaUQZ0sfYgvtOP2S7c', '河北省 石家庄市 桥东区', '123456789', '1', '斯柯达副科级上刊登了附近路口');

-- ----------------------------
-- Table structure for nideshop_address_copy
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_address_copy`;
CREATE TABLE `nideshop_address_copy` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `address_detail` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of nideshop_address_copy
-- ----------------------------
INSERT INTO `nideshop_address_copy` VALUES ('1', '何玉硕', '111', 'sad发的是', '15175794012', '0', '大法师打发点啥的法撒旦法');

-- ----------------------------
-- Table structure for nideshop_admin
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_admin`;
CREATE TABLE `nideshop_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL DEFAULT '''''',
  `password` varchar(255) NOT NULL DEFAULT '''''',
  `password_salt` varchar(255) NOT NULL DEFAULT '''''',
  `last_login_ip` varchar(60) NOT NULL DEFAULT '''''',
  `last_login_time` int(11) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(255) NOT NULL DEFAULT '''''',
  `admin_role_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of nideshop_admin
-- ----------------------------
INSERT INTO `nideshop_admin` VALUES ('1', 'admin', 'bb87bf23d14b27de74530dec20e234f3', 'ABCDEF', '::ffff:127.0.0.1', '1505484711', '0', '0', '\'\'', '0');

-- ----------------------------
-- Table structure for nideshop_ad_position
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_ad_position`;
CREATE TABLE `nideshop_ad_position` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of nideshop_ad_position
-- ----------------------------
INSERT INTO `nideshop_ad_position` VALUES ('1', '移动端首页轮播广告', '750', '200', '');

-- ----------------------------
-- Table structure for nideshop_attribute
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_attribute`;
CREATE TABLE `nideshop_attribute` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT '',
  `input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `values` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cat_id` (`attribute_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of nideshop_attribute
-- ----------------------------
INSERT INTO `nideshop_attribute` VALUES ('1', '1008009', '材质', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('2', '1008009', '适用床尺寸', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('3', '1008009', '件数', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('4', '1008009', '工艺', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('5', '1008009', '执行标准', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('6', '1008009', '产地', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('7', '1008009', '温馨提示', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('8', '1008008', '填充物重量', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('9', '1008008', '尺寸', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('10', '1008008', '面料', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('11', '1008008', '填充物', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('12', '1008008', '填充成分', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('13', '1008008', '面料成分', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('14', '1008008', '含绒量', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('15', '1008008', '重量', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('16', '1008002', '规格', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('17', '1008002', '外套材质', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('18', '1008002', '内胆材质', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('19', '1008002', '*温馨提示', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('20', '1036000', '安全技术', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('21', '1036000', '产品等级', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('22', '1008002', '面料成份', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('23', '1008002', '内芯面料', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('24', '1008008', '颜色', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('25', '1008008', '适用人数', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('26', '1008009', '安全类别', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('27', '1008009', '根数', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('28', '1036000', '安全技术类别', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('29', '1036000', '克重', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('30', '1008008', '外层面料', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('31', '1008008', '里层面料', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('32', '1008008', '内芯', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('33', '1008008', '外用面料', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('34', '1008008', '商品重量', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('35', '1008002', '坐垫外层面料', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('36', '1008002', '坐垫内芯材料', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('37', '1008002', '方形尺寸', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('38', '1008002', '圆形尺寸', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('39', '1008002', '坐垫套面料', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('40', '1008009', '安全及时', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('41', '1008002', '填充克重', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('42', '1017000', '产品标准', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('43', '1008016', '额定电压', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('44', '1008016', '型号', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('45', '1008008', '厚度', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('46', '1036000', '印染工艺', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('47', '1017000', '配色', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('48', '1017000', '材料', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('49', '1008008', '面料参数', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('50', '1011004', '鲜花', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('51', '1011004', '朵数', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('52', '1011004', '花材种植地', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('53', '1011004', '鲜花主材', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('54', '1011004', '鲜花辅材', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('55', '1017000', '搭扣', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('56', '1017000', '拉带规格', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('57', '1017000', '颈圈规格', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('58', '1017000', '颈圈', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('59', '1017000', '拉带', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('60', '1017000', '颈圈尺寸', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('61', '1017000', '拉带尺寸', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('62', '1008008', '外套', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('63', '1011004', '长度', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('64', '1011004', '花草种类', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('65', '1011004', '数量', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('66', '1015000', '涂漆', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('67', '1015000', '产品尺寸', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('68', '1015000', '安装方式', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('69', '1017000', '规格尺寸', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('70', '1011004', '机芯', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('71', '1011004', '能源', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('72', '1011004', '机芯类型', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('73', '1015000', '框架材质', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('74', '1015000', '是否组装', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('75', '1011004', 'USB线长', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('76', '1017000', '承重范围', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('77', '1011004', '花材', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('78', '1011004', '附加功能', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('79', '1015000', '主体材质', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('80', '1015000', '躺椅尺寸', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('81', '1015000', '脚蹬尺寸', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('82', '1015000', '*特别提醒', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('83', '1015000', '椅身材质', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('84', '1015000', '扶手材质', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('85', '1015000', '椅轮', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('86', '1015000', '气杆', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('87', '1011004', '摆件类型', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('88', '1008008', '弹簧结构特征', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('89', '1008008', '使用场所', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('90', '1008008', '主要原材料', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('91', '1008008', '辅料', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('92', '1008008', '高度', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('93', '1008008', '配送范围', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('94', '1008002', '填充物克重', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('95', '1008002', '备注', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('96', '1036000', '鞣制方式', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('97', '1017000', '产品材质', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('98', '1017000', '产品净重', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('99', '1017000', '产品毛重', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('100', '1008002', '物理遮光率', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('101', '1008002', '物理遮光性', '1', '', '0');
INSERT INTO `nideshop_attribute` VALUES ('102', '1008008', '重要提醒', '1', '', '0');

-- ----------------------------
-- Table structure for nideshop_attribute_category
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_attribute_category`;
CREATE TABLE `nideshop_attribute_category` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of nideshop_attribute_category
-- ----------------------------
INSERT INTO `nideshop_attribute_category` VALUES ('1008002', '布艺软装', '1');
INSERT INTO `nideshop_attribute_category` VALUES ('1008008', '被枕', '1');
INSERT INTO `nideshop_attribute_category` VALUES ('1008009', '床品件套', '1');
INSERT INTO `nideshop_attribute_category` VALUES ('1008016', '灯具', '1');
INSERT INTO `nideshop_attribute_category` VALUES ('1011004', '家饰', '1');
INSERT INTO `nideshop_attribute_category` VALUES ('1015000', '家具', '1');
INSERT INTO `nideshop_attribute_category` VALUES ('1017000', '宠物', '1');
INSERT INTO `nideshop_attribute_category` VALUES ('1036000', '夏凉', '1');

-- ----------------------------
-- Table structure for nideshop_brand
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_brand`;
CREATE TABLE `nideshop_brand` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `list_pic_url` varchar(255) NOT NULL DEFAULT '',
  `simple_desc` varchar(255) NOT NULL DEFAULT '',
  `pic_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `floor_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `app_list_pic_url` varchar(255) NOT NULL DEFAULT '',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `new_pic_url` varchar(255) NOT NULL DEFAULT '',
  `new_sort_order` tinyint(2) unsigned NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`),
  KEY `is_show` (`is_show`)
) ENGINE=MyISAM AUTO_INCREMENT=1046012 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of nideshop_brand
-- ----------------------------
INSERT INTO `nideshop_brand` VALUES ('1001000', 'MUJI制造商', 'http://yanxuan.nosdn.127.net/1541445967645114dd75f6b0edc4762d.png', '严选精选了MUJI制造商和生产原料，\n用几乎零利润的价格，剔除品牌溢价，\n让用户享受原品牌的品质生活。', 'http://yanxuan.nosdn.127.net/4ea3f1e60dd77c45c218e503d721a1ed.jpg', '2', '1', '12.90', 'http://yanxuan.nosdn.127.net/1541445967645114dd75f6b0edc4762d.png', '1', 'http://yanxuan.nosdn.127.net/4ea3f1e60dd77c45c218e503d721a1ed.jpg', '2');
INSERT INTO `nideshop_brand` VALUES ('1001002', '内野制造商', 'http://yanxuan.nosdn.127.net/8ca3ce091504f8aa1fba3fdbb7a6e351.png', '严选从世界各地挑选毛巾，最终选择了为日本内野代工的工厂，追求毛巾的柔软度与功能性。品质比肩商场几百元的毛巾。', 'http://yanxuan.nosdn.127.net/e50654982984206b54e9226e5ab7f90c.jpg', '10', '1', '29.00', 'http://yanxuan.nosdn.127.net/8ca3ce091504f8aa1fba3fdbb7a6e351.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1001003', 'Adidas制造商', 'http://yanxuan.nosdn.127.net/335334d0deaff6dc3376334822ab3a2f.png', '严选找到为Adidas等品牌制造商，\n选取优质原材料，与厂方一起设计，\n为你提供好的理想的运动装备。', 'http://yanxuan.nosdn.127.net/6f954ea8cee30e161dda048ffbfd950f.png', '30', '1', '49.00', 'http://yanxuan.nosdn.127.net/335334d0deaff6dc3376334822ab3a2f.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1001007', '优衣库制造商', 'http://yanxuan.nosdn.127.net/0d72832e37e7e3ea391b519abbbc95a3.png', '严选找到日本知名服装UNIQLO的制造商，\n选取优质长绒棉和精梳工艺，\n与厂方一起设计，为你提供理想的棉袜。', 'http://yanxuan.nosdn.127.net/f3d196c03f8aac5625faba00d670ee03.jpg', '12', '1', '29.00', 'http://yanxuan.nosdn.127.net/0d72832e37e7e3ea391b519abbbc95a3.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1001008', '膳魔师制造商', 'http://yanxuan.nosdn.127.net/5fd51e29b9459dae7df8040c8219f241.png', '严选深入保温行业内部，\n找到德国膳魔师制造商的代工厂。\n同样的品质，却有更优的价格。', 'http://yanxuan.nosdn.127.net/c4ab88f475e375c5748fa13d8bf2858d.png', '40', '1', '45.00', 'http://yanxuan.nosdn.127.net/5fd51e29b9459dae7df8040c8219f241.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1001010', '星巴克制造商', 'http://yanxuan.nosdn.127.net/5668bc50f2f2e551891044525710dc84.png', '严选寻访全国保温杯制造企业，\n最终找到高端咖啡品牌星巴克的制造商，\n专注保温杯生产20年，品质与颜值兼备。', 'http://yanxuan.nosdn.127.net/2433b04ea9d7adda1d2e834786872237.jpg', '34', '1', '39.00', 'http://yanxuan.nosdn.127.net/5668bc50f2f2e551891044525710dc84.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1001012', 'Wedgwood制造商', 'http://yanxuan.nosdn.127.net/68940e8e23f96dbeb3548d943d83d5e4.png', '严选寻访英国皇室御用陶瓷Wedgwood制造商，\n制模到成品，历经25道工序、7次检验、3次烧制，\n你看不见的地方，我们也在坚持。', 'http://yanxuan.nosdn.127.net/6d6124123311f85903a8bc864d37464c.jpg', '21', '1', '39.00', 'http://yanxuan.nosdn.127.net/68940e8e23f96dbeb3548d943d83d5e4.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1001013', 'Royal Doulton制造商', 'http://yanxuan.nosdn.127.net/0de643a02043fd9680b11e21c452adaa.png', '严选深入英国最大骨瓷品牌Royal Doulton制造商， \n顶级英国瓷器的代名词，广受世界皇室喜爱。\n每件瓷器，都有自己的故事。', 'http://yanxuan.nosdn.127.net/0e8311d2246e5643c622743d9684f235.jpg', '47', '1', '24.90', 'http://yanxuan.nosdn.127.net/0de643a02043fd9680b11e21c452adaa.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1001015', '日本KEYUCA制造商', 'http://yanxuan.nosdn.127.net/9b85b45f23da558be101dbcc273b1d6d.png', 'KEYUCA是日本餐具及料理用具品牌，\n遵循极简原木风，高端餐具体验。\n严选的餐具正是来自这一品牌制造商。', 'http://yanxuan.nosdn.127.net/d91db0c68c50cd109c16f0ad1427ed0b.jpg', '49', '1', '14.90', 'http://yanxuan.nosdn.127.net/9b85b45f23da558be101dbcc273b1d6d.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1001016', '爱慕制造商', 'http://yanxuan.nosdn.127.net/5104f84110eac111968c63c18ebd62c0.png', '150家样品比对筛选，20家工厂深入走访，\n严选最终选定高端内衣爱慕制造商，\n20年品质保证，为你打造天然舒适的衣物。', 'http://yanxuan.nosdn.127.net/833104a2ac047faccd90cc6b98ccf4be.jpg', '9', '1', '35.00', 'http://yanxuan.nosdn.127.net/5104f84110eac111968c63c18ebd62c0.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1001020', 'Ralph Lauren制造商', 'http://yanxuan.nosdn.127.net/9df78eb751eae2546bd3ee7e61c9b854.png', '我们与Ralph Lauren Home的制造商成功接洽，掌握先进的生产设备，传承品牌工艺和工序。追求生活品质的你，值得拥有。', 'http://yanxuan.nosdn.127.net/089e4066f0c2bc6b062d17c6292735dc.png', '20', '1', '29.00', 'http://yanxuan.nosdn.127.net/9df78eb751eae2546bd3ee7e61c9b854.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1001037', '新秀丽制造商', 'http://yanxuan.nosdn.127.net/80dce660938931956ee9a3a2b111bd37.jpg', '严选为制作品质与颜值兼具的箱包，\n选定新秀丽、CK、Ricardo等品牌合作的制造商，\n拥有国内先进流水线20余条，实力保障品质。', 'http://yanxuan.nosdn.127.net/af5719e20bdbd214a9ce7d961e9031c5.png', '5', '1', '59.00', 'http://yanxuan.nosdn.127.net/80dce660938931956ee9a3a2b111bd37.jpg', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1001038', 'Coach制造商', 'http://yanxuan.nosdn.127.net/1b1cc16135fd8467d40983f75f644127.png', '严选为制作高品质高颜值皮具配件，\n由Coach、MK等品牌制造商生产，\n由严选360度全程监制，给你带来优质皮具。', 'http://yanxuan.nosdn.127.net/c933a662bb79b2a47280363e35ab994b.png', '3', '1', '49.00', 'http://yanxuan.nosdn.127.net/1b1cc16135fd8467d40983f75f644127.png', '1', 'http://yanxuan.nosdn.127.net/b5cd73d3b310bad02539412f064d4ea1.jpg', '10');
INSERT INTO `nideshop_brand` VALUES ('1001039', 'MK制造商', 'http://yanxuan.nosdn.127.net/fc9cd1309374f7707855de80522fb310.jpg', '严选为制造高品质的皮具，\n选择Michael Kors品牌合作的制造工厂，\n18年专业皮具生产经验，手工至美，品质保证。', 'http://yanxuan.nosdn.127.net/c302c82dafcb53ba233aa1e277063a1c.png', '17', '1', '79.00', 'http://yanxuan.nosdn.127.net/fc9cd1309374f7707855de80522fb310.jpg', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1001045', '罗莱制造商', 'http://yanxuan.nosdn.127.net/14122a41a4985d23e1a172302ee818e9.png', '严选团队为打造吸湿透气柔软的蚕丝被，\n从蚕茧原材到温感性能，多次甄选测试\n选择罗莱制造商工厂，手工处理，优质舒适。', 'http://yanxuan.nosdn.127.net/a88d8eae6d492492da07eca7616dce42.jpg', '45', '1', '699.00', 'http://yanxuan.nosdn.127.net/14122a41a4985d23e1a172302ee818e9.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1003000', 'Carters制造商', 'http://yanxuan.nosdn.127.net/efe9131599ced0297213e6ec67eb2174.png', '来自Carters大牌代工厂生产，\n严选纯天然材料，无荧光不添加，\nITS安心标志权威检测，安全护航。', 'http://yanxuan.nosdn.127.net/a3fd78f8cf429a34e1e2ea761466d428.jpg', '41', '1', '19.90', 'http://yanxuan.nosdn.127.net/efe9131599ced0297213e6ec67eb2174.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1005001', 'Goody制造商', 'http://yanxuan.nosdn.127.net/7c918f37de108f3687d69b39daab34eb.png', '严选深入美国百年发饰品牌Goody制造商，\n确保每把梳子做工精湛，养护头皮。\n戴安娜王妃的最爱，你也能拥有。', 'http://yanxuan.nosdn.127.net/431cd1e6bfca9964f96f1964a8b08ebb.jpg', '48', '1', '39.00', 'http://yanxuan.nosdn.127.net/7c918f37de108f3687d69b39daab34eb.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1006000', '范思哲制造商', 'http://yanxuan.nosdn.127.net/c80ae035387495a61a4515906205efff.png', '严选找寻意大利奢侈品牌范思哲Versace的制造商，\n致力于为用户带来精致、优雅、时尚的皮包，\n传承独特美感，体验品质生活。', 'http://yanxuan.nosdn.127.net/4e5e9e8cf9ce08f256494321ba4d3c2a.jpg', '18', '1', '99.00', 'http://yanxuan.nosdn.127.net/c80ae035387495a61a4515906205efff.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1008000', 'WPC制造商', 'http://yanxuan.nosdn.127.net/c4e97cc87186ce17f9316f3ba39e220c.png', '严选寻找日本雨伞品牌W.P.C制造商，\n采用严谨工艺以及环保材料，\n沉淀15年行业经验，打造精致雨具。', 'http://yanxuan.nosdn.127.net/83889aa01e7cf8e0ff605c317a01e55d.jpg', '22', '1', '59.00', 'http://yanxuan.nosdn.127.net/c4e97cc87186ce17f9316f3ba39e220c.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1010001', '竹宝堂制造商', 'http://yanxuan.nosdn.127.net/61b0b7ae4f0163422009defbceaa41ad.jpg', '严选走访河北、安徽等制刷基地，\n选定竹宝堂、丝芙兰等品牌的制造商，\n严格把关生产与质检，与您一同追求美的生活。', 'http://yanxuan.nosdn.127.net/279cf74ac294e67f7f99cf2d47a1365c.jpg', '39', '1', '29.00', 'http://yanxuan.nosdn.127.net/61b0b7ae4f0163422009defbceaa41ad.jpg', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1010002', '资生堂制造商', 'http://yanxuan.nosdn.127.net/5449236b80d1e678dedee2f626cd67c4.png', '发现美，成为美，是女性一生的追求。\n严选找寻资生堂代工厂，打造天然美妆产品，\n致力于带来更多美的体验和享受。', 'http://yanxuan.nosdn.127.net/af464d5281dfbd286dab569a03264a33.jpg', '19', '1', '29.00', 'http://yanxuan.nosdn.127.net/5449236b80d1e678dedee2f626cd67c4.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1015000', 'NITORI制造商', 'http://yanxuan.nosdn.127.net/6f3d310601b18610553c675e0e14d107.png', '宠物是人类最温情的陪伴，\n严选找寻日本最大家居品牌NITORI制造商，\n每一个脚印，都是为了更好地关怀你的TA', 'http://yanxuan.nosdn.127.net/0657854429c6717e8ace7dcff6a2468b.jpg', '43', '1', '69.00', 'http://yanxuan.nosdn.127.net/6f3d310601b18610553c675e0e14d107.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1016002', 'HUGO BOSS制造商', 'http://yanxuan.nosdn.127.net/70ada9877b2efa82227437af3231fe50.png', '严选深入德国知名奢侈品HUGO BOSS的制造商，\n开发睡衣、睡袍、休闲裤等轻奢品质家居服，\n希望你在家的每一天都优雅精致。', 'http://yanxuan.nosdn.127.net/888289da7fe200949806eefa069af019.jpg', '11', '1', '45.00', 'http://yanxuan.nosdn.127.net/70ada9877b2efa82227437af3231fe50.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1018000', 'Sperry制造商', 'http://yanxuan.nosdn.127.net/2eb12d84037346441088267432da31c4.png', '严选团队对比多家硫化鞋制造商产品质量，\n走访多个制鞋工厂，最终选定Sperry品牌制造商，\n为你提供一双舒适有型的高品质帆布鞋。', 'http://yanxuan.nosdn.127.net/952b9f38a729533a058ee88572a370fa.jpg', '32', '1', '199.00', 'http://yanxuan.nosdn.127.net/2eb12d84037346441088267432da31c4.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1021000', 'Marc Jacobs制造商', 'http://yanxuan.nosdn.127.net/c8dac4eb1a458d778420ba520edab3d0.png', '严选寻访独立设计品牌Marc Jacobs的制造商，\n严格选材，细究纺织与生产的细节，多次打磨，\n初心不忘，为你带来优雅高档的服饰配件。', 'http://yanxuan.nosdn.127.net/ce5762f1fd4bde61b57864e765c605e3.jpg', '24', '1', '69.00', 'http://yanxuan.nosdn.127.net/c8dac4eb1a458d778420ba520edab3d0.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1022000', 'UGG制造商', 'http://yanxuan.nosdn.127.net/4d2a3dea7e0172ae48e8161f04cfa045.jpg', '为寻找优质的皮毛一体雪地靴，\n严选走访多家雪地靴制造商，对比工艺，\n甄选UGG认可的代工厂，只为足下的优雅舒适。', 'http://yanxuan.nosdn.127.net/efbc6a6044dd07697d2f26bf5033c335.jpg', '29', '1', '59.00', 'http://yanxuan.nosdn.127.net/4d2a3dea7e0172ae48e8161f04cfa045.jpg', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1022001', 'Palladium制造商', 'http://yanxuan.nosdn.127.net/3480f2a4026c60eb4921f0aa3facbde8.png', '严选探访多个制鞋大厂，选定Palladium制造商，\n对比工艺选材，找到传承多年的制鞋配方，\n只为制作一款高品质休闲鞋。', 'http://yanxuan.nosdn.127.net/119717ea4459a8fb3185cec4eb80a284.jpg', '31', '1', '249.00', 'http://yanxuan.nosdn.127.net/3480f2a4026c60eb4921f0aa3facbde8.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1023000', 'PetitBateau小帆船制造商', 'http://yanxuan.nosdn.127.net/1a11438598f1bb52b1741e123b523cb5.jpg', '为打造适合宝宝的婴童服装，\n严选团队寻找PetitBateau小帆船的品牌制造商，\n无荧光剂，国家A类标准，让宝宝穿的放心。', 'http://yanxuan.nosdn.127.net/faad5a05a119b789956e4ce2e26e94ef.jpg', '25', '1', '36.00', 'http://yanxuan.nosdn.127.net/1a11438598f1bb52b1741e123b523cb5.jpg', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1024000', 'WMF制造商', 'http://yanxuan.nosdn.127.net/2018e9ac91ec37d9aaf437a1fd5d7070.png', '严选找寻德国百年高端厨具WMF的制造商，\n选择拥有14年经验的不锈钢生产工厂，\n为你甄选事半功倍的优质厨具。', 'http://yanxuan.nosdn.127.net/2a2ae0d49043e525db8d0d8d84460ac8.png', '8', '1', '9.90', 'http://yanxuan.nosdn.127.net/2018e9ac91ec37d9aaf437a1fd5d7070.png', '1', 'http://yanxuan.nosdn.127.net/abcfa79205679db51198adc19c184dd1.jpg', '3');
INSERT INTO `nideshop_brand` VALUES ('1024001', 'OBH制造商', 'http://yanxuan.nosdn.127.net/bf3499ac17a11ffb9bb7caa47ebef2dd.png', '严选寻找OBH品牌的制造商，打造精致厨具，\n韩国独资工厂制造，严格质检，品质雕琢\n力求为消费者带来全新的烹饪体验。', 'http://yanxuan.nosdn.127.net/44e14d6ec4db2e6c66b0fde521603f85.jpg', '42', '1', '39.00', 'http://yanxuan.nosdn.127.net/bf3499ac17a11ffb9bb7caa47ebef2dd.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1024003', 'Stoneline制造商', 'http://yanxuan.nosdn.127.net/3a44ae7db86f3f9b6e542720c54cc349.png', '严选找寻德国经典品牌Stoneline的制造商，\n追踪工艺，考量细节，亲自试用，\n为你甄选出最合心意的锅具和陶瓷刀，下厨如神。', 'http://yanxuan.nosdn.127.net/6dc7eecce99cb8f5ab6d86c76415cbec.png', '28', '1', '9.90', 'http://yanxuan.nosdn.127.net/3a44ae7db86f3f9b6e542720c54cc349.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1024006', 'KitchenAid制造商', 'http://yanxuan.nosdn.127.net/e11385bf29d1b3949435b80fcd000948.png', '严选寻访KitchenAid品牌的制造商，\n采用德国LFGB认证食品级专用不锈钢，\n欧式简约设计，可靠安心，尽享下厨乐趣。', 'http://yanxuan.nosdn.127.net/2f79a254cd4020966ea1272e2d27b510.jpg', '46', '1', '98.00', 'http://yanxuan.nosdn.127.net/e11385bf29d1b3949435b80fcd000948.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1025000', 'Timberland制造商', 'http://yanxuan.nosdn.127.net/6dcadb0791b33aa9fd00380b44fa6645.png', '为制作优质时尚的工装鞋靴，\n严选团队深入探访国内外制靴大厂，选择Timberland制造商，\n工厂拥有15年制鞋历史，专业品质有保证。', 'http://yanxuan.nosdn.127.net/5b35f510110d0c031eb6bf63854597b8.png', '37', '1', '359.00', 'http://yanxuan.nosdn.127.net/6dcadb0791b33aa9fd00380b44fa6645.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1025001', 'Kenneth Cole制造商', 'http://yanxuan.nosdn.127.net/236322546c6860e1662ab147d6b0ba2f.jpg', '为出品优质格调的商务鞋靴，\n严选团队选择Kenneth Cole品牌合作的制造商，\n一切努力，只为打造高品质鞋靴。', 'http://yanxuan.nosdn.127.net/63a1df6f5d26faadffa33bac2d51ddc4.jpg', '7', '1', '349.00', 'http://yanxuan.nosdn.127.net/236322546c6860e1662ab147d6b0ba2f.jpg', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1026000', 'CK制造商', 'http://yanxuan.nosdn.127.net/658f09b7ec522d31742b47b914d64338.png', '严选寻访Calvin Klein品牌的制造商，\n深入世界领带第一生产地，设计与品质并重，\n致力于给消费者带来优质典雅的服饰用品。', 'http://yanxuan.nosdn.127.net/fb139c9f11a10deb41beeb42aaad488e.png', '1', '1', '39.00', 'http://yanxuan.nosdn.127.net/658f09b7ec522d31742b47b914d64338.png', '1', 'http://yanxuan.nosdn.127.net/76638fb8e6990aadf837ce761c3b7399.jpg', '1');
INSERT INTO `nideshop_brand` VALUES ('1026001', 'Under Armour制造商', 'http://yanxuan.nosdn.127.net/4e93ea29b1d06fabfd24ba68a9b20a34.jpg', '严选为甄选优质好袜，走访东北、新疆等产袜基地，\n最终选定Under Armour品牌的合作制造商，\n从原料、工艺、品质多维度筛选监制，保证好品质。', 'http://yanxuan.nosdn.127.net/b00570a5edc8da2f4a629fbdddb0b03c.jpg', '35', '1', '39.00', 'http://yanxuan.nosdn.127.net/4e93ea29b1d06fabfd24ba68a9b20a34.jpg', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1028000', 'Gucci制造商', 'http://yanxuan.nosdn.127.net/278869cad9bf5411ffc18982686b88fb.jpg', '严选为设计一款优雅时尚的品质礼帽，\n找寻拥有10来年经验的大型毛毡帽厂商合作，\n坚持打造好设计、好工艺、好材质的潮流礼帽。', 'http://yanxuan.nosdn.127.net/7749ff4939c0a62689c5d1de7fba2860.png', '23', '1', '59.00', 'http://yanxuan.nosdn.127.net/278869cad9bf5411ffc18982686b88fb.jpg', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1028003', 'Burberry制造商', 'http://yanxuan.nosdn.127.net/07af01e281c7e0b912d162d611e22c32.jpg', '为打造时尚舒适的童装系列，\n严选选择Burberry制造商，优化版型配色\n英伦风情融入经典格纹，百搭优雅气质款。', 'http://yanxuan.nosdn.127.net/1a874a6b8cf8c17ef7420b2449179eae.jpg', '4', '1', '99.00', 'http://yanxuan.nosdn.127.net/07af01e281c7e0b912d162d611e22c32.jpg', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1033003', 'Armani制造商', 'http://yanxuan.nosdn.127.net/981e06f0f46f5f1f041d7de3dd3202e6.jpg', '严选团队携手国际标准化专业生产厂家，\n厂家长期为Armani、Alexander wang等知名品牌代工，\n专业进口设备，精密质量把控，精于品质居家体验。', 'http://yanxuan.nosdn.127.net/cc2513963d45c8a0787bc9650e95b3bc.jpg', '26', '1', '199.00', 'http://yanxuan.nosdn.127.net/981e06f0f46f5f1f041d7de3dd3202e6.jpg', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1033004', '爱马仕集团制造商', 'http://yanxuan.nosdn.127.net/d98470dd728fb5a91f7aceade07572b5.png', '严选采用欧洲一线品牌爱马仕的御用香料供应商，\n经过反复配比改良、试香调香、选品定样，\n为你带来独特馥郁的散香体验。', 'http://yanxuan.nosdn.127.net/dd4b9a6cb73e3e1c61c79cbd4bb0bca0.jpg', '33', '1', '19.00', 'http://yanxuan.nosdn.127.net/d98470dd728fb5a91f7aceade07572b5.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1034001', 'Alexander McQueen制造商', 'http://yanxuan.nosdn.127.net/db7ee9667d84cbce573688297586699c.jpg', '为制造精致实用的高品质包包，\n严选团队选择Alexander McQueen制造商，\n严格筛选，带来轻奢优雅体验。', 'http://yanxuan.nosdn.127.net/48d8b0a9cd41cd7028b055d6d2b4b57e.jpg', '16', '1', '69.00', 'http://yanxuan.nosdn.127.net/db7ee9667d84cbce573688297586699c.jpg', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1037000', '厚木ATSUGI制造商', 'http://yanxuan.nosdn.127.net/7df55c408dbac6085ed6c30836c828ac.jpg', '严选考究袜子品质，层层把关原料生产，\n携手12年行业生产资质的厚木品牌制造商，\n带来轻盈优雅，舒适显瘦的袜子系列。', 'http://yanxuan.nosdn.127.net/51f1a2b3e663989e8880066af929ce50.jpg', '27', '1', '29.00', 'http://yanxuan.nosdn.127.net/7df55c408dbac6085ed6c30836c828ac.jpg', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1038000', 'Birkenstock集团制造商', 'http://yanxuan.nosdn.127.net/05a2ecffb60b77e4c165bd8492e5c22a.jpg', '为打造一双舒适的软木拖鞋，\n严选团队寻找BIRKENSTOCK集团旗下产品制造商，\n360度全程监制，舒适随脚，百搭文艺。', 'http://yanxuan.nosdn.127.net/0996a492f86f01cb83cd3737ad325e23.jpg', '14', '1', '59.90', 'http://yanxuan.nosdn.127.net/05a2ecffb60b77e4c165bd8492e5c22a.jpg', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1038001', 'Nine West制造商', 'http://yanxuan.nosdn.127.net/ad4df7848ce450f00483c2d5e9f2bfa7.png', '为打造一双优雅舒适的高跟鞋，\n严选选择美国Nine West玖熙品牌的制造商，\n让美丽绽放在足尖。', 'http://yanxuan.nosdn.127.net/38d494067453afa08d2b26d8227558fc.jpg', '13', '1', '219.00', 'http://yanxuan.nosdn.127.net/ad4df7848ce450f00483c2d5e9f2bfa7.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1039000', 'TEFAL制造商', 'http://yanxuan.nosdn.127.net/2b7a07e25a3f3be886a7fb90ba975bb7.png', '严选对标国际品质，致力于高品质生活好物，\n执着寻求优质厨房电器供应商，\n携手WMF、Tefal制造商，打造高品质厨具。', 'http://yanxuan.nosdn.127.net/713daad73395a4f3d06f5dd07ed927d4.jpg', '44', '1', '259.00', 'http://yanxuan.nosdn.127.net/2b7a07e25a3f3be886a7fb90ba975bb7.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1039001', '京瓷制造商', 'http://yanxuan.nosdn.127.net/3dda530605e3ab1c82d5ed30f2489473.png', '严选想为你的厨房生活，带来新鲜感和活力，\n深入全国各地，选择日本京瓷等品牌代工厂，\n打造钻石系列厨具，颜值与品质兼具。', 'http://yanxuan.nosdn.127.net/de8c967f47c47e48aaaf461a5e24bc4c.jpg', '38', '1', '89.00', 'http://yanxuan.nosdn.127.net/3dda530605e3ab1c82d5ed30f2489473.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1040000', 'Tescom制造商', 'http://yanxuan.nosdn.127.net/c17cd65971189fdc28f5bd6b78f657a7.png', '严选为打造时尚健康的个护电器，\n选择Tescom品牌制造商，全球最大个护电器工厂之一，\n拥有20年经验，出口180多个国家，品质有保障。', 'http://yanxuan.nosdn.127.net/21ff3c560b263cf45dd2b8c92091768b.jpg', '15', '1', '59.00', 'http://yanxuan.nosdn.127.net/c17cd65971189fdc28f5bd6b78f657a7.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1041000', 'BCBG制造商', 'http://yanxuan.nosdn.127.net/b9072023afd3621714fd5c49f140fca8.png', '严选从产品源头开始，每道工序质量把关，\n选择美国知名品牌BCBG的制造商合作，\n严谨匠心，致力于优质柔滑的睡衣穿搭产品。', 'http://yanxuan.nosdn.127.net/3f2a66543f4c6e2abd5de2d280ff7960.png', '36', '1', '99.00', 'http://yanxuan.nosdn.127.net/b9072023afd3621714fd5c49f140fca8.png', '0', '', '10');
INSERT INTO `nideshop_brand` VALUES ('1046000', 'Police制造商', 'http://yanxuan.nosdn.127.net/66e2cb956a9dd1efc7732bea278e901e.png', '严选团队选定Police品牌制造商合作，\n有11年眼镜生产资质，兼顾品质与品味，\n为你带来专业时尚的墨镜。', 'http://yanxuan.nosdn.127.net/d48930cbb91f0e3adafe5341ce270a4e.png', '6', '1', '109.00', 'http://yanxuan.nosdn.127.net/66e2cb956a9dd1efc7732bea278e901e.png', '0', '', '10');

-- ----------------------------
-- Table structure for nideshop_cart
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_cart`;
CREATE TABLE `nideshop_cart` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `retail_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `list_pic_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of nideshop_cart
-- ----------------------------
INSERT INTO `nideshop_cart` VALUES ('83', '11', '1092024', '双宫茧纱布亲肤手工蚕丝被', '1599.00', '1', 'http://yanxuan.nosdn.127.net/f245a86dcb9f455217241e437b203926.png');
INSERT INTO `nideshop_cart` VALUES ('129', 'oQmbb4sNZdxaUQZ0sfYgvtOP2S7c', '1015007', '典雅美式全棉刺绣抱枕', '59.00', '1', 'http://yanxuan.nosdn.127.net/a2045004de8a6225289376ad54317fc8.png');
INSERT INTO `nideshop_cart` VALUES ('125', 'oQmbb4sNZdxaUQZ0sfYgvtOP2S7c', '1006013', '双宫茧桑蚕丝被 空调被', '699.00', '1', 'http://yanxuan.nosdn.127.net/583812520c68ca7995b6fac4c67ae2c7.png');

-- ----------------------------
-- Table structure for nideshop_category
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_category`;
CREATE TABLE `nideshop_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `front_desc` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `show_index` tinyint(1) NOT NULL DEFAULT '0',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `banner_url` varchar(255) NOT NULL DEFAULT '',
  `icon_url` varchar(255) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `wap_banner_url` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `front_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1036008 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of nideshop_category
-- ----------------------------
INSERT INTO `nideshop_category` VALUES ('1005000', '居家', '', '回家，放松身心', '0', '2', '1', '1', 'http://yanxuan.nosdn.127.net/92357337378cce650797444bc107b0f7.jpg', 'http://yanxuan.nosdn.127.net/a45c2c262a476fea0b9fc684fed91ef5.png', '//nos.netease.com/yanxuan/f0d0e1a542e2095861b42bf789d948ce.jpg', 'http://yanxuan.nosdn.127.net/e8bf0cf08cf7eda21606ab191762e35c.png', 'L1', '0', '回家，放松身心');
INSERT INTO `nideshop_category` VALUES ('1005001', '餐厨', '', '厨房', '0', '3', '2', '1', 'http://yanxuan.nosdn.127.net/f4ff8b3d5b0767d4e578575c1fd6b921.jpg', 'http://yanxuan.nosdn.127.net/ad8b00d084cb7d0958998edb5fee9c0a.png', '//nos.netease.com/yanxuan/88855173a0cfcfd889ee6394a3259c4f.jpg', 'http://yanxuan.nosdn.127.net/3708dbcb35ad5abf9e001500f73db615.png', 'L1', '0', '爱，囿于厨房');
INSERT INTO `nideshop_category` VALUES ('1005002', '饮食', '', '好吃，高颜值美食', '0', '9', '8', '1', 'http://yanxuan.nosdn.127.net/dd6cc8a7e996936768db5634f12447ed.jpg', 'http://yanxuan.nosdn.127.net/c9280327a3fd2374c000f6bf52dff6eb.png', '//nos.netease.com/yanxuan/9a29ef4f41c305a12e1459f12abd290f.jpg', 'http://yanxuan.nosdn.127.net/fb670ff3511182833e5b035275e4ac09.png', 'L1', '0', '好吃，高颜值美食');
INSERT INTO `nideshop_category` VALUES ('1005007', '锅具', '', '中华铸铁、精选不锈钢、进口珐琅', '1005001', '1', '1', '1', 'http://yanxuan.nosdn.127.net/4aab4598017b5749e3b63309d25e9f6b.png', '', '', 'http://yanxuan.nosdn.127.net/d2db0d1d0622c621a8aa5a7c06b0fc6d.png', 'L2', '0', '一口好锅，炖煮生活一日三餐');
INSERT INTO `nideshop_category` VALUES ('1005008', '餐具', '', '皇家道尔顿、日本KEYUCA制造商出品', '1005001', '4', '4', '1', 'http://yanxuan.nosdn.127.net/f109afbb7e7a00c243c1da29991a5aa3.png', '', '', 'http://yanxuan.nosdn.127.net/695ed861a63d8c0fc51a51f42a5a993b.png', 'L2', '0', '餐桌上的舞蹈');
INSERT INTO `nideshop_category` VALUES ('1005009', '清洁', '', '特殊材质，做家务更简单', '1005001', '9', '9', '1', 'http://yanxuan.nosdn.127.net/e8b67fe8b8db2ecc2e126a0aa631def0.png', '', '', 'http://yanxuan.nosdn.127.net/3a40faaef0a52627357d98ceed7a3c45.png', 'L2', '0', '环保便利，聪明之选');
INSERT INTO `nideshop_category` VALUES ('1005010', '炒货', '', '精选原产地，美味加营养', '1005002', '5', '5', '1', 'http://yanxuan.nosdn.127.net/6c43063003207168c1d8e83a923e8515.png', '', '', 'http://yanxuan.nosdn.127.net/3972963a4b6f9588262d2a667f4c1c73.png', 'L2', '0', '精选原产地，美味加营养');
INSERT INTO `nideshop_category` VALUES ('1005011', '小食', '', '原香鲜材，以小食之味，带来味蕾惊喜', '1005002', '2', '2', '1', 'http://yanxuan.nosdn.127.net/663f568475c994358bf31bcb67d122fe.png', '', '', 'http://yanxuan.nosdn.127.net/418f86049f957108a31ad55cec42c349.png', 'L2', '0', '原香鲜材，以小食之味，带来味蕾惊喜');
INSERT INTO `nideshop_category` VALUES ('1005012', '食材', '', '天时、地利、人和，寻找这个时节这个地点的味道', '1005002', '10', '10', '1', 'http://yanxuan.nosdn.127.net/e050980992725b7932bb3645fe5aec08.png', '', '', 'http://yanxuan.nosdn.127.net/80db363e0687b1a65edc6e75c1b99726.png', 'L2', '0', '天时地利人和，寻找这个时节这个地点的味道');
INSERT INTO `nideshop_category` VALUES ('1005013', '冲饮', '', '以用料天然之美，尽享闲雅之意', '1005002', '6', '6', '1', 'http://yanxuan.nosdn.127.net/2919b0d6eec79182cca31dc827f4d00a.png', '', '', 'http://yanxuan.nosdn.127.net/1e3d8f65c7c7811baccdfda6711cbfd5.png', 'L2', '0', '以用料天然之美，尽享闲雅之意');
INSERT INTO `nideshop_category` VALUES ('1007000', '杯壶', '', '10Q品质控制系统', '1005001', '2', '2', '1', 'http://yanxuan.nosdn.127.net/0b244d3575b737c8f0ed7e84c5c4abd2.png', '', '', 'http://yanxuan.nosdn.127.net/ec53828a3814171079178a59fb2593da.png', 'L2', '0', '精工生产制作，匠人手艺');
INSERT INTO `nideshop_category` VALUES ('1008000', '配件', '', '配角，亦是主角', '0', '4', '3', '1', 'http://yanxuan.nosdn.127.net/cad5aba2bc52d3b8adfd0232c9814de2.jpg', 'http://yanxuan.nosdn.127.net/11abb11c4cfdee59abfb6d16caca4c6a.png', '//nos.netease.com/yanxuan/935f1ab7dcfeb4bbd4a5da9935161aaf.jpg', 'http://yanxuan.nosdn.127.net/02f9a44d05c05c0dd439a5eb674570a2.png', 'L1', '0', '配角，亦是主角');
INSERT INTO `nideshop_category` VALUES ('1008001', '毛巾', '', '精选长绒棉，出口日本品质标准', '1013001', '1', '1', '1', 'http://yanxuan.nosdn.127.net/44ad9a739380aa6b7cf956fb2a06e7a7.png', '', '', 'http://yanxuan.nosdn.127.net/c53d2dd5ba6b1cfb55bd42ea0783f051.png', 'L2', '0', '日本皇室专供，内野制造商出品');
INSERT INTO `nideshop_category` VALUES ('1008002', '布艺软装', '', '换个软装，换个家', '1005000', '6', '4', '1', 'http://yanxuan.nosdn.127.net/8bbcd7de60a678846664af998f57e71c.png', '', '', 'http://yanxuan.nosdn.127.net/2e2fb4f2856a021bbcd1b4c8400f2b06.png', 'L2', '0', '各种风格软装装点你的家');
INSERT INTO `nideshop_category` VALUES ('1008003', '鞋', '', '百搭造型，舒适脚感，久穿不累', '1008000', '4', '4', '1', 'http://yanxuan.nosdn.127.net/4316c2d05745bc90d1f333e363e571bd.png', '', '', 'http://yanxuan.nosdn.127.net/85566d138ea55e6aaeda2cda02df66f8.png', 'L2', '0', '一双好鞋，才能带你到远方');
INSERT INTO `nideshop_category` VALUES ('1008004', '袜子', '', '优选面料，精细做工，越是细节之物，越显品质之处', '1010000', '4', '4', '1', 'http://yanxuan.nosdn.127.net/f123c74f54d9acff0bd1546c60034814.png', '', '', 'http://yanxuan.nosdn.127.net/13f256bac02bb27d74e035ad25cbd375.png', 'L2', '0', '新百伦、阿迪达斯等制造商出品');
INSERT INTO `nideshop_category` VALUES ('1008005', '户外', '', '踏青出游，便携不误好心情', '1012000', '7', '8', '1', 'http://yanxuan.nosdn.127.net/83d22ca3d1c8f94ee23ca96de489864c.png', '', '', 'http://yanxuan.nosdn.127.net/833476fc3ecc30a7446279b787328775.png', 'L2', '0', 'MUJI、Nike等制造商出品');
INSERT INTO `nideshop_category` VALUES ('1008006', '口罩', '', '权威数据认证效果，防霾有底气', '1012000', '6', '6', '1', 'http://yanxuan.nosdn.127.net/9b93e661ff59cbda6094e8b30a63724e.png', '', '', 'http://yanxuan.nosdn.127.net/11d9700da759f2c962c2f6d9412ac2a1.png', 'L2', '0', '为你遮挡雾霾');
INSERT INTO `nideshop_category` VALUES ('1008007', '围巾件套', '', '严选好材料，亲肤柔软，防风抗寒，温暖不失风度', '1008000', '7', '6', '1', 'http://yanxuan.nosdn.127.net/3a8c7ae5b9dc5c1c4b7f2b656abb0279.png', '', '', 'http://yanxuan.nosdn.127.net/6beb3fd67106e42dc0f026b173373d16.png', 'L2', '0', '围上它，你的造型才完整');
INSERT INTO `nideshop_category` VALUES ('1008008', '被枕', '', '选用优质材料，确保好芯', '1005000', '2', '2', '1', 'http://yanxuan.nosdn.127.net/927bc33f7ae2895dd6c11cf91f5e3228.png', '', '', 'http://yanxuan.nosdn.127.net/b43ef7cececebe6292d2f7f590522e05.png', 'L2', '0', '守护你的睡眠时光');
INSERT INTO `nideshop_category` VALUES ('1008009', '床品件套', '', '严格用料，亲肤舒适', '1005000', '4', '3', '1', 'http://yanxuan.nosdn.127.net/243e5bf327a87217ad1f54592f0176ec.png', '', '', 'http://yanxuan.nosdn.127.net/81f671bd36bce05d5f57827e5c88dd1b.png', 'L2', '0', 'MUJI等品牌制造商出品');
INSERT INTO `nideshop_category` VALUES ('1008010', '拖鞋', '', '人体工学设计，放松双脚', '1008000', '6', '5', '1', 'http://yanxuan.nosdn.127.net/1121696544ed9b0c2a70e82f1088fa0e.png', '', '', 'http://yanxuan.nosdn.127.net/984ddb9671aab41651784ba55b2cbdcf.png', 'L2', '0', '穿上拖鞋，回到自我');
INSERT INTO `nideshop_category` VALUES ('1008011', '清洁保鲜', '', '让厨房整洁又新鲜，防尘防潮', '1005001', '6', '6', '1', 'http://yanxuan.nosdn.127.net/dc4d6c35b9f4abb42d2eeaf345710589.png', '', '', 'http://yanxuan.nosdn.127.net/04cd632e1589adcc4345e40e8ad75d2b.png', 'L2', '0', '真空保鲜，美味不限时');
INSERT INTO `nideshop_category` VALUES ('1008012', '功能厨具', '', '日日使用的物件，制作精良才能更耐用', '1005001', '3', '3', '1', 'http://yanxuan.nosdn.127.net/22db4ccbf52dc62c723ac83aa587812a.png', '', '', 'http://yanxuan.nosdn.127.net/5b94463017437467a93ae4af17c2ba4f.png', 'L2', '0', '下厨省力小帮手');
INSERT INTO `nideshop_category` VALUES ('1008013', '茶具咖啡具', '', '好茶配好器', '1005001', '5', '5', '1', 'http://yanxuan.nosdn.127.net/9ea192cd2719c8348f42ec17842ba763.png', '', '', 'http://yanxuan.nosdn.127.net/be3ba4056e274e311d1c23bd2931018d.png', 'L2', '0', '先进工艺制造，功夫体验');
INSERT INTO `nideshop_category` VALUES ('1008014', '糖巧', '', '优选健康原料，甜食也吃得放心', '1005002', '3', '3', '1', 'http://yanxuan.nosdn.127.net/db48a1db4daab74233656caaea4a06f3.png', '', '', 'http://yanxuan.nosdn.127.net/c12cf29b574c7e9d1fcff6a57a12eea2.png', 'L2', '0', '糖心蜜意，甜而不腻');
INSERT INTO `nideshop_category` VALUES ('1008015', '糕点', '', '无人工添加香精、防腐剂', '1005002', '1', '1', '1', 'http://yanxuan.nosdn.127.net/93168242df456b5f7bf3c89653b3db76.png', '', '', 'http://yanxuan.nosdn.127.net/66ea1d6ad602a8e441af7cada93bdc7a.png', 'L2', '0', '四季糕点，用心烘焙');
INSERT INTO `nideshop_category` VALUES ('1008016', '灯具', '', '极简主义，贴近生活的设计', '1005000', '8', '6', '1', 'http://yanxuan.nosdn.127.net/c48e0d9dcfac01499a437774a915842b.png', '', '', 'http://yanxuan.nosdn.127.net/f702dc399d14d4e1509d5ed6e57acd19.png', 'L2', '0', '一盏灯，温暖一个家');
INSERT INTO `nideshop_category` VALUES ('1008017', '收纳', '', '智慧收纳，抗菌防霉，便利拆卸，小空间的大智慧', '1012000', '2', '2', '1', 'http://yanxuan.nosdn.127.net/fdc048e1bf4f04d1c20b32eda5d1dc6e.png', '', '', 'http://yanxuan.nosdn.127.net/2a62f6c53f4ff089fa6a210c7a0c2e63.png', 'L2', '0', '选自古驰竹柄原料供应商');
INSERT INTO `nideshop_category` VALUES ('1008018', '单肩包', '', '匠心制版，立体有型', '1008000', '3', '3', '1', 'http://yanxuan.nosdn.127.net/2f71c7710f0bf857e787e1adb449c8a2.png', '', '', 'http://yanxuan.nosdn.127.net/55f34f23ed31f31e1313ff33602f90cc.png', 'L2', '0', '单肩装上惬意心情');
INSERT INTO `nideshop_category` VALUES ('1009000', '日用清洁', '', '天然材料，温和去除污垢', '1013001', '6', '6', '1', 'http://yanxuan.nosdn.127.net/e071686c212e93aa2fcafd0062a9c613.png', '', '', 'http://yanxuan.nosdn.127.net/729638bb13997f9c4c435b41ce6ed910.png', 'L2', '0', '洁净才能带来清爽心情');
INSERT INTO `nideshop_category` VALUES ('1010000', '服装', '', '贴身的，要亲肤', '0', '5', '4', '1', 'http://yanxuan.nosdn.127.net/003e1d1289f4f290506ac2aedbd09d35.jpg', 'http://yanxuan.nosdn.127.net/28a685c96f91584e7e4876f1397767db.png', '//nos.netease.com/yanxuan/135113d6a43536b717063413fa24d69a.jpg', 'http://yanxuan.nosdn.127.net/622c8d79292154017b0cbda97588a0d7.png', 'L1', '0', '贴身的，要亲肤');
INSERT INTO `nideshop_category` VALUES ('1010001', '内衣', '', '自然染料，亲肤舒适', '1010000', '2', '2', '1', 'http://yanxuan.nosdn.127.net/20279e1753e4eedc6e347857acda9681.png', '', '', 'http://yanxuan.nosdn.127.net/02fede55aba1bc6c9d7f7c01682f9e2d.png', 'L2', '0', '给你贴身的关怀');
INSERT INTO `nideshop_category` VALUES ('1010002', '内裤', '', '透气洁净，环保染制', '1010000', '1', '1', '1', 'http://yanxuan.nosdn.127.net/364269344ed69adafe1b70ab7998fc50.png', '', '', 'http://yanxuan.nosdn.127.net/0a7fe0a08c195ca2cf55d12cd3c30f09.png', 'L2', '0', '来自李维斯、爱慕等制造商');
INSERT INTO `nideshop_category` VALUES ('1010003', '地垫', '', '手工编织，时尚环保', '1005000', '5', '4', '1', 'http://yanxuan.nosdn.127.net/83d4c87f28c993af1aa8d3e4d30a2fa2.png', '', '', 'http://yanxuan.nosdn.127.net/1611ef6458e244d1909218becfe87c4d.png', 'L2', '0', '家里的第“五”面墙');
INSERT INTO `nideshop_category` VALUES ('1010004', '双肩包', '', '精巧设计，严选全程监制', '1008000', '2', '2', '1', 'http://yanxuan.nosdn.127.net/5197c44b610d786796f955334b55c7a5.png', '', '', 'http://yanxuan.nosdn.127.net/506d19510c967ba137283035a93738a1.png', 'L2', '0', '背上的时髦');
INSERT INTO `nideshop_category` VALUES ('1011000', '婴童', '', '爱，从心开始', '0', '7', '6', '1', 'http://yanxuan.nosdn.127.net/7dc78383e44df530f543659a977740de.jpg', 'http://yanxuan.nosdn.127.net/1ba9967b8de1ac50fad21774a4494f5d.png', '//nos.netease.com/yanxuan/8ab3c73fe90951a942e8b06d848f8743.jpg', 'http://yanxuan.nosdn.127.net/9cc0b3e0d5a4f4a22134c170f10b70f2.png', 'L1', '0', '爱，从心开始');
INSERT INTO `nideshop_category` VALUES ('1011001', '妈咪', '', '孕育生命的你更值得被爱', '1011000', '2', '2', '1', 'http://yanxuan.nosdn.127.net/720aebaa529df9391b95a078dfb2fd5c.png', '', '', 'http://yanxuan.nosdn.127.net/844e2f4dce94f71283840c141d4ca71b.png', 'L2', '0', '犬印、Harvest Hills制造商');
INSERT INTO `nideshop_category` VALUES ('1011002', '海外', '', '海外供应商直供，零关税、零风险、即时达', '1012000', '5', '5', '1', 'http://yanxuan.nosdn.127.net/da884ff3b9e9d5276986c99e85722461.png', '', '', 'http://yanxuan.nosdn.127.net/fd1de05d274222f1e56d057d2f2c20c6.png', 'L2', '0', '来自海外制造商的好物');
INSERT INTO `nideshop_category` VALUES ('1011003', '床垫', '', '助你拥有舒眠好梦', '1005000', '3', '3', '1', 'http://yanxuan.nosdn.127.net/316afeb3948b295dfe073e4c51f77a42.png', '', '', 'http://yanxuan.nosdn.127.net/d6e0e84961032fc70fd52a8d4d0fb514.png', 'L2', '0', '承托你的好时光');
INSERT INTO `nideshop_category` VALUES ('1011004', '家饰', '', '点缀美好生活，品质在于细节', '1005000', '9', '7', '1', 'http://yanxuan.nosdn.127.net/ab0df9445d985bf6719ac415313a8e88.png', '', '', 'http://yanxuan.nosdn.127.net/79275db76b5865e6167b0fbd141f2d7e.png', 'L2', '0', '装饰你的家');
INSERT INTO `nideshop_category` VALUES ('1012000', '杂货', '', '解忧，每个烦恼', '0', '8', '7', '1', 'http://yanxuan.nosdn.127.net/d233a1a9060a22e8eb0e2b326252eece.jpg', 'http://yanxuan.nosdn.127.net/c2a3d6349e72c35931fe3b5bcd0966be.png', '//nos.netease.com/yanxuan/a0c91ae573079830743dec6ee08f5841.jpg', 'http://yanxuan.nosdn.127.net/547853361d29a37282f377b9a755dd37.png', 'L1', '0', '解忧，每个烦恼');
INSERT INTO `nideshop_category` VALUES ('1012001', '功能箱包', '', '箱子里装着你的生活', '1008000', '1', '1', '1', 'http://yanxuan.nosdn.127.net/3050a2b3052d766c4b460d4b766353a3.png', '', '', 'http://yanxuan.nosdn.127.net/0645dcda6172118f9295630c2a6f234f.png', 'L2', '0', '范思哲、Coach等品牌制造商出品');
INSERT INTO `nideshop_category` VALUES ('1012002', '雨具', '', '玻璃纤维伞骨，稳定抗风', '1012000', '4', '4', '1', 'http://yanxuan.nosdn.127.net/4e929a21baebdb1200361d8097e35e45.png', '', '', 'http://yanxuan.nosdn.127.net/589da0f02917b8393197a43175764381.png', 'L2', '0', 'WPC制作商出品');
INSERT INTO `nideshop_category` VALUES ('1012003', '文具', '', '极简设计，环保材质', '1012000', '1', '1', '1', 'http://yanxuan.nosdn.127.net/e1743239e41ca9af76875aedc73be7f0.png', '', '', 'http://yanxuan.nosdn.127.net/e074795f61a83292d0f20eb7d124e2ac.png', 'L2', '0', '找回书写的力量');
INSERT INTO `nideshop_category` VALUES ('1013000', '靴', '', 'UGG制造商出品', '1008000', '5', '5', '1', 'http://yanxuan.nosdn.127.net/868c2a976719cd508e9ddf807167a446.png', '', '', 'http://yanxuan.nosdn.127.net/59485f1aa100e4210e16175f3412fa41.png', 'L2', '0', '经典的温暖');
INSERT INTO `nideshop_category` VALUES ('1013001', '洗护', '', '亲肤之物，严选天然', '0', '6', '5', '1', 'http://yanxuan.nosdn.127.net/ef8c49f8c92d1f86eb76dec0b5bc7cef.jpg', 'http://yanxuan.nosdn.127.net/9fe068776b6b1fca13053d68e9c0a83f.png', '//nos.netease.com/yanxuan/14bb4a29498a0f93a1ea001f26fea1dd.jpg', 'http://yanxuan.nosdn.127.net/1526ab0f5982722adbc8726f9f2a338c.png', 'L1', '0', '亲肤之物，严选天然');
INSERT INTO `nideshop_category` VALUES ('1013002', '美妆', '', '竹宝堂、资生堂等制造商出品', '1013001', '3', '3', '1', 'http://yanxuan.nosdn.127.net/aa49c088f74a1c318f1765cc2703495a.png', '', '', 'http://yanxuan.nosdn.127.net/d6a7b9a2eb6af92d709429798a4ca3ea.png', 'L2', '0', '为你的面容添色');
INSERT INTO `nideshop_category` VALUES ('1013003', '护发', '', '护发超有效小秘诀', '1013001', '5', '5', '1', 'http://yanxuan.nosdn.127.net/672ddbed88d9762d2be789080880b16a.png', '', '', 'http://yanxuan.nosdn.127.net/398375d0e39574c6e87273d328316186.png', 'L2', '0', '呵护秀发，柔顺不同发质');
INSERT INTO `nideshop_category` VALUES ('1013004', '香薰', '', '提炼纯净，清雅不腻', '1013001', '2', '2', '1', 'http://yanxuan.nosdn.127.net/d43e7af0a6a9385d88be2ca1df679158.png', '', '', 'http://yanxuan.nosdn.127.net/fc7764ff8e12d18f6c5881a32318ed16.png', 'L2', '0', '爱马仕集团制造商出品');
INSERT INTO `nideshop_category` VALUES ('1013005', '刀剪砧板', '', '厨房实用利器', '1005001', '7', '7', '1', 'http://yanxuan.nosdn.127.net/9d481ea4c2e9e6eda35aa720d407332e.png', '', '', 'http://yanxuan.nosdn.127.net/555afbfe05dab48c1a3b90dcaf89b4f2.png', 'L2', '0', '传统工艺 源自中国刀城');
INSERT INTO `nideshop_category` VALUES ('1013006', '家居服', '', '居家休闲必备', '1010000', '6', '6', '1', 'http://yanxuan.nosdn.127.net/71f391af17fce739a6a57a1eeadbcbf0.png', '', '', 'http://yanxuan.nosdn.127.net/5da102ea4c64081ce3a05a91c855fbc9.png', 'L2', '0', '舒适亲肤');
INSERT INTO `nideshop_category` VALUES ('1015000', '家具', '', '一级原木，严苛工艺', '1005000', '7', '5', '1', 'http://yanxuan.nosdn.127.net/4f00675caefd0d4177892ad18bfc2df6.png', '', '', 'http://yanxuan.nosdn.127.net/d5d41841136182bf49c1f99f5c452dd6.png', 'L2', '0', '大师级工艺');
INSERT INTO `nideshop_category` VALUES ('1015001', 'T恤', '', '立体裁剪，专为国人打造', '1010000', '3', '3', '1', 'http://yanxuan.nosdn.127.net/24a7a33cfeac0bb87a737480db79e053.png', '', '', 'http://yanxuan.nosdn.127.net/505c9a5a794b79e85fef4654722b3447.png', 'L2', '0', '自在而潇洒的穿着感');
INSERT INTO `nideshop_category` VALUES ('1017000', '宠物', '', '出口品质，严选贴合萌宠生活习惯用品。', '1005000', '10', '8', '1', 'http://yanxuan.nosdn.127.net/a0352c57c60ce4f68370ecdab6a30857.png', '', '', 'http://yanxuan.nosdn.127.net/dae4d6e89ab8a0cd3e8da026e4660137.png', 'L2', '0', '抑菌除味，打造宠物舒适空间');
INSERT INTO `nideshop_category` VALUES ('1018000', '夏日甜心', '', '湖南卫视《夏日甜心》授权，独家发售大猫熊同款周边', '1019000', '10', '10', '1', 'http://yanxuan.nosdn.127.net/b5e9f174404ef81b8603d6ecc304c62e.png', '', '', 'http://yanxuan.nosdn.127.net/2b8497fe583d3c9759128b2d76f89dfd.png', 'L2', '0', '湖南卫视《夏日甜心》周边');
INSERT INTO `nideshop_category` VALUES ('1019000', '志趣', '', '爱好，点缀生活', '0', '10', '9', '1', 'http://yanxuan.nosdn.127.net/99107fbd76eb66cd537213e478189ae1.png', 'http://yanxuan.nosdn.127.net/7093cfecb9dde1dd3eaf459623df4071.png', '//nos.netease.com/yanxuan/72de912b6350b33ecf88a27498840e62.jpg', 'http://yanxuan.nosdn.127.net/1706e24a5e605870ba3b37ff5f49aa18.png', 'L1', '0', '周边精品，共享热爱');
INSERT INTO `nideshop_category` VALUES ('1020000', '出行用品', '', '便携设计，轻便旅途', '1012000', '3', '3', '1', 'http://yanxuan.nosdn.127.net/b29a11afa76b9f4a57131555f1a54c77.png', '', '', 'http://yanxuan.nosdn.127.net/81e18c6970a7809ee0d86f0545428aa4.png', 'L2', '0', '出行小物，贴心相伴');
INSERT INTO `nideshop_category` VALUES ('1020001', '面部护理', '', '天然成分，无化学添加', '1013001', '4', '4', '1', 'http://yanxuan.nosdn.127.net/f73df75f334126cf1f3823696ea0663c.png', '', '', 'http://yanxuan.nosdn.127.net/babf6573f8acd53f21205a7577ec03e1.png', 'L2', '0', '温和无刺激的呵护');
INSERT INTO `nideshop_category` VALUES ('1020002', '用具', '', '环保材料，耐用不发霉', '1013001', '7', '7', '1', 'http://yanxuan.nosdn.127.net/1a851b2b3c9e16bdfd020a5fc03e9140.png', '', '', 'http://yanxuan.nosdn.127.net/4e3aebbd7ffef5bb250d19f13cb85620.png', 'L2', '0', '小工具成就美好浴室');
INSERT INTO `nideshop_category` VALUES ('1020003', '服饰', '', '100%纯棉，无荧光剂，严格质检', '1011000', '1', '1', '1', 'http://yanxuan.nosdn.127.net/4e50f3c4e4d0a64cd0ad14cfc0b6bd17.png', '', '', 'http://yanxuan.nosdn.127.net/004f5f96df4aeb0645abbd70c0637239.png', 'L2', '0', '萌宝穿搭，柔软舒适触感');
INSERT INTO `nideshop_category` VALUES ('1020004', '婴童洗护', '', '给孩子更美好的童年体验', '1011000', '5', '5', '1', 'http://yanxuan.nosdn.127.net/c55338691ebd46bee9ebf225f80363ce.png', '', '', 'http://yanxuan.nosdn.127.net/f2e301b189befff1d99adf917ba8ce20.png', 'L2', '0', '天然，呵护宝宝肌肤');
INSERT INTO `nideshop_category` VALUES ('1020005', '寝居', '', '始于初心，为爱初色', '1011000', '3', '3', '1', 'http://yanxuan.nosdn.127.net/0f3c5ad63139096fd0760219e12149af.png', '', '', 'http://yanxuan.nosdn.127.net/476995896abea91d3f2e9ec20d56bd8d.png', 'L2', '0', '无荧光剂，婴幼儿A类标准');
INSERT INTO `nideshop_category` VALUES ('1020006', '玩具', '', '严选材质，安全无害保证', '1011000', '4', '4', '1', 'http://yanxuan.nosdn.127.net/7aac7c5819f71345a52a4b9df23d6239.png', '', '', 'http://yanxuan.nosdn.127.net/34b3267efcddad09cd652f181d87aab0.png', 'L2', '0', '萌宝童趣必备');
INSERT INTO `nideshop_category` VALUES ('1020007', '喂养', '', '安全健康，我们执着于每个细节', '1011000', '6', '6', '1', 'http://yanxuan.nosdn.127.net/5db40a5bf84c177515610471d4d08687.png', '', '', 'http://yanxuan.nosdn.127.net/6b6f1672fe041594245fe56a5dd80871.png', 'L2', '0', '宝宝吃得香，妈妈才放心');
INSERT INTO `nideshop_category` VALUES ('1020008', '配饰', '', '优选设计，让细节显示好品味', '1008000', '8', '7', '1', 'http://yanxuan.nosdn.127.net/d835a76e56a88905194f543b67089b4b.png', '', '', 'http://yanxuan.nosdn.127.net/57ce29ca06f592d65aabfa5f0f87ad43.png', 'L2', '0', '与众不同的点睛之笔');
INSERT INTO `nideshop_category` VALUES ('1020009', '外衣', '', '外衣，是你面对这个世界的铠甲', '1010000', '10', '10', '1', 'http://yanxuan.nosdn.127.net/883d89e54a9287569a201eca388a7cda.png', '', '', 'http://yanxuan.nosdn.127.net/647f7c39eb7c353958274a59fd821d03.png', 'L2', '0', '穿出时尚感');
INSERT INTO `nideshop_category` VALUES ('1020010', '衬衫', '', '挺拔而不束缚', '1010000', '7', '7', '1', 'http://yanxuan.nosdn.127.net/94aa4a4814e2a7a97639438f1d52dcee.png', '', '', 'http://yanxuan.nosdn.127.net/7927f8422c341f7353041a30d01045a2.png', 'L2', '0', '细节讲究，合身剪裁');
INSERT INTO `nideshop_category` VALUES ('1021000', '节日礼盒', '', '遇见节日的美好', '1012000', '8', '9', '1', 'http://yanxuan.nosdn.127.net/e7b37b1ed5c18d63dc3e6c3f1aa85d8a.png', '', '', 'http://yanxuan.nosdn.127.net/bbb6f0ab4f6321121250c12583b0ff9a.png', 'L2', '0', '限量礼盒限时发售');
INSERT INTO `nideshop_category` VALUES ('1022000', '数码', '', '享受安全智能的科技生活', '1008000', '9', '9', '1', 'http://yanxuan.nosdn.127.net/3ec003761d346bc866de2ec249d7ff19.png', '', '', 'http://yanxuan.nosdn.127.net/c33b13875a86da535c935e3d454a6fd2.png', 'L2', '0', '智能硬件，匠心出品');
INSERT INTO `nideshop_category` VALUES ('1023000', '厨房小电', '', '省心省力，厨房高效能手', '1005001', '8', '8', '1', 'http://yanxuan.nosdn.127.net/521bd0c02d283b80ba49e73ca84df250.png', '', '', 'http://yanxuan.nosdn.127.net/c09d784ba592e4fadabbaef6b2e95a95.png', 'L2', '0', '厨房里的省心小电器');
INSERT INTO `nideshop_category` VALUES ('1025000', '礼品卡', '', '传递高品质生活美学', '1019000', '11', '11', '1', 'http://yanxuan.nosdn.127.net/bb9232716b2fc96d9bdbac4955360dfa.png', '', '', 'http://yanxuan.nosdn.127.net/1266f0767a3f67298a40574df0d177fb.png', 'L2', '0', '送礼、福利首选');
INSERT INTO `nideshop_category` VALUES ('1027000', '茗茶', '', '一品茶香，品茗即是观心，饮茶涤净尘虑', '1005002', '7', '7', '1', 'http://yanxuan.nosdn.127.net/0c5af0575176c4a3023783bef7a87a0f.png', '', '', 'http://yanxuan.nosdn.127.net/cfeb623929f3936cc882ffc6a9a2e927.png', 'L2', '0', '一品茶香，品茗即是观心，饮茶涤净尘虑');
INSERT INTO `nideshop_category` VALUES ('1027001', '果干', '', '品尝与收获到的是自然的味道', '1005002', '4', '4', '1', 'http://yanxuan.nosdn.127.net/60f4ae2beef4754347fa36208f84efab.png', '', '', 'http://yanxuan.nosdn.127.net/4cdbf6ae196671cca154fe16e152d8d4.png', 'L2', '0', '品尝与收获到的是自然的味道');
INSERT INTO `nideshop_category` VALUES ('1028001', '唱片', '', '瑞鸣音乐大师匠心打造', '1019000', '8', '8', '1', 'http://yanxuan.nosdn.127.net/71feb3efd3eaee01a74e8aa78430de9d.png', '', '', 'http://yanxuan.nosdn.127.net/3b69079ea27f90b4f539e8c3b76680f5.png', 'L2', '0', '经典音乐，用心典藏，瑞鸣音乐大师匠心打造');
INSERT INTO `nideshop_category` VALUES ('1032000', '魔兽世界', '', '魔兽世界周边', '1019000', '1', '1', '1', 'http://yanxuan.nosdn.127.net/336f0186a9920eb0f93a3912f3662ffe.png', '', '', 'http://yanxuan.nosdn.127.net/becfba90e8a5c95d403b8a6b9bb77825.png', 'L2', '0', '艾泽拉斯的冒险，才刚刚开始');
INSERT INTO `nideshop_category` VALUES ('1032001', '炉石传说', '', '炉石传说周边', '1019000', '2', '2', '1', 'http://yanxuan.nosdn.127.net/97937fcf2defb864d9e53d98a337d78a.png', '', '', 'http://yanxuan.nosdn.127.net/b5af3f6bfcbeb459d6c448ba87f8cc35.png', 'L2', '0', '快进来坐下吧，看看酒馆的新玩意');
INSERT INTO `nideshop_category` VALUES ('1032002', '守望先锋', '', '守望先锋周边', '1019000', '3', '3', '1', 'http://yanxuan.nosdn.127.net/8cab7bf1225dc9893bd9de06fc51921d.png', '', '', 'http://yanxuan.nosdn.127.net/a562f05bf38f5ee478fefb81856aad3d.png', 'L2', '0', '物美价廉的补给箱');
INSERT INTO `nideshop_category` VALUES ('1032003', '暗黑破坏神III', '', '暗黑破坏神III周边', '1019000', '4', '4', '1', 'http://yanxuan.nosdn.127.net/8fe4eb999f748236228a73e09878e277.png', '', '', 'http://yanxuan.nosdn.127.net/1e19e948de63a1d0895a8620250c441f.png', 'L2', '0', '奈非天们，停下脚步整理下行囊');
INSERT INTO `nideshop_category` VALUES ('1032004', '星际争霸II', '', '星际争霸II周边', '1019000', '5', '5', '1', 'http://yanxuan.nosdn.127.net/433ff879a3686625535ca0304be22ab2.png', '', '', 'http://yanxuan.nosdn.127.net/7394ce778791ae8242013d6c974f47e0.png', 'L2', '0', '记录科普卢星区的战斗时光');
INSERT INTO `nideshop_category` VALUES ('1032005', '风暴英雄', '', '风暴英雄周边', '1019000', '6', '6', '1', 'http://yanxuan.nosdn.127.net/e091aae0c8cafc5ab48dfabcc52c79b6.png', '', '', 'http://yanxuan.nosdn.127.net/ff1e28fb7151008f8dc46bbf8b357f63.png', 'L2', '0', '时空枢纽，是个充满惊喜的地方');
INSERT INTO `nideshop_category` VALUES ('1033000', '梦幻西游', '', '梦幻西游精品周边', '1019000', '7', '7', '1', 'http://yanxuan.nosdn.127.net/f0698297aaac41b778c1ea65eefb8b34.png', '', '', 'http://yanxuan.nosdn.127.net/36711325781ca50fdfe234489fca973e.png', 'L2', '0', '梦幻西游精品周边');
INSERT INTO `nideshop_category` VALUES ('1034000', '丝袜', '', '厚木制造商，专利冰丝', '1010000', '5', '5', '1', 'http://yanxuan.nosdn.127.net/d82d0bacfd7243c2ad09dbf2513cfcf9.png', '', '', 'http://yanxuan.nosdn.127.net/4f8f86dfd1d4b46a9cf783b4980db47f.png', 'L2', '0', '厚木制造商，专利冰丝');
INSERT INTO `nideshop_category` VALUES ('1034001', '童车童椅', '', '安全舒适，给宝宝一个快乐童年', '1011000', '7', '7', '1', 'http://yanxuan.nosdn.127.net/06bbfb293b6194b27ebdb3350203a1f7.png', '', '', 'http://yanxuan.nosdn.127.net/4d16871eb80dac59d1796c7d806a5cea.png', 'L2', '0', '安全舒适，给宝宝一个快乐童年');
INSERT INTO `nideshop_category` VALUES ('1035000', '卫衣', '', '舒适百搭，时尚选择', '1010000', '9', '9', '1', 'http://yanxuan.nosdn.127.net/97bb55280b8ffa40390f2ee36486314a.png', '', '', 'http://yanxuan.nosdn.127.net/0282a81bbcae6c39918808fe7c4e1b93.png', 'L2', '0', '舒适百搭，时尚选择');
INSERT INTO `nideshop_category` VALUES ('1035001', '毛衣', '', '温暖柔软，品质之选', '1010000', '8', '8', '1', 'http://yanxuan.nosdn.127.net/cc886f16c8b9893305f1b3b6ad4eb0b1.png', '', '', 'http://yanxuan.nosdn.127.net/b610b058cfd73a9211dc890b7b0cbc66.png', 'L2', '0', '温暖柔软，品质之选');
INSERT INTO `nideshop_category` VALUES ('1035002', '裤装', '', '高质感面料', '1010000', '11', '11', '1', 'http://yanxuan.nosdn.127.net/a3906045b1367d70f658ce9de03e8193.png', '', '', 'http://yanxuan.nosdn.127.net/1728b4eeaa7a3928f5416884f0e75b1c.png', 'L2', '0', '高质感面料，休闲商务两相宜');
INSERT INTO `nideshop_category` VALUES ('1035003', '肉制品', '', '真嗜肉者，都爱这一味，或麻辣鲜香、或五味俱全，都是佳肴美馔真滋味', '1005002', '8', '8', '1', 'http://yanxuan.nosdn.127.net/db3e11b8a6974a253818ae0d6fb2d24e.png', '', '', 'http://yanxuan.nosdn.127.net/94480324b376a51af47cf92df70d1ade.png', 'L2', '0', '真嗜肉者，都爱这一味，佳肴美馔真滋味');
INSERT INTO `nideshop_category` VALUES ('1036000', '夏凉', '', '夏凉床品，舒适一夏', '1005000', '1', '1', '1', 'http://yanxuan.nosdn.127.net/13ff4decdf38fe1a5bde34f0e0cc635a.png', '', '', 'http://yanxuan.nosdn.127.net/bd17c985bacb9b9ab1ab6e9d66ee343c.png', 'L2', '0', '夏凉床品，舒适一夏');
INSERT INTO `nideshop_category` VALUES ('1036001', '眼镜', '', '实用加时尚，造型百搭单品', '1012000', '9', '10', '1', 'http://yanxuan.nosdn.127.net/97f5f75ea1209dfbb85e91932d26c3ed.png', '', '', 'http://yanxuan.nosdn.127.net/c25fb420ccb6f692a2d16f1740b60d21.png', 'L2', '0', '实用加时尚，造型百搭单品');
INSERT INTO `nideshop_category` VALUES ('1036002', '汽车用品', '', '给你的爱车添装备', '1012000', '10', '10', '1', 'http://yanxuan.nosdn.127.net/382cda1ef9cca77d99bcef05070d7db0.png', '', '', 'http://yanxuan.nosdn.127.net/552e943e585a999169fdbc57b59524d6.png', 'L2', '0', '给你的爱车添装备');
INSERT INTO `nideshop_category` VALUES ('1036003', '调味', '', '烹饪必备，美食调味', '1005002', '9', '9', '1', 'http://yanxuan.nosdn.127.net/2ae44a3944f2bc737416e1cff3d4bcef.png', '', '', 'http://yanxuan.nosdn.127.net/13d58949a8c72ec914b5ef63ac726a43.png', 'L2', '0', '烹饪必备，美食调味');
INSERT INTO `nideshop_category` VALUES ('1036004', '大话西游', '', '大话西游正版周边', '1019000', '9', '8', '1', 'http://yanxuan.nosdn.127.net/b60618db213322bdc2c5b1208655bd7e.png', '', '', 'http://yanxuan.nosdn.127.net/470a017f508e9a18f3068be7b315e14b.png', 'L2', '0', '大话西游正版周边');

-- ----------------------------
-- Table structure for nideshop_channel
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_channel`;
CREATE TABLE `nideshop_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `icon_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(4) unsigned NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of nideshop_channel
-- ----------------------------
INSERT INTO `nideshop_channel` VALUES ('1005000', '居家', '/pages/category/category?id=1005000', 'https://yanxuan.nosdn.127.net/4f00675caefd0d4177892ad18bfc2df6.png', '1');
INSERT INTO `nideshop_channel` VALUES ('1005001', '餐厨', '/pages/category/category?id=1005001', 'https://yanxuan.nosdn.127.net/4aab4598017b5749e3b63309d25e9f6b.png', '2');
INSERT INTO `nideshop_channel` VALUES ('1005002', '服装', '/pages/category/category?id=1005002', 'https://yanxuan.nosdn.127.net/93168242df456b5f7bf3c89653b3db76.png', '4');
INSERT INTO `nideshop_channel` VALUES ('1008000', '配件', '/pages/category/category?id=1008000', 'https://yanxuan.nosdn.127.net/288b0e864a24763bade8e22c0c39ff02.png', '3');
INSERT INTO `nideshop_channel` VALUES ('1019000', '志趣', '/pages/category/category?id=1019000', 'https://yanxuan.nosdn.127.net/f0698297aaac41b778c1ea65eefb8b34.png', '5');

-- ----------------------------
-- Table structure for nideshop_collect
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_collect`;
CREATE TABLE `nideshop_collect` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL DEFAULT '0',
  `value_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `is_attention` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是关注',
  `type_id` int(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`value_id`),
  KEY `is_attention` (`is_attention`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of nideshop_collect
-- ----------------------------
INSERT INTO `nideshop_collect` VALUES ('64', 'oQmbb4sNZdxaUQZ0sfYgvtOP2S7c', '1015007', '0', '0', '0');
INSERT INTO `nideshop_collect` VALUES ('18', '1', '1015007', '1495466325', '0', '0');
INSERT INTO `nideshop_collect` VALUES ('19', '1', '1152161', '1495970357', '0', '0');
INSERT INTO `nideshop_collect` VALUES ('21', '1', '1156006', '1497685421', '0', '0');
INSERT INTO `nideshop_collect` VALUES ('47', '11', '1009012', '1500987979', '0', '0');
INSERT INTO `nideshop_collect` VALUES ('44', '11', '1134030', '1500987695', '0', '0');
INSERT INTO `nideshop_collect` VALUES ('33', '11', '1015007', '1500823262', '0', '0');
INSERT INTO `nideshop_collect` VALUES ('31', '11', '1011004', '1500822827', '0', '0');
INSERT INTO `nideshop_collect` VALUES ('68', 'oQmbb4sNZdxaUQZ0sfYgvtOP2S7c', '1134030', '0', '0', '0');

-- ----------------------------
-- Table structure for nideshop_comment
-- ----------------------------
DROP TABLE IF EXISTS `nideshop_comment`;
CREATE TABLE `nideshop_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `value_id` int(11) unsigned NOT NULL DEFAULT '0',
  `content` varchar(6550) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '储存为base64编码',
  `add_time` bigint(12) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `new_content` varchar(6550) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `id_value` (`value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of nideshop_comment
-- ----------------------------
INSERT INTO `nideshop_comment` VALUES ('1', '0', '1181000', '5biD5paZ5b6I5Y6a5a6e77yM6Kem5oSf5LiN6ZSZ77yM5rSX6L+H5LmL5ZCO5LiN57yp5rC05LiN5o6J6Imy', '1493964099', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('2', '0', '1181000', '5paZ5a2Q5b6I6IiS5pyN77yM5YeJ5YeJ55qE77yM6YWN5ZCI6JqV5Lid6KKr77yM5aSP5aSp5b6I5YeJ5b+rfg==', '1494347561', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('3', '0', '1181000', '5LiA55u05Zac5qyi57KX5biD55qE5bqK5LiK55So5ZOB44CC5Yas5pqW5aSP5YeJ44CC6L+Z5aWX55yL6LW35p2l6Z2e5bi45ryC5Lqu44CC5a6e6ZmF5oSf6KeJ5pyJ54K557KX5biD55qE5oSf6KeJ44CC5b6I5aW977yB', '1484961416', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('4', '0', '1006002', 'Mzg5OeW6iu+8jDIzOTnnmb3puYXnu5LooqvvvIw4OTnlm5vku7blpZfjgILnvZHmmJPkuKXpgInmiJHopoHnlq/kuobvvIE=', '1483867801', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('5', '0', '1006002', '5ryC5Lqu', '1478839204', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('6', '0', '1006002', '5Zub5Lu25aWX5bey57uP5pS25YiwIOi/mOayoeS9v+eUqCDkuI3ov4fmiYvmhJ/lvojlpb0g5Lmf5rKh5byC5ZGzIOebuOS/oeS4pemAieeahOecvOWFiSAg5bqU6K+l5LiN5Lya6K6p5oiR5aSx5pyb55qE', '1494383192', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('7', '0', '1006002', '6L+Z5Liq5b6I5rKJ77yM5L2G5piv5ZCM5LiA5aWX5pei5pyJ55m96Imy5Y+I5pyJ5rex6JOd6Imy77yM5oiR55So5LqG5ZC46Imy5biD77yM5omN6YG/5YWN5p+T6Imy77yM5qC55pys5LiN5pWi5LiA6LW35rSX77yM77yM77yM77yM', '1487744838', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('8', '0', '1006002', '54m55Yir5Zac5qyi55qE5bqK5ZOB44CC5ryC5Lqu', '1494548350', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('9', '0', '1006002', '6L+Y5rKh5pyJ5L2/55So77yM55yL6LW35p2l6L+Y5LiN6ZSZ', '1494510472', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('10', '0', '1006002', '5LiN6ZSZ6LSo6YeP5b6I5aW9', '1494474238', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('11', '0', '1006002', '5b6I5aW955yL77yM6LSo6YeP5Lmf5b6I5aW9', '1494386492', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('12', '0', '1006002', '6LaF576O77yM54m55Yir5Zac5qyi', '1493791214', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('13', '0', '1006002', '5oOK6Imz77yB', '1493737798', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('14', '0', '1006002', '6L+Y5rKh5omT5byA77yM57uj6Iqx5LiN6ZSZ44CC', '1493609747', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('15', '0', '1006002', '8J+MuA==', '1493425027', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('16', '0', '1006002', '5p2Q6LSo5aW977yM5peg5ZGz77yM6LWe', '1493273915', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('17', '0', '1006002', '546w5Zyo6YO96L+Y5Zyo55uW552A', '1493143721', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('18', '0', '1006002', '5aSq5Y6a5LqG77yM6LSo6YeP5b6I5aW977yM5Y+q6YCC5ZCI5Yas5aSp', '1492825378', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('19', '0', '1006002', '5a+56L+Z5aWX5bqK5ZOB5Z6C5raO5bey5LmF77yM5L2G5a+55LqO5Lu35qC85Y+I5pyJ54K554qv5ZiA5ZKV77yM6L+Z5qyh6ZmN5Lu377yM5L2/5oiR5LiL5Yaz5b+D5LiL5LqG5Y2V44CC5ou/5Zyo5omL6YeM5rKJ55S455S455qE77yM56WI5oS/5Yir6L6c6LSf6IGK5oiR5a+55Lil6YCJ55qE5pyf5pyb', '1492144961', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('20', '0', '1006002', '56ys5LqM5qyh5Lmw5LqG', '1492836768', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('21', '0', '1006002', '6LSo6YeP5b6I5aW977yM5bCx5piv5aSq55m95LqG77yM5oCq5oCq55qE', '1492750732', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('22', '0', '1006002', '44CC44CC44CC44CC44CC44CC44CC', '1492761421', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('23', '0', '1006002', '5Lil6YCJ6byT5Yqx6K+E5Lu35q+P5LiA5Lu25ZWG5ZOB77yM5oiR5Zac5qyi5Lil6YCJ55qE5Lic6KW/77yM5LiA5aaC5pei5b6A55qE5pSv5oyB77yB', '1491237985', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('24', '0', '1006002', '57Sg6ZuF77yM5Y+q5piv56Gs5Lqb', '1492357791', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('25', '0', '1006002', '576O77yM6Z2i5paZ6IiS5pyN44CC', '1492091712', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('26', '0', '1006002', '5Yi657uj5b6I5ryC5Lqu77yM6Z2e5bi46Z2e5bi45YC844CC', '1492008661', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('27', '0', '1006002', '6LaF57qn5aW955So', '1491712584', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('28', '0', '1006002', '5pyJ54K557Sg77yM5Yi657uj5LiN6ZSZ', '1491524014', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('29', '0', '1006002', '6auY56uv5aSn5rCU5LiK5qGj5qyh44CC5L2O6LCD5aWi5Y2O5pyJ5YaF5ra144CCICDlvojljpog5b6I6YeN', '1491045576', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('30', '0', '1006002', '6Z2e5bi45aW977yM6LSo6YeP77yM', '1490172279', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('31', '0', '1006007', '5b6I5qOS772e5b6I5pyJ6LSo5oSf77yM5Lqn5ZOB5oOz5piv5biC6Z2i5LiK5Y2D5YWD5Lul5LiK55qE5Lqn5ZOB6KeE5qC877yb6KKr5a2Q5L6n6Z2i6L+Y5pyJ5b+D55qE6K6+6K6h5LqG5LiA5q615bCP5ouJ6ZO+5omj5Y+v5Lul55yf5a6e55qE6Kem5pG45Yiw6KKr5a2Q6YeM6Z2i55qE5aGr5YWF54mpLeaYr+e+iuavm++8iOe+iua', '1492447876', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('32', '0', '1006007', '6KGo6Z2i5pG46LW35p2l5b6I6IiS5pyN77yM57q/6YO95aSE55CG5b6X5b6I5aW977yM6YeM6Z2i5pyJ5Lqb5Zyw5pa55aGr5YWF54mp5LiN5aSq5Z2H5YyA', '1478958022', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('33', '0', '1006007', '5YGa5bel55yf55qE5LiN6ZSZ77yM5oiR5amG5amG6K+05pyJ54K556Gs77yM5Y+v6IO95a+55q+U6JqV5Lid6KKr77yM6L+Y5piv5pyJ54K55LiN5LiA5qC344CC5Liq5Lq66KeJ5b6X6L+Y5piv5YC85b6X5Lmw55qE', '1490678816', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('34', '0', '1006007', '6KKr5a2Q5b6I6L275b6I6JaE77yM5LiN5piv5b6I5pqW77yM5Y2X5pa5546w5Zyo5pil5aSpMTjluqblt6blj7PnmoTmsJTmuKnvvIznm5bnnYDmr5TovoPlkIjpgILvvIzlhqzlpKnlho3lhrfngrnogq/lrprlsLHkuI3ooYzkuobjgII=', '1490445729', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('35', '0', '1006007', '6YWN5LiK6ZKI57uH5bi977yM5aal5aal55qE44CC5LiN5Y6a5LiN6JaE5peg5byC5ZGz77yM5Lmf5b6I5Lqy6IKk77yM5ruh5oSP44CC', '1493164402', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('36', '0', '1006007', '6LaF5aSn5LiA5Liq5YyF6KO577yM5qOJ6KKr5pG46LW35p2l5LiN6ZSZ77yM562J5b6F55uW', '1492909481', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('37', '0', '1006007', '5b6I6IiS5pyN55qE56eL5Yas576K5q+b6KKr77yM5LiN5Y6a5LiN6JaE77yM5Lmw5LqG5LiA54K56YO95LiN5ZCO5oKU77yB', '1490836875', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('38', '0', '1006007', '55yL552A5aW977yM5pG4552A5aW977yM6YeN6YeP5oSf6KeJ5Lmf5q2j5aW977yM6L+Y5rKh55uW77yM5bey57uP5aWX5LiK6KKr5aWX77yMNOW5tOWJjeeahOWwj+iiq+WtkOe7iOS6juWPr+S7pemAgOW9ueS6huOAglBTIOmCo+S4gOWdqOaYr+WPquWWte+9ng==', '1491105286', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('39', '0', '1006007', '55uW5LiK5LqGIOi/mOaIkA==', '1492603679', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('40', '0', '1006007', '5aW95aSn5LiA566x5ZWKIOiiq+WtkOWwuuWvuOi/mOaMuuWHhiDlh4blpIfmmZLkuIsg5Y+v5Lul55So5LiA55SoIOS4gOebtOWGrOWkqeebljQrNueahOWQiOiiqyDov5nkuKo15pak55qE5qC35a2QIOS4jeefpemBk+WGrOWkqeWNleebluaYr+S4jeaYr+WlveWGtyDov5jmsqHmnInnm5bov4fnvormr5vooqsg5LyaNeaWpOe+iuavm+i', '1492149347', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('41', '0', '1006007', '6KKr5a2Q5rKh5pyJ5ZGz6YGTIOWMhei+ueW+iOWlvSDlh4nkuobkuKTlpKkg5pio5pmaMTXluqYg552h552A5Y+R54OtIOW+iOi9u+W+iOiIkumAgiDphY3kuIrmsLTmtJfmo4nlm5vku7blpZflkozkuJ3nu5LmnpXlpLQg5a6M576O77yB77yB', '1484640065', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('42', '0', '1006007', '5rKh5pyJ57y654K544CC', '1491546414', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('43', '0', '1006007', '5pW05L2T5ruh5oSP', '1491441655', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('44', '0', '1006007', '55m95aSp5pmS6L+H77yM5LuK5pma5bey55uW5LiK77yM6L+Z5LmF55uW5Yia5aW95ZCI6YCC', '1490798537', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('45', '0', '1006007', '5LiL5Y2V5ZCO56ys5LqM5aSp5pep5LiK6aG65Liw5Yiw6LSn77yM5YWI6LWe5b+r6YCS77yB5YaN6K+06KKr5a2Q77yM5LiA5Y+j5rCU5Lmw5LqGM+W6iuiiq+WtkO+8jOWSjOiAgeWFrOWVhumHj+edgOS4jeWlveWwsemAgOaOie+8jOW8gOeuseWQjuaLv+i1t+adpemDveW+iOayieeahOW+iOacieWIhumHj++8jOWMhei+uei1sOe6v+e', '1491008257', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('46', '0', '1006007', '5YyF6KOF5b6I5aW977yM6KKr5a2Q5b6I5aW977yM5bm/5Lic55qE5Yas5aSp5aSf5LqG', '1490807814', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('47', '0', '1006007', '5LuK5aSp5omN5o2i5LiK77yM5aW95pqW5ZKM44CC6LSo6YeP5q+U5oiR5oOz6LGh5Lit55qE5aW944CC5aW96K+E44CC5biM5pyb5pma5LiK552h6KeJ5pe25LiN6KaB5aSq54Ot5ZWK77yB', '1483152323', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('48', '0', '1006007', '56ef5p2l55qE5oi/IOi/meagt+WwseWkn+S6hg==', '1489457106', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('49', '0', '1006007', '55u45b2T5LiN6ZSZ55qE6KKr5a2Q77yM5Y2X5pa55pil56eL55uW5q2j5aW977yM5Yas5aSp6ZyA6KaB5Yqg5LiA5bqK5q+b5q+v5LiN54S25aSq5Ya344CC', '1487314625', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('50', '0', '1006007', '5p+U6L2v77yM5Y6a5a6e77yM5rKh5pyJ5byC5ZGz77yM5LiN6LeR5q+b77yM5LuO55WZ55qE5bCP5Y+j6IO95riF5qWa55yL5Yiw6YeM6Z2i576K5q+b5ZOB6LSo5b6I5LiN6ZSZ77yM55uW552A5b6I5pqW5ZKM44CC546v5omj5pyJ5YWr5Liq77yM5aWX6KKr5aWX5Lmf5b6I5pa55L6/77yM5LiN55So5ouF5b+D6KKr5aWX6ZSZ5L2N44C', '1488335090', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('51', '0', '1006007', '5YyF6KOd5b6I5aW977yB5omT6ZaL5b6M5pG46JGX6LOq6YeP5Lmf6Z2e5bi45LiN6Yyv77yB5ru/5oSP55qE5LiA5qyh6LO854mp6auU6amXLg==', '1481222099', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('52', '0', '1006007', '55yL5LiK5Y675LiN6ZSZ77yM5aqz5aaH6KaB6L+H5p2l5LqG77yM5Lmw5LqG5Zub5Lu25aWX5ZKM6KKr6Iqv77yM6YO96KaB5o2i5paw55qE57uZ5aW55LiA5Liq5oOK5Zac77yB', '1481765389', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('53', '0', '1006007', '572R5piT5Lmw5LqGMjIww5cyNDDooqvlpZfvvIznu5Pmnpzlm57lrrblj5HnjrDlpKfkuoblj4jmnaXkubDkuobooqvoiq/vvIzlj5HnjrDnvZHmmJPkuKXpgInotKjph4/nnJ/kuI3plJnvvIzlpJrmjqjlh7rnsr7lk4E=', '1481993564', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('54', '0', '1006007', '5LiN6ZSZ5LiN6ZSZ5LiN6ZSZ55qE77yM5Zac5qyi5LiK5Lil6YCJ', '1488416326', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('55', '0', '1006007', '5beo5aSn5peg5q+U55qE566x5a2Q77yM5YGa5bel77yM6LSo5oSf6YO96LaF6LWe77yM5bey57uP6KOF5aW96KKr5aWX77yM55uW5Zyo6Lqr5LiK77yM5YW35L2T5pWI5p6c5aaC5L2V77yM5Zue5aS06L+96K+E', '1481287755', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('56', '0', '1006007', '5oiQ6YO95LqM5pyI5bqV77yM56m66LCD5byAMjXluqbvvIzlpojlpojor7TooqvlrZDlvojmmpblkow=', '1488013807', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('57', '0', '1006007', '5YyF6KOF5b6I57uT5a6e77yM6YeM5LiA5bGC5aSW5LiA5bGC44CC5Lic6KW/5Lmf5b6I5aW95ZOf8J+YhA==', '1487683645', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('58', '0', '1006007', '5Zac5qyi', '1487651942', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('59', '0', '1006007', '6Z2i5paZ5pG46LW35p2l5b6I6IiS5pyN77yM5rKh5pyJ576K5q+b5ZGz77yM5L2G5piv5pyJ54K55paw5biD5paZ55qE5ZGz6YGT44CC6KKr5a2Q5rKh5pyJ576957uS6KKr6L2777yM5L2G5Lmf5LiN566X5Y6a6YeN44CC5aW96K+E77yB', '1479986158', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('60', '0', '1006007', '6Z2e5bi45aW977yM5b6I5pqW5ZKM', '1487495005', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('61', '0', '1006010', '6KKr5a2Q5pS25Yiw5YWI5pm+5pmS5Lik5aSp44CC5rKh5pyJ5byC5ZGz77yM5YGa5bel57K+57uG77yM5omL5oSf5LiN6ZSZ77yM5ou/5LqG5LiA5pKu54On5piv57qv576K5q+b55qE44CC55u45L+h5Lil6YCJ55qE5ZOB6LSo44CC', '1488945838', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('62', '0', '1006010', '6LSo6YeP5b6I5aW977yM6L+Y5rKh55So77yM55yL552A5bCx6Z2e5bi45Zac5qyi77yB', '1493541884', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('63', '0', '1006010', '', '1493099124', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('64', '0', '1006010', '5bC65a+46Juu5aW977yB6LSo5oSf5aW977yB6Z2e5bi45qOS77yB', '1492076696', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('65', '0', '1006010', '5oiR56Gu5a6e5rKh5pyJ5Y+R546w5pyJ5LuA5LmI5byC5ZGz77yM576K5q+b6KKr6Z2e5bi46IiS5pyN77yM57qv5paw576K5q+b5ZOB6LSo6Z2e5bi45aW977yM6L+Z5Liq5Lu35qC85ZWG5Zy66YeM6Z2i5piv5Lmw5LiN5Yiw55qE77yM5o+Q6Iqx5YGa5bel5Lmf6Z2e5bi457K+57uG44CC6YWN5LiK5Y675bm05Lmw55qE5bqK5Y2V77y', '1491134002', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('66', '0', '1006010', '5pS25Yiw5LqG77yM6L+Y5rKh55So', '1489546020', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('67', '0', '1006010', '5YyF6KOF55uS5a2Q5b6I5aSn44CCCuWSjOWbm+S7tuWll+S4gOi1t+S5sOeahO+8jOWFiOaZkuaZkuWGjeWll+S4iuOAgg==', '1486770266', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('68', '0', '1006010', '5Y+R6LSn5b6I5b+r77yM5pyN5Yqh5b6I5aW977yB', '1488252963', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('69', '0', '1006010', '6LaF5Zac5qyi77yM5pmS5LiA5pmS77yM5bCx5YeG5aSH5o2i5LiK55So5LqG77yB', '1487582754', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('70', '0', '1006010', '5b6I5qOS5ZWKIOi2hee6p+WlvSDlv6Dlrp7nsonkuJ0=', '1486657739', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('71', '0', '1006010', '5ZCT5q275Liq5Lq677yM5YyF6KOF5aSq5aSn5LqG44CC5Li65b+r6YCS6KGM5Lia5bqf54mp5ouF5b+n77yB6KKr5a2Q6L+Y5rKh55So55qE77yM5Y6a6JaE5Y+v5Lul', '1482212842', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('72', '0', '1006010', '6Z2e5bi45aW955qE5ZWG5ZOB77yM5oy65Y6a5a6e77yM5aWX5Zyo5Lil6YCJ6KKr572p6YeM5q2j5aW944CC5b6I6IiS6YCC55qE5oSf6KeJ77yM5LuK5pma6K+V6K+V5YaN6Lef6K+E44CC', '1479985934', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('73', '0', '1006010', '57uG576K5q+b5q+U576K5q+b5Y+I5pu05p+U6L2v6IiS5pyN77yM5YyF6KOF5L6d5pen5by65aSn77yM56ys5LqM5bqK5LqG77yM562J552A5YaN5Zui56ys5LiJ5bqK57uZ5bCP5a2p44CC', '1480162560', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('74', '0', '1006010', '5b6I5aW98J+Rje+8jOWWnOasog==', '1484123401', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('75', '0', '1006010', '5LiN6ZSZ77yM5oy65aW955qE77yM5omT566X5pmS5LiA5aSp77yM5YaN55So', '1483153641', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('76', '0', '1006010', '6LSo6YeP5omL5oSf5b6I5aW977yM5YC85b6X6LSt5Lmw44CC5Zi/5Zi/44CC5oSf6LCi5oiR5Lit55qE5LyY5oOg5Yi45Lmw5ruhNTk55bCRMTA177yB5YiS566X', '1480040474', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('77', '0', '1006010', '5Lic6KW/6L+Y5LiN6ZSZ77yM5a626YeMMjDluqbnm5bnnYDnqI3lvq7mnInngrnng63jgII=', '1482657469', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('78', '0', '1006010', '5rKh5pyJ5ZGz6YGT5ZGA77yM5pG46LW35p2l5omL5oSf5LiN6ZSZ55qE4oCm4oCm5Lil6YCJ6ISR5q6L57KJ77yM5LiN5aSa6K+05LqG77yM6LWe8J+RjQ==', '1479793442', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('79', '0', '1006010', '5omL5oSf5aSq5qOS5LqG77yM5pS25Yiw5pmS5LqG5LiA5aSp5bCx55So5LiK5LqG77yM6LaF5pqW5ZKM77yB6LWe', '1481767112', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('80', '0', '1006010', '566A57qm77yM5bmy5YeA77yB5Zub5Lu25aWX77yM6KKr5a2Q77yM5bqK5Z6r5YWo6YO95o2i5oiQ5Lil6YCJ55qE8J+RjfCfj7s=', '1481438158', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('81', '0', '1006010', '6KKr5a2Q5p+U6L2v5omL5oSf5b6I5aW9', '1481246941', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('82', '0', '1006010', '54KS6bih5aSn55qE5YyF6KOF55uS77yM6L+Z5Yeg5aSp5aSp5rCU5LiN57uZ5Yqb77yM6L+Y5rKh5pyJ5pmS77yM5ZCO57ut6L+96K+E44CC', '1479303106', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('83', '0', '1006010', '5pS25Yiw6KKr5YyF6KOF566x5ZCT5LqG5LiA6Lez77yM566x5Lit566x5aW95a6J5YWo77yM6KKr5a2Q576K5q+b5YiG5Li65LiA5qC85qC857yd5aW977yM5LiN6LWw5L2N77yM5aW95p+U6L2v77yM5aaI5aaI5Y+v5Lul6L+H5Liq5pqW5pqW55qE5Yas5aSp5LqG44CC', '1478929762', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('84', '0', '1006010', '5Lil6YCJ55qE6LSo6YeP5rKh5pyJ6K6p5Lq65aSx5pyb77yM5ZOB6LSo55yf5b+D5aW977yB5YGa5bel6K6p5oiR5rKh5pyJ5LuA5LmI5Y+v5oyR5YmU55qE77yM5Y+C5Yqg5LqG5oSf5oGp6IqC55qE5rS75Yqo77yM5oSf6KeJ6LWa5Yiw5LqG5a6e5oOg77yBIOW4jOacm+S4pemAiee7p+e7reaOqOWHuumrmOWTgei0qO+8jOaAp+S7t+a', '1480481711', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('85', '0', '1006010', '5b6I5aSn5b6I5rip5pqW77yM5aWz55uG5Y+L5b6I5Zac5qyi', '1480128167', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('86', '0', '1006010', '5LiA5qyh5Lmw5LqG5Yeg5aWX77yM5b6I5LiN6ZSZ', '1480062322', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('87', '0', '1006010', '5b6I5aW977yM5b6I6IiS5pyN44CC5bey57uP5aWX5LiK5LqG6KKr5aWX77yI5Lmf5piv572R5piT5Lil6YCJ55qE77yJ44CC', '1479090471', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('88', '0', '1006010', '5Lik5bGC5L+d5oqk77yM5aWX5LqG5Liq5aSn566x5a2Q77yM5Z+65LqO5a+55Lil6YCJ55qE5L+h5Lu777yM5Lq655Sf56ys5LiA5qyh572R5LiK5Lmw6KKr5a2Q77yM6ICM5LiU5piv5oiR5rKh55uW6L+H55qE576K5q+b6KKr77yM55m955m955qE77yM6L2v6L2v55qE77yM56uL6ams6Lef5LiA6LW35Yiw55qE6KKr5aWX57uT5ZCI5Lq', '1479913690', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('89', '0', '1006010', '6LSo6YeP5b6I5aW977yM6L+Y5rKh55So77yM5biM5pyb5piv5Liq5aW95Lic6KW/44CC', '1479309588', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('90', '0', '1006010', '5q+U5oOz6LGh5Lit55qE5aW95aW95aSa77yB5Lul6Iez5LqO5oiR56ys5LiA5qyh5oS/5oSP5Y+R5Lmw5a6256eA77yB', '1479044359', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('91', '0', '1006013', '5pm+5LqG5Lik5aSpIOeOsOWcqOebluS6hiDlpb3oiJLmnI3llYrvvIHlt7Lnu4/niLHkuIrnvZHmmJPkuobkuKXpgInkuoYg6KaB5YmB5omL5LqG', '1492605044', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('92', '0', '1006013', '6KKr5a2Q6LSo6YeP5b6I5aW977yM5q+U5a6e5L2T5bqX55qE5L6/5a6c6LSo6YeP5Y+I5aW977yM5YC85LqG77yB', '1493042422', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('93', '0', '1006013', '6aG65Liw5b+r6YCS77yM54mp5rWB5b6I5b+r77yB5a6d6LSd5omL5oSf5b6I6IiS5pyN77yB', '1492355576', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('94', '0', '1006013', '5b+r6YCS6LaF57qn5b+rIOS4gOWkqeS4jeWIsOWwsemAgeadpeS6hiDlr7nkuKXpgInnmoTotKjph4/ku47mnaXmsqHmnInmi4Xlv4Pov4cg6L+Z5qyh5pu05piv5Ye65LmO5oSP5paZ55qE5aW9IOi1ng==', '1492835186', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('95', '0', '1006013', '5b6I5qOS55qE5LiA5Liq5Lqn5ZOB77yB6Z2e5bi45ruh5oSP77yB55uW6LW35p2l6L276JaE5Y+I6YCP5rCU77yM5Zyo5Ya35rCU5oi/55qE5L+d5pqW5bqm5Lmf6Laz5aSf44CC5b6I5Zac5qyi572R5piT55qE6JqV5Lid57O75YiX5Lqn5ZOB44CC', '1492739498', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('96', '0', '1006013', '5a+56JqV5Lid6KKr6Z2e5bi45oyR5YmU55qE5oiR6KGo56S65a+55Lil6YCJ55qE5ZOB6LSo6Z2e5bi45ruh5oSP77yM6LSn5ZOB55qE56Gu5pivMTAwJeahkeialeS4ne+8jOWBmuW3peeyvue7hu+8jOmdouaWmeWOmuWunu+8jOS7t+agvOecn+W/g+WIkueul++8jOecn+aYr+WkquaDiuiJs+S6hu+8jOW3sue7j+aOqOiNkOe7mei6q+i', '1493247462', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('97', '0', '1006013', '6JqV5Lid55So55qE5b6I5aW977yM6L276JaE6IiS6YCC77yM5oCn5Lu35q+U5b6I6auY44CC5YeG5aSH5Zue6LSt44CC', '1492596021', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('98', '0', '1006013', '5oiR5Zyo572X6I6x5a6e5L2T5bqX55yL5Yiw5pivNDAwZ+imgeWFq+eZvuWkmu+8jOaYr+ahkeialemVv+S4neOAguS4pemAiei/meS4quaUtuWIsOWQjuaEn+inieS5n+S4jemUme+8jOaciea3oea3oeeahOmCo+enjeialeS4nemmmeWRs++8jOinpuaEn+S5n+W+iOWlve+8jOi/mOayoeeblu+8jOW6lOivpeS8muW+iOWlve+8gQ==', '1492781458', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('99', '0', '1006013', '5Lil6YCJ5Zyw55CD5pel5rS75Yqo5Lmw55qE77yM5Lik5p2h5Lmf5beu5LiN5aSa5YWr5oqY77yM5q2j5aW95ZKM6ICB5aaI5LiA5Lq65LiA5p2h77yM5aSP5aSp5b+r5Yiw5ZWm77yM5oSf6KeJ5LiA5pak5Lmf5LiN5piv5b6I6JaE77yM6JqV5Lid55yL552A5Lmf5LiN6ZSZ77yM5rKh5LuA5LmI5ZGz6YGT77yM56iN5b6u6YCa6aOO5ZC', '1492921360', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('100', '0', '1006013', '55yf55qE5LiN6ZSZ77yM5pS25Yiw5LmL5ZCO6ams5LiK5L2T6aqM5LqG44CC5pW05L2T5oSf6KeJ6Z2e5bi45p+U5ZKM6IiS6YCC77yM5b6I5pyJ6LSo5oSf44CC5oSf6KeJ5L2/55So5rip5bqm6ZyA6KaBMjDluqbliLAyNeW6puOAgumdnuW4uOWWnOasouOAgg==', '1494116792', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('101', '0', '1006013', '5aSq6IiS5pyN5ZWm77yB5Y+I6L275Y+I6IiS5pyN77yB566A55u05aSq5YC85LqG44CC6L+Y5oOz5Lmw5LiA5aWX44CC552h6KeJ6YO95oiQ5LqG5LiA56eN5Lqr5Y+X5ZWm77yB', '1493616659', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('102', '0', '1006013', '5pG4552A5ruR5ruR55qE77yM5rKh5pyJ5ZGz6YGT77yM5Y2X5Lqs6L+Z5Liq5aSp55uW56iN5b6u5pyJ54K55YeJ77yM562J5YGH5pel5rip5bqm5LiK5p2l5bCx6IO955So5LqG44CC', '1493303753', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('103', '0', '1006013', '5YyF6KOF55yf5piv5aSq5Lil5a6e5LqG77yM6LSo6YeP5b6I5aW977yMMC415YWs5pak55qE55uW552A5LiN5rKJ77yM5b6I6LS06Lqr77yM5rKh5pyJ5byC5ZGz', '1494552525', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('104', '0', '1006013', '5omL5oSf6LaF57qn5qOS77yM5pys5p2l5Lmw5LqGMuW6iu+8jOi/mOaLheW/g+S4jeWQiOaEj+mAgOi0p+m6u+eDpu+8jOeOsOWcqOeci+adpeaLheW/g+WujOWFqOaYr+WkmuS9meeahOWVpuOAgg==', '1491823245', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('105', '0', '1006013', '5omL5oSf6LaF57qn5qOS77yM5pys5p2l5Lmw5LqGMuW6iu+8jOi/mOaLheW/g+S4jeWQiOaEj+mAgOi0p+m6u+eDpu+8jOeOsOWcqOeci+adpeaLheW/g+WujOWFqOaYr+WkmuS9meeahOWVpuOAgg==', '1491823242', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('106', '0', '1006013', '5Yiw5LqG5bCx5omT5byA6KOF5aW95LqG77yM6L+Z5Liq5aSp55uW552A5q2j5ZCI6YCC44CC5p+U6L2v5Lqy6IKk44CC5Lu35qC8576O5Li944CC55yf5b+D5LiN6ZSZ44CC', '1492151942', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('107', '0', '1006013', '6LaF57qn6LaF57qn6IiS5pyN44CC55So5Yi45Lul5ZCO5oSf6KeJ5Lmf5oy65YiS566X55qE44CC5biM5pyb6IO95o6o5Ye65YaN5Y6a5LiA54K555qE44CC', '1494143857', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('108', '0', '1006013', '5LiB56OK55yf5piv5Liq5pyA5pyJ5oOF5oCA55qEQ0VP77yM5Lmf5piv5YW754yq5LiT5Lia5oi36YeM5pyA5pyJ5oOF5oCA55qE77yB5Lit5q+S5Lil6YCJ77yB', '1490421316', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('109', '0', '1006013', '5oy65pyN5biW55qE77yM5aSp5rCU54Ot5LqG5Yia5aW9572R5LiK77yM5bCx5piv5pyJ6IKh5ZGz6YGT77yM5b6X5pm+5pm+', '1492265524', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('110', '0', '1006013', '5L+d6K+B5Lil5a6e77yM6LSo6YeP5p2g5p2g55qE', '1493911040', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('111', '0', '1006013', '5LiA6LW35Lmw55qE77yM5b6I5aW9', '1493897875', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('112', '0', '1006013', '55yf5b+D5aW977yB6LWe5LiA5Liq77yB5pSv5oyB5Zu96LSn', '1493811346', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('113', '0', '1006013', '5LiN6ZSZ', '1493781488', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('114', '0', '1006013', '6LSo6YeP5b6I5aW977yM5b6I6IiS5pyN', '1493694973', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('115', '0', '1006013', '5aWX6L+b5Y675LqG5b6I6IiS5pyN5ZWK44CC5bCx5piv5oOz6KaB6L+Z56eN6JaE54K555qE77yM5a626YeM55qE6YO95aSq5Y6a', '1489419740', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('116', '0', '1006013', '5YyF6KOF5b6I5LuU57uG77yM57yd5ZCI5YGa5bel5aW977yM5aGr5YWF5p+U6L2v6L276JaE44CC562J5aSp5rCU5pqW5ZKM5ZCO5bCx55So', '1491927029', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('117', '0', '1006013', '5pyJ54K56JaE77yM5L2G5piv5p+U6L2v6JOs5p2+44CC6YCC5ZCI6L+Z5Liq5a2j6IqC44CC', '1492774857', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('118', '0', '1006013', '5oSf6KeJ6L+Y6KGM77yM6KaB55So6L+H5omN55+l6YGT5aW95LiN5aW9', '1492350307', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('119', '0', '1006013', '5b6I6IiS5pyN77yM6YCC5ZCI5aSP5aSp5ZC556m66LCD5pe255uW', '1492263748', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('120', '0', '1006013', '5LiJ5bGC5YyF6KOF77yM5pS25Yiw5ZCO5Yia5aW95pm05aSp5pq05pmS5LqG77yB5LiN6ZSZ', '1492009133', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('121', '0', '1006014', '6LaF57qn5Zac5qyi6L+Z5Liq6KKr5a2Q77yM6L+Z5Liq57uE5ZCI5bm/5Lic5bey57uP5aSf55So5LqG77yM55yf5aW977yM5aW95YOP5LiA5py15LqR55uW5Zyo6Lqr5LiK77yM5q+U5Lul5YmN5Lmw55qE6JqV5Lid6KKr6YO95aW9772e', '1492690358', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('122', '0', '1006014', '5aaI5aaI6K+06Z2e5bi45aW977yM5a2X5q+N6KKr6K6+6K6h6Z2e5bi45aW955So77yM6Z2i5paZ5b6I5aW96auY5qGj77yM5q+U5p+Q5Lqb5aSn54mM5YiS566X5aSa5LqG77yM6JqV5Lid6KKr5piv5aSp54S255qE5b6I5YW755qu6IKk', '1493472093', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('123', '0', '1006014', '5oCn5Lu35q+U6LaF6auY77yM5a2Q5q+N6KKr5Zub5a2j6YCC55So77yM5a6d5a6d552h6KeJ5a655piT5Ye65rGX77yM6JqV5Lid6KKr6YCP5rCU5L+d5pqW5pyA5ZCI6YCC44CC', '1492933337', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('124', '0', '1006014', '6KKr5a2Q5pS25Yiw5LqG77yM5YeJ5LqG5Lik5aSp5ZCO5bCx5byA5aeL55So5q+N6KKr77yM5q2j5ZCI6YCC77yM5b6I6IiS5pyN44CC', '1492611426', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('125', '0', '1006014', '6KKr5a2Q6LSo6YeP5b6I5aW977yM6Z2e5bi46IiS5pyN77yM5q+N6KKr5q2j6YCC5ZCI5pil56eL77yM5a2Q6KKr6YCC5ZCI5aSP5aSp77yM5Yas5aSp5a2Q5q+N5ZCI5L2T77yM56ys5LiA5qyh5Zyo5Lil6YCJ77yM5b6I5qOS55qE6LSt54mp5L2T6aqM77yM5Y+I5o6l6L+e5LiL5LqG5Yeg5Y2V77yM5pyf5b6F5Lit44CC', '1492483018', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('126', '0', '1006014', '5pS25Yiw5ZCO5pm+5ZGz5Lik5aSp77yM5Y6a55qE5pS26LW35p2l562J5aSp5Ya35LqG55uW77yM6JaE55qE5bey57uP55uW5LiK5LqG77yM5omL5oSf6Z2e5bi45aW977yM5Lid5ruR77yM55uW6LW35p2l5Lmf5b6I6IiS6YCC77yM5Lqy6IKk77yM6YCP5rCU77yM5qGR6JqV5Lid55qE6KKr5a2Q5a+55Lq66Lqr5L2T5aW977yM5oC75Lm', '1493285797', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('127', '0', '1006014', '6LaF6IiS5pyN77yM5Lmw55qE5piv5a2X5q+N6KKr77yMMS414p6VMC4155qE77yM5Yas5aSp6IKv5a6a5b6I6IiS5pyN77yM6L+Z5Liq5a2j6IqC55So55qE5pivMS4155qE56iN5b6u5pyJ54K554Ot77yM6L+H5Yeg5aSp5bCx55SoMC4155qE5ZWm44CC5omT566X5ZCO5pyf5YaN5YWl5LiA5bqKMeWFrOaWpOeahO+8jOaEn+inieS8mum', '1492821519', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('128', '0', '1006014', '6IiS5pyN77yM5p+U6L2v77yM5Y+M5bGC77yM5Yas5aSP5Lik55So77yM5aW9', '1492535167', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('129', '0', '1006014', '6L+Y5piv5pyJ6YKj5LmI6YeN6YKj5LmI5rKJ772e5Y6f5pys6L+Y5Zyo5ouF5b+D5Lya5LiN5Lya5Yas5aSp55uW5LqG5bCR5LqG772e6ZO65LiK5Lul5ZCO6KeJ5b6X5bqU6K+l5Lmf5b6I5beu5LiN5aSa5LqG77yB', '1493826260', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('130', '0', '1006014', '5YyF6KOF55qE5b6I55So5b+D77yM6ams5LiK5pm+5pmS6LW35p2l77yM5a2Q5q+N6KKr5Y+g5Zyo5LiA6LW35Yas5aSp5bqU6K+l5LiN5Ya35LqG77yM5pil56eL6KKr5q2j5aW955So5LiK44CC', '1491096090', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('131', '0', '1006014', '5Yia5Lmw5bCx5pyJ5rS75Yqo5LqG77yM55So552A5oy65aW95YaN57uZ54i25q+N5Lmw5LiA5aWX77yM5q+U6Ieq5bex6YKj5aWX5YiS566X5aSa5LqGfn4=', '1491709155', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('132', '0', '1006014', '5b6I6IiS5pyN77yM5a+55q+U5LqG572X6I6x5a6257q677yM6L+Y5piv6YCJ5oup5LqG5Lil6YCJ77yM5rKh5pyJ5Luk5Lq65aSx5pyb44CC', '1494259096', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('133', '0', '1006014', '5bC65a+46Juu5aW977yB6LSo5oSf5Lmf5aW977yB6Juu5Zac5qyi77yM5Lul5ZCO5pyJ6ZyA6KaB6L+Y5Lya5YWJ6aG+55qE77yB', '1492076644', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('134', '0', '1006014', '5aW96YeN5LiA5aSn5YyF77yM6LSo6YeP5bqU6K+l5LiN6ZSZ77yM55u45L+h5Lil6YCJ', '1492399493', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('135', '0', '1006014', '6JqV5Lid6KKr6Z2e5bi45aW96Z2e5bi45aW96Z2e5bi45aW977yM5o2i5LiL576957uS6KKr5q2j5aW955So5a6D77yM6LaF57qn5Lid5ruR77yM5aSW6Z2i55qE6Z2i5paZ5Lmf6auY5aSn5LiK77yM5aSq5a+55b6X6LW35a6D55qE5Lu35qC85LqG77yM6ZqU552A6KKr572p6YO96IO95oSf5Yiw5Lid5ruR77yM5b+F6aG76LWe5LiA5Li', '1492317293', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('136', '0', '1006014', '5rip6aao56aP6KKL5o+t56eY', '1491909085', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('137', '0', '1006014', '5LiN6ZSZ5LiN6ZSZ', '1491711852', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('138', '0', '1006014', '5pil5aSp5Yiw5LqG77yM5LiA55u05rKh5pyJ55So6LW35p2l77yM6KKr5oiR5aGe5Yiw5LqG5p+c5a2Q6KeS6JC96YeM77yM55yf5piv5LiN5aW95oSP5oCd77yB5a2Q5q+N6KKr5Y+v5Lul5LiA5bm05Zub5a2j6YO955So5LiK77yM5aSP5aSp55SoMC415YWs5pak55qE77yM5pil56eL55SoMS415YWs5pak55qE77yM5Yas5aSp5Lik5Li', '1490278747', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('139', '0', '1006014', '6JqV5Lid6KKr5piv5Zyo55yL6L+H6K+E5Lu35ZCO5Lmw55qE77yM5omA5Lul6L+Y5piv5b6I5ruh5oSP55qE44CC5Liq5Lq66KeJ5b6X5pyJ5reh5reh55qE5b6I5q2j5bi455qE5ZGz6YGT44CC5YW25a6e5YyF6KOF5bm25LiN5piv5pyA6YeN6KaB55qE77yM6YeN6KaB55qE5piv5ZWG5ZOB55qE5ZOB6LSo44CC', '1487906241', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('140', '0', '1006014', '6IO955yL5Yiw6JqV5Lid5ZGi77yM5Lik5bqK6KKr5a2Q5pyJ5ouJ5omj6IO96ZSB5L2P77yM5rKh5LuA5LmI5ZGz6YGT77yM5aSW6Z2i55qE6KKr5aWX5b6I6IiS5pyN77yM5LiN5rKJ5b6I5pqW5ZKM77yM5Lic5YyX55qE5Yas5aSp5LiA5bqK5bCx5aSf5aSf55qE5LqG77yM5o6o6I2Q77yB', '1481506673', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('141', '0', '1006014', '5ZOB6LSo55yf55qE5aSq5aW95LqG77yM5pyJ5Zu+5pyJ55yf55u477yM5b+F6aG757uZ5Lil6YCJ5Y2B5LqM5YiG5aW96K+E', '1480733661', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('142', '0', '1006014', '5b6I6YeN5LiA5aSn6KKL77yM5bqU6K+l5piv5LiN6ZSZ', '1482036249', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('143', '0', '1006014', '', '1482070624', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('144', '0', '1006014', '5Lic6KW/55yf5b6X5b6I5LiN6ZSZ77yM5Lu96YeP6Laz77yM5q+U6aKE5pyf55qE6YeN5LiA5Lqb44CC5YyF6KOF5pyJ5LiJ5bGC77yM5aSf57uT5a6e55qE44CC', '1479258044', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('145', '0', '1006014', '56ys5LiA5qyh55So6JqV5Lid6KKrIOWOn+adpei/meS5iOiWhCDkvYbmmK/kv53mmpbmgKfog73nm7jlvZPlpb0g55Wl5b6u5pyJ5LiA54K55rCU5ZGzIOWPr+S7peW/veeVpQ==', '1479087303', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('146', '0', '1006014', '5Lil6YCJ5Lmw6JqV5Lid6KKr5pS+5b+D', '1481552248', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('147', '0', '1006014', '', '1481444515', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('148', '0', '1006014', '5L2/55So5ZCO5YaN6L+95Yqg6K+E5Lu34pi6', '1479694811', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('149', '0', '1006014', '6JqV5Lid6KKr6LSo6YeP55yf55qE5aW9ICDlhqzlpKnkuZ/otrPlpJ/llaY=', '1479384862', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('150', '0', '1006014', '5YyF6KOF5LiN6ZSZ6LSo6YeP5bqU6K+l6L+Y6KGM5ZKM5bCP5a6d6KKr5a2Q55qE5ZGz6YGT5LiA5qC3', '1479002307', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('151', '0', '1009009', '55u45L+h6L+Z5Liq5piv6auY5ZOB6LSo55qE6bmF57uS5YGa5oiQ55qE77yM5q+P5qyh5pmS5a6M6KKr5a2Q6JOs5p2+5b6X5LiN5b6X5LqG77yM5pW055CG5bqK6KKr5Lmf5pa55L6/77yM5Y+q6KaB6L276L275LiA5o6A77yM6KKr5a2Q5bCx5bmz5pW05pyN5biW5LqG77yb55uW5Zyo6Lqr5LiK5pei6L275Y+I6LS06Lqr77yM5p+U54S', '1493791323', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('152', '0', '1009009', '576957uS6KKr55yf55qE5aSq5qOS5LqG77yM5b6I5pqW5b6I6L2777yM5rS75Yqo5Lu35qC8MTMwMCvlvojnu5nlipvvvIzogIzkuJTnm5bnnYDkuZ/kuI3kvJrmnInlpKrlpKflk43lo7DvvIzkubDkuobkuKTlpZfvvIzkuIDlpZfnu5nniLjlpojvvIzkuIDlpZfoh6rlt7HnlKjjgII=', '1492349980', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('153', '0', '1009009', '5Yiw6LSn5pCt5Yiw6Ziz5Y+w5pmS5LqG5Yeg5aSp77yM5rKh5pyJ5byC5ZGz77yB6IiS5pyN55qE5oqx552A5LiN5oOz6LW35p2l77yB5Y675aSn5ZWG5Zy655yL5LqG77yM5ZCM5qy+6bmF57uS6YO96KaBMuWNg+Wkmu+8geafkOWuneWPiOaAleWBh+i0p++8geWPquimgeS4pemAieayoeaciei+nOi0n+aIkeeahOWFs+azqO+8geecn+W', '1493036606', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('154', '0', '1009009', '5aSW5YyF6KOF5piv5aW955qE77yM5Y+v6KKr5a2Q55qE566x5a2Q5Li65ZWl54Gw6L6j5LmI5aSa6ICM5LiU56C056C054OC54OC55qE77yM6L+Y5rKh5omT5byA55yL77yM5L2G5LuT5YKo5beu6K+E5beu6K+E77yB8J+Ygg==', '1488516621', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('155', '0', '1009009', '6KKr5a2Q5LiN6ZSZ77yM5LiA5aSn566x77yM5L2G5piv6L+Z5Liq566x5a2Q6IO96K6+6K6h5Liq5o+Q5omL5LmI77yM6L+Z5LmI5aSn55qE566x5a2Q5oOz6K6p5Lq65oCO5LmI5ou/5ZWK', '1481472976', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('156', '0', '1009009', '5Y+M5Y2B5LiAMTI3OeS5sOeahO+8jOe7k+aenOWPkeeOsOacieS4gOWkhOmSu+e7kuOAgue9keaYk+ern+eEtuayoeacieaNoui0p+acjeWKoe+8jOaQnueskeOAguWcqOiAg+iZkeimgeS4jeimgemAgOi0pw==', '1479120463', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('157', '0', '1009009', '5b6I6L275b6I5Y6a77yM546w5Zyo55So5LiN5LqG5LqG5Zuk552A5Yas5aSp55So44CC6ZmQ5pe26LStMTM1Oe+8jOS7t+agvOWunuaDoOOAgg==', '1493709436', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('158', '0', '1009009', '6LaF57qn5pqW77yM5bmz5pe25b6I5oCV5Ya355qE44CC55uW6L+Z5Liq57ud5a+55aSf5LqG77yM5Y+v5Lul5oq15b6h6Zu25LiL5aW95Yeg5bqm44CC5Yqg5LiKNjBz5pqW57uS6KKr5aWX6IiS5pyN', '1484446876', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('159', '0', '1009009', '', '1492959754', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('160', '0', '1009009', '55u46KeB5oGo5pma55qE5oSf6KeJ44CC5L2/55So5ZCO5omN5p2l6K+E5Lu344CC5aSq5pqW5ZKM5aSq6IiS5pyN5LqG77yM5aSn5aSn5pS55ZaE5LqG5oiR6ZW/5pyf5aSx55yg55qE54q25oCB44CC6Z2e5bi46LWe77yB', '1484142992', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('161', '0', '1009009', '5Y+I6L275Y+I5pqW77yM5bCx5piv6KeJ5b6X55+t5LqG54K577yf5Lil6YCJ55qE5YyF6KOF55yf5piv5p2g5p2g55qE77yM55uS5a2Q6LSo6YeP5LiN6KaB5aSq5aW95ZWK77yB', '1483580259', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('162', '0', '1009009', '6LWe77yM5b6I5L+d5pqW5b6I6IiS6YCC77yM6Zmq5Ly05bqm6L+H5LqG5LiA5Liq576O5aW955qE5Yas5aSp', '1491923922', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('163', '0', '1009009', '5aW95aSn55qE566x5a2Q5ZWK77yM5LiA5a6a6KaB55u05o6l5a+E5Zue5a6244CC5oiR5oOz5b2T54S255qE5a+E5Yiw5Y2V5L2N5LqG77yM5b+r6YCS5biu5oiR5b6A5LiK5pCs55qE5pe25YCZ5ZCM5LqL5Lus5Lul5Li65Y+R5Lic6KW/5LqG5ZGi44CC5b+r6YCS5bCP5ZOl5Lq655yf5aW977yM5by654OI6KaB5rGC5biu5oiR6YCB5Yi', '1491182627', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('164', '0', '1009009', '5rS75Yqo5piv5Lmw55qEIOi/meS4que+vee7kuiiq+i2heWAvO+8gemdnuW4uOaaluWSjO+8geW+iOWOmiDlvojok6zmnb7vvIzmr5Tljp/mnaXnm5bnmoTms6Llj7jnmbvov5jopoHlpb3vvIznu53lr7nnianotoXmiYDlgLzvvIE=', '1482065798', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('165', '0', '1009009', '6KKr5a2Q5b6I6L275p+U77yM6IiS5pyN77yM5YyF5biD6LSo6YeP5a+G5a6e77yM5Lik5Y2D5Z2X6ZKx5YC85b6X44CC', '1489180200', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('166', '0', '1009009', '5Lic6KW/5b6I5aW977yM57uZ5aiD5Lmw55qE77yM5b6I6JOs5p2+77yM6ZmN5rip5Lmf5LiN5oCV5LqG77yM5o2i5LiK5paw6KKr5aWX77yM5pu05qOS77yB', '1484393613', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('167', '0', '1009009', '6ICB5aaI6KGo56S66LaF57qn5pqW5ZKM77yM5ruh5oSP44CC', '1488362260', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('168', '0', '1009009', '5Zac5qyi77yM6L2v6L2v55qE77yM6L+Y5rKh55So77yM5YWI5pmS5pmS6Ziz6Ziz5biM5pyb5pu06JOs5p2+', '1487350609', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('169', '0', '1009009', '552h5LqG5Lik5aSp77yM6KKr5a2Q5b6I6L2777yM5L2G5piv6Z2e5bi45pqW5ZKM', '1487669793', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('170', '0', '1009009', '', '1487659549', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('171', '0', '1009009', '5YyF6KOF5LiA5aaC5pei5b6A55qE6auY56uv5aSn5rCU5LiK5qGj5qyh77yM576957uS6KKr5LiA5ou/5Ye65p2l5bCx5a6M5YWo6JOs5p2+5LqG77yM5omL5oSf6LaF57qn6IiS5pyN77yM55yf55qE5pyJ552h5Zyo5LqR5py16YeM55qE5oSf6KeJ5ZOf', '1481248818', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('172', '0', '1009009', '6Z2e5bi45pqW5ZKM77yM5Lmf5pe25b6I5Y6a55qE5oSf6KeJ77yM5pCt6YWN5pyJ5Z6C5Z2g6LSo5oSf55qE6KKr5aWX77yM6L+Z5qC35bCx5a6M576O5LqG44CC', '1482064667', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('173', '0', '1009009', '6KKr5a2Q5aSq5qOS77yM5b6I5Y6a5a6e5b6I6JOs44CC5bCx5piv5rKh5pyJ5Y+j5a2Q5omT5byA55yL5Yiw5bqV5piv5LuA5LmI57uS77yM5LiN6L+H5peg5omA6LCT5ZWm77yM55u45L+h5Lil6YCJ44CC', '1480387738', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('174', '0', '1009009', '5YWr5oqY5Lmw55qEIOminOiJsuibruWlveeciyDkuZ/lvojok6zmnb4g6YCP6YCP5rCUIOi/mOayoeacieS9v+eUqCDkuI3nn6XpgZPmlYjmnpzmgI7moLcg55u45L+h572R5piT5Lil6YCJ55qE5ZOB6LSo', '1479182182', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('175', '0', '1009009', '54m55Yir5Y6aIOaAgOeWkeS5sOWOmuS6hiDok6zmnb7luqblvojlpb0g5rKh5pyJ5byC5ZGzIOiZveeEtuS4jeaYr+aXoOWjsOeahCDkvYbmmK/nu53lr7nlj6/ku6XmjqXlj5cg5rKh5aSa5aSn5aOw', '1479045067', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('176', '0', '1009009', '6KKr5a2Q6L+Y5rKh55So77yM5omL5pG45LqG5LiL77yM5omL5oSf5LiN6ZSZ77yM6ICM5LiU5Lmf5q+U6L6D6L276JaE77yM5pyf5b6F5pqW5pqW55qE6KKr56qd5pWI5p6c44CC57q45be+5b6I5YiS566X44CC5Lmw5LqG5Yeg5qyh5LqG77yM5oSf6KeJ5Lil6YCJ5Lqn5ZOB6LSo6YeP55yf5b+D5LiN6ZSZ8J+RjQ==', '1483926903', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('177', '0', '1009009', '5rS75Yqo6YCB5LqGMjk555qE5rOh5rOh57qx5Y+v5rC05rSX56m66LCD6KKrIOeUqOS4jeS4iiDlhajmlrAyNTDovawg57KJ6Imy', '1483153385', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('178', '0', '1009009', '6Z2e5bi46IiS5pyN5YOP552h5Zyo5LqR5py16YeM77yM5ou/5Ye65YyF6KOF5b6I5b+r5bCx6Iao6IOA6LW35p2l77yM5Y6a5Y6a55qE5Yas5aSp5LiN5oCV5Ya35LqG44CC', '1480906130', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('179', '0', '1009009', '6KKr5a2Q5pW05L2T57qm6YeNN+aWpCDkvZPph43np7DmirHnjKvph4/ms5Ug5pG46LW35p2l5LiN6ZSZIOe7kuavlOi+g+e7hiDmr5vmnYblrZDkuI3mmI7mmL4=', '1479049429', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('180', '0', '1009009', '5b6I6IiS5pyN44CC5b2T54S25Zub5Lu25aWX5Lmf5piv5Zyo5Lil6YCJ5Lmw55qE44CC55uW5Zyo6Lqr5LiK5b6I6L275Y205b6I5pqW44CC5Y2K5aSc6YO95Lya6KeJ5b6X54Ot5Ye65LqG5rGX77yM5L2G55yf55qE6KeJ5b6X5b6I5pqW5ZKM44CC5LmL5YmN5Lmw5LqG5Lil6YCJ55qE576K57uS6KKr77yM6LSo6YeP5Lmf6Juu5aW944C', '1484277030', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('181', '0', '1009012', '5p6V5aS056Gu5a6e5aW977yM5omT5Y2h5YyF6KOF5ZCO77yM5b6I5b+r5a6M5oiQ5YWF5rCU77yM6JOs5p2+5p+U6L2v44CC6auY5bqm5Lmf5ZCI6YCC77yM552h6KeJ5Y+Y5b6X5b6I5Lqr5Y+X44CC', '1493262654', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('182', '0', '1009012', '55yf56m65YyF6KOF5ZOm77yB5ouG5byA5ZCO5bCx5Lya6Iao6IOA6LW35p2l77yM6Kem5pG45oSf5b6I5aW977yM5bC65a+45pyJ54K55aSn77yM5p6V5aS05aWX5Yia5aW96IO96KOF6L+b5Y6744CC5piO5aSp5rSX5LqG55yL5pWI5p6c5oCO5LmI5qC377yM5b6I5a6e5oOg5ZOm77yB', '1492860090', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('183', '0', '1009012', '6LaF57qn6IiS5pyN77yM6Lef5oiR5Y675L2P5LqU5pif57qn6YWS5bqX55qE5p6V5aS05LiA5qC377yM56m65rCU5oSf6LaF5by6', '1493178752', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('184', '0', '1009012', '5oqx552A6K+V6K+V55yL5oOz5rOV5Lmw5LqG5LiA5Y+q77yM57uT5p6c5b6I6JOs5b6I5by577yM552h552A6Z2e5bi46IiS5pyN77yM572R5piT5p6c54S25rKh6K6p5oiR5aSx5pyb77yB5pio5aSp5Y+I5LiL5Y2V5Lmw5LqG5LiA5Y+q5ZGi77yB', '1492395434', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('185', '0', '1009012', '5p6V5aS05b6I6IiS5pyN77yM6JOs6JOs55qE5L2G552h5LiL5Y675bCx5Lya5Yiw5ZCI6YCC55qE6auY5bqm77yM5piv5Zyo5b6I6IiS5pyN', '1492867322', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('186', '0', '1009012', '5p6V5aS05piv5b6I5YiS566X77yM5b2T5pe25YGa5rS75Yqo5Lmf5bCx5LiJ5Y2B5p2l5Z2X6ZKx77yM55So5LqG5aSn5Y2K5bm077yM6L+Y5piv5b6I6IiS5pyN55qE77yM5Y+v5rC05rSX77yM5o+J5o+J6L2v6L2v55qE77yM5Zac5qyi5L2O5p6V55qE5Y+v5Lul6K+V6K+V', '1492480774', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('187', '0', '1009012', '5LiA5Y+j5rCU5Lmw5LqG5aW95Yeg5Liq77yM6L2v57u157u155qE77yM6IiS5pyN5b6X6IiN5LiN5b6X56a75byA6Ieq5bex55qE56qd5LqG', '1492876307', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('188', '0', '1009012', '5p6V5aS05b6I6IiS5pyN77yM5by55Yqb5b6I5aW977yM5pyJ5Yqp552h55yg44CC', '1492350027', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('189', '0', '1009012', '5p6V5aS06LSo6YeP6Z2e5bi477yM5YGa5bel57K+5Yi277yM5Zac5qyi44CC', '1492350662', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('190', '0', '1009012', '5p6V5aS05YWF5rCU5b6I5b+rIOWqsue+juWklumdouS4gOS4pOeZvueahOaeleWktA==', '1492254742', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('191', '0', '1009012', '56ys5LiA5qyh5Zyo5Lil6YCJ5LiL5Y2V77yM5bCx6KKr5Lil6YCJ55qE6K6k55yf5oCB5bqm5ZyI57KJ5LqG77yB5Lil6YCJ55qE5YyF6KOF5b6I57uG6Ie077yM5p6V5aS05piv55yf56m65YyF6KOF77yM5omT5byA6KKL5a2Q5ZCO6Ieq5Yqo6byT6LW35p2l44CC5pW05L2T6L2v56Gs6YCC5Lit77yM5p6V5LiK5Y675Y+q5Lya5Y6L5Li', '1492269231', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('192', '0', '1009012', '5pS25Yiw5pio5pma5bCx6K+V5LqG44CC5oSf6KeJ5aW96IiS5pyN44CCCuWlveivhO+8jOi/mOS8muWGjeasoei0reS5sOeahOOAggrkuIDotbfkubDkuoblpb3lh6DmoLfjgILmsqHmnInljZXni6zmi43mnpXlpLTjgII=', '1493864383', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('193', '0', '1009012', '5YyF6KOF57K+576O77yM5L6/5a6c5Y+I5aW955qE5p6V6Iqv5aKD5YaF77yM5Lul5ZCO5bCx5Lil6YCJ5LqG44CC5b+r6YCS5ZGY5oCB5bqm5Lmf5b6I5aW98J+RjQ==', '1494162742', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('194', '0', '1009012', '5aW95Zac5qyi77yB5aW96JOs5p2+77yB5aW96L2v77yB5omv5Ye65YyF6KOF6KKL56uL6ams6JOs5p2+6LW35p2l77yM5bCP5LyZ5Ly05LiN6KaB55yL54Wn54mH5Lul5Li65b6I5L2O77yM5oC75b2S5b6I6LaF5YC877yB', '1492167602', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('195', '0', '1009012', '5p6V5aS05b6I5qOS77yM5p6V552A54m55Yir6IiS5pyN77yM5Lmf5rKh5pyJ5byC5ZGz77yM6aG65Liw5Y+R6LSn5Lmf5b+r55qE5rKh6K+d6K+077yM5YyF6KOF5aW977yM6YO95ruh5oSP77yM5aW96K+EfuaUr+aMgee9keaYk+S4pemAie+8gQ==', '1492757185', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('196', '0', '1009012', '6LSo6YeP5oy65aW955qE77yM5bCx5piv56iN5b6u5pyJ54K55aSn77yM5omT566X5YaN57uZ54i25q+N5Lmw5Lik5Liq77yM5b2T5pe25Lmw55qE5piv6ZmQ5pe25aSf77yM546w5Zyo6LS15LqG5Y2B5Yeg5Z2X5ZGi', '1494463236', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('197', '0', '1009012', '5Yir55qE6YO95oy65aW955qE77yM5bCx5piv5LiK6Z2i55qE5rSX5rak6K+05piO55yL6LW35p2l5YOP5pS+5LqG5Yeg55m+5bm055qE5biD5LiA5qC34oCm4oCm5biM5pyb5o2i5LiA56eN5biD5paZ77yM5LiN54S25oC75oSf6KeJ5oCq5oCq55qE', '1493545637', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('198', '0', '1009012', '5pyA5p+U6L2v55qE576957uS5p6V77yM5b6I6L2v5p6V5LiK5Y675rKh5pyJ6auY5bqm77yM5piv5oiR6ISW5a2Q5Zac5qyi55qE6auY5bqm77yM5LuO5q2k5LiN5YaN6JC95p6V77yM5aWX5LiK5p6V5aWX576O576O5ZOS772e', '1490536354', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('199', '0', '1009012', '5oiR55qE5aSp55yf55qE5aW977yM55So572R5piT5paw6Ze76YeR5biB5o2i55qE5rKh5pyJ6Iqx6ZKx77yM55yf55qE5biF5rCU44CC5o6o6I2Q5o6o6I2Q77yM6IiS5pyN6IiS5pyN44CC', '1490319673', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('200', '0', '1009012', '5LiN6ZSZ77yM5b6I6JOs5p2+77yM5Lmf5oy65Y6a5a6e77yM552h552A5pyJ5pSv5pKR5oSf77yM5bCx5piv5LiN55+l6YGT77yM6L+Z5Liq6JOs5p2+5bqm5Y+v5Lul5L+d5oyB5aSa5LmF77yM5biM5pyb5Y+v5Lul6ICQ55So54K55ZCn77yB', '1489245790', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('201', '0', '1009012', '5YWI5YmN5Lmw5LqG5Lik5Liq77yM5Y+I5Lmw5LqG5Lik5Liq77yM6L+Y5o6o6I2Q5pyL5Y+L5Lmw5LqG44CC5Lil6YCJ5Lic6KW/5bCx5piv5aW944CC', '1492516835', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('202', '0', '1009012', '55yL6K+E5Lu35aW95aSa5Lq66K+055+uIOaIkeaeleedgOato+WlvSDkuZ/lvojmnInlvLnmgKcg6Z2e5bi45Zac5qyiIOi/mOS4jei0tQ==', '1492325334', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('203', '0', '1009012', '5p6V5aS05b6I5qOS44CC5L2G5piv5Zac5qyi552h55+u5LiA54K555qE5Lq677yM6L+Z5Liq5p6V5aS05oiW6K645aSq6auY44CC5LiN6L+H6LSo6YeP5YyF6KOF6YO95piv5rKh5b6X6K+055qE44CC5Lil6YCJ5b6I5qOS44CC57un57ut5Yqg5rK55ZCn44CC', '1492419183', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('204', '0', '1009012', '5Lqs5LiccGx1c+S8muWRmO+8jOeOsOWcqOWvueS4pemAieS5n+W+iOWWnOasou+8jOiKguecgeS6huaMkemAieS4nOilv+eahOaXtumXtO+8jOWWnOasoueahOivneWPr+S7peaUvuW/g+S4i+WNleOAguWlveeahOeUn+a0u++8jOayoemCo+S5iOi0teOAgg==', '1491032284', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('205', '0', '1009012', '5ZKM5aW955qE5Lic5Lic77yM55yL552A5b6I5pyJ6LSo5oSf77yM5LiA5LiL5Lmw5LqGNOWPqu+8jOW3sue7j+eUqOS4iuS6hu+8jOaflOi9r+iIkuacje+8jA==', '1489843338', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('206', '0', '1009012', '5p6V5aS05pyJ54K555+u77yM5LiN5bu66K6u5Lmg5oOv6auY5p6V5aS055qE5pyL5Y+L5Lmw77yM5Y+m5aSW5LiK6Z2i5rKh5pyJ5ouJ6ZO+77yM5Lul5ZCO5riF5rSX55qE5pe25YCZ5pyJ5Lqb6bq754Om44CC6LSo6YeP6Juu5aW955qE77yM572R5piT5Lil6YCJ5Yqg5rK5', '1488169878', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('207', '0', '1009012', '6Z2e5bi45p+U6L2v6IiS5pyN77yB6L2v6L2v55qE77yM5L2G5piv552h6KeJ55qE5pe25YCZ5Y+I6IO95aSf5pSv5pKR6LW35p2l77yM5LiN6ZSZ5ZOm77yB', '1494207349', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('208', '0', '1009012', '5YyF6KOF5aSq5aW95LqG77yM54mp5rWB5Lmf5b6I5b+r77yM5p6V5aS05b6I5aW955So77yM6auY5bqm5ZCI6YCC77yM5aW96K+E77yB', '1493286330', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('209', '0', '1009012', '5p6V5aS05LiN6ZSZ77yM5b6I6L2v44CC', '1494506989', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('210', '0', '1009012', '5b6I6L2v77yM5b6I6IiS5pyN', '1494325584', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('211', '0', '1009013', '5p6V5aS05b6I5qOS77yM6JOs6LW35p2l5pyJMTfjgIE45Y6Y57Gz6auY77yM5p6V5LiL5Y675pyJNy04Y23pq5jvvIzlvojova/lj4jkuI3kvJrlvojkvY7vvIzoiJLmnI3vvIE=', '1493479889', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('212', '0', '1009013', '5YyF6KOF5b6I57uT5a6eIOeuseWtkOS5n+W+iOacieeJueiJsiDlv6vpgJLov4fmnaXkuIDngrnpg73msqHmnInljovlnY8g5p6V5aS05piv5Y6L57yp6YKj56eN55qEIOS4gOaJk+W8gOWwseWPmOW+l+WlveWkpyDlvojova/lvojoiJLmnI0g55u45L+h5Lil6YCJIOS7peWQjuiCr+WumumVv+WJgeaJiw==', '1493035193', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('213', '0', '1009013', '6Z2e5bi45LiN6ZSZ77yM5omT5byA5ZCO56uL5Y2z6Iao6IOA6LW35p2l5LqG77yM6Z2i5paZ5oy654m55q6K55qE77yM552h6LW35p2l5Lmf5b6I6IiS5pyN77yM6ISW5a2Q5LiN5Lya55eb5LqG77yB5qOS5qOS5ZOS77yB', '1492567274', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('214', '0', '1009013', '55u05o6l5pS+5rSX6KGj5py65LqG44CC5rKh6Zeu6aKY44CC56iN56iN5LiA5ouN5omT5bCx5oGi5aSN5Y6f5Z6L5LqG44CC5b6I5Zac5qyi77yM5YWz6ZSu5piv6ZqP5oSP5rSX5LiN5Y+Y5b2i', '1493035350', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('215', '0', '1009013', '6LSo6YeP5b6I5aW95ZWK77yM5LiA5qyh5Lmw5LqG5Lik5Liq77yM55So5LqG5aW95LmF5LqG5omN5p2l6K+E5Lu377yM5piv5aW95Lic6KW/5ZOm77yM5L+h6LWW5Lil6YCJ77yM5Y+R6LSn5b+r77yM6aG65Liw5b+r6YCS5Lmf5piv6ZqU5aSp5Yiw77yM5qOS5qOS5ZOS77yM5ruh5YiG', '1493042555', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('216', '0', '1009013', '5Liq5Lq65LiN5Zac5qyi5p6V6auY5p6V5aS077yM6L+Z5Liq5p6V5aS05aSn5bCP55Wl5aSn77yM5L2G6KeJ5b6X5b6I5aW977yM5p6V5LiK5Y675Lya5Ye56Zm35Ye65ZCI6YCC55qE5aSn5bCP5rex5bqm77yM5b6I6IiS5pyN44CC5pep6LW35ouN5LiA5ouN5bCx5Y+Y5Zue6byT6byT6aWx5ruh55qE5b2i54q25LqG77yB5aSn6LWe', '1492914882', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('217', '0', '1009013', '5p6V5aS06LaK55So6LaK6JOs5p2+77yM6Kem5oSf6Z2e5bi45aW977yM5b6I5ruh5oSP5LqU5YiG', '1492338024', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('218', '0', '1009013', '5rKh5pyJ5rCU5ZGz77yM5Y6a5a6e44CB6JOs5p2+44CC5YWI5pS26LW35p2l77yM5Yas5aSp55So44CC', '1492482932', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('219', '0', '1009013', '6L+Z5Liq55yf55qE5b6I5oOK5ZacIOW+iOiIkuacjeS5n+W+iOi9ryDourrnnYDmirHnnYDpg73lvojoiJLmnI0g5o6o6I2QIOWMheijhei0qOmHj+aEn+inieS5n+W+iOajkg==', '1493877604', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('220', '0', '1009013', '6YWN5ZCI5a6c5a6255qE5p6V5aS05aWX77yM55yf55qE5b6I6IiS5pyN77yM5Zue5by55b+r77yM5YaF6Zm35rex5bqm5Lmf5Yia5aW95Y+v5Lul5om/5omY6aKI6YOo', '1493651405', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('221', '0', '1009013', '5p6V5aS05b6I5p+U6L2v77yM5p6V5LiK5b6I5pSv5pKR5Yqb5b6I5aW95b6I6IiS5pyN44CC5Y+v5Lul55u05o6l5rC05rSX5b6I5pa55L6/77yM56Gu5a6e5piv5qy+5aW954mp77yB', '1493620758', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('222', '0', '1009013', '5Lil6YCJ56ys5LiA5Y2V77yM54mp5rWB5p6B6YCf77yM5a+55q+U5Lul5ZCO5oiR5omN55+l6YGT6L+Z5piv5Lil6YCJ77yM5aW955qE55Sf5rS75LiN55So5aSq6LS1', '1493616824', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('223', '0', '1009013', '566A55u05LiN6IO95YaN5ruh5oSP77yB5p6V5aS05aSq6IiS5pyN5LqG77yB5Lul5YmN55qE5p6V5aS0552h552A5YGa5Zmp5qKm77yM6L+Z5Liq5p6V5aS05q+P5aSp552h55qE6LiP5a6e5LiN5oOz6LW38J+YgeeCkum4oeWWnOasou+8gQ==', '1488931877', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('224', '0', '1009013', '6Juu5aW955qE44CB55u45L+h5Lit5Zu98J+HqPCfh7Pkurroh6rlt7HkuZ/lj6/ku6XlgZrlh7rpq5jlk4HotKjnmoTkuqflk4HjgIHlm73kuqflk4HniYzliqDmsrk=', '1490876447', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('225', '0', '1009013', '56ys5LqM5Liq5p6V5aS05LqGIOecn+eahOW+iOiIkuacjSDmr5Q1OeWFg+mCo+asvuimgei9r+W+iOWkmiDoiJLmnI0=', '1493631246', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('226', '0', '1009013', '5p6V5aS05b6I5aSn5b6I5aSn44CC44CC6L+Y5rKh5p6V77yM5bqU6K+l5LiN6ZSZ44CC', '1494337826', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('227', '0', '1009013', '6LaF57qn6L2v6LaF57qn5qOS5ZWKIOesrOS6jOasoeS5sOaeleWktOS6hiDkuYvliY3pgqPmrL7lsLHlvojova/lvojoiJLmnI0g6L+Z5qyh5Lmf5LiN6ZSZIOWvuee9keaYk+eahOWlveaEn+W6puaYr+S7juWQjOWtpuWunuS5oOmjn+WgguW3qOWlveWQg+W8gOWni+eahCDlk4jlk4jnvZHmmJPnmoTkuJzopb/pg73pnaDosLHvvIHvvIE', '1494252281', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('228', '0', '1009013', '5oCO5LmI6K+05ZGi77yM5p6V5aS05a6e5Zyo5piv5aSq5aSn5LqG77yM5Y+v6IO95Zyo5oiR55qE5Y2V5Lq65bqK5LiK5qC85qC85LiN5YWl77yM6IO95YGa5Yiw55yf56m65YyF6KOF77yM5Lmf566X5piv6YWN55qE6LW36L+Z5LmI6LS155qE5Lu35qC877yB6aG65Liw5YyF6YKu77yM5Y2z5L2/6LS177yM5pyJ6L+Z5LmI5aW955qE5ZO', '1494219821', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('229', '0', '1009013', '6L+Z5piv5oiR55So6L+H5pyA5aSn55qE5p6V5aS08J+Ytg==', '1493958937', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('230', '0', '1009013', '6LaF57qn5Zac5qyi77yM5p6V5aS05b6I6L2v77yM5bCx5piv5oiR5oOz5Lmw55qE6L+Z56eN772e5LuO5q2k56eN6I2J572R5piT5Lil6YCJ772e', '1491921439', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('231', '0', '1009013', '5p6V5LiK5Y675oSf6KeJ5LiN6ZSZ77yM5piv5LiA5L2T55qE5LiN6IO95ouG77yM5YyF6KOF5b6I5aW977yM54mp5rWB5b6I5b+r', '1491882644', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('232', '0', '1009013', '5p6V5aS06auY5bqm5q2j5aW977yM6L2v6L2v55qE', '1493862927', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('233', '0', '1009013', '5b6I6IiS5pyN77yM56m65rCU5oSf77yM5Zac5qyi55+u5LiA54K554K55p6V5aS055qE6YCJ6L+Z5Liq', '1493655305', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('234', '0', '1009013', '6LSn5pS25Yiw5LqG77yM55yL552A5LiN6ZSZ77yM5Yay552A5oqX6I+M6Ziy6J6o5Lmw55qE77yM5pyf5b6F5LiN5LiA5qC355qE5pWI5p6c', '1487315172', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('235', '0', '1009013', '5b6I6JOs5p2+77yM5qOS5qOS5ZOS', '1493672550', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('236', '0', '1009013', '5b6I5p+U6L2v', '1493731746', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('237', '0', '1009013', '6L2v55qE5LiN6KGM77yM552h552A5oy66IiS5pyN77yM5Zac5qyi56Gs55qE5LiN6KaB5Lmw', '1493103572', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('238', '0', '1009013', '6IiS5pyN', '1493537698', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('239', '0', '1009013', '6LaF57qn5qOS77yM5pio5aSp5Yia5Yiw5bCx55u05o6l55So5LqG77yM552h55qE5b6I6L275p2+77yM55u05o6l5YGa5LqG5LiA5Liq576O5qKm77yB', '1489447015', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('240', '0', '1009013', '5b6I6IiS5pyN77yM5q+U6L6D6L2v55qE77yM5ZOI5ZOI5ZOI', '1493271917', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('241', '0', '1009024', '5aW96IiS5pyN77yB5Y+v5Lul5Y+Y5o2i5ZCE56eN5b2i54q277yB5q+U5oiR5LmL5YmN5Zyo5pyL5Y+L5a6255yL5Yiw55qE5oeS5Lq65rKZ5Y+R5aW95b6I5aSa5ZWK77yB', '1493254802', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('242', '0', '1009024', '5ZKMTVVKSeeahOS4gOavm+S4gOagt++8jOaAp+S7t+avlOWkn+mrmO+8jOeMq+WSquS6sua1i+iIkuacjeOAgg==', '1493032215', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('243', '0', '1009024', '5a626YeM5Lik5Liq5oeS5Zyo5Zyw5LiK55qE5rKZ5Y+R77yM6Jm954S25YW25Lit5LiA5Liq5piv54uX5rKZ5Y+R44CC5oSf6KeJ6LefTVVKSSDnmoTlvojlg4/vvIzmsqHmnInpgqPkuYjova/mm7TmnInlnovkuIDkupvvvIzoiJLpgILmhJ/kuI3plJnvvIzogIHlhazlrozlhajpmbflnKjov5nkuKTkuKrmspnlj5Hph4zotbfkuI3mnaX', '1493132558', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('244', '0', '1009024', '54mp5rWB5b6I5b+r77yM5YyF6KOF566A5Y2V77yM5L2G5piv5a6e54mp6LSo6YeP5b6I5LiN6ZSZ77yM5Ye65LmO5oiR55qE5oSP5paZ77yM5Z2Q5LiK5Y675q+U5oOz6LGh55qE6IiS6YCC77yM5qC55o2u5L2g55qE5Z2Q5ae/6LCD5pW05b2i54q277yM5pSv5pKR6L2v56Gs5bqm5Lmf5b6I5ZCI6YCC77yM6Lqr5L2T5o6l6Kem6Z2i55q', '1492795376', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('245', '0', '1009024', '6L+Z5Liq5rKZ5Y+R55yf5piv5aSq5aW955So5LqG77yM5Y+v5aGR5oCn5p6B5by677yM6ZqP5L6/55So5LuA5LmI5ae/5Yq/5Z2Q5LiK5Y676YO95b6I6IiS5pyNfg==', '1492362101', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('246', '0', '1009024', '6L+Z5Liq5ZKMTVVKSSDnmoTmsqHku4DkuYjlt67liKvvvIzlnZDlnKjkuIrpnaLlvojoiJLmnI3vvIzlrrbph4zmlL7kuIDkuKrlvojotZ4=', '1492773294', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('247', '0', '1009024', '5LiA55u05b6I5Zac5qyi6L+Z5Liq5qC35byP55qE5oeS5Lq65rKZ5Y+R77yM6LaF57qn5Zac44CC5pys5p2l5omT566X562J5paw5oi/5a2Q6KOF5aW95LqG77yM5Lmw5Lik5Liq5oeS5Lq65rKZ5Y+R77yM5Y+v5Lul5ZKM5aW55LiA5Lq65LiA5Liq55ir5Zyo5oi/6Ze06YeM55yL55S16KeG77yM5ZCs6Z+z5LmQ77yM5oiW6ICF5LuA5Lm', '1492479050', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('248', '0', '1009024', '5aSq5qOS5LqG77yM5ZOI5ZOI77yM6Lq65LiK5Y675b6I6IiS5pyN77yM5LyR6Zey55So', '1492385282', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('249', '0', '1009024', '5b6I5ruh5oSP77yM5pS+5Zyo5a6i5Y6F5rKZ5Y+R5peB6L6577yM6aKc6Imy5b6I5pCt77yM6Ieq5bex6KeJ5b6X5q+U5peg5Y2w6Imv5ZOB55qE5oeS5Lq65rKZ5Y+R5LiN5beu5ZOm77yM5YC85b6X5o6o6I2Q772e', '1494400553', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('250', '0', '1009024', '6LSo6YeP6Z2e5bi455qE5aW977yM56ys5LiA5qyh55So5Lil6YCJ77yM5pWI5p6c6LaF5LmO5oOz6LGh55qE5aW944CC6YCB55qE6Zuo5Lye5Lmf5LiN5piv57OK5byE55qE44CC6LSo6YeP6LaF57qn5aW9', '1493475496', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('251', '0', '1009024', '5Lic6KW/5LiN6ZSZ77yM5oSf6KeJ5ZKMTVVKSeeahOW3rui3neS4jeWkp++8jOiAjOS4lOebuOWvueW+iOS+v+WunOOAgumdnuW4uOespuWQiOS6uuS9k+W3peeoi+WtpuOAguW4jOacm+iDveWHuuabtOWkmuS8mOengOS6p+WTgeOAgg==', '1493723728', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('252', '0', '1009024', '5Z2Q5LiK5Y676IiS6YCC77yM5q+UTVVKSeeahOeojeacieW3ruWIq++8jOavlOi+g+S7t+agvOacieWlveWkp+W3ruW8gu+8jOWBmua0u+WKqOS4gOasoeS5sOS6hjLkuKrvvIzlgLzvvIE=', '1494039192', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('253', '0', '1009024', '5Lmw5p2l5b6I5LmF5LqG4oCm4oCm6Z2e5bi46IiS5pyN77yM6Lq65LiL5bCx5LiN5oOz6LW35p2l77yM57KJ6Imy5Lmf5q+U6L6D6ICQ6ISP77yM5Lik5Liq5Lq65Lmf5Y+v5Lul6Z2g', '1493098450', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('254', '0', '1009024', '6Z2e5bi45ruh5oSP77yM55yL5LiKbXVqaeW6l+mHjOeahOS4gOebtOS4i+S4jeWOu+aJi++8jOi/measoeS4pemAieWBmua0u+WKqOWwseS5sOS6huOAguayoeWRs+mBk++8jOW+iOiIkuacjQ==', '1492225435', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('255', '0', '1009024', '5omT5byA5Z2Q5LqG5LiA5LiL5Y2I77yM5Z2Q552A6IWw6Z2e5bi46IiS5pyN77yM5L2G5pW05L2T6IiS6YCC5bqm6IKv5a6a5LiN5aaC5aSn5rKZ5Y+R77yM6IOc5Zyo54G15rS76L275L6/5Y+v6ZqP5oSP5oqY6IW+44CC', '1492244960', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('256', '0', '1009024', '5LiA5aSn5Z2o77yM5Y2V54us5pS+5Zyw5LiK5b2T5Yez5a2Q5rKh5pyJ5L6d6Z2g77yM5LiN6IiS5pyN44CC5L2G5pS+5rKZ5Y+R5LiK5YGa5Z6r6IOM5b6I6IiS5pyN77yM5L2G5pyJ5Lqb5Y2g5Zyw44CC', '1491993856', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('257', '0', '1009024', '55ir5LiK5Y675bCx5Ye65LiN5p2l5LqG77yM5b6I6IiS5pyN77yM6LefbXVqaeW3rui3neS4jeWkp++8jOWbnuWktOS5sOS4quWll+aNouaNouminOiJsuWPiOaYr+WPpuS4gOS4qumjjuagvOOAgg==', '1491824929', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('258', '0', '1009024', '5ZKMTVVKSeavq+aXoOW3ruWIq++8jOi0qOmHj+ajkuS7t+agvOWNtOWPquacieS4gOWNiu+8jOaOqOiNkOW+iOWkmuaci+WPi+S5sOS6huOAguecn+aYr+i2heiIkuacje+8jOWutumHjOWWteS5n+WWnOasoui6uuS4iumdog==', '1491557209', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('259', '0', '1009024', '5b6I6IiS5pyN77yM6L+Z5Liq5Lu35L2N6L+Y5piv5q+U6L6D5YC855qE77yM6LefbXVqaeWcqOWdkOaEn+S4iui/mOaYr+acieS6m+W3ruW8gu+8jOiDnOWcqOaAp+S7t+avlA==', '1490613198', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('260', '0', '1009024', '5q+U6Imv5ZOB55qE5aGr5YWF54mp5aSa5pG45LiK5Y676LSo5oSf5beu5LiN5aSa77yM6IiS6YCC5bqm5q+U6Imv5ZOB5beu5Lqb77yM5a2p5a2Q55qE5Y6f6K+d5bCx5piv5rKh5pyJ6Imv5ZOB55qE6IiS5pyN44CC', '1492641810', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('261', '0', '1009024', '5rKZ5Y+R5oiR5b6I5Zac5qyi77yM5Yia5Yia5pS25Yiw5bCx5L2T6aqM5LqG5LiA5LiL77yM56Gu5a6e57uZ5Lq65LiA5Liq5oOK5Zac77yM5oCO5LmI5Z2Q6YO95b6I6IiS5pyN44CC', '1493952897', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('262', '0', '1009024', '5oSf6KeJ6LefbXVqaeeahOi/mOaYr+S4jeS4gOagt+OAguayoeaciW11amnnmoTmn5Tova/jgILkuI3ov4flvojlpb3kuobvvIzku7fmoLzkvr/lrpzvvIzlvojliJLnrpc=', '1492090264', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('263', '0', '1009024', '5b6I5aW977yM6Jm954S25rKh5pyJbXVqaeeahOeIve+8jOS9huaYr+S7t+agvOW3rui/meS5iOWkmueahOaDheWGteS4i+i/mOaYr+mdnuW4uOa7oeaEj+eahA==', '1492773446', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('264', '0', '1009024', '5YGa5bel56Gu5a6e5q+U5reY5a6d55qE5aW977yM5L2G5piv5q+U5peg5Y2w6KaB56Gs54K577yM6IiS6YCC5bqm5beu54K577yM5aWX5a2Q5paZ5a2Q5b6I5aW977yM5oC75b6X5p2l6K+05LiN6ZSZ55qE44CC', '1490143338', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('265', '0', '1009024', '5b6I6IiS5pyN55qE5oeS5Lq65rKZ5Y+R77yM5pS+5Zyo5a6i5Y6F5bCP6Ziz5Y+w77yM5b+N5LiN5L2P5bm75oOz5pCs5a625ZCO5Z2Q552A6K+75LiA5pys5Lmm5Zad5LiA5p2v5ZKW5ZWh5pmS5LiA5pmS5aSq6Ziz55qE5bm456aP55Sf5rS75ZWK77yB', '1490782651', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('266', '0', '1009024', '56Gu5a6e5YGP56Gs77yM5rKh5pyJ5LiN5oOz6LW35p2l55qE5oSf6KeJ44CC5ou/5o6J5aSW5aWX5oSf6KeJ5bCx5p2l5LqG44CC6K+35Zyo5YGa5aSn54K577yM5aSW5aWX5YaN5aSn54K577yM5L2T6aqM5LiA5a6a5Lya5o+Q5Y2H5LiN5bCR44CC', '1491892905', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('267', '0', '1009024', '5aSW5aS055qE6L2v5aWX6L+Y5qyg5aSn77yM6Lef5peg5Y2w6Imv5ZOB5q+U5Z2Q6L+b5Y6755qE5oSf6KeJ77yM6L+Y5piv6YKj5Liq6Zm35YWl5oSf5aW977yM6L+Z5Liq55Wl56Gs77yM6Z2i55qu5LiK55qE6L2v6Z2i5aSa54K55Lya5aW944CC', '1493299670', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('268', '0', '1009024', '6IiS5pyNIOaDrOaEjyDkuI3ov4fouqvkuLrkuKTnmb7mlqTnmoTog5blrZDmsqHkurrmi4nkuIDmiornlK3mg7PkvJjpm4XnmoTotbfmnaUuLg==', '1493873569', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('269', '0', '1009024', '5b6I6IiS5pyN77yM5Z2Q5LiL5ZCO5LiN5oOz6LW35p2l4oCm6aKc6Imy5LiN5piv5b6I5aW955yL77yM5YaN5Lmw5LiA5Liq5aWX5o2i552A55Sofg==', '1490680208', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('270', '0', '1009024', '5pys5p2l5Lul5Li66L+Z5Liq6aKc6Imy6ICQ6ISP77yM57uT5p6c5q+b5q+b57KY5LiK5Y675b6I5piO5pi+77yM5Z2Q552A6L+Y566X6IiS5pyN5L2G5piv5rKh5pyJbXVqaeeahOmZt+eahOa3sQ==', '1486653730', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('271', '0', '1010000', '5aSp54S25LmL54mpLuminOiJsue6r+atoy7miYvmhJ/mn5Tmu5Eu57qv576K5q+bLue7neWvueebuOS/oeS4pemAiS4uLi7kuKXmoLznrZvpgIk=', '1493264302', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('272', '0', '1010000', '5Yqg5Y6a5qy+5bm25LiN5Y6a77yM5LiN6L+H5L+d5pqW5pWI5p6c6L+Y5piv5LiN6ZSZ55qE77yM5pG46LW35p2l5omL5oSf5Lmf5b6I6IiS5pyN77yM5q+v5a2Q5aSn5bCP5Lmf5ZCI6YCC44CC', '1492328000', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('273', '0', '1010000', '6LaF5Zac5qyi6L+Z5qy+576K5q+b5q+v77yM5q+P5aSp6Lq65rKZ5Y+R5pe26YO955uW5Zyo6Lqr5LiK77yM6Z2e5bi45L+d5pqW44CC54yr5Lmf5b6I5Zac5qyi44CC', '1490855290', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('274', '0', '1010000', '6aKc6Imy5qy+5byP5p2Q6LSo6YO95piv5oiR5Zac5qyi55qE44CC', '1491538162', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('275', '0', '1010000', '6aOO5LiA6Iis55qE54mp5rWB6YCf5bqm77yM57uZ6LWe77yB5Lqn5ZOB5Lmf5b6I5aW977yM56Gu5a6e5b6I5pqW5ZKM77yB', '1488939699', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('276', '0', '1010000', '5omL5oSf5b6I5aW977yM5LuK5aSp5ou/5Y675bmy5rSX5LiA5LiL5bCx5Y+v5Lul6YCB57uZ5amG5amG5LqG4pyM77iP', '1489373962', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('277', '0', '1010000', '6LSo5oSf5LiN6ZSZ77yM6LaF5aSn77yM6LaF5pqW77yM5pyJ6IKh576K5ZGz8J+YgfCfmIE=', '1489244715', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('278', '0', '1010000', '5YyF6KOF5b6I57KX57OZ5ZWK77yM5oSf6KeJ6YO95LiN5YOP5Lil6YCJ55qE5LqG44CC5qy+5Z6L5b6I6Z2T77yM5pGp5pOm55qu6IKk5Lmf5LiN55eS77yM5aSf5Y6a5Y+v5Lul5ou/5p2l5Z6r5bqK5Y2V5LiL6Z2i44CC', '1481717857', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('279', '0', '1010000', '6Z2e5bi45LiN6ZSZ55qE5LiA5qy+576K5q+b5q+v77yM5Yas5aSp56qd5Zyo5rKZ5Y+R6L+95Ymn5b+F5aSH77yM5YC85b6X5YaN5YWl5omL', '1486201275', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('280', '0', '1010000', '5Lil6YCJ6LSo5LyY77yM5YC855qE5oul5pyJ44CC', '1487499290', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('281', '0', '1010000', '5oy65Y6a5a6e55qE77yM5LiN6ZSZ', '1486468112', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('282', '0', '1010000', '5b6I6IiS5pyNIOi0qOmHj+S4jemUmQ==', '1485352584', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('283', '0', '1010000', '6L+Z5piv5Zyo5Lil6YCJ5LiK5Lmw55qE5pyA6LS155qE5LiA5qyh5Y2V5Lu355qE5Lqn5ZOBIOebruWJjeS4uuatou+8jOeci+S4iuWOu+i/mOS4jemUmeOAguiZveeEtuivtOW3sue7j+efpemBk+S7lueahOWwuuWvuOS6hu+8jOS9huaYr+eci+WIsOS7luacrOWwiueahOaXtuWAme+8jOi/mOaYr+inieW+l+W+iOWkp+OAgg==', '1484460066', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('284', '0', '1010000', '6ZOy5a2Q5oiR5b6I5Zac5qyi77yM55uW5q+v5oiR6ICB5amG5Zac5qyi77yM5LiN6L+H5rKh5oOz6LGh55qE5Y6a', '1482801530', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('285', '0', '1010000', '5q+v5a2Q5b6I5LiN6ZSZ77yB5YyF6KOF56iN5pi+566A6ZmL', '1482920966', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('286', '0', '1010000', '5q2j5aW95Zyo5LiL6Zuo5aSp5Yiw5LqG', '1482284542', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('287', '0', '1010000', '5ruh5oSP77yB77yB77yB', '1482155125', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('288', '0', '1010000', '5b6I5Y6a', '1481617889', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('289', '0', '1010000', '6YO96Z2e5bi45Zac5qyi77yB5p+U6L2v6IiS6YCC77yB5YWo576K5q+b55qE', '1479437783', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('290', '0', '1010000', '5aW977yM5a6M576O', '1476664910', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('291', '0', '1010000', '5oSf6KeJ6L+Y5Y+v5Lul77yM5bCx5piv5rKh5pyJ56S855uS5YyF6KOF77yM5bCx566A5Y2V5LiA5Liq5aGR5paZ6KKL6KOF55qE44CC', '1473062843', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('292', '0', '1010000', '6LWg5ZOB5LiN57uZ6KGl5a+E77yM5Z6D5Zy+5pyN5Yqh77yM5Lul5ZCO5oOz6L2s5Y675b+F6KaB5Lmw5LqG', '1483165820', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('293', '0', '1010000', '6Z2e5bi45pyJ5Lu96YeP44CB5pyJ6LOq5oSf55qE5LiA5qy+576K5q+b55uW5q+v44CC6IiS6YGp5bqm5Lmf5b6I5aW977yM56qp5Zyo5rKZ55m86YeM55qE6aaW6YG455uW5q+v44CC5YC85b6X5o6o6Jam77yB', '1494079798', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('294', '0', '1010000', '6Z2e5bi45Y6a5a6e77yM55yf5p2Q5a6e5paZ44CCCuWkqeawlOa4kOeDre+8jOi/mOayoeeUqOS4iu+8jOS9huaEn+inieaYr+mdnuW4uOWlveeahOi0qOmHjw==', '1494217839', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('295', '0', '1010000', '6L+Z5qy+6Jm954S25rKh5pyJ5YW25LuW55qE57K+6Ie077yM5L2G5piv5Y+I5Y6a5Y+I6L2v77yM5b6I6IiS5pyN77yM6ZmQ6LSt5pe25Lmw6L+Y5piv6Juu5a6e5oOg55qE', '1491135028', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('296', '0', '1010000', '5b6I5aW977yM5oCn5Lu35q+U6LaF6auY77yM5ZKM5oiR5YmN5Lik5bm05Lmw55qE6KW/54+t54mZ5Lqn5q+b5q+v566A55u05LiA5qih5LiA5qC377yM5aSq6LWe', '1492306311', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('297', '0', '1010000', '5b6I5Y6a5a6e77yM5b6I5aSn44CC5a626YeM5pyJ5pqW5rCU55qE5pe25YCZ55uW552A5bCP552h5LiA5Lya5Y2I6KeJ6Z2e5bi46IiS5pyN44CC5bCx5piv5LiN55+l6YGT6K+l5oCO5LmI5riF5rSX44CC', '1487820751', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('298', '0', '1010000', '5Lmw57uZ6ICB5aaI5Yas5aSp5Z2Q5Zyo5bqK5LiK55yL55S16KeG5oqr6IKp6IaA5L+d5pqW55So55qE44CC6ICB5aaI55So5LqG5b6I5byA5b+D44CC', '1488553119', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('299', '0', '1010000', '5oy65Y6a5a6e55qE576K5q+b5q+v77yM6aKc6Imy55yL6LW35p2l5Lmf6Z2e5bi455qE6Ieq54S277yM5rKh5pyJ6L+H5bqm5p+T6Imy77yM6YCC5ZCI6YWN5ZCI6KKr5a2Q5LiA6LW35L2/55So', '1490273895', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('300', '0', '1010000', '5YyF6KOF57K+6Ie077yM5YGa5bel6Z2e5bi45aW977yM6aKc6Imy5Lmf5q2j44CC572R5piT5Lil6YCJ5aW96LWe77yM5Lul5ZCO6L+Y5Lya57un57ut5YWz5rOo44CC8J+RjfCfkY3wn5GN5pyA5Li76KaB5aaI5aaI5b6I5Zac5qyi44CC', '1487325119', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('301', '0', '1010001', '5b6I5LiN6ZSZIOavlOi+g+aflOi9r+aaluWSjCDmmKXnp4vnlKjliJrlpb0g6L+Z5Liq5Lu35L2N566X5piv54mp5pyJ5omA5YC8', '1490318622', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('302', '0', '1010001', '6LaF5Ye65oOz6LGh55qE5aW977yB5Y+I5aSn5Y+I5pqW77yM5Yas5aSp5a6i5Y6F55yL55S16KeG55qE5pyA5L2z6KOF5aSH', '1488289502', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('303', '0', '1010001', '5LuK5aSp5pS25Yiw5LqG77yM6ICB5amG5b6I5Zac5qyi8J+YmA==', '1486012448', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('304', '0', '1010001', '6L+Z5LiL55yL55S16KeG5LiN55So5ouF5b+D5Ya76IW/5LqG', '1481717033', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('305', '0', '1010001', '5oiR5b6I5Zac5qyi77yM54yr5pu05Zac5qyi44CC44CC', '1479967251', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('306', '0', '1010001', '5q+U5Zu+54mH55m95LiA54K5IOacieeCueaAleiEjyDlpb3lpKcg5pqW5ZKM', '1476619836', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('307', '0', '1010001', '5Y+v6IO95piv5Yia5byA5aeLIOeahOe8mOaVhe+8jOacieeCueaOieavm++8jOW4jOacm+W+gOWQjuS8muWlveeCuSDov5jmmK/lpKflipvmlK/mjIHkuKXpgIkg5biM5pyb5LiN5b+Y5Yid5b+DIOaJvuWvu+WIsOabtOWkmuWlveS6p+WTgQ==', '1490071917', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('308', '0', '1010001', '5oy66L2v77yM5bCx5piv57q555CG5LiN5aSq5piO5pi+77yM6LSo5oSf55yL6LW35p2l5pyJ54K55pen5pen55qE', '1490421674', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('309', '0', '1010001', '5pG46LW35p2l5b6I6IiS5pyN77yM5LiN6ZSZ5LiN6ZSZ4oCm', '1465954303', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('310', '0', '1010001', '6YCB57uZ6Ze65a+G55qE57uT5ama56S854mp77yM5aW56Z2e5bi45Zac5qyi44CC6K+05aW95aSn55qE5LiA5Liq5q+v5a2Q77yM5oiR5omT566X6Ieq5bex5YaN5Lmw5LiA5Liq', '1494122174', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('311', '0', '1010001', '5Yas5aSp5Z2Q5Zyo5Yqe5YWs5a6k6YeM55qE5L+d5pqW56We5Zmo5ZWK77yM5Y+I6L2v5Y+I6IiS5pyN77yM5LiA5pG45bCx55+l6YGT5piv57qv576K5q+b55qE', '1490328258', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('312', '0', '1010001', '5pS25Yiw5b6I5oOK5Zac77yM5Y6a5a6e44CB5p+U6L2v44CB6aKc6Imy6LaF576O77yM5LiN5b+F5r6z5rSy5bim5Zue5p2l55qE5beu77yB6LaF57qn6IiS5pyN5ZKM5pi+5qGj5qyh44CC', '1493893053', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('313', '0', '1010001', '5Yas5aSp5Lmw55qEIOi2heeIsee+iuavm+avryDomb3nhLblpJrlsJHkvJrmiY4g5L2G55yL552A6YO95rip5pqW', '1493871236', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('314', '0', '1010001', '5Zac5qyi', '1494481175', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('315', '0', '1010001', '5oSf6KeJ5b6I5Y6a5a6e77yM5bCx5piv5pyJ54K55o6J5q+b', '1494405394', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('316', '0', '1010001', '6Z2e5bi45p+U6L2v', '1494291239', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('317', '0', '1010001', '5b6I5aSn77yM5Lmf5b6I5pqW5ZKM44CC5L2G5piv5Lmf5a2Y5Zyo5YW25LuW6K+E6K666YeM5o+Q5Yiw55qE77yM5pyJ54K55o6J5q+b44CC5Y+v6IO96ZyA6KaB5YWI5bmy5rSX5LiA5qyh5omN6KGM44CC', '1484530815', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('318', '0', '1010001', '5LiN6ZSZ', '1493905842', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('319', '0', '1010001', '5pyJ5qGj5qyh', '1493624081', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('320', '0', '1010001', '5Y2B5YiG5p+U6L2v5Lqy6IKk77yM6ZO65Zyo5rKZ5Y+R5LiK5YGa55uW5q+v5LqG44CC', '1493275430', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('321', '0', '1010001', '5pS25Yiw6L+r5LiN5Y+K5b6F5omT5byA77yM5piv5oiR5oOz6KaB55qE77yM5q+U5oOz6LGh55qE6KaB5aW977yM6LSo6YeP44CB5omL5oSf77yM6aKc6Imy6LaF5Zac5qyi', '1490522354', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('322', '0', '1010001', '5omL5oSf5b6I5aW977yB', '1493027776', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('323', '0', '1010001', '6L+Y5rKh55So77yM55yL552A6L+Y6KGM77yM5peg5byC5ZGz44CC', '1492836124', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('324', '0', '1010001', '6Z2e5bi45aW955qE5Lqn5ZOB77yM5Lil6YCJ56ys5LiA6YCJ5oup', '1492767350', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('325', '0', '1010001', '5L+d5pqW5pWI5p6c5LiN6ZSZ77yM5bCx5piv5o6J5q+b55qE5a6e5Zyo5piv5Y6J5a6z77yM5Z+65pys5LiK55uW5a6M5Lul5ZCO77yM6Lqr5LiK5bCx6Lef6YeR5q+b546p5LqG5LiA5aSp5LiA5qC344CC', '1484642778', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('326', '0', '1010001', '5aW95Lic6KW/', '1492669037', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('327', '0', '1010001', '5bey6YCA6LSn5pu05o2i', '1492513727', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('328', '0', '1010001', '5YCS5pil5a+S5q2j5aW955So5LiK77yM5Y+v5Lul5b2T5oqr6IKp5Y+I55So5L2c55uW6KKr77yM5a6e55So44CC', '1491950158', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('329', '0', '1010001', '5aW9', '1492442013', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('330', '0', '1010001', '5b6I5aW9', '1492356955', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('331', '0', '1011004', '6L+Z5qy+5q+b5be+6KKr54m55Yir5Y6a5a6e77yM5YGa5bel6Z2e5bi457K+6Ie077yM6LSo5Zyw5p+U6L2v5oy65aal77yM6IO95ruh6Laz5pil5a2j5ZKM5aSP5aSp56m66LCD6Ze05L2/55So77yM6YCC5ZCI5oiR55So5p2l5Y2I552h4pyM', '1493439535', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('332', '0', '1011004', '5Y6a5a6e77yM6IiS6YCC77yM5rSX5rC055qE5pe25YCZ5q2j5bi45o6J57uS77yM5rSX6L+H5ZCO5LiN5o6J5q+b77yM5LiN57yp5rC077yM5LiN5o6J6Imy44CC5YC877yB5Y+I5Lmw5LqG5bqK57qi6Imy5a+E57uZ5a625Lq655So44CC', '1494074599', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('333', '0', '1011004', '6LSo6YeP5Y+v5Lul77yM6aKc6Imy5oy65Zac5qyi55qE77yM55uW5LqG5LiA5LiL77yM5oy65pqW5ZKM55qE77yM55WZ552A5aSP5aSp5p2l5bCx5Y+v5Lul55So5LqG77yM5aW96K+E77yB', '1489189556', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('334', '0', '1011004', '5Zyo5a+d5a6k55So5LiN6ZSZ5ZOm', '1493882401', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('335', '0', '1011004', '', '1493825245', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('336', '0', '1011004', '6LSo6YeP54m55Yir5aW977yM54mp6LaF5omA5YC877yB', '1493728710', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('337', '0', '1011004', '6LSo6YeP5aW977yM55uW552A5b6I6IiS5pyN77yM5aW96K+E44CC', '1493720321', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('338', '0', '1011004', '5YiG6YeP6Laz77yM5omL5oSf5aW944CCCiheX14p', '1493549148', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('339', '0', '1011004', '6L+Y5piv5oSf6KeJ5pyJ5Lqb6JaE5ZWK4oCm4oCm4oCm4oCm', '1489916486', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('340', '0', '1011004', '54mp5rWB6YWN6YCB5b6I5b+r77yM6LSo6YeP6Z2e5bi45LiN6ZSZ44CC', '1489678188', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('341', '0', '1011004', '5LmL5YmN5Lmw5LqG5LiA5p2h5aW95aW94oCm4oCm5p6c5pat5Y+I5Lmw5LqGM+adoQ==', '1489362280', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('342', '0', '1011004', '5LmL5YmN5Lmw5LqG5LiA5p2h5aW95aW94oCm4oCm5p6c5pat5Y+I5Lmw5LqGM+adoQ==', '1489362259', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('343', '0', '1011004', '', '1489362268', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('344', '0', '1011004', '', '1489291127', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('345', '0', '1011004', '6LSo6YeP6Z2e5bi45aW977yM5Y+I5a+G5Y+I57uG77yM5Y6a5a6e', '1488961565', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('346', '0', '1011004', '5LiN6ZSZ5b6I5Y6a5a6e', '1488931265', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('347', '0', '1011004', '6KKr5a2Q55yf5b+D5b6I5LiN6ZSZICAg5b6I6YeN5b6I5omO5a6e77yM5Zyo5Y6m6Zeo5LiA5bqK6L+Z5Liq6KKr5a2Q5LiA5bqK56m66LCD6KKr5bCx5Y+v5Lul6L+H5Yas5aSp5LqGICAg5Zac5qyi77yB77yB77yB', '1481731276', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('348', '0', '1011004', '5ZCs566A5rSB5aSn5rCU55qE77yM6aKc6Imy5oy65aW955yL55qE', '1488896250', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('349', '0', '1011004', '5a6e54mp6Z2e5bi45aW977yM56m66LCD6KKr5b6I5Y6a5a6e77yM5ou/5Yiw5omL5ruh5ruh55qE5bm456aP5oSf772e', '1488464592', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('350', '0', '1011004', '6aaW5YWI5a+55b+r6YCS6KGo56S65LiA5LiL6IKv5a6a77yM5pio5aSp5Yia5LiL55qE5Y2V5LuK5aSp5bCx5pS25Yiw5LqG44CC55yf55qE5b6I5aSn5b6I6IiS5pyN77yM5paZ5a2Q5piv56iN5b6u5pyJ5LiA5Lqb56Gs55qE77yM5LiN6L+H5rSX6L+H5bqU6K+l5bCx5Lya5aW95LiA5Lqb5LqG44CC5oiR5Lmw55qE6JOd6Imy55qE77y', '1488684593', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('351', '0', '1011004', '5b6I5aW977yM5Zac5qyi77yM5ruh5oSP77yM5aW96K+E77yMNeWIhu+8gQ==', '1488114774', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('352', '0', '1011004', '5b6I5aW977yM5Zac5qyi77yM5ruh5oSP77yM5aW96K+E77yMNeWIhu+8gQ==', '1488114637', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('353', '0', '1011004', '5LiO5oOz6LGh5Lit55qE5rKh5beu5Yir77yM5aW95Zac5qyi77yB', '1488013532', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('354', '0', '1011004', '6LSo6YeP5aW977yM55uW552A54m55Yir6IiS5pyN77yM5b6I6L2v5ZKM77yM6L+Z5piv5Lmw55qE56ys5LqM5Yib5LqG44CC', '1485051290', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('355', '0', '1011004', '5rKh5ZGz6YGT77yM6LSo5Zyw5omL5oSf6YO95b6I5aW977yMQULpnaLkuI3plJnigKbigKbnm7jkv6HkuKXpgIk=', '1485060528', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('356', '0', '1011004', '5b6I5aW977yM6LaF5Ye65LqG5oOz6LGh77yM5pG4552A5omL5oSf5LiN6ZSZ77yM5pyJ5b6I5Y6a5a6e5b6I6YeN55qE5oSf6KeJ77yM56iN5b6u5pyJ5Lqb5ZGz6YGT77yI5ZWG5ZOB5LuL57uN6YeM6K+05LqG77yJ77yM546w5Zyo5q2j5Zyo5oyJ54Wn5ZWG5a6255qE5LuL57uN5pS+5Zyo5rSX6KGj5py66YeM5rSX44CC', '1484532187', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('357', '0', '1011004', '5oy65rKJ55qE5q+b5be+6KKr', '1485161108', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('358', '0', '1011004', '5Y+I5aSn5Y+I6IiS5pyN77yM6LSo6YeP5Y+v6Z2g77yM6L+Y5Lmw5LiA5Lu2', '1484825380', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('359', '0', '1011004', '6L+Z5Liq6Z2e5bi45ruh5oSP77yM5b6I6IiS5pyN44CC', '1484720882', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('360', '0', '1011004', '5Y6a5a6e6Zi/77yM5b6I6IiS5pyN44CC56ul5bm0552h6KeJ55qE5oSf6KeJ44CC6ICB54i46ICB5aaI6YO95Zac5qyi44CC5Lmw5LqG5Lik5byg77yM6L+Y5oOz5YaN5Lmw', '1479013952', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('361', '0', '1015007', '5Lil6YCJ55qE5ZWG5ZOB5LiN6K665piv5Y+R6LSn77yM54mp5rWB77yM5Yiw5ZOB6LSo6YO95piv5peg5Y+v5oyR5YmU55qE77yB5LuO5b+D6YeM6K+056Gu5a6e5aW95Luk5Lq65ruh5oSP77yB', '1492673654', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('362', '0', '1015007', '5LiA6KeB6ZKf5oOF55qE5oqx5p6V77yM6ZOD5YWw55qE5Zu+5qGI576O5b6X5LiN6KGM77yM6LSo6YeP6LaF5aW955qE77yM5oCn5Lu35q+U6auY44CC', '1492860874', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('363', '0', '1015007', '5pS+5Zyo5b+D55CG5ZKo6K+i5bel5L2c5a6k55qE77yM5Zu+5qGI5pyJ55qE6K+05YOP6Iqx5YS/77yM5pyJ55qE6K+05YOP5aSq6Ziz77yM5YWF5YiG5Y+R5oyl6Ieq55Sx6IGU5oOz77yM5pyJ55qE5p2l6K6/6ICF5LuO5aS05Yiw5bC+5LiA55u05oqx552A77yM5b6I5pyJ5a6J5YWo5oSf44CC6IOM6Z2i5piv55m96Imy77yM57Sg6Zu', '1492829699', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('364', '0', '1015007', '5b+F6aG75aW96K+E77yB6LSo6YeP5q+U5oOz6LGh55qE6L+Y6KaB5aW977yM5YGa5bel57K+57uG77yM6aKc6Imy5ZKM5Zu+5qGI6YO95b6I5ryC5Lqu77yM5Zac5qyi77yB', '1492529269', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('365', '0', '1015007', '57uj6Iqx576O576O5ZOS77yM5biD55qE5p2Q6LSo5Lmf5LiN6ZSZ77yB6Z2g5Z6r5by55oCn5Lmf5LiN6ZSZ', '1493466407', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('366', '0', '1015007', '5b6I5aW955yL77yM5b6I576O5byP77yM5YeG5aSH5rS75Yqo55qE5pe25YCZ5YaN5Lmw5LiA5Liq', '1492880943', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('367', '0', '1015007', '55yf56m65YyF6KOF77yM5pS25Yiw55qE5pe25YCZ5omB5omB55qE77yM5omT5byA5ouN5Yeg5LiL5bCx5b6I6JOs5p2+5b6I6IiS5pyN77yM5YGa5bel57K+57uG77yM54mp6LaF5omA5YC8', '1492342540', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('368', '0', '1015007', '56ys5LiA5qyh5Zyo5Lil6YCJ6LSt54mp77yM5pS25Yiw55qE5oqx5p6V6K6p5Lq65oOK5Zac77yB54mp576O5Lu35qC86L+Y5LiN6LS177yB5YC877yB', '1492870273', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('369', '0', '1015007', '54m55Yir5Zac5qyi77yM6Lef5a626YeM55qE5rKZ5Y+R5b6I6YWN44CC5omA5pyJ6Iqx6Imy6YO95Lmw5LqG77yM5Zac5qyi44CC44CC44CC', '1492862780', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('370', '0', '1015007', '6LSo6YeP5b6I5aW977yM6Iqx6Imy5piv5oiR5Zac5qyi55qE57G75Z6L77yM5Yi657uj5b6I57K+6Ie0', '1492781857', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('371', '0', '1015007', '6Iqx6Imy5ryC5Lqu77yM5Yi657uj57K+6Ie077yM6Z2e5bi45Zac5qyi77yM5Lil6YCJ6LSo6YeP5b6I5aW9', '1492781980', '0', '1', '');
INSERT INTO `nideshop_comment` VALUES ('372', '0', '1015007', '5Lic6KW/6LSo6YeP5aW95ryC5Lqu5aW95Zac5qyi8J+Sk/