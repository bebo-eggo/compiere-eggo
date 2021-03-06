CREATE TABLE Z_UPC
  (
    AD_Client_ID NUMBER(10) NOT NULL,
    AD_Org_ID    NUMBER(10) NOT NULL,
    Created DATE DEFAULT SYSDATE NOT NULL,
    CreatedBy NUMBER(10) DEFAULT 0 NOT NULL,
    IsActive  CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL,
    Updated DATE DEFAULT SYSDATE NOT NULL,
    UpdatedBy NUMBER(10) DEFAULT 0 NOT NULL,
    Z_UPC_ID  NUMBER(10)
  );
ALTER TABLE Z_UPC ADD UPC NVARCHAR2(30);
ALTER TABLE Z_UPC ADD M_Product_ID NUMBER(10) NOT NULL; ALTER TABLE Z_UPC ADD CONSTRAINT FK1003578_1022159 FOREIGN KEY (M_Product_ID) REFERENCES M_Product (M_Product_ID);