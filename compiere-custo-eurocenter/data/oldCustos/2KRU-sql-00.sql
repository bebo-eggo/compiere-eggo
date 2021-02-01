
ALTER TABLE C_PaymentTerm DROP column ZZ_ValueNobilia;

DELETE
FROM ad_field
WHERE AD_Column_ID = (SELECT AD_Column_ID FROM ad_column
WHERE COLUMNNAME = 'ZZ_ValueNobilia'
AND ad_table_id  =
  (SELECT ad_table_id FROM ad_table WHERE TABLENAME= 'C_PaymentTerm'
  ));
  
DELETE
FROM ad_column
WHERE COLUMNNAME = 'ZZ_ValueNobilia'
AND ad_table_id  =
  (SELECT ad_table_id FROM ad_table WHERE TABLENAME= 'C_PaymentTerm'
  );
  
  

  
  
  
ALTER TABLE AD_OrgInfo DROP column ZZ_NobiliaBuyer;

DELETE
FROM ad_field
WHERE AD_Column_ID = (SELECT AD_Column_ID FROM ad_column
WHERE COLUMNNAME = 'ZZ_NobiliaBuyer'
AND ad_table_id  =
  (SELECT ad_table_id FROM ad_table WHERE TABLENAME= 'AD_OrgInfo'
  ));
  
  
DELETE
FROM ad_column
WHERE COLUMNNAME = 'ZZ_NobiliaBuyer'
AND ad_table_id  =
  (SELECT ad_table_id FROM ad_table WHERE TABLENAME= 'AD_OrgInfo'
  );

