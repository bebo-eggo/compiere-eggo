insert into AD_EntityType (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_EntityType_ID,EntityType,name, description ,help, isactive, classpath, modelpackage, modelvalidationclasses, isregistered, version, record_id, processing, createcomponent, documentationtext, requirecompiereversion, requirecomponentversion, summary) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_EntityType'),'ME10','68976 - NEC - Gestion adresse et contact',
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
where not exists (select 1 from AD_EntityType where EntityType = 'ME10' );

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '68976 - NEC - Gestion adresse et contact', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'ME10' ;

insert into AD_Process (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,Value,accesslevel,ad_printformat_id, ad_reportview_id, ad_workflow_id, classname, description, entitytype, help, jasperreport, procedurename, name, workflowvalue, isactive, isbetafunctionality, isdirectprint, isreport, isserverprocess,AD_CTXAREA_ID, ad_bview_id, ad_reporttemplate_id, isexternal) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Process'),'CopyLocationCuisine','3',
(select AD_PrintFormat_ID from AD_PrintFormat where Name = ''),
(select AD_ReportView_ID from AD_ReportView where Name = '*None*'),
(select AD_Workflow_ID from AD_Workflow where Name = ''),
'com.audaxis.compiere.eurocenter.process.CopyLocationCuisine',
'',
'ME10',
'',
'',
'',
'CopyLocationCuisine',
'',
'Y',
'N',
'N',
'N',
'N',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
(select AD_BView_ID from AD_BView where Name = ''),
(select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''),
'N'
 from dual  
where not exists (select 1 from AD_Process where Value = 'CopyLocationCuisine' );

update AD_Process set Updated = sysdate, UpdatedBy = 0, accesslevel = '3', ad_printformat_id = (select AD_PrintFormat_ID from AD_PrintFormat where Name = ''), ad_reportview_id = (select AD_ReportView_ID from AD_ReportView where Name = '*None*'), ad_workflow_id = (select AD_Workflow_ID from AD_Workflow where Name = ''), classname = 'com.audaxis.compiere.eurocenter.process.CopyLocationCuisine', description = '', entitytype = 'ME10', help = '', jasperreport = '', procedurename = '', name = 'CopyLocationCuisine', workflowvalue = '', isactive = 'Y', isbetafunctionality = 'N', isdirectprint = 'N', isreport = 'N', isserverprocess = 'N', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ad_bview_id = (select AD_BView_ID from AD_BView where Name = ''), ad_reporttemplate_id = (select AD_ReportTemplate_ID from AD_ReportTemplate where Name = ''), isexternal = 'N' 
where Value = 'CopyLocationCuisine' ;

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='CopyLocationCuisine'), 'nl_NL', 'Y', 'CopyLocationCuisine','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='CopyLocationCuisine') and ad_language = 'nl_NL');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'CopyLocationCuisine',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='CopyLocationCuisine') and ad_language = 'nl_NL';

insert into AD_Process_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Process_ID,AD_Language, IsTranslated,Name,Help,Description) 
select 0,0,sysdate, sysdate,0,0,(select AD_Process_ID from AD_Process where Value='CopyLocationCuisine'), 'fr_FR', 'Y', 'CopyLocationCuisine','',''
 from dual  
where not exists (select 1 from AD_Process_Trl where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='CopyLocationCuisine') and ad_language = 'fr_FR');

update AD_Process_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'CopyLocationCuisine',Help = '',Description = '' where AD_Process_ID in (select AD_Process_ID from AD_Process where Value='CopyLocationCuisine') and ad_language = 'fr_FR';

insert into AD_Element (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,ColumnName,description, entitytype, help, name, po_description, po_help, po_name, po_printname, printname, isactive,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,DBDATATYPE,FIELDLENGTH) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Element'),'CopyLocationCuisine','',
'ME10',
'',
'Copy Location Cuisine',
'',
'',
'',
'',
'Copy Location Cuisine',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
0
 from dual  
where not exists (select 1 from AD_Element where ColumnName = 'CopyLocationCuisine' );

update AD_Element set Updated = sysdate, UpdatedBy = 0, description = '', entitytype = 'ME10', help = '', name = 'Copy Location Cuisine', po_description = '', po_help = '', po_name = '', po_printname = '', printname = 'Copy Location Cuisine', isactive = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_REFERENCE_VALUE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), AD_VAL_RULE_ID = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), DBDATATYPE = '', FIELDLENGTH = 0 
where ColumnName = 'CopyLocationCuisine' ;

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PO_PrintName,Help,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='CopyLocationCuisine'), 'nl_NL', 'Y', '','Copie adresse Cuisine','','','Copie adresse Cuisine','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CopyLocationCuisine') and ad_language = 'nl_NL');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Copie adresse Cuisine',PO_PrintName = '',Help = '',PrintName = 'Copie adresse Cuisine',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CopyLocationCuisine') and ad_language = 'nl_NL';

insert into AD_Element_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Element_ID,AD_Language, IsTranslated,Description,Name,PO_PrintName,Help,PrintName,PO_Name,PO_Description,PO_Help) 
select 0,0,sysdate, sysdate,0,0,(select AD_Element_ID from AD_Element where ColumnName='CopyLocationCuisine'), 'fr_FR', 'Y', '','Copie adresse Cuisine','','','Copie adresse Cuisine','','',''
 from dual  
where not exists (select 1 from AD_Element_Trl where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CopyLocationCuisine') and ad_language = 'fr_FR');

update AD_Element_Trl set Updated = sysdate, UpdatedBy = 0,Description = '',Name = 'Copie adresse Cuisine',PO_PrintName = '',Help = '',PrintName = 'Copie adresse Cuisine',PO_Name = '',PO_Description = '',PO_Help = '' where AD_Element_ID in (select AD_Element_ID from AD_Element where ColumnName='CopyLocationCuisine') and ad_language = 'fr_FR';

insert into AD_Column (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,ColumnName,ad_element_id, ad_process_id, ad_reference_id, ad_reference_value_id, ad_table_id, ad_val_rule_id, callout, defaultvalue, description, entitytype, fieldlength, help, name, readonlylogic, seqno, valuemax, valuemin, version, vformat, isactive, isalwaysupdateable, isencrypted, isidentifier, iskey, ismandatory, isparent, isselectioncolumn, istranslated, isupdateable, columnsql, constrainttype,ismandatoryui,MANDATORYLOGIC,TABLEUID,ISCALLOUT,ISRECURSIVEFK,ISSUMMARYCOLUMN,SELECTIONSEQNO,SUMMARYSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Column'),'CopyLocationCuisine',(select AD_Element_ID from AD_Element where ColumnName = 'CopyLocationCuisine'),
(select AD_Process_ID from AD_Process where Value = 'CopyLocationCuisine'),
(select AD_Reference_ID from AD_Reference where Name = 'Button'),
(select AD_Reference_ID from AD_Reference where Name = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BPartner_Location'),
(select AD_Val_Rule_ID from AD_Val_Rule where Name = ''),
'',
'',
'',
'ME10',
1,
'',
'Copy Location Cuisine',
'@IsEggo@=N',
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
where not exists (select 1 from AD_Column where ColumnName = 'CopyLocationCuisine'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'));

update AD_Column set Updated = sysdate, UpdatedBy = 0, ad_element_id = (select AD_Element_ID from AD_Element where ColumnName = 'CopyLocationCuisine'), ad_process_id = (select AD_Process_ID from AD_Process where Value = 'CopyLocationCuisine'), ad_reference_id = (select AD_Reference_ID from AD_Reference where Name = 'Button'), ad_reference_value_id = (select AD_Reference_ID from AD_Reference where Name = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BPartner_Location'), ad_val_rule_id = (select AD_Val_Rule_ID from AD_Val_Rule where Name = ''), callout = '', defaultvalue = '', description = '', entitytype = 'ME10', fieldlength = 1, help = '', name = 'Copy Location Cuisine', readonlylogic = '@IsEggo@=N', seqno = 0, valuemax = '', valuemin = '', version = 0, vformat = '', isactive = 'Y', isalwaysupdateable = 'Y', isencrypted = 'N', isidentifier = 'N', iskey = 'N', ismandatory = 'N', isparent = 'N', isselectioncolumn = 'N', istranslated = 'N', isupdateable = 'Y', columnsql = '', constrainttype = '', ismandatoryui = 'N', MANDATORYLOGIC = '', TABLEUID = 0, ISCALLOUT = 'N', ISRECURSIVEFK = 'N', ISSUMMARYCOLUMN = 'N', SELECTIONSEQNO = 0, SUMMARYSEQNO = 0 
where ColumnName = 'CopyLocationCuisine'  and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location');

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')), 'nl_NL', 'Y', 'Copie adresse Cuisine'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_language = 'nl_NL');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Copie adresse Cuisine' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_language = 'nl_NL';

insert into AD_Column_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Column_ID,AD_Language, IsTranslated,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Column_ID from AD_Column where ColumnName='CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')), 'fr_FR', 'Y', 'Copie adresse Cuisine'
 from dual  
where not exists (select 1 from AD_Column_Trl where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_language = 'fr_FR');

update AD_Column_Trl set Updated = sysdate, UpdatedBy = 0,Name = 'Copie adresse Cuisine' where AD_Column_ID in (select AD_Column_ID from AD_Column where ColumnName='CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_language = 'fr_FR';

insert into AD_Tab (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,Value,name, ad_columnsortorder_id, ad_columnsortyesno_id, ad_column_id, ad_image_id, ad_process_id, ad_table_id, ad_window_id, commitwarning, description, entitytype, help, importfields, included_tab_id, orderbyclause, seqno, tablevel, whereclause, isactive, hastree, isinfotab, isreadonly, issinglerow, issorttab, istranslationtab, DISPLAYLOGIC, ISADVANCEDTAB, ISINSERTRECORD, READONLYLOGIC, AD_CTXAREA_ID, ISDISPLAYED, REFERENCED_TAB_ID) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Tab'),'Location_cuis2','Adresse POS',
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BPartner_Location')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BPartner_Location')),
(select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BPartner_Location')),
(select AD_Image_ID from AD_Image where Name = ''),
(select AD_Process_ID from AD_Process where Value = ''),
(select AD_Table_ID from AD_Table where TableName = 'C_BPartner_Location'),
(select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)'),
'',
'',
'ME10',
'',
'N',
(select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')),
'',
95,
1,
'C_BPartner_Location.IsEggo=''N''',
'Y',
'N',
'N',
'Y',
'N',
'N',
'N',
'@AD_Client_ID@=1000022',
'N',
'N',
'',
(select AD_CtxArea_ID from AD_CtxArea where Name = ''),
'Y',
(select AD_Tab_ID from AD_Tab where Value = '')
 from dual  
where not exists (select 1 from AD_Tab where Value = 'Location_cuis2'  and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'));

update AD_Tab set Updated = sysdate, UpdatedBy = 0, name = 'Adresse POS', ad_columnsortorder_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BPartner_Location')), ad_columnsortyesno_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BPartner_Location')), ad_column_id = (select AD_Column_ID from AD_Column where ColumnName = '' and AD_Table_ID in (select AD_Table_ID from AD_Table where TableName = 'C_BPartner_Location')), ad_image_id = (select AD_Image_ID from AD_Image where Name = ''), ad_process_id = (select AD_Process_ID from AD_Process where Value = ''), ad_table_id = (select AD_Table_ID from AD_Table where TableName = 'C_BPartner_Location'), ad_window_id = (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)'), commitwarning = '', description = '', entitytype = 'ME10', help = '', importfields = 'N', included_tab_id = (select AD_Tab_ID from AD_Tab where Value = '' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')), orderbyclause = '', seqno = 95, tablevel = 1, whereclause = 'C_BPartner_Location.IsEggo=''N''', isactive = 'Y', hastree = 'N', isinfotab = 'N', isreadonly = 'Y', issinglerow = 'N', issorttab = 'N', istranslationtab = 'N', DISPLAYLOGIC = '@AD_Client_ID@=1000022', ISADVANCEDTAB = 'N', ISINSERTRECORD = 'N', READONLYLOGIC = '', AD_CTXAREA_ID = (select AD_CtxArea_ID from AD_CtxArea where Name = ''), ISDISPLAYED = 'Y', REFERENCED_TAB_ID = (select AD_Tab_ID from AD_Tab where Value = '') 
where Value = 'Location_cuis2'  and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)');

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')), 'nl_NL', 'Y', '','','','Adresse POS'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')) and ad_language = 'nl_NL');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Adresse POS' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')) and ad_language = 'nl_NL';

insert into AD_Tab_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Tab_ID,AD_Language, IsTranslated,CommitWarning,Description,Help,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Tab_ID from AD_Tab where Value='Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')), 'fr_FR', 'Y', '','','','Adresse POS'
 from dual  
where not exists (select 1 from AD_Tab_Trl where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')) and ad_language = 'fr_FR');

update AD_Tab_Trl set Updated = sysdate, UpdatedBy = 0,CommitWarning = '',Description = '',Help = '',Name = 'Adresse POS' where AD_Tab_ID in (select AD_Tab_ID from AD_Tab where Value='Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Location_222' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')),
'CopyLocationCuisine',
'',
22,
'@IsEggo@=''N'' &'||' @IsBillTo@=''N'' &'||' @IsShipTo@=''Y''',
'ME10',
'',
'',
95,
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
95
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Location_222' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_123')), name = 'CopyLocationCuisine', description = '', displaylength = 22, displaylogic = '@IsEggo@=''N'' &'||' @IsBillTo@=''N'' &'||' @IsShipTo@=''Y''', entitytype = 'ME10', help = '', obscuretype = '', seqno = 95, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 95 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'nl_NL', 'Y', '','','Copie adresse Cuisine'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Copie adresse Cuisine' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))), 'fr_FR', 'Y', '','','Copie adresse Cuisine'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Copie adresse Cuisine' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_123'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Location_222_1000120' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')),
'CopyLocationCuisine',
'',
1,
'@IsEggo@=''N'' &'||' @IsBillTo@=''N'' &'||' @IsShipTo@=''Y''',
'ME10',
'',
'',
100,
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
100
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Location_222_1000120' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')), name = 'CopyLocationCuisine', description = '', displaylength = 1, displaylogic = '@IsEggo@=''N'' &'||' @IsBillTo@=''N'' &'||' @IsShipTo@=''Y''', entitytype = 'ME10', help = '', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 100 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'nl_NL', 'Y', '','','Copy Location Cuisine'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Copy Location Cuisine' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'fr_FR', 'Y', '','','Copier adresse cuisine'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Copier adresse cuisine' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsEggo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Location_222_1000120' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')),
'Cuisine',
'',
1,
'',
'ME10',
'',
'',
90,
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
90
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsEggo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Location_222_1000120' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')), name = 'Cuisine', description = '', displaylength = 1, displaylogic = '', entitytype = 'ME10', help = '', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 90 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsEggo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsEggo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'nl_NL', 'Y', '','','Cuisine'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsEggo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Cuisine' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsEggo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsEggo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'fr_FR', 'Y', '','','Cuisine'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsEggo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Cuisine' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsEggo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_222_1000120' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')),
'Tenant',
'Identifies the Client/Tenant for this installation.',
14,
'',
'ME10',
'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',
'',
10,
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
10
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')), name = 'Tenant', description = 'Identifies the Client/Tenant for this installation.', displaylength = 14, displaylogic = '', entitytype = 'ME10', help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', obscuretype = '', seqno = 10, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 10 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'nl_NL', 'Y', 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Identifies the Client/Tenant for this installation.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Description = 'Identifies the Client/Tenant for this installation.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'fr_FR', 'Y', 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Identifies the Client/Tenant for this installation.','Tenant'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',Description = 'Identifies the Client/Tenant for this installation.',Name = 'Tenant' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Client_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')),
'Organization',
'Organizational entity within Tenant',
14,
'',
'ME10',
'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',
'',
20,
0,
'Y',
'Y',
'Y',
'N',
'N',
'N',
'Y',
'Y',
(select AD_Reference_ID from AD_Reference where Name = ''),
'',
'',
'N',
20
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')), name = 'Organization', description = 'Organizational entity within Tenant', displaylength = 14, displaylogic = '', entitytype = 'ME10', help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.', obscuretype = '', seqno = 20, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 20 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'nl_NL', 'Y', 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organizational entity within Tenant','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Description = 'Organizational entity within Tenant',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'fr_FR', 'Y', 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.','Organizational entity within Tenant','Organization'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'An organization is a unit of your Tenant or legal entity - examples are store, department. You can share data between organizations.',Description = 'Organizational entity within Tenant',Name = 'Organization' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'AD_Org_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')),
'Business Partner',
'Identifies a Business Partner',
26,
'',
'ME10',
'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',
'',
30,
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
30
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')), name = 'Business Partner', description = 'Identifies a Business Partner', displaylength = 26, displaylogic = '', entitytype = 'ME10', help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson', obscuretype = '', seqno = 30, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 30 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'nl_NL', 'Y', 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Identifies a Business Partner','Business Partner'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',Description = 'Identifies a Business Partner',Name = 'Business Partner' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'fr_FR', 'Y', 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Identifies a Business Partner','Business Partner'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',Description = 'Identifies a Business Partner',Name = 'Business Partner' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_BPartner_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')),
'Name',
'Alphanumeric identifier of the entity',
11,
'',
'ME10',
'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',
'',
40,
1,
'Y',
'N',
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
40
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')), name = 'Name', description = 'Alphanumeric identifier of the entity', displaylength = 11, displaylogic = '', entitytype = 'ME10', help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.', obscuretype = '', seqno = 40, sortno = 1, isactive = 'Y', iscentrallymaintained = 'N', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'Y', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 40 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'nl_NL', 'Y', 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.','Alphanumeric identifier of the entity','Name'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',Description = 'Alphanumeric identifier of the entity',Name = 'Name' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'fr_FR', 'Y', 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.','Alphanumeric identifier of the entity','Name'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The name of an entity (record) is used as a default search option in addition to the search key. The name is up to 60 characters in length.',Description = 'Alphanumeric identifier of the entity',Name = 'Name' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'Name' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')),
'Active',
'The record is active in the system',
1,
'',
'ME10',
'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',
'',
50,
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
50
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')), name = 'Active', description = 'The record is active in the system', displaylength = 1, displaylogic = '', entitytype = 'ME10', help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', obscuretype = '', seqno = 50, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 50 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'nl_NL', 'Y', 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','The record is active in the system','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Description = 'The record is active in the system',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'fr_FR', 'Y', 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','The record is active in the system','Active'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports. There are two reasons for de-activating and not deleting records: (1) The system requires the record for audit purposes. (2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.',Description = 'The record is active in the system',Name = 'Active' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsActive' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')),
'Address',
'Location or Address',
26,
'',
'ME10',
'The Location / Address field defines the location of an entity.',
'',
60,
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
60
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')), name = 'Address', description = 'Location or Address', displaylength = 26, displaylogic = '', entitytype = 'ME10', help = 'The Location / Address field defines the location of an entity.', obscuretype = '', seqno = 60, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 60 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'nl_NL', 'Y', 'The Location / Address field defines the location of an entity.','Location or Address','Address'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Location / Address field defines the location of an entity.',Description = 'Location or Address',Name = 'Address' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'fr_FR', 'Y', 'The Location / Address field defines the location of an entity.','Location or Address','Address'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'The Location / Address field defines the location of an entity.',Description = 'Location or Address',Name = 'Address' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'C_Location_ID' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsShipTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')),
'Ship Address',
'Business Partner Shipment Address',
1,
'',
'ME10',
'If the Ship Address is selected, the location is used to ship goods to a customer or receive goods from a vendor.',
'',
70,
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
70
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsShipTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')), name = 'Ship Address', description = 'Business Partner Shipment Address', displaylength = 1, displaylogic = '', entitytype = 'ME10', help = 'If the Ship Address is selected, the location is used to ship goods to a customer or receive goods from a vendor.', obscuretype = '', seqno = 70, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 70 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsShipTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsShipTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'nl_NL', 'Y', 'If the Ship Address is selected, the location is used to ship goods to a customer or receive goods from a vendor.','Business Partner Shipment Address','Ship Address'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsShipTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'If the Ship Address is selected, the location is used to ship goods to a customer or receive goods from a vendor.',Description = 'Business Partner Shipment Address',Name = 'Ship Address' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsShipTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsShipTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'fr_FR', 'Y', 'If the Ship Address is selected, the location is used to ship goods to a customer or receive goods from a vendor.','Business Partner Shipment Address','Ship Address'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsShipTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'If the Ship Address is selected, the location is used to ship goods to a customer or receive goods from a vendor.',Description = 'Business Partner Shipment Address',Name = 'Ship Address' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsShipTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsBillTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')),
'Invoice Address',
'Business Partner Invoice/Bill Address',
1,
'',
'ME10',
'If the Invoice Address is selected, the location is used to send invoices to a customer or receive invoices from a vendor.',
'',
80,
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
80
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsBillTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')), name = 'Invoice Address', description = 'Business Partner Invoice/Bill Address', displaylength = 1, displaylogic = '', entitytype = 'ME10', help = 'If the Invoice Address is selected, the location is used to send invoices to a customer or receive invoices from a vendor.', obscuretype = '', seqno = 80, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'Y', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 80 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsBillTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsBillTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'nl_NL', 'Y', 'If the Invoice Address is selected, the location is used to send invoices to a customer or receive invoices from a vendor.','Business Partner Invoice/Bill Address','Invoice Address'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsBillTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'If the Invoice Address is selected, the location is used to send invoices to a customer or receive invoices from a vendor.',Description = 'Business Partner Invoice/Bill Address',Name = 'Invoice Address' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsBillTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsBillTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'fr_FR', 'Y', 'If the Invoice Address is selected, the location is used to send invoices to a customer or receive invoices from a vendor.','Business Partner Invoice/Bill Address','Invoice Address'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsBillTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = 'If the Invoice Address is selected, the location is used to send invoices to a customer or receive invoices from a vendor.',Description = 'Business Partner Invoice/Bill Address',Name = 'Invoice Address' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsBillTo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'IsEggo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')),
'Cuisine',
'',
1,
'',
'ME10',
'',
'',
90,
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
90
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsEggo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')), name = 'Cuisine', description = '', displaylength = 1, displaylogic = '', entitytype = 'ME10', help = '', obscuretype = '', seqno = 90, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 90 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'IsEggo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsEggo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'nl_NL', 'Y', '','','Cuisine'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsEggo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Cuisine' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsEggo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsEggo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'fr_FR', 'Y', '','','Cuisine'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsEggo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Cuisine' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'IsEggo' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR';

insert into AD_Field (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,ad_column_id,ad_fieldgroup_id, ad_tab_id, name, description, displaylength, displaylogic, entitytype, help, obscuretype, seqno, sortno, isactive, iscentrallymaintained, isdisplayed, isencrypted, isfieldonly, isheading, isreadonly, issameline,AD_REFERENCE_ID,ISMANDATORYUI,DEFAULTVALUE,ISDEFAULTFOCUS,MRSEQNO) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Field'),(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')),(select AD_FieldGroup_ID from AD_FieldGroup where Name = ''),
(select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')),
'Copy Location Cuisine',
'',
1,
'@IsEggo@=''N'' &'||' @IsBillTo@=''N'' &'||' @IsShipTo@=''Y''',
'ME10',
'',
'',
100,
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
100
 from dual  
where not exists (select 1 from AD_Field where ad_column_id = (select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)')));

update AD_Field set Updated = sysdate, UpdatedBy = 0, ad_fieldgroup_id = (select AD_FieldGroup_ID from AD_FieldGroup where Name = ''), ad_tab_id = (select AD_Tab_ID from AD_Tab where Value = 'Location_cuis2' and AD_Window_ID in (select AD_Window_ID from AD_Window where Value = 'Business Partner_(Eggo)')), name = 'Copy Location Cuisine', description = '', displaylength = 1, displaylogic = '@IsEggo@=''N'' &'||' @IsBillTo@=''N'' &'||' @IsShipTo@=''Y''', entitytype = 'ME10', help = '', obscuretype = '', seqno = 100, sortno = 0, isactive = 'Y', iscentrallymaintained = 'Y', isdisplayed = 'Y', isencrypted = 'N', isfieldonly = 'N', isheading = 'N', isreadonly = 'N', issameline = 'N', AD_REFERENCE_ID = (select AD_Reference_ID from AD_Reference where Name = ''), ISMANDATORYUI = '', DEFAULTVALUE = '', ISDEFAULTFOCUS = 'N', MRSEQNO = 100 
where ad_column_id = (select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location'))  and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'));

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'nl_NL', 'Y', '','','Copy Location Cuisine'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Copy Location Cuisine' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'nl_NL';

insert into AD_Field_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Field_ID,AD_Language, IsTranslated,Help,Description,Name) 
select 0,0,sysdate, sysdate,0,0,(select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))), 'fr_FR', 'Y', '','','Copy Location Cuisine'
 from dual  
where not exists (select 1 from AD_Field_Trl where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR');

update AD_Field_Trl set Updated = sysdate, UpdatedBy = 0,Help = '',Description = '',Name = 'Copy Location Cuisine' where AD_Field_ID in (select AD_Field_ID from AD_Field where ad_column_id=(select ad_column_id from ad_column where columnname = 'CopyLocationCuisine' and ad_table_id in (select ad_table_id from ad_table where tablename = 'C_BPartner_Location')) and ad_tab_id in (select ad_tab_id from ad_tab where value = 'Location_cuis2' and ad_window_id in (select ad_window_id from ad_window where value = 'Business Partner_(Eggo)'))) and ad_language = 'fr_FR';

insert into AD_Message (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,Value,entitytype, msgtext, msgtip, msgtype, isactive) 
select 0,0,sysdate, sysdate,0,0,AD_Sequence_NextNo('AD_Message'),'EGGO_POS_ALREADYEXIST','ME10',
'Tiers a déjà une adresse de Livraison cuisine',
'',
'I',
'Y'
 from dual  
where not exists (select 1 from AD_Message where Value = 'EGGO_POS_ALREADYEXIST' );

update AD_Message set Updated = sysdate, UpdatedBy = 0, entitytype = 'ME10', msgtext = 'Tiers a déjà une adresse de Livraison cuisine', msgtip = '', msgtype = 'I', isactive = 'Y' 
where Value = 'EGGO_POS_ALREADYEXIST' ;

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EGGO_POS_ALREADYEXIST'), 'nl_NL', 'Y', 'Tiers a déjà une adresse de Livraison cuisine',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EGGO_POS_ALREADYEXIST') and ad_language = 'nl_NL');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Tiers a déjà une adresse de Livraison cuisine',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EGGO_POS_ALREADYEXIST') and ad_language = 'nl_NL';

insert into AD_Message_Trl (AD_Client_ID, AD_Org_ID, Updated, Created, UpdatedBy, CreatedBy,AD_Message_ID,AD_Language, IsTranslated,MsgText,MsgTip) 
select 0,0,sysdate, sysdate,0,0,(select AD_Message_ID from AD_Message where Value='EGGO_POS_ALREADYEXIST'), 'fr_FR', 'Y', 'Tiers a déjà une adresse de Livraison cuisine',''
 from dual  
where not exists (select 1 from AD_Message_Trl where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EGGO_POS_ALREADYEXIST') and ad_language = 'fr_FR');

update AD_Message_Trl set Updated = sysdate, UpdatedBy = 0,MsgText = 'Tiers a déjà une adresse de Livraison cuisine',MsgTip = '' where AD_Message_ID in (select AD_Message_ID from AD_Message where Value='EGGO_POS_ALREADYEXIST') and ad_language = 'fr_FR';

update AD_EntityType set Updated = sysdate, UpdatedBy = 0, name = '68976 - NEC - Gestion adresse et contact', description = '', help = '', isactive = 'Y', classpath = '', modelpackage = '', modelvalidationclasses = '', isregistered = 'N', version = '361', record_id = 0, processing = 'N', createcomponent = 'N', documentationtext = '', requirecompiereversion = '', requirecomponentversion = '', summary = '' 
where EntityType = 'ME10' ;

