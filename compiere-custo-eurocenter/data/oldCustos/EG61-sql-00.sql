ALTER TABLE C_BPartner ADD Z_OrgLine CHAR(1);
call syncposdatabase('ALTER TABLE C_BPartner ADD Z_OrgLine CHAR(1)');
ALTER TABLE C_BPartner ADD Z_DEFAULT_ADR_ID NUMBER(10); 
call syncposdatabase('ALTER TABLE C_BPartner ADD Z_DEFAULT_ADR_ID NUMBER(10)');
ALTER TABLE C_BPartner ADD CONSTRAINT FKX291_1035352 FOREIGN KEY (Z_DEFAULT_ADR_ID) REFERENCES C_BPartner_Location (C_BPartner_Location_ID);
ALTER TABLE C_BPartner ADD ValidateInvoice CHAR(1) DEFAULT 'N' CHECK (ValidateInvoice IN ('Y','N')) NOT NULL;
call syncposdatabase('ALTER TABLE C_BPartner ADD ValidateInvoice CHAR(1) DEFAULT ''N'' CHECK (ValidateInvoice IN (''Y'',''N'')) NOT NULL');
ALTER TABLE I_Invoice ADD ZZ_ShipToGnl NVARCHAR2(30);
ALTER TABLE I_Invoice ADD ZZ_SellerGnl NVARCHAR2(30);
update AD_Field set Updated = sysdate, UpdatedBy = 0, isdisplayed = 'N'
where ad_column_id = (select ad_column_id from ad_column where columnname = 'ZZ_FileName' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Invoice_290' and ad_window_id in (select ad_window_id from ad_window where value = 'Invoice (Vendor)_183'));
update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_reference_id = 10 , ISALWAYSUPDATEABLE = 'N'
where ColumnName = 'ZZ_FileName'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_Invoice');
UPDATE AD_COLUMN set ISSELECTIONCOLUMN = 'N', SELECTIONSEQNO = 0 where  AD_Table_ID = (Select AD_Table_ID from AD_Table where AD_Table.TABLENAME = 'I_Invoice');
UPDATE AD_COLUMN set ISSELECTIONCOLUMN = 'Y' where COLUMNNAME in ('C_BPartner_ID','C_DocType_ID','InvoiceTotalAmt','POReference','I_IsImported','DocTypeName','ZZ_FileName' )
and  AD_Table_ID = (Select AD_Table_ID from AD_Table where AD_Table.TABLENAME = 'I_Invoice');