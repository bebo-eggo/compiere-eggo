update ad_column set iscallout='Y'  where columnname='DiscountAmt'
and ad_table_id=(select ad_table_id from ad_table where tablename='C_PaySelectionLine');