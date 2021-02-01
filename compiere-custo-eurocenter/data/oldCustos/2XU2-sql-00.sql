CREATE TABLE Z_Start_Balance (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE DEFAULT SYSDATE NOT NULL, CreatedBy NUMBER(10) DEFAULT 0 NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Updated DATE DEFAULT SYSDATE NOT NULL, UpdatedBy NUMBER(10) DEFAULT 0 NOT NULL, Z_Start_Balance_ID NUMBER(10) NOT NULL, CONSTRAINT PKX1007462 PRIMARY KEY (Z_Start_Balance_ID));
ALTER TABLE Z_Start_Balance ADD C_ElementValue_ID NUMBER(10); 
ALTER TABLE Z_Start_Balance ADD CONSTRAINT FKX1007462_1035965 FOREIGN KEY (C_ElementValue_ID) REFERENCES C_ElementValue (C_ElementValue_ID);
ALTER TABLE Z_Start_Balance ADD DateFrom DATE;
ALTER TABLE Z_Start_Balance ADD Value NVARCHAR2(50);
ALTER TABLE Z_Start_Balance ADD GL_Category_ID NUMBER(10); 
ALTER TABLE Z_Start_Balance ADD CONSTRAINT FKX1007462_1035968 FOREIGN KEY (GL_Category_ID) REFERENCES GL_Category (GL_Category_ID);
ALTER TABLE Z_Start_Balance ADD Description NVARCHAR2(100);
ALTER TABLE Z_Start_Balance ADD Amount NUMBER;
ALTER TABLE Z_Start_Balance ADD AmtAcctCr NUMBER;
ALTER TABLE Z_Start_Balance ADD AmtAcctDr NUMBER;
ALTER TABLE Z_Start_Balance ADD C_Period_ID NUMBER(10);
ALTER TABLE Z_Start_Balance ADD CONSTRAINT FKX1007462_1035973 FOREIGN KEY (C_Period_ID) REFERENCES C_Period (C_Period_ID);
ALTER TABLE C_Period ADD CreateProcess CHAR(1);
CREATE TABLE Z_Export_Bal (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE DEFAULT SYSDATE NOT NULL, CreatedBy NUMBER(10) DEFAULT 0 NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, Updated DATE DEFAULT SYSDATE NOT NULL, UpdatedBy NUMBER(10) DEFAULT 0 NOT NULL, Z_Export_Bal_ID NUMBER(10) NOT NULL, CONSTRAINT PKX1007463 PRIMARY KEY (Z_Export_Bal_ID));
ALTER TABLE Z_Export_Bal ADD DateAcct DATE;
ALTER TABLE Z_Export_Bal ADD C_Period_ID NUMBER(10); 
ALTER TABLE Z_Export_Bal ADD CONSTRAINT FKX1007463_1035983 FOREIGN KEY (C_Period_ID) REFERENCES C_Period (C_Period_ID);
ALTER TABLE Z_Export_Bal ADD Type NVARCHAR2(6);
ALTER TABLE Z_Export_Bal ADD Value NVARCHAR2(50);
ALTER TABLE Z_Export_Bal ADD AD_PInstance_ID NUMBER(10); 
ALTER TABLE Z_Export_Bal ADD CONSTRAINT FKX1007463_1035987 FOREIGN KEY (AD_PInstance_ID) REFERENCES AD_PInstance (AD_PInstance_ID);
ALTER TABLE Z_Export_Bal ADD Description NVARCHAR2(255);
ALTER TABLE Z_Export_Bal ADD DocumentType NVARCHAR2(50);
ALTER TABLE Z_Export_Bal ADD Amount NUMBER;
ALTER TABLE Z_Export_Bal ADD AmtAcctCr NUMBER;
ALTER TABLE Z_Export_Bal ADD AmtAcctDr NUMBER;
ALTER TABLE Z_Export_Bal ADD Name NVARCHAR2(50);