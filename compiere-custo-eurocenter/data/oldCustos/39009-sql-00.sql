insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'Y009','39009-transfert cheque et financement en central',
'',
'',
'Y',
'',
'',
'',
'N',
'3.6.1',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'Y009' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '39009-transfert cheque et financement en central', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.6.1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'Y009' ;

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'C_BankAccount for remise','',
'Y009',
'',
'T',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'C_BankAccount for remise' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'Y009', help = '', validationtype = 'T', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'C_BankAccount for remise' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='C_BankAccount for remise'), 'nl_BE', 'Y', '','','C_BankAccount for remise'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_BankAccount for remise') and ad_language = 'nl_BE');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'C_BankAccount for remise' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_BankAccount for remise') and ad_language = 'nl_BE';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='C_BankAccount for remise'), 'fr_FR', 'Y', '','','C_BankAccount for remise'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_BankAccount for remise') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'C_BankAccount for remise' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_BankAccount for remise') and ad_language = 'fr_FR';

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'ZSubPaymentRuleRemise','',
'Y009',
'',
'T',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'ZSubPaymentRuleRemise' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'Y009', help = '', validationtype = 'T', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'ZSubPaymentRuleRemise' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='ZSubPaymentRuleRemise'), 'nl_BE', 'Y', '','','ZSubPaymentRuleRemise'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='ZSubPaymentRuleRemise') and ad_language = 'nl_BE');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ZSubPaymentRuleRemise' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='ZSubPaymentRuleRemise') and ad_language = 'nl_BE';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='ZSubPaymentRuleRemise'), 'fr_FR', 'Y', '','','ZSubPaymentRuleRemise'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='ZSubPaymentRuleRemise') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'ZSubPaymentRuleRemise' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='ZSubPaymentRuleRemise') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'SubPaymentRule_ID','',
'Y009',
'',
'Sub Payment Rule Remise',
'',
'',
'',
'',
'Sub Payment Rule Remise',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'SubPaymentRule_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'Y009', help = '', name = 'Sub Payment Rule Remise', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Sub Payment Rule Remise', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'SubPaymentRule_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='SubPaymentRule_ID'), 'nl_BE', 'Y', '','','Sub Payment Rule Remise','','','','','Sub Payment Rule Remise'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='SubPaymentRule_ID') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sub Payment Rule Remise',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Sub Payment Rule Remise' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='SubPaymentRule_ID') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='SubPaymentRule_ID'), 'fr_FR', 'Y', '','','Sub Payment Rule Remise','','','','','Sub Payment Rule Remise'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='SubPaymentRule_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Sub Payment Rule Remise',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Sub Payment Rule Remise' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='SubPaymentRule_ID') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'BankAccountRemise_ID','',
'Y009',
'',
'BankAccountRemise_ID',
'',
'',
'',
'',
'Bank Account',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'BankAccountRemise_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'Y009', help = '', name = 'BankAccountRemise_ID', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Bank Account', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'BankAccountRemise_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='BankAccountRemise_ID'), 'nl_BE', 'Y', '','','BankAccountRemise_ID','','','','','Bank Account'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='BankAccountRemise_ID') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'BankAccountRemise_ID',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Bank Account' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='BankAccountRemise_ID') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='BankAccountRemise_ID'), 'fr_FR', 'Y', '','','BankAccountRemise_ID','','','','','Bank Account'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='BankAccountRemise_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'BankAccountRemise_ID',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Bank Account' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='BankAccountRemise_ID') and ad_language = 'fr_FR';

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'ZSubPayment Remise','ZSubPaymentRule.ZSubPaymentRule_ID IN (SELECT ZSubPaymentRule_ID FROM ZSubPaymentRule Z WHERE to_char(Z.ZSubPaymentRule_ID) IN (SELECT * FROM TABLE((SELECT in_LIST(MsgText) FROM AD_Message WHERE Value LIKE ''EC_RemiseCheque_Subpaymentrule''))))',
'',
'Y009',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'ZSubPayment Remise' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'ZSubPaymentRule.ZSubPaymentRule_ID IN (SELECT ZSubPaymentRule_ID FROM ZSubPaymentRule Z WHERE to_char(Z.ZSubPaymentRule_ID) IN (SELECT * FROM TABLE((SELECT in_LIST(MsgText) FROM AD_Message WHERE Value LIKE ''EC_RemiseCheque_Subpaymentrule''))))', description = '', entitytype = 'Y009', type = 'S', isactive = 'Y' 
where Name = 'ZSubPayment Remise' ;

insert into AD_Val_Rule (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Val_Rule_ID,Name,code, description, entitytype, type, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Val_Rule'),'C_BankAccount Org Remise','C_BankAccount.AD_Org_ID=@AD_Org_ID@',
'',
'Y009',
'S',
'Y'
 from dual  
where not exists (select 1 from AD_Val_Rule where Name = 'C_BankAccount Org Remise' );

update AD_Val_Rule set Updated = sysdate, UpdatedBy = 0, code = 'C_BankAccount.AD_Org_ID=@AD_Org_ID@', description = '', entitytype = 'Y009', type = 'S', isactive = 'Y' 
where Name = 'C_BankAccount Org Remise' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'SubPaymentRule_ID',(select AD_Element_ID from AD_Element where ColumnName = 'SubPaymentRule_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'ZSubPaymentRuleRemise'),
(select AD_Table_ID from AD_Table where TableName = 'Z_CheckDelivery'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'ZSubPayment Remise'),
'',
'',
'',
'Y009',
22,
'',
'Sub Payment Rule Remise',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'',
'',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'SubPaymentRule_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_CheckDelivery'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'SubPaymentRule_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'ZSubPaymentRuleRemise'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_CheckDelivery'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'ZSubPayment Remise'), callout = '', defaultvalue = '', description = '', entitytype = 'Y009', fieldlength = 22, help = '', name = 'Sub Payment Rule Remise', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'SubPaymentRule_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_CheckDelivery');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_CheckDelivery')), 'nl_BE', 'Y', 'Sub Payment Rule Remise'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_CheckDelivery')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sub Payment Rule Remise' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_CheckDelivery')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_CheckDelivery')), 'fr_FR', 'Y', 'Sub Payment Rule Remise'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_CheckDelivery')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Sub Payment Rule Remise' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='SubPaymentRule_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_CheckDelivery')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'BankAccountRemise_ID',(select AD_Element_ID from AD_Element where ColumnName = 'BankAccountRemise_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'C_BankAccount for remise'),
(select AD_Table_ID from AD_Table where TableName = 'Z_CheckDelivery'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_BankAccount Org Remise'),
'',
'',
'',
'Y009',
10,
'',
'BankAccountRemise_ID',
'',
0,
'',
'',
0,
'',
'Y',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'N',
'Y',
'',
'',
'N',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'BankAccountRemise_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_CheckDelivery'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'BankAccountRemise_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_BankAccount for remise'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'Z_CheckDelivery'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = 'C_BankAccount Org Remise'), callout = '', defaultvalue = '', description = '', entitytype = 'Y009', fieldlength = 10, help = '', name = 'BankAccountRemise_ID', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'BankAccountRemise_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_CheckDelivery');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='BankAccountRemise_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_CheckDelivery')), 'nl_BE', 'Y', 'BankAccountRemise_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BankAccountRemise_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_CheckDelivery')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'BankAccountRemise_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BankAccountRemise_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_CheckDelivery')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='BankAccountRemise_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_CheckDelivery')), 'fr_FR', 'Y', 'BankAccountRemise_ID'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BankAccountRemise_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_CheckDelivery')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'BankAccountRemise_ID' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='BankAccountRemise_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'Z_CheckDelivery')) and ad_language = 'fr_FR';

insert into AD_Ref_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Column_Key_ID, ad_table_id, Column_Display_ID, entitytype, orderbyclause, whereclause, isactive, isvaluedisplayed, isDisplayIdentifiers) 
select 0,0,sysdate, sysdate,0,0,(select ad_reference_id from ad_reference where name = 'C_BankAccount for remise'),(select AD_Column_ID from AD_Column where columnName = 'C_BankAccount_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'C_BankAccount')),
(select AD_Table_ID from AD_Table where TableName = 'C_BankAccount'),
(select AD_Column_ID from AD_Column where columnName = 'AccountNo' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'C_BankAccount')),
'Y009',
'',
'',
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Ref_Table where  ad_reference_id in (select ad_reference_id from ad_reference where name = 'C_BankAccount for remise'));

insert into AD_Ref_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Column_Key_ID, ad_table_id, Column_Display_ID, entitytype, orderbyclause, whereclause, isactive, isvaluedisplayed, isDisplayIdentifiers) 
select 0,0,sysdate, sysdate,0,0,(select ad_reference_id from ad_reference where name = 'ZSubPaymentRuleRemise'),(select AD_Column_ID from AD_Column where columnName = 'ZSubPaymentRule_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZSubPaymentRule')),
(select AD_Table_ID from AD_Table where TableName = 'ZSubPaymentRule'),
(select AD_Column_ID from AD_Column where columnName = 'Name' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'ZSubPaymentRule')),
'Y009',
'',
'',
'Y',
'N',
'N'
 from dual  
where not exists (select 1 from AD_Ref_Table where  ad_reference_id in (select ad_reference_id from ad_reference where name = 'ZSubPaymentRuleRemise'));

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_RemiseCheque_Subpaymentrule','Y009',
'1000344,1000348',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_RemiseCheque_Subpaymentrule' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'Y009', msgtext = '1000344,1000348', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_RemiseCheque_Subpaymentrule' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_RemiseCheque_Subpaymentrule'), 'nl_BE', 'Y', '',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_RemiseCheque_Subpaymentrule') and ad_language = 'nl_BE');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_RemiseCheque_Subpaymentrule') and ad_language = 'nl_BE';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_RemiseCheque_Subpaymentrule'), 'fr_FR', 'Y', '100002',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_RemiseCheque_Subpaymentrule') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = '100002',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_RemiseCheque_Subpaymentrule') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '39009-transfert cheque et financement en central', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.6.1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'Y009' ;
