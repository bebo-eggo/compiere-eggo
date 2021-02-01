CREATE TABLE Z_PoAcknoledgment
  (
    AD_Client_ID NUMBER(10) NOT NULL,
    AD_Org_ID    NUMBER(10) NOT NULL,
    C_Order_ID   NUMBER(10) NOT NULL,
    Created DATE DEFAULT SYSDATE NOT NULL,
    CreatedBy NUMBER(10) DEFAULT 0 NOT NULL,
    IsActive  CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL,
    Updated DATE DEFAULT SYSDATE NOT NULL,
    UpdatedBy     NUMBER(10) DEFAULT 0 NOT NULL,
    Z_ArAmt       NUMBER,
    Z_ArControled CHAR(1) DEFAULT 'N' CHECK (Z_ArControled IN ('Y','N')) NOT NULL,
    Z_ArDate DATE,
    Z_ArMain CHAR(1) DEFAULT 'Y' CHECK (Z_ArMain IN ('Y','N')) NOT NULL,
    Z_ArNumber NVARCHAR2(22) NOT NULL,
    Z_PoAcknoledgment_ID NUMBER(10) NOT NULL,
    CONSTRAINT PK1003363 PRIMARY KEY (C_Order_ID)
  );