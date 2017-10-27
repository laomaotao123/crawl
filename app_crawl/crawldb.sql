/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : crawldb

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-10-17 23:53:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for crawl_content
-- ----------------------------
DROP TABLE IF EXISTS `crawl_content`;
CREATE TABLE `crawl_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `province_code` varchar(30) NOT NULL COMMENT '省份编码',
  `city_code` varchar(80) DEFAULT NULL COMMENT '地市编码',
  `content_url` varchar(200) NOT NULL COMMENT '详细内容URL',
  `title` varchar(240) NOT NULL COMMENT '主题',
  `data_code` varchar(40) DEFAULT NULL COMMENT '业务类型编码',
  `platform` varchar(100) DEFAULT NULL COMMENT '来源平台',
  `stage` varchar(100) DEFAULT NULL COMMENT '信息类型',
  `trade` varchar(100) DEFAULT NULL COMMENT '行业',
  `pub_time` varchar(20) NOT NULL COMMENT '发布时间',
  `indb_time` datetime NOT NULL COMMENT '入库时间',
  `batchno` varchar(40) DEFAULT NULL COMMENT '批次',
  PRIMARY KEY (`id`),
  KEY `idx_crawl_content` (`content_url`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COMMENT='爬取的数据明细';

-- ----------------------------
-- Records of crawl_content
-- ----------------------------
INSERT INTO `crawl_content` VALUES ('1', '西藏', null, 'http://www.ggzy.gov.cn/information/html/a/540000/0101/201710/10/005434788df8771548c697e7c01151224a57.shtml', '阿里地区改则县人民检察院“五暖心、三应急”检务保障房建设项目二次招标无标段招标公告', '工程建设', '西藏自治区招标投标网', '招标/资审公告', '房屋建筑业', '2017-10-17', '2017-10-17 00:00:00', null);
INSERT INTO `crawl_content` VALUES ('2', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0101/201710/17/0034c9cf334e97e14c2cb1c73ed9e0e5f55b.shtml', '泗县环县东路与G343交叉口改造工程施工', '工程建设', '宿州市公共资源交易平台电子服务系统', '招标/资审公告', '', '2017-10-17', '2017-10-17 22:37:06', null);
INSERT INTO `crawl_content` VALUES ('3', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/003459b051a25ff24f57b7a6911cc5c95dc7.shtml', '枞阳县人民检察院附属工程', '工程建设', '铜陵市公共资源交易平台电子服务系统', '交易结果公示', '', '2017-10-17', '2017-10-17 22:37:09', null);
INSERT INTO `crawl_content` VALUES ('4', '450000', null, 'http://www.ggzy.gov.cn/information/html/a/450000/0101/201710/17/0045e82e215c93b946bda7af5a635d17644c.shtml', '来宾市兴宾区石陵镇中心幼儿园、来宾市兴宾区大湾镇中心幼儿园、来宾市兴宾区七洞乡中心幼儿园工程总承包招标公告', '工程建设', '来宾市公共资源交易中心', '招标/资审公告', '', '2017-10-17', '2017-10-17 22:37:11', null);
INSERT INTO `crawl_content` VALUES ('5', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0101/201710/17/00625d1f64e6fcc842a09384d066b943558b.shtml', '天祝县松山镇德吉新村附属工程建设项目施工图设计招标公告', '工程建设', '武威市公共资源交易电子交易系统', '招标/资审公告', '', '2017-10-17', '2017-10-17 22:37:13', null);
INSERT INTO `crawl_content` VALUES ('6', '320000', null, 'http://www.ggzy.gov.cn/information/html/a/320000/0104/201710/17/00322d3d2e51c5184c09a72a2583ad9be6b6.shtml', '室内装修工程中标候选人公示', '工程建设', '无锡市建设工程网上招投标系统', '交易结果公示', '', '2017-10-17', '2017-10-17 22:37:15', null);
INSERT INTO `crawl_content` VALUES ('7', '320000', null, 'http://www.ggzy.gov.cn/information/html/a/320000/0104/201710/17/003244a03784f9bd49e1b2e17769f5ba8c3a.shtml', '(浦口分中心)佛手湖配套服务设施工程服务中心和配套公厕室内外装饰装修工程施工', '工程建设', '南京市公共资源交易中心交易业务管理系统', '交易结果公示', '', '2017-10-17', '2017-10-17 22:37:16', null);
INSERT INTO `crawl_content` VALUES ('8', '420000', null, 'http://www.ggzy.gov.cn/information/html/a/420000/0104/201710/17/0042856bd27328314280809abbfd08d9acf1.shtml', '京山县2017年小型病险水库除险加固工程1-4标段施工 评标结果公示', '工程建设', '荆门市公共资源交易网', '交易结果公示', '生态保护和环境治理业', '2017-10-17', '2017-10-17 22:37:17', null);
INSERT INTO `crawl_content` VALUES ('9', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/0034db4ec7feb1914939b911eb274f78e117.shtml', '符离镇矿山环境治理工程 （二标段）', '工程建设', '宿州市公共资源交易平台电子服务系统', '交易结果公示', '生态保护和环境治理业', '2017-10-17', '2017-10-17 22:37:19', null);
INSERT INTO `crawl_content` VALUES ('10', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0101/201710/17/0034ec30aef9ef9942bb91318022efabbf97.shtml', '六安市食品药品检验中心检测楼多联机空调采购及安装(第二次)', '工程建设', '六安市公共资源交易平台电子服务系统', '招标/资审公告', '', '2017-10-17', '2017-10-17 22:43:58', null);
INSERT INTO `crawl_content` VALUES ('11', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0106/201710/17/00622f6fd0ee4afd47edb8de130a023d062e.shtml', '宁县米桥小学综合实验楼厕所合并建设工程施工资格预审结果公告', '工程建设', '庆阳市公共资源交易电子交易系统', '资格预审结果', '', '2017-10-17', '2017-10-17 22:44:00', null);
INSERT INTO `crawl_content` VALUES ('12', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0104/201710/17/006297b382423f4c4f318075e9af62251f37.shtml', '渭源县祁家庙乡自然村硬化道路建设项目三合同段中标候选人公示', '工程建设', '定西市公共资源交易电子交易系统', '交易结果公示', '', '2017-10-17', '2017-10-17 22:44:02', null);
INSERT INTO `crawl_content` VALUES ('13', '370000', null, 'http://www.ggzy.gov.cn/information/html/a/370000/0104/201710/17/0037479d2ba53ba34409898c40449a9063e3.shtml', '聊城市人民医院区域远程会诊系统项目', '工程建设', '聊城市公共资源交易系统', '交易结果公示', '房屋建筑业', '2017-10-17', '2017-10-17 22:44:04', null);
INSERT INTO `crawl_content` VALUES ('14', '420000', null, 'http://www.ggzy.gov.cn/information/html/a/420000/0101/201710/17/0042873ffa6a3bba4efcb4f084a6e457f00e.shtml', '国网湖北恩施宣恩县供电公司沙道沟供电所', '工程建设', '恩施州电子交易平台', '招标/资审公告', '建筑装饰和其他建筑业', '2017-10-17', '2017-10-17 22:44:07', null);
INSERT INTO `crawl_content` VALUES ('15', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0104/201710/17/0062e190b1eb63164d6187ee3bccf9f84947.shtml', '漳县武阳镇蔺家湾村村内巷道硬化项目中标候选人公示', '工程建设', '定西市公共资源交易电子交易系统', '交易结果公示', '', '2017-10-17', '2017-10-17 22:44:09', null);
INSERT INTO `crawl_content` VALUES ('16', '370000', null, 'http://www.ggzy.gov.cn/information/html/a/370000/0105/201709/09/00373dea15a38bb84db0beb33b67aeb5506e.shtml', '东昌府区残疾人联合会贫困重度残疾人家庭无障碍设', '工程建设', '聊城市公共资源交易系统', '招标/资审文件澄清', '房屋建筑业', '2017-10-17', '2017-10-17 22:44:12', null);
INSERT INTO `crawl_content` VALUES ('17', '320000', null, 'http://www.ggzy.gov.cn/information/html/a/320000/0104/201710/17/003274481e8ab2384443b5d9624381ae6410.shtml', '宿城乡贤馆展厅布展工程评标结果公示', '工程建设', '', '交易结果公示', '建筑装饰和其他建筑业', '2017-10-17', '2017-10-17 22:44:14', null);
INSERT INTO `crawl_content` VALUES ('18', '320000', null, 'http://www.ggzy.gov.cn/information/html/a/320000/0104/201710/13/0032eadafe3646fc4ee299d16128961101c7.shtml', '苏地2016-WG-89号地块项目镇湖街道邻里中心项目材料检测及基坑监测', '工程建设', '', '交易结果公示', '', '2017-10-17', '2017-10-17 22:49:32', null);
INSERT INTO `crawl_content` VALUES ('19', '130000', null, 'http://www.ggzy.gov.cn/information/html/a/130000/0105/201710/17/001328ec39489e824aa4beead13553460842.shtml', '邢台经济开发区南部地区煤改气天然气管道监理（二次）', '工程建设', '河北省公共资源交易公共服务平台', '招标/资审文件澄清', '房屋建筑业', '2017-10-17', '2017-10-17 22:52:45', null);
INSERT INTO `crawl_content` VALUES ('20', '320000', null, 'http://www.ggzy.gov.cn/information/html/a/320000/0101/201710/17/0032333e8c08f99c4d939c6fd808f97ea553.shtml', '2017-2018年度南山片区项目检测框架招标', '工程建设', '镇江市建设工程网上招投标系统', '招标/资审公告', '', '2017-10-17', '2017-10-17 22:52:59', null);
INSERT INTO `crawl_content` VALUES ('21', '320000', null, 'http://www.ggzy.gov.cn/information/html/a/320000/0104/201710/17/0032c97f33d730fd44058ac399384fcdea67.shtml', '靖江市三庆路道路改造工程', '工程建设', '靖江市公共资源交易平台系统', '交易结果公示', '房屋建筑业', '2017-10-17', '2017-10-17 22:53:11', null);
INSERT INTO `crawl_content` VALUES ('22', '520000', null, 'http://www.ggzy.gov.cn/information/html/a/520000/0104/201710/17/0052bb76b3e9dcee4ea8b9deca77b9e75328.shtml', '武陵山（铜仁·苏州）国际汽车城建设项目附属工程监理 一标段', '工程建设', '铜仁市公共资源交易中心', '交易结果公示', '', '2017-10-17', '2017-10-17 22:53:25', null);
INSERT INTO `crawl_content` VALUES ('23', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0106/201710/17/0062d54f2d7652d04ea7844d619efea91f28.shtml', '丝绸之路（敦煌）国际文化博览会基础设施建设项目－飞天公园环路（望月北路）建设工程资格预审结果明细', '工程建设', '敦煌市公共资源交易电子交易系统', '资格预审结果', '', '2017-10-17', '2017-10-17 22:53:38', null);
INSERT INTO `crawl_content` VALUES ('24', '540000', null, 'http://www.ggzy.gov.cn/information/html/a/540000/0101/201710/03/00542aeb8cd71cf54cb7adcc3f29a16e3258.shtml', '改则县畜产品加工厂建设项目监理标段无标段第二次招标公告', '工程建设', '西藏自治区招标投标网', '招标/资审公告', '房屋建筑业', '2017-10-17', '2017-10-17 23:50:17', null);
INSERT INTO `crawl_content` VALUES ('25', '540000', null, 'http://www.ggzy.gov.cn/information/html/a/540000/0101/201710/10/00541635affd76604ec5a74eeab433f7e216.shtml', '阿里地区改则县先遣乡小学改扩建工程无标段二次招标公告', '工程建设', '西藏自治区招标投标网', '招标/资审公告', '房屋建筑业', '2017-10-17', '2017-10-17 23:50:17', null);
INSERT INTO `crawl_content` VALUES ('26', '430000', null, 'http://www.ggzy.gov.cn/information/html/a/430000/0101/201710/10/00436d0cf6dc0a524eb4a9a7e4dc5d85ca46.shtml', '湖南中烟工业有限责任公司宁夏销区2017年零售户陈列优化项目更正公告2', '工程建设', '', '招标/资审公告', '烟草制品业', '2017-10-17', '2017-10-17 23:50:17', null);
INSERT INTO `crawl_content` VALUES ('27', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/0034e968f89f2702462cbd506424c910ac27.shtml', '中煤第三建设集团（怀远）涡河圈提西堤带状公园设计项目', '工程建设', '蚌埠市公共资源交易平台电子服务系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:50:17', null);
INSERT INTO `crawl_content` VALUES ('28', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/0034cb42edf4f2fd4d8cb0b990aa25af9aa9.shtml', '怀远县地下空间暨人防工程综合利用规划', '工程建设', '蚌埠市公共资源交易平台电子服务系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:50:17', null);
INSERT INTO `crawl_content` VALUES ('29', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/0034673ab3a29c6f4fae885f80ae4e48210e.shtml', '蜀山区十五里河流域治理工程（航鑫家苑海绵小区改造试点）项目施工二标段中标候选人公示', '工程建设', '合肥市公共资源交易平台电子服务系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:50:17', null);
INSERT INTO `crawl_content` VALUES ('30', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/003457b0c9a44df749d59a47bebaebcf66f3.shtml', '华资安置区6-12#楼坡屋面维修工程', '工程建设', '黄山市公共资源交易平台电子服务系统', '交易结果公示', '建筑装饰和其他建筑业', '2017-10-17', '2017-10-17 23:50:17', null);
INSERT INTO `crawl_content` VALUES ('31', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/00345185cc9835934d5690f45b56ea730c88.shtml', 'G329线合相路肥东县杨店服务区建设工程中标候选人公示', '工程建设', '合肥市公共资源交易平台电子服务系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:50:17', null);
INSERT INTO `crawl_content` VALUES ('32', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/003444e53874dfd14868b18d0f8842a1c589.shtml', '中国科学技术大学生命科学学院多联机空调改造工程中标候选人公示', '工程建设', '合肥市公共资源交易平台电子服务系统', '交易结果公示', '建筑装饰和其他建筑业', '2017-10-17', '2017-10-17 23:50:17', null);
INSERT INTO `crawl_content` VALUES ('33', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/0034f598aeeeefc6448b9f6792ee8f33b710.shtml', '当涂县姑孰镇白纻山采石场矿山地质环境治理项目中标结果公告', '工程建设', '马鞍山市公共资源交易平台电子服务系统', '交易结果公示', '生态保护和环境治理业', '2017-10-17', '2017-10-17 23:50:17', null);
INSERT INTO `crawl_content` VALUES ('34', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/0034c036147e2c0444858cbf38a2bc6ffd62.shtml', '固镇县沟渠贯通蓄水试点项目五固河一期工程监理中标结果公告', '工程建设', '蚌埠市公共资源交易平台电子服务系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:50:17', null);
INSERT INTO `crawl_content` VALUES ('35', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/003497c5b7e42c5b477889b25311ca75571c.shtml', '怀远县农业综合开发2017年白莲坡、淝南乡高标准农田建设绿化项目中标结果公告', '工程建设', '蚌埠市公共资源交易平台电子服务系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:50:17', null);
INSERT INTO `crawl_content` VALUES ('36', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0104/201710/17/00622f1867aa6acd4ee78b75a2435cc4ed32.shtml', '酒泉市敦煌市莫高镇新墩村美丽乡村建设工程公开招标中标公告', '工程建设', '敦煌市公共资源交易电子交易系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:50:17', null);
INSERT INTO `crawl_content` VALUES ('37', '640000', null, 'http://www.ggzy.gov.cn/information/html/a/640000/0101/201710/17/006430cafe7d738e454cb96635072b621d57.shtml', '中卫市沙坡头区柔远镇美丽小城镇建设规划一路、规划二路、规划三路项目施工及监理招标公告', '工程建设', '宁夏公共资源交易服务平台', '招标/资审公告', '建筑装饰和其他建筑业', '2017-10-17', '2017-10-17 23:50:17', null);
INSERT INTO `crawl_content` VALUES ('38', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0104/201710/17/006286d596db5cb84c3b884e233f0454ccb4.shtml', '张掖市水生态保护监控信息系统工程中标候选人公示', '工程建设', '张掖市公共资源交易电子交易系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:50:17', null);
INSERT INTO `crawl_content` VALUES ('39', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0104/201710/17/00621a7c731fa8bc4e4691ec05c081605b47.shtml', '金昌市金川总校等单位电教器材、音箱等项目询价采购评审结果公告', '工程建设', '金昌市公共资源交易电子交易系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:50:17', null);
INSERT INTO `crawl_content` VALUES ('40', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0104/201710/17/006205cafded6b454c1ab3d7016cef5c762e.shtml', '金昌市金川总校体育中考设备采购项目废标公告', '工程建设', '金昌市公共资源交易电子交易系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:50:17', null);
INSERT INTO `crawl_content` VALUES ('41', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0101/201710/17/0034ecd8ff0ace9b40f1a6027090b44ff8a5.shtml', '亳州市谯城区十八里镇党群服务中心建设及社区装修工程第一标段、第二标段、第三标段', '工程建设', '亳州市公共资源交易平台电子服务系统', '招标/资审公告', '房屋建筑业', '2017-10-17', '2017-10-17 23:50:17', null);
INSERT INTO `crawl_content` VALUES ('42', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0101/201710/17/0034be7618595a564f59b5bc3a56868f7e40.shtml', '罍+艺创小镇景观道排方案及施工图设计(2017BBCZ3069)', '工程建设', '合肥市公共资源交易平台电子服务系统', '招标/资审公告', '', '2017-10-17', '2017-10-17 23:50:29', null);
INSERT INTO `crawl_content` VALUES ('43', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0101/201710/17/0034aac76b7b7d8d41e7ac0fdde8e6135a48.shtml', '西安路（宁夏路-河南路）、河南路（黄河路-渤海湾路）、山西路（花园大道-黄河路）绿化施工工程(2017GBCZ3298)', '工程建设', '合肥市公共资源交易平台电子服务系统', '招标/资审公告', '房屋建筑业', '2017-10-17', '2017-10-17 23:50:29', null);
INSERT INTO `crawl_content` VALUES ('44', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0101/201710/17/003475e46e65fe6b4d5da32104249e06f0a7.shtml', '亳州市谯城区十八里镇党群服务中心建设及社区装修工程第一标段、第二标段、第三标段', '工程建设', '亳州市公共资源交易平台电子服务系统', '招标/资审公告', '房屋建筑业', '2017-10-17', '2017-10-17 23:50:29', null);
INSERT INTO `crawl_content` VALUES ('45', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0101/201710/17/003419d42fd5a71e43e19a48bcfd6bb59410.shtml', '亳州市谯城区十八里镇党群服务中心建设及社区装修工程第一标段、第二标段、第三标段', '工程建设', '亳州市公共资源交易平台电子服务系统', '招标/资审公告', '房屋建筑业', '2017-10-17', '2017-10-17 23:50:29', null);
INSERT INTO `crawl_content` VALUES ('46', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0101/201710/17/003402562d8e5cff4ee9992a308be552f558.shtml', '贵池区2017年农业综合开发马衙街道生态综合治理项目一标段', '工程建设', '池州市公共资源交易平台电子服务系统', '招标/资审公告', '', '2017-10-17', '2017-10-17 23:50:29', null);
INSERT INTO `crawl_content` VALUES ('47', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0104/201710/17/0062f96504b2708f41638956b95751daa0c2.shtml', '天然林资源保护工程公共管护补助项目（窑洞湾资源管护站新建）', '工程建设', '武威市公共资源交易电子交易系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:50:29', null);
INSERT INTO `crawl_content` VALUES ('48', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0101/201710/17/0062a15b38c0ac7746b2b325ae7264195727.shtml', '天祝县松山镇祥瑞新村附属设施建设项目施工图设计招标公告', '工程建设', '武威市公共资源交易电子交易系统', '招标/资审公告', '', '2017-10-17', '2017-10-17 23:50:29', null);
INSERT INTO `crawl_content` VALUES ('49', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0101/201710/17/0062696eb631354048e796e5893bf6a32cc7.shtml', '古浪县城生态公园（牡丹园）景观工程招标公告', '工程建设', '武威市公共资源交易电子交易系统', '招标/资审公告', '', '2017-10-17', '2017-10-17 23:50:29', null);
INSERT INTO `crawl_content` VALUES ('50', '410000', null, 'http://www.ggzy.gov.cn/information/html/a/410000/0104/201710/17/00415988606101e244e98e02466ffd19b87a.shtml', '柘城县皇集乡2017年度整合资金贫困村基础设施项目中标结果公告', '工程建设', '商丘市公共资源交易中心', '交易结果公示', '', '2017-10-17', '2017-10-17 23:50:29', null);
INSERT INTO `crawl_content` VALUES ('51', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0101/201710/17/0062752e3ba040d04623b44812065b68c548.shtml', '武威市公共交通有限公司智慧公交调度平台建设项目（二次）招标公告', '工程建设', '武威市公共资源交易电子交易系统', '招标/资审公告', '', '2017-10-17', '2017-10-17 23:50:29', null);
INSERT INTO `crawl_content` VALUES ('52', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0104/201710/17/006272564035340e471aaaeae854185d5cd7.shtml', '广河县2017-2018年旱作农业秋覆膜、顶凌覆膜地膜采购项目中标公告', '工程建设', '临夏州公共资源交易电子交易系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:50:29', null);
INSERT INTO `crawl_content` VALUES ('53', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0104/201710/17/006232e7a746551045ebb5bafae7bf2e4924.shtml', '永靖县城区生活垃圾收运系统工程附属工程中标公示', '工程建设', '临夏州公共资源交易电子交易系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:50:29', null);
INSERT INTO `crawl_content` VALUES ('54', '420000', null, 'http://www.ggzy.gov.cn/information/html/a/420000/0105/201710/17/0042090305ef491f421f8b4fccce767cd627.shtml', '【罗田】罗田县易地扶贫搬迁河铺镇牌形地五保、低保居住点工程施工(罗田县河铺镇人民政府)1招标文件', '工程建设', '黄冈市公共资源交易信息网', '招标/资审文件澄清', '', '2017-10-17', '2017-10-17 23:50:29', null);
INSERT INTO `crawl_content` VALUES ('55', '420000', null, 'http://www.ggzy.gov.cn/information/html/a/420000/0101/201710/17/0042ef9998fc6281435aaf9865b7c996152e.shtml', '【罗田】罗田县易地扶贫搬迁河铺镇牌形地五保、低保居住点工程施工(罗田县河铺镇人民政府)公告', '工程建设', '黄冈市公共资源交易信息网', '招标/资审公告', '', '2017-10-17', '2017-10-17 23:50:29', null);
INSERT INTO `crawl_content` VALUES ('56', '450000', null, 'http://www.ggzy.gov.cn/information/html/a/450000/0101/201710/17/0045af16c383476f483c9a7d0cfd0adcebb9.shtml', '河池市人民厂片区棚户区改造项目—剧场安置点（银泰·王座）异地安置工程施工监理招标文件修改通知（项目编号：GXDYZB-2017(HC)-37）', '工程建设', '河池市公共资源交易中心', '招标/资审公告', '', '2017-10-17', '2017-10-17 23:50:29', null);
INSERT INTO `crawl_content` VALUES ('57', '440000', null, 'http://www.ggzy.gov.cn/information/html/a/440000/0101/201710/17/0044aa73d290838f4fbdb83a334c390cd7aa.shtml', '3848工程政治文化环境建设项目（第二次招标）', '工程建设', '', '招标/资审公告', '建筑装饰和其他建筑业', '2017-10-17', '2017-10-17 23:50:29', null);
INSERT INTO `crawl_content` VALUES ('58', '450000', null, 'http://www.ggzy.gov.cn/information/html/a/450000/0101/201710/17/00450dc80f8c4a744cce9d99dbab7fc8a670.shtml', '天峨县脱贫攻坚基础设施屯级道路建设项目一期№28、№29标段工程施工招标公告项目编号：SHTEG20172003', '工程建设', '河池市公共资源交易中心', '招标/资审公告', '', '2017-10-17', '2017-10-17 23:50:29', null);
INSERT INTO `crawl_content` VALUES ('59', '640000', null, 'http://www.ggzy.gov.cn/information/html/a/640000/0104/201710/17/006452d9a14e59e44dd7b5fb43b6cd5a8602.shtml', '西夏区第八小学等十四所中小学暑期维修改造施工项目（二标段）中标结果公告', '工程建设', '宁夏公共资源交易服务平台', '交易结果公示', '房屋建筑业', '2017-10-17', '2017-10-17 23:50:29', null);
INSERT INTO `crawl_content` VALUES ('60', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/00340d6775a14317475989fc346229440108.shtml', '合肥市三欣市政工程有限公司供水工程PVC管材及配件采购中标候选人公示', '工程建设', '合肥市公共资源交易平台电子服务系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:50:44', null);
INSERT INTO `crawl_content` VALUES ('61', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/003497ecc6a1ad314be4b8898ec116a9bfdb.shtml', '临泉县张新镇乡镇政府驻地建成区整治项目中标结果公告', '工程建设', '阜阳市公共资源交易平台电子服务系统', '交易结果公示', '建筑装饰和其他建筑业', '2017-10-17', '2017-10-17 23:50:44', null);
INSERT INTO `crawl_content` VALUES ('62', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/003495d3d0c8a126487791a668f24df57548.shtml', '太和县清浅镇中心大街（449省道）道路改造工程施工中标结果公告', '工程建设', '阜阳市公共资源交易平台电子服务系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:50:44', null);
INSERT INTO `crawl_content` VALUES ('63', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/0034916976384d5443b59db040e2490a8140.shtml', '临泉县谷河焦桥闸~姜寨段治理工程吴庄节制闸工程中标结果公告', '工程建设', '阜阳市公共资源交易平台电子服务系统', '交易结果公示', '水利管理业', '2017-10-17', '2017-10-17 23:50:44', null);
INSERT INTO `crawl_content` VALUES ('64', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/00346caefdeb59004bf6801f1c49f249eac8.shtml', '枞阳县忠毅大道新建工程（二标段）施工中标结果公告', '工程建设', '铜陵市公共资源交易平台电子服务系统', '交易结果公示', '建筑装饰和其他建筑业', '2017-10-17', '2017-10-17 23:50:44', null);
INSERT INTO `crawl_content` VALUES ('65', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/003424841880965f42a9ab579a1a3d611f1f.shtml', '临泉县谷河焦桥闸~姜寨段治理工程吴庄节制闸工程中标结果公告', '工程建设', '阜阳市公共资源交易平台电子服务系统', '交易结果公示', '水利管理业', '2017-10-17', '2017-10-17 23:50:44', null);
INSERT INTO `crawl_content` VALUES ('66', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/003406c49ee40a164e139a9630d6dc5eecfb.shtml', '临泉县张新镇乡镇政府驻地建成区整治项目中标结果公告', '工程建设', '阜阳市公共资源交易平台电子服务系统', '交易结果公示', '建筑装饰和其他建筑业', '2017-10-17', '2017-10-17 23:50:44', null);
INSERT INTO `crawl_content` VALUES ('67', '640000', null, 'http://www.ggzy.gov.cn/information/html/a/640000/0101/201710/17/0064c05dabc6b5a44bc9a1fcedbe3915d601.shtml', '贺兰县2017年产粮大县资金第一批、第二批项目招标公告', '工程建设', '宁夏公共资源交易服务平台', '招标/资审公告', '建筑装饰和其他建筑业', '2017-10-17', '2017-10-17 23:50:44', null);
INSERT INTO `crawl_content` VALUES ('68', '540000', null, 'http://www.ggzy.gov.cn/information/html/a/540000/0105/201710/17/00549b0a90a9d518417785675169c27d55e4.shtml', '加查县工商局综合业务用房建设项目', '工程建设', '西藏自治区招标投标网', '招标/资审文件澄清', '房屋建筑业', '2017-10-17', '2017-10-17 23:50:44', null);
INSERT INTO `crawl_content` VALUES ('69', '640000', null, 'http://www.ggzy.gov.cn/information/html/a/640000/0101/201710/17/00640af63c8bb53d4963b255fffef9ad5e77.shtml', '贺兰县太阳城中学建设项目室外配套工程二标段（二次）招标公告', '工程建设', '宁夏公共资源交易服务平台', '招标/资审公告', '建筑装饰和其他建筑业', '2017-10-17', '2017-10-17 23:50:44', null);
INSERT INTO `crawl_content` VALUES ('70', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0101/201710/17/006268797210c32346d6a3250e82c6fb6cf9.shtml', '武威市消防支队武威工业园区中队综合楼及附属设施项目招标公告', '工程建设', '武威市公共资源交易电子交易系统', '招标/资审公告', '', '2017-10-17', '2017-10-17 23:50:44', null);
INSERT INTO `crawl_content` VALUES ('71', '540000', null, 'http://www.ggzy.gov.cn/information/html/a/540000/0105/201707/05/005428670fca98d04f62a7d92ab17c75cf8f.shtml', '比如县疾控中心建设项目招标文件', '工程建设', '西藏自治区招标投标网', '招标/资审文件澄清', '房屋建筑业', '2017-10-17', '2017-10-17 23:50:44', null);
INSERT INTO `crawl_content` VALUES ('72', '320000', null, 'http://www.ggzy.gov.cn/information/html/a/320000/0104/201710/17/0032bc482844148745c287f6014c12057deb.shtml', '格力大松（宿迁）生活电器有限公司年产670万台生活电器建设项目生活区一期', '工程建设', '', '交易结果公示', '房屋建筑业', '2017-10-17', '2017-10-17 23:50:44', null);
INSERT INTO `crawl_content` VALUES ('73', '320000', null, 'http://www.ggzy.gov.cn/information/html/a/320000/0104/201710/17/0032537bda1cc6aa41dc82bb2872668e1d25.shtml', '建湖县上冈镇草堰口社区农村康居集中居住点建设工程中标结果公告', '工程建设', '盐城市建设工程网上招投标系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:50:44', null);
INSERT INTO `crawl_content` VALUES ('74', '450000', null, 'http://www.ggzy.gov.cn/information/html/a/450000/0104/201710/17/004552e7b6430db74a7eb1f3977dab2002d4.shtml', '天峨县旅游基础设施一期工程－中心广场（绿化、停车场、步道）工程（重）中标公告', '工程建设', '河池市公共资源交易中心', '交易结果公示', '', '2017-10-17', '2017-10-17 23:50:44', null);
INSERT INTO `crawl_content` VALUES ('75', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0101/201710/17/0034ba52719070bf4f7798c2735cc78720d0.shtml', '安庆市2017年园林绿化工程项目二包施工阶段监理（二次）招标公告', '工程建设', '安庆市公共资源交易平台电子服务系统', '招标/资审公告', '生态保护和环境治理业', '2017-10-17', '2017-10-17 23:50:44', null);
INSERT INTO `crawl_content` VALUES ('76', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0101/201710/17/0034a57d69fd9b6247d2be6d4af6d3ea425b.shtml', '肥西县交通运输局“三基三化”站房改造(2017FXGZ1109)', '工程建设', '合肥市公共资源交易平台电子服务系统', '招标/资审公告', '房屋建筑业', '2017-10-17', '2017-10-17 23:50:44', null);
INSERT INTO `crawl_content` VALUES ('77', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0101/201710/17/0034455ce830d7aa4db4a3cd6d584be3842a.shtml', '重庆路（花园大道-锦绣大道）标志标线工程(2017GFCZ3072)', '工程建设', '合肥市公共资源交易平台电子服务系统', '招标/资审公告', '房屋建筑业', '2017-10-17', '2017-10-17 23:50:44', null);
INSERT INTO `crawl_content` VALUES ('78', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0101/201710/17/0062d8c2cbea9bab4853b260e9fedf8560da.shtml', '甘肃省白银公路管理局G109线三滩黄河大桥、S207线靖远黄河大桥健康监测系统工程招标公告', '工程建设', '白银市公共资源交易电子交易系统', '招标/资审公告', '', '2017-10-17', '2017-10-17 23:51:00', null);
INSERT INTO `crawl_content` VALUES ('79', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0104/201710/17/0062eb894d8a5a5a4ed79bc18dea283a1831.shtml', '渭源县祁家庙乡自然村硬化道路建设项目二合同段中标候选人公示', '工程建设', '定西市公共资源交易电子交易系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:51:00', null);
INSERT INTO `crawl_content` VALUES ('80', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0104/201710/17/006260334de3fae04ebc9b2f5017e397bfb6.shtml', '甘肃路桥建设集团养护科技有限责任公司兰州新区产业园建设项目监理中标公示', '工程建设', '甘肃省公共资源交易电子交易系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:51:00', null);
INSERT INTO `crawl_content` VALUES ('81', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0104/201710/17/0062b6e28c81dd494087ad67ffa95b798a10.shtml', '公安边防部队应急物资储备库暨甘肃总队训练基地建设项目监理中标公示', '工程建设', '甘肃省公共资源交易电子交易系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:51:00', null);
INSERT INTO `crawl_content` VALUES ('82', '130000', null, 'http://www.ggzy.gov.cn/information/html/a/130000/0101/201710/17/0013ff2ff52509fd41ff989775d1a7095a75.shtml', '文安县医疗废物无害化集中处置项目一期工程', '工程建设', '廊坊市公共资源交易中心', '招标/资审公告', '房屋建筑业', '2017-10-17', '2017-10-17 23:51:00', null);
INSERT INTO `crawl_content` VALUES ('83', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0104/201710/17/0062722db6c605c346feb77b6421413b0a40.shtml', '2017年静宁县贫困片带生态修复静庄公路沿线及李店王沟造林绿化项目', '工程建设', '平凉市公共资源交易电子交易系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:51:00', null);
INSERT INTO `crawl_content` VALUES ('84', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0101/201710/17/00624cdc17d3f1784438b9ac5e4728025a4d.shtml', '兰州监狱先行修建甘肃省高度戒备监狱最外侧金属隔离网项目公告', '工程建设', '甘肃省公共资源交易电子交易系统', '招标/资审公告', '', '2017-10-17', '2017-10-17 23:51:00', null);
INSERT INTO `crawl_content` VALUES ('85', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/0034dfcac003cf694505837851a30042d348.shtml', '五河县2017年城关镇农村道路畅通工程30户泥水路（崇南村贫困村一般债券项目）施工', '工程建设', '蚌埠市公共资源交易平台电子服务系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:51:00', null);
INSERT INTO `crawl_content` VALUES ('86', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/0034903675752dfd438f9e2eea7545b3291a.shtml', '徽州大剧院整体提升改造工程施工监理招标', '工程建设', '黄山市公共资源交易平台电子服务系统', '交易结果公示', '建筑装饰和其他建筑业', '2017-10-17', '2017-10-17 23:51:00', null);
INSERT INTO `crawl_content` VALUES ('87', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/003467ff41f67ed643a5b0cea0e3c6a4af41.shtml', '郎溪县凌笪乡国家农业综合开发2017年高标准农田建设项目监理', '工程建设', '宣城市公共资源交易平台电子服务系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:51:00', null);
INSERT INTO `crawl_content` VALUES ('88', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/003453eb5762dbcf4dc0a2eeb3c23a55f3a8.shtml', '五河县2017年小溪镇农村道路畅通工程30户泥水路（蒋庄村贫困村一般债券项目）施工', '工程建设', '蚌埠市公共资源交易平台电子服务系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:51:00', null);
INSERT INTO `crawl_content` VALUES ('89', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/00343cbd0096ba034ed3a5f1df74741a62d2.shtml', '郎溪县国家农业综合开发姚村乡2017年小流域治理项目监理', '工程建设', '宣城市公共资源交易平台电子服务系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:51:00', null);
INSERT INTO `crawl_content` VALUES ('90', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/003435e326dd15d148fb8a88690700a41189.shtml', '利辛县孙庙乡和谐村扶贫道路施工', '工程建设', '亳州市公共资源交易平台电子服务系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:51:00', null);
INSERT INTO `crawl_content` VALUES ('91', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/0034cb56060f9ab84100a68a3ceab56089ba.shtml', '安徽省大圹圩农场2017年农技推广补助项目公示', '工程建设', '合肥市公共资源交易平台电子服务系统', '交易结果公示', '农业', '2017-10-17', '2017-10-17 23:51:00', null);
INSERT INTO `crawl_content` VALUES ('92', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/0034aa15cc5d18704b4e87342e600a4b78d3.shtml', '桃花工业园辖区内排水设施排查、检测及测绘公示', '工程建设', '合肥市公共资源交易平台电子服务系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:51:00', null);
INSERT INTO `crawl_content` VALUES ('93', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/0034a89488c848ea49f99eeb2040d7cb8c99.shtml', '临泉县殡仪馆建设项目勘察设计中标结果公告', '工程建设', '阜阳市公共资源交易平台电子服务系统', '交易结果公示', '房屋建筑业', '2017-10-17', '2017-10-17 23:51:00', null);
INSERT INTO `crawl_content` VALUES ('94', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/003433bd9e1538944607bc51c93c7de004ba.shtml', '临泉县沈苑新城安置区（三期）室外附属工程中标结果公告', '工程建设', '阜阳市公共资源交易平台电子服务系统', '交易结果公示', '建筑装饰和其他建筑业', '2017-10-17', '2017-10-17 23:51:00', null);
INSERT INTO `crawl_content` VALUES ('95', '340000', null, 'http://www.ggzy.gov.cn/information/html/a/340000/0104/201710/17/00341c1b8939a52d4c2bb633551ced92328c.shtml', '临泉县张新镇乡镇政府驻地建成区整治项目中标结果公告', '工程建设', '阜阳市公共资源交易平台电子服务系统', '交易结果公示', '建筑装饰和其他建筑业', '2017-10-17', '2017-10-17 23:51:00', null);
INSERT INTO `crawl_content` VALUES ('96', '530000', null, 'http://www.ggzy.gov.cn/information/html/a/530000/0104/201710/17/005367238a06305443f0994725f63d7b9ae9.shtml', '凤庆县鲁史古镇中心停车场建设项目中标公告', '工程建设', '临沧市公共资源交易中心', '交易结果公示', '建筑装饰和其他建筑业', '2017-10-17', '2017-10-17 23:51:12', null);
INSERT INTO `crawl_content` VALUES ('97', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0104/201710/17/00628e569e1449c047e696729792afa95072.shtml', '渭源县祁家庙乡自然村硬化道路建设项目一合同段中标候选人公示', '工程建设', '定西市公共资源交易电子交易系统', '交易结果公示', '', '2017-10-17', '2017-10-17 23:51:12', null);
INSERT INTO `crawl_content` VALUES ('98', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0101/201710/17/006224f8eb7f84e2458f91c4faf5fc1f7cc7.shtml', '天水市特殊教育学校培智学生综合住宿楼建设项目招标公告', '工程建设', '天水市公共资源交易电子交易系统', '招标/资审公告', '', '2017-10-17', '2017-10-17 23:51:12', null);
INSERT INTO `crawl_content` VALUES ('99', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0105/201710/17/0062085000a7130c4a2a9ad9e72ceb78d4a9.shtml', '天水市特殊教育学校培智学生综合住宿楼建设项目-E6205000608003668001001Z01-招标文件', '工程建设', '天水市公共资源交易电子交易系统', '招标/资审文件澄清', '', '2017-10-17', '2017-10-17 23:51:12', null);
INSERT INTO `crawl_content` VALUES ('100', '640000', null, 'http://www.ggzy.gov.cn/information/html/a/640000/0101/201710/17/0064c9d9df9ea7d541c3bef2e2e627a5820c.shtml', '六盘山长征景区杨家店游客服务中心工程建设项目一标段（设计）', '工程建设', '宁夏公共资源交易服务平台', '招标/资审公告', '房屋建筑业', '2017-10-17', '2017-10-17 23:51:12', null);
INSERT INTO `crawl_content` VALUES ('101', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0105/201710/17/0062e48a087597fb436699c4dc4b69c3b6a2.shtml', '天水市第一中学麦积校区综合教学楼建设项目设计招标-E6205000608003657001001Z01-招标文件', '工程建设', '天水市公共资源交易电子交易系统', '招标/资审文件澄清', '', '2017-10-17', '2017-10-17 23:51:12', null);
INSERT INTO `crawl_content` VALUES ('102', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0101/201710/17/0062cf56bb99285f4c3995b7b22edba812bf.shtml', '天水市第一中学麦积校区综合教学楼建设项目设计招标招标公告', '工程建设', '天水市公共资源交易电子交易系统', '招标/资审公告', '', '2017-10-17', '2017-10-17 23:51:12', null);
INSERT INTO `crawl_content` VALUES ('103', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0101/201710/17/00628c4b5c4004e44c6b82fb11712ba4578f.shtml', '下双镇沙河日光温室示范园区建设项目招标公告', '工程建设', '武威市公共资源交易电子交易系统', '招标/资审公告', '', '2017-10-17', '2017-10-17 23:51:12', null);
INSERT INTO `crawl_content` VALUES ('104', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0105/201710/17/006210bf504ad45145c1b3dabc6e29620a55.shtml', '下双镇沙河日光温室示范园区建设项目-E6206000606007957001001Z01-招标文件', '工程建设', '武威市公共资源交易电子交易系统', '招标/资审文件澄清', '', '2017-10-17', '2017-10-17 23:51:12', null);
INSERT INTO `crawl_content` VALUES ('105', '420000', null, 'http://www.ggzy.gov.cn/information/html/a/420000/0104/201710/17/0042634fe86aa6874462aef98b2c91ec2a36.shtml', '秭归县文教片区污水管网雨污分流改造工程中标候选人公示', '工程建设', '宜昌市公共资源交易中心', '交易结果公示', '建筑装饰和其他建筑业', '2017-10-17', '2017-10-17 23:51:12', null);
INSERT INTO `crawl_content` VALUES ('106', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0105/201710/17/0062a26db8f6cd2c4d2d9fec0cddc550d83e.shtml', '会宁县康家河综合治理工程项目-002-招标文件', '工程建设', '白银市公共资源交易电子交易系统', '招标/资审文件澄清', '', '2017-10-17', '2017-10-17 23:51:12', null);
INSERT INTO `crawl_content` VALUES ('107', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0101/201710/17/00629dba6eae30cd40398e459037fe3388a3.shtml', '会宁县康家河综合治理工程项目招标公告', '工程建设', '白银市公共资源交易电子交易系统', '招标/资审公告', '', '2017-10-17', '2017-10-17 23:51:12', null);
INSERT INTO `crawl_content` VALUES ('108', '620000', null, 'http://www.ggzy.gov.cn/information/html/a/620000/0105/201710/17/0062196d85f46eb44106bbd8f1406eabe2f5.shtml', '会宁县康家河综合治理工程项目-001-招标文件', '工程建设', '白银市公共资源交易电子交易系统', '招标/资审文件澄清', '', '2017-10-17', '2017-10-17 23:51:12', null);
INSERT INTO `crawl_content` VALUES ('109', '320000', null, 'http://www.ggzy.gov.cn/information/html/a/320000/0102/201710/17/0032c7b6b4a76131445e95c866c1a50daa85.shtml', '盱眙经济开发区华山路污水提升泵站80KVA变压器工程开标记录', '工程建设', '淮安建设工程网上招投标系统', '开标记录', '电力、热力生产和供应业', '2017-10-17', '2017-10-17 23:51:12', null);
INSERT INTO `crawl_content` VALUES ('110', '320000', null, 'http://www.ggzy.gov.cn/information/html/a/320000/0104/201710/17/0032a1962c8899c7494a98fc20b4ed96f567.shtml', '盱眙经济开发区华山路污水提升泵站80KVA变压器工程中标候选人公示', '工程建设', '淮安建设工程网上招投标系统', '交易结果公示', '电力、热力生产和供应业', '2017-10-17', '2017-10-17 23:51:12', null);
INSERT INTO `crawl_content` VALUES ('111', '370000', null, 'http://www.ggzy.gov.cn/information/html/a/370000/0105/201710/17/00378e28290680ba4e87a8b2ce34761c596d.shtml', '聊城市不动产登记信息管理基础平台建设项目（包五', '工程建设', '聊城市公共资源交易系统', '招标/资审文件澄清', '房屋建筑业', '2017-10-17', '2017-10-17 23:51:12', null);
INSERT INTO `crawl_content` VALUES ('112', '450000', null, 'http://www.ggzy.gov.cn/information/html/a/450000/0101/201710/17/0045f732200f18ca45a5b32a85ad7eebacaa.shtml', '中经国际招标集团有限公司关于贵港市港北区大圩镇人民政府的贵港市港北区大圩镇民乐村耕地提质改造（旱改水）项目（项目编号：CEITCL-GX-CZGC-170851）施工招标公告', '工程建设', '贵港市公共资源交易中心', '招标/资审公告', '', '2017-10-17', '2017-10-17 23:51:12', null);
INSERT INTO `crawl_content` VALUES ('113', '370000', null, 'http://www.ggzy.gov.cn/information/html/a/370000/0105/201710/17/0037e04d8f5499cc4b2b9ddca1557f79d423.shtml', '东昌府区海绵城市市政道路建设工程PPP项目（东', '工程建设', '聊城市公共资源交易系统', '招标/资审文件澄清', '房屋建筑业', '2017-10-17', '2017-10-17 23:51:12', null);

-- ----------------------------
-- Table structure for crawl_post_config
-- ----------------------------
DROP TABLE IF EXISTS `crawl_post_config`;
CREATE TABLE `crawl_post_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `url_id` int(11) NOT NULL COMMENT '爬取网站id',
  `post_attr` varchar(40) NOT NULL COMMENT '模拟提交字段',
  `post_value` varchar(100) NOT NULL COMMENT '模拟提交值',
  `post_name` varchar(100) NOT NULL COMMENT '中文含义',
  `changeflag` char(1) DEFAULT NULL COMMENT '值是否可变化 0不变1变化2变化是有前提条件的',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='模拟提交表单内容';

-- ----------------------------
-- Records of crawl_post_config
-- ----------------------------
INSERT INTO `crawl_post_config` VALUES ('1', '1', 'TIMEBEGIN', '2017-10-12', '发布开始时间  06区间段才起作用', '2');
INSERT INTO `crawl_post_config` VALUES ('2', '1', 'TIMEEND', '2017-10-14', '发布结束时间  06区间段才起作用', '2');
INSERT INTO `crawl_post_config` VALUES ('3', '1', 'DEAL_TIME', '01', '01当天 02近三天 03近十天 04近一月 05近三月 06区间段  只要01即可，在手工处理N天数据时可以用到06,这时需要填上面两个字段', '1');
INSERT INTO `crawl_post_config` VALUES ('4', '1', 'DEAL_CLASSIFY', '00', '业务类型：00不限 01工程建设 02政府采购 03土地使用权 04矿业权 05国有产权 90其他', '0');
INSERT INTO `crawl_post_config` VALUES ('5', '1', 'DEAL_STAGE', '0000', '信息类型 业务类型编码00不限  0101招标/资审公告 0102开标记录 0104交易结果公示 0105招标/资审文件澄清 0106资格预审结果', '0');
INSERT INTO `crawl_post_config` VALUES ('6', '1', 'DEAL_PROVINCE', '0', '省份 0不限', '0');
INSERT INTO `crawl_post_config` VALUES ('7', '1', 'DEAL_CITY', '0', '地市 0不限', '0');
INSERT INTO `crawl_post_config` VALUES ('8', '1', 'DEAL_PLATFORM', '0', '来源平台 0不限', '0');
INSERT INTO `crawl_post_config` VALUES ('9', '1', 'DEAL_TRADE', '0', '行业 0不限', '0');
INSERT INTO `crawl_post_config` VALUES ('10', '1', 'isShowAll', '0', '#是否全部显示 默认0', '0');
INSERT INTO `crawl_post_config` VALUES ('11', '1', 'PAGENUMBER', '1', '显示第N页 默认第1页  多页时可以变更该参数', '1');

-- ----------------------------
-- Table structure for crawl_url
-- ----------------------------
DROP TABLE IF EXISTS `crawl_url`;
CREATE TABLE `crawl_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL COMMENT '网站URL',
  `url_name` varchar(100) NOT NULL COMMENT '网站名称',
  `orderno` int(11) NOT NULL COMMENT '排序码',
  `useflag` char(1) NOT NULL COMMENT '是否有效1是0否',
  `reg` varchar(200) DEFAULT NULL COMMENT '获取内容正则表达式',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_crawlurl` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='爬取目标网站';

-- ----------------------------
-- Records of crawl_url
-- ----------------------------
INSERT INTO `crawl_url` VALUES ('1', 'http://www.ggzy.gov.cn', '全国公共资源交易平台', '1', '1', 'r\'<a href=\"(http://deal.ggzy.gov.cn/ds/deal/dealList.jsp.*?HEADER_DEAL_TYPE=.*?)\">(.*?)</a>\'');

-- ----------------------------
-- Table structure for crawl_url_item
-- ----------------------------
DROP TABLE IF EXISTS `crawl_url_item`;
CREATE TABLE `crawl_url_item` (
  `data_code` varchar(10) NOT NULL COMMENT '数据类型  01工程建设 02政府采购 03土地使用权 04矿业权 05国有产权 06其他',
  `data_name` varchar(30) NOT NULL COMMENT '类型名称',
  `link_url` varchar(200) DEFAULT NULL COMMENT '链接URL地址',
  `url_id` varchar(100) DEFAULT NULL COMMENT '网站URL地址',
  PRIMARY KEY (`data_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='爬取各类型数据的url配置';

-- ----------------------------
-- Records of crawl_url_item
-- ----------------------------
INSERT INTO `crawl_url_item` VALUES ('01', '工程建设', 'http://deal.ggzy.gov.cn/ds/deal/dealList.jsp?HEADER_DEAL_TYPE=01', '1');
INSERT INTO `crawl_url_item` VALUES ('02', '政府采购', 'http://deal.ggzy.gov.cn/ds/deal/dealList.jsp?HEADER_DEAL_TYPE=02', '1');
INSERT INTO `crawl_url_item` VALUES ('03', '土地使用权', 'http://deal.ggzy.gov.cn/ds/deal/dealList.jsp?HEADER_DEAL_TYPE=03', '1');
INSERT INTO `crawl_url_item` VALUES ('04', '矿业权', 'http://deal.ggzy.gov.cn/ds/deal/dealList.jsp?HEADER_DEAL_TYPE=04', '1');
INSERT INTO `crawl_url_item` VALUES ('05', '国有产权', 'http://deal.ggzy.gov.cn/ds/deal/dealList.jsp?HEADER_DEAL_TYPE=05', '1');
INSERT INTO `crawl_url_item` VALUES ('90', '其他', 'http://deal.ggzy.gov.cn/ds/deal/dealList.jsp?HEADER_DEAL_TYPE=90', '1');

-- ----------------------------
-- Table structure for parm_city
-- ----------------------------
DROP TABLE IF EXISTS `parm_city`;
CREATE TABLE `parm_city` (
  `city_code` varchar(10) NOT NULL COMMENT '地市编码',
  `city_name` varchar(30) NOT NULL COMMENT '地市名称',
  `province_code` varchar(10) NOT NULL COMMENT '省份编码',
  PRIMARY KEY (`city_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数-地市';

-- ----------------------------
-- Records of parm_city
-- ----------------------------
INSERT INTO `parm_city` VALUES ('110101', '东城区', '110000');
INSERT INTO `parm_city` VALUES ('110102', '西城区', '110000');
INSERT INTO `parm_city` VALUES ('110105', '朝阳区', '110000');
INSERT INTO `parm_city` VALUES ('110106', '丰台区', '110000');
INSERT INTO `parm_city` VALUES ('110107', '石景山区', '110000');
INSERT INTO `parm_city` VALUES ('110108', '海淀区', '110000');
INSERT INTO `parm_city` VALUES ('110109', '门头沟区', '110000');
INSERT INTO `parm_city` VALUES ('110111', '房山区', '110000');
INSERT INTO `parm_city` VALUES ('110112', '通州区', '110000');
INSERT INTO `parm_city` VALUES ('110113', '顺义区', '110000');
INSERT INTO `parm_city` VALUES ('110114', '昌平区', '110000');
INSERT INTO `parm_city` VALUES ('110115', '大兴区', '110000');
INSERT INTO `parm_city` VALUES ('110116', '怀柔区', '110000');
INSERT INTO `parm_city` VALUES ('110117', '平谷区', '110000');
INSERT INTO `parm_city` VALUES ('110228', '密云县', '110000');
INSERT INTO `parm_city` VALUES ('110229', '延庆县', '110000');
INSERT INTO `parm_city` VALUES ('120101', '和平区', '120000');
INSERT INTO `parm_city` VALUES ('120102', '河东区', '120000');
INSERT INTO `parm_city` VALUES ('120103', '河西区', '120000');
INSERT INTO `parm_city` VALUES ('120104', '南开区', '120000');
INSERT INTO `parm_city` VALUES ('120105', '河北区', '120000');
INSERT INTO `parm_city` VALUES ('120106', '红桥区', '120000');
INSERT INTO `parm_city` VALUES ('120110', '东丽区', '120000');
INSERT INTO `parm_city` VALUES ('120111', '西青区', '120000');
INSERT INTO `parm_city` VALUES ('120112', '津南区', '120000');
INSERT INTO `parm_city` VALUES ('120113', '北辰区', '120000');
INSERT INTO `parm_city` VALUES ('120114', '武清区', '120000');
INSERT INTO `parm_city` VALUES ('120115', '宝坻区', '120000');
INSERT INTO `parm_city` VALUES ('120116', '滨海新区', '120000');
INSERT INTO `parm_city` VALUES ('120221', '宁河县', '120000');
INSERT INTO `parm_city` VALUES ('120223', '静海县', '120000');
INSERT INTO `parm_city` VALUES ('120225', '蓟县', '120000');
INSERT INTO `parm_city` VALUES ('130100', '石家庄市', '130000');
INSERT INTO `parm_city` VALUES ('130200', '唐山市', '130000');
INSERT INTO `parm_city` VALUES ('130300', '秦皇岛市', '130000');
INSERT INTO `parm_city` VALUES ('130400', '邯郸市', '130000');
INSERT INTO `parm_city` VALUES ('130500', '邢台市', '130000');
INSERT INTO `parm_city` VALUES ('130600', '保定市', '130000');
INSERT INTO `parm_city` VALUES ('130700', '张家口市', '130000');
INSERT INTO `parm_city` VALUES ('130800', '承德市', '130000');
INSERT INTO `parm_city` VALUES ('130900', '沧州市', '130000');
INSERT INTO `parm_city` VALUES ('131000', '廊坊市', '130000');
INSERT INTO `parm_city` VALUES ('131100', '衡水市', '130000');
INSERT INTO `parm_city` VALUES ('140100', '太原市', '140000');
INSERT INTO `parm_city` VALUES ('140200', '大同市', '140000');
INSERT INTO `parm_city` VALUES ('140300', '阳泉市', '140000');
INSERT INTO `parm_city` VALUES ('140400', '长治市', '140000');
INSERT INTO `parm_city` VALUES ('140500', '晋城市', '140000');
INSERT INTO `parm_city` VALUES ('140600', '朔州市', '140000');
INSERT INTO `parm_city` VALUES ('140700', '晋中市', '140000');
INSERT INTO `parm_city` VALUES ('140800', '运城市', '140000');
INSERT INTO `parm_city` VALUES ('140900', '忻州市', '140000');
INSERT INTO `parm_city` VALUES ('141000', '临汾市', '140000');
INSERT INTO `parm_city` VALUES ('141100', '吕梁市', '140000');
INSERT INTO `parm_city` VALUES ('150100', '呼和浩特市', '150000');
INSERT INTO `parm_city` VALUES ('150200', '包头市', '150000');
INSERT INTO `parm_city` VALUES ('150300', '乌海市', '150000');
INSERT INTO `parm_city` VALUES ('150400', '赤峰市', '150000');
INSERT INTO `parm_city` VALUES ('150500', '通辽市', '150000');
INSERT INTO `parm_city` VALUES ('150600', '鄂尔多斯市', '150000');
INSERT INTO `parm_city` VALUES ('150700', '呼伦贝尔市', '150000');
INSERT INTO `parm_city` VALUES ('150800', '巴彦淖尔市', '150000');
INSERT INTO `parm_city` VALUES ('150900', '乌兰察布市', '150000');
INSERT INTO `parm_city` VALUES ('152200', '兴安盟', '150000');
INSERT INTO `parm_city` VALUES ('152500', '锡林郭勒盟', '150000');
INSERT INTO `parm_city` VALUES ('152900', '阿拉善盟', '150000');
INSERT INTO `parm_city` VALUES ('210100', '沈阳市', '210000');
INSERT INTO `parm_city` VALUES ('210200', '大连市', '210000');
INSERT INTO `parm_city` VALUES ('210300', '鞍山市', '210000');
INSERT INTO `parm_city` VALUES ('210400', '抚顺市', '210000');
INSERT INTO `parm_city` VALUES ('210500', '本溪市', '210000');
INSERT INTO `parm_city` VALUES ('210600', '丹东市', '210000');
INSERT INTO `parm_city` VALUES ('210700', '锦州市', '210000');
INSERT INTO `parm_city` VALUES ('210800', '营口市', '210000');
INSERT INTO `parm_city` VALUES ('210900', '阜新市', '210000');
INSERT INTO `parm_city` VALUES ('211000', '辽阳市', '210000');
INSERT INTO `parm_city` VALUES ('211100', '盘锦市', '210000');
INSERT INTO `parm_city` VALUES ('211200', '铁岭市', '210000');
INSERT INTO `parm_city` VALUES ('211300', '朝阳市', '210000');
INSERT INTO `parm_city` VALUES ('211400', '葫芦岛市', '210000');
INSERT INTO `parm_city` VALUES ('220100', '长春市', '220000');
INSERT INTO `parm_city` VALUES ('220200', '吉林市', '220000');
INSERT INTO `parm_city` VALUES ('220300', '四平市', '220000');
INSERT INTO `parm_city` VALUES ('220400', '辽源市', '220000');
INSERT INTO `parm_city` VALUES ('220500', '通化市', '220000');
INSERT INTO `parm_city` VALUES ('220600', '白山市', '220000');
INSERT INTO `parm_city` VALUES ('220700', '松原市', '220000');
INSERT INTO `parm_city` VALUES ('220800', '白城市', '220000');
INSERT INTO `parm_city` VALUES ('222400', '延边朝鲜族自治州', '220000');
INSERT INTO `parm_city` VALUES ('230100', '哈尔滨市', '230000');
INSERT INTO `parm_city` VALUES ('230200', '齐齐哈尔市', '230000');
INSERT INTO `parm_city` VALUES ('230300', '鸡西市', '230000');
INSERT INTO `parm_city` VALUES ('230400', '鹤岗市', '230000');
INSERT INTO `parm_city` VALUES ('230500', '双鸭山市', '230000');
INSERT INTO `parm_city` VALUES ('230600', '大庆市', '230000');
INSERT INTO `parm_city` VALUES ('230700', '伊春市', '230000');
INSERT INTO `parm_city` VALUES ('230800', '佳木斯市', '230000');
INSERT INTO `parm_city` VALUES ('230900', '七台河市', '230000');
INSERT INTO `parm_city` VALUES ('231000', '牡丹江市', '230000');
INSERT INTO `parm_city` VALUES ('231100', '黑河市', '230000');
INSERT INTO `parm_city` VALUES ('231200', '绥化市', '230000');
INSERT INTO `parm_city` VALUES ('232700', '大兴安岭地区', '230000');
INSERT INTO `parm_city` VALUES ('310101', '黄浦区', '310000');
INSERT INTO `parm_city` VALUES ('310104', '徐汇区', '310000');
INSERT INTO `parm_city` VALUES ('310105', '长宁区', '310000');
INSERT INTO `parm_city` VALUES ('310106', '静安区', '310000');
INSERT INTO `parm_city` VALUES ('310107', '普陀区', '310000');
INSERT INTO `parm_city` VALUES ('310108', '闸北区', '310000');
INSERT INTO `parm_city` VALUES ('310109', '虹口区', '310000');
INSERT INTO `parm_city` VALUES ('310110', '杨浦区', '310000');
INSERT INTO `parm_city` VALUES ('310112', '闵行区', '310000');
INSERT INTO `parm_city` VALUES ('310113', '宝山区', '310000');
INSERT INTO `parm_city` VALUES ('310114', '嘉定区', '310000');
INSERT INTO `parm_city` VALUES ('310115', '浦东新区', '310000');
INSERT INTO `parm_city` VALUES ('310116', '金山区', '310000');
INSERT INTO `parm_city` VALUES ('310117', '松江区', '310000');
INSERT INTO `parm_city` VALUES ('310118', '青浦区', '310000');
INSERT INTO `parm_city` VALUES ('310120', '奉贤区', '310000');
INSERT INTO `parm_city` VALUES ('310230', '崇明县', '310000');
INSERT INTO `parm_city` VALUES ('320100', '南京市', '320000');
INSERT INTO `parm_city` VALUES ('320200', '无锡市', '320000');
INSERT INTO `parm_city` VALUES ('320300', '徐州市', '320000');
INSERT INTO `parm_city` VALUES ('320400', '常州市', '320000');
INSERT INTO `parm_city` VALUES ('320500', '苏州市', '320000');
INSERT INTO `parm_city` VALUES ('320600', '南通市', '320000');
INSERT INTO `parm_city` VALUES ('320700', '连云港市', '320000');
INSERT INTO `parm_city` VALUES ('320800', '淮安市', '320000');
INSERT INTO `parm_city` VALUES ('320900', '盐城市', '320000');
INSERT INTO `parm_city` VALUES ('321000', '扬州市', '320000');
INSERT INTO `parm_city` VALUES ('321100', '镇江市', '320000');
INSERT INTO `parm_city` VALUES ('321200', '泰州市', '320000');
INSERT INTO `parm_city` VALUES ('321300', '宿迁市', '320000');
INSERT INTO `parm_city` VALUES ('330100', '杭州市', '330000');
INSERT INTO `parm_city` VALUES ('330200', '宁波市', '330000');
INSERT INTO `parm_city` VALUES ('330300', '温州市', '330000');
INSERT INTO `parm_city` VALUES ('330400', '嘉兴市', '330000');
INSERT INTO `parm_city` VALUES ('330500', '湖州市', '330000');
INSERT INTO `parm_city` VALUES ('330600', '绍兴市', '330000');
INSERT INTO `parm_city` VALUES ('330700', '金华市', '330000');
INSERT INTO `parm_city` VALUES ('330800', '衢州市', '330000');
INSERT INTO `parm_city` VALUES ('330900', '舟山市', '330000');
INSERT INTO `parm_city` VALUES ('331000', '台州市', '330000');
INSERT INTO `parm_city` VALUES ('331100', '丽水市', '330000');
INSERT INTO `parm_city` VALUES ('340100', '合肥市', '340000');
INSERT INTO `parm_city` VALUES ('340200', '芜湖市', '340000');
INSERT INTO `parm_city` VALUES ('340300', '蚌埠市', '340000');
INSERT INTO `parm_city` VALUES ('340400', '淮南市', '340000');
INSERT INTO `parm_city` VALUES ('340500', '马鞍山市', '340000');
INSERT INTO `parm_city` VALUES ('340600', '淮北市', '340000');
INSERT INTO `parm_city` VALUES ('340700', '铜陵市', '340000');
INSERT INTO `parm_city` VALUES ('340800', '安庆市', '340000');
INSERT INTO `parm_city` VALUES ('341000', '黄山市', '340000');
INSERT INTO `parm_city` VALUES ('341100', '滁州市', '340000');
INSERT INTO `parm_city` VALUES ('341200', '阜阳市', '340000');
INSERT INTO `parm_city` VALUES ('341300', '宿州市', '340000');
INSERT INTO `parm_city` VALUES ('341500', '六安市', '340000');
INSERT INTO `parm_city` VALUES ('341600', '亳州市', '340000');
INSERT INTO `parm_city` VALUES ('341700', '池州市', '340000');
INSERT INTO `parm_city` VALUES ('341800', '宣城市', '340000');
INSERT INTO `parm_city` VALUES ('350100', '福州市', '350000');
INSERT INTO `parm_city` VALUES ('350200', '厦门市', '350000');
INSERT INTO `parm_city` VALUES ('350300', '莆田市', '350000');
INSERT INTO `parm_city` VALUES ('350400', '三明市', '350000');
INSERT INTO `parm_city` VALUES ('350500', '泉州市', '350000');
INSERT INTO `parm_city` VALUES ('350600', '漳州市', '350000');
INSERT INTO `parm_city` VALUES ('350700', '南平市', '350000');
INSERT INTO `parm_city` VALUES ('350800', '龙岩市', '350000');
INSERT INTO `parm_city` VALUES ('350900', '宁德市', '350000');
INSERT INTO `parm_city` VALUES ('360100', '南昌市', '360000');
INSERT INTO `parm_city` VALUES ('360200', '景德镇市', '360000');
INSERT INTO `parm_city` VALUES ('360300', '萍乡市', '360000');
INSERT INTO `parm_city` VALUES ('360400', '九江市', '360000');
INSERT INTO `parm_city` VALUES ('360500', '新余市', '360000');
INSERT INTO `parm_city` VALUES ('360600', '鹰潭市', '360000');
INSERT INTO `parm_city` VALUES ('360700', '赣州市', '360000');
INSERT INTO `parm_city` VALUES ('360800', '吉安市', '360000');
INSERT INTO `parm_city` VALUES ('360900', '宜春市', '360000');
INSERT INTO `parm_city` VALUES ('361000', '抚州市', '360000');
INSERT INTO `parm_city` VALUES ('361100', '上饶市', '360000');
INSERT INTO `parm_city` VALUES ('370100', '济南市', '370000');
INSERT INTO `parm_city` VALUES ('370200', '青岛市', '370000');
INSERT INTO `parm_city` VALUES ('370300', '淄博市', '370000');
INSERT INTO `parm_city` VALUES ('370400', '枣庄市', '370000');
INSERT INTO `parm_city` VALUES ('370500', '东营市', '370000');
INSERT INTO `parm_city` VALUES ('370600', '烟台市', '370000');
INSERT INTO `parm_city` VALUES ('370700', '潍坊市', '370000');
INSERT INTO `parm_city` VALUES ('370800', '济宁市', '370000');
INSERT INTO `parm_city` VALUES ('370900', '泰安市', '370000');
INSERT INTO `parm_city` VALUES ('371000', '威海市', '370000');
INSERT INTO `parm_city` VALUES ('371100', '日照市', '370000');
INSERT INTO `parm_city` VALUES ('371200', '莱芜市', '370000');
INSERT INTO `parm_city` VALUES ('371300', '临沂市', '370000');
INSERT INTO `parm_city` VALUES ('371400', '德州市', '370000');
INSERT INTO `parm_city` VALUES ('371500', '聊城市', '370000');
INSERT INTO `parm_city` VALUES ('371600', '滨州市', '370000');
INSERT INTO `parm_city` VALUES ('371700', '菏泽市', '370000');
INSERT INTO `parm_city` VALUES ('410100', '郑州市', '410000');
INSERT INTO `parm_city` VALUES ('410200', '开封市', '410000');
INSERT INTO `parm_city` VALUES ('410300', '洛阳市', '410000');
INSERT INTO `parm_city` VALUES ('410400', '平顶山市', '410000');
INSERT INTO `parm_city` VALUES ('410500', '安阳市', '410000');
INSERT INTO `parm_city` VALUES ('410600', '鹤壁市', '410000');
INSERT INTO `parm_city` VALUES ('410700', '新乡市', '410000');
INSERT INTO `parm_city` VALUES ('410800', '焦作市', '410000');
INSERT INTO `parm_city` VALUES ('410900', '濮阳市', '410000');
INSERT INTO `parm_city` VALUES ('411000', '许昌市', '410000');
INSERT INTO `parm_city` VALUES ('411100', '漯河市', '410000');
INSERT INTO `parm_city` VALUES ('411200', '三门峡市', '410000');
INSERT INTO `parm_city` VALUES ('411300', '南阳市', '410000');
INSERT INTO `parm_city` VALUES ('411400', '商丘市', '410000');
INSERT INTO `parm_city` VALUES ('411500', '信阳市', '410000');
INSERT INTO `parm_city` VALUES ('411600', '周口市', '410000');
INSERT INTO `parm_city` VALUES ('411700', '驻马店市', '410000');
INSERT INTO `parm_city` VALUES ('419001', '济源市', '410000');
INSERT INTO `parm_city` VALUES ('420100', '武汉市', '420000');
INSERT INTO `parm_city` VALUES ('420200', '黄石市', '420000');
INSERT INTO `parm_city` VALUES ('420300', '十堰市', '420000');
INSERT INTO `parm_city` VALUES ('420500', '宜昌市', '420000');
INSERT INTO `parm_city` VALUES ('420600', '襄阳市', '420000');
INSERT INTO `parm_city` VALUES ('420700', '鄂州市', '420000');
INSERT INTO `parm_city` VALUES ('420800', '荆门市', '420000');
INSERT INTO `parm_city` VALUES ('420900', '孝感市', '420000');
INSERT INTO `parm_city` VALUES ('421000', '荆州市', '420000');
INSERT INTO `parm_city` VALUES ('421100', '黄冈市', '420000');
INSERT INTO `parm_city` VALUES ('421200', '咸宁市', '420000');
INSERT INTO `parm_city` VALUES ('421300', '随州市', '420000');
INSERT INTO `parm_city` VALUES ('422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `parm_city` VALUES ('429004', '仙桃市', '420000');
INSERT INTO `parm_city` VALUES ('429005', '潜江市', '420000');
INSERT INTO `parm_city` VALUES ('429006', '天门市', '420000');
INSERT INTO `parm_city` VALUES ('429021', '神农架林区', '420000');
INSERT INTO `parm_city` VALUES ('430100', '长沙市', '430000');
INSERT INTO `parm_city` VALUES ('430200', '株洲市', '430000');
INSERT INTO `parm_city` VALUES ('430300', '湘潭市', '430000');
INSERT INTO `parm_city` VALUES ('430400', '衡阳市', '430000');
INSERT INTO `parm_city` VALUES ('430500', '邵阳市', '430000');
INSERT INTO `parm_city` VALUES ('430600', '岳阳市', '430000');
INSERT INTO `parm_city` VALUES ('430700', '常德市', '430000');
INSERT INTO `parm_city` VALUES ('430800', '张家界市', '430000');
INSERT INTO `parm_city` VALUES ('430900', '益阳市', '430000');
INSERT INTO `parm_city` VALUES ('431000', '郴州市', '430000');
INSERT INTO `parm_city` VALUES ('431100', '永州市', '430000');
INSERT INTO `parm_city` VALUES ('431200', '怀化市', '430000');
INSERT INTO `parm_city` VALUES ('431300', '娄底市', '430000');
INSERT INTO `parm_city` VALUES ('433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `parm_city` VALUES ('440100', '广州市', '440000');
INSERT INTO `parm_city` VALUES ('440200', '韶关市', '440000');
INSERT INTO `parm_city` VALUES ('440300', '深圳市', '440000');
INSERT INTO `parm_city` VALUES ('440400', '珠海市', '440000');
INSERT INTO `parm_city` VALUES ('440500', '汕头市', '440000');
INSERT INTO `parm_city` VALUES ('440600', '佛山市', '440000');
INSERT INTO `parm_city` VALUES ('440700', '江门市', '440000');
INSERT INTO `parm_city` VALUES ('440800', '湛江市', '440000');
INSERT INTO `parm_city` VALUES ('440900', '茂名市', '440000');
INSERT INTO `parm_city` VALUES ('441200', '肇庆市', '440000');
INSERT INTO `parm_city` VALUES ('441300', '惠州市', '440000');
INSERT INTO `parm_city` VALUES ('441400', '梅州市', '440000');
INSERT INTO `parm_city` VALUES ('441500', '汕尾市', '440000');
INSERT INTO `parm_city` VALUES ('441600', '河源市', '440000');
INSERT INTO `parm_city` VALUES ('441700', '阳江市', '440000');
INSERT INTO `parm_city` VALUES ('441800', '清远市', '440000');
INSERT INTO `parm_city` VALUES ('441900', '东莞市', '440000');
INSERT INTO `parm_city` VALUES ('442000', '中山市', '440000');
INSERT INTO `parm_city` VALUES ('445100', '潮州市', '440000');
INSERT INTO `parm_city` VALUES ('445200', '揭阳市', '440000');
INSERT INTO `parm_city` VALUES ('445300', '云浮市', '440000');
INSERT INTO `parm_city` VALUES ('450100', '南宁市', '450000');
INSERT INTO `parm_city` VALUES ('450200', '柳州市', '450000');
INSERT INTO `parm_city` VALUES ('450300', '桂林市', '450000');
INSERT INTO `parm_city` VALUES ('450400', '梧州市', '450000');
INSERT INTO `parm_city` VALUES ('450500', '北海市', '450000');
INSERT INTO `parm_city` VALUES ('450600', '防城港市', '450000');
INSERT INTO `parm_city` VALUES ('450700', '钦州市', '450000');
INSERT INTO `parm_city` VALUES ('450800', '贵港市', '450000');
INSERT INTO `parm_city` VALUES ('450900', '玉林市', '450000');
INSERT INTO `parm_city` VALUES ('451000', '百色市', '450000');
INSERT INTO `parm_city` VALUES ('451100', '贺州市', '450000');
INSERT INTO `parm_city` VALUES ('451200', '河池市', '450000');
INSERT INTO `parm_city` VALUES ('451300', '来宾市', '450000');
INSERT INTO `parm_city` VALUES ('451400', '崇左市', '450000');
INSERT INTO `parm_city` VALUES ('460100', '海口市', '460000');
INSERT INTO `parm_city` VALUES ('460200', '三亚市', '460000');
INSERT INTO `parm_city` VALUES ('460300', '三沙市', '460000');
INSERT INTO `parm_city` VALUES ('469001', '五指山市', '460000');
INSERT INTO `parm_city` VALUES ('469002', '琼海市', '460000');
INSERT INTO `parm_city` VALUES ('469003', '儋州市', '460000');
INSERT INTO `parm_city` VALUES ('469005', '文昌市', '460000');
INSERT INTO `parm_city` VALUES ('469006', '万宁市', '460000');
INSERT INTO `parm_city` VALUES ('469007', '东方市', '460000');
INSERT INTO `parm_city` VALUES ('469021', '定安县', '460000');
INSERT INTO `parm_city` VALUES ('469022', '屯昌县', '460000');
INSERT INTO `parm_city` VALUES ('469023', '澄迈县', '460000');
INSERT INTO `parm_city` VALUES ('469024', '临高县', '460000');
INSERT INTO `parm_city` VALUES ('469025', '白沙黎族自治县', '460000');
INSERT INTO `parm_city` VALUES ('469026', '昌江黎族自治县', '460000');
INSERT INTO `parm_city` VALUES ('469027', '乐东黎族自治县', '460000');
INSERT INTO `parm_city` VALUES ('469028', '陵水黎族自治县', '460000');
INSERT INTO `parm_city` VALUES ('469029', '保亭黎族苗族自治县', '460000');
INSERT INTO `parm_city` VALUES ('469030', '琼中黎族苗族自治县', '460000');
INSERT INTO `parm_city` VALUES ('510100', '成都市', '510000');
INSERT INTO `parm_city` VALUES ('510300', '自贡市', '510000');
INSERT INTO `parm_city` VALUES ('510400', '攀枝花市', '510000');
INSERT INTO `parm_city` VALUES ('510500', '泸州市', '510000');
INSERT INTO `parm_city` VALUES ('510600', '德阳市', '510000');
INSERT INTO `parm_city` VALUES ('510700', '绵阳市', '510000');
INSERT INTO `parm_city` VALUES ('510800', '广元市', '510000');
INSERT INTO `parm_city` VALUES ('510900', '遂宁市', '510000');
INSERT INTO `parm_city` VALUES ('511000', '内江市', '510000');
INSERT INTO `parm_city` VALUES ('511100', '乐山市', '510000');
INSERT INTO `parm_city` VALUES ('511300', '南充市', '510000');
INSERT INTO `parm_city` VALUES ('511400', '眉山市', '510000');
INSERT INTO `parm_city` VALUES ('511500', '宜宾市', '510000');
INSERT INTO `parm_city` VALUES ('511600', '广安市', '510000');
INSERT INTO `parm_city` VALUES ('511700', '达州市', '510000');
INSERT INTO `parm_city` VALUES ('511800', '雅安市', '510000');
INSERT INTO `parm_city` VALUES ('511900', '巴中市', '510000');
INSERT INTO `parm_city` VALUES ('512000', '资阳市', '510000');
INSERT INTO `parm_city` VALUES ('513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `parm_city` VALUES ('513300', '甘孜藏族自治州', '510000');
INSERT INTO `parm_city` VALUES ('513400', '凉山彝族自治州', '510000');
INSERT INTO `parm_city` VALUES ('520100', '贵阳市', '520000');
INSERT INTO `parm_city` VALUES ('520200', '六盘水市', '520000');
INSERT INTO `parm_city` VALUES ('520300', '遵义市', '520000');
INSERT INTO `parm_city` VALUES ('520400', '安顺市', '520000');
INSERT INTO `parm_city` VALUES ('520500', '毕节市', '520000');
INSERT INTO `parm_city` VALUES ('520600', '铜仁市', '520000');
INSERT INTO `parm_city` VALUES ('522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `parm_city` VALUES ('522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `parm_city` VALUES ('522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `parm_city` VALUES ('530100', '昆明市', '530000');
INSERT INTO `parm_city` VALUES ('530300', '曲靖市', '530000');
INSERT INTO `parm_city` VALUES ('530400', '玉溪市', '530000');
INSERT INTO `parm_city` VALUES ('530500', '保山市', '530000');
INSERT INTO `parm_city` VALUES ('530600', '昭通市', '530000');
INSERT INTO `parm_city` VALUES ('530700', '丽江市', '530000');
INSERT INTO `parm_city` VALUES ('530800', '普洱市', '530000');
INSERT INTO `parm_city` VALUES ('530900', '临沧市', '530000');
INSERT INTO `parm_city` VALUES ('532300', '楚雄彝族自治州', '530000');
INSERT INTO `parm_city` VALUES ('532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `parm_city` VALUES ('532600', '文山壮族苗族自治州', '530000');
INSERT INTO `parm_city` VALUES ('532800', '西双版纳傣族自治州', '530000');
INSERT INTO `parm_city` VALUES ('532900', '大理白族自治州', '530000');
INSERT INTO `parm_city` VALUES ('533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `parm_city` VALUES ('533300', '怒江傈僳族自治州', '530000');
INSERT INTO `parm_city` VALUES ('533400', '迪庆藏族自治州', '530000');
INSERT INTO `parm_city` VALUES ('540100', '拉萨市', '540000');
INSERT INTO `parm_city` VALUES ('542100', '昌都地区', '540000');
INSERT INTO `parm_city` VALUES ('542200', '山南地区', '540000');
INSERT INTO `parm_city` VALUES ('542300', '日喀则地区', '540000');
INSERT INTO `parm_city` VALUES ('542400', '那曲地区', '540000');
INSERT INTO `parm_city` VALUES ('542500', '阿里地区', '540000');
INSERT INTO `parm_city` VALUES ('542600', '林芝地区', '540000');
INSERT INTO `parm_city` VALUES ('610100', '西安市', '610000');
INSERT INTO `parm_city` VALUES ('610200', '铜川市', '610000');
INSERT INTO `parm_city` VALUES ('610300', '宝鸡市', '610000');
INSERT INTO `parm_city` VALUES ('610400', '咸阳市', '610000');
INSERT INTO `parm_city` VALUES ('610500', '渭南市', '610000');
INSERT INTO `parm_city` VALUES ('610600', '延安市', '610000');
INSERT INTO `parm_city` VALUES ('610700', '汉中市', '610000');
INSERT INTO `parm_city` VALUES ('610800', '榆林市', '610000');
INSERT INTO `parm_city` VALUES ('610900', '安康市', '610000');
INSERT INTO `parm_city` VALUES ('611000', '商洛市', '610000');
INSERT INTO `parm_city` VALUES ('620100', '兰州市', '620000');
INSERT INTO `parm_city` VALUES ('620200', '嘉峪关市', '620000');
INSERT INTO `parm_city` VALUES ('620300', '金昌市', '620000');
INSERT INTO `parm_city` VALUES ('620400', '白银市', '620000');
INSERT INTO `parm_city` VALUES ('620500', '天水市', '620000');
INSERT INTO `parm_city` VALUES ('620600', '武威市', '620000');
INSERT INTO `parm_city` VALUES ('620700', '张掖市', '620000');
INSERT INTO `parm_city` VALUES ('620800', '平凉市', '620000');
INSERT INTO `parm_city` VALUES ('620900', '酒泉市', '620000');
INSERT INTO `parm_city` VALUES ('621000', '庆阳市', '620000');
INSERT INTO `parm_city` VALUES ('621100', '定西市', '620000');
INSERT INTO `parm_city` VALUES ('621200', '陇南市', '620000');
INSERT INTO `parm_city` VALUES ('622900', '临夏回族自治州', '620000');
INSERT INTO `parm_city` VALUES ('623000', '甘南藏族自治州', '620000');
INSERT INTO `parm_city` VALUES ('630100', '西宁市', '630000');
INSERT INTO `parm_city` VALUES ('630200', '海东市', '630000');
INSERT INTO `parm_city` VALUES ('632200', '海北藏族自治州', '630000');
INSERT INTO `parm_city` VALUES ('632300', '黄南藏族自治州', '630000');
INSERT INTO `parm_city` VALUES ('632500', '海南藏族自治州', '630000');
INSERT INTO `parm_city` VALUES ('632600', '果洛藏族自治州', '630000');
INSERT INTO `parm_city` VALUES ('632700', '玉树藏族自治州', '630000');
INSERT INTO `parm_city` VALUES ('632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `parm_city` VALUES ('640100', '银川市', '640000');
INSERT INTO `parm_city` VALUES ('640200', '石嘴山市', '640000');
INSERT INTO `parm_city` VALUES ('640300', '吴忠市', '640000');
INSERT INTO `parm_city` VALUES ('640400', '固原市', '640000');
INSERT INTO `parm_city` VALUES ('640500', '中卫市', '640000');
INSERT INTO `parm_city` VALUES ('650100', '乌鲁木齐市', '650000');
INSERT INTO `parm_city` VALUES ('650200', '克拉玛依市', '650000');
INSERT INTO `parm_city` VALUES ('652100', '吐鲁番地区', '650000');
INSERT INTO `parm_city` VALUES ('652200', '哈密地区', '650000');
INSERT INTO `parm_city` VALUES ('652300', '昌吉回族自治州', '650000');
INSERT INTO `parm_city` VALUES ('652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `parm_city` VALUES ('652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `parm_city` VALUES ('652900', '阿克苏地区', '650000');
INSERT INTO `parm_city` VALUES ('653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `parm_city` VALUES ('653100', '喀什地区', '650000');
INSERT INTO `parm_city` VALUES ('653200', '和田地区', '650000');
INSERT INTO `parm_city` VALUES ('654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `parm_city` VALUES ('654200', '塔城地区', '650000');
INSERT INTO `parm_city` VALUES ('654300', '阿勒泰地区', '650000');
INSERT INTO `parm_city` VALUES ('659001', '石河子市', '650000');
INSERT INTO `parm_city` VALUES ('659002', '阿拉尔市', '650000');
INSERT INTO `parm_city` VALUES ('659003', '图木舒克市', '650000');
INSERT INTO `parm_city` VALUES ('659004', '五家渠市', '650000');

-- ----------------------------
-- Table structure for parm_province
-- ----------------------------
DROP TABLE IF EXISTS `parm_province`;
CREATE TABLE `parm_province` (
  `province_code` varchar(10) NOT NULL COMMENT '省份编码',
  `province_name` varchar(20) NOT NULL COMMENT '省份名称',
  PRIMARY KEY (`province_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数-省份';

-- ----------------------------
-- Records of parm_province
-- ----------------------------
INSERT INTO `parm_province` VALUES ('110000', '北京');
INSERT INTO `parm_province` VALUES ('120000', '天津');
INSERT INTO `parm_province` VALUES ('130000', '河北');
INSERT INTO `parm_province` VALUES ('140000', '山西');
INSERT INTO `parm_province` VALUES ('150000', '内蒙古');
INSERT INTO `parm_province` VALUES ('210000', '辽宁');
INSERT INTO `parm_province` VALUES ('220000', '吉林');
INSERT INTO `parm_province` VALUES ('230000', '黑龙江');
INSERT INTO `parm_province` VALUES ('310000', '上海');
INSERT INTO `parm_province` VALUES ('320000', '江苏');
INSERT INTO `parm_province` VALUES ('330000', '浙江');
INSERT INTO `parm_province` VALUES ('340000', '安徽');
INSERT INTO `parm_province` VALUES ('350000', '福建');
INSERT INTO `parm_province` VALUES ('360000', '江西');
INSERT INTO `parm_province` VALUES ('370000', '山东');
INSERT INTO `parm_province` VALUES ('410000', '河南');
INSERT INTO `parm_province` VALUES ('420000', '湖北');
INSERT INTO `parm_province` VALUES ('430000', '湖南');
INSERT INTO `parm_province` VALUES ('440000', '广东');
INSERT INTO `parm_province` VALUES ('450000', '广西');
INSERT INTO `parm_province` VALUES ('460000', '海南');
INSERT INTO `parm_province` VALUES ('500000', '重庆');
INSERT INTO `parm_province` VALUES ('510000', '四川');
INSERT INTO `parm_province` VALUES ('520000', '贵州');
INSERT INTO `parm_province` VALUES ('530000', '云南');
INSERT INTO `parm_province` VALUES ('540000', '西藏');
INSERT INTO `parm_province` VALUES ('610000', '陕西');
INSERT INTO `parm_province` VALUES ('620000', '甘肃');
INSERT INTO `parm_province` VALUES ('630000', '青海');
INSERT INTO `parm_province` VALUES ('640000', '宁夏');
INSERT INTO `parm_province` VALUES ('650000', '新疆');
INSERT INTO `parm_province` VALUES ('660000', '兵团');
