create table MONITOR_RULES
(
  ruleid      varchar(60) not null,
  code          varchar(50),
  grade         varchar(50),
  severity   varchar(50),
  params         json,
  enabled        boolean,
  topicid       varchar(50),
  factorid      varchar(50),
  lastmodified  datetime,
  tenantid      varchar(50),
  createtime    datetime,
  PRIMARY KEY (`ruleid`)
);