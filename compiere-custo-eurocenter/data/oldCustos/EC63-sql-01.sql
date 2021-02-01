ALTER TABLE I_PosOrderPayment ADD PayReceived NUMBER DEFAULT 0;
call syncposdatabase('ALTER TABLE I_PosOrderPayment ADD PayReceived NUMBER DEFAULT 0');
ALTER TABLE C_Payment ADD PayReceived NUMBER DEFAULT 0;
call syncposdatabase('CREATE TABLE "Z_UPC" ("AD_CLIENT_ID" NUMBER(10,0) NOT NULL ENABLE, "AD_ORG_ID" NUMBER(10,0) NOT NULL ENABLE, "CREATED" DATE DEFAULT SYSDATE NOT NULL ENABLE, "CREATEDBY" NUMBER(10,0) DEFAULT 0 NOT NULL ENABLE, "ISACTIVE" CHAR(1 BYTE) DEFAULT ''Y'' NOT NULL ENABLE, "UPDATED" DATE DEFAULT SYSDATE NOT NULL ENABLE, "UPDATEDBY" NUMBER(10,0) DEFAULT 0 NOT NULL ENABLE, "Z_UPC_ID" NUMBER(10,0),"UPC" NVARCHAR2(30), "M_PRODUCT_ID" NUMBER(10,0) NOT NULL ENABLE, CHECK (IsActive IN (''Y'',''N'')) ENABLE, CONSTRAINT "Z_UPC_UK1" UNIQUE ("AD_CLIENT_ID", "M_PRODUCT_ID", "UPC"))');
insert into Z_UPC@ath select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@sav select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@wavre select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@philippeville select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@ciney select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@baileux select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@bouge select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@erpent select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@dinant select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@libramont select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@marche select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@soignies select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@marcinelle select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@lalouviere select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@boussu select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@beauraing select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@malmedy select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@haccourt select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@bastogne select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@aubel select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@huy select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@neupre select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@braderie select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@jumet select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@rocourt select * from Z_UPC where ad_client_id = 1000022;
insert into Z_UPC@boisdevillers select * from Z_UPC where ad_client_id = 1000022;
update ad_table set ISDOWNSYNCHRONIZED='Y',SYNCSEQUENCE=150 where tableName='Z_UPC';

ALTER TABLE C_OrderLine ADD Z_OrigOrderline_ID NUMBER(10);
ALTER TABLE I_PosOrderline ADD Z_OrigOrderline_ID NUMBER(10);
call syncposdatabase('ALTER TABLE I_PosOrderline ADD Z_OrigOrderline_ID NUMBER(10)');