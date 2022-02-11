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
  createtime     varchar(60),
  PRIMARY KEY (`ruleid`)
);


create table CATALOGS
(
  catalogid      varchar(60) not null,
  name          varchar(50),
  description    varchar(200),
  topicids        json,
  tags         json,
  techownerid       varchar(50),
  bizownerid      varchar(50),
  lastmodified  datetime,
  tenantid      varchar(50),
  createtime      varchar(60),
  PRIMARY KEY (`catalogid`)
);