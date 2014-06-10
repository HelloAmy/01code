/****** 对象:  Table Job201406    脚本日期: 2014/6/10 14:28:59 ******/
/****** 字段数据长度 = 934 字节 ******/
DROP TABLE IF EXISTS `Job201406`;
CREATE TABLE `Job201406`(
	`KeyID`                            varchar(50)          NOT NULL DEFAULT ''                    COMMENT '主键ID',
	`PublishDay`                       datetime             NOT NULL DEFAULT '1900-01-01 00:00:00' COMMENT '发布日期(0：未读 / 1：已读)',
	`WorkPlace`                        varchar(50)          NOT NULL DEFAULT ''                    COMMENT '工作地点',
	`RecuitingNumbers`                 int(11)              NOT NULL DEFAULT 0                     COMMENT '招聘人数',
	`JobLabel`                         varchar(100)         NOT NULL DEFAULT ''                    COMMENT '职位标签',
	`JobDescription`                   text                 NOT NULL  					                   COMMENT '职位描述',
	`LinkUrl`                          varchar(100)         NOT NULL DEFAULT ''                    COMMENT '页面链接',
	`Remark`                           text                 NOT NULL 					                     COMMENT '备注',
	`IsDelete`                         tinyint(4) unsigned  NOT NULL DEFAULT 0                     COMMENT '是否删除(0：未删除 / 1：删除)',
	`ModifyTime`                       timestamp            NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳(CURRENT_TIMESTAMP)',
	PRIMARY KEY ( `KeyID` ),
	INDEX `IDX_Job201406_1` (`PublishDay`),
	INDEX `IDX_Job201406_2` (`JobLabel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作信息表:工作信息表';


/****** 对象:  Event Event_C_JobYYYYMM    脚本日期: 2014/6/10 14:28:59 ******/
DELIMITER |
SET GLOBAL event_scheduler = 1;
DROP EVENT IF EXISTS `Event_C_JobYYYYMM`;
CREATE EVENT `Event_C_JobYYYYMM`
  ON SCHEDULE EVERY 1 MONTH STARTS '2014-06-27 23:01:01'
  ON COMPLETION NOT PRESERVE
  ENABLE
  Comment '自动创建下个JobYYYYMM表' DO
BEGIN
SET @NextTailStr = DATE_FORMAT(DATE_ADD(NOW(),INTERVAL 1 MONTH), '%Y%m');
SET @createEventSQL = CONCAT('CREATE TABLE IF NOT EXISTS `Job',
 CAST(@NextTailStr AS CHAR),'`(
	`KeyID`                            varchar(50)          NOT NULL DEFAULT ''''                    COMMENT ''主键ID'',
	`PublishDay`                       datetime             NOT NULL DEFAULT ''1900-01-01 00:00:00'' COMMENT ''发布日期(0：未读 / 1：已读)'',
	`WorkPlace`                        varchar(50)          NOT NULL DEFAULT ''''                    COMMENT ''工作地点'',
	`RecuitingNumbers`                 int(11)              NOT NULL DEFAULT 0                     COMMENT ''招聘人数'',
	`JobLabel`                         varchar(100)         NOT NULL DEFAULT ''''                    COMMENT ''职位标签'',
	`JobDescription`                   text                 NOT NULL 						                    COMMENT ''职位描述'',
	`LinkUrl`                          varchar(100)         NOT NULL DEFAULT ''''                    COMMENT ''页面链接'',
	`Remark`                           text                 NOT NULL 						                    COMMENT ''备注'',
	`IsDelete`                         tinyint(4) unsigned  NOT NULL DEFAULT 0                     COMMENT ''是否删除(0：未删除 / 1：删除)'',
	`ModifyTime`                       timestamp            NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT ''时间戳(CURRENT_TIMESTAMP)'',
	PRIMARY KEY ( `KeyID` ),
	INDEX `IDX_Job',CAST(@NextTailStr AS CHAR),'_1` (`PublishDay`),
	INDEX `IDX_Job',CAST(@NextTailStr AS CHAR),'_2` (`JobLabel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=''工作信息表:工作信息表'';');
SELECT @createEventSQL;
PREPARE CreateEventStatement FROM @createEventSQL;
EXECUTE CreateEventStatement;
END |
DELIMITER ;
