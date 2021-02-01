insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'1Z2V','64603 - SMILE-2676-Template d''import d''OD',
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
where not exists (select 1 from AD_EntityType where EntityType = '1Z2V' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '64603 - SMILE-2676-Template d''import d''OD', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '1Z2V' ;

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'User1Value','',
'1Z2V',
'',
'User1Value',
'',
'',
'',
'',
'User1Value',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'User1Value' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = '1Z2V', help = '', name = 'User1Value', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'User1Value', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'User1Value' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='User1Value'), 'fr_FR', 'Y', '','','Clé Centre de coût','','','','','Clé Centre de coût'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='User1Value') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Clé Centre de coût',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'Clé Centre de coût' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='User1Value') and ad_language = 'fr_FR';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='User1Value'), 'nl_NL', 'Y', '','','User1Value','','','','','User1Value'
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='User1Value') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'User1Value',PO_Description = '',PO_Help = '',PO_Name = '',PO_PrintName = '',PrintName = 'User1Value' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='User1Value') and ad_language = 'nl_NL';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'User1Value',(select AD_Element_ID from AD_Element where ColumnName = 'User1Value'),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Reference_ID from AD_Reference where Name = 'String'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'I_GLJournal'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'1Z2V',
40,
'',
'User1Value',
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
where not exists (select 1 from AD_Column where ColumnName = 'User1Value'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'User1Value'), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'String'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'I_GLJournal'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = '1Z2V', fieldlength = 40, help = '', name = 'User1Value', readonlylogic = '', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'N', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'User1Value'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='User1Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')), 'fr_FR', 'Y', 'User1Value'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='User1Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'User1Value' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='User1Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_language = 'fr_FR';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='User1Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')), 'nl_NL', 'Y', 'User1Value'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='User1Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'User1Value' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='User1Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_language = 'nl_NL';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'User1Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'General Ledger_508' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import GL Journal_278')),
'User1Value',
'',
0,
'',
'1Z2V',
'',
'',
585,
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
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'User1Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'General Ledger_508' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Import GL Journal_278')), name = 'User1Value', description = '', displaylength = 0, displaylogic = '', entitytype = '1Z2V', help = '', obscuretype = '', seqno = 585, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 0 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'User1Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User1Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'))), 'fr_FR', 'Y', '','','Clé Centre de coût'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User1Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Clé Centre de coût' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User1Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'))) and ad_language = 'fr_FR';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User1Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'))), 'nl_NL', 'Y', '','','User1Value'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User1Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'User1Value' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'User1Value' and ad_table_id in (select ad_table_id from ad_table where tablename = 'I_GLJournal')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'General Ledger_508' and ad_window_id in (select ad_window_id from ad_window where value = 'Import GL Journal_278'))) and ad_language = 'nl_NL';

insert into AD_Process_Para (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, name, defaultvalue, defaultvalue2, description, entitytype, fieldlength, help, seqno, valuemax, valuemin, vformat, isactive, iscentrallymaintained, ismandatory, isrange, isdisplayed ,AD_BView_Field_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process_Para'),'PostingType',(select AD_Element_ID from AD_Element where ColumnName = 'PostingType'),
(select AD_Process_ID from AD_Process where Value = 'Import_GLJournal'),
(select AD_Reference_ID from AD_Reference where Name = 'List'),
(select AD_Reference_ID from AD_Reference where Name = '_Posting Type'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'PostingType',
'A',
'',
'The type of posted amount for the transaction',
'1Z2V',
0,
'',
45,
'',
'',
'',
'Y',
'Y',
'N',
'N',
'Y',
(select AD_BView_Field_ID from AD_BView_Field where Name = '')
 from dual  
where not exists (select 1 from AD_Process_Para where ColumnName = 'PostingType'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import_GLJournal'));

update AD_Process_Para set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'PostingType'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'Import_GLJournal'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'List'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = '_Posting Type'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), name = 'PostingType', defaultvalue = 'A', defaultvalue2 = '', description = 'The type of posted amount for the transaction', entitytype = '1Z2V', fieldlength = 0, help = '', seqno = 45, valuemax = '', valuemin = '', vformat = '', isactive = 'Y', iscentrallymaintained = 'Y', ismandatory = 'N', isrange = 'N', isdisplayed = 'Y', AD_BView_Field_ID = (select AD_BView_Field_ID from AD_BView_Field where Name = '') 
where ColumnName = 'PostingType'  and ad_process_id in (select ad_process_id from ad_process where value = 'Import_GLJournal');

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='PostingType' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_GLJournal')), 'fr_FR', 'Y', '','','Type Comptabilisation'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='PostingType' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_GLJournal')) and ad_language = 'fr_FR');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Type Comptabilisation' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='PostingType' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_GLJournal')) and ad_language = 'fr_FR';

insert into AD_Process_Para_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_Para_ID,AD_Language, IsTranslated,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_Para_ID from AD_Process_Para where ColumnName='PostingType' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_GLJournal')), 'nl_NL', 'Y', '','','Type Comptabilisation'
 from dual  
where not exists (select 1 from AD_Process_Para_Trl where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='PostingType' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_GLJournal')) and ad_language = 'nl_NL');

update AD_Process_Para_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Help = '',Name = 'Type Comptabilisation' where AD_Process_Para_ID in (select AD_Process_Para_ID from AD_Process_Para where ColumnName='PostingType' and ad_process_id in (select ad_process_id from ad_process where value = 'Import_GLJournal')) and ad_language = 'nl_NL';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '64603 - SMILE-2676-Template d''import d''OD', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = '1Z2V' ;

