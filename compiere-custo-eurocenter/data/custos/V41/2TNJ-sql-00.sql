ALTER TABLE C_BP_Group ADD CONSTRAINT C_BP_GROUP_PK PRIMARY KEY (C_BP_Group_ID);
ALTER TABLE C_Order ADD C_BP_Group_ID NUMBER(10);
ALTER TABLE C_Order ADD CONSTRAINT FK259_1036562X FOREIGN KEY (C_BP_Group_ID) REFERENCES C_BP_Group (C_BP_Group_ID);
ALTER TABLE C_Invoice ADD C_BP_Group_ID NUMBER(10); 
ALTER TABLE C_Invoice ADD CONSTRAINT FK318_1036563X FOREIGN KEY (C_BP_Group_ID) REFERENCES C_BP_Group (C_BP_Group_ID);
Update C_Order set C_BP_GROUP_ID = (select C_BP_GROUP_ID from C_BPARTNER where C_BPARTNER.C_BPARTNER_ID = C_Order.C_BPARTNER_ID);
Update C_Invoice set C_BP_GROUP_ID = (select C_BP_GROUP_ID from C_BPARTNER where C_BPARTNER.C_BPARTNER_ID = C_Invoice.C_BPARTNER_ID);
commit;