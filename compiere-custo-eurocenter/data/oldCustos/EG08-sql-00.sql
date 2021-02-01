CREATE TABLE Z_OrderShip (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, 
             C_Order_ID NUMBER(10) NOT NULL, C_OrderLine_ID NUMBER(10) NOT NULL, 
             Created DATE DEFAULT SYSDATE NOT NULL, CreatedBy NUMBER(10) DEFAULT 0 NOT NULL, 
             IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, 
             M_Product_ID NUMBER(10) NOT NULL, QtyToDeliver NUMBER DEFAULT 0 NOT NULL, 
             Updated DATE DEFAULT SYSDATE NOT NULL, UpdatedBy NUMBER(10) DEFAULT 0 NOT NULL, 
             Z_OrderShip_ID NUMBER(10) NOT NULL, 
             CONSTRAINT PK1001895 PRIMARY KEY (Z_OrderShip_ID));
ALTER TABLE Z_OrderShip ADD CONSTRAINT FK1001895_1011458 FOREIGN KEY (AD_Client_ID) 
      REFERENCES AD_Client (AD_Client_ID);
ALTER TABLE C_Order ADD PrepareShip CHAR(1) DEFAULT 'N';
ALTER TABLE C_Order ADD GenerateShip CHAR(1) DEFAULT 'N';
ALTER TABLE Z_OrderShip ADD Description NVARCHAR2(60);
create index payschorderidx on Z_Orderpaymschedule (C_Order_id);
create index ORDERPAYMSCHEDULEIDX on Z_ORDERPAYMENT (Z_ORDERPAYMSCHEDULE_ID);
ALTER TABLE C_Order ADD TotalInvSched NUMBER DEFAULT 0;
ALTER TABLE C_Order ADD TotalPaySched NUMBER DEFAULT 0;
ALTER TABLE Z_OrderShip MODIFY Description NVARCHAR2(250);

