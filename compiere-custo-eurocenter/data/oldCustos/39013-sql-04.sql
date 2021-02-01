update ad_column set isalwaysupdateable = 'Y' where columnname='CashDiff' 
and ad_table_id = (select ad_table_id from ad_table where tablename='C_BankStatement');