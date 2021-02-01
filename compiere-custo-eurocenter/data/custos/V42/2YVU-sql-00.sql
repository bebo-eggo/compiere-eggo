CREATE TABLE XX_REMB_CLIENTS (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, 
BBAN NVARCHAR2(10), C_Invoice_ID NUMBER(10) NOT NULL, C_Order_ID NUMBER(10) NOT NULL, 
Created DATE DEFAULT SYSDATE NOT NULL, CreatedBy NUMBER(10) DEFAULT 0 NOT NULL, IBAN NVARCHAR2(50), 
IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, MONTANT NUMBER DEFAULT 0 NOT NULL, 
Processed CHAR(1) DEFAULT 'N' CHECK (Processed IN ('Y','N')) NOT NULL, Updated DATE DEFAULT SYSDATE NOT NULL, 
UpdatedBy NUMBER(10) DEFAULT 0 NOT NULL, XX_REMB_CLIENTS_ID NUMBER(10) NOT NULL, 
CONSTRAINT PK1007484 PRIMARY KEY (XX_REMB_CLIENTS_ID)); 
ALTER TABLE XX_REMB_CLIENTS ADD CONSTRAINT FK1007484_1036686X FOREIGN KEY (AD_Client_ID) REFERENCES AD_Client (AD_Client_ID);
CREATE TABLE XX_REMB_SELECTION (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, 
C_BankAccount_ID NUMBER(10) NOT NULL, C_DocType_ID NUMBER(10) NOT NULL, Created DATE DEFAULT SYSDATE NOT NULL, 
CreatedBy NUMBER(10) DEFAULT 0 NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, 
Name NVARCHAR2(50), Processed CHAR(1) DEFAULT 'N' CHECK (Processed IN ('Y','N')) NOT NULL, Processing2 CHAR(1), 
Updated DATE DEFAULT SYSDATE NOT NULL, UpdatedBy NUMBER(10) DEFAULT 0 NOT NULL, XX_REMB_SELECTION_ID NUMBER(10) NOT NULL, 
ZExport CHAR(1), CONSTRAINT PK1007485 PRIMARY KEY (XX_REMB_SELECTION_ID)); 
CREATE TABLE XX_REMB_SEL_LIGNE (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, BBAN NVARCHAR2(50), 
C_Payment_ID NUMBER(10), Created DATE DEFAULT SYSDATE NOT NULL, CreatedBy NUMBER(10) DEFAULT 0 NOT NULL, IBAN NVARCHAR2(50),
IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, MONTANT NUMBER, Updated DATE DEFAULT SYSDATE NOT NULL,
UpdatedBy NUMBER(10) DEFAULT 0 NOT NULL, XX_REMB_SELECTION_ID NUMBER(10) NOT NULL, XX_REMB_SEL_LIGNE_ID NUMBER(10) NOT NULL, 
CONSTRAINT PK1007486 PRIMARY KEY (XX_REMB_SEL_LIGNE_ID));
ALTER TABLE XX_REMB_SEL_LIGNE ADD CONSTRAINT FK1007486_1036726X FOREIGN KEY (C_Payment_ID) REFERENCES C_Payment (C_Payment_ID);
ALTER TABLE XX_REMB_SELECTION ADD DocumentNo NVARCHAR2(50); 
ALTER TABLE XX_REMB_SEL_LIGNE ADD XX_REMB_CLIENTS_ID NUMBER(10); 
ALTER TABLE XX_REMB_SEL_LIGNE ADD CONSTRAINT FK1007486_1036728X FOREIGN KEY (XX_REMB_CLIENTS_ID) REFERENCES XX_REMB_CLIENTS (XX_REMB_CLIENTS_ID);
ALTER TABLE XX_REMB_SELECTION ADD ExportFormat CHAR(1); 
ALTER TABLE XX_REMB_SELECTION ADD ZSubPaymentRule_ID NUMBER(10);
ALTER TABLE XX_REMB_SELECTION ADD CONSTRAINT FK1007485_1036730X FOREIGN KEY (ZSubPaymentRule_ID) REFERENCES ZSubPaymentRule (ZSubPaymentRule_ID);
ALTER TABLE XX_REMB_SELECTION ADD DateTrx DATE; 
ALTER TABLE XX_REMB_SELECTION ADD C_Currency_ID NUMBER(10); 
ALTER TABLE XX_REMB_SELECTION ADD CONSTRAINT FK1007485_1036732X FOREIGN KEY (C_Currency_ID) REFERENCES C_Currency (C_Currency_ID);
ALTER TABLE XX_REMB_CLIENTS ADD Name NVARCHAR2(50); 
ALTER TABLE XX_REMB_SEL_LIGNE ADD C_BPartner_ID NUMBER(10); 
ALTER TABLE XX_REMB_SEL_LIGNE ADD CONSTRAINT FK1007486_1036734X FOREIGN KEY (C_BPartner_ID) REFERENCES C_BPartner (C_BPartner_ID);
ALTER TABLE XX_REMB_SEL_LIGNE ADD C_Invoice_ID NUMBER(10); 
ALTER TABLE XX_REMB_SEL_LIGNE ADD CONSTRAINT FK1007486_1036735X FOREIGN KEY (C_Invoice_ID) REFERENCES C_Invoice (C_Invoice_ID);
ALTER TABLE XX_REMB_SEL_LIGNE ADD C_Order_ID NUMBER(10); 
ALTER TABLE XX_REMB_SEL_LIGNE ADD CONSTRAINT FK1007486_1036736X FOREIGN KEY (C_Order_ID) REFERENCES C_Order (C_Order_ID);