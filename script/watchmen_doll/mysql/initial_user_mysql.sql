    insert into USERS (USERID, NAME, NICKNAME, PASSWORD, IS_ACTIVE, ROLE, CREATETIME, LASTMODIFIED, TENANTID)
    values ('2', 'imma-console', null, '$2b$12$zt6JK0SdYuYr2WSlL7v.iOLFpH67JEhzATMf.MmccEO2GJvrJMheW', '1', 'user', null, now(), '1');

    insert into USERS (USERID, NAME, NICKNAME, PASSWORD, IS_ACTIVE, ROLE, CREATETIME, LASTMODIFIED, TENANTID)
    values ('3', 'imma-super', null, '$2b$12$v5yHhyCW1sxNjZT9NKiIZuQU3mSaoC6CZkjJCgm.CD2sReTrBaOxO', '1', 'superadmin', null, now(), '1');

    insert into USERS (USERID, NAME, NICKNAME, PASSWORD, IS_ACTIVE, ROLE, CREATETIME, LASTMODIFIED, TENANTID)
    values ('2802229369383682048', 'imma-admin', null, '$2b$12$v5yHhyCW1sxNjZT9NKiIZuQU3mSaoC6CZkjJCgm.CD2sReTrBaOxO', '1', 'admin', null, now(), '1');

    insert into PATS (PATID, TOKENID, USERID, TENANTID,NOTE, EXPIRED ,PERMISSIONS,CREATETIME, LASTMODIFIED,USERNAME)
    values ('1', 'kUWBTfFL_rclOQ0r7_IRDB', "3", '1', 'super pat', null, null,null, now(), 'imma-super');