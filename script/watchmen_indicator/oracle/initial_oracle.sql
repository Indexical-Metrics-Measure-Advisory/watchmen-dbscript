reate table BUCKETS
(
  bucketid      varchar(60) not null,
  name          varchar(50),
  type         varchar(50),
  description   varchar(200),
  segments         CLOB,
  include       varchar(50),
  measure       varchar(50),
  enumId      varchar(50),
  lastmodified  DATE,
  tenantid      varchar(50),
  createtime    DATE
);


alter table BUCKETS
  add constraint BUCKETS_PK primary key (bucketid);


create table INDICATORS
(
  indicatorid      varchar(60) not null,
  name          varchar(50),
  topicid         varchar(60),
  factorid        varchar(60),
  valuebuckets         CLOB,
  relevants           CLOB,
  category1        varchar(50),
  category2        varchar(50),
  category3       varchar(50),
  description     varchar(1000),
  lastmodified  DATE,
  tenantid      varchar(50),
  createtime    varchar(60)
);


alter table INDICATORS
  add constraint INDICATORS_PK primary key (indicatorid);


create table INSPECTIONS 
(
  inspectionid      varchar(60) not null,
  indicatorid      varchar(60) not null,
  name          varchar(50),
  aggregatearithmetics  json,
  measureon           varchar(60),
  measureonfactorId     varchar(60),
  measureonbucketId     varchar(60),
  timerangemeasure        varchar(60),
  timerangefactorid       varchar(60),
  measureOnTimeFactorId         varchar(60),
  measureOnTime        varchar(60),
  timeRanges         CLOB,
  lastmodified  DATE,
  tenantid      varchar(50),
  createtime    varchar(60)
);

alter table INSPECTIONS
  add constraint INSPECTIONS_PK primary key (inspectionid);


create table NAVIGATIONS
(
  navigationid      varchar(60) not null,
  name          varchar(50),
  description           varchar(60),
  timeRangeType     varchar(60),
  timeRangeYear     varchar(60),
  timeRangeMonth        varchar(60),
  timerangefactorid       varchar(60),
  compareWithPreviousTimeRange    boolean   DEFAULT false,
  indicators         CLOB,
  lastmodified  Date,
  tenantid      varchar(50),
  createtime    varchar(60)
);

alter table NAVIGATIONS
  add constraint NAVIGATIONS_PK primary key (navigationid);