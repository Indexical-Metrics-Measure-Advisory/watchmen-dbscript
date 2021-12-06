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
  PRIMARY KEY (`ruleid`)
);




create table INDICATORS
(
  indicatorid      varchar(60) not null,
  name          varchar(50),
  topicid         varchar(60),
  factorid        varchar(60),
  valuebuckets         json,
  relevants           json,
  lastmodified  datetime,
  tenantid      varchar(50),
  createtime    varchar(60),
  PRIMARY KEY (`indicatorid`)
);