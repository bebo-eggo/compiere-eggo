update AD_Field set issameline = 'Y' where name like 'Valideur Arco' and ad_tab_id = ( select ad_tab_id from ad_tab where value = 'Invoice_290' );

update AD_Field set isdisplayed = 'N' where name like 'Impression ARCO' and ad_tab_id = ( select ad_tab_id from ad_tab where value = 'Invoice_290' );

update AD_Field set isdisplayed = 'N' where name like 'IsARCOSend' and ad_tab_id = ( select ad_tab_id from ad_tab where value = 'Invoice_290' );

update ad_column set mandatorylogic = '@Z_ActionARCO@=V' where columnname = 'C_ArcoValidator_ID' 
and ad_table_id = (select ad_table_id from ad_table where tablename = 'C_Invoice' ) ;

update ad_column set readonlylogic = '@Z_ActionARCO@=V' where columnname = 'Z_ApprovedInv' 
and ad_table_id = (select ad_table_id from ad_table where tablename = 'C_Invoice' ) ;


update ad_column set ad_reference_value_id = ( select ad_reference_id from ad_reference where name like 'C_BPartner Employee IsArcoValidator' )
where columnname like 'C_ArcoValidator_ID'
and ad_table_id = (select ad_table_id from ad_table where tablename = 'C_Invoice' ) ;

update ad_column set isalwaysupdateable = 'N' where columnname = 'Z_ApprovedInv' 
and ad_table_id = (select ad_table_id from ad_table where tablename = 'C_Invoice' ) ;