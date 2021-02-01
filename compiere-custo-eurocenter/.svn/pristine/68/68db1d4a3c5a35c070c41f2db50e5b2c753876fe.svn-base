insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'37K3','37K3',
'',
'',
'Y',
'',
'',
'',
'N',
'37K3',
0,
'N',
'N',
'',
'',
'',
''
 from dual  
where not exists (select 1 from AD_EntityType where EntityType = '37K3' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '37K3', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '37K3', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '37K3' ;

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'AccountNo',(select AD_Element_ID from AD_Element where ColumnName = 'AccountNo'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'Account Number',
'37K3',
100,
'The Account Number indicates the Number assigned to this bank account.',
'Account No',
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
where not exists (select 1 from AD_Column where ColumnName = 'AccountNo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'AccountNo'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'XX_REMB_SEL_LIGNE'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = 'Account Number', entitytype = '37K3', fieldlength = 100, help = 'The Account Number indicates the Number assigned to this bank account.', name = 'Account No', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'AccountNo'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AccountNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'fr_FR', 'Y', 'Account No'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AccountNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Account No' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AccountNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='AccountNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')), 'nl_NL', 'Y', 'Account No'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AccountNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Account No' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='AccountNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AccountNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')),
'Account No',
'Account Number',
0,
'',
'37K3',
'The Account Number indicates the Number assigned to this bank account.',
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
'N',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
0
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AccountNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Lignes de sélection' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Sélection remboursements clients')), name = 'Account No', description = 'Account Number', displaylength = 0, displaylogic = '', entitytype = '37K3', help = 'The Account Number indicates the Number assigned to this bank account.', obscuretype = '', seqno = 120, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AccountNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AccountNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'fr_FR', 'Y', 'The Account Number indicates the Number assigned to this bank account.','Account Number','Account No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AccountNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Account Number indicates the Number assigned to this bank account.',Description = 'Account Number',Name = 'Account No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AccountNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AccountNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))), 'nl_NL', 'Y', 'The Account Number indicates the Number assigned to this bank account.','Account Number','Account No'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AccountNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Account Number indicates the Number assigned to this bank account.',Description = 'Account Number',Name = 'Account No' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AccountNo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'XX_REMB_SEL_LIGNE')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Lignes de sélection' and ad_window_id in (select ad_window_id from ad_window where value = 'Sélection remboursements clients'))) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '37K3', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '37K3', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '37K3' ;

