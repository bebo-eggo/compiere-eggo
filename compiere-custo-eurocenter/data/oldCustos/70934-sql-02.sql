update AD_Column set  readonlylogic = '@XX_TrxC_Fam@!'''' | @XX_TrxC_Op@!''''' 
where ColumnName = 'XX_StrdCode'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_TrxCODA');