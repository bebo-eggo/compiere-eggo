update ad_column set isidentifier = 'N' where ad_table_id = (select ad_table_id from ad_table where tablename = 'C_BP_BankAccount');
update ad_column set isidentifier = 'Y' where ad_table_id = (select ad_table_id from ad_table where tablename = 'C_BP_BankAccount') and columnname = 'IBAN';
