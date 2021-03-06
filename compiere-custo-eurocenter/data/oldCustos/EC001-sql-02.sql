CREATE TABLE Z_S_S_S_FAMILLE
  (
    "AD_CLIENT_ID" NUMBER(10,0) NOT NULL ENABLE,
    "AD_ORG_ID"    NUMBER(10,0) DEFAULT NULL NOT NULL ENABLE,
    "CREATED" DATE DEFAULT SYSDATE NOT NULL ENABLE,
    "CREATEDBY" NUMBER(10,0) DEFAULT 0 NOT NULL ENABLE,
    "ISACTIVE"  CHAR(1 BYTE) DEFAULT 'Y' NOT NULL ENABLE,
    "UPDATED" DATE DEFAULT SYSDATE NOT NULL ENABLE,
    "UPDATEDBY"          NUMBER(10,0) DEFAULT 0 NOT NULL ENABLE,
    "Z_S_S_S_FAMILLE_ID" NUMBER(10,0) NOT NULL ENABLE,
    "Z_S_S_FAMILLE_ID"   NUMBER(10,0) NOT NULL ENABLE,
    "VALUE" NVARCHAR2(40) DEFAULT NULL NOT NULL ENABLE,
    "NAME" NVARCHAR2(60) DEFAULT NULL NOT NULL ENABLE,
    CHECK (IsActive IN ('Y','N')) ENABLE,
    CONSTRAINT "FKSSSFAMI_KEY" PRIMARY KEY ("Z_S_S_S_FAMILLE_ID"),
    CONSTRAINT "FKSSSFAMI_SSFAMI" FOREIGN KEY ("Z_S_S_FAMILLE_ID") REFERENCES Z_S_S_FAMILLE ("Z_S_S_FAMILLE_ID") ENABLE,
    CONSTRAINT "FKCLIENT_SSSFAMI" FOREIGN KEY ("AD_CLIENT_ID") REFERENCES AD_CLIENT ("AD_CLIENT_ID") ENABLE,
    CONSTRAINT "FKORG_SSSFAMI" FOREIGN KEY ("AD_ORG_ID") REFERENCES AD_ORG ("AD_ORG_ID") ENABLE
  );