update ad_column set iscallout = 'Y' where columnname = 'AD_Org_ID' and ad_table_id = (select ad_table_id from ad_table where tablename = 'C_OrderLine');
update ad_column set iscallout = 'Y' where columnname = 'AD_Org_ID' and ad_table_id = (select ad_table_id from ad_table where tablename = 'C_InvoiceLine');
update ad_column set ad_val_rule_id = (select ad_val_rule_id from ad_val_rule where name = 'C_Tax(SO/PO Type)') where columnname = 'C_Tax_ID' and ad_table_id = (select ad_table_id from ad_table where tablename = 'C_OrderLine');
update ad_column set ad_val_rule_id = (select ad_val_rule_id from ad_val_rule where name = 'C_Tax(SO/PO Type)') where columnname = 'C_Tax_ID' and ad_table_id = (select ad_table_id from ad_table where tablename = 'C_InvoiceLine');
