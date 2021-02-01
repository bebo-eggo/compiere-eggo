CREATE TABLE "Z_ORDERMSG"
(
    "Z_ORDERMSG_ID" NUMBER(10,0) NOT NULL,
    "AD_CLIENT_ID"  NUMBER(10,0) NOT NULL ENABLE,
    "AD_MESSAGE_ID" NUMBER(10,0) NOT NULL ENABLE,
    "AD_ORG_ID"     NUMBER(10,0) NOT NULL ENABLE,
    "C_ORDER_ID"    NUMBER(10,0) NOT NULL ENABLE,
    "CREATED" DATE DEFAULT SYSDATE NOT NULL ENABLE,
    "CREATEDBY" NUMBER(10,0) DEFAULT 0 NOT NULL ENABLE,
    "ISACTIVE"  CHAR(1 BYTE) DEFAULT 'Y' NOT NULL ENABLE,
    "UPDATED" DATE DEFAULT SYSDATE NOT NULL ENABLE,
    "UPDATEDBY" NUMBER(10,0) DEFAULT 0 NOT NULL ENABLE,
    CHECK (IsActive IN ('Y','N')) ENABLE,
    CONSTRAINT "PK1001283" PRIMARY KEY ("Z_ORDERMSG_ID")
);
  
CREATE TABLE "I_POSORDERMSG"
(
    "I_POSORDERMSG_ID" NUMBER(10,0) NOT NULL,
    "AD_CLIENT_ID"  NUMBER(10,0) NOT NULL ENABLE,
    "AD_MESSAGE_ID" NUMBER(10,0),
    "AD_ORG_ID"     NUMBER(10,0) NOT NULL ENABLE,
    "CREATED" DATE DEFAULT SYSDATE NOT NULL ENABLE,
    "CREATEDBY" NUMBER(10,0) DEFAULT 0 NOT NULL ENABLE,
    "DESCRIPTION" NVARCHAR2(60),
    "I_POSORDER_ID" NUMBER(10,0) NOT NULL ENABLE,
    "ISACTIVE"      CHAR(1 BYTE) DEFAULT 'Y' NOT NULL ENABLE,
    "UPDATED" DATE DEFAULT SYSDATE NOT NULL ENABLE,
    "UPDATEDBY" NUMBER(10,0) DEFAULT 0 NOT NULL ENABLE,
    CHECK (IsActive IN ('Y','N')) ENABLE,
    CONSTRAINT "PK1001284" PRIMARY KEY ("I_POSORDERMSG_ID")
);