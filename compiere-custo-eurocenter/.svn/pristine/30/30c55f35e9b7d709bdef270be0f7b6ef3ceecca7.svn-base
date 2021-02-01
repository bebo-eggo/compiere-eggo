insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'EG60','EG60 - Max Amt On Pay. Selection',
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
where not exists (select 1 from AD_EntityType where EntityType = 'EG60' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG60 - Max Amt On Pay. Selection', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG60' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'MaxSelAmt','Max Selection Amt',
'EG60',
'Max Selection AmtThe Total Amount indicates the total document amount.',
'Max Selection Amt',
'',
'',
'',
'',
'Max Selection Amt',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'MaxSelAmt' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = 'Max Selection Amt', entitytype = 'EG60', help = 'Max Selection AmtThe Total Amount indicates the total document amount.', name = 'Max Selection Amt', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Max Selection Amt', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'MaxSelAmt' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='MaxSelAmt'), 'fr_FR', 'Y', 'Montant Maximum','Montant Maximum','Montant Maximum','','','','','Montant Maximum'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='MaxSelAmt') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Montant Maximum',Help = 'Montant Maximum',Name = 'Montant Maximum',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Montant Maximum' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='MaxSelAmt') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='MaxSelAmt'), 'nl_NL', 'Y', 'Max Selection Amt','Max Selection AmtThe Total Amount indicates the total document amount.','Max Selection Amt','','','','','Max Selection Amt'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='MaxSelAmt') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Max Selection Amt',Help = 'Max Selection AmtThe Total Amount indicates the total document amount.',Name = 'Max Selection Amt',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Max Selection Amt' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='MaxSelAmt') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'MaxSelAmt',(select AD_Element_ID from AD_Element where ColumnName = 'MaxSelAmt'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'Amount'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_PaySelection'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'0',
'Max Selection Amt',
'EG60',
22,
'Max Selection AmtThe Total Amount indicates the total document amount.',
'Max Selection Amt',
'',
0,
'',
'',
1,
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
where not exists (select 1 from AD_Column where ColumnName = 'MaxSelAmt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelection'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'MaxSelAmt'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Amount'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_PaySelection'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '0', description = 'Max Selection Amt', entitytype = 'EG60', fieldlength = 22, help = 'Max Selection AmtThe Total Amount indicates the total document amount.', name = 'Max Selection Amt', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 1, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'Y', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'Y', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'MaxSelAmt'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelection');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='MaxSelAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelection')), 'fr_FR', 'Y', 'Max Selection Amt'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='MaxSelAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelection')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Max Selection Amt' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='MaxSelAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelection')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='MaxSelAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelection')), 'nl_NL', 'Y', 'Max Selection Amt'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='MaxSelAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelection')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Max Selection Amt' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='MaxSelAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelection')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'MaxSelAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelection')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Payment Selection_352' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Payment Selection_206')),
'Max Selection Amt',
'Max Selection Amt',
22,
'',
'EG60',
'Max Selection AmtThe Total Amount indicates the total document amount.',
'',
120,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'MaxSelAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelection'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Selection_352' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Selection_206')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Payment Selection_352' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Payment Selection_206')), name = 'Max Selection Amt', description = 'Max Selection Amt', displaylength = 22, displaylogic = '', entitytype = 'EG60', help = 'Max Selection AmtThe Total Amount indicates the total document amount.', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'MaxSelAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelection'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Selection_352' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Selection_206'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MaxSelAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelection')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Selection_352' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Selection_206'))), 'fr_FR', 'Y', 'Montant Max Sélection','Montant Max Sélection','Montant Max Sélection'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MaxSelAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelection')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Selection_352' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Selection_206'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Montant Max Sélection',Help = 'Montant Max Sélection',Name = 'Montant Max Sélection' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MaxSelAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelection')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Selection_352' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Selection_206'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MaxSelAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelection')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Selection_352' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Selection_206'))), 'nl_NL', 'Y', 'Max Selection Amt','Max Selection AmtThe Total Amount indicates the total document amount.','Max Selection Amt'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MaxSelAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelection')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Selection_352' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Selection_206'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = 'Max Selection Amt',Help = 'Max Selection AmtThe Total Amount indicates the total document amount.',Name = 'Max Selection Amt' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'MaxSelAmt' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_PaySelection')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Payment Selection_352' and ad_window_id in (select ad_window_id from ad_window where value = 'Payment Selection_206'))) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = 'EG60 - Max Amt On Pay. Selection', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '1', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'EG60' ;

