/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : amydb

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2014-06-13 18:59:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `KeyID` varchar(50) NOT NULL DEFAULT '' COMMENT '主键ID',
  `CompanyName` varchar(20) NOT NULL DEFAULT '' COMMENT '公司名称',
  `CompanyIndustry` varchar(100) NOT NULL DEFAULT '' COMMENT '公司行业',
  `CompanyNature` varchar(20) NOT NULL DEFAULT '' COMMENT '公司性质',
  `CompanyScale` varchar(20) NOT NULL DEFAULT '0' COMMENT '公司规模',
  `CompanyLink` varchar(100) NOT NULL DEFAULT '' COMMENT '公司链接',
  `Remark` text NOT NULL COMMENT '备注',
  `IsDelete` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除(0：未删除 / 1：删除)',
  `ModifyTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳(CURRENT_TIMESTAMP)',
  PRIMARY KEY (`KeyID`),
  KEY `IDX_Company_1` (`CompanyName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公司信息表:公司信息表';

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('20140612164330282e702c18f541237', '四川海特高新技术股份有限公司', '航天/航空/计算机软件', '民营公司', '500-1000人', 'http://search.51job.com/list/co,c,2533352,000000,10,1.html', '', '0', '2014-06-12 16:43:30');
INSERT INTO `company` VALUES ('20140612164330282e702c18f828237', '四川竞成环艺空间装饰工程有限公司', '航天/航空/计算机软件', '民营公司', '500-1000人', 'http://search.51job.com/list/co,c,2893318,000000,10,1.html', '', '0', '2014-06-12 16:43:30');
INSERT INTO `company` VALUES ('20140612164331282e702c18f847237', '成都辛为科技有限公司', '计算机软件/电子技术/半导体/集成电路', '民营公司', '少于50人', 'http://search.51job.com/list/co,c,2548402,000000,10,1.html', '', '0', '2014-06-12 16:43:31');
INSERT INTO `company` VALUES ('20140612164332282e702c18f189237', '成都德力斯实业有限公司', '计算机软件/电子技术/半导体/集成电路', '民营公司', '少于50人', 'http://search.51job.com/list/co,c,2031851,000000,10,1.html', '', '0', '2014-06-12 16:43:32');
INSERT INTO `company` VALUES ('20140612164333282e702c18f102237', '四川创视达建筑装饰设计有限公司', '计算机软件/电子技术/半导体/集成电路', '民营公司', '少于50人', 'http://search.51job.com/list/co,c,2531207,000000,10,1.html', '', '0', '2014-06-12 16:43:33');
INSERT INTO `company` VALUES ('20140612164335282e702c18f417237', '四川联行企业管理顾问有限公司', '计算机软件/电子技术/半导体/集成电路', '民营公司', '少于50人', 'http://search.51job.com/list/co,c,2390211,000000,10,1.html', '', '0', '2014-06-12 16:43:35');
INSERT INTO `company` VALUES ('20140612164335282e702c18f779237', '四川省爱恋珠宝有限公司', '计算机软件/电子技术/半导体/集成电路', '民营公司', '少于50人', 'http://search.51job.com/list/co,c,2824189,000000,10,1.html', '', '0', '2014-06-12 16:43:35');
INSERT INTO `company` VALUES ('20140612164336282e702c18f703237', '四川省鑫天溢涂饰工程有限公司', '建筑/建材/工程/金融/投资/证券', '民营公司', '50-150人', 'http://search.51job.com/list/co,c,2698048,000000,10,1.html', '', '0', '2014-06-12 16:43:36');
INSERT INTO `company` VALUES ('20140612164336282e702c18f967237', '成都一路好运网络科技有限公司', '互联网/电子商务/交通/运输/物流', '民营公司', '少于50人', 'http://search.51job.com/list/co,c,3348589,000000,10,1.html', '', '0', '2014-06-12 16:43:36');
INSERT INTO `company` VALUES ('20140612164336282e702c18f98237', '四川莱克投资有限公司', '房地产开发/金融/投资/证券', '民营公司', '150-500人', 'http://search.51job.com/list/co,c,3016428,000000,10,1.html', '', '0', '2014-06-12 16:43:36');
INSERT INTO `company` VALUES ('20140612164337282e702c18f889237', '保利南方（四川）投资开发有限公司', '网络游戏/计算机软件', '民营公司', '少于50人', 'http://search.51job.com/list/co,c,2801466,000000,10,1.html', '', '0', '2014-06-12 16:43:37');
INSERT INTO `company` VALUES ('20140612164338282e702c18f424237', '四川卓越企业管理顾问有限公司', '教育/培训/院校/专业服务(咨询、人力资源、财会)', '民营公司', '少于50人', 'http://search.51job.com/list/co,c,2949564,000000,10,1.html', '', '0', '2014-06-12 16:43:38');
INSERT INTO `company` VALUES ('20140612164338282e702c18f681237', '深圳市易思博软件技术有限公司', '教育/培训/院校/专业服务(咨询、人力资源、财会)', '民营公司', '少于50人', 'http://search.51job.com/list/co,c,2058371,000000,10,1.html', '', '0', '2014-06-12 16:43:38');
INSERT INTO `company` VALUES ('20140612164340282e702c18f55237', '成都鑫瑞发商贸有限公司', '教育/培训/院校/专业服务(咨询、人力资源、财会)', '民营公司', '少于50人', 'http://search.51job.com/list/co,c,2909645,000000,10,1.html', '', '0', '2014-06-12 16:43:40');
INSERT INTO `company` VALUES ('20140612164341282e702c18f719237', '成都卉森新世界实业有限公司', '教育/培训/院校/专业服务(咨询、人力资源、财会)', '民营公司', '少于50人', 'http://search.51job.com/list/co,c,3019597,000000,10,1.html', '', '0', '2014-06-12 16:43:41');
INSERT INTO `company` VALUES ('20140612164342282e702c18f837237', '上海特力洁清洁有限公司', '物业管理/商业中心/计算机软件', '民营公司', '500-1000人', 'http://search.51job.com/list/co,c,3169648,000000,10,1.html', '', '0', '2014-06-12 16:43:42');
INSERT INTO `company` VALUES ('20140612164343282e702c18f695237', '成都正扬博创电子技术有限公司', '物业管理/商业中心/计算机软件', '民营公司', '500-1000人', 'http://search.51job.com/list/co,c,2935252,000000,10,1.html', '', '0', '2014-06-12 16:43:43');
INSERT INTO `company` VALUES ('20140612164344282e702c18f234237', '成都绿贝景观设计有限公司', '建筑/建材/工程/家居/室内设计/装潢', '民营公司', '少于50人', 'http://search.51job.com/list/co,c,3103044,000000,10,1.html', '', '0', '2014-06-12 16:43:44');
INSERT INTO `company` VALUES ('20140612180037282e702c18f349234', '四川鼎鑫隆投资理财信息咨询有限公司', '', '', '', 'http://search.51job.com/list/co,c,3169226,000000,10,1.html', '', '0', '2014-06-12 18:00:37');
INSERT INTO `company` VALUES ('20140612180038282e702c18f321234', '成都厚大电子商务有限公司', '互联网/电子商务/教育/培训/院校', '民营公司', '50-150人', 'http://search.51job.com/list/co,c,3205586,000000,10,1.html', '', '0', '2014-06-12 18:00:38');
INSERT INTO `company` VALUES ('20140612180039282e702c18f277234', '成都游魂网络科技有限公司', '互联网/电子商务/教育/培训/院校', '民营公司', '50-150人', 'http://search.51job.com/list/co,c,3021838,000000,10,1.html', '', '0', '2014-06-12 18:00:39');
INSERT INTO `company` VALUES ('20140612180039282e702c18f666234', '成都卓越精算软件有限责任公司', '互联网/电子商务/教育/培训/院校', '民营公司', '50-150人', 'http://search.51job.com/list/co,c,2726500,000000,10,1.html', '', '0', '2014-06-12 18:00:39');
INSERT INTO `company` VALUES ('20140612180039282e702c18f998234', '成都江安城市投资发展有限公司', '房地产开发/政府/公共事业', '国企', '50-150人', 'http://search.51job.com/list/co,c,2364776,000000,10,1.html', '', '0', '2014-06-12 18:00:39');
INSERT INTO `company` VALUES ('20140612180040282e702c18f745234', '四川弘智远大科技有限公司', '计算机软件/计算机服务(系统、数据服务、维修)', '民营公司', '少于50人', 'http://search.51job.com/list/co,c,2968704,000000,10,1.html', '', '0', '2014-06-12 18:00:40');
INSERT INTO `company` VALUES ('20140612180042282e702c18f56234', '成都银河教育中心', '网络游戏/计算机软件', '民营公司', '少于50人', 'http://search.51job.com/list/co,c,2070256,000000,10,1.html', '', '0', '2014-06-12 18:00:42');
INSERT INTO `company` VALUES ('20140612180042282e702c18f741234', '四川川润股份有限公司', '网络游戏/计算机软件', '民营公司', '少于50人', 'http://search.51job.com/list/co,c,2286353,000000,10,1.html', '', '0', '2014-06-12 18:00:42');
INSERT INTO `company` VALUES ('20140612180043282e702c18f570234', '成都全美汇商贸有限公司', '建筑/建材/工程/家居/室内设计/装潢', '民营公司', '少于50人', 'http://search.51job.com/list/co,c,3345223,000000,10,1.html', '', '0', '2014-06-12 18:00:43');
INSERT INTO `company` VALUES ('20140612180046282e702c18f978234', '成都观真酒业有限公司', '批发/零售/服装/纺织/皮革', '外资(非欧美)', '500-1000人', 'http://search.51job.com/list/co,c,2410799,000000,10,1.html', '', '0', '2014-06-12 18:00:46');
INSERT INTO `company` VALUES ('20140612180048282e702c18f800234', '成都市普瑞昇科技有限公司', '电子技术/半导体/集成电路/机械/设备/重工', '民营公司', '50-150人', 'http://search.51job.com/list/co,c,3088999,000000,10,1.html', '', '0', '2014-06-12 18:00:48');
INSERT INTO `company` VALUES ('20140612180048282e702c18f87234', '成都百年宝诚商贸有限公司', '互联网/电子商务/家具/家电/工艺品/玩具/珠宝', '民营公司', '50-150人', 'http://search.51job.com/list/co,c,2997048,000000,10,1.html', '', '0', '2014-06-12 18:00:48');
INSERT INTO `company` VALUES ('20140612180049282e702c18f850234', '长沙首城知识产权服务有限公司成都分公司', '专业服务(咨询、人力资源、财会)/法律', '民营公司', '少于50人', 'http://search.51job.com/list/co,c,3185025,000000,10,1.html', '', '0', '2014-06-12 18:00:49');
INSERT INTO `company` VALUES ('20140612180050282e702c18f715234', '四川省百世兴食品产业有限公司', '专业服务(咨询、人力资源、财会)/法律', '民营公司', '少于50人', 'http://search.51job.com/list/co,c,497736,000000,10,1.html', '', '0', '2014-06-12 18:00:50');
INSERT INTO `company` VALUES ('20140612180053282e702c18f630234', '成都衡信投资管理有限公司', '金融/投资/证券/专业服务(咨询、人力资源、财会)', '民营公司', '少于50人', 'http://search.51job.com/list/co,c,3093293,000000,10,1.html', '', '0', '2014-06-12 18:00:53');
INSERT INTO `company` VALUES ('20140612194433027230282e702c18f', '成都合力科技有限公司', '公关/市场推广/会展/影视/媒体/艺术/文化传播', '民营公司', '', 'http://search.51job.com/list/co,c,2956928,000000,10,1.html', '', '0', '2014-06-12 19:44:33');
INSERT INTO `company` VALUES ('20140612194436882230282e702c18f', 'HIMuomo汉崇', '服装/纺织/皮革/批发/零售', '民营公司', '', 'http://search.51job.com/list/co,c,2072882,000000,10,1.html', '', '0', '2014-06-12 19:44:36');
INSERT INTO `company` VALUES ('20140612194440588229282e702c18f', '成都胖豆科技有限公司', '计算机软件/电力/水利', '民营公司', '', 'http://search.51job.com/list/co,c,3022110,000000,10,1.html', '', '0', '2014-06-12 19:44:40');
INSERT INTO `company` VALUES ('20140612194440982229282e702c18f', '成都索贝数码科技股份有限公司', '计算机软件/电力/水利', '民营公司', '', 'http://search.51job.com/list/co,c,131910,000000,10,1.html', '', '0', '2014-06-12 19:44:40');
INSERT INTO `company` VALUES ('20140612194442974230282e702c18f', '江河创建集团股份有限公司', '通信/电信/网络设备/计算机服务(系统、数据服务、维修)', '民营公司', '', 'http://search.51job.com/list/co,c,2501944,000000,10,1.html', '', '0', '2014-06-12 19:44:42');
INSERT INTO `company` VALUES ('20140612194449371229282e702c18f', '成都佳美嘉家居装饰设计有限公司', '通信/电信/网络设备/计算机服务(系统、数据服务、维修)', '民营公司', '', 'http://search.51job.com/list/co,c,2518703,000000,10,1.html', '', '0', '2014-06-12 19:44:49');
INSERT INTO `company` VALUES ('20140612194911689229282e702c18f', '成都市智讯联创科技有限责任公司', '通信/电信/网络设备/计算机服务(系统、数据服务、维修)', '民营公司', '', 'http://search.51job.com/list/co,c,3352451,000000,10,1.html', '', '0', '2014-06-12 19:49:11');
INSERT INTO `company` VALUES ('20140612194922404230282e702c18f', '成都广航信息技术服务有限公司', '互联网/电子商务/专业服务(咨询、人力资源、财会)', '民营公司', '', 'http://search.51job.com/list/co,c,3352661,000000,10,1.html', '', '0', '2014-06-12 19:49:22');
INSERT INTO `company` VALUES ('20140612194923127229282e702c18f', 'JD京东商城', '互联网/电子商务/专业服务(咨询、人力资源、财会)', '民营公司', '', 'http://search.51job.com/list/co,c,2126349,000000,10,1.html', '', '0', '2014-06-12 19:49:23');
INSERT INTO `company` VALUES ('20140612194923687230282e702c18f', '四川集欣科技有限公司', '快速消费品(食品、饮料、化妆品)/计算机软件', '民营公司', '', 'http://search.51job.com/list/co,c,3350705,000000,10,1.html', '', '0', '2014-06-12 19:49:23');
INSERT INTO `company` VALUES ('20140612194924202229282e702c18f', '四川意中意贸易有限公司', '批发/零售/服装/纺织/皮革', '民营公司', '', 'http://search.51job.com/list/co,c,2892836,000000,10,1.html', '', '0', '2014-06-12 19:49:24');
INSERT INTO `company` VALUES ('20140612194924656229282e702c18f', '成都盛世炎兴网络科技有限公司', '批发/零售/服装/纺织/皮革', '民营公司', '', 'http://search.51job.com/list/co,c,3322589,000000,10,1.html', '', '0', '2014-06-12 19:49:24');
INSERT INTO `company` VALUES ('20140612194926353229282e702c18f', '百家好（上海）时装有限公司', '批发/零售/服装/纺织/皮革', '外资(非欧美)', '', 'http://search.51job.com/list/co,c,174020,000000,10,1.html', '', '0', '2014-06-12 19:49:26');
INSERT INTO `company` VALUES ('20140612194927172230282e702c18f', '四川省半身缘服饰有限责任公司', '服装/纺织/皮革/批发/零售', '民营公司', '', 'http://search.51job.com/list/co,c,554410,000000,10,1.html', '', '0', '2014-06-12 19:49:27');
INSERT INTO `company` VALUES ('20140612194927603229282e702c18f', '四川万基伟业投资有限公司', '金融/投资/证券/房地产开发', '民营公司', '', 'http://search.51job.com/list/co,c,3322647,000000,10,1.html', '', '0', '2014-06-12 19:49:27');
INSERT INTO `company` VALUES ('20140612194929023230282e702c18f', '上海埃林哲软件系统股份有限公司', '计算机软件/计算机服务(系统、数据服务、维修)', '民营公司', '', 'http://search.51job.com/list/co,c,688426,000000,10,1.html', '', '0', '2014-06-12 19:49:29');
INSERT INTO `company` VALUES ('20140613102547777461282e702c18f', '安科思软件（成都）有限公司', '', '', '', 'http://search.51job.com/list/co,c,2072769,000000,10,1.html', '', '0', '2014-06-13 10:25:47');
INSERT INTO `company` VALUES ('20140613102548209460282e702c18f', '成都宏鼎汽车零部件有限公司', '', '', '', 'http://search.51job.com/list/co,c,2920761,000000,10,1.html', '', '0', '2014-06-13 10:25:48');
INSERT INTO `company` VALUES ('20140613102548577461282e702c18f', '中国传意国际有限公司', '专业服务(咨询、人力资源、财会)/教育/培训/院校', '民营公司', '', 'http://search.51job.com/list/co,c,3302579,000000,10,1.html', '', '0', '2014-06-13 10:25:48');
INSERT INTO `company` VALUES ('20140613102548940460282e702c18f', '成都市旌扬科技有限公司', '计算机服务(系统、数据服务、维修)/通信/电信/网络设备', '民营公司', '', 'http://search.51job.com/list/co,c,3150943,000000,10,1.html', '', '0', '2014-06-13 10:25:48');
INSERT INTO `company` VALUES ('20140613102550309461282e702c18f', '戴氏教育集团蜀西路总校', '计算机服务(系统、数据服务、维修)/通信/电信/网络设备', '民营公司', '', 'http://search.51job.com/list/co,c,2986046,000000,10,1.html', '', '0', '2014-06-13 10:25:50');
INSERT INTO `company` VALUES ('20140613102550578460282e702c18f', '成都蓉博装饰工程有限公司', '计算机服务(系统、数据服务、维修)/通信/电信/网络设备', '民营公司', '', 'http://search.51job.com/list/co,c,3348769,000000,10,1.html', '', '0', '2014-06-13 10:25:50');
INSERT INTO `company` VALUES ('20140613102550832461282e702c18f', '北京安实创业科技发展有限公司', '计算机服务(系统、数据服务、维修)/通信/电信/网络设备', '民营公司', '', 'http://search.51job.com/list/co,c,288062,000000,10,1.html', '', '0', '2014-06-13 10:25:50');
INSERT INTO `company` VALUES ('20140613102551334460282e702c18f', '成都市晟雷科技有限公司', '计算机服务(系统、数据服务、维修)/通信/电信/网络设备', '民营公司', '', 'http://search.51job.com/list/co,c,3064875,000000,10,1.html', '', '0', '2014-06-13 10:25:51');
INSERT INTO `company` VALUES ('20140613102551695461282e702c18f', '四川鹏华投资有限公司', '金融/投资/证券/农/林/牧/渔', '民营公司', '', 'http://search.51job.com/list/co,c,2988930,000000,10,1.html', '', '0', '2014-06-13 10:25:51');
INSERT INTO `company` VALUES ('20140613102552006460282e702c18f', '四川省杏海景观园林工程有限公司', '金融/投资/证券/农/林/牧/渔', '民营公司', '', 'http://search.51job.com/list/co,c,2522746,000000,10,1.html', '', '0', '2014-06-13 10:25:52');
INSERT INTO `company` VALUES ('20140613102552632461282e702c18f', '成都金赛银股权投资基金管理有限公司', '金融/投资/证券/农/林/牧/渔', '民营公司', '', 'http://search.51job.com/list/co,c,3264534,000000,10,1.html', '', '0', '2014-06-13 10:25:52');
INSERT INTO `company` VALUES ('20140613102553173460282e702c18f', '日立意必锐科技（成都）有限责任公司', '计算机软件/互联网/电子商务', '外资(非欧美)', '', 'http://search.51job.com/list/co,c,3289309,000000,10,1.html', '', '0', '2014-06-13 10:25:53');
INSERT INTO `company` VALUES ('20140613102553992460282e702c18f', '西安前沿动力软件开发有限责任公司', '航天/航空/计算机软件', '民营公司', '', 'http://search.51job.com/list/co,c,2522615,000000,10,1.html', '', '0', '2014-06-13 10:25:53');
INSERT INTO `company` VALUES ('20140613102554298460282e702c18f', '四川金源大鹏贸易有限公司', '航天/航空/计算机软件', '民营公司', '', 'http://search.51job.com/list/co,c,2518812,000000,10,1.html', '', '0', '2014-06-13 10:25:54');
INSERT INTO `company` VALUES ('20140613102554740461282e702c18f', '四川师大锦程教育投资有限公司', '航天/航空/计算机软件', '民营公司', '', 'http://search.51job.com/list/co,c,2570968,000000,10,1.html', '', '0', '2014-06-13 10:25:54');
INSERT INTO `company` VALUES ('20140613102555869461282e702c18f', '四川港发行投资管理有限公司', '金融/投资/证券/中介服务', '民营公司', '', 'http://search.51job.com/list/co,c,3120526,000000,10,1.html', '', '0', '2014-06-13 10:25:55');
INSERT INTO `company` VALUES ('20140613102556436460282e702c18f', '成都益格网络科技有限公司', '网络游戏/外包服务', '民营公司', '', 'http://search.51job.com/list/co,c,3352699,000000,10,1.html', '', '0', '2014-06-13 10:25:56');
INSERT INTO `company` VALUES ('20140613102557193460282e702c18f', '成都卡梵科技有限公司', '计算机软件/互联网/电子商务', '民营公司', '', 'http://search.51job.com/list/co,c,3299491,000000,10,1.html', '', '0', '2014-06-13 10:25:57');
INSERT INTO `company` VALUES ('20140613102557816461282e702c18f', '成都通海三圣汽车销售有限责任公司', '计算机软件/互联网/电子商务', '民营公司', '', 'http://search.51job.com/list/co,c,2104588,000000,10,1.html', '', '0', '2014-06-13 10:25:57');
INSERT INTO `company` VALUES ('20140613102558217461282e702c18f', '成都上善堂文化传播有限公司', '公关/市场推广/会展/影视/媒体/艺术/文化传播', '民营公司', '', 'http://search.51job.com/list/co,c,3350391,000000,10,1.html', '', '0', '2014-06-13 10:25:58');
INSERT INTO `company` VALUES ('20140613102559661461282e702c18f', '成都鼎域前沿科技有限公司', '网络游戏/外包服务', '民营公司', '', 'http://search.51job.com/list/co,c,3229681,000000,10,1.html', '', '0', '2014-06-13 10:25:59');
INSERT INTO `company` VALUES ('20140613102600253460282e702c18f', '宁波杰博人力资源有限公司', '专业服务(咨询、人力资源、财会)/外包服务', '民营公司', '', 'http://search.51job.com/list/co,c,2798184,000000,10,1.html', '', '0', '2014-06-13 10:26:00');
INSERT INTO `company` VALUES ('20140613102600692461282e702c18f', '成都若克精密机械制造有限公司', '专业服务(咨询、人力资源、财会)/外包服务', '民营公司', '', 'http://search.51job.com/list/co,c,2552653,000000,10,1.html', '', '0', '2014-06-13 10:26:00');
INSERT INTO `company` VALUES ('20140613102601132461282e702c18f', '成都三智信息技术服务有限公司', '互联网/电子商务/广告', '民营公司', '', 'http://search.51job.com/list/co,c,3337564,000000,10,1.html', '', '0', '2014-06-13 10:26:01');
INSERT INTO `company` VALUES ('20140613102602538460282e702c18f', '四川路路通科技有限公司', '互联网/电子商务/广告', '民营公司', '', 'http://search.51job.com/list/co,c,2817938,000000,10,1.html', '', '0', '2014-06-13 10:26:02');
INSERT INTO `company` VALUES ('20140613105059293042282e702c18f', '成都恒誉科技有限公司', '互联网/电子商务/计算机软件', '民营公司', '', 'http://search.51job.com/list/co,c,3112584,000000,10,1.html', '', '0', '2014-06-13 10:50:59');
INSERT INTO `company` VALUES ('20140613105059540018282e702c18f', '四川省文通投资管理有限公司', '影视/媒体/艺术/文化传播/金融/投资/证券', '民营公司', '', 'http://search.51job.com/list/co,c,3231897,000000,10,1.html', '', '0', '2014-06-13 10:50:59');
INSERT INTO `company` VALUES ('20140613105100670905282e702c18f', '四川分享科技有限公司', '计算机软件/通信/电信运营、增值服务', '民营公司', '', 'http://search.51job.com/list/co,c,2304535,000000,10,1.html', '', '0', '2014-06-13 10:51:00');
INSERT INTO `company` VALUES ('20140613105102252747282e702c18f', '四川德垦装饰工程有限公司', '计算机软件/通信/电信运营、增值服务', '民营公司', '', 'http://search.51job.com/list/co,c,2635830,000000,10,1.html', '', '0', '2014-06-13 10:51:02');
INSERT INTO `company` VALUES ('20140613105102624708282e702c18f', '广州高力国际物业服务有限公司成都分公司', '物业管理/商业中心/房地产开发', '外资(欧美)', '', 'http://search.51job.com/list/co,c,2184472,000000,10,1.html', '', '0', '2014-06-13 10:51:02');
INSERT INTO `company` VALUES ('20140613105108250147282e702c18f', '成都康洁水务有限公司', '物业管理/商业中心/房地产开发', '外资(欧美)', '', 'http://search.51job.com/list/co,c,2511260,000000,10,1.html', '', '0', '2014-06-13 10:51:08');
INSERT INTO `company` VALUES ('20140613105108767095282e702c18f', '成都国酿食品股份有限公司', '物业管理/商业中心/房地产开发', '外资(欧美)', '', 'http://search.51job.com/list/co,c,2298872,000000,10,1.html', '', '0', '2014-06-13 10:51:08');
INSERT INTO `company` VALUES ('20140613105109033068282e702c18f', '成都帝道投资管理有限公司', '物业管理/商业中心/房地产开发', '外资(欧美)', '', 'http://search.51job.com/list/co,c,3047898,000000,10,1.html', '', '0', '2014-06-13 10:51:09');
INSERT INTO `company` VALUES ('20140613105109424029282e702c18f', '成都致澜景观设计有限公司', '物业管理/商业中心/房地产开发', '外资(欧美)', '', 'http://search.51job.com/list/co,c,2071918,000000,10,1.html', '', '0', '2014-06-13 10:51:09');
INSERT INTO `company` VALUES ('20140613105109978974282e702c18f', '成都亿迈科技有限公司', '物业管理/商业中心/房地产开发', '外资(欧美)', '', 'http://search.51job.com/list/co,c,2676088,000000,10,1.html', '', '0', '2014-06-13 10:51:09');
INSERT INTO `company` VALUES ('20140613105110439928282e702c18f', '成都市誉容融资担保有限公司', '物业管理/商业中心/房地产开发', '外资(欧美)', '', 'http://search.51job.com/list/co,c,2685836,000000,10,1.html', '', '0', '2014-06-13 10:51:10');
INSERT INTO `company` VALUES ('20140613105110877883282e702c18f', '成都盈鑫装饰装修有限公司', '家居/室内设计/装潢/建筑/建材/工程', '民营公司', '', 'http://search.51job.com/list/co,c,3046412,000000,10,1.html', '', '0', '2014-06-13 10:51:10');
INSERT INTO `company` VALUES ('20140613105111785793282e702c18f', '四川华升富士达电梯工程有限公司', '家居/室内设计/装潢/建筑/建材/工程', '民营公司', '', 'http://search.51job.com/list/co,c,2430983,000000,10,1.html', '', '0', '2014-06-13 10:51:11');
INSERT INTO `company` VALUES ('20140613105112218750282e702c18f', '昆山华东信息科技有限公司', '家居/室内设计/装潢/建筑/建材/工程', '民营公司', '', 'http://search.51job.com/list/co,c,1477009,000000,10,1.html', '', '0', '2014-06-13 10:51:12');
INSERT INTO `company` VALUES ('20140613105112637707282e702c18f', '广州埃特尼特建筑系统有限公司', '家居/室内设计/装潢/建筑/建材/工程', '民营公司', '', 'http://search.51job.com/list/co,c,613439,000000,10,1.html', '', '0', '2014-06-13 10:51:12');
INSERT INTO `company` VALUES ('20140613105112946676282e702c18f', '成都天宏不锈钢有限公司', '家居/室内设计/装潢/建筑/建材/工程', '民营公司', '', 'http://search.51job.com/list/co,c,3344882,000000,10,1.html', '', '0', '2014-06-13 10:51:12');
INSERT INTO `company` VALUES ('20140613105113589612282e702c18f', '成都外包呼叫科技有限公司', '外包服务/通信/电信运营、增值服务', '民营公司', '', 'http://search.51job.com/list/co,c,3351875,000000,10,1.html', '', '0', '2014-06-13 10:51:13');
INSERT INTO `company` VALUES ('20140613105114027569282e702c18f', '重庆三原色节能建筑工程有限公司成都分公司', '建筑/建材/工程/房地产开发', '民营公司', '', 'http://search.51job.com/list/co,c,3248156,000000,10,1.html', '', '0', '2014-06-13 10:51:14');
INSERT INTO `company` VALUES ('20140613105114790493282e702c18f', '成都北纬航信网络科技有限责任公司', '建筑/建材/工程/房地产开发', '民营公司', '', 'http://search.51job.com/list/co,c,3321679,000000,10,1.html', '', '0', '2014-06-13 10:51:14');
INSERT INTO `company` VALUES ('20140613105554378465282e702c18f', '成都富驰达科技有限公司', '计算机软件/互联网/电子商务', '民营公司', '', 'http://search.51job.com/list/co,c,2946939,000000,10,1.html', '', '0', '2014-06-13 10:55:54');
INSERT INTO `company` VALUES ('20140613105554806466282e702c18f', '成都奔达通软件有限公司', '计算机服务(系统、数据服务、维修)/互联网/电子商务', '民营公司', '', 'http://search.51job.com/list/co,c,2506707,000000,10,1.html', '', '0', '2014-06-13 10:55:54');
INSERT INTO `company` VALUES ('20140613105555257466282e702c18f', '上海佩才大数据科技有限公司', '计算机软件/互联网/电子商务', '民营公司', '', 'http://search.51job.com/list/co,c,3352564,000000,10,1.html', '', '0', '2014-06-13 10:55:55');
INSERT INTO `company` VALUES ('20140613105555701466282e702c18f', '成都狮之吼科技有限公司', '计算机软件/互联网/电子商务', '民营公司', '', 'http://search.51job.com/list/co,c,3352885,000000,10,1.html', '', '0', '2014-06-13 10:55:55');
INSERT INTO `company` VALUES ('20140613105558143465282e702c18f', '大连汇聚科技有限公司', '计算机软件/通信/电信运营、增值服务', '民营公司', '', 'http://search.51job.com/list/co,c,2853543,000000,10,1.html', '', '0', '2014-06-13 10:55:58');
INSERT INTO `company` VALUES ('20140613105558533466282e702c18f', '上海佩琪信息技术有限公司', '专业服务(咨询、人力资源、财会)/外包服务', '民营公司', '', 'http://search.51job.com/list/co,c,2857093,000000,10,1.html', '', '0', '2014-06-13 10:55:58');
INSERT INTO `company` VALUES ('20140613105600106466282e702c18f', '成都博格科技有限公司', '计算机服务(系统、数据服务、维修)/通信/电信运营、增值服务', '民营公司', '', 'http://search.51job.com/list/co,c,2854763,000000,10,1.html', '', '0', '2014-06-13 10:56:00');
INSERT INTO `company` VALUES ('20140613105601582465282e702c18f', '成都德塔斯科技有限公司', '计算机软件/互联网/电子商务', '外资(非欧美)', '', 'http://search.51job.com/list/co,c,2326138,000000,10,1.html', '', '0', '2014-06-13 10:56:01');
INSERT INTO `company` VALUES ('20140613105602215466282e702c18f', '成都科来软件有限公司', '计算机软件/通信/电信/网络设备', '民营公司', '', 'http://search.51job.com/list/co,c,1356766,000000,10,1.html', '', '0', '2014-06-13 10:56:02');
INSERT INTO `company` VALUES ('20140613105602715466282e702c18f', '上海升斯电子科技有限公司', '电子技术/半导体/集成电路/仪器仪表/工业自动化', '民营公司', '', 'http://search.51job.com/list/co,c,2568129,000000,10,1.html', '', '0', '2014-06-13 10:56:02');
INSERT INTO `company` VALUES ('20140613105603096466282e702c18f', '成都立智科技有限公司', '计算机服务(系统、数据服务、维修)/计算机软件', '民营公司', '', 'http://search.51job.com/list/co,c,3228579,000000,10,1.html', '', '0', '2014-06-13 10:56:03');
INSERT INTO `company` VALUES ('20140613105603791465282e702c18f', '成都市硕达科技有限公司', '计算机服务(系统、数据服务、维修)/计算机软件', '民营公司', '', 'http://search.51job.com/list/co,c,1996707,000000,10,1.html', '', '0', '2014-06-13 10:56:03');
INSERT INTO `company` VALUES ('20140613105604207465282e702c18f', '北京东方来威科技有限公司', '网络游戏/通信/电信运营、增值服务', '民营公司', '', 'http://search.51job.com/list/co,c,3207665,000000,10,1.html', '', '0', '2014-06-13 10:56:04');
INSERT INTO `company` VALUES ('20140613105604750466282e702c18f', '成都凯迈科技有限公司', '仪器仪表/工业自动化/计算机软件', '民营公司', '', 'http://search.51job.com/list/co,c,3348152,000000,10,1.html', '', '0', '2014-06-13 10:56:04');
INSERT INTO `company` VALUES ('20140613105606416465282e702c18f', '成都菁萍网络服务有限公司', '仪器仪表/工业自动化/计算机软件', '民营公司', '', 'http://search.51job.com/list/co,c,3179820,000000,10,1.html', '', '0', '2014-06-13 10:56:06');
INSERT INTO `company` VALUES ('20140613105608098465282e702c18f', '成都微游互动科技有限公司', '计算机软件/互联网/电子商务', '民营公司', '', 'http://search.51job.com/list/co,c,3352701,000000,10,1.html', '', '0', '2014-06-13 10:56:08');
INSERT INTO `company` VALUES ('20140613105608352466282e702c18f', '四川科陆新能电气有限公司', '新能源/机械/设备/重工', '民营公司', '', 'http://search.51job.com/list/co,c,2520580,000000,10,1.html', '', '0', '2014-06-13 10:56:08');
INSERT INTO `company` VALUES ('20140613105609039465282e702c18f', '大庆金桥信息技术工程有限公司成都分公司', '计算机软件/互联网/电子商务', '国企', '', 'http://search.51job.com/list/co,c,2532996,000000,10,1.html', '', '0', '2014-06-13 10:56:09');
INSERT INTO `company` VALUES ('20140613105836740466282e702c18f', '万达信息股份有限公司', '计算机软件/互联网/电子商务', '外资(非欧美)', '', 'http://search.51job.com/list/co,c,107529,000000,10,1.html', '', '0', '2014-06-13 10:58:36');
INSERT INTO `company` VALUES ('20140613105837159466282e702c18f', '成都华育信息技术职业技能培训学校', '计算机软件/教育/培训/院校', '合资(非欧美)', '', 'http://search.51job.com/list/co,c,2967768,000000,10,1.html', '', '0', '2014-06-13 10:58:37');
INSERT INTO `company` VALUES ('20140613105837560466282e702c18f', '四川云梯科技有限公司', '计算机软件/教育/培训/院校', '合资(非欧美)', '', 'http://search.51job.com/list/co,c,3342280,000000,10,1.html', '', '0', '2014-06-13 10:58:37');
INSERT INTO `company` VALUES ('20140613105837865466282e702c18f', '南京周顾信息科技有限公司', '计算机软件/教育/培训/院校', '合资(非欧美)', '', 'http://search.51job.com/list/co,c,3090261,000000,10,1.html', '', '0', '2014-06-13 10:58:37');
INSERT INTO `company` VALUES ('20140613105838510466282e702c18f', '成都远控科技有限公司', '计算机软件/通信/电信/网络设备', '民营公司', '', 'http://search.51job.com/list/co,c,2481403,000000,10,1.html', '', '0', '2014-06-13 10:58:38');
INSERT INTO `company` VALUES ('20140613105838903465282e702c18f', '成都中联信通科技股份有限公司', '互联网/电子商务/计算机服务(系统、数据服务、维修)', '民营公司', '', 'http://search.51job.com/list/co,c,2749064,000000,10,1.html', '', '0', '2014-06-13 10:58:38');
INSERT INTO `company` VALUES ('20140613105839219465282e702c18f', '成都沃尔法科技有限公司', '互联网/电子商务/金融/投资/证券', '民营公司', '', 'http://search.51job.com/list/co,c,2994051,000000,10,1.html', '', '0', '2014-06-13 10:58:39');
INSERT INTO `company` VALUES ('20140613105840209465282e702c18f', '维布络信息科技（上海）有限公司', '计算机服务(系统、数据服务、维修)/计算机软件', '民营公司', '', 'http://search.51job.com/list/co,c,2054135,000000,10,1.html', '', '0', '2014-06-13 10:58:40');
INSERT INTO `company` VALUES ('20140613105840734466282e702c18f', '方欣科技有限公司', '计算机软件/通信/电信运营、增值服务', '民营公司', '', 'http://search.51job.com/list/co,c,198472,000000,10,1.html', '', '0', '2014-06-13 10:58:40');
INSERT INTO `company` VALUES ('20140613105842070466282e702c18f', '四川天龙通信有限公司', '计算机软件/通信/电信运营、增值服务', '民营公司', '', 'http://search.51job.com/list/co,c,2557729,000000,10,1.html', '', '0', '2014-06-13 10:58:42');
INSERT INTO `company` VALUES ('20140613105842485466282e702c18f', '成都初唐网络科技有限公司', '互联网/电子商务/计算机服务(系统、数据服务、维修)', '民营公司', '', 'http://search.51job.com/list/co,c,2768577,000000,10,1.html', '', '0', '2014-06-13 10:58:42');
INSERT INTO `company` VALUES ('20140613105843630465282e702c18f', '成都西华升腾科技有限公司', '互联网/电子商务/金融/投资/证券', '民营公司', '', 'http://search.51job.com/list/co,c,2384771,000000,10,1.html', '', '0', '2014-06-13 10:58:43');
INSERT INTO `company` VALUES ('20140613105845285465282e702c18f', '成都欧软科技有限公司', '计算机服务(系统、数据服务、维修)/计算机软件', '民营公司', '', 'http://search.51job.com/list/co,c,3346490,000000,10,1.html', '', '0', '2014-06-13 10:58:45');
INSERT INTO `company` VALUES ('20140613105845767466282e702c18f', '迈普通信技术股份有限公司', '通信/电信/网络设备/计算机服务(系统、数据服务、维修)', '民营公司', '', 'http://search.51job.com/list/co,c,175412,000000,10,1.html', '', '0', '2014-06-13 10:58:45');
INSERT INTO `company` VALUES ('20140613105847964466282e702c18f', '西米科技', '网络游戏/互联网/电子商务', '民营公司', '', 'http://search.51job.com/list/co,c,3275193,000000,10,1.html', '', '0', '2014-06-13 10:58:47');
