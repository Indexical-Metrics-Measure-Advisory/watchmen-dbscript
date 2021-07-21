create table MONITOR_RULES
(
  ruleid           VARCHAR2(60) not null,
  code          VARCHAR2(50),
  grade         VARCHAR2(50),
  severity   VARCHAR2(50),
  params         CLOB,
  enabled        BOOLEAN,
  topicid       VARCHAR2(50),
  factorid      VARCHAR2(50),
  lastmodified  DATE,
  tenantid      VARCHAR2(50),
  createtime    DATE,
  PRIMARY KEY (`uid`)
);