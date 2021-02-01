ALTER TABLE M_Product_Category ADD IsTaxUpdatable CHAR(1) DEFAULT 'Y' CHECK (IsTaxUpdatable IN ('Y','N')) NOT NULL;
update ad_column set readonlylogic = '@IsTaxUpdatable@=N'
where COLUMNNAME = 'C_Tax_ID' and ad_table_id in ( select ad_table_id from ad_table where TableName = 'C_OrderLine'); 
