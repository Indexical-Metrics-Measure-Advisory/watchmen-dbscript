create table BUCKETS
(
  bucketid      VARCHAR2(60) not null,
  name          VARCHAR2(50),
  type         VARCHAR2(50),
  description   VARCHAR2(200),
  segments         CLOB,
  include       VARCHAR2(50),
  measure       VARCHAR2(50),
  enumId      VARCHAR2(50),
  lastmodified  DATE,
  tenantid      VARCHAR2(50),
  createtime    DATE
);


alter table BUCKETS
  add constraint BUCKETS_PK primary key (bucketid);


create table INDICATORS
(
  indicatorid      VARCHAR2(60) not null,
  name          VARCHAR2(50),
  topicid         VARCHAR2(60),
  factorid        VARCHAR2(60),
  valuebuckets         CLOB,
  relevants           CLOB,
  category1        VARCHAR2(50),
  category2        VARCHAR2(50),
  category3       VARCHAR2(50),
  description     VARCHAR2(1000),
  lastmodified  DATE,
  tenantid      VARCHAR2(50),
  createtime    VARCHAR2(60)
);


alter table INDICATORS
  add constraint INDICATORS_PK primary key (indicatorid);


create table INSPECTIONS 
(
  inspectionid      VARCHAR2(60) not null,
  indicatorid      VARCHAR2(60) not null,
  name          VARCHAR2(50),
  aggregatearithmetics  CLOB,
  measureon           VARCHAR2(60),
  measureonfactorId     VARCHAR2(60),
  measureonbucketId     VARCHAR2(60),
  timerangemeasure        VARCHAR2(60),
  timerangefactorid       VARCHAR2(60),
  measureOnTimeFactorId         VARCHAR2(60),
  measureOnTime        VARCHAR2(60),
  timeRanges         CLOB,
  lastmodified  DATE,
  tenantid      VARCHAR2(50),
  createtime    VARCHAR2(60)
);

alter table INSPECTIONS
  add constraint INSPECTIONS_PK primary key (inspectionid);


create table NAVIGATIONS
(
  navigationid      VARCHAR2(60) not null,
  name          VARCHAR2(50),
  description           VARCHAR2(60),
  timeRangeType     VARCHAR2(60),
  timeRangeYear     VARCHAR2(60),
  timeRangeMonth        VARCHAR2(60),
  timerangefactorid       VARCHAR2(60),
  compareWithPreviousTimeRange    NUMBER(1)   DEFAULT 0,
  indicators         CLOB,
  lastmodified  Date,
  tenantid      VARCHAR2(50),
  createtime    VARCHAR2(60)
);

alter table NAVIGATIONS
  add constraint NAVIGATIONS_PK primary key (navigationid);
