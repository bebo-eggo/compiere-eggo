CREATE TABLE Z_PosNumber (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE DEFAULT SYSDATE NOT NULL, CreatedBy NUMBER(10) DEFAULT 0 NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsPosOnline CHAR(1) DEFAULT 'N' CHECK (IsPosOnline IN ('Y','N')) NOT NULL, Updated DATE DEFAULT SYSDATE NOT NULL, UpdatedBy NUMBER(10) DEFAULT 0 NOT NULL, Value NVARCHAR2(4) NOT NULL, Z_PosNumber_ID NUMBER(10) NOT NULL, CONSTRAINT PK1000851 PRIMARY KEY (Z_PosNumber_ID));
ALTER TABLE Z_PosNumber ADD CONSTRAINT FK1000851_1006356 FOREIGN KEY (AD_Client_ID) REFERENCES AD_Client (AD_Client_ID);