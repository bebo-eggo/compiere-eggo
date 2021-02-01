update ad_column
set ad_reference_id = 40 , ISALWAYSUPDATEABLE = 'Y'
where columnname = 'ZZ_FileName'
and ad_table_id = (select ad_table_id from ad_table where tablename = 'I_Invoice');

update ad_field 
set Displaylength = 60
where name = 'FileName'
and ad_tab_id = (select ad_tab_id from ad_tab where value = 'Invoice_510' );

