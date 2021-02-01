ALTER TABLE T_Replenish ADD M_Product_Category_ID NUMBER(10); 
ALTER TABLE T_Replenish ADD CONSTRAINT FK364_1027280X FOREIGN KEY (M_Product_Category_ID) REFERENCES M_Product_Category (M_Product_Category_ID);
ALTER TABLE T_Replenish ADD Z_S_Famille_ID NUMBER(10); 
ALTER TABLE T_Replenish ADD CONSTRAINT FK364_1027281X FOREIGN KEY (Z_S_Famille_ID) REFERENCES Z_S_Famille (Z_S_Famille_ID);
ALTER TABLE T_Replenish ADD Z_S_S_Famille_ID NUMBER(10); 
ALTER TABLE T_Replenish ADD CONSTRAINT FK364_1027282X FOREIGN KEY (Z_S_S_Famille_ID) REFERENCES Z_S_S_Famille (Z_S_S_Famille_ID);
ALTER TABLE T_Replenish ADD Z_S_S_S_Famille_ID NUMBER(10); 
ALTER TABLE T_Replenish ADD CONSTRAINT FK364_1027283X FOREIGN KEY (Z_S_S_S_Famille_ID) REFERENCES Z_S_S_S_Famille (Z_S_S_S_Famille_ID);
ALTER TABLE T_Replenish ADD SalesRep_ID NUMBER(10); 
ALTER TABLE T_Replenish ADD CONSTRAINT FK364_1027284X FOREIGN KEY (SalesRep_ID) REFERENCES AD_User (AD_User_ID)