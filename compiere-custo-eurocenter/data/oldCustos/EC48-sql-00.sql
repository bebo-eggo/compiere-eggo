insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EC48','EC48 - Fermeture caisse et trsft banque',
'',
'',
'Y',
'',
'',
'',
'N',
'1',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = 'EC48' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC48 - Fermeture caisse et trsft banque', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC48' ;

insert into AD_Reference (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Name,description, entitytype, help, validationtype, vformat, isactive, zeditor_class, zlookup_class) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Reference'),'C_BankStatment','',
'EC48',
'',
'T',
'',
'Y',
'',
''
 from dual  
where not exists (select 1 from AD_Reference where Name = 'C_BankStatment' );

update AD_Reference set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC48', help = '', validationtype = 'T', vformat = '', isactive = 'Y', zeditor_class = '', zlookup_class = '' 
where Name = 'C_BankStatment' ;

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='C_BankStatment'), 'fr_FR', 'Y', '','','C_BankStatment'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_BankStatment') and ad_language = 'fr_FR');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'C_BankStatment' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_BankStatment') and ad_language = 'fr_FR';

insert into AD_Reference_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Reference_ID from AD_Reference where Name='C_BankStatment'), 'nl_NL', 'Y', '','','C_BankStatment'
 from dual  
where not exists (select 1 from AD_Reference_Trl where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_BankStatment') and ad_language = 'nl_NL');

update AD_Reference_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'C_BankStatment' where AD_Reference_ID in (select AD_Reference_ID from AD_Reference where Name='C_BankStatment') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_BankTftDetail','',
'EC48',
'',
'Detailed Transfer',
'',
'',
'',
'',
'Detailed Transfer',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_BankTftDetail' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC48', help = '', name = 'Detailed Transfer', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Detailed Transfer', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_BankTftDetail' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_BankTftDetail'), 'fr_FR', 'Y', '','','Transfert détaillé','','','','','Transfert détaillé'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_BankTftDetail') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Transfert détaillé',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Transfert détaillé' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_BankTftDetail') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_BankTftDetail'), 'nl_NL', 'Y', '','','Detailed Transfer','','','','','Detailed Transfer'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_BankTftDetail') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Detailed Transfer',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Detailed Transfer' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_BankTftDetail') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'XX_BankStatment_ID','',
'EC48',
'',
'Related Bank Statment',
'',
'',
'',
'',
'Related Bank Statment',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'XX_BankStatment_ID' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'EC48', help = '', name = 'Related Bank Statment', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Related Bank Statment', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'XX_BankStatment_ID' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_BankStatment_ID'), 'fr_FR', 'Y', '','','Clôture de caisse','','','','','Clôture de caisse'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_BankStatment_ID') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Clôture de caisse',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Clôture de caisse' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_BankStatment_ID') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='XX_BankStatment_ID'), 'nl_NL', 'Y', '','','Related Bank Statment','','','','','Related Bank Statment'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_BankStatment_ID') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Related Bank Statment',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Related Bank Statment' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='XX_BankStatment_ID') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_BankTftDetail',(select AD_Element_ID from AD_Element where ColumnName = 'XX_BankTftDetail'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BankAccountDoc'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'EC48',
1,
'',
'Detailed Transfer',
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
'Y',
'N',
'N',
'N',
'Y',
'',
'',
'Y',
'',
0,
'N',
'N',
'N',
0,
0
 from dual  
where not exists (select 1 from AD_Column where ColumnName = 'XX_BankTftDetail'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_BankTftDetail'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BankAccountDoc'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'EC48', fieldlength = 1, help = '', name = 'Detailed Transfer', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_BankTftDetail'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_BankTftDetail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')), 'fr_FR', 'Y', 'Transfert détaillé'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_BankTftDetail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Transfert détaillé' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_BankTftDetail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_BankTftDetail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')), 'nl_NL', 'Y', 'Detailed Transfer'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_BankTftDetail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Detailed Transfer' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_BankTftDetail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_BankAccount_To_ID',(select AD_Element_ID from AD_Element where ColumnName = 'C_BankAccount_To_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Table'),
(select AD_Reference_ID from AD_Reference where Name = 'C_BankAccount Own Bank'),
(select AD_Table_ID from AD_Table where TableName = 'C_BankAccountDoc'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Account at the Bank',
'EC48',
22,
'The Bank Account identifies an account at this Bank.',
'Bank Account',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_BankAccount_To_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_BankAccount_To_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Table'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_BankAccount Own Bank'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BankAccountDoc'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Account at the Bank', entitytype = 'EC48', fieldlength = 22, help = 'The Bank Account identifies an account at this Bank.', name = 'Bank Account', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_BankAccount_To_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')), 'fr_FR', 'Y', 'Compte bancaire'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Compte bancaire' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')), 'nl_NL', 'Y', 'Bank Account'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Bank Account' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'XX_BankStatment_ID',(select AD_Element_ID from AD_Element where ColumnName = 'XX_BankStatment_ID'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Search'),
(select AD_Reference_ID from AD_Reference where Name = 'C_BankStatment'),
(select AD_Table_ID from AD_Table where TableName = 'C_Payment'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'EC48',
22,
'',
'Related Bank Statment',
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
where not exists (select 1 from AD_Column where ColumnName = 'XX_BankStatment_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'XX_BankStatment_ID'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Search'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = 'C_BankStatment'), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Payment'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'EC48', fieldlength = 22, help = '', name = 'Related Bank Statment', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'XX_BankStatment_ID'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_BankStatment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')), 'fr_FR', 'Y', 'Clôture de caisse'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_BankStatment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Clôture de caisse' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_BankStatment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='XX_BankStatment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')), 'nl_NL', 'Y', 'Related Bank Statment'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_BankStatment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Related Bank Statment' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='XX_BankStatment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Account Document_386' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank_158')),
'Bank Account',
'Account at the Bank',
22,
'',
'EC48',
'The Bank Account identifies an account at this Bank.',
'',
130,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'N',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Account Document_386' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank_158')), name = 'Bank Account', description = 'Account at the Bank', displaylength = 22, displaylogic = '', entitytype = 'EC48', help = 'The Bank Account identifies an account at this Bank.', obscuretype = '', seqno = 130, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'))), 'fr_FR', 'Y', 'Compte bancaire','Identifie un compte bancaire','Compte bancaire'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Compte bancaire',Help = 'Identifie un compte bancaire',Name = 'Compte bancaire' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'))), 'nl_NL', 'Y', 'Account at the Bank','The Bank Account identifies an account at this Bank.','Bank Account'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Account at the Bank',Help = 'The Bank Account identifies an account at this Bank.',Name = 'Bank Account' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BankAccount_To_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_BankTftDetail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Bank Account Document_386' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank_158')),
'Detailed Transfer',
'',
1,
'',
'EC48',
'',
'',
140,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'N',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_BankTftDetail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Bank Account Document_386' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Bank_158')), name = 'Detailed Transfer', description = '', displaylength = 1, displaylogic = '', entitytype = 'EC48', help = '', obscuretype = '', seqno = 140, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_BankTftDetail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_BankTftDetail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'))), 'fr_FR', 'Y', '','','Transfert détaillé'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_BankTftDetail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Transfert détaillé' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_BankTftDetail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_BankTftDetail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'))), 'nl_NL', 'Y', '','','Detailed Transfer'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_BankTftDetail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Detailed Transfer' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_BankTftDetail' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankAccountDoc')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Bank Account Document_386' and ad_window_id in (select ad_window_id from ad_window where value = 'Bank_158'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'XX_BankStatment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Payment_330' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Payment_195')),
'Related Bank Statment',
'',
22,
'',
'EC48',
'',
'',
390,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'Y',
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_BankStatment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment_330' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment_195')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Payment_330' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Payment_195')), name = 'Related Bank Statment', description = '', displaylength = 22, displaylogic = '', entitytype = 'EC48', help = '', obscuretype = '', seqno = 390, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'XX_BankStatment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment_330' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment_195'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_BankStatment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment_330' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment_195'))), 'fr_FR', 'Y', '','','Clôture de caisse'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_BankStatment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment_330' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment_195'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Clôture de caisse' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_BankStatment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment_330' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment_195'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_BankStatment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment_330' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment_195'))), 'nl_NL', 'Y', '','','Related Bank Statment'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_BankStatment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment_330' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment_195'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Related Bank Statment' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'XX_BankStatment_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Payment')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment_330' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment_195'))) and ad_language = 'nl_NL';

insert into AD_Ref_Table (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Reference_ID,Column_Key_ID, ad_table_id, Column_Display_ID, entitytype, orderbyclause, whereclause, isactive, isvaluedisplayed, isDisplayIdentifiers) 
select 0,0,sysdate, sysdate,0,0,(select ad_reference_id from ad_reference where name = 'C_BankStatment'),(select AD_Column_ID from AD_Column where columnName = 'C_BankStatement_ID' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'C_BankStatement')),
(select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'),
(select AD_Column_ID from AD_Column where columnName = 'Name' and AD_Table_ID in (select AD_Table_ID from AD_Table where tablename = 'C_BankStatement')),
'EC48',
'',
'',
'Y',
'N',
'Y'
 from dual  
where not exists (select 1 from AD_Ref_Table where  ad_reference_id in (select ad_reference_id from ad_reference where name = 'C_BankStatment'));

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EC_ERRORPMTTFT','EC48',
'Not possible to complete transfer payment',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EC_ERRORPMTTFT' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'EC48', msgtext = 'Not possible to complete transfer payment', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EC_ERRORPMTTFT' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_ERRORPMTTFT'), 'fr_FR', 'Y', 'Impossible d''achever le paiement de transfert',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_ERRORPMTTFT') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Impossible d''achever le paiement de transfert',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_ERRORPMTTFT') and ad_language = 'fr_FR';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EC_ERRORPMTTFT'), 'nl_NL', 'Y', 'Not possible to complete transfer payment',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_ERRORPMTTFT') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Not possible to complete transfer payment',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EC_ERRORPMTTFT') and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EC48 - Fermeture caisse et trsft banque', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EC48' ;

