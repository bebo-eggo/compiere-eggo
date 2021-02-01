insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'E326','43326 - Remise en Banque',
'',
'',
'Y',
'',
'',
'',
'N',
'361',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'E326' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '43326 - Remise en Banque', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E326' ;

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'ZSubPayment BankDoc Cheque','ZSubPaymentRule.ZSubPaymentRule_ID IN   (SELECT C_BankAccountDoc.ZSubPaymentRule_ID   FROM C_BankAccountDoc   WHERE c_bankaccountdoc.C_BankAccount_ID = @C_BankAccount_ID@   AND PaymentRule                         =''S''   )',
'',
'E326',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'ZSubPayment BankDoc Cheque' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'ZSubPaymentRule.ZSubPaymentRule_ID IN   (SELECT C_BankAccountDoc.ZSubPaymentRule_ID   FROM C_BankAccountDoc   WHERE c_bankaccountdoc.C_BankAccount_ID = @C_BankAccount_ID@   AND PaymentRule                         =''S''   )', description = '', entitytype = 'E326', type = 'S', isactive = 'Y' 
where Name = 'ZSubPayment BankDoc Cheque' ;

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '43326 - Remise en Banque', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'E326' ;

UPDATE AD_Column
SET ad_val_rule_id = (SELECT AD_Val_Rule_ID FROM AD_Val_Rule WHERE NAme='ZSubPayment BankDoc Cheque')
WHERE ad_column_id =
  (SELECT ad_column_id
  FROM ad_column
  WHERE columnname='ZSubPaymentRule_ID'
  AND ad_table_id =
    (SELECT ad_table_id FROM ad_table WHERE tablename='Z_CheckDelivery'
    )
  );
UPDATE AD_Column SET ad_val_rule_id = null WHERE ad_val_rule_id = (SELECT AD_Val_Rule_ID FROM AD_Val_Rule WHERE Name='ZSubPayment Remise');