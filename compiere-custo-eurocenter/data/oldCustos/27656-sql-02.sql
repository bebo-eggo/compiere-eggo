ALTER TABLE Z_OrderPaymScheduleLine MODIFY M_Product_ID NUMBER(10) DEFAULT NULL;
ALTER TABLE Z_OrderPaymScheduleLine MODIFY M_Product_ID NOT NULL; 
ALTER TABLE Z_OrderPaymScheduleLine ADD CONSTRAINT FK1000962_1007164 FOREIGN KEY (M_Product_ID) REFERENCES M_Product (M_Product_ID);