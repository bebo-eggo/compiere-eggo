CREATE TABLE "Z_ORDERPAYMENT"
  (
    "AD_CLIENT_ID"     NUMBER(10,0) NOT NULL ENABLE,
    "AD_ORG_ID"        NUMBER(10,0) NOT NULL ENABLE,
    "C_BANKACCOUNT_ID" NUMBER(10,0) NOT NULL ENABLE,
    "C_PAYMENT_ID"     NUMBER(10,0),
    "CREATED" DATE DEFAULT SYSDATE NOT NULL ENABLE,
    "CREATEDBY" NUMBER(10,0) DEFAULT 0 NOT NULL ENABLE,
    "DATETRX" DATE NOT NULL ENABLE,
    "ISACTIVE" CHAR(1 BYTE) DEFAULT 'Y' NOT NULL ENABLE,
    "PAYAMT"   NUMBER DEFAULT 0 NOT NULL ENABLE,
    "UPDATED" DATE DEFAULT SYSDATE NOT NULL ENABLE,
    "UPDATEDBY"              NUMBER(10,0) DEFAULT 0 NOT NULL ENABLE,
    "Z_ORDERPAYMENT_ID"      NUMBER(10,0) NOT NULL ENABLE,
    "Z_ORDERPAYMSCHEDULE_ID" NUMBER(10,0) NOT NULL ENABLE,
    "ZSUBPAYMENTRULE_ID"     NUMBER(10,0) NOT NULL ENABLE,
    CHECK (IsActive IN ('Y','N')) ENABLE,
    CONSTRAINT "PK1001795" PRIMARY KEY ("Z_ORDERPAYMENT_ID") USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT) TABLESPACE "COMPIERE_IDX" ENABLE,
    CONSTRAINT "FK1001795_1011357" FOREIGN KEY ("AD_CLIENT_ID") REFERENCES "AD_CLIENT" ("AD_CLIENT_ID") ENABLE
  )
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE
  (
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT
  )
  TABLESPACE "COMPIERE_DATA" ;