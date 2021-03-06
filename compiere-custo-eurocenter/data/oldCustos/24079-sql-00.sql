CREATE TABLE ZSubPaymentRule_Trl
  (
    AD_Client_ID NUMBER(10) NOT NULL,
    AD_Language  VARCHAR2(5) NOT NULL,
    AD_Org_ID    NUMBER(10) NOT NULL,
    Created DATE DEFAULT SYSDATE NOT NULL,
    CreatedBy    NUMBER(10) DEFAULT 0 NOT NULL,
    IsActive     CHAR(1) DEFAULT 'Y' CHECK (IsActive     IN ('Y','N')) NOT NULL,
    IsTranslated CHAR(1) DEFAULT 'N' CHECK (IsTranslated IN ('Y','N')) NOT NULL,
    Name NVARCHAR2(60),
    Updated DATE DEFAULT SYSDATE NOT NULL,
    UpdatedBy          NUMBER(10) DEFAULT 0 NOT NULL,
    ZSubPaymentRule_ID NUMBER(10) NOT NULL,
    CONSTRAINT ZSUBPAYMENTRULE_TRL_KEY PRIMARY KEY(ZSubPaymentRule_ID,AD_Language) Enable
  );

ALTER TABLE ZSubPaymentRule_Trl ADD CONSTRAINT FK1000872_1006934 FOREIGN KEY (AD_Client_ID) REFERENCES AD_Client (AD_Client_ID);

ALTER TABLE ZSubPaymentRule_Trl ADD CONSTRAINT FK1000872_1006935 FOREIGN KEY (AD_Org_ID) REFERENCES AD_Org (AD_Org_ID);

ALTER TABLE ZSubPaymentRule_Trl ADD CONSTRAINT FK1000872_1006943 FOREIGN KEY (AD_Language) REFERENCES AD_Language (AD_Language) ON DELETE CASCADE;

ALTER TABLE ZSubPaymentRule_Trl ADD CONSTRAINT FK1000872_1006941 FOREIGN KEY (ZSubPaymentRule_ID) REFERENCES ZSubPaymentRule (ZSubPaymentRule_ID) ON DELETE CASCADE;

UPDATE AD_Column
SET ISTRANSLATED ='Y'
WHERE COLUMNNAME ='Name'
AND AD_TABLE_ID  =
  (SELECT AD_TABLE_ID FROM AD_TABLE WHERE TABLENAME ='ZSubPaymentRule'
  );
