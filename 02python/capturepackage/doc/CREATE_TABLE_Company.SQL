/****** 对象:  Table Company    脚本日期: 2014/6/10 14:42:22 ******/
/****** 字段数据长度 = 285 字节 ******/
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
