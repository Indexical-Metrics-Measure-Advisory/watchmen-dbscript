CREATE TABLE CONSOLE_DASHBOARDS (
  dashboardid varchar(60) NOT NULL,
  name varchar(50) DEFAULT NULL,
  reports json DEFAULT NULL,
  paragraphs json DEFAULT NULL,
  lastvisittime varchar(25) DEFAULT NULL,
  userid varchar(60) DEFAULT NULL,
  createtime varchar(25) DEFAULT NULL,
  lastmodified datetime DEFAULT NULL,
  tenantid varchar(50) NOT NULL,
  PRIMARY KEY (`dashboardid`)
);

CREATE TABLE CONSOLE_SPACES
(
  connectid     varchar(60) NOT NULL,
  spaceid       varchar(60) NOT NULL,
  name          varchar(50) DEFAULT NULL,
  type          varchar(10) DEFAULT NULL,
  lastvisittime datetime DEFAULT NULL,
  subjects      json DEFAULT NULL,
  groupids      json DEFAULT NULL,
  subjectids    json DEFAULT NULL,
  userid        varchar(60) DEFAULT NULL,
  topics        json DEFAULT NULL,
  tenantid      varchar(50) NOT NULL,
  createtime    varchar(50) DEFAULT NULL,
  istemplate    boolean   DEFAULT false,
  lastmodified  datetime DEFAULT NULL,
  PRIMARY KEY (`connectid`)
);

CREATE TABLE CONSOLE_SPACE_FAVORITES
(
  userid            varchar(60) NOT NULL,
  connectedspaceids json DEFAULT NULL,
  dashboardids      json DEFAULT NULL,
  createtime        varchar(50) DEFAULT NULL,
--  last_modified     datetime DEFAULT NULL,
  lastmodified      datetime DEFAULT NULL,
  tenantid      varchar(50) NOT NULL,
  PRIMARY KEY (`userid`)
);

CREATE TABLE CONSOLE_SPACE_GRAPH
(
  connectid     varchar(60) NOT NULL,
  userid        varchar(60) DEFAULT NULL,
  topics        json DEFAULT NULL,
  subjects      json DEFAULT NULL,
  createtime    varchar(25) DEFAULT NULL,
  lastmodified  datetime DEFAULT NULL,
  tenantid      varchar(50) NOT NULL,
--  last_modified datetime DEFAULT NULL,
  PRIMARY KEY (`connectid`)
);

CREATE TABLE CONSOLE_SPACE_LAST_SNAPSHOT
(
  userid           varchar(60) NOT NULL,
  language         varchar(5) DEFAULT NULL,
  lastdashboardid  varchar(25) DEFAULT NULL,
  admindashboardid varchar(25) DEFAULT NULL,
  favoritepin      varchar(5) DEFAULT NULL,
  tenantid      varchar(50) NOT NULL,
  createtime       varchar(50) DEFAULT NULL,
  lastmodified     datetime DEFAULT NULL,
  PRIMARY KEY (`userid`)
);

CREATE TABLE CONSOLE_SPACE_SUBJECTS
(
  subjectid      varchar(60) NOT NULL,
  name           varchar(80) NOT NULL,
  topiccount     integer DEFAULT NULL,
  graphicscount  integer DEFAULT NULL,
  reports        json DEFAULT NULL,
  reportids      json DEFAULT NULL,
  dataset        json DEFAULT NULL,
  lastvisittime  datetime DEFAULT NULL,
  createdat      varchar(50) DEFAULT NULL,
  lastmodified datetime DEFAULT NULL,
  tenantid      varchar(50) NOT NULL,
  createtime     varchar(50) DEFAULT NULL,
  PRIMARY KEY (`subjectid`)
);

CREATE TABLE ENUMS
(
  enumid       varchar(60) NOT NULL,
  name         varchar(50) NOT NULL,
  description  varchar(250) DEFAULT NULL,
  parentenumid varchar(60) DEFAULT NULL,
  items        json DEFAULT NULL,
  createtime   varchar(50) DEFAULT NULL,
  tenantid      varchar(50) NOT NULL,
  lastmodified datetime DEFAULT NULL,
  PRIMARY KEY (`enumid`)
);






CREATE TABLE PIPELINES
(
  pipelineid    varchar(60) NOT NULL,
  topicid       varchar(60) NOT NULL,
  name          varchar(50) NOT NULL,
  type          varchar(20) DEFAULT NULL,
  stages        json DEFAULT NULL,
  conditional   varchar(5) DEFAULT NULL,
  enabled       varchar(5) DEFAULT NULL,
  `on`            json DEFAULT NULL,
  createtime    varchar(50) DEFAULT NULL,
--  last_modified datetime DEFAULT NULL,
  lastmodified  datetime DEFAULT NULL,
  tenantid      varchar(50) NOT NULL,
  PRIMARY KEY (`pipelineid`)
);

CREATE TABLE PIPELINE_GRAPH
(
  pipelinegraphid VARCHAR(60) not null,
  userid       varchar(60) not null,
  name         varchar(50) not null,
  topics       json DEFAULT NULL,
  lastmodified datetime DEFAULT NULL,
  createtime   varchar(50) DEFAULT NULL,
  tenantid      varchar(50) NOT NULL,
  PRIMARY KEY (`pipelinegraphid`)
);

CREATE TABLE SPACES
(
  spaceid       varchar(60) NOT NULL,
  topicids      json DEFAULT NULL,
  groupids      json DEFAULT NULL,
  name          varchar(50) DEFAULT NULL,
  description   varchar(250) DEFAULT NULL,
  filters       json DEFAULT NULL,
  createtime    varchar(50) DEFAULT NULL,
  lastmodified  datetime DEFAULT NULL,
  tenantid varchar(50) NOT NULL,
  PRIMARY KEY (`spaceid`)
);

CREATE TABLE TOPICS
(
  topicid       varchar(60) NOT NULL,
  name          varchar(50) NOT NULL,
  kind          varchar(10) DEFAULT NULL,
  type          varchar(10) DEFAULT NULL,
  description   varchar(250) DEFAULT NULL,
  factors       json DEFAULT NULL,
  createtime    varchar(50) DEFAULT NULL,
  tenantid      varchar(50) NOT NULL,
  datasourceid    varchar(50) DEFAULT NULL,
  lastmodified  datetime DEFAULT NULL,
  PRIMARY KEY (`topicid`)
);

CREATE TABLE USERS
(
  userid       varchar(60) NOT NULL,
  name         varchar(50) DEFAULT NULL,
  nickname     varchar(45) DEFAULT NULL,
  password     varchar(100) DEFAULT NULL,
  is_active    varchar(5) DEFAULT NULL,
  role         varchar(45) DEFAULT NULL,
  createtime   varchar(50) DEFAULT NULL,
  lastmodified datetime DEFAULT NULL,
  tenantid      varchar(50) NOT NULL,
  groupids     json DEFAULT NULL,
  PRIMARY KEY (`userid`)
);

CREATE TABLE USER_GROUPS
(
    usergroupid  varchar(60) NOT NULL,
    name         varchar(50) NOT NULL,
    description  varchar(250) DEFAULT NULL,
    userids      json        DEFAULT NULL,
    spaceids     json        DEFAULT NULL,
    createtime   varchar(50) DEFAULT NULL,
    tenantid     varchar(50) NOT NULL,
    lastmodified datetime    DEFAULT NULL,
    PRIMARY KEY (`usergroupid`)
);

create table TENANTS
(
  tenantid     varchar(60) NOT NULL,
  name         varchar(50) NOT NULL,
  createtime   varchar(50) DEFAULT NULL,
  lastmodified datetime DEFAULT NULL,
  PRIMARY KEY (`tenantid`)
);


create table REPORTS
(
  reportid      varchar(60) not null,
  name          varchar(50),
  indicators    json,
  dimensions    json,
  funnels       json,
  filters       json,
  description   varchar(250),
  rect          json,
  chart         json,
  createdat     varchar(50),
  lastvisittime varchar(50),
  lastmodified  datetime,
  tenantid      varchar(50) NOT NULL,
  createtime    varchar(50),
  simulating    boolean DEFAULT false,
  simulateData  json,
  simulateThumbnail  mediumtext,
  PRIMARY KEY (`reportid`)
);

create table PATS
(
  patid        varchar(60) NOT NULL,
  tokenid      varchar(50) NOT NULL,
  userid       varchar(50) NOT NULL,
  tenantid     varchar(50) NOT NULL,
  note         varchar(50) NOT NULL,
  expired      datetime,
  permissions  json,
  lastmodified datetime,
  createtime   varchar(50),
  username     varchar(50) NOT NULL,
  PRIMARY KEY (`patid`)
);


create table DATA_SOURCES
(
  datasourceid        varchar(60) NOT NULL,
  dataSourceCode      varchar(50) NOT NULL,
  dataSourceType       varchar(50) NOT NULL,
  host     varchar(50) DEFAULT NULL,
  port         varchar(50) DEFAULT NULL,
  username         varchar(50) DEFAULT NULL,
  password         varchar(50) DEFAULT NULL,
  name         varchar(50) DEFAULT NULL,
  url      varchar(50) DEFAULT NULL,
  params    json,
  lastmodified datetime,
  createtime   varchar(50),
  tenantid     varchar(50) NOT NULL,
  PRIMARY KEY (`datasourceid`)
);

create table EXTERNAL_WRITER
(
  writerid        varchar(50) NOT NULL,
  writercode      varchar(50) NOT NULL,
  type       varchar(50) NOT NULL,
  pat     varchar(50) DEFAULT NULL,
  tenantId         varchar(50) DEFAULT NULL,
  url         varchar(50) DEFAULT NULL,
  lastmodified datetime,
  createtime   varchar(50),
  PRIMARY KEY (`writerid`)
);

create table KEY_STORES
(
  tenantId         varchar(50) NOT NULL,
  keyType         varchar(50) NOT NULL,
  params         json,
  lastmodified datetime,
  createtime   varchar(50),
  PRIMARY KEY (`tenantId`)
);





