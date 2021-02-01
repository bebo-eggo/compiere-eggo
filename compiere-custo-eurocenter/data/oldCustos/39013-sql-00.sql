insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'Y013','39013-verifiaction auromitisee des differences de caisse',
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
where not exists (select 1 from AD_EntityType where EntityType = 'Y013' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '39013-verifiaction auromitisee des differences de caisse', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.6.1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'Y013' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'CashAmount','',
'Y013',
'',
'Montant Caisse',
'',
'',
'',
'',
'Montant Caisse',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'CashAmount' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'Y013', help = '', name = 'Montant Caisse', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Montant Caisse', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'CashAmount' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='CashAmount'), 'nl_BE', 'Y', '','','Montant Caisse','','','','','Montant Caisse'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CashAmount') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Montant Caisse',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Montant Caisse' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CashAmount') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='CashAmount'), 'fr_FR', 'Y', '','','Montant Caisse','','','','','Montant Caisse'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CashAmount') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Montant Caisse',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Montant Caisse' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CashAmount') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'CashDiff','',
'Y013',
'',
'Difference Caisse',
'',
'',
'',
'',
'Difference Caisse',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'CashDiff' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'Y013', help = '', name = 'Difference Caisse', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Difference Caisse', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'CashDiff' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='CashDiff'), 'nl_BE', 'Y', '','','Difference Caisse','','','','','Difference Caisse'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CashDiff') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Difference Caisse',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Difference Caisse' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CashDiff') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='CashDiff'), 'fr_FR', 'Y', '','','Difference Caisse','','','','','Difference Caisse'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CashDiff') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Difference Caisse',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Difference Caisse' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CashDiff') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'IsCashDiff','',
'Y013',
'',
'Difference caisse',
'',
'',
'',
'',
'Difference caisse',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'IsCashDiff' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'Y013', help = '', name = 'Difference caisse', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Difference caisse', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'IsCashDiff' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsCashDiff'), 'nl_BE', 'Y', '','','Difference caisse','','','','','Difference caisse'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsCashDiff') and ad_language = 'nl_BE');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Difference caisse',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Difference caisse' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsCashDiff') and ad_language = 'nl_BE';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='IsCashDiff'), 'fr_FR', 'Y', '','','Difference caisse','','','','','Difference caisse'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsCashDiff') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Difference caisse',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Difference caisse' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='IsCashDiff') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'IsCashDiff',(select AD_Element_ID from AD_Element where ColumnName = 'IsCashDiff'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Yes-No'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_Charge'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'N',
'',
'Y013',
1,
'',
'Difference caisse',
'',
0,
'',
'',
0,
'',
'Y',
'Y',
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
where not exists (select 1 from AD_Column where ColumnName = 'IsCashDiff'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Charge'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'IsCashDiff'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Yes-No'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_Charge'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = 'N', description = '', entitytype = 'Y013', fieldlength = 1, help = '', name = 'Difference caisse', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'IsCashDiff'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Charge');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsCashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Charge')), 'nl_BE', 'Y', 'Difference caisse'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Charge')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Difference caisse' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Charge')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='IsCashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Charge')), 'fr_FR', 'Y', 'Difference caisse'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Charge')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Difference caisse' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='IsCashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Charge')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CashAmount',(select AD_Element_ID from AD_Element where ColumnName = 'CashAmount'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'0',
'',
'Y013',
22,
'',
'Montant Caisse',
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
where not exists (select 1 from AD_Column where ColumnName = 'CashAmount'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CashAmount'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '0', description = '', entitytype = 'Y013', fieldlength = 22, help = '', name = 'Montant Caisse', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CashAmount'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CashAmount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')), 'nl_BE', 'Y', 'Montant Caisse'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CashAmount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Montant Caisse' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CashAmount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CashAmount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')), 'fr_FR', 'Y', 'Montant Caisse'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CashAmount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Montant Caisse' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CashAmount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CashDiff',(select AD_Element_ID from AD_Element where ColumnName = 'CashDiff'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'Y013',
22,
'',
'Difference Caisse',
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
where not exists (select 1 from AD_Column where ColumnName = 'CashDiff'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CashDiff'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BankStatement'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'Y013', fieldlength = 22, help = '', name = 'Difference Caisse', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CashDiff'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')), 'nl_BE', 'Y', 'Difference Caisse'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'nl_BE');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Difference Caisse' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'nl_BE';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')), 'fr_FR', 'Y', 'Difference Caisse'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Difference Caisse' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'CashAmount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Montant Caisse',
'',
22,
'',
'Y013',
'',
'',
164,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'CashAmount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Montant Caisse', description = '', displaylength = 22, displaylogic = '', entitytype = 'Y013', help = '', obscuretype = '', seqno = 164, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'CashAmount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CashAmount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', '','','Montant Caisse'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CashAmount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Montant Caisse' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CashAmount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CashAmount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', '','','Montant Caisse'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CashAmount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Montant Caisse' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CashAmount' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsCashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Charge')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Charge_237' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Charge_161')),
'Difference caisse',
'',
1,
'',
'Y013',
'',
'',
55,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsCashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Charge'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Charge_237' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Charge_237' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Charge_161')), name = 'Difference caisse', description = '', displaylength = 1, displaylogic = '', entitytype = 'Y013', help = '', obscuretype = '', seqno = 55, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsCashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Charge'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Charge_237' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Charge')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Charge_237' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))), 'nl_BE', 'Y', '','','Difference caisse'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Charge')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Charge_237' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Difference caisse' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Charge')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Charge_237' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Charge')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Charge_237' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))), 'fr_FR', 'Y', '','','Difference caisse'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Charge')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Charge_237' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Difference caisse' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsCashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_Charge')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Charge_237' and ad_window_id in (select ad_window_id from ad_window where value = 'Charge_161'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'CashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')),
'Difference Caisse',
'',
22,
'',
'Y013',
'',
'',
165,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'CashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'FERMETURE DE CAISSE ' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'CLOSING CASH')), name = 'Difference Caisse', description = '', displaylength = 22, displaylogic = '', entitytype = 'Y013', help = '', obscuretype = '', seqno = 165, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'CashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'nl_BE', 'Y', '','','Difference Caisse'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Difference Caisse' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'nl_BE';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))), 'fr_FR', 'Y', '','','Difference Caisse'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Difference Caisse' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CashDiff' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BankStatement')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'FERMETURE DE CAISSE ' and ad_window_id in (select ad_window_id from ad_window where value = 'CLOSING CASH'))) and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '39013-verifiaction auromitisee des differences de caisse', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '3.6.1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'Y013' ;
