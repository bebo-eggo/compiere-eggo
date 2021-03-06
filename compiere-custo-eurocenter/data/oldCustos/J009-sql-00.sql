CREATE TABLE Z_PosPaymentRule (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE DEFAULT SYSDATE NOT NULL, CreatedBy NUMBER(10) DEFAULT 0 NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsUsedInClosingPOS CHAR(1) DEFAULT 'N' CHECK (IsUsedInClosingPOS IN ('Y','N')), Name NVARCHAR2(22), Updated DATE DEFAULT SYSDATE NOT NULL, UpdatedBy NUMBER(10) DEFAULT 0 NOT NULL, Z_PosPaymentRule_ID NUMBER(10) NOT NULL, CONSTRAINT PK1000965 PRIMARY KEY (Z_PosPaymentRule_ID));


CREATE TABLE Z_PosClosing (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Amount NUMBER, Created DATE DEFAULT SYSDATE NOT NULL, CreatedBy NUMBER(10) DEFAULT 0 NOT NULL, DateClosed DATE, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Updated DATE DEFAULT SYSDATE NOT NULL, UpdatedBy NUMBER(10) DEFAULT 0 NOT NULL, Z_PosPaymentRule_ID NUMBER(10), Z_PosClosing_ID NUMBER(10) NOT NULL, CONSTRAINT PK1000963 PRIMARY KEY (Z_PosClosing_ID));
ALTER TABLE Z_PosClosing ADD CONSTRAINT FK1000963_1007191 FOREIGN KEY (Z_PosPaymentRule_ID) REFERENCES Z_PosPaymentRule (Z_PosPaymentRule_ID);
ALTER TABLE Z_PosClosing ADD CONSTRAINT FK1000963_1007183 FOREIGN KEY (AD_Client_ID) REFERENCES AD_Client (AD_Client_ID);


delete ad_ref_list where ad_reference_id in (select ad_reference_id from ad_reference where upper(name) = 'POSPAIEMENT');
delete from ad_reference where upper(name) = 'POSPAIEMENT';
drop table ZSUBPAYMENTRULE;
CREATE TABLE "ZSUBPAYMENTRULE"
  (
    "CREATEDBY" NUMBER(10,0),
    "UPDATED" DATE,
    "UPDATEDBY" NUMBER(10,0),
    "ISACTIVE"  CHAR(1 BYTE) DEFAULT ('Y') NOT NULL ENABLE,
    "CREATED" DATE,
    "ZSUBPAYMENTRULE_ID" NUMBER(10,0),
    "AD_CLIENT_ID"       NUMBER(10,0),
    "NAME" NVARCHAR2(120),
    "AD_ORG_ID"         NUMBER(10,0),
    "BYDUEDATE"         CHAR(1 BYTE) DEFAULT ('N'),
    "EUROONLY"          CHAR(1 BYTE) DEFAULT ('Y'),
    "C_DOCTYPE_ID"      NUMBER(10,0),
    "VERIFYACCOUNT"     CHAR(1 BYTE) DEFAULT ('Y'),
    "Z_EXPFORMAT_ID"    NUMBER(10,0),
    "AD_PRINTFORMAT_ID" NUMBER(10,0),
    "VALUE" NVARCHAR2(60),
    "AD_PROCESS_ID"       NUMBER(10,0),
    "Z_POSPAYMENTRULE_ID" NUMBER(10,0) DEFAULT NULL,
    CONSTRAINT "ZSUBPAYMENTRULE_ID" PRIMARY KEY ("ZSUBPAYMENTRULE_ID") USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT) TABLESPACE "USERS" ENABLE,
    CONSTRAINT "FK1000126_1005566" FOREIGN KEY ("Z_POSPAYMENTRULE_ID") REFERENCES "Z_POSPAYMENTRULE" ("Z_POSPAYMENTRULE_ID") ENABLE
  );
  
update ad_column set isactive = 'N' where columnname = 'ZPaymentRule' and ad_table_id in ( select ad_table_id from ad_table where tablename = 'ZSubPaymentRule'); 
delete ad_column  where columnname = 'ZPaymentRule' and ad_table_id in ( select ad_table_id from ad_table where tablename = 'ZSubPaymentRule');   
