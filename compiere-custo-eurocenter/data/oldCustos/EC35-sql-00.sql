ALTER TABLE C_OrderLine ADD Z_SerNo NVARCHAR2(50);
ALTER TABLE C_InvoiceLine ADD Z_SerNo NVARCHAR2(50);
ALTER TABLE Z_OrgPOS ADD PosAction_SalesmanEdit_ID NUMBER(10) DEFAULT 0 NOT NULL