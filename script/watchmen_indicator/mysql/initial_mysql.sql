create table BUCKETS
(
  bucketid      varchar(60) not null,
  name          varchar(50),
  type         varchar(50),
  description   varchar(200),
  segments         json,
  include       varchar(50),
  measure       varchar(50),
  enumId      varchar(50),
  lastmodified  datetime,
  tenantid      varchar(50),
  createtime    datetime,
  PRIMARY KEY (`bucketid`)
);




create table INDICATORS
(
  indicatorid      varchar(60) not null,
  name          varchar(50),
  topicid         varchar(60),
  factorid        varchar(60),
  valuebuckets         json,
  relevants           json,
  category1        varchar(50),
  category2        varchar(50),
  category3       varchar(50),
  description     varchar(1000),
  lastmodified  datetime,
  tenantid      varchar(50),
  createtime    varchar(60),
  PRIMARY KEY (`indicatorid`)
);


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
  timeRanges         json,
  lastmodified  datetime,
  tenantid      varchar(50),
  createtime    varchar(60),
  PRIMARY KEY (`inspectionid`)
);




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
  indicators         json,
  lastmodified  datetime,
  tenantid      varchar(50),
  createtime    varchar(60),
  PRIMARY KEY (`navigationid`)
);
