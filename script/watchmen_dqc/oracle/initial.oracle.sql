create table MONITOR_RULES
(
  ruleid           VARCHAR2(60) not null,
  code          VARCHAR2(50),
  grade         VARCHAR2(50),
  severity      VARCHAR2(50),
  params         CLOB,
  enabled        VARCHAR2(5),
  topicid       VARCHAR2(50),
  factorid      VARCHAR2(50),
  lastmodified  DATE,
  tenantid      VARCHAR2(50),
  createtime     VARCHAR2(60)
);
alter table MONITOR_RULES
  add constraint MONITOR_RULES_PK primary key (ruleid);


create table CATALOGS
(
  catalogid      VARCHAR2(60) not null,
  name          VARCHAR2(50),
  description    VARCHAR2(200),
  topicids        CLOB,
  tags         CLOB,
  techownerid       VARCHAR2(50),
  bizownerid      VARCHAR2(50),
  lastmodified  DATE,
  tenantid      VARCHAR2(50),
  createtime     VARCHAR2(60)
);

alter table CATALOGS
  add constraint CATALOGS_PK primary key (catalogid);
