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
  createtime    DATE
)
;
alter table MONITOR_RULES
  add constraint MONITOR_RULES_PK primary key (ruleid);


create table CATALOGS
(
  catalogid      varchar(60) not null,
  name          varchar(50),
  description    varchar(200),
  topicids        CLOB,
  tags         CLOB,
  techownerid       varchar(50),
  bizownerid      varchar(50),
  lastmodified  DATE,
  tenantid      varchar(50),
  createtime    DATE,
);

alter table CATALOGS
  add constraint CATALOGS_PK primary key (catalogid);
