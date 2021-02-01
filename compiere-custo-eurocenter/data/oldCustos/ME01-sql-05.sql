ALTER TABLE Z_OrgPOS ADD PO_PriceList_ID NUMBER(10); 
ALTER TABLE Z_OrgPOS ADD CONSTRAINT FK1002310_1030179 FOREIGN KEY (PO_PriceList_ID) REFERENCES M_PriceList (M_PriceList_ID);
ALTER TABLE Z_OrgPOS ADD DOCTYPE_Requisition_ID NUMBER(10);
ALTER TABLE Z_OrgPOS ADD CONSTRAINT FK1002310_1030180 FOREIGN KEY (DOCTYPE_Requisition_ID) REFERENCES C_DocType (C_DocType_ID);
ALTER TABLE Z_OrgPOS ADD Vendor_For_Requisition_ID NUMBER(10);
ALTER TABLE Z_OrgPOS ADD CONSTRAINT FK1002310_1030181 FOREIGN KEY (Vendor_For_Requisition_ID) REFERENCES AD_User (AD_User_ID);
ALTER TABLE Z_OrgPOS ADD C_Charge_ID NUMBER(10);
ALTER TABLE Z_OrgPOS ADD CONSTRAINT FK1002310_1030182 FOREIGN KEY (C_Charge_ID) REFERENCES C_Charge (C_Charge_ID);
update Z_OrgPOS set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
--Update Magasin
update Z_OrgPOS@rhisnes set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@ath set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@sav set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@wavre set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@philippeville set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@ciney set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@baileux set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@bouge set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@erpent set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@dinant set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@libramont set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@marche set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@soignies set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@marcinelle set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@lalouviere set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@boussu set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@beauraing set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@malmedy set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@haccourt set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@bastogne set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@aubel set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@huy set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@neupre set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@braderie set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@jumet set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@rocourt set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
update Z_OrgPOS@boisdevillers set Updated = sysdate, PO_PriceList_ID = 1000722, DOCTYPE_Requisition_ID = 1000130,Vendor_For_Requisition_ID = 1014791,C_Charge_ID = 1000335;
