
set define off
spool watchmen_oracle.log

prompt
prompt Creating table CONSOLE_DASHBOARDS
prompt =================================
prompt
create table CONSOLE_DASHBOARDS
(
  dashboardid   VARCHAR2(60) not null,
  name          VARCHAR2(25),
  reports       CLOB,
  paragraphs    CLOB,
  lastvisittime VARCHAR2(25),
  userid        VARCHAR2(60),
  createtime    VARCHAR2(25),
  lastmodified  DATE
)
;
alter table CONSOLE_DASHBOARDS
  add constraint DASHBOARDS_PK primary key (DASHBOARDID);
alter table CONSOLE_DASHBOARDS
  add constraint PARAGRAPHS_JSON
  check (paragraphs IS JSON);
alter table CONSOLE_DASHBOARDS
  add constraint REPORTS_JSON
  check (reports IS JSON);

prompt
prompt Creating table CONSOLE_SPACES
prompt =============================
prompt
create table CONSOLE_SPACES
(
  spaceid       VARCHAR2(60) not null,
  name          VARCHAR2(25),
  connectid     VARCHAR2(60),
  type          VARCHAR2(10),
  lastvisittime DATE,
  subjects      CLOB,
  groupids      CLOB,
  subjectids    CLOB,
  userid        VARCHAR2(60),
  topics        CLOB,
  createtime    VARCHAR2(50),
  lastmodified  DATE,
  last_modified DATE
)
;
alter table CONSOLE_SPACES
  add constraint CONSOLE_SPACES_PK primary key (SPACEID);
alter table CONSOLE_SPACES
  add constraint CONSOLE_SPACES_GROUPIDS_JSON
  check (groupids IS JSON);
alter table CONSOLE_SPACES
  add constraint CONSOLE_SPACES_SUBJECTS_JSON
  check (subjects IS JSON);
alter table CONSOLE_SPACES
  add constraint SUBJECTIDS_JSON
  check (subjectids IS JSON);
alter table CONSOLE_SPACES
  add constraint TOPICS
  check (topics IS JSON);

prompt
prompt Creating table CONSOLE_SPACE_FAVORITES
prompt ======================================
prompt
create table CONSOLE_SPACE_FAVORITES
(
  userid            VARCHAR2(60) not null,
  connectedspaceids CLOB,
  dashboardids      CLOB,
  createtime        VARCHAR2(50),
  last_modified     DATE,
  lastmodified      DATE
)
;
alter table CONSOLE_SPACE_FAVORITES
  add constraint FAVORITES_PK primary key (USERID);
alter table CONSOLE_SPACE_FAVORITES
  add constraint CONNECTEDSPACEIDS_JSON
  check (connectedspaceids IS JSON);
alter table CONSOLE_SPACE_FAVORITES
  add constraint DASHBOARDIDS
  check (dashboardids IS JSON);

prompt
prompt Creating table CONSOLE_SPACE_GRAPH
prompt ==================================
prompt
create table CONSOLE_SPACE_GRAPH
(
  connectid     VARCHAR2(60) not null,
  userid        VARCHAR2(60),
  topics        CLOB,
  subjects      CLOB,
  createtime    VARCHAR2(25),
  lastmodified  DATE,
  last_modified DATE
)
;
alter table CONSOLE_SPACE_GRAPH
  add constraint GRAPH_PK primary key (CONNECTID);
alter table CONSOLE_SPACE_GRAPH
  add constraint SUBJECTS_JSON
  check (subjects IS JSON);
alter table CONSOLE_SPACE_GRAPH
  add constraint TOPICS_JSON
  check (topics IS JSON);

prompt
prompt Creating table CONSOLE_SPACE_LAST_SNAPSHOT
prompt ==========================================
prompt
create table CONSOLE_SPACE_LAST_SNAPSHOT
(
  language         VARCHAR2(5),
  lastdashboardid  VARCHAR2(25),
  admindashboardid VARCHAR2(25),
  favoritepin      VARCHAR2(5),
  userid           VARCHAR2(60) not null,
  createtime       VARCHAR2(50),
  lastmodified     DATE
)
;
alter table CONSOLE_SPACE_LAST_SNAPSHOT
  add constraint LAST_SNAPSHOT_PK primary key (USERID);

prompt
prompt Creating table CONSOLE_SPACE_SUBJECTS
prompt =====================================
prompt
create table CONSOLE_SPACE_SUBJECTS
(
  subjectid      VARCHAR2(60) not null,
  name           VARCHAR2(50) not null,
  topiccount     NUMBER(5),
  graphicscount  NUMBER(5),
  reports        CLOB,
  reportids      CLOB,
  dataset        CLOB,
  lastvisittime  DATE,
  createdat      VARCHAR2(50),
  last_modified  DATE,
  lastmodifytime DATE,
  createtime     VARCHAR2(50)
)
;
alter table CONSOLE_SPACE_SUBJECTS
  add constraint CONSOLE_SPACE_SUBJECTS_PK primary key (SUBJECTID);

prompt
prompt Creating table ENUMS
prompt ====================
prompt
create table ENUMS
(
  enumid       VARCHAR2(60) not null,
  name         VARCHAR2(25) not null,
  description  VARCHAR2(25),
  parentenumid VARCHAR2(60),
  items        CLOB,
  createtime   VARCHAR2(50),
  lastmodified DATE
)
;
alter table ENUMS
  add constraint ENUMS_PK primary key (ENUMID);
alter table ENUMS
  add constraint ITEMS_JSON
  check (ITEMS IS JSON);

prompt
prompt Creating table PIPELINES
prompt ========================
prompt
create table PIPELINES
(
  pipelineid    VARCHAR2(60) not null,
  topicid       VARCHAR2(60) not null,
  name          VARCHAR2(25) not null,
  type          VARCHAR2(20),
  stages        CLOB,
  conditional   VARCHAR2(5),
  enabled       VARCHAR2(5),
  "on"          CLOB,
  createtime    VARCHAR2(25),
  last_modified DATE,
  lastmodified  DATE
)
;
comment on column PIPELINES.enabled
  is '''';
alter table PIPELINES
  add constraint PIPELINES_PK primary key (PIPELINEID);
alter table PIPELINES
  add constraint PIPELINES_ON_JSON
  check ("on" IS JSON);
alter table PIPELINES
  add constraint PIPELINES_STAGES_JSON
  check (stages IS JSON);

prompt
prompt Creating table PIPELINE_GRAPH
prompt =============================
prompt
create table PIPELINE_GRAPH
(
  pipelinegraphid VARCHAR2(60) not null,
  userid       VARCHAR2(60) not null,
  name         VARCHAR2(50),
  topics       CLOB,
  lastmodified DATE,
  createtime   VARCHAR2(25)
)
;
alter table PIPELINE_GRAPH
  add constraint PIPELINEGRAPH_PK primary key (pipelinegraphid);
alter table PIPELINE_GRAPH
  add constraint PIPELINE_GRAPH_TOPICS_JSON
  check (topics IS JSON);

prompt
prompt Creating table PRESTO_SCHEMA
prompt ============================
prompt
create table PRESTO_SCHEMA
(
  schema_id  VARCHAR2(60) not null,
  table_name VARCHAR2(50),
  fields     CLOB
)
;
alter table PRESTO_SCHEMA
  add constraint PRESTO_SCHEMA_PK primary key (SCHEMA_ID);
alter table PRESTO_SCHEMA
  add constraint PRESTO_SCHEMA_FIELDS_JSON
  check (fields IS JSON);

prompt
prompt Creating table SPACES
prompt =====================
prompt
create table SPACES
(
  spaceid       VARCHAR2(60) not null,
  topicids      CLOB,
  groupids      CLOB,
  name          VARCHAR2(25),
  description   VARCHAR2(25),
  createtime    VARCHAR2(50),
  last_modified DATE,
  lastmodified  DATE
)
;
alter table SPACES
  add constraint SPACES_PK primary key (SPACEID);
alter table SPACES
  add constraint GROUPIDS
  check (groupids IS JSON);
alter table SPACES
  add constraint TOPICIDS_JSON
  check (topicids IS JSON);

prompt
prompt Creating table TOPICS
prompt =====================
prompt
create table TOPICS
(
  topicid       VARCHAR2(60) not null,
  name          VARCHAR2(40) not null,
  kind          VARCHAR2(10),
  type          VARCHAR2(10),
  description   VARCHAR2(50),
  factors       CLOB,
  createtime    VARCHAR2(50),
  last_modified DATE,
  lastmodified  DATE
)
;
alter table TOPICS
  add constraint TOPICS_PK primary key (TOPICID);
alter table TOPICS
  add constraint FACTORS_JSON
  check (FACTORS IS JSON);

prompt
prompt Creating table USERS
prompt ====================
prompt
create table USERS
(
  userid       VARCHAR2(60) not null,
  name         VARCHAR2(45),
  nickname     VARCHAR2(45),
  password     VARCHAR2(100),
  is_active    VARCHAR2(5),
  role         VARCHAR2(45),
  createtime   VARCHAR2(50),
  lastmodified DATE,
  groupids     CLOB
)
;
alter table USERS
  add constraint USERS_PRIMARY_KEY primary key (USERID);
alter table USERS
  add constraint GROUPIDS_JSON
  check (groupids IS JSON);

prompt
prompt Creating table USER_GROUPS
prompt ==========================
prompt
create table USER_GROUPS
(
  usergroupid  VARCHAR2(60) not null,
  name         VARCHAR2(45) not null,
  description  VARCHAR2(45),
  userids      CLOB,
  spaceids     CLOB,
  createtime   VARCHAR2(50),
  lastmodified DATE
)
;
alter table USER_GROUPS
  add constraint USER_GROUPS_PK primary key (USERGROUPID);
alter table USER_GROUPS
  add constraint USER_GROUPS_SPACEIDS_JSON
  check (spaceids IS JSON);
alter table USER_GROUPS
  add constraint USER_GROUPS_USERIDS_JSON
  check (userids IS JSON);


-- Create table
create table REPORTS
(
  reportid      VARCHAR2(60) not null,
  name          VARCHAR2(50),
  indicators    CLOB,
  dimensions    CLOB,
  description   VARCHAR2(50),
  rect          CLOB,
  chart         CLOB,
  createdat     VARCHAR2(50),
  lastvisittime VARCHAR2(50),
  lastmodified  DATE,
  createtime    VARCHAR2(50)
)
;
-- Create/Recreate primary, unique and foreign key constraints
alter table REPORTS
  add constraint REPORTS_PK primary key (REPORTID)
-- Create/Recreate check constraints
alter table REPORTS
  add constraint REPORTS_CHART_JSON
  check (chart IS JSON);
alter table REPORTS
  add constraint REPORTS_DIMENSIONS_JSON
  check (dimensions IS JSON);
alter table REPORTS
  add constraint REPORTS_INDICATORS_JSON
  check (indicators IS JSON);
alter table REPORTS
  add constraint REPORTS_RECT_JSON
  check (rect IS JSON);


spool off
