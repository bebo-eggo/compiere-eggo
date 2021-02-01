--------------- Table C_Order

ALTER TABLE C_Order ADD PROM_BPartner_ID NUMBER(10);
ALTER TABLE C_Order ADD CONSTRAINT FK259_1031452 FOREIGN KEY (PROM_BPartner_ID) REFERENCES C_BPartner (C_BPartner_ID);

---------------- Table Z_OrderPaymSchedule

ALTER TABLE Z_OrderPaymSchedule ADD PROM_BPartner_ID NUMBER(10);
ALTER TABLE Z_OrderPaymSchedule ADD PROM_BPartner_Location_ID NUMBER(10);
ALTER TABLE Z_OrderPaymSchedule ADD PROM_Amount NUMBER Default 0;
ALTER TABLE Z_OrderPaymSchedule ADD PROM_INV CHAR(1);
ALTER TABLE Z_OrderPaymSchedule ADD PROM_INV_ID NUMBER(10);
ALTER TABLE Z_OrderPaymSchedule ADD CONSTRAINT FK1000961_1031458 FOREIGN KEY (PROM_INV_ID) REFERENCES C_Invoice (C_Invoice_ID);
ALTER TABLE Z_OrderPaymSchedule ADD PROM_Comments NVARCHAR2(255);


-----------------------------  Table Z_TypeEcheance

ALTER TABLE Z_TypeEcheance ADD IsProm CHAR(1) DEFAULT 'N' CHECK (IsProm IN ('Y','N'));
ALTER TABLE Z_TypeEcheance ADD M_Product_ID NUMBER(10);
ALTER TABLE Z_TypeEcheance ADD CONSTRAINT FK1001797_1031461 FOREIGN KEY (M_Product_ID) REFERENCES M_Product (M_Product_ID);