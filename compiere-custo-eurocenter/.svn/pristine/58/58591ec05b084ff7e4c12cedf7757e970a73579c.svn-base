update AD_Column set Updated = sysdate, UpdatedBy = 0, isalwaysupdateable = 'Y'
where ColumnName = 'Z_GerantSAV'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Invoice');
