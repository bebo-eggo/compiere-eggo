
ALTER TABLE C_BPartner DROP column Z_JnlImportInvoice;

DELETE
FROM ad_field
WHERE AD_Column_ID = (SELECT AD_Column_ID FROM ad_column
WHERE COLUMNNAME = 'Z_JnlImportInvoice'
AND ad_table_id  =
  (SELECT ad_table_id FROM ad_table WHERE TABLENAME= 'C_BPartner'
  ));
  
DELETE
FROM ad_column
WHERE COLUMNNAME = 'Z_JnlImportInvoice'
AND ad_table_id  =
  (SELECT ad_table_id FROM ad_table WHERE TABLENAME= 'C_BPartner'
  );
  
ALTER TABLE C_BPartner DROP column Z_JnlImportCreditNote;

DELETE
FROM ad_field
WHERE AD_Column_ID = (SELECT AD_Column_ID FROM ad_column
WHERE COLUMNNAME = 'Z_JnlImportCreditNote'
AND ad_table_id  =
  (SELECT ad_table_id FROM ad_table WHERE TABLENAME= 'C_BPartner'
  ));
  
  
DELETE
FROM ad_column
WHERE COLUMNNAME = 'Z_JnlImportCreditNote'
AND ad_table_id  =
  (SELECT ad_table_id FROM ad_table WHERE TABLENAME= 'C_BPartner'
  );



ALTER TABLE C_DocTypeInfo ADD Z_InvTypeImport NVARCHAR2(30);
