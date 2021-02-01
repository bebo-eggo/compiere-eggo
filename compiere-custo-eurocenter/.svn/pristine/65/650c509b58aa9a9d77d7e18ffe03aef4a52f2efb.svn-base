ALTER TABLE I_GLJournal ADD User2Value NVARCHAR2(40);
ALTER TABLE I_GLJournal ADD C_ActivityValue NVARCHAR2(40); 
insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'22V7','22V7-Ajout à la table d''import des OD Générales I_GLJournal',
'Ajout à la table d''import des OD Générales I_GLJournal',
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
where not exists (select 1 from AD_EntityType where EntityType = '22V7' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '22V7-Ajout à la table d''import des OD Générales I_GLJournal', description = 'Ajout à la table d''import des OD Générales I_GLJournal', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '22V7' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'C_ActivityValue','',
'22V7',
'',
'C_ActivityValue',
'',
'',
'',
'',
'C_ActivityValue',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'C_ActivityValue' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '22V7', help = '', name = 'C_ActivityValue', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'C_ActivityValue', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'C_ActivityValue' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='C_ActivityValue'), 'fr_FR', 'Y', '','','Clé Fiscalité','','','','','Clé Fiscalité'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_ActivityValue') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Clé Fiscalité',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Clé Fiscalité' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_ActivityValue') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='C_ActivityValue'), 'nl_NL', 'Y', '','','C_ActivityValue','','','','','C_ActivityValue'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_ActivityValue') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'C_ActivityValue',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'C_ActivityValue' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='C_ActivityValue') and ad_language = 'nl_NL';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'User2Value','',
'22V7',
'',
'User2Value',
'',
'',
'',
'',
'User2Value',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'User2Value' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '22V7', help = '', name = 'User2Value', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'User2Value', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'User2Value' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='User2Value'), 'fr_FR', 'Y', '','','Clé Re-Facturation','','','','','User2Value'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='User2Value') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Clé Re-Facturation',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'User2Value' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='User2Value') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='User2Value'), 'nl_NL', 'Y', '','','User2Value','','','','','User2Value'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='User2Value') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'User2Value',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'User2Value' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='User2Value') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'C_ActivityValue',(select AD_Element_ID from AD_Element where ColumnName = 'C_ActivityValue'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_GLJournal'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'22V7',
40,
'',
'C_ActivityValue',
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
where not exists (select 1 from AD_Column where ColumnName = 'C_ActivityValue'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'C_ActivityValue'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_GLJournal'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '22V7', fieldlength = 40, help = '', name = 'C_ActivityValue', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'C_ActivityValue'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_ActivityValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')), 'fr_FR', 'Y', 'Clé Fiscalité'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_ActivityValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Clé Fiscalité' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_ActivityValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='C_ActivityValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')), 'nl_NL', 'Y', 'C_ActivityValue'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_ActivityValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'C_ActivityValue' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='C_ActivityValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'User2Value',(select AD_Element_ID from AD_Element where ColumnName = 'User2Value'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_GLJournal'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'22V7',
40,
'',
'User2Value',
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
where not exists (select 1 from AD_Column where ColumnName = 'User2Value'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'User2Value'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_GLJournal'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '22V7', fieldlength = 40, help = '', name = 'User2Value', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'User2Value'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='User2Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')), 'fr_FR', 'Y', 'Clé Re-Facturation'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='User2Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Clé Re-Facturation' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='User2Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='User2Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')), 'nl_NL', 'Y', 'User2Value'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='User2Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'User2Value' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='User2Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_ActivityValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'General Ledger_508' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import GL Journal_278')),
'C_ActivityValue',
'',
40,
'',
'22V7',
'',
'',
525,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_ActivityValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'General Ledger_508' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import GL Journal_278')), name = 'C_ActivityValue', description = '', displaylength = 40, displaylogic = '', entitytype = '22V7', help = '', obscuretype = '', seqno = 525, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_ActivityValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ActivityValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'))), 'fr_FR', 'Y', '','','Clé Activité'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ActivityValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Clé Activité' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ActivityValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ActivityValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'))), 'nl_NL', 'Y', '','','C_ActivityValue'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ActivityValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'C_ActivityValue' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_ActivityValue' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'))) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'User2Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'General Ledger_508' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import GL Journal_278')),
'User2Value',
'',
40,
'',
'22V7',
'',
'',
598,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'User2Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'General Ledger_508' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import GL Journal_278')), name = 'User2Value', description = '', displaylength = 40, displaylogic = '', entitytype = '22V7', help = '', obscuretype = '', seqno = 598, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'User2Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User2Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'))), 'fr_FR', 'Y', '','','Clé Re-Facturation'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User2Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Clé Re-Facturation' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User2Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User2Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'))), 'nl_NL', 'Y', '','','User2Value'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User2Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'User2Value' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User2Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'))) and ad_language = 'nl_NL';

update AD_Field set    issameline = 'Y'
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Activity_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal'))  
and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'));

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '22V7-Ajout à la table d''import des OD Générales I_GLJournal', description = 'Ajout à la table d''import des OD Générales I_GLJournal', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '22V7' ;
update AD_ImpFormat_Row  set AD_Column_ID=(select AD_Column_ID from AD_Column where columnname='C_ActivityValue' 
                                                       and ad_table_id =(select ad_table_id from ad_table where tablename='I_GLJournal'))
WHERE AD_ImpFormat_Row_ID = (select AD_ImpFormat_Row_ID from AD_ImpFormat_Row 
                              where name='Fiscalité' 
                             AND AD_ImpFormat_ID=(select AD_ImpFormat_ID from AD_ImpFormat WHERE Name='Import des OD compta générale'));
                           
update AD_ImpFormat_Row  
set AD_Column_ID=(select AD_Column_ID from AD_Column where columnname='User2Value' 
                                                       and ad_table_id =(select ad_table_id from ad_table where tablename='I_GLJournal'))
                                                       

WHERE AD_ImpFormat_Row_ID = (select AD_ImpFormat_Row_ID from AD_ImpFormat_Row
                           where name='Refacturation'
                           AND AD_ImpFormat_ID=(select AD_ImpFormat_ID from AD_ImpFormat WHERE Name='Import des OD compta générale' ) );

