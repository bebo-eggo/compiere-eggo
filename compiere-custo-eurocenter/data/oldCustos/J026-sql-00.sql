update ad_column set isActive = 'N' where name = 'IsGenConsignation'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction');
update ad_field set isactive = 'N' where ad_column_id in ( select ad_column_id from ad_column where name = 'IsGenConsignation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosWfAction')); 

update ad_column set isActive = 'N' where name = 'IsStockLocation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosActionActivity');
update ad_field set isactive = 'N' where ad_column_id in ( select ad_column_id from ad_column where name = 'IsStockLocation' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_PosActionActivity')); 

ALTER TABLE Z_PosWfAction ADD IsPosDisplay CHAR(1) DEFAULT 'N' CHECK (IsPosDisplay IN ('Y','N'));
ALTER TABLE Z_PosActionActivity ADD LocationComment NVARCHAR2(22);
ALTER TABLE Z_PosActionActivity ADD IsGenConsignation CHAR(1) DEFAULT 'N' CHECK (IsGenConsignation IN ('Y','N')) NOT NULL;
ALTER TABLE Z_PosWfAction ADD IsBODisplay CHAR(1) DEFAULT 'N' CHECK (IsBODisplay IN ('Y','N'));
ALTER TABLE Z_PosActionActivity ADD AD_OrgTrx_ID NUMBER(10);
ALTER TABLE Z_PosActionActivity ADD IsUseLocBP CHAR(1) DEFAULT 'N' CHECK (IsUseLocBP IN ('Y','N'));