update ad_column set defaultvalue = '@SQL=SELECT Name AS DefaultValue FROM C_BPartner WHERE C_BPartner_ID=@C_BPartner_ID@'
where COLUMNNAME = 'Name' and ad_table_id in ( select ad_table_id from ad_table where TableName = 'AD_User'); 
update ad_column set ismandatory = 'Y', ismandatoryui = 'Y'
where COLUMNNAME = 'EMail' and ad_table_id in ( select ad_table_id from ad_table where TableName = 'AD_User'); 
update ad_column set ismandatory = 'Y', ismandatoryui = 'Y'
where COLUMNNAME = 'Phone' and ad_table_id in ( select ad_table_id from ad_table where TableName = 'AD_User'); 
